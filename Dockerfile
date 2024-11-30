FROM python:latest

RUN mkdir -p /notebooks


EXPOSE 1664
COPY requirements.txt .

#COPY . /notebooks/

RUN apt-get update
#RUN echo pip --version
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

WORKDIR /notebooks
#ENTRYPOINT python /notebooks/

CMD jupyter lab --ip=* --port=1664 --allow-root --no-browser



# # Build the image
#virtualenv .venv
#source .venv/bin/activate
#   docker build . -t my_python
#   docker run --mount type=bind,src=.,dst=/app my_python sh #
# or
#   docker run -p1664:1664 -v .:/notebooks -it ds_pace /bin/bash




