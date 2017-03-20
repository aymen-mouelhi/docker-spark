# spark

A `debian:jessie` based [Spark](http://spark.apache.org) container. Use it in a standalone cluster with the accompanying `docker-compose.yml`, or as a base for more complex recipes.

## Usage

To create a simplistic standalone cluster with [docker-compose](http://docs.docker.com/compose):
    ```
    docker-compose up
    ```

The SparkUI will be running at `http://${YOUR_DOCKER_HOST}:8080` with one worker listed.
Jupyter pySpark Notebook will be running at `http://${YOUR_DOCKER_HOST}:8888`.

To download the data needed for the labs, exec into the master container:
    ```
    docker exec -it dockerspark_master_1 bash

    # Install wget
    apt-get update
    apt-get -f install
    apt-get install -y wget

    # Create folder lastfm
    cd /datasets && mkdir lastfm

    # Download User Artist Data
    wget http://www.iro.umontreal.ca/~lisa/datasets/profiledata_06-May-2005.tar.gz && tar xvzf profiledata_06-May-2005.tar.gz && rm profiledata_06-May-2005.tar.gz
    mv profiledata_06-May-2005/* /datasets/lastfm
    rm -r profiledata_06-May-2005
    rm lastfm/README.txt
    ```
To get all the jupyter notebooks, exec into the pyspark-notebook container:
    ```
    docker exec -it dockerspark_pyspark-notebook_1 bash
    # Get Notebooks from github repository
    cd /tmp && git clone https://github.com/DistributedSystemsGroup/Algorithmic-Machine-Learning
    cd /tmp/Algorithmic-Machine-Learning/ && mv  -v Notebooks/* /home/jovyan/work
    ```

### Example

## license

MIT
