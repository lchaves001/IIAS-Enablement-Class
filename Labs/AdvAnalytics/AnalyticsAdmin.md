# A walk through of a IBM Data Science Experience (DSX) console
1. Login into the DSX console.

      ![DSX Console](./images/DSX-Login.png)
1. You should be looking at the main dashboard for DSX.
   ![DSX dashboard](./images/DSX-MainDash-user.png)
1. If you are an **Admin** you can toggle the name icon to pick the ***Admin Console*** or stay on the ***Data Science Experience*** console.
    ![DSX dashboard](./images/DSX-Masthead-options.png)

    ***Note*** From time to time you will see a warning that something is pending, free resources.  This is a spurious message being triggered by a response timeout. Just click the "X" ignore, this will be fixed.

## View of an  admin
1. Select **Admin Console**.
1. Here is the main dashboard.
 ![DSX dashboard](./images/DSX-MainDash-admin.png)
1. **Click** the 3 bar hamburger in the upper left to open the menu.
1. Review the options avaialble.  **DashBoard, Nodes, Cluster Log, Services, Pods, Alerts, User Management, Image Management, Scripts, Hadoop integration**
    ![DSX dashboard](./images/DSX-Menu-Options.png)
1. Since you already saw the Main Dashboard, move down to the **Nodes**.  **Click** on **Nodes**.  **Note:** There are ***Control Plane, Worker*** and ***Storage Nodes*** avaialble.
 ![DSX dashboard](./images/DSX-Nodes-Expanded.png)
1. Once you are finished reviewing the ***Nodes***, **click** though to the **Cluster Log**.  Here you can filter, choose and research what is happening in the system
![DSX dashboard](./images/DSX-ClusterLog.png)
1. **Click** on  **Services**.  This will list out all the services enabled on the system.  
![DSX dashboard](./images/DSX-Services-Dash.png)
1. **Click** on one, the lab follows Cloudant.
![DSX dashboard](./images/DSX-Services-Cloudant.png)
1. **Click** on **Pods**.  DSX is managed by ***Kubernetes***.  Kubernetes is a orchestration framework that runs ***Docker*** containers.  Each pod is an execution engine of a give Docker image.  You will notice that over time, the number of pods will increase for each proeject runtime deployed.
![DSX dashboard](./images/DSX-Pods-dash.png)
1. Drill down into a pod, this lab picked ***Cloudant***.  These are just quick ways to see what resources that each runtime instance is taking on the entire system.  
![DSX dashboard](./images/DSX-Pods-Cloudant.png)
1. Go ahead and look at more if desired.
1. **Click** on **User Management**.  Here is where the admin will add users to the system or an external LDAP.  At this time there are two levels of security.  ***Admin*** or ***User***.    Admin gives you access to the Data Platform Manager function and User gives you only access to Data Science Experience and the project you create or are part of the group.
  * In the upper right, the ***+Add user***.
  * To right most side of each user, there are two icons.
    * A ***Pencil***, this allows one to edit the user.
    * A ***Trashcan***, this allows one to delete the user.
  * In the upper left, next to ***User List***  is **Set Up LDAP**.  Here is where you can configure and external LDAP.
![DSX dashboard](./images/DSX-UserManagement.png)  
  * **Click** on **Add LDAP**.  Here are the configuration needs to get LDAP working.
  ![DSX dashboard](./images/DSX-ExternalLDAP.png)
1. **Click** on the Menu > Alerts
![DSX dashboard](./images/DSX-Alerts-dash.png)
1. **Click** on the Menu > Image management
![DSX dashboard](./images/DSX-imagemanagement.png)
1. **Click** on the Menu > Scripts
![DSX dashboard](./images/DSX-script.png)
   * pick the type of script you want to run
   ![DSX dashboard](./images/DSX-script-dropdown.png)
 1. **Click** on the Menu > Hadoop integration
![DSX dashboard](./images/DSX-hadoop.png)
   * Click registration to register the Hadoop Cluster
   ![DSX dashboard](./images/DSX-hadoop-reg.png)  

This has been a high level overview of ***Admin Console*** of Data Science Expereince.

