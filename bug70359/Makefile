all: test

test:
	@rm -f bug70359.diff bug70359.reject bug70359.log
	@(mysqltest --database=test --test-file=bug70359.test --result-file=bug70359.result || diff -u bug70359.result bug70359.reject > bug70359.diff) 2>&1 | tee bug70359.testlog

record: 
	@rm -f bug70359.diff bug70359.reject bug70359.log
	@mysqltest --database=test --test-file=bug70359.test --result-file=bug70359.result --record

dist:
	@rm -f *~
	(cd ..; tar -cvzf bug70359.tgz bug70359)

