#!/usr/bin/perl

# This file creates a database called users when first run
# It then creates a connection to the database

use DBI;
use strict;

my $driver   = "SQLite";
my $database = "users.db";
my $dsn = "DBI:$driver:dbname = $database";
my $userid = "";
my $password = "";
my $dbh = DBI->connect($dsn, $userid, $password, { RaiseError => 1 })
   or die $DBI::errstr;

print "Opened database successfully\n";
