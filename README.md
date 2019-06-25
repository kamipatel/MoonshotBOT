sfdx force:auth:web:login -d -a devhub
sfdx force:org:create -s -f config/project-scratch-def.json -a botorg --setdefaultusername -d 10
sfdx force:source:push
sfdx force:org:open

# testing in new sc

sfdx force:org:create -s -f config/project-scratch-def.json -a botorgtest --setdefaultusername -d 10
sfdx force:source:push -u botorgtest

#####

sfdx force:mdapi:retrieve -s -r ./mdapi-source -k ./mdapi-source/package.xml
unzip -o ./mdapi-source/unpackaged.zip -d ./mdapi-source

sfdx force:org:snapshot:create --sourceorg 00D2h0000000MhY --snapshotname botbot1 --description "botbot1"
sfdx force:org:snapshot:list
sfdx force:org:snapshot:get -s botapp -v dev@kam.ent

sfdx force:org:create -f config/dhsetup-scratch-def.json -a dh_scratch -d 7 -w 10 -v devhub

//original
sfdx force:org:open -u test-5biciooibfrj@example.com

//test
sfdx force:org:open -u test-ibxm7isvo3f9@example.com

https://kamipatel.github.io/appysite/

sfdx force:org:snapshot:create --sourceorg 00D1F000000EbbQ --snapshotname botbot2
