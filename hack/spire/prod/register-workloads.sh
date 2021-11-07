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
  -spiffeID spiffe://"$DOMAIN"/ns/fizz/sa/default/app/crypto \
  -parentID spiffe://"$DOMAIN"/ns/spire/sa/spire-agent \
  -selector k8s:ns:fizz \
  -selector k8s:sa:default \
  -selector k8s:pod-label:app:crypto

retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error registering the crypto µService."
  exit 1
fi

kubectl exec -n spire spire-server-0 -- \
  /opt/spire/bin/spire-server entry create \
  -spiffeID spiffe://"$DOMAIN"/ns/fizz/sa/default/app/mailer \
  -parentID spiffe://"$DOMAIN"/ns/spire/sa/spire-agent \
  -selector k8s:ns:fizz \
  -selector k8s:sa:default \
  -selector k8s:pod-label:app:mailer

retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error registering the mailer µService."
  exit 1
fi

kubectl exec -n spire spire-server-0 -- \
  /opt/spire/bin/spire-server entry create \
  -spiffeID spiffe://"$DOMAIN"/ns/fizz/sa/default/app/questions \
  -parentID spiffe://"$DOMAIN"/ns/spire/sa/spire-agent \
  -selector k8s:ns:fizz \
  -selector k8s:sa:default \
  -selector k8s:pod-label:app:questions

retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error registering the questions µService."
  exit 1
fi

kubectl exec -n spire spire-server-0 -- \
  /opt/spire/bin/spire-server entry create \
  -spiffeID spiffe://"$DOMAIN"/ns/fizz/sa/default/app/store \
  -parentID spiffe://"$DOMAIN"/ns/spire/sa/spire-agent \
  -selector k8s:ns:fizz \
  -selector k8s:sa:default \
  -selector k8s:pod-label:app:store

retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error registering the store µService."
  exit 1
fi
