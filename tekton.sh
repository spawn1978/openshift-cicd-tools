#!/bin/bash
oc new-project tekton-pipelines --display-name='Tekton Pipelines'
oc adm policy add-scc-to-user anyuid -z tekton-pipelines-controller
oc apply --filename https://storage.googleapis.com/tekton-releases/latest/release.yaml

oc apply -f echo-hello-world-task.yaml
oc apply -f echo-hello-world-task-run.yaml
