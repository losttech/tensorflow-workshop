from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import tensorflow as tf
print('Use TensorFlow version 1.2 or higher')
print('TensorFlow Version:', tf.__version__)

# Run an experiment
from tensorflow.contrib.learn.python.learn import learn_runner

# MNIST
from tensorflow.examples.tutorials.mnist import input_data

# Enable TensorFlow logs
tf.logging.set_verbosity(tf.logging.INFO)

# Parameters
BATCH_SIZE = 128
STEPS = 1000


def dataset_input_fn(features, labels, num_epochs=100, buffer_size=10000):
  def input_fn():
    # creating dataset
    dataset = (tf.contrib.data.Dataset.from_tensor_slices((features, labels))
               .shuffle(buffer_size=buffer_size)
               .repeat(num_epochs)
               .batch(BATCH_SIZE))
    # creating iterator
    feature, label = dataset.make_one_shot_iterator().get_next()
    feature_dict = {
        'x': feature
    }
    return feature_dict, label
  return input_fn


def model_fn(features, labels, mode):
  '''
  # Logits layer
  # Input Tensor Shape: [batch_size, 1024]
  # Output Tensor Shape: [batch_size, 10]
  logits = tf.layers.dense(inputs=features['x'], units=10)
'''
  input_layer = tf.reshape(features['x'], [-1, 28, 28, 1])

  conv1 = tf.layers.conv2d(inputs=input_layer,filters=32, kernel_size=[5, 5],
                           padding='same', activation=tf.nn.relu)
  pool1 = tf.layers.max_pooling2d(inputs=conv1, pool_size=[2, 2], strides=2)

  conv2 = tf.layers.conv2d(inputs=pool1,filters=64, kernel_size=[5, 5],
                           padding='same', activation=tf.nn.relu)
  pool2 = tf.layers.max_pooling2d(inputs=conv2, pool_size=[2, 2], strides=2)

  pool2_flat = tf.reshape(pool2, [-1, 7 * 7 * 64])

  dense = tf.layers.dense(inputs=pool2_flat, units=1024, activation=tf.nn.relu)

  is_training_mode = mode == tf.estimator.ModeKeys.TRAIN
  dropout = tf.layers.dropout(inputs=dense, rate=0.4, training=is_training_mode)

  logits = tf.layers.dense(inputs=dropout, units=10)

  # Generate Predictions
  classes = tf.argmax(input=logits, axis=1)
  predictions = {
      'classes': classes,
      'probabilities': tf.nn.softmax(logits, name='softmax_tensor')
  }

  if mode == tf.estimator.ModeKeys.PREDICT:
    # Return an EstimatorSpec object
    return tf.estimator.EstimatorSpec(mode=mode, predictions=predictions)

  loss = tf.losses.softmax_cross_entropy(onehot_labels=labels, logits=logits)

  # Configure the Training Op (for TRAIN mode)
  if mode == tf.estimator.ModeKeys.TRAIN:
    train_op = tf.contrib.layers.optimize_loss(
        loss=loss,
        global_step=tf.train.get_global_step(),
        learning_rate=1e-4,
        optimizer='Adam')

    return tf.estimator.EstimatorSpec(mode=mode, predictions=predictions,
                                      loss=loss, train_op=train_op)

  # Configure the accuracy metric for evaluation
  eval_metric_ops = {
      'accuracy': tf.metrics.accuracy(
          tf.argmax(input=logits, axis=1),
          tf.argmax(input=labels, axis=1))
  }

  return tf.estimator.EstimatorSpec(mode=mode, predictions=predictions,
                                    loss=loss, eval_metric_ops=eval_metric_ops)


# Import the MNIST dataset
mnist = input_data.read_data_sets('/tmp/MNIST/', one_hot=True)

x_train = mnist.train.images
y_train = mnist.train.labels
x_test = mnist.test.images
y_test = mnist.test.labels

# Input functions
train_input_fn = dataset_input_fn(x_train, y_train)

x_test_dict = {'x': x_test}
test_input_fn = tf.estimator.inputs.numpy_input_fn(
    x_test_dict, y_test, batch_size=BATCH_SIZE,
    shuffle=False, num_epochs=1)

# create estimator
run_config = tf.contrib.learn.RunConfig(model_dir='mnist')
estimator = tf.estimator.Estimator(model_fn=model_fn, config=run_config)

# train for 10000 steps
estimator.train(input_fn=train_input_fn, steps=STEPS)

# evaluate
estimator.evaluate(input_fn=test_input_fn)

# predict
preds = estimator.predict(input_fn=test_input_fn)

'''
# create experiment
def experiment_fn(run_config, hparams):
  # create estimator
  estimator = tf.estimator.Estimator(model_fn=model_fn,
                                     config=run_config)
  return tf.contrib.learn.Experiment(
      estimator,
      train_input_fn=train_input_fn,
      eval_input_fn=test_input_fn,
      train_steps=STEPS
  )

# run experiment
learn_runner.run(experiment_fn,
    run_config=run_config)
'''
