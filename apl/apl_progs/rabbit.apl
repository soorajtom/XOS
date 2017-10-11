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
				print("Exec err");
				break;
			endif;
		else if(fstatus > -1)then
				status = Wait(fstatus);
				if(status == -1) then
					print("Wait.. err");
				endif;
			else
				print("Fork err");
				break;
			endif;
		endif;
	endwhile;
	print("Main end");
	return 0;
}
	
