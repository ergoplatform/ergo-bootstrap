FROM nixos/nix
ARG ERGO_NIX
RUN nix-env -iA ergo-explorer-backend -f $ERGO_NIX

ENTRYPOINT ergo-chain-grabber $0