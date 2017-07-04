---
layout: post
title: "Platform configuration"
author: "Fangli ZHANG"
categories: journal
tags: [software, publication]
image:
  feature: input-output.png
  teaser: input-output.png
  credit: environment configuration
  creditlink: ""
---
## Particle-set: a parallel tool for runoff routing
{:.no_toc}
<!-- by Fangli ZHANG, Qiming ZHOU, Qingquan LI, Guofeng WU, and Jun LIU -->
by Fangli ZHANG, Qiming ZHOU, and Jun LIU

**More information on:**
<http://funtry.github.io>

*Latest revision:* (2017-07-01).

The transportation platform is a MPI parallel computing prototype for real-time simulation of surface flow transportation.

### Table of Contents
{:.no_toc}

1. TOC
{:toc}

### Overview  
This tool consists of several modules:

| Module &emsp;            | Function |
|---:                 |:----|
| ___drainage___ &emsp;    | constructing upstream-downstream flow path networks |
| ___rainfall___&emsp;     | loading spatial and temporal rainfall inputs |
| ___runoff___&emsp;       | generating and tracing runoff particles |
| ___accumulation___&emsp; | exporting flow maps and time costs |

### System Requirements
This experimental environment is deployed on:

| Requirement &emsp;            | To support |
| ---:               |:----|
| ___HPC environment___ &emsp; | environment configuration (e.g., [Amazon EC2](https://aws.amazon.com/ec2/)) |
| ___cluster instance___ &emsp; | high-performance computing (e.g., [m4.16xlarge](https://aws.amazon.com/ec2/instance-types/)) |
| ___operating system___ &emsp; | parallel computing (e.g., [Ubuntu Server 14.04 LTS](http://releases.ubuntu.com/14.04/)) |
| ___C-language compiler___ &emsp; | program execution (e.g., [GCC 7.1](https://gcc.gnu.org)) |
| ___MPI implementation___ &emsp; | process communication (e.g., [mpich-3.2](https://www.mpich.org/downloads/)) |
| ___process manager___ &emsp; | process management (e.g., [hydra-3.2](https://www.mpich.org/downloads/)) |


### Environment Deployment

The deployment consists of following five steps:
1.  Ubuntu Server OS installation
    +  machine instance on [Amazon web service](https://aws.amazon.com)
    ![](/assets/img/aws/aws_01.png)

    +  multi-processor instance (hourly fee)
    ![](/assets/img/aws/aws_02.png)

    +  RSA private key for SSH login (automatic generation)
    ![](/assets/img/aws/aws_03.png)

    + SSH login in with private key and target ip address
    ```bash
    ssh -i "key.pem" ubuntu@54.202.97.199 (ip-address)
    ```
    ![](/assets/img/aws/aws_04.png)

    + check the number of processors (64)
    ```bash
    grep 'processor' /proc/cpuinfo | sort -u | wc -l
    ```
    ![](/assets/img/aws/aws_05.png)

1.  GCC compiling environment configuration
    + get source list of applications updated
    ```bash  
    sudo apt-get update
    ```
    + install gcc complier
    ```bash
    sudo apt-get install gcc
    ```
    + install make complier
    ```bash
    sudo apt-get install make
    ```

1.  MPICH framework configuration
    + send source codes to AWS instance
    ```bash
    scp -i "key.pem" mpich-3.2.tar.gz ubuntu@54.202.97.199:/home/ubuntu
    ```
    + create installation path on AWS instance
    ```bash
    mkdir ~/mpich
    ```
    + authorize read and write permission
    ```bash
    chmod -R 777 ~/mpich
    ```
    + unzip installation files
    ```bash
    tar xfz mpich-3.2.tar.gz
    ```
    + get into the source installation files
    ```bash
    cd ~/mpich-3.2
    ```
    + compiling configuration (only need C language)
    ```bash
    ./configure -prefix=/home/ubuntu/mpich -disable-fortran -disable-cxx
    ```
    + compile (after "configuration" completed)
    ```bash
    make
    ```
    + install (after "make" completed)
    ```bash
    make install
    ```

1.  HYDRA process manager configuration
    + send source codes to AWS instance
    ```bash
    scp -i "key.pem" hydra-3.2.tar.gz ubuntu@54.202.97.199:/home/ubuntu
    ```
    + create installation path on AWS instance
    ```bash
    mkdir ~/hydra
    ```
    + authorize read and write permission
    ```bash
    chmod -R 777 ~/hydra
    ```
    + unzip installation files
    ```bash
    tar xfz hydra-3.2.tar.gz
    ```
    + get into the source installation files
    ```bash
    cd ~/hydra-3.2
    ```
    + compiling configuration (only need C language)
    ```bash
    ./configure -prefix=/home/ubuntu/hydra
    ```
    + compile (after "configuration" completed)
    ```bash
    make
    ```
    + install (after "make" completed)
    ```bash
    make install
    ```

1.  parallel environment setups
    + configure environment variables
    ```bash
    vim ~/.bashrc
    ```
    + add variables
    ```bash
    #bin
        MPI_HOME=/home/ubuntu/mpich
        HYDRA_HOST_FILE=/home/ubuntu/hydra/hosts
        PATH=$MPI_HOME/bin:$PATH

        export MPI_HOME
        export HYDRA_HOST_FILE
        export PATH

        #GCC include
        C_INCLUDE_PATH=$C_INCLUDE_PATH:$MPI_HOME/include
        export C_INCLUDE_PATH
    ```
    + configure process manager
    ```bash
    vim ~/hydra/hosts
    ```
    + set number of processors in cluster
    ```bash
    # host ID: number of processors
    ip-54-202-97-199: 64
                  ... : ...
    ip-54-202-97-191: 64
    ```

### Experimental plan
1.  clone particle-set project
    + create workspace
    ```bash
    # on AWS EC2 machine
    mkdir ~/workspace/amazon
    chmod 777 ~/workspace/amazon
    ```
    + clone [source project from GitHub](https://github.com)
    ```bash
    #content of source project
    +- particle-set                   # root path
            /----- README.md            # configuration guide
            /----- particle.c           # main program
            +----- input                # input file path
                    /----- pathnode.in  # flow path nodes
                    /----- pathline.in  # flow path segments
                    /----- rainfall.in  # flow production
            +----- output               # output file path
                    /----- flowmap.out  # dynamic flow maps
                    /----- timecost.out # time costs
    ```

1.  setup model parameters (e.g., flow velocity, particle density)
    +  pre-define model parameters
    ```c
            // head files and macro definition
            #include <stdio.h>
            #include <stdlib.h>
            #include <string.h>
            #include <math.h>
            #include <time.h>
            #include <mpi.h>

            #define NSIZE 50000     // path node limit
            #define LSIZE 50000     // path line limit
            #define PSIZE 9999999   // runoff particle limit
            #define MCELL 200       // flow map scale

            #define MEANV 0.034     // average watershed velocity
            #define DENSITY 30      // runoff particle density
    ```
    +  flow path node struct
    ```java
    typedef struct{
            int nPNID;    // unique ID number
            double fX;    // X coordinate
            double fY;    // Y coordinate  
            double fZ;    // Z coordinate

            double fin;   // in-degrees
            double fout;  // out-degrees

            int ntype;    // if a starting node or not
            int nPPRID;   // precipitation point

            int nPLID_2;  // next path segment
            int nPNID_2;  // next path node
    }PathNode;         // struct of flow path node
    ```
    +  flow path line struct
    ```java
    typedef struct{
            int nPLID;          // unique ID number

            int nPNID_1;        // from node
            int nPNID_2;        // to node
            int nPLID_2;        // next flow path segment

            int ntype;          // if from a source node

            double fLength;     // path segment length            double fSlope;      // water surface slope
            double fVelocity;   // constant flow velocity
            double fTime;       // constant flow time
    }PathLine;               // struct of flow path segment
    ```
    +  flow path network struct
    ```java
    typedef struct{
            PathNode *pNode_List;   // path node list
            PathLine *pLine_List;   // path line list

            int *pNid_List;         // node id list
            int *pSNid_List;        // source node id list
            int *pBNid_List;        // basin node id list
            int *pLid_List;         // line id list

            int nNumNodes;          // number of path nodes
            int nNumLines;          // number of path segments
            int nNumSources;        // number of source nodes
            int nNumBasins;         // number of outlets

            double fLeft;           // minimal X
            double fRight;          // maximal X
            double fTop;            // maximal Y
            double fBottom;         // minimal Y
        }DrainageNet;               // struct of flow path network
    ```

1.  load rainfall event (e.g., [Peacheater Creek](http://vivoni.asu.edu/tribs/weather.html), November 1994)

1.  perform runoff simulation (e.g., time step, spatial scale)

1.  analyze model performance (e.g., accuracy, efficiency)

### Main contributions
+ realistic representation of surface water movements
+ high-performance computation of rainfall-runoff modeling
+ unified description of watershed physical mechanisms

### Ubuntu commands
+  connect to Amazon EC2 instance
  ```bash
  # ensure the private key key.pem is assessible
  cd ~
  chmod 400 key.pem
  ssh -i "key.pem" ubuntu@ip-address
  ```
+  turn off firewall
  ```bash
  # after login in AWS instance
  sudo ufw disable
  ```
+  send file to AWS instance
  ```bash
  # go to the path of file on local machine
  cd ~/(file path)
  scp -i "key.pem" file ubuntu@ip-address:/home/ubuntu
  ```

### Acknowledgements
Additional contributors: Qingquan LI and Guofeng WU, for giving me valuable suggestions and support on experimental plan.
