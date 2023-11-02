# Fairseq SimpleLSTM tutorial

Resulting files from running the tutorial at the [Fairseq SimpleLSTM tutorial](https://fairseq.readthedocs.io/en/latest/tutorial_simple_lstm.html#). The scripts added model only needs to be located at this directory and have `fairseq` installed to run. No need to edit the `fairseq` installation.

This should work as a template for other `fairseq` projects with plugins.

# Getting Started

In order to get the model training and generation tasks running with `fairseq` we do as follows:

## Obtaining the Pre-processed Data

Install `fairseq` on another directory (not here!) as follows:
```
git clone https://github.com/pytorch/fairseq
cd fairseq
pip install --editable ./

# on MacOS:
# CFLAGS="-stdlib=libc++" pip install --editable ./

# to install the latest stable release (0.10.x)
# pip install fairseq
```

After that, while on the new `fairseq/` directory run the following in order to create the preprocessed training data:
```
cd examples/translation/
bash prepare-iwslt14.sh
cd ../..
TEXT=examples/translation/iwslt14.tokenized.de-en
fairseq-preprocess --source-lang de --target-lang en \
    --trainpref $TEXT/train --validpref $TEXT/valid --testpref $TEXT/test \
    --destdir data-bin/iwslt14.tokenized.de-en
```
After that, run the following line to move newly obtained data to this directory:
```
cp -rf ./data-bin/iwslt14.tokenized.de-en $PATH_TO_LSTM_TUTORIAL/data-bin/
``` 

# Running training
From the project root run:
```
bash train_model.sh
```

# Running generation
From the project root run:
```
bash generate.sh
```
