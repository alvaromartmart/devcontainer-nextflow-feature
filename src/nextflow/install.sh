#!/usr/bin/env bash
curl -s "https://get.sdkman.io/" | bash 
source "${SDKMAN_DIR}/bin/sdkman-init.sh"
curl -s https://get.nextflow.io | bash
sudo chmod +rx nextflow
sudo mv nextflow /usr/local/bin/
