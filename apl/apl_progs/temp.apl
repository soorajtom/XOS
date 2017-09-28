decl
	integer status, fstatus;
	string comm;
enddecl
integer main()
{
	print("Main start");
	comm = "exit";
	while(1 == 1)do
		print("Command:");
		read(comm);
		if(comm == "exit")then break; endif;
		fstatus = Fork();
		breakpoint;
		if(fstatus == -1) then print("Fork error"); break; endif;
		
		if(fstatus == -2)then
		print("=====");
		print(comm);
		print("-----");
			status = Exec(comm);
			if(status == -1)then
				print("Exec err");
				Exit();
			endif;
		else
			status = Wait(fstatus);
		endif;
	endwhile;
	print("Main end");
	return 0;
}


















decl
	integer status, fstatus;
	string comm;
enddecl
integer main()
{
	print("Main start");
	comm = "exit";
	while(1 == 1)do
		print("Command:");
		read(comm);
		if(comm == "exit")then break; endif;
		fstatus = Fork();
		if(fstatus == -2)then
			print("*****");
			print(comm);
			status = Exec("even.xsm");
			if(status == -1)then
				print("Exec err");
			endif;
		else
			status = Wait(fstatus);
		endif;
	endwhile;
	print("Main end");
	return 0;
}




decl
	integer status, fstatus;
	string comm;
enddecl
integer main()
{
	print("Main start");
	status = Fork();
	if(status == -2)then
		status = Exec("even.xsm");
	endif;
	fstatus = Fork();
	if(fstatus == -2)then
		status = Exec("odd.xsm");
	endif;
	print("Main end");
	return 0;
}
