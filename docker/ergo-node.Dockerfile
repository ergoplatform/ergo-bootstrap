FROM nixos/nix
ARG ERGO_NIX
RUN nix-env -iA ergo-node -f $ERGO_NIX

EXPOSE 9030
EXPOSE 9053

WORKDIR /home/ergo
ENTRYPOINT ergo $0 $1 $2 $3 $4
