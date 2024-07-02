# jwt-logon

jwt-logon obtains a JSON Web Token (JWT) from a [JWT server](https://github.com/oss-tsukuba/jwt-server.git).

## Usage
```
Usage: jwt-logon [-s URL] ... [-l USER] [-V]
```
The -s option specifies the URL of a JWT server.  When it is not specified, `JWT_SERVER_URL` environment variable is used.  When the -l option is not specified, `LOGNAME` environment variable is used.

The jwt-logon asks a passphrase at the start up to obtain a JWT, which is provided by a JWT server.  The jwt-logon also accepts the passphrase by the standard input.

By default, the jwt-logon stores a JWT at `/tmp/jwt_user_u$UID/token.jwt`, which can be changed by `JWT_USER_PATH` environment variable.

When multiple -s options are specified, the jwt-logon attempts to
retrieve the JWT in order if the server is not working.
If the passphrase is incorrect, the program terminates at that point.
Also, the jwt-logon exits if all URLs are not working.

## Prerequisite

jwt-logon requires curl.

# jwt-change-passphrase

jwt-change-passphrase changes the passphrase to obtain a JSON Web Token (JWT)
from a [JWT server](https://github.com/oss-tsukuba/jwt-server.git).

## Usage
```
Usage: jwt-change-passphrase [-s URL] ... [-l USER]
```
The -s option specifies the URL of a JWT server.  When it is not specified, `JWT_SERVER_URL` environment variable is used.  When the -l option is not specified, `LOGNAME` environment variable is used.

jwt-change-passphrase asks a passphrase at the start up.  The passphrase would
be provided by a JWT server.  The jwt-change-passphrase also accepts the passphrase by the standard input.

When multiple -s options are specified, the jwt-logon attempts to
retrieve the JWT in order if the server is not working.
If the passphrase is incorrect, the program terminates at that point.
Also, the jwt-logon exits if all URLs are not working.

## How to install

```
% sudo make PREFIX=/usr/local install
```

The default `PREFIX` is /usr.
