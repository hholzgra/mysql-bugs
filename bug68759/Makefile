all: test

test:
	@rm -f bug68759.diff bug68759.reject bug68759.log
	@(mysqltest --database=test --test-file=bug68759.test --result-file=bug68759.result || diff -u bug68759.result bug68759.reject > bug68759.diff) 2>&1 | tee bug68759.testlog

record: 
	@rm -f bug68759.diff bug68759.reject bug68759.log
	@mysqltest --database=test --test-file=bug68759.test --result-file=bug68759.result --record

dist:
	@rm -f *~
	(cd ..; tar -cvzf bug68759.tgz bug68759)

