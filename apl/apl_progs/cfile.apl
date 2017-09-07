decl
	integer status;
enddecl
integer main()
{
	status = Create("myfile.dat");
	print(status);
	status = Create("myfile2.dat");
	print(status);
	return 0;
}
