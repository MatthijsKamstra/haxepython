package ;

import sys.io.File;
import sys.io.FileOutput;
import sys.FileSystem;

/**
 * @author Matthijs Kamstra aka [mck]
 */
class Main
{
	function new()
	{
		trace("Python reading and writing Example");

		var file : String = 'hello.txt';
		var str : String = 'Hello World!\tWritten on: ' + Date.now().toString();

		// write the file
		var f:FileOutput = File.write(file,false);
		f.writeString(str);
		f.close();

		// read the file
		if(FileSystem.exists(file)){
			var content = File.getContent(file);
			trace( '$file: ' + content );
		} else {
			trace( "err");
		}
	}

	static public function main()
	{
		var main = new Main();
	}
}