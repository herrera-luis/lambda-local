#!/bin/bash
set -eo pipefail
rm -rf package
DIR=./venv
if [ -d "$DIR" ];
then
    echo "$DIR directory venv exists."
else
	virtualenv venv
fi
source venv/bin/activate
pip install -r requirements.txt
cd function
pip install -r requirements.txt