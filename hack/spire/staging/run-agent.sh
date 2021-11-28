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

JOIN_TOKEN="fe381d07-e10a-4cd3-8fd9-25a031d18b76"

./bin/spire-agent run -config "$SPIRE_CONF_PATH"/agent.conf \
-joinToken $JOIN_TOKEN
