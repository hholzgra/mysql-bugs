all: test

test:
	@rm -f bug71097.diff bug71097.reject bug71097.log
	@(mysqltest --database=test --test-file=bug71097.test --result-file=bug71097.result || diff -u bug71097.result bug71097.reject > bug71097.diff) 2>&1 | tee bug71097.testlog

clean:
	@rm -f *~
	@rm -f bug71097.diff bug71097.reject bug71097.log bug71097.testlog

record: clean
	@mysqltest --database=test --test-file=bug71097.test --result-file=bug71097.result --record

dist: clean
	(cd ..; tar -cvzf bug71097.tgz bug71097)


