## This repository hosts tailored Docker images for various tools:

- VS Code Server
- Jupyter Notebook
- Customized Jupyter Notebook (SI-Notepad) for an AI academic course.

## CI/CD Integration:
Automatic CI/CD pipelines push images to the registry and update deployment manifests in a [separate repository](https://github.com/BoredOtter/custom-images-manifests) for ArgoCD.
After changes are made to the manifest repository, Argo automatically updates the deployments present on the cluster to match the state defined in the repository.
