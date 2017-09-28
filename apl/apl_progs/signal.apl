integer main()
{
	integer i;
	integer status;
	i = 0;
	while (i < 20) do
		print (100 + i);
		if( i == 10) then status = Signal(); endif;
		i = i + 1;
	endwhile;
	return 0;
}
