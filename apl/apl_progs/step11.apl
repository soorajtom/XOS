integer main()
{
	integer status;
	integer fstatus;
	string comm;
	print("Main start");
	comm = "";
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
			breakpoint;
		endif;
	endwhile;
	print("Main end");
	return 0;
}
