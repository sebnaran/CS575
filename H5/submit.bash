#!/bin/bash
#SBATCH -J Proj5 
#SBATCH -A cs475-575
#SBATCH -p class
#SBATCH --gres=gpu:1
#SBATCH -o proj5.out
#SBATCH -e proj5.err
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=naranjos@oregonstate.edu
./config.sh
