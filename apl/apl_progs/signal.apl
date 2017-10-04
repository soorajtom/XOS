integer main()
{
	integer i;
	integer status;
	i = 0;
	while (i < 30) do
		print (100 + i);
		if( i == 10) then status = Signal(); endif;
		if( i == 25) then status = Wait(0);print(status); endif;
		i = i + 1;
	endwhile;
	return 0;
}
