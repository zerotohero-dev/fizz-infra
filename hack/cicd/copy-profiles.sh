#!/usr/bin/env zsh

#  \
#  \\,
#   \\\,^,.,,.                     Zero to Hero
#   ,;7~((\))`;;,,               <zerotohero.dev>
#   ,(@') ;)`))\;;',    stay up to date, be curious: learn
#    )  . ),((  ))\;,
#   /;`,,/7),)) )) )\,,
#  (& )`   (,((,((;( ))\,

sudo cp ~/.zprofile /home/fizz-crypto/
sudo cp ~/.fizzbuzz /home/fizz-crypto/
sudo cp ~/.fizzbuild /home/fizz-crypto/
sudo cp ~/.fizzsecret /home/fizz-crypto/
sudo cp ~/.fizzspire /home/fizz-crypto/

sudo chown fizz-crypto /home/fizz-crypto/.*

sudo cp ~/.zprofile /home/fizz-idm/
sudo cp ~/.fizzbuzz /home/fizz-idm/
sudo cp ~/.fizzbuild /home/fizz-idm/
sudo cp ~/.fizzsecret /home/fizz-idm/
sudo cp ~/.fizzspire /home/fizz-idm/

sudo chown fizz-idm /home/fizz-idm/.*

echo "Everything is awesome 🦄."
