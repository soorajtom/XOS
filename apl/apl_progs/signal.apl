integer main()
{
	integer i;
	integer status;
	i = 0;
	print(Getpid());
	status = Signal();
	status = Wait(0);
	print("Exiting");
	print(Getpid());
	return 0;
}
