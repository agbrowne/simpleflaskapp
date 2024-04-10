# Do not forget to put the jenkins user into the docker group, start
# jenkins and start docker, then change the ownership of
# /var/run/docker.sock:
#
# chown jenkins:jenkins /var/run/docker.sock
#


# python 3.7
FROM python:3.7

# create working directory
WORKDIR agb-pipeline

# copy files across
COPY . /agb-pipeline

# install dependencies
# COPY requirements.txt .
RUN pip install -r requirements.txt

# expose port
EXPOSE 5000

# create entry point
ENTRYPOINT ["python3", "app.py"]
