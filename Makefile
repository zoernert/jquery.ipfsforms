#
# StromDAO Business Object - Decentralized Apps
# Deployment via Makefile to automate general Quick Forward 
#

PROJECT = "jQuery Persist Plugin"


all: commit

commit: ;git add -A;git commit -a; git push; npm publish;

