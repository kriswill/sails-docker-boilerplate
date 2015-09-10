# Sails-Docker-Boilerplate

This project contains a fresh [Sails](http://sailsjs.org) application ([v0.12.0-rc3](https://github.com/balderdashy/sails/tree/v0.12.0-rc3)) using the `sails new` command.  The `Dockerfile` is configured to use [Node.js](http://nodejs.org) version 4.0.

You use this repo to develop a new [Sails](http://sailsjs.org) app on your local machine using [Docker Compose](https://docs.docker.com/compose/).  Docker compose is a tool that enables you to configure each application or service you want in your system and runs each one in a separate container.  Docker protects your development machine from being polluted with extraneous software and enables you to lock-down specific versions of the software used, which eases migration to newer versions of database servers, OSes, etc.

## How to use this project:

* Fork this repo, then clone to your machine:
  ```sh
  → git clone https://github.com/{github username}/sails-docker-boilerplate.git {myapp-name}
  ```
  *Replace __{github username}__ and __{myapp-name}__ with your names.*

* Install [Docker Toolbox](https://www.docker.com/toolbox).  If you have a preferred and trusted way of installing docker tools, that's fine too.  As long as you have access to the latest Docker.

> __TIP__: if your development machine has ample RAM and disk space, you can create a virtual machine that is larger than the default.  I use:
  ```sh
  → docker-machine create -d virtualbox --virtualbox-cpu-count=4 --virtualbox-disk-size=40960 --virtualbox-memory=4096 default
  ```
> *creates a virtualbox VM at 40GB disk and 4GB RAM with 4 CPU cores*

* Add your Docker machine's environment variables for your shell:
  ```sh
  # ~/.bash_profile or ~/.profile
  # set Docker environment variables using docker-machine
  test -f /usr/local/bin/docker-machine && eval $($_ env default)
  ```
  Then restart your shell.  *If you're on Windows, good luck!*

* Build the Dockerfile:
  ```sh
  → docker-compose build
  ```

* Install the node dependencies.  This must be done by running `NPM` inside of the container, since it is a specific flavor of Linux:
  ```sh
  → docker-compose run sails npm install
  ```

* If there were no errors in the previous step, you can lift sails:
  ```sh
  → docker-compose up
  ```

* And, open the app in your favorite browser on OS/X:
  ```sh
  → open http://$(docker-machine ip default):1337
  ```
  this should open up a page that looks like:

  ![Image of default sails page](https://cloud.githubusercontent.com/assets/115474/9781557/8e9e5090-574a-11e5-8d7e-c3ff559f398c.png)
