decl
	integer status;
enddecl
integer main()
{
	status = Create("myfile.dat");
	print("Create:");
	print(status);
	status = Create("myfile2.dat");
	print("Create:");
	print(status);
	
	status = Open("myfile.dat");
	print("Open:");
	print(status);
	
	status = Close(0);
	print("Close:");
	print(status);
	
	print("Delete:");
	status = Delete("myfile.dat");
	print(status);
	print("Delete:");
	status = Delete("myfile2.dat");
	print(status);
	
	
	return 0;
}
