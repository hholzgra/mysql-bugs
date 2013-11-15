all: test

test:
	@rm -f bug70038.diff bug70038.reject bug70038.log
	@(mysqltest --user=root --database=test --test-file=bug70038.test --result-file=bug70038.result || diff -u bug70038.result bug70038.reject > bug70038.diff) 2>&1 | tee bug70038.testlog

record: 
	@rm -f bug70038.diff bug70038.reject bug70038.log
	@mysqltest --user=root --database=test --test-file=bug70038.test --result-file=bug70038.result --record

dist:
	@rm -f *~
	(cd ..; tar -cvzf bug70038.tgz bug70038)

