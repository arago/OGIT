#!/usr/bin/env bash

## prepare combined sdf json

# prepare sdf prefix
prefix=$(jq -n '{"id": "default", "xidPrefix": "CUST_ID:INST_ID:"}')

# prepare array of sdf definitions
sdf_definations=$(find . -type f -name '*.json' | xargs jq -s '[.[]]' |  jq -n '.sdfDefinition |= inputs')

# final json file
echo $prefix $sdf_definations | jq -s add
