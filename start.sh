#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
echo $SCRIPT_DIR

export PATH=$PATH:$SCRIPT_DIR/bin
exec $SCRIPT_DIR/bin/viamboatmodule "$@"
