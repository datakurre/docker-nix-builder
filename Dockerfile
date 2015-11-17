FROM datakurre/nix
MAINTAINER asko.soukka@iki.fi
RUN nix-env -f '<nixpkgs>' -iA gnutar -iA graphviz
COPY build.sh /home/user/
ENTRYPOINT ["/home/user/build.sh"]