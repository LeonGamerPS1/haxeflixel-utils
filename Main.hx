package;

import haxe.flixel.utils.commandLine.CommandLine;
import haxe.flixel.fileUtil.FileCreation;
import haxe.display.Protocol.Version;

using StringTools;

class Main {
	private static function main() {
		var lol = FileCreation.read("logo.txt");
		Sys.println(lol);
		var args = Sys.args();
		CommandLine.parse(args);
	}
}
