FROM python:3.7-slim

LABEL "com.github.actions.name"="Python style check"
LABEL "com.github.actions.description"="Checks repository against isort, flake8 and black"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/bulv1ne/python-style-check"
LABEL "homepage"="https://github.com/bulv1ne/python-style-check"
LABEL "maintainer"="Niels Lemmens <draso.odin@gmail.com>"

ADD requirements.txt /requirements.txt
ADD entrypoint.sh /entrypoint.sh

RUN pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
