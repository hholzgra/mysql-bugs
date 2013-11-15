all: test

test:
	@rm -f bug69638.diff bug69638.reject bug69638.log
	@(mysqltest --database=test --test-file=bug69638.test --result-file=bug69638.result || diff -u bug69638.result bug69638.reject > bug69638.diff) 2>&1 | tee bug69638.testlog

record: 
	@rm -f bug69638.diff bug69638.reject bug69638.log
	@mysqltest --database=test --test-file=bug69638.test --result-file=bug69638.result --record

dist:
	@rm -f *~
	(cd ..; tar -cvzf bug69638.tgz bug69638)

