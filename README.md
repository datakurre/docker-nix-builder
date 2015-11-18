Nix tarball builder image for Docker
====================================

Building a Docker image from Nix expression:

    $ echo "with import <nixpkgs> {}; python" |\
           docker run --rm -i datakurre/nix-builder|\
           docker import --change 'ENTRYPOINT ["/bin/python"]' - python

Building a Docker image from Nix expression file:

    $ cat default.nix | docker run --rm -i datakurre/nix-builder |\
          docker import --chane 'ENTRYPOINT ["/bin/python"]' - pyramid
