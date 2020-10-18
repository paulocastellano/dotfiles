# Docker general
alias dup="docker-compose up -d"

# Docker php
alias php="docker-compose exec app php"
alias composer="docker-compose exec app composer"

# Kubernetes
alias k-use-context="kubectl config use-context"
alias k-get-contexts="kubectl config get-contexts"
alias k-rollout="kubectl rollout status deploy -n production"
alias b-edit-configmap="kubectl edit configmap changelogfy -n production"

alias k-get-pods-production="kubectl get pod -n production"
alias k-get-pods-staging="kubectl get pod -n changelogfy-10378430-staging"