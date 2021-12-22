#!/usr/bin/env zsh

#  \
#  \\,
#   \\\,^,.,,.                     Zero to Hero
#   ,;7~((\))`;;,,               <zerotohero.dev>
#   ,(@') ;)`))\;;',    stay up to date, be curious: learn
#    )  . ),((  ))\;,
#   /;`,,/7),)) )) )\,,
#  (& )`   (,((,((;( ))\,

DOMAIN="fizzbuzz.pro"

kubectl exec -n spire spire-server-0 -- \
  /opt/spire/bin/spire-server entry create \
  -spiffeID spiffe://"$DOMAIN"/ns/fizz/sa/default \
  -parentID spiffe://"$DOMAIN"/ns/spire/sa/spire-agent \
  -selector k8s:ns:fizz \
  -selector k8s:sa:default
