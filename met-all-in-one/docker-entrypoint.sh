#!/bin/bash
echo "running python command..."
exec conda run --no-capture-output -n container $@
