#!/bin/sh
# source ./install.sh
# 

#brew install python
#brew install cmake
#brew install boost
#brew install boost-python3
#PATH_HOME=/Users/devendra/Downloads/stat_rethinking_2023-main/probabilistic_programming/rethinking-numpyro-master
PATH_HOME=/Users/devendra/Downloads/stat_rethinking_2023-main/probabilistic_programming/statistical-rethinking-master-pyro-pytorch
/usr/local/bin/python3 -m venv  $PATH_HOME/.venv
source $PATH_HOME/.venv/bin/activate 


pip install --upgrade pip 
# https://github.com/VowpalWabbit/vowpal_wabbit/issues/2100
# --no-cache-dir
pip -v install --force-reinstall --ignore-installed --no-binary :all: vowpalwabbit
pip install -r requirements.txt
pip freeze > requirements-freeze.txt
