FROM continuumio/miniconda3
COPY requirements.txt ./
COPY Work1.ipynb ./
RUN sudo pip instal -r requirements.txt
RUN sudo jupyter-nbconvert --execute Work1.ipynb --to html
