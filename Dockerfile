FROM python:3.9-alpine

RUN mkdir -p /app
WORKDIR /app
COPY ./ /app

ENTRYPOINT python /app/app.py

RUN apt-get update
RUN echo pip --version
RUN pip install --upgrade pip
RUN pip install numpy

CMD python app.py



# # Build the image
#virtualenv .venv
#source .venv/bin/activate
# docker build . -t my_python
# docker run --mount type=bind,src=.,dst=/app my_python sh #




