integer main()
{
	integer i;
	integer status;
	i = 0;
	while (i < 30) do
		print (200 + i);
		if( i == 30) then status = Signal(); endif;
		i = i + 1;
	endwhile;
	return 0;
}
