FROM python:bullseye
COPY requirements.txt ./
COPY Work1.ipynb ./
RUN sudo pip install -r requirements.txt
RUN sudo jupyter-nbconvert --execute Work1.ipynb --to html
