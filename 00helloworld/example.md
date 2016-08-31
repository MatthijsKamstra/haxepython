#Hello World Example

Check the [code folder](https://github.com/MatthijsKamstra/haxepython/tree/master/00helloworld/code) for more comments.

Create a folder named **foobar** (please use a better name; any name will do) and create folders **bin** and **src**.
See example below:

```
+ foobar
	+ bin
	+ src
		- Main.hx
	- build.hxml
```

## The Main.hx

Open your favorite editor, copy/paste the code and save it in the `src` folder.

```
package ;

class Main
{
	function new()
	{
		trace("Python Hello World Example");
	}

	static public function main()
	{
		var main = new Main();
	}
}
```

## The Haxe build file, build.hxml

There are a lot of different arguments that you are able to pass to the Haxe compiler.
These arguments can also be placed into a text file of one per line with the extension hxml. This file can then be passed directly to the Haxe compiler as a build script.

```
# // build.hxml
-cp src
-main Main
-python bin/example.py
-dce full
-cmd python3 bin/example.py
```


## Build Python with Haxe

To finish and see what we have, build the file and see the result

1. Open your terminal
2. `cd ` to the correct folder where you have saved the `build.hxml`
3. Type `haxe build.hxml`
4. press enter


It will output Python file in the `bin` folder


You could build everything directly in the terminal.

```
haxe -cp src -main Main -python bin/example.py -dce full
python bin/example.py
```

It will have the same result

