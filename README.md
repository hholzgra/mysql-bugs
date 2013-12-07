A small, but hopefully growing collection of MySQL bug test cases

Now using mysql_test_run conventions with tests in ./t and expected
results in ./r

Naming convention for tests is $prefix-$number where prefix refers
to the bug tracker and number to the bug number on the tracker site.

Currently there are only mysql-$number test cases which all refer
to bugs.mysql.com, but for the future I plan to have:

* "mysql-" for bugs.mysql.com
* "lp-"    for bugs reported on launchpad (for all of mysql, mariadb, percona)
* "maria-" for MariaDB bug reports on https://mariadb.atlassian.net/

