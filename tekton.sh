#!/bin/bash
oc new-project tekton-pipelines --display-name='Tekton Pipelines'
oc adm policy add-scc-to-user anyuid -z tekton-pipelines-controller
oc apply --filename https://storage.googleapis.com/tekton-releases/latest/release.yaml
