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

# Sample Output:
#
# Entry ID  : e1b99e55-603f-4ffc-9d77-3301488be156
# SPIFFE ID : spiffe://fizzbuzz.pro/ns/fizz/sa/default
# Parent ID : spiffe://fizzbuzz.pro/ns/spire/sa/spire-agent
# Revision  : 0
# TTL       : default
# Selector  : k8s:ns:fizz
# Selector  : k8s:sa:default
