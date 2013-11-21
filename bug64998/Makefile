all: test

test:
	@rm -f bug64998.diff bug64998.reject bug64998.log
	@(mysqltest --database=test --test-file=bug64998.test --result-file=bug64998.result || diff -u bug64998.result bug64998.reject > bug64998.diff) 2>&1 | tee bug64998.testlog

record: 
	@rm -f bug64998.diff bug64998.reject bug64998.log
	@mysqltest --database=test --test-file=bug64998.test --result-file=bug64998.result --record

dist:
	@rm -f *~
	(cd ..; tar -cvzf bug64998.tgz bug64998)

