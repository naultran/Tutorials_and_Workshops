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
```{bash}
conda create -n py_39 python=3.9
conda activate myenv

pip install ipykernel jupyter

pip install -r requirements.txt
./install.sh
```

