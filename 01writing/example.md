#Example

Simply write to a file.


## How to start

Create a folder named **foobar** (please use a better name; any name will do) and create folders **bin** and **src**.
See example below:

```
+ foobar
	+ bin
	+ src
		- Main.hx
	- build.hxml
```


## Install

check out [the installation](installation.md).


## The Main.hx

Open your favorite editor, copy/paste the code and save it in the `src` folder.

```
package ;

import sys.io.File;
import sys.io.FileOutput;

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

```


## The Haxe build file, build.hxml

Copy and past the following lines in a document named `build.hxml`
This is the short version, you want to chech out the full version open this [file](/code/build.hxml);

```
# // build.hxml
-cp src
-main Main
-python bin/example.py
-dce full
-cmd cd bin
-cmd python3 example.py
```



## Build js with Haxe and start Node

To finish and see what we have, build the file and see the result

1. Open your terminal
2. `cd ` to the correct folder where you have saved the `build.hxml`
3. type `haxe build.hxml`
4. press enter


