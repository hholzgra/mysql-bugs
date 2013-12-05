all: test

test:
	@rm -f bug67791.diff bug67791.reject bug67791.log
	@(mysqltest --database=test --test-file=bug67791.test --result-file=bug67791.result || diff -u bug67791.result bug67791.reject > bug67791.diff) 2>&1 | tee bug67791.testlog

clean:
	@rm -f *~
	@rm -f bug67791.diff bug67791.reject bug67791.log bug67791.testlog

record: clean
	@mysqltest --database=test --test-file=bug67791.test --result-file=bug67791.result --record

dist: clean
	(cd ..; tar -cvzf bug67791.tgz bug67791)


