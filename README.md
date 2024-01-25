

# Knative        

## コンポーネントのインストール

```
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.12.3/serving-crds.yaml
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.12.3/serving-core.yaml
```

## ネットワークツールのインストール

- Kourier: Envoy ゲートウェイに基づく軽量の Ingress。追加のカスタムリソースを必要としない。Knative はデフォルトを Istio から Kourier とした。
- Istio
- Contour



knative 導入後以下で導入できる。

勘所は以下。

- テスト環境用 dns は sslip を使える
- ロードバランサーでEXTERNAL IP を振って、それを払い出すようにする


```
cd templates

kubectl apply -f jupyter.yaml
```

knative service を検索し、アクセスするためのURLを取得する。

```
kubectl get ksvc
```



