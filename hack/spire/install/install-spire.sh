#!/usr/bin/env zsh

#  \
#  \\,
#   \\\,^,.,,.                     Zero to Hero
#   ,;7~((\))`;;,,               <zerotohero.dev>
#   ,(@') ;)`))\;;',    stay up to date, be curious: learn
#    )  . ),((  ))\;,
#   /;`,,/7),)) )) )\,,
#  (& )`   (,((,((;( ))\,

git clone --single-branch --branch v1.1.0 https://github.com/spiffe/spire.git
cd spire || exit
go build ./cmd/spire-server
go build ./cmd/spire-agent
mkdir bin
mv spire-server spire-agent bin
