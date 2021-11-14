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

# For Demo.
./bin/spire-server entry create -spiffeID spiffe://fizzbuzz.pro/app/fizz-crypto \
                            -parentID spiffe://fizzbuzz.pro/fizz-agent \
                            -selector unix:user:f-crypto
./bin/spire-server entry create -spiffeID spiffe://fizzbuzz.pro/app/fizz-idm \
                            -parentID spiffe://fizzbuzz.pro/fizz-agent \
                            -selector unix:user:f-idm

# Used on IDEs.
./bin/spire-server entry create -spiffeID spiffe://fizzbuzz.pro/app/fizz-default \
                            -parentID spiffe://fizzbuzz.pro/fizz-agent \
                            -selector unix:user:volkan
