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

./bin/spire-server entry create -spiffeID spiffe://fizzbuzz.pro/app/crypto \
                            -parentID spiffe://fizzbuzz.pro/fizz-agent \
                            -selector unix:user:f-crypto

./bin/spire-server entry create -spiffeID spiffe://fizzbuzz.pro/app/idm \
                            -parentID spiffe://fizzbuzz.pro/fizz-agent \
                            -selector unix:user:f-idm

./bin/spire-server entry create -spiffeID spiffe://fizzbuzz.pro/app/default \
                            -parentID spiffe://fizzbuzz.pro/fizz-agent \
                            -selector unix:user:volkan

                            #-selector unix:sha256:2b0c1b57739bc24e74f5f675480f741d10e5315ef764301f82e6ccb9b8d674d0


#                            unix:path:/Users/volkan/Desktop/PROJECTS/fizzbuzzpro/fizz-crypto/go_build_github_com_zerotohero_dev_fizz_crypto_cmd

                            # -selector unix:sha256:cae4da47a8135cee78c0103c8b7dfc2fad24984778caf61757711cc872094cde

#                            unix:path:/Users/volkan/Desktop/PROJECTS/fizzbuzzpro/fizz-idm/go_build_github_com_zerotohero_dev_fizz_idm_cmd

# Entry ID         : 0226d914-83af-4a1f-b768-ae74d9c9f5bd
# SPIFFE ID        : spiffe://fizzbuzz.pro/app/crypto
# Parent ID        : spiffe://fizzbuzz.pro/fizz-agent
# Revision         : 0
# TTL              : default
# Selector         : unix:path:/Users/volkan/Desktop/PROJECTS/fizzbuzzpro/fizz-crypto/go_build_github_com_zerotohero_dev_fizz_crypto_cmd
#
# Entry ID         : ff2c5ffb-89af-4b6a-aad3-a70a6d466cd1
# SPIFFE ID        : spiffe://fizzbuzz.pro/app/idm
# Parent ID        : spiffe://fizzbuzz.pro/fizz-agent
# Revision         : 0
# TTL              : default
# Selector         : unix:path:/Users/volkan/Desktop/PROJECTS/fizzbuzzpro/fizz-crypto/go_build_github_com_zerotohero_dev_fizz_crypto_cmd
