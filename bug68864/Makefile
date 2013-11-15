all: test

test:
	@rm -f bug68864.diff bug68864.reject bug68864.log
	@(mysqltest --database=test --test-file=bug68864.test --result-file=bug68864.result || diff -u bug68864.result bug68864.reject > bug68864.diff) 2>&1 | tee bug68864.testlog

record: 
	@rm -f bug68864.diff bug68864.reject bug68864.log
	@mysqltest --database=test --test-file=bug68864.test --result-file=bug68864.result --record

dist:
	@rm -f *~
	(cd ..; tar -cvzf bug68864.tgz bug68864)

