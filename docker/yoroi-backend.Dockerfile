FROM nixos/nix
ARG ERGO_NIX
RUN nix-env -iA yoroi-ergo-backend -f $ERGO_NIX

EXPOSE 3001

ENTRYPOINT yoroi-ergo-backend
