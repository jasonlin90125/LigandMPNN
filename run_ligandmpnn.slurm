#!/bin/bash
#SBATCH -p kuhlab
##SBATCH -p volta-gpu
##SBATCH -p general
#SBATCH -N 1
#SBATCH --mem 32000
#SBATCH -n 1
#SBATCH --qos gpu_access
#SBATCH --gres=gpu:1
#SBATCH -t 24:00:00
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=shuhang@unc.edu

source ~/.bashrc
module load cuda
conda activate ligandmpnn

#python run.py --seed 111 --model_type "ligand_mpnn" --pdb_path_multi "./inputs/monomers.json" --out_folder "./outputs/monomers_whole" --save_stats 1
#python run.py --seed 111 --model_type "ligand_mpnn" --pdb_path_multi "./inputs/monomers.json" --redesigned_residues_multi "./inputs/monomers_core.json" --out_folder "./outputs/monomers_core" --save_stats 1

#python run.py --seed 111 --model_type "soluble_mpnn" --pdb_path_multi "./inputs/monomers.json" --out_folder "./outputs/solublempnn_whole" --save_stats 1
#python run.py --seed 111 --model_type "soluble_mpnn" --pdb_path_multi "./inputs/monomers.json" --redesigned_residues_multi "./inputs/monomers_core.json" --out_folder "./outputs/solublempnn_core" --save_stats 1

python run.py --seed 111 --model_type "ligand_mpnn" --pdb_path_multi "./inputs/monomers_sample.json" --redesigned_residues_multi "./inputs/monomers_core_sample.json" --out_folder "./outputs/monomers_sample" --save_stats 1