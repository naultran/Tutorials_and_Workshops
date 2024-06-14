#!/bin/bash --login

####### Define resources ########
#https://wiki.hpcc.msu.edu/display/ITH/Job+Script+and+Job+Submission

#Number of nodes needed:
#SBATCH --nodes=1
#
#Tasks per node:
#SBATCH --ntasks-per-node=1
#
#Processors per task:
#SBATCH --cpus-per-task=24
#
#Memory per node:
#SBATCH --mem=64G
#
#Wall time (e.g. "minutes", "hours:minutes:seconds", "days-hours", "days-hours:minutes"):
#SBATCH --time=8:00:00
#

########### Command lines ###########

echo $HOME
export PATH=${HOME}/cellranger.8.0.0:$PATH
echo $PATH


echo ${RUN_ID}
echo ${FASTQ_PATH}
echo ${SAMPLE}
echc ${TRANSCRIPTOME}

/mnt/home/naultran/cellranger-8.0.0/cellranger count --id=${RUN_ID} --fastqs=${FASTQ_PATH} --sample=${SAMPLE} --transcriptome=${TRANSCRIPTOME} --create-bam=false --force-cells=3200 --localmem=8 --localcores=24

echo Finished aligning


