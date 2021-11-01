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

# Entry ID         : 28187cd7-2b1c-4b71-92a2-091e9286c6d9
# SPIFFE ID        : spiffe://fizzbuzz.pro/ns/fizz/sa/default/app/crypto
# Parent ID        : spiffe://fizzbuzz.pro/ns/spire/sa/spire-agent
# Revision         : 0
# TTL              : default
# Selector         : k8s:ns:fizz
# Selector         : k8s:pod-label:app:crypto
# Selector         : k8s:sa:default
#
# Entry ID         : 6453d909-b9d6-4a84-8652-15af672131b4
# SPIFFE ID        : spiffe://fizzbuzz.pro/ns/fizz/sa/default/app/mailer
# Parent ID        : spiffe://fizzbuzz.pro/ns/spire/sa/spire-agent
# Revision         : 0
# TTL              : default
# Selector         : k8s:ns:fizz
# Selector         : k8s:pod-label:app:mailer
# Selector         : k8s:sa:default
#
# Entry ID         : 7bda1ee8-8855-41b0-8f51-c748bc704e00
# SPIFFE ID        : spiffe://fizzbuzz.pro/ns/fizz/sa/default/app/questions
# Parent ID        : spiffe://fizzbuzz.pro/ns/spire/sa/spire-agent
# Revision         : 0
# TTL              : default
# Selector         : k8s:ns:fizz
# Selector         : k8s:pod-label:app:questions
# Selector         : k8s:sa:default
#
# Entry ID         : 7ef4926d-76bd-4b65-82a5-3f28cd823892
# SPIFFE ID        : spiffe://fizzbuzz.pro/ns/fizz/sa/default/app/store
# Parent ID        : spiffe://fizzbuzz.pro/ns/spire/sa/spire-agent
# Revision         : 0
# TTL              : default
# Selector         : k8s:ns:fizz
# Selector         : k8s:pod-label:app:store
# Selector         : k8s:sa:default
