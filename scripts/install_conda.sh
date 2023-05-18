#!/bin/zsh
source $HOME/anaconda3/etc/profile.d/conda.sh
conda remove -y -n sdedit --all

set -e
conda create -y -n sdedit python=3.8
conda activate sdedit
conda install -y pytorch==1.13.1 torchvision==0.14.1 torchaudio==0.13.1 pytorch-cuda=11.7 -c pytorch -c nvidia
pip install -r ../requirements.txt