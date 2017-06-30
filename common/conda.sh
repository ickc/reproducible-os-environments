#!/bin/bash

conda create -n idp3 python=3 ipykernel

. activate idp3

python -m ipykernel install --user --name idp3 --display-name "IDP3"

grep -v '#' conda.txt | xargs -n 1 -P 1 conda install

# install jupyter widget extension
jupyter nbextension enable --py --sys-prefix widgetsnbextension
