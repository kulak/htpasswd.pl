# htpasswd.pl

htpasswd is a Perl script that aims to create passwords for nginx,
because nginx does not include a well known utility htpasswd from Apache.

The reason for Perl as compared to other languages is because it is 
usually included with operating system such as FreeBSD.  Thus, no additional
dependency is necessary.

The script originated from somewhere on Internet and I just wanted to give it home.

## Usage

    htpasswd.pl filename username password
