```text
\
\\,
 \\\,^,.,,.                     Zero to Hero
 ,;7~((\))`;;,,               <zerotohero.dev>
 ,(@') ;)`))\;;',    stay up to date, be curious: learn
  )  . ),((  ))\;,
 /;`,,/7),)) )) )\,,
(& )`   (,((,((;( ))\,
```

## SPIRE Development Environment Quick Setup

First, run SPIRE server:

```bash
./hack/run-spire-server.sh
```

Next, get a join token from the server:

```bash
./hack/generate-spire-token.sh
```

Once you get the token, you need to plug it in to the agent:

```bash 
vim ./hack/run-spire-agent.sh
# Update JOIN_TOKEN with the recent one you fetched above.
# Be quick. The token will time out otherwise.
```

If the agents starts up successfully, well good for you.
If not… well, we’ll get to that later ð.

Now it’s time to register the local workloads. Better to do this
before running the workload binaries.

```bash 
./hack/register-fzp-local-workloads.sh
# Note: "local" workloads.
```


// STUFF TO DO:
1. update this document.
2. Assign identities to `idm` and `crypto`
3. Make sure they can HELO each other via mTLS.
4. Code cleanup.
5. WATCH HARRY POTTER!
