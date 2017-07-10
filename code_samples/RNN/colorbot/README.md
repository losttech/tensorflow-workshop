# Colorbot

**Download this folder: https://goo.gl/As83Le**

**Special thanks to [@andrewortman](https://github.com/andrewortman/colorbot/) that has a repo with a great implementation of colorbot using TensorFlow, and [@JanelleCShane](http://lewisandquark.tumblr.com/post/160776374467/new-paint-colors-invented-by-neural-network) that made a nice blog post about given rgb colors generate color names. These two sources gave us the idea to make a workshop about it!**

The pre-trained model available at pretrained folder was trained on [this dataset](https://goo.gl/vcBvQ2)
which was preprocessed by [@andrewortman](https://github.com/andrewortman/colorbot/).

## What is Colorbot?

Colorbot is a RNN model that receives a word (sequence of characters) as input and learns to predict a rgb value that better represents this word. As a result we have a color generator!

![](https://github.com/mari-linhares/tensorflow-workshop/blob/master/code_samples/RNN/colorbot/imgs/model_gif.gif)  
*Check how this gif was generated in the [gif_model notebook](https://github.com/mari-linhares/tensorflow-workshop/blob/master/code_samples/RNN/colorbot/gif_model.ipynb)*

See ColorBot in action running: *python play_colorbot.py*

## About the model

Here's a diagram of the model used.

The model was trained in a way that given a word (sequence of lower case characteres) it tries to predict 3 float numbers that represent the normalized RGB values that more likely represent this word.

### Model

![](https://github.com/mari-linhares/tensorflow-workshop/blob/master/code_samples/RNN/colorbot/imgs/colorbot_model.png)

### Execution example

![](https://github.com/mari-linhares/tensorflow-workshop/blob/master/code_samples/RNN/colorbot/imgs/colorbot_execution.png)

## About the dataset

The data available on this repo was taken from Wikipedia color dataset:

https://en.wikipedia.org/wiki/List_of_colors:_A-F  
https://en.wikipedia.org/wiki/List_of_colors:_G-M  
https://en.wikipedia.org/wiki/List_of_colors:_N-Z

The format of the dataset that was actually used can be seen [here](https://github.com/mari-linhares/tensorflow-workshop/blob/master/code_samples/RNN/colorbot/data/test.csv) and more info about how was preprocessed can be seen [here](https://github.com/mari-linhares/tensorflow-workshop/tree/master/code_samples/RNN/colorbot/data).

For better results you can train your model in [this bigger dataset](https://goo.gl/vcBvQ2).
