integer main()
{
	integer status;
	print("Main start");
	
	status = Fork();
	if(status > -1)then
		status = Exec("even.xsm");
		if(status == -1)then
			print("Exec err");
		endif;
	endif;
	
	status = Fork();
	if(status > -1)then
		status = Exec("odd.xsm");
		if(status == -1)then
			print("Exec err");
		endif;
	endif;
	
	print("Main end");
	return 0;
}
