# create the container based off some container (what container am I going to use)
FROM python:3.6-alpine
# port the code into the container
ADD . /home/app/
# install dependencies into the container (what am I going to install into this container)
RUN pip install pipenv
WORKDIR /home/app/
RUN pipenv install --ignore-pipfile --system
# run the app (What do I need to do to spin up the container)
ENV FLASK_APP=myapp.py
EXPOSE 5000
ENTRYPOINT flask run --host=0.0.0.0

# Note that grouping items today could bring large gains in build times due to caching
