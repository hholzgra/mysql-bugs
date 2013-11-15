all: test

test:
	@rm -f bug70491.diff bug70491.reject bug70491.log
	@(mysqltest --database=test --test-file=bug70491.test --result-file=bug70491.result || diff -u bug70491.result bug70491.reject > bug70491.diff) 2>&1 | tee bug70491.testlog

record: 
	@rm -f bug70491.diff bug70491.reject bug70491.log
	@mysqltest --database=test --test-file=bug70491.test --result-file=bug70491.result --record

dist:
	@rm -f *~
	(cd ..; tar -cvzf bug70491.tgz bug70491)

