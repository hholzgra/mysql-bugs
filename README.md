A small, but hopefully growing collection of MySQL bug test cases

Workflow
========

* ./bug.sh $$$$$

Will create a new test case directory from the default template,
and will open the bug$$$$$.test template in your favorite $EDITOR

Then inside the newly created bug$$$$$ subdir:

* make record

Runs your bug$$$$$.test and records the results in bug$$$$$.result

If the actual results are wrong you can now edit the .result file
to match the actually expected result.

* make test

Run your bug$$$$$.test and compare the result against the expected
outcome recorded in the .result file

* make dist 

Wrap test case and results up into a tar.gz archive for easy submission
