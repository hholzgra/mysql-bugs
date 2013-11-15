all: test

test:
	@rm -f bug68254.diff bug68254.reject bug68254.log
	@(mysqltest --database=test --test-file=bug68254.test --result-file=bug68254.result || diff -u bug68254.result bug68254.reject > bug68254.diff) 2>&1 | tee bug68254.testlog

record: 
	@rm -f bug68254.diff bug68254.reject bug68254.log
	@mysqltest --database=test --test-file=bug68254.test --result-file=bug68254.result --record

dist:
	@rm -f *~
	(cd ..; tar -cvzf bug68254.tgz bug68254)

