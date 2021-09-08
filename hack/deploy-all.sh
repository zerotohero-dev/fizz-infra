#!/usr/bin/env zsh

#  \
#  \\,
#   \\\,^,.,,.                     Zero to Hero
#   ,;7~((\))`;;,,               <zerotohero.dev>
#   ,(@') ;)`))\;;',    stay up to date, be curious: learn
#    )  . ),((  ))\;,
#   /;`,,/7),)) )) )\,,
#  (& )`   (,((,((;( ))\,

# Re-source ~/.zprofile in case you made a change recently.
# shellcheck disable=SC1090
. ~/.zprofile

if [ "$FIZZ_PROJECTS" = "" ]; then
  echo "FIZZ_PROJECTS not defined."
  exit 1
fi

# shellcheck disable=SC2164
cd "$FIZZ_INFRA_ROOT/services/crypto"
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Could not find the crypto project folder."
  exit 1
fi
kubectl apply -f .
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error deploying crypto."
  exit 1
fi

# shellcheck disable=SC2164
cd "$FIZZ_INFRA_ROOT/services/idm"
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Could not find the idm project folder."
  exit 1
fi
kubectl apply -f .
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error deploying idm."
  exit 1
fi

# shellcheck disable=SC2164
cd "$FIZZ_INFRA_ROOT/services/mailer"
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Could not find the mailer project folder."
  exit 1
fi
kubectl apply -f .
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error deploying mailer."
  exit 1
fi

# shellcheck disable=SC2164
cd "$FIZZ_INFRA_ROOT/services/questions"
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Could not find the questions project folder."
  exit 1
fi
kubectl apply -f .
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error deploying questions."
  exit 1
fi

# shellcheck disable=SC2164
cd "$FIZZ_INFRA_ROOT/services/store"
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Could not find the store project folder."
  exit 1
fi
kubectl apply -f .
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error deploying store."
  exit 1
fi

