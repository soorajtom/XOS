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
				Exit();
			endif;
		else if(fstatus > -1)then
				status = Wait(fstatus);
				if(status == -1) then
					print("Wait.. err");
				endif;
			else
				print("Fork err");
			endif;
		endif;
	endwhile;
	print("Main end");
	return 0;
}
	
