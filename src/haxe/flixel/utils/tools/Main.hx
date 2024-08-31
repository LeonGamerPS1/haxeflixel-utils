package src.haxe.flixel.utils.tools;

import haxe.flixel.fileUtil.FileCreation;
import haxe.display.Protocol.Version;


using StringTools;

class Main {
	private static function main() {
		var lol = FileCreation.read("logo.txt");
		var version = FileCreation.read(".gitver");
		Sys.println(lol + '\nVersion: $version');
		var onlineversion = VersionChecker.getVersion(version);
		trace(onlineversion);
	}
}
