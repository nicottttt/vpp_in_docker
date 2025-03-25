FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    curl gnupg2 \
 && curl -s https://packagecloud.io/install/repositories/fdio/release/script.deb.sh | bash \
 && apt-get install -y vpp vpp-plugin-core vpp-plugin-dpdk

CMD ["/usr/bin/vpp", "-c", "/etc/vpp/startup.conf"]
