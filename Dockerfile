FROM sourecode/lerna:latest

LABEL version="1.0.0"
LABEL repository="https://github.com/SoureCode/Action-Lerna"
LABEL homepage="https://github.com/SoureCode/Action-Lerna"
LABEL maintainer="SoureCode <info@sourecode.de>"

LABEL com.github.actions.name="GitHub Action for lerna"
LABEL com.github.actions.description="Wraps the lerna CLI to enable common lerna commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="black"
COPY LICENSE.md README.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]