decl
	integer status, fstatus, i;
	string comm;
enddecl
integer main()
{
	print("Shell start");
	comm = "exit";
	while(1 == 1)do
		print("Command:");
		read(comm);
		if(comm == "exit")then break; endif;
		if(comm == "signal")then status = Signal(); continue;endif;
		if(comm == "breakpoint")then breakpoint; continue;endif;
		fstatus = Fork();
		if(fstatus == -2)then
			status = Exec(comm);
			if(status == -1)then
				print("Exec err");
				Exit();
			endif;
		else if(fstatus > -1)then
				status = Wait(fstatus);
			else
				print("Fork err");
			endif;
		endif;
	endwhile;
	print("Shell end");
	return 0;
}
	
