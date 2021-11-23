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

JOIN_TOKEN="33a2d3da-2c40-4f0f-887d-1ade2dd8a137"

./bin/spire-agent run -config "$SPIRE_CONF_PATH"/agent.conf \
-joinToken $JOIN_TOKEN
