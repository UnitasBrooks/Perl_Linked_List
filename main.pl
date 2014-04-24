#!/usr/bin/perl 

use lib '/home/joe.yuhas/PerlPlay/';
use PersonList;
use Person;

sub main {
	
	# Create some people
	$first = new Person("Joe");
	$second = new Person("Bob");
	$third = new Person("George");

	# Create a person list
	$personList = new PersonList($first);
	$personList->pushP($second);
	$personList->pushP($third);

	for $i (0..100) {
		$toPush = new Person($i);
		$personList->pushP($toPush);
	}

	$personList->printAll();
}

main();