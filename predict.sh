#!/bin/bash

# Class: CS224S
# Assignment: HW4
# Author: Frank Liu
#
# Predicts the test set labels using the classifier.
# CS224S students - modify this file to suit your implementation

# format the test data output
python classifier/format_test_data.py

./classifier/libsvm-small/svm-scale feats/test_formatted.lsvm > feats/test_formatted.lsvm.scale
./classifier/libsvm-small/svm-predict feats/test_formatted.lsvm.scale feats/train_formatted.lsvm.scale.model results.txt
