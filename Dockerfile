FROM darribas/gds

USER $NB_UID

# Generate config file
RUN /opt/conda/bin/jupyter notebook --generate-config

WORKDIR $HOME

ADD jupyter_notebook_config.py
RUN mv jupyter_notebook_config.py \
       /home/jovyan/.jupyter/jupyter_notebook_config.py

