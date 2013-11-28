all: test

test:
	@rm -f bug71028.diff bug71028.reject bug71028.log
	@(mysqltest --database=test --test-file=bug71028.test --result-file=bug71028.result || diff -u bug71028.result bug71028.reject > bug71028.diff) 2>&1 | tee bug71028.testlog

clean:
	@rm -f *~
	@rm -f bug71028.diff bug71028.reject bug71028.log bug71028.testlog

record: clean
	@mysqltest --database=test --test-file=bug71028.test --result-file=bug71028.result --record

dist: clean
	(cd ..; tar -cvzf bug71028.tgz bug71028)


