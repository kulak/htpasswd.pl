#!/usr/bin/env perl
use strict;
chomp(my $filename=$ARGV[0]);
chomp(my $username=$ARGV[1]);
chomp(my $password=$ARGV[2]);
if (!$filename || !$username || !$password) {
  print "USAGE: ./htpasswd.pl filename username password\n\n";
} else {
  my $salt = $username  . '-*1';
  open FILE, ">>", $filename or die $!;
  print FILE $username . ":" . crypt($password, $salt) . "\n";
  close FILE or die $!;
}
