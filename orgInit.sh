#!/bin/bash

sfdx force:org:create -f config/dhsetup-scratch-def.json -a ADK --setdefaultusername -d 7

sfdx force:org:open