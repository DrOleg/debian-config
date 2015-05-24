#!/bin/bash
#
# initGrps.sh
#
# Create UNIX groups
groupadd thepride
# Map Windows Domain Groups to UNIX groups
net groupmap add ntgroup="Domain Admins" unixgroup=root type=d
net groupmap add ntgroup="Domain Users" unixgroup=users type=d
net groupmap add ntgroup="Domain Guests" unixgroup=nobody type=d
net groupmap add ntgroup="The Pride" unixgroup=thepride type=d
