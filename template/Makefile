all: test

test:
	@rm -f bugXXXXX.diff bugXXXXX.reject bugXXXXX.log
	@(mysqltest --database=test --test-file=bugXXXXX.test --result-file=bugXXXXX.result || diff -u bugXXXXX.result bugXXXXX.reject > bugXXXXX.diff) 2>&1 | tee bugXXXXX.testlog

record: 
	@rm -f bugXXXXX.diff bugXXXXX.reject bugXXXXX.log
	@mysqltest --database=test --test-file=bugXXXXX.test --result-file=bugXXXXX.result --record

dist:
	@rm -f *~
	(cd ..; tar -cvzf bugXXXXX.tgz bugXXXXX)

