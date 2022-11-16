# Nextflow Dev Container Feature

> This repo contains a dev container Feature for adding `Nextflow` to a devcontainer.
### `nextflow`

The `nextflow` binary should be available inside the built container.

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/alvaromartmart/devcontainer-nextflow-feature/nextflow:1": {}
    }
}
```

```bash
nextflow -v
```

# Development
## Repo and Feature Structure

Similar to the [`devcontainers/features`](https://github.com/devcontainers/features) repo, this repository has a `src` folder.  Each Feature has its own sub-folder, containing at least a `devcontainer-feature.json` and an entrypoint script `install.sh`. 

```
├── src
│   ├── nextflow
│   │   ├── devcontainer-feature.json
│   │   └── install.sh
|   ├── ...
│   │   ├── devcontainer-feature.json
│   │   └── install.sh
...
```

An [implementing tool](https://containers.dev/supporting#tools) will composite [the documented dev container properties](https://containers.dev/implementors/features/#devcontainer-feature-json-properties) from the feature's `devcontainer-feature.json` file, and execute in the `install.sh` entrypoint script in the container during build time.  Implementing tools are also free to process attributes under the `customizations` property as desired.

## Distributing Features

### Versioning

Features are individually versioned by the `version` attribute in a Feature's `devcontainer-feature.json`.  Features are versioned according to the semver specification. More details can be found in [the dev container Feature specification](https://containers.dev/implementors/features/#versioning).

### Publishing

> NOTE: The Distribution spec can be [found here](https://containers.dev/implementors/features-distribution/).  
>
> While any registry [implementing the OCI Distribution spec](https://github.com/opencontainers/distribution-spec) can be used, this template will leverage GHCR (GitHub Container Registry) as the backing registry.

Features are meant to be easily sharable units of dev container configuration and installation code.  

This repo contains a GitHub Action [workflow](.github/workflows/release.yaml) that will publish each feature to GHCR.  By default, each Feature will be prefixed with the `<owner/<repo>` namespace.  For example, the two Features in this repository can be referenced in a `devcontainer.json` with:

```
ghcr.io/alvaromartmart/devcontainer-nextflow-feature/nextflow:1
```

The provided GitHub Action will also publish a third "metadata" package with just the namespace, eg: `ghcr.io/alvaromartmart/devcontainer-nextflow-feature`.  This contains information useful for tools aiding in Feature discovery.

'`devcontainers/feature-starter`' is known as the feature collection namespace.
