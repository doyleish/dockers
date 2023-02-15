FROM octoprint/octoprint:latest

RUN apt-get -y install sudo
### Klipper setup ###

# Create user
RUN useradd -ms /bin/bash klippy && adduser klippy dialout

# Clone klipper
USER klippy
WORKDIR /home/klippy
RUN git clone --depth=1 https://github.com/Klipper3d/klipper

USER root

# Sudoers and ownershipt
RUN echo "klipper ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN chown klippy:klippy -R klipper

# Requirements
RUN apt-get update
RUN apt-get install --yes virtualenv python-dev\
  libffi-dev build-essential libncurses-dev\
  libusb-dev avrdude gcc-avr binutils-avr\
  avr-libc stm32flash dfu-util libnewlib-arm-none-eabi\
  gcc-arm-none-eabi binutils-arm-none-eabi libusb-1.0

# Service
RUN mkdir /etc/services.d/klippy
RUN echo "#!/usr/bin/with-contenv sh" > /etc/services.d/klippy/run
RUN echo "/home/klippy/klippy-env/bin/python /home/klippy/klipper/klippy/klippy.py /home/klippy/.config/printer.cfg" >> /etc/services.d/klippy/run

# Runtime
USER klippy
RUN virtualenv -p python2 /home/klippy/klippy-env
RUN sudo /home/klippy/klippy-env/bin/pip install -r /home/klippy/klipper/scripts/klippy-requirements.txt

# Back to root user
USER root
