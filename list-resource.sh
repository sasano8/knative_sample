#!/bin/bash

# 対象となるリソースタイプを定義
resources=("pods" "services" "deployments")

# 各リソースタイプに対して処理を実行
for resource in "${resources[@]}"
do
  # echo "Listing ${resource} in all namespaces:"
  kubectl get "$resource" --all-namespaces -o custom-columns=TYPE:.kind,NAMESPACE:.metadata.namespace,NAME:.metadata.name --no-headers | awk '{print $2 "/" $1 "/" $3}'
done

