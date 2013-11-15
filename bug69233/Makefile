all: test

test:
	@rm -f bug69233.diff bug69233.reject bug69233.log
	@(mysqltest --database=test --test-file=bug69233.test --result-file=bug69233.result || diff -u bug69233.result bug69233.reject > bug69233.diff) 2>&1 | tee bug69233.testlog

record: 
	@rm -f bug69233.diff bug69233.reject bug69233.log
	@mysqltest --database=test --test-file=bug69233.test --result-file=bug69233.result --record

dist:
	@rm -f *~
	(cd ..; tar -cvzf bug69233.tgz bug69233)

