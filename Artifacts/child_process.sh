#!/bin/bash -e

source .config

nodemon "$FPRIME_VISUAL_PATH"/server/index.js
