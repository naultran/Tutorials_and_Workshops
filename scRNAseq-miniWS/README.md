# <b>Single-cell analysis on the MSU HPCC</b>

## <b>1. HPCC OnDemand</b>
The workshop will be run using the [MSU HPCC OnDemand web portal](ondemand.hpcc.msu.edu). After logging into OnDemand you will want to do the following:

1. Click on <b>My  Interactive Sessions</b> in the top menu<br>
2. Click on <b>Interactive Desktop (Legacy)</b> in the left side menu. <i>Note: this workshop hasn't been upgraded to use the new HPCC OS so we will use the legacy version</i><br>
3. Choose your resource requirements and start the session.<br>
4. Once your session has started (blue button), click on <b>Launch Interactive Desktop</b>

## <b>2. Setting up your HPCC python environment</b>
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
conda activate py_39
```

```{bash}
pip install ipykernel jupyter

#These currently do not work. Use the next section.
#pip install -r requirements.txt
#./install.sh
```

Install package requirements.
```
pip install scanpy scvi-tools matplotlib seaborn pandas numpy anndata scanpro
```

## <b>3. Setting up your HPCC R environment</b>

<b>INSTRUCTIONS IN PROGRESS</b>
```
module purge
module load GCC/9.3.0 OpenMPI/4.0.3 R/4.0.3 
R
```

<i> The following code does not work right now. Copy the contents of install_R_packages.R and paste it into the R terminal.
```{bash}
#Rscript install_R_packages.R
#
R --no-vanilla -f install_R_packages.R
```

## <b>4. Preparing data</b>

This workshop assumes the sequencing data has already been downloaded from the sequencing service provider (e.g. Novogene). You should have for each sample a seperate folder which contains <b>4 files</b>. The files will typically end (or near the end) with <b>_R1, _R2, _I1, _I2</b>. Each of these folders should be in a folder called `Data`. Below is some sample code for doing this.

```{bash}
mkdir Data
cp -r <path/to/sequencing/files/> ./Data/
```

## <b>5. After you've set up your environment</b>

Once you've installed Anaconda, set up your environment, and installed all the packages you will not need to repeat steps 1 - 3 each time you start a new session. Simply start up a new <b>OnDemand session</b> and open a <b>terminal</b>. Run the following:

```
module purge
module load GCC/9.3.0 OpenMPI/4.0.3 R/4.0.3 Anaconda/3
conda activate py_39
cd <path-to-workshop-folder>
jupyter notebook
```
This will start a firefox browser for Jupyter notebooks. Navigate to the <b>code</b> folder and then open the <b>.ipynb</b> file for current workshop step.