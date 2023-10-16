# jwt-logon

jwt-logon obtains a JSON Web Token (JWT) from a [JWT server](https://github.com/oss-tsukuba/jwt-server.git).

## Usage
```
Usage: jwt-logon [-s URL]... [-l USER]
```
The -s option specifies the URL of a JWT server.  When it is not specified, `JWT_SERVER_URL` environment variable is used.  When the -l option is not specified, `LOGNAME` environment variable is used.

The jwt-logon asks a passphrase at the start up.  The passphrase would
be provided by a JWT server.  The jwt-logon also accepts the passphrase by the standard input.

By default, the jwt-logon stores a JWT at `/tmp/jwt_user_u$UID/token.jwt`, which can be changed by `JWT_USER_PATH` environment variable.

When multiple -s options are specified, the jwt-logon atemmpts to
retrieve the JWT in order if the server is not working.
If th passphrase is incorrect, the program terminates at that point.

## How to install

```
% sudo make install
```
