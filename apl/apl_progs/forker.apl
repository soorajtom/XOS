decl
	integer status, fstatus, i;
	string comm;
enddecl
integer main()
{
	print("Forkerstart");
	while(1 == 1)do
		fstatus = Fork();
		if(fstatus == -2)then
			print(Getpid());
		else if(fstatus > -1)then
				status = Wait(0);
			else
				print("Fork err");
				break;
			endif;
		endif;
	endwhile;
	print("Forkerend");
	return 0;
}
	
