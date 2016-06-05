# Projet Admin. Réseau (Juin 2016)

Services mis en places:

 * Serveur/Résolveur DNS
 * Apache intranet
 * Apache internet
 * MySQL server (réseau local)
 * Service mail (divisé en 5 containers)
 * Server VoIP Asterisk
 * Service WebDAV OwnCloud



# Commandes 

### Serveur DNS

Création et lancement du docker :

```
$ sudo docker run -d --name=dns_server --dns=127.0.0.1 -p 53:53/udp bind9perso
```
Accès CLI au container : 
```
$ sudo exec -ti dns_server bash
```
### Apache Intranet

```
$ sudo docker run -d -p 81:80 --name=web_intranet --dns=127.17.0.2 intranetclosed
```
Accès CLI au container : 
```
$ sudo exec -ti web_intranet bash
```
### Apache Internet

Création et lancement du docker :

```
$ 
```
Accès CLI au container : 
```
$ 
```

### MySQL server

```
$ sudo docker run --name=mysql_server -e MYSQL_ROOT_PASSWORD=password -d mysql
```
Accès CLI au container : 
```
$ sudo exec -ti mysql_server bash
```


### Service Mail

Création et lancement du docker :

```
$ 
```
Accès CLI au container : 
```
$ 
```

### Server VoIP
Création et lancement du docker :

```
$ 
```
Accès CLI au container : 
```
$ 
```

### Service WebDAV OwnCloud
Création et lancement du docker :

```
$ sudo docker run --name=webdav -d -p 80:80 owncloud:8.1
```
Accès CLI au container : 
```
$ sudo docker exec -ti webdav bash
```



