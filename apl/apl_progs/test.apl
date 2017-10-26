decl
	integer pid;
enddecl
integer main()
{
	pid = Fork();
	pid = Getpid();
	print(pid);
	if(pid > 31)then print("duh!");print(pid);breakpoint; endif;
	//while (2==2) do
	//print("");
	//endwhile;
	pid = Wait(0);
	return 0;
}
