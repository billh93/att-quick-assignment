#!/usr/bin/perl

use DBI;
use strict;

my $driver   = "SQLite";
my $database = "users.db";
my $dsn = "DBI:$driver:dbname=$database";
my $userid = "";
my $password = "";
my $dbh = DBI->connect($dsn, $userid, $password, { RaiseError => 1 })
   or die $DBI::errstr;
print "Opened database successfully\n";

my $stmt = qq(CREATE TABLE USERS
   (ID INT PRIMARY KEY     NOT NULL,
      FIRST_NAME           TEXT    NOT NULL,
      LAST_NAME            TEXT     NOT NULL,
      HOME        TEXT NOT NULL););

my $rv = $dbh->do($stmt);
if($rv < 0) {
   print $DBI::errstr;
} else {
   print "Table created successfully\n";
}
$dbh->disconnect();
