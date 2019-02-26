FROM sourecode/lerna:latest

LABEL version="1.0.1"
LABEL repository="https://github.com/SoureCode/Action-Lerna"
LABEL homepage="https://github.com/SoureCode/Action-Lerna"
LABEL maintainer="SoureCode <info@sourecode.de>"

LABEL com.github.actions.name="GitHub Action for lerna"
LABEL com.github.actions.description="Wraps the lerna CLI to enable common lerna commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="black"

ADD LICENSE.md README.md /
ADD entrypoint.sh /entrypoint.sh

CMD ["node"]
ENTRYPOINT ["/entrypoint.sh"]
