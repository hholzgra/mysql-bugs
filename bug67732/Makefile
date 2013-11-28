all: test

test:
	@rm -f bug67732.diff bug67732.reject bug67732.log
	@(mysqltest --database=test --test-file=bug67732.test --result-file=bug67732.result || diff -u bug67732.result bug67732.reject > bug67732.diff) 2>&1 | tee bug67732.testlog

clean:
	@rm -f *~
	@rm -f bug67732.diff bug67732.reject bug67732.log bug67732.testlog

record: clean
	@mysqltest --database=test --test-file=bug67732.test --result-file=bug67732.result --record

dist: clean
	(cd ..; tar -cvzf bug67732.tgz bug67732)


