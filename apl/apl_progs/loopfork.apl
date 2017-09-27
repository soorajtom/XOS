integer main()
{
	print("Main start");
	integer status;
	integer fstatus;
	integer i;
	i = 0;
	status = 0;
	fstatus = 0;
	while(fstatus != -1)do
		fstatus = Fork();
		if(fstatus == -2)then
			status = Exec("infloop.xsm");
			if(status == -1)then
				print("Exec err");
			endif;
		endif;
		i = i + 1;
	endwhile;
	
	print(i);
	print("Main end");
	return 0;
}
