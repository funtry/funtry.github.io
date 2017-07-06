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
[www.zhangfangli.cn](http://zhangfangli.cn)

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
| ___C-language compiler___ &emsp; | program execution (e.g., [GCC 4.8.4](https://gcc.gnu.org)) |
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
    ![](/assets/img/aws/aws_09.png)
    + install make complier
    ```bash
    sudo apt-get install make
    ```
    ![](/assets/img/aws/aws_10.png)

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
    ![](/assets/img/aws/aws_11.png)

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
    ![](/assets/img/aws/aws_12.png)

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
    ![](/assets/img/aws/aws_13.png)
    ![](/assets/img/aws/aws_15.png)
    + set number of processors in cluster
    ```bash
    # host ID: number of processors
    ip-54-202-97-199: 64
                  ... : ...
    ip-54-202-97-191: 64
    ```
    ![](/assets/img/aws/aws_14.png)

### Experimental plan
1.  clone particle-set project
    + create workspace
    ```bash
    # on AWS EC2 machine
    mkdir ~/aws
    chmod -R 777 ~/aws
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
                    /----- outlet.out   # outlet discharges
                    /----- timecost.out # time costs
    ```
    +  screenshot of inputs (e.g., [Peacheater Creek](http://vivoni.asu.edu/tribs/weather.html), November 1996)
    ![](/assets/img/aws/aws_06.png)

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

1.  load rainfall event (e.g., [Peacheater Creek](http://vivoni.asu.edu/tribs/weather.html), November 1996)
    +  struct of flow production on starting point
    ```java
    typedef struct{
            int nPPRID;     // index of starting node ID
            double *pfPPR;  // rainfall rate list mm/hr
            int nTimeFrame; // number of frames (list size)
    }PPRate;             //flow on starting points
    ```
    +  struct of distributed rainfall map
    ```java
    typedef struct{
            PPRate *pPPR_List;  // list of starting points
            int nNumPoints;     // number of starting points
            int nNumFrames;     // number of time frames
    }PPMap;                  //dynamic rainfall map
    ```

1.  perform runoff simulation (e.g., time step, spatial scale)
    +  preset in main program (particle-set.c)
    ```java
            // from 1996-11-23 00:00 to 11-28 23:00 (144 hours)
            int nST = 1;    // starting time (first hour)
            int nIT = 1;    // time interval (1 hour)
            int nET = 144;  // ending time (last hour)

            // input file path
            char strFilePath[120] = "/home/ubuntu/aws";
            char* pNPath = join_string(strFilePath, "/input/pathnode.in");
            char* pTopoPath = join_string(strFilePath, "/input/pathline.in");
            char* pPPRPath = join_string(strFilePath, "/input/rainfall.in");
    ```
    +  execution of main program (#! /bin/sh)
    ```bash
            # create batch file
            vim ~/run.sh

            # write commands into batch file
                # empty output files
                rm -rf ./aws/output/*

                # compiling with MPICH framework
                mpicc -o ./aws/particle-set ./aws/particle-set.c -lm
                # executing with increasing processors (... '128')
                for i in '1' '2' '3' '4';
                    do
                        mpiexec -np $i ./aws/particle-set
                done

            # save
            :x!

            # run batch file
            /bin/sh ./run.sh | tee ./log.txt
    ```
    +  distributed processors (if on multiple computers)
    ```bash
            # copy source code and input files
            scp -r ./aws ubuntu@ip-address_1:/home/
            ...
            scp -r ./aws ubuntu@ip-address_n:/home/
    ```

1.  analyze model performance (e.g., accuracy, efficiency)
    +  get output files from Amazon EC2 instance
    ```bash
            # on local machine
            scp -rp -i "particle.pem" ubuntu@54.245.145.39:/home/ubuntu/aws/output ~/aws/
    ```
    ![](/assets/img/aws/aws_16.png)
    +  prediction accuracy of outlet discharges
    ```matlab
            %% comparison of outlet discharges

            % Qh_obs    observed outlet discharges
            % Qh_ptc    number of particles passing outlet
            % Qh_sim    simulated outlet discharges
            Qh_obs = [field observations (SWAT)];
            Qh_ptc = [model simulations (particles)];

            % 0.1       10 particles per each mm of water
            % 10^(-3)   from mm to m
            % 200*200   cell size of constraining grid
            % 3600      from hour to seconds
            Qh_1 = Qh_ptc*0.1*10^(-3)*200*200/3600;
            theta = (max(Qh_1)*min(Qh_obs)-min(Qh_1)*max(Qh_obs))/(max(Qh_1)-min(Qh_1));
            e = 1- (max(Qh_obs)-theta)/max(Qh_1);
            Qh_sim = Qh_1*(1-e) + theta;

            %% calculation of quantitative indicators

            % peak discharge
            p_o = max(Qh_obs);
            p_s = max(Qh_sim);

            % Nash and Sutcliffe efficiency
            diff=observed-simulated;
            diffmean_o=observed-mean(Qh_obs);
            diffmean_s=simulated-mean(Qh_sim);

            nse= 1-(sum(diff.^2))/(sum(diffmean_o.^2));

            % correlation coefficient r
            r = sum(diffmean_o.*diffmean_s)/sqrt(sum(diffmean_o.^2)*sum(diffmean_s.^2));

            % balance coefficient
            b = sum(Qh_obs)/sum(Qh_sim);
    ```
    +  result example of prediction accuracy
    ![](/assets/img/aws/aws_07.png)
    +  simulation efficiency of runoff routing
    ```matlab
            %% comparison of time costs varying multiple processors

            % experimental speedup ratio
            num = 0:1:7;
            num_cpu = 2.^num; % from 1 to 128
            time_cost = [longest time cost on multiple processors];
            for i=1:length(num_cpu)
                speed_up(i) = time_cost(i)/time_cost(1);
            end

            % theoretical speedup ratio (parallel portion)
            ideal_x = 0:0.1:7;
            ideal_s = 2.^ideal_x;
            ideal_y1 = 1./((1-1)+1./ideal_s);
            ideal_y2 = 1./((1-0.99)+0.99./ideal_s);
            ideal_y3 = 1./((1-0.95)+0.95./ideal_s);
            f = fittype('1/1/((1-a)+a/x)','dependent',{'y'},'independent',{'x'},'coefficients',{'a'});
            [fitresult, gof] = fit(num_cpu',speed_up(:)', f,'start', 1);
    ```
    +  result example of simulation efficiency
    ![](/assets/img/aws/aws_08.png)

### Main contributions
+ realistic representation of surface water movements
![](/assets/img/aws/aws_17.gif)

+ high-performance computation of rainfall-runoff modeling
<img src="/assets/img/aws/aws_18.png" width="300" />

+ unified description of watershed physical mechanisms
![](/assets/img/aws/aws_19.png)

    $${v_m = f_1(\text{topographical, geographical and hydrological factors)}}$$

    $${R = f_2(\text{upstream area)}}$$

    $${S = f_3(\text{water surface slope})}$$

    $${v = v_m \cdot {\frac{R^\beta\cdot S^{0.5}}{E{\left(R^\beta \cdot S^{0.5}\right)}}}}$$

    $${q = f_4(\lambda, v, e)}$$

    $${q(t) = \int_0^t A(i)\cdot Q(t-i) \,di}$$

    $${q(t) = q(t)\cdot(1-e)+\lambda}$$

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
+  send file and directory to Amazon EC2 instance
  ```bash
      # on local machine

      # send file
      scp -i "key.pem" file ubuntu@ip-address:/home/ubuntu

      # send directory
      scp -i "key.pem" -r directory ubuntu@ip-address:/home/ubuntu
  ```
+  get file and directory from Amazon EC2 instance
  ```bash
          # get file
          scp -p -i "particle.pem" ubuntu@54.245.145.39:/pathto/file ~/local_path

          # get directory
          scp -rp -i "particle.pem" ubuntu@54.245.145.39:/pathto/directort ~/local_path
  ```
+ delete file and directory on AWS instance
  ```bash
        # delete file
        rm ~/(file path)

        # delete file
        rm -rf ~/(directory path)
  ```

### Acknowledgements
Additional contributors: Qingquan LI and Guofeng WU, for giving me valuable suggestions and support on experimental plan.
