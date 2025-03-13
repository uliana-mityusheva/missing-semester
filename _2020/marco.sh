#!/bin/bash

marco() {
    export MARCO="$(pwd)"
}

polo() {
    if [ -z "$MARCO" ]; then
        echo "Error: MARCO is not set. Run 'marco' first."
    else
        cd "$MARCO"
    fi
}

