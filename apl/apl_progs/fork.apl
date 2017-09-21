integer main()
{
	integer pid;
	print ("Before Fork");
	print ("About to Fork!");
	pid = Exec("even.xsm");
	print(pid);
	print ("After Fork");
	return 0;
}
