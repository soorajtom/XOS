//Name : Sooraj Tom, 111501036
//Step : 6 APL to print even numbers upto a limit
integer main()
{
	integer n, i;
	i = 0;
	n = 20;
	if (n > 0) then
		while (i <= n) do
			print(i);
			i = i + 2;
		endwhile;
	else
		print("not positive");
	endif;
	print("Even end");
	return 0;
}
