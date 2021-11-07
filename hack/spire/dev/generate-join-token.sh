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

./bin/spire-server token generate -spiffeID spiffe://fizzbuzz.pro/fizz-agent
