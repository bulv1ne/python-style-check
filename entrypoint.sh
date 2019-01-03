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

isort --check-only --diff --quiet
black --check --exclude node_modules .
flake8
