# coding: utf-8

# A Custom Estimator for MNIST using Keras and an input function.
# 
# See also:
# * https://www.tensorflow.org/extend/estimators
# * https://www.tensorflow.org/get_started/mnist/beginners

from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import tensorflow as tf
print (tf.__version__) # tested with v1.2

# Keras
from tensorflow.contrib.keras.python.keras.layers import Dense, Conv2D, MaxPooling2D, Flatten

# Estimators
from tensorflow.contrib import learn

# Model builder
from tensorflow.python.estimator import model_fn as model_fn_lib

# Input function
from tensorflow.python.estimator.inputs import numpy_io

# MNIST
from tensorflow.examples.tutorials.mnist import input_data

# Numpy
import numpy as np

# Enable TensorFlow logs
tf.logging.set_verbosity(tf.logging.INFO)

# Run an experiment
from tensorflow.contrib.learn.python.learn import learn_runner

import os

# Define the model, using Keras
def model_fn(features, labels, mode, params):

    conv1 = Conv2D(32, (5, 5), activation='relu', input_shape=(28, 28, 1))(features["x"])
    
    conv2 = Conv2D(64, (5, 5), activation='relu')(conv1)
    
    conv3 = Conv2D(128, (2, 2), activation='relu')(conv2)
    pool3 = MaxPooling2D(pool_size=(2, 2))(conv3)
    
    conv4 = Conv2D(256, (5, 5), activation='relu')(pool3)
    pool4 = MaxPooling2D(pool_size=(2, 2))(conv4)
    
    flat = Flatten()(pool4)
    
    dense1 = Dense(1024, activation='relu')(flat)
    dense2 = Dense(1024, activation='relu')(dense1)
    dense3 = Dense(1024, activation='relu')(dense2)
    dense4 = Dense(1024, activation='relu')(dense3)

    logits = Dense(10, activation='softmax')(dense4)

    loss = tf.losses.softmax_cross_entropy(
            onehot_labels=labels, logits=logits)
    
    train_op = tf.contrib.layers.optimize_loss(
            loss=loss,
            global_step=tf.contrib.framework.get_global_step(),
            learning_rate=params["learning_rate"],
            optimizer="SGD")
    
    predictions = {
        "classes": tf.argmax(input=logits, axis=1),
        "probabilities": tf.nn.softmax(logits)
    }
    
    eval_metric_ops = {
        "accuracy": tf.metrics.accuracy(
                     tf.argmax(input=logits, axis=1),
                     tf.argmax(input=labels, axis=1))
    }
     
    return model_fn_lib.EstimatorSpec(
        mode=mode,
        predictions=predictions,
        loss=loss,
        train_op=train_op,
        eval_metric_ops=eval_metric_ops)

# Import the MNIST dataset
mnist = input_data.read_data_sets("/tmp/MNIST/", one_hot=True)

x_train = np.reshape(mnist.train.images, (-1, 28, 28, 1))
y_train = mnist.train.labels
x_test = np.reshape(mnist.test.images, (-1, 28, 28, 1))
y_test = mnist.test.labels

# parameters
LEARNING_RATE = 0.01
BATCH_SIZE = 128
STEPS = 1000

# Input functions
x_train_dict = {'x': x_train }
train_input_fn = numpy_io.numpy_input_fn(
          x_train_dict, y_train, batch_size=BATCH_SIZE, 
           shuffle=True, num_epochs=None, 
            queue_capacity=10000, num_threads=4)

x_test_dict = {'x': x_test }	
test_input_fn = numpy_io.numpy_input_fn(
          x_test_dict, y_test, batch_size=BATCH_SIZE, shuffle=False, num_epochs=1)

model_params = {"learning_rate": LEARNING_RATE}

# create experiment
def generate_experiment_fn():
  def _experiment_fn(run_config, hparams):
    del hparams  # unused, required by signature.
    # create estimator
    estimator = tf.estimator.Estimator(
	    model_fn=model_fn, 
	    params=model_params, 
	    config=run_config)

    train_input = train_input_fn
    test_input = test_input_fn
    
    return tf.contrib.learn.Experiment(
        estimator,
        train_input_fn=train_input,
        eval_input_fn=test_input,
	train_steps=STEPS
    )
  return _experiment_fn

# run experiment 
learn_runner.run(generate_experiment_fn(), run_config=tf.contrib.learn.RunConfig(model_dir='comparing_big_model/workstation'))
