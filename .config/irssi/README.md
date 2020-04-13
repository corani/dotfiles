# Setup irssi

## CertFP

CertFP makes it possible to connect using a self-signed SSL client certificate, by linking the fingerprint
of the certificate to your (registered) nick.

### Generate a key

```bash
openssl req -newkey rsa:4096 -days 3650 -x509 -keyout irssi.key -out irssi.crt -nodes
cat irssi.crt irssi.key > ~/.config/irssi/certs/irssi.pem
chmod 600 ~/.config/irssi/certs/irssi.pem
rm irssi.key irssi.pem
```

### Get the fingerprint

To get the fingerprint of the key in the expected format:

```bash
openssl x509 -sha1 -fingerprint -noout -in ~/.config/irssi/certs/irssi.pem | sed -e 's/^.*=//;s/://g;y/ABCDEF/abcdef/'
```

Copy and save this for later.

### Update config

Update the server section of `~/.config/irssi/config`, to enable TLS with the generated client certificate:

```
servers = (
  {
    address = "irc.freenode.net";
    chatnet = "Freenode";
    port = "6697";
    use_tls = "yes";
    tls_verify = "no";
    tls_cert = "~/.config/irssi/certs/irssi.pem";
    autoconnect = "yes"
  }
);
```

### Add cert to your nick

Start irssi, identify and add the fingerprint of the certificate to your nick

```
/msg nickserv identify <password>
/msg nickserv cert add <fingerprint>
```

### Try it out

Restart irssi, you should now be authenticated automatically. If you had an `autocmd` to identify using your
password, you can remove this now.
