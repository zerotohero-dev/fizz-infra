#!/usr/bin/env zsh

#  \
#  \\,
#   \\\,^,.,,.                     Zero to Hero
#   ,;7~((\))`;;,,               <zerotohero.dev>
#   ,(@') ;)`))\;;',    stay up to date, be curious: learn
#    )  . ),((  ))\;,
#   /;`,,/7),)) )) )\,,
#  (& )`   (,((,((;( ))\,

# shellcheck disable=SC2164
cd "$SPIRE_ROOT"

JOIN_TOKEN="16fac1ba-4252-4a4c-a1d7-21703dfffff7"

./bin/spire-agent run -config "$FIZZ_INFRA_ROOT"/spire/conf/local/agent.conf \
-joinToken $JOIN_TOKEN

# ERRO[0070] Failed to collect all selectors for PID
# error="workload attestor \"unix\" failed: rpc error: code = Internal desc =
# workloadattestor(unix): SHA256 digest: open
# /proc/47144/exe: no such file or directory" pid=47144 subsystem_name=workload_attestor
