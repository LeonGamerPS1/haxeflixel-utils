package src.haxe.flixel.utils.tools;



import src.haxe.flixel.fileUtil.FileCreation;
using StringTools;
class Main {
	private static function main() {
		var lol = FileCreation.read("logo.txt");
        var version = FileCreation.read(".gitver");
		Sys.println(lol + '\nVersion: $version');
	}
}
