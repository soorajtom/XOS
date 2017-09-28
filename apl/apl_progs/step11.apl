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
			status = Exec(comm);
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
	
