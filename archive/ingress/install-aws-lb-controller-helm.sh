helm upgrade -i aws-load-balancer-controller eks/aws-load-balancer-controller \
  --set clusterName=fizz-cluster-v2  \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller \
  -n kube-system
