//Name : Sooraj Tom, 111501036
//Step : 6 APL to print odd numbers upto a limit
integer main()
{
	integer n, i;
	i = 1;
	print("Enter limit: ");
	read (n);
	if (n > 0) then
		while (i <= n) do
			print(i);
			i = i + 2;
		endwhile;
	else
		print("not positive");
	endif;
	return 0;
}
