#!/bin/bash

# Class: CS224S
# Assignment: HW4
# Author: Frank Liu
#
# Trains a basic classifier using LIBLINEAR. Run 'bash extract_feat.sh 1' first.
# CS224S students - modify this file to suit your implementation

# output of openSMILE is already in LIBLINEAR/LIBSVM data file format!
# format the training data
python classifier/format_train_data.py

./classifier/libsvm-small/svm-scale feats/train_formatted.lsvm > feats/train_formatted.lsvm.scale

./classifier/libsvm-small/svm-train -t 1 feats/train_formatted.lsvm.scale feats/train_formatted.lsvm.scale.model

# ./classifier/libsvm-small/svm-train -t 1 -c 1 -g 0.03125 feats/train_formatted.lsvm.scale feats/train_formatted.lsvm.scale.model
./classifier/libsvm-small/svm-train  -t 1 -c 5.0 -g 0.03125 feats/train_formatted.lsvm.scale feats/train_formatted.lsvm.scale.model
