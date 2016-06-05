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
Si vous voulez démarrer le container avec des volumes :
```
$ sudo docker run -d --name=dns_server -v DNS:/etc/named/ --dns=127.0.0.1 -p 53:53/udp bind9perso
```
Accès CLI au container : 
```
$ sudo exec -ti dns_server bash
```
### Apache Intranet

```
$ sudo docker run -d -p 81:80 --name=web_intranet --dns=127.17.0.2 intranetclosed
```
Si vous voulez démarrer le container avec des volumes :
```
$ sudo docker run -d -p 81:80 --name=web_intranet -v APACHE\ INTRANET:/usr/local/apache2/conf --dns=127.17.0.2 intranetclosed
```
Accès CLI au container : 
```
$ sudo exec -ti web_intranet bash
```
### Apache Internet

Création et lancement du docker :

```
$ sudo docker run -d -p 80:80 --name=web_internet webserver
```
Si vous voulez démarrer le container avec des volumes :
```
$ sudo docker run -d -p 80:80 --name=web_internet -v APACHE\ INTRANET:/usr/local/apache2/conf webserver
```
Accès CLI au container : 
```
$ sudo exec -ti web_internet bash
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

#### Attention !
Pour ce service, il faudra lancer 5 dockers :
	* Une base de données mongoDB pour les boîtes mail
	* Un apache pour le webmail (solr)
	* Un smtp pour la sortie (smtpout)
	* Un smtp pour l'entrée (smtpin)
	* le serveur Peps

Création et lancement des dockers

Peps :
```
$ sudo docker run -d -p 443:443/tcp --name=peps_server peps_server
```
Smtpin :
```
$ sudo docker run -d -p 25:25/tcp -p 587:587/tcp --name=peps_smtpin peps_smtpin
```
Smtpout :
```
$ sudo docker run -d -p 465:465/tcp --name=peps_smtpout peps_smtpout
```
Solr :
```
$ sudo docker run -d  --name=peps_solr peps_solr
```
MongoDb :
```
$ sudo docker run -d --name=peps_mongod peps_mongod
```
Accès CLI au container : 
```
$ sudo exec -ti <nom-du-container> bash
```

### Server VoIP
Création et lancement du docker :

```
$ sudo docker run --name=asterisk -d -p -p 9080:80 -p 5060:5060/tcp -p 5060:5060/udp -p 16384:16384/udp -p 16385:16385/udp -p 16386:16386/udp -p 16387:16387/udp -p 16388:16388/udp -p 16389:16389/udp -p 16390:16390/udp -p 16391:16391/udp -p 16392:16392/udp -p 16393:16393/udp -p 16394:16394/udp asteriskant
```
Si vous voulez démarrer le container avec des volumes :
```
sudo docker run --name=asterisk -d -p -p 9080:80 -p 5060:5060/tcp -p 5060:5060/udp -p 16384:16384/udp -p 16385:16385/udp -p 16386:16386/udp -p 16387:16387/udp -p 16388:16388/udp -p 16389:16389/udp -p 16390:16390/udp -p 16391:16391/udp -p 16392:16392/udp -p 16393:16393/udp -p 16394:16394/udp -v VOIP:/etc/asterisk asteriskant
```
Accès CLI au container : 
```
$ sudo exec -ti asterisk bash
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





