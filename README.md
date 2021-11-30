### Usage:

Pull docker image:
```
docker pull jopplt/megacmd:1.4.0
```

Start mega cmd server:
```
docker run -d --name=megacmd \
  -v $(PWD):/opt \
  -e USERNAME=$MEGA_USER \
  -e PASSWORD=$MEGA_PASSWORD \
  jopplt/megacmd:1.4.0
```

Login:
```
docker exec megacmd bash -c "mega-login \$USERNAME \$PASSWORD"
```

Sync folder:
```
docker exec megacmd bash -c "mega-sync /opt /"
```