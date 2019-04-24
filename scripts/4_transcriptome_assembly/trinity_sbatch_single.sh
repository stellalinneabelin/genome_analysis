#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J genome_assembly_trinity_single
#SBATCH --mail-type=ALL
#SBATCH --mail-user stella.belin@me.com

# Load modules
module load bioinfo-tools
module load samtools
module load trinity/2.8.2
module load jellyfish
module load Salmon

/sw/bioinfo/trinity/2.8.2/rackham/Trinity --seqType fq --max_memory 10G \
--single \
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719013.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719014.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719015.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719016.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719017.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719018.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719204.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719206.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719207.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719208.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719209.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719211.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719212.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719213.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719214.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719241.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719242.trim_1U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719013.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719014.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719015.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719016.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719017.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719018.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719204.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719206.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719207.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719208.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719209.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719211.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719212.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719213.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719214.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719241.trim_2U.fastq.gz,\
/home/stellab/private/genome_analysis/raw_data/sel3/rna_seq_data/trimmed/sel3_SRR1719242.trim_2U.fastq.gz \
--output /home/stellab/private/genome_analysis/results/4_transcriptome_assembly/single_trinity/
