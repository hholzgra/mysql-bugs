all: test

test:
	@rm -f bug37871.diff bug37871.reject bug37871.log
	@(mysqltest --database=test --test-file=bug37871.test --result-file=bug37871.result || diff -u bug37871.result bug37871.reject > bug37871.diff) 2>&1 | tee bug37871.testlog

record: 
	@rm -f bug37871.diff bug37871.reject bug37871.log
	@mysqltest --database=test --test-file=bug37871.test --result-file=bug37871.result --record

dist:
	@rm -f *~
	(cd ..; tar -cvzf bug37871.tgz bug37871)

