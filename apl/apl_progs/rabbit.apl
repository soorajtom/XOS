decl
	integer status, fstatus, i;
	string comm;
enddecl
integer main()
{
	print("Rabbitstart");
	while(1 == 1)do
		fstatus = Fork();
		if(fstatus == -2)then
			status = Exec("signal.xsm");
			if(status == -1)then
				print("Exec error");
				break;
			endif;
		else if(fstatus > -1)then
				status = Wait(fstatus);
			else
				print("Fork err");
				break;
			endif;
		endif;
	endwhile;
	print("Rabbitend");
	return 0;
}
	