## View of a user
1. Here is the main dashboard.
 ![DSX dashboard](./images/DSX-MainDash-user.png)
1. **Click** the 3 bar hamburger in the upper left to open the menu.
1. Review the options avaialble.  **Community, Published Assets, Projects, Tools, My Data, Environmnets ** and **All Active Environments**.
![DSX dashboard](./images/DSX-Main-Menu-user.png)
1. **Click** on **Community**.   These are all sample project to get you started on your journey.  These samples are listed with Topic or industry, hopefully making the sample more interesting.
![DSX dashboard](./images/DSX-User-Community.png)
1. **Click** on the hamburger menu icon, Expand **Tools**.  Notice the list of tools available:
    * Decision Optimization.
    * Jupyter.
    * RStudio.
    * Zeppelin.
    * SPSS.

    ![DSX dashboard](./images/DSX-Tools-MenuOptions.png)
  1. **Click** on **Tools>Jupyter**  **Note:**  This opens up to ***Create a Project***.   Once you are in the context of a project, you can create a **Jupyter** or **Zeppelin** notebook.   One difference is that Jupyter notebooks also you to select the language where Zeppelin notebooks.  
     ![DSX dashboard](./images/DSX-Create-Notebook-Jupyter.png)![DSX dashboard](./images/DSX-Create-Notebook-Zeppelin.png)
  1. **Click** on **Tools>RStudio** This will open RStudio in the context of the project that you are working.
  ![DSX dashboard](./images/DSX-RStudio.png)
1. **Click** on **Environments**.  This lists all of the runtimes that are owned by this user.
![DSX dashboard](./images/DSX-MyEnvironemnts.png)
  1. Drilling into the ***Jupyter Runtime***, one can adjust the number of cores and see memory statistics.
  ![DSX dashboard](./images/DSX-Jupyter-Runtime.png)
  1. Drilling into the ***RStudio Runtime***, one can adjust the number of cores and see memory statistics.
  ![DSX dashboard](./images/DSX-R-Runtime.png)
  1. Drilling into the ***Zeppelin Runtime***, one can adjust the number of cores and see memory statistics.
  ![DSX dashboard](./images/DSX-Zep-runtime.png)
1. **Click** on **My Data**  If in the context of a project, you will see all data sources and data sets at your disposal.
1. **Click** on **All Active Environments**.  This will show you all active runtimes.   If you have not created anything yet, this will be empty.

***This concludes the user experience.***

## Create a sample project and Jupyter notebook with Python

1. From the menu hamburger, **Expand** ***Projects*** and **Click** **View All Projects**.
>![DSX dashboard](./images/DSX-Projects-menu.png)
1. In the upper right corner, **Click** **+New Project**.  This will launch a new page called ***Create Project***
1.  In the ***name*** field, Enter a name.  This lab selected **GoWorkshop**.  **Click** **Create**
![DSX dashboard](./images/DSX-CreateProjectWorkshop.png)
1. From the Project dashboard, **Click  +**  Then **Create Notebook**  This will launch the ***Create Notebook*** wizard
![DSX dashboard](./images/DSX-Project-CreateNewNotebook.png)
1. Enter in the ***Name*** of the notebook.  **GoWorkshopNotebook**.
![DSX dashboard](./images/DSX-Notebook.png)
1. Toggle the **Environment** to review, but select **Jupyter with Python 2.7, Scala 2.11, R3.4.3, Spark 2.0.2**
![DSX dashboard](./images/DSX-Notebook-env.png)
1. Toggle the **Language** to review, but select **Python 2.7**
![DSX dashboard](./images/DSX-Notebook-lang.png)
1. **Click Create**
1. Enter into the Notebook to the right of ***[1]***  `print("Go Workshop Python Sample");`  Then **Click** the run button circled in red.
![DSX dashboard](./images/DSX-Project-JupyterNotebookSample.png)

###  You just created a ***Hello World Project and Notebook***

1. Lets clean up and delete the project.
1. **Click** the elipse at the far right of the ***GoWorkshop*** project in the view all projects.
![DSX dashboard](./images/DSX-ProjectDelete.png)

### You have successfully completed this lab
