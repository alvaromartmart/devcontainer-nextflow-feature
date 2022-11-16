#!/usr/bin/env bash
curl -s "https://get.sdkman.io/" | bash 
source "/root/.sdkman/bin/sdkman-init.sh"
sdk install java 17.0.5-tem
export JAVA_HOME=$(/usr/libexec/java_home -v 17)
curl -s https://get.nextflow.io | bash
sudo chmod +rx nextflow
sudo mv nextflow /usr/local/bin/
