#!/usr/bin/env bash

# Setup Java
curl -s "https://get.sdkman.io/" | bash 
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java 17.0.5-tem
export JAVA_HOME=$(/usr/libexec/java_home -v 17)

# Install nextflow
curl -s https://get.nextflow.io | bash
sudo chmod a+rx nextflow
sudo mv nextflow /usr/local/bin/
