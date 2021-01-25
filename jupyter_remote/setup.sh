#! /bin/bash  

# Based on
# https://teddylee777.github.io/python/jupyternotebook-remote-%EC%A0%91%EC%86%8D%ED%97%88%EC%9A%A9%ED%95%98%EA%B8%B0

pip install jupyter

sudo ufw allow 8888

jupyter notebook --generate-config

echo '
[ set `/`.jupyter/jupyter_notebook_config.py as following ]
c.NotebokApp.ip = '0.0.0.0'
c.NotebookApp.notebook_dir = \[deisred root path]\
c.NotebookApp.open_browser = False

[if necessary ]
c.NotebookApp.port = [desired port number]
'
