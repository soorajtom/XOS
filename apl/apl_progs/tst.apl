decl
	integer pids[32];
enddecl
integer main()
{
	integer pid;
	
	integer i;
	integer status;
	i = 0;
	while(i < 32)do
		print ("Before Fork");
		 pids[i] = Fork();
		 if(pids[i] == -2)then
		 	 status = Exec("test.xsm");
		 //else
		 	//print(pids[i]);
		 endif;
		 
		 i = i + 1;
	endwhile;
	i  = 0;
	 while (i<32)do
	      status = Wait(pids[i]);
	      i = i + 1;
	 endwhile;
	print ("After Fork");
	
	return 0;
}
