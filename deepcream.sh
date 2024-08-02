#!/bin/bash
cd doujinci
conda init
conda update -n base -c defaults conda -y
conda config --append channels conda-forge
conda create -n deepcreambox python=3.5 -y
echo "created creambox"
conda run -n deepcreambox pip install --upgrade pip
echo "hold on it will hang for a min"
conda run -v --no-capture-output -n deepcreambox pip install -r AI/requirements-cpu.txt
echo "installed requirements"
conda run -v --no-capture-output -n deepcreambox python AI/main.py 341914 bar true
conda create -n deepcreambox2 python=3.6 -y
echo "created creambox2"
conda run -n deepcreambox2 pip install --upgrade pip
conda run -v --no-capture-output -n deepcreambox2 pip install -r Py/requirements-cpu.txt
echo "installed requirements2"
conda run -v --no-capture-output -n deepcreambox2 python Py/decensor.py
