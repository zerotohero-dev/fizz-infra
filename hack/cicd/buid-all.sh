#!/usr/bin/env zsh

#  \
#  \\,
#   \\\,^,.,,.                     Zero to Hero
#   ,;7~((\))`;;,,               <zerotohero.dev>
#   ,(@') ;)`))\;;',    stay up to date, be curious: learn
#    )  . ),((  ))\;,
#   /;`,,/7),)) )) )\,,
#  (& )`   (,((,((;( ))\,

# Re-source zprofile in case you made a change recently.
# shellcheck disable=SC1090
. ~/.zprofile

if [ "$FIZZ_PROJECTS" = "" ]; then
  echo "FIZZ_PROJECTS not defined."
  exit 1
fi

# #region build crypto
# shellcheck disable=SC2164
cd "$FIZZ_CRYPTO_ROOT"
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error switching to crypto root."
  exit 1
fi
./hack/build.sh
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error building crypto."
  exit 1
fi
# #endregion

# #region build mailer
# shellcheck disable=SC2164
cd "$FIZZ_MAILER_ROOT"
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error switching to mailer root."
  exit 1
fi
./hack/build.sh
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error building mailer."
  exit 1
fi
# #endregion

# #region build idm
# shellcheck disable=SC2164
cd "$FIZZ_IDM_ROOT"
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error switching to idm root."
  exit 1
fi
./hack/build.sh
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error building idm."
  exit 1
fi
# #endregion

# #region build questions
# shellcheck disable=SC2164
cd "$FIZZ_QUESTIONS_ROOT"
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error switching to questions root."
  exit 1
fi
./hack/build.sh
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error building questions."
  exit 1
fi
# #endregion

# #region build store
# shellcheck disable=SC2164
cd "$FIZZ_STORE_ROOT"
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error switching to store root."
  exit 1
fi
./hack/build.sh
retVal=$?
if [ $retVal -ne 0 ]; then
  echo "Error building store."
  exit 1
fi
# #endregion
