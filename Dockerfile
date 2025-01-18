FROM debian:12.9

# Install Package dependencies + some useful Tools
RUN apt-get update; \
    apt-get install -y \
      nano htop git \ 
      python3 python3-pip \
      python3-dev python3-usb python3-scapy libgcrypt20-dev; \
    rm -rf /var/lib/apt/lists/*

# Install killerbee 
RUN git clone https://github.com/AlexHuebi/killerbee-pycryptodome; \
    pip install /killerbee-pycryptodome --break-system-packages; \
    rm -rf /killerbee-pycryptodome