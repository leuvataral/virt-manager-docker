# virt-manager-docker

Run [virt-manager](https://virt-manager.org/) in a Docker container.

I primarily created this to run `virt-manager` on macOS easily.

## Instructions

### macOS

#### Prerequisites

1. Install `socat`: 
   - `brew install socat`
   
2. Install `xquartz`:
   - `brew install --cask xquartz`
   
3. [Install Docker](https://docs.docker.com/docker-for-mac/install/)

4. Make sure you have setup ssh between the Host you are trying to connect and your machine before running the virt-manager Docker container.
   - `ssh-copy-id user@host`

5. Build virt-manager docker container locally:
   - `docker build -t virt-manager-docker .`

#### Start

`./start-virt-manager.sh`

#### Stop

`./stop-virt-manager.sh`
