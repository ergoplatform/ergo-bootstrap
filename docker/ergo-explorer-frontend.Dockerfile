FROM nixos/nix
ARG ERGO_NIX
RUN nix-env -iA ergo-explorer-frontend -f $ERGO_NIX

ENTRYPOINT ergo-explorer-frontend
