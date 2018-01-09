package ;

#if php
import php.Lib;
#elseif neko
import neko.Lib;
#elseif python
import python.Lib;
#elseif cpp
import cpp.Lib;
#elseif java
import java.Lib;
#end

import sys.FileSystem;

class Main
{

	public function new()
	{
		var html = '';

		if ( ! sys.FileSystem.exists ( "mybase.ddb" ) ){
			// init SQlite database
			new DBStart();
		}
		// Open a connection
		var cnx = sys.db.Sqlite.open("mybase.ddb");

		// Set as the connection for our SPOD manager
		sys.db.Manager.cnx = cnx;

		// initialize manager
		sys.db.Manager.initialize();

		// for (i in 0 ... User.manager.all().length) {
		// 	var _user = User.manager.get(i);
		// 	if(_user != null) trace(_user.name);
		// }

		createList();

		// close the connection and do some cleanup
		sys.db.Manager.cleanup();

		// Close the connection
		cnx.close();

	}

	function createList():Void
	{
		var html = '';
		html += 'id \t|\t name \t|\t birthday \t|\t phoneNumber\n';
		html += '---------------------------------------------\n';
		for (i in 0 ... User.manager.all().length)
		{
			var _user : User = User.manager.get(i);
			if(_user == null) continue;
			html += '${_user.id} \t|\t ';
			html += '${_user.name} \t|\t ';
			html += '${_user.birthday} \t|\t ';
			html += '${_user.phoneNumber} \n ';
		}
		html += '---------------------------------------------\n';

		Lib.print(html);
	}


	static public function main() : Void
	{
		var main = new Main();
	}
}
