#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=64GB
#SBATCH --time=36:00:00

module purge 

#Loading Dependecies
module load gcc/11.3.0 gcc/9.2.0

#Loading bedtools and samtools
module load bedtools2/2.30.0  

bedtools maskfasta -fi /project/weisenbe_1344/Complete_David_870_Project_Directory_Transfer/Resources/cellranger/refdata-gex-GRCh38-2024-A/fasta/genome.fa -bed /project/weisenbe_1344/Complete_David_870_Project_Directory_Transfer/Resources/cellranger/refdata-gex-GRCh38-2024-A/fasta/blacklisted_fasta_folder/ENCFF356LFX.bed -fo /project/weisenbe_1344/Complete_David_870_Project_Directory_Transfer/Resources/cellranger/refdata-gex-GRCh38-2024-A/fasta/blacklisted_fasta_folder/blacklist_masked_reference-2024-A.fa

module purge

#Loading dependency
module load gcc/11.3.0
module load samtools/1.17

samtools faidx /project/weisenbe_1344/Complete_David_870_Project_Directory_Transfer/Resources/cellranger/refdata-gex-GRCh38-2024-A/fasta/blacklisted_fasta_folder/blacklist_masked_reference-2024-A.fa

