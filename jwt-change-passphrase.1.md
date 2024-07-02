% jwt-change-passphrase(1)
%
% September 2, 2023

# NAME

jwt-change-passphrase - Change the passphrase to obtain a JSON Web Token

# SYNOPSIS

**jwt-change-passphrase** [-s _URL_]... [-l _user_]

# DESCRIPTION

**jwt-change-passphrase** changes the passphrase to obtains a JSON Web Token (JWT)
from a [JWTserver](https://github.com/oss-tsukuba/jwt-server.git).
When the -s option is not specified,
JWT_SERVER_URL environment variable is used.  When the -l option is
not specified, LOGNAME environment variable is used.

The jwt-change-passphrase asks a passphrase to obtain a JWT, which
is provided by a JWT server.  The jwt-change-passphrase also accepts the
passphrase by the standard input.

When multiple -s options are specified, the jwt-change-passphrase attempts to
access a JWT Server in order if the server is not working.
If the passphrase is incorrect, the program terminates at that point.
Also, the jwt-logon exits if all URLs are not working.

# OPTIONS

-s _URL_
: specifies the URL of a JWT server

-l _user_
: specifies a user name

# ENVIRONMENT

JWT_SERVER_URL
: URL of a JWT server
