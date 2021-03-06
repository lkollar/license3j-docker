# Docker image for license3j
#
# Example docker run command to encode license:
# cat input.txt | docker run -i -e KEY=<key> -e PASSWORD=<password> -v <path to keyring>:/license3j/sec_keyring.gpg license3j 
# The generated license will be printed on standard out.

FROM anapsix/alpine-java

COPY lib/ /license3j
COPY make-license.sh /bin

CMD /bin/make-license.sh
