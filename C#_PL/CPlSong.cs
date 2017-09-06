using System;
using System.IO;

public class CPlSong{
	static public void Main(){
		FileStream fs = new FileStream("CPlSong.c", FileMode.Create, FileAccess.Write, FileShare.None);
		StreamWriter sw = new StreamWriter(fs);
		sw.WriteLine("#include <stdio.h>\n");
		sw.WriteLine("int main(){\n\tprintf(\"C# inCption jokes fall a little flat.\\n\");\n}");
		sw.Close();
		fs.Close();
	}
}