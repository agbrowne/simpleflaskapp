# python 3.7
python:3.7

# create working directory
WORKDIR agb-pipeline

# copy files across
COPY . ./agb-pipeline

# install dependencies
RUN pip install -r requirements.txt

# expose port
EXPOSE 5000

# create entry point
ENTRYPOINT ["python3", "app.py"]
