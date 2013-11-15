all: test

test:
	@rm -f bug68897.diff bug68897.reject bug68897.log
	@(mysqltest --database=test --test-file=bug68897.test --result-file=bug68897.result || diff -u bug68897.result bug68897.reject > bug68897.diff) 2>&1 | tee bug68897.testlog

record: 
	@rm -f bug68897.diff bug68897.reject bug68897.log
	@mysqltest --database=test --test-file=bug68897.test --result-file=bug68897.result --record

dist:
	@rm -f *~
	(cd ..; tar -cvzf bug68897.tgz bug68897)

