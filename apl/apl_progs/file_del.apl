decl
	integer status;
	integer f1;
	integer f2;
enddecl
integer main()
{
	status = Create("myfile.dat");
	print("Create:");
	print(status);
	status = Create("myfile2.dat");
	print("Create:");
	print(status);
	
	//f1 = Open("myfile.dat");
	//print("Open on:");
	//print(f1);
	
	f1 = Open("myfile2.dat");
	print("Open on:");
	print(f2);
	
	//f2 = Open("myfile2.dat");
	//print("Open on:");
	//print(f2);
	
	status = Close(f1);
	print("Close:");
	print(status);
	
	status = Close(f2);
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
