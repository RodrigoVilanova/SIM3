# Graph analysis of SIM3 Maturity Model
# Author: Rodrigo Vilanova


Abstract:
  SIM3 Maturity Model Graph analysis regarding relationship betwheen all the 45 componentes from the SIM3-CMM.
  For more information regarding SIM3 Maturity Model:

    https://opencsirt.org/csirt-maturity/sim3-and-references/
    https://opencsirt.org/wp-content/uploads/2023/11/SIM3_v2_interim_standard.pdf
    https://sim3-check.opencsirt.org/#/

Components:
  Dependencies:
    Docker Composer - 
    Neo4j           - https://hub.docker.com/_/neo4j 
    Python          - https://www.python.org/
    pyenv           - https://github.com/pyenv/pyenv
    
Main Goal:
  Interact and display the relationship between all 45 parameters of SIM3, changing the visualization according to the chosen profile.

Install:
  Make sure you're runnig the last version of pip3:
    python3 -m pip install --upgrade pip
  Create a python virtual env with the tool as you prefer. I'll be using pyenv, like bellow:
    python3 -m venv sim3
  Activate the virtual environment:
    source sim3/bin/activate
  Install the requirments packages:
    pip3 install -r PATH/requirements.txt


Execution:
  After dependencies as installed you just need to run:
    START:
      docker-compose -f PATH/docker-composer.yml up -d 
    STOP:
      docker-compose -f PATH/docker-composer.yml stop

  To update the relations:
    python3 PATH/main.py

  
Support:
  If you have any question or desagree with some point, please fell free to write a issue in github project and I'll be my best to respond ASAP.
