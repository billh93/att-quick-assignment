#!/usr/bin/perl

# This file adds the table_data object from previous assignment

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

my $stmt = qq(INSERT INTO USERS(ID,FIRST_NAME,LAST_NAME,HOME)
               VALUES (1, 'Rose', 'Tyler', 'Earth' ););
my $rv = $dbh->do($stmt) or die $DBI::errstr;

$stmt = qq(INSERT INTO USERS (ID,FIRST_NAME,LAST_NAME,HOME)
               VALUES (2, 'Zoe', 'Heriot', 'Space Station W3' ););
$rv = $dbh->do($stmt) or die $DBI::errstr;

$stmt = qq(INSERT INTO USERS (ID,FIRST_NAME,LAST_NAME,HOME)
               VALUES (3, 'Jo', 'Grant', 'Earth' ););

$rv = $dbh->do($stmt) or die $DBI::errstr;

$stmt = qq(INSERT INTO USERS (ID,FIRST_NAME,LAST_NAME,HOME)
               VALUES (4, 'Leela', 'NULL', 'Unspecified' ););

$rv = $dbh->do($stmt) or die $DBI::errstr;

$stmt = qq(INSERT INTO USERS (ID,FIRST_NAME,LAST_NAME,HOME)
               VALUES (5, 'Romana', 'NULL', 'Gallifrey' ););

$rv = $dbh->do($stmt) or die $DBI::errstr;

$stmt = qq(INSERT INTO USERS (ID,FIRST_NAME,LAST_NAME,HOME)
               VALUES (6, 'Clara', 'Oswald', 'Earth' ););

$rv = $dbh->do($stmt) or die $DBI::errstr;

$stmt = qq(INSERT INTO USERS (ID,FIRST_NAME,LAST_NAME,HOME)
               VALUES (7, 'Adric', 'NULL', 'Alzarius' ););

$rv = $dbh->do($stmt) or die $DBI::errstr;

$stmt = qq(INSERT INTO USERS (ID,FIRST_NAME,LAST_NAME,HOME)
               VALUES (8, 'Susan', 'Foreman', 'Gallifrey' ););

$rv = $dbh->do($stmt) or die $DBI::errstr;

print "Records created successfully\n";
$dbh->disconnect();
