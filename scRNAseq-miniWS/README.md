# <b>Single-cell analysis on the MSU HPCC</b>

## <b>1. Setting up your HPCC python environment</b>
Most of the single-cell analysis will use Python for analysis and processing of single-cell data. We will use Anaconda virtual environments to ensure that all packages are compatible and analyses are reproducible.

Start by installed Anaconda following the [instructions on the ICER documentation](https://docs.icer.msu.edu/Using_conda/). Stop at the section called "Managing Environments", we will start at this point below to set up our own environment.

After you've installed Anaconda on your account, reset your terminal (close and open again). Run the following commands

```{bash}
module load Anaconda/3
pip install ipykernel jupyter
```

<i>Note:</i> `module load` is used on the HPC to load pre-installed software. Most of the time you will find what you need is already installed on the HPC making it much more convenient than having to install everything. For more information on using this [see the documentation here](https://docs.icer.msu.edu/Intro_to_modules/)

After we've done this we will set up our virtual environment. Before doing this, <b>be sure to have this Git repository cloned on your HPCC and go to the folder where this README.md file is</b>.

Run the following:

<i>clone this repository</i>
```{bash}
git clone https://github.com/naultran/Tutorials_and_Workshops.git
cd Tutorials_and_Workshops/scRNAseq-miniWS
```

<i>create your virtual environment</i>
```{bash}
conda create -n py_39 python=3.9
conda activate myenv

pip install ipykernel jupyter

#These currently do not work. Use the next section.
#pip install -r requirements.txt
#./install.sh
```

Install package requirements.
```
pip install scanpy scvi-tools matplotlib seaborn pandas numpy anndata scanpro
```

<b>Preparing data</b>

This workshop assumes the sequencing data has already been downloaded from the sequencing service provider (e.g. Novogene). You should have for each sample a seperate folder which contains <b>4 files</b>. The files will typically end (or near the end) with <b>_R1, _R2, _I1, _I2</b>. Each of these folders should be in a folder called `Data`. Below is some sample code for doing this.

```{bash}
mkdir Data
cp -r <path/to/sequencing/files/> ./Data/
```




