% jwt-logon(1)
%
% September 2, 2023

# NAME

jwt-logon - Obtain a JSON Web Token

# SYNOPSIS

**jwt-logon** [-s _URL_]... [-l _user_]

# DESCRIPTION

**jwt-logon** obtains a JSON Web Token (JWT) from a [JWT
server](https://github.com/oss-tsukuba/jwt-server.git).
When the -s option is not specified,
JWT_SERVER_URL environment variable is used.  When the -l option is
not specified, LOGNAME environment variable is used.

The jwt-logon asks a passphrase to obtain a JWT at the start up,
which is provided by a JWT server.  The jwt-logon also accepts the
passphrase by the standard input.

By default, the jwt-logon stores a JWT at
/tmp/jwt_user_u$UID/token.jwt, which can be changed by JWT_USER_PATH
environment variable.

When multiple -s options are specified, the jwt-logon atemmpts to
retrieve the JWT in order if the server is not working.
If th passphrase is incorrect, the program terminates at that point.
Also, the jwt-logon exits if all URLs are not working.

# OPTIONS

-s _URL_
: specifies the URL of a JWT server

-l _user_
: specifies a user name

# ENVIRONMENT

JWT_USER_PATH
: path to the JSON Web Token.  Default is /tmp/jwt_user_u$UID/token.jwt

JWT_SERVER_URL
: URL of a JWT server
