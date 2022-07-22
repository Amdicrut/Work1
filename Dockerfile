FROM continuumio/miniconda3
COPY requirements.txt ./
COPY Work1.ipynb ./
RUN pip install -r requirements.txt
RUN jupyter-nbconvert --execute Work1.ipynb --to html
