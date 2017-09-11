decl
	integer status;
enddecl
integer main()
{
	status = Create("myfile.dat");
	print("Create:");
	print(status);
	status = Open("myfile.dat");
	print("Open:");
	print(status);
	return 0;
}
