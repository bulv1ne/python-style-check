#!/bin/sh

set -eax

if [ -f Pipfile ]
then
    pip install -U pipenv
    pipenv install -d --system
elif [ -f requirements.txt ]
then
    pip install -r requirements.txt
fi


isort --version-number
isort --check-only --diff --quiet

black --version
black --check --exclude node_modules .

flake8 --version
flake8
