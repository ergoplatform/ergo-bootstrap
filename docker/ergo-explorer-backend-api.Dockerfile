FROM nixos/nix
ARG ERGO_NIX
RUN nix-env -iA ergo-explorer-backend -f $ERGO_NIX

EXPOSE 8080

ENTRYPOINT ergo-explorer-api $0