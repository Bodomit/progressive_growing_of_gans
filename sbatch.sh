#!/bin/env bash
#SBATCH --job-name=PGOG-Sample
#SBATCH --partition=gpu
#SBATCH --ntasks=4
#SBATCH --mem-per-cpu=16G
#SBATCH --gres gpu:1
#SBATCH --time=1:00:00
#SBATCH --output=/users/40057686/sharedscratch/logs/PGOG-Sample10-%j.log

module add nvidia-cuda
conda activate nvidia-cuda

nvidia-smi

python import_example.py