import haxe.Constraints.Function;

@:pythonImport("flask", "Flask")
extern class Flask {
    function new(module:String);
    function run():Void;
    function reboot():Void;
    function route<T:Function>(path:String):T->T;
}

class Main {
    static function main() {
    	trace('Close server with CTRL + C');

        var app = new Flask(untyped __name__);
        // app.reboot();
        app.route("/")(index);
        app.run();
    }

    static function index() {
        return "Hello, world!";
    }
}