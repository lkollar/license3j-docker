# Docker image for [license3j](https://github.com/verhas/License3j)

Docker hub repo: [lkollar/license3j](https://hub.docker.com/r/lkollar/license3j/)

Example `docker run` command to encode license:

    cat input.txt | docker run -i -e KEY=<key> -e PASSWORD=<password> -v <path to keyring>:/license3j/sec_keyring.gpg license3j 

The generated license will be printed on standard out.
