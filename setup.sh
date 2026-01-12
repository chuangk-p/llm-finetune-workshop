#!/bin/bash
module purge
module load cpe-cuda/23.09
module load gcc/10.3.0
module load cuda/11.8
module load Mamba/23.11.0-0

mkdir .cache
mkdir env-list
PYTHONNOUSERSITE=1 conda create -p ./env-list/env python=3.12 -y

conda deactivate
conda activate ./env-list/env/

git clone --depth 1 https://github.com/hiyouga/LlamaFactory.git
cd LlamaFactory
pip install -e .
pip install -r requirements/metrics.txt
pip install "deepspeed>=0.10.0,<=0.16.9" 
pip install bitsandbytes jupyter
pip install scikit-learn
cd ..
pip list
