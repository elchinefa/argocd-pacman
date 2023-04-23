# argocd-pacman

After deploying it should edit service:
kubectl patch svc pacman -n game-manual -p '{"spec": {"type": "LoadBalancer"}}'


kubectl edit  svc pacman -n game-manual
