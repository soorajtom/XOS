integer main()
{
	integer pid;
	print ("Before Fork");
	print ("About to Fork!");
	pid = Fork();
	print ("After Fork");
	return 0;
}
