#!/bin/sh

set -eax

isort --check-only --diff --quiet
black --check --exclude node_modules .
flake8
