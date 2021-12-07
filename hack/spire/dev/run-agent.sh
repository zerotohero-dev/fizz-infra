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

JOIN_TOKEN="013b3196-9635-4da7-8dea-014333f6ebc9"

./bin/spire-agent run -config "$SPIRE_CONF_PATH"/agent.conf \
-joinToken $JOIN_TOKEN
