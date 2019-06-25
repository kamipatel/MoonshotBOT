#!/bin/bash

sfdx force:org:create -f config/dhsetup-scratch-def.json -a dh_scratch -d 7

sfdx force:org:open -u dh_scratch