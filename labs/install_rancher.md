# Aufgabe 1 - Rancher Installieren

## Starten des Rancher Containers
Um deinen ersten Rancher Container zu starten, verbinde dich bitte via SSH zu seinem Master. (Beispielsweise kube0-master)

WICHTIG: Überall wo $ID steht, muss deine individuelle LAB ID anstelle vpn $ID verwendet werden.
```
docker run -d --restart=unless-stopped \
  -p 80:80 -p 443:443 \
  rancher/rancher:latest \
  --acme-domain rancher-$ID.sva.rocks
```
Danach auf https://rancher-$ID.sva.rocks um das Passwort zu setzen:

![PW](images/pw.png)


