integer main()
{
	integer status;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	status = 0;status = 1;
	
	
	status = Fork();
	if(status == -2)then
		status = Fork();
		if(status == -2)then
			status = Exec("trap.xsm");
		endif;
	else
		if(status != -1)then status = Wait(status); endif;
	endif;
	
	
	if(status == -1)then
		print("failed at:");
		print(Getpid());
	else
		status = Wait(0);
	endif;
	
	return 0;
}
