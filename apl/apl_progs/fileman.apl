decl
	integer status;
	integer f1;
	integer i;
	string filename;
	integer word;
	integer pos;
enddecl

integer main()
{
	i = 0;
	while(i != 10) do
		print("--------");
		print("Select");
		print("1.Create");
		print("2.Open");
		print("3.Write");
		print("4.Read");
		print("5.Seek");
		print("6.Delete");
		print("7.Close");
		print("8.Break");
		print("9.Writeloop");
		print("10.exit");
		print("--------");
		read(i);
		
		if(i == 1)then
			print("Filename:");
			read(filename);	
			status = Create(filename);
			print("return:");
			print(status);
		else if(i == 2)then
			print("Filename:");
			read(filename);
			status = Open(filename);
			print("return:");
			print(status);
		else if(i == 3)then
			print("File");
			read(f1);
			print("WordToWrite:");
			read(word);
			status = Write(f1, word);
			print("return:");
			print(status);
		else if(i == 4)then
			print("File");
			read(f1);
			status = Read(f1, word);
			print("return:");
			print(status);
			if(status < 0)then
				continue;
			endif;
			print("word read:");
			print(word);
		else if(i == 5)then
			print("File");
			read(f1);
			print("New seek:");
			read(pos);
			status = Seek(f1, pos);
			print("return:");
			print(status);
		else if(i == 6)then
			print("Filename:");
			read(filename);
			status = Delete(filename);
			print("return:");
			print(status);
		else if(i == 7)then
			print("File:");
			read(f1);
			status = Close(f1);
			print("return:");
			print(status);
		else if(i == 8)then
			breakpoint;
		else if(i == 9)then
			print("File:");
			read(f1);
			print("Count:");
			read(pos);
			word = 0;
			while(word < pos)do
				status = Write(f1, word);
				print("return:");
				print(status);
				word = word + 1;
			endwhile;
		endif;
		endif;
		endif;
		endif;
		endif;
		endif;
		endif;
		endif;
		endif;
	endwhile;
	return 0;
}
