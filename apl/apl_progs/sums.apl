//Name : Sooraj Tom, 111501036
//Step : 4 APL that finds sum of integers upto given positive integer
integer main()
{
	integer a, sum;
	sum = 0;
	read (a);     //takes a as input
	if (a > 0) then
		while (a > 0) do
			sum = sum + a;
			a = a - 1;
		endwhile;
		print("sum is: ");
		print(sum);
	else
		print("not positive");
	endif;	
	return 0;
}
