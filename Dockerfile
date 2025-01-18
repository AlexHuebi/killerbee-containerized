FROM debian:12.9

# Install Package dependencies + some useful Tools + get rid of bread-system-packages error
RUN apt-get update; \
    apt-get install -y \
      nano htop git usbutils \ 
      python3 python3-pip \
      python3-dev python3-usb python3-scapy libgcrypt20-dev; \
    rm -rf /var/lib/apt/lists/*; \
    rm -rf /usr/lib/python3.11/EXTERNALLY-MANAGED

# Install killerbee 
RUN git clone https://github.com/AlexHuebi/killerbee-pycryptodome; \
    pip install /killerbee-pycryptodome; \
    rm -rf /killerbee-pycryptodome