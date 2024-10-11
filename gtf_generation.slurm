#!/bin/bash
#SBATCH --partition=main
#SBATCH --account=weisenbe_1344
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=60G
#SBATCH --time=48:00:00

module purge

#Loading dependencies
module load gcc/11.3.0 gcc/8.3.0 intel/18.0.4 intel/19.0.4

module load cufflinks/2.2.1

gzip -d /project/weisenbe_1344/Complete_David_870_Project_Directory_Transfer/Resources/cellranger/refdata-gex-GRCh38-2024-A/genes/genes.gtf.gz

gffread /project/weisenbe_1344/Complete_David_870_Project_Directory_Transfer/Resources/cellranger/refdata-gex-GRCh38-2024-A/genes/genes.gtf -g /project/weisenbe_1344/Complete_David_870_Project_Directory_Transfer/Resources/cellranger/refdata-gex-GRCh38-2024-A/fasta/blacklisted_fasta_folder/blacklist_masked_reference-2024-A.fa -o /project/weisenbe_1344/Complete_David_870_Project_Directory_Transfer/Resources/cellranger/refdata-gex-GRCh38-2024-A/fasta/blacklisted_fasta_folder/blacklist_annotations.gtf



