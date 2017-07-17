ARG ARCH

FROM astroswarm/base-$ARCH:latest

RUN apt-get update && apt-get -y install \
  build-essential \
  python-dev \
  python-pip

RUN pip install browsepy

EXPOSE 8080

CMD browsepy 0.0.0.0 8080 --directory /mnt/shared --removable /mnt/shared --upload /mnt/shared
