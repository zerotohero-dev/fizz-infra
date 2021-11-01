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
CLUSTER="fizz-cluster-v2"

kubectl exec -n spire spire-server-0 -- \
    /opt/spire/bin/spire-server entry create \
    -node  \
    -spiffeID spiffe://"$DOMAIN"/ns/spire/sa/spire-agent \
    -selector k8s_sat:cluster:$CLUSTER \
    -selector k8s_sat:agent_ns:spire \
    -selector k8s_sat:agent_sa:spire-agent

# Sample Output:
#
# Entry ID  : 1ae6ac41-9754-4a85-b1e5-c3dc83811cd6
# SPIFFE ID : spiffe://fizzbuzz.pro/ns/spire/sa/spire-agent
# Parent ID : spiffe://fizzbuzz.pro/spire/server
# Revision  : 0
# TTL       : default
# Selector  : k8s_sat:agent_ns:spire
# Selector  : k8s_sat:agent_sa:spire-agent
# Selector  : k8s_sat:cluster:fizz-cluster-v2
