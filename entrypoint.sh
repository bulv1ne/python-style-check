#!/bin/sh

set -eax

DIR=${1:-.}
cd $DIR

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
black --check --exclude '/(\.eggs|\.git|\.hg|\.mypy_cache|\.nox|\.tox|\.venv|_build|buck-out|build|dist|node_modules)/' .

flake8 --version
flake8 --ignore E501,W503
