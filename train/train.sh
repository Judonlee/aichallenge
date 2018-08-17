#!/bin/bash

chmod a+x ../train/1.getFB40/bin/HCopy
chmod a+x ../train/1.getFB40/bin/vad

#cd  ../train/1.getFB40/ && chmod a+x run.sh && ./run.sh

cd ../train/2.trainLSTM/ && chmod a+x  run.sh && ./run.sh
