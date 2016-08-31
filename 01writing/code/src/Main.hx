package ;

import sys.io.File;
import sys.io.FileOutput;

/**
 * @author Matthijs Kamstra aka [mck]
 */
class Main
{
	function new()
	{
		trace("Python writing Example");

		var file : String = 'hello.txt';
		var str : String = 'Hello World!\nWritten on: ' + Date.now().toString();

		var f:FileOutput = File.write(file,false);
		f.writeString(str);
		f.close();
	}

	static public function main()
	{
		var main = new Main();
	}
}