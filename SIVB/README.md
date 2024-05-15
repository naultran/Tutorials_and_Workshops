# SIVB Single-cell hands on analysis walkthrough


## 1. Preparing for the workshop
Analysis of single-cell data requires a number of software installations and files which will 
depend on the vendor/platform used. In this example we will use the [CellRanger](link) pipeline 
as a example for one of the most commonly used platforms today. <b><i>Before we start</i></b>, it is best to
read through this document and ensure that all files are copied to the correct location.

### 1.a. Copy the contents of the SIVB shared google drive
A link to a shared google drive was provided to you in an email. These are the files which will be used for the 
tutorial which can take 1-2 hours to copy due to their size. We ask that you have these files <b>copied in your own
google drive</b>. After doing this you should home a folder called <b>SIVBWorkshop_Files</b> which is <b>NOT</b> 
nested into another folder. <b> The SIVBWorkshop_Files folder should be visible when you click <i>My Drive</i></b>.

<i>Note:</i> You will need at least NN GB of available space. 

### 1.b. Download the <b>Google Colab Workbook</b>
From this github repository download the file called <b>SIVBWorkshop2024.ipynb</b> as shown below. 
<img></img>
You will want to upload to file to <b> your Google Colab account</b>. This is the workshop tutorial.

### 1.c. Test the google drive connection
Open the SIVBWorkshop2024.ipynb file in Google Colab and move to <b>section 1a</b>. A gray box will have 
a `play` button that appears when your mouse is over it.
<img></img>
You will need to give colab the permission to read your google drive and access the files. The box should 
return the following:
<img></img>

If all steps completed successfully, you should be able to run the tutorial during the workshop as well as
on your own at home.

<i>Note: Google Colab is a free cloud service for running code. Because of this, functionality and use can 
often be limited. Please keep this in mind when certain parts of the analysis doesn't complete. Issues/
errors with the cloud service is beyond our control but most of the tutorial can be reproduced on any 
Linux cloud. </i>