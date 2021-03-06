FROM astroswarm/base:latest

RUN apt-get update && apt-get -y install \
  build-essential \
  python-dev \
  python-pip

RUN pip install browsepy

EXPOSE 8080

CMD browsepy 0.0.0.0 8080 --directory $SHARED_DIR --removable $SHARED_DIR --upload $SHARED_DIR
