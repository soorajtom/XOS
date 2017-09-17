decl
	integer status;
	integer f1;
	integer i;
	integer d;
enddecl
integer main()
{
	status = Create("myfile.dat");
	print("Create:");
	print(status);
	
	f1 = Open("myfile.dat");
	print("Open on:");
	print(f1);
	
	i = 0;
	while(i < 1000) do
		status = Write(f1, 30000 + i);
		print("Write");
		print(status);
		i = i + 1;
	endwhile;
	
	status = Write(f1, "stk");
	print("Write:stk");
	print(status);
	
	status = Seek(f1, 2);
	print("Seek:2");
	print(status);
	
	status = Write(f1, "asd");
	print("Write:bla");
	print(status);
	
	status = Close(f1);
	print("Close:");
	print(status);
	
	//print("Delete:");
	//status = Delete("myfile.dat");
	//print(status);
	
	return 0;
}
