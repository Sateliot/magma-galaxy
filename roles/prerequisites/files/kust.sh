#!/usr/bin/env bash
# Apply kustomize to the rendered helm chart received from stdin. This shold be invoker from the directory containing the kustomization.yaml file.

cat <&0 > all.yaml
kustomize build . && rm all.yaml

exit 0
