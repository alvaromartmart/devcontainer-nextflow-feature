#!/usr/bin/env bash
curl -s "https://get.sdkman.io/" | bash sdk init sdkman install java
curl -s https://get.nextflow.io | bash
sudo chmod +rx nextflow
sudo mv nextflow /usr/local/bin/
