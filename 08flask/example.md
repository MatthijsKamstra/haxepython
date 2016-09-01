#Example Flask

This example is based upon a gist from Nadako (Dan Korostelev)

_The code used in this example can be found [here](https://github.com/MatthijsKamstra/haxepython/tree/master/08flask/code)._

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

## The Main.hx

Open your favorite editor, copy/paste the code and save it in the `src` folder.

```
import haxe.Constraints.Function;

@:pythonImport("flask", "Flask")
extern class Flask {
    function new(module:String);
    function run():Void;
    function route<T:Function>(path:String):T->T;
}

class Main {
    static function main() {
    	trace('Close server with CTRL + C');

        var app = new Flask(untyped __name__);
        app.route("/")(index);
        app.run();
    }

    static function index() {
        return "Hello, world!";
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
-cmd cd bin
-cmd python3 example.py
```


## Build Python with Haxe

To finish and see what we have, build the file and see the result

1. Open your terminal
2. `cd ` to the correct folder where you have saved the `build.hxml`
3. type `haxe build.hxml`
4. press enter




