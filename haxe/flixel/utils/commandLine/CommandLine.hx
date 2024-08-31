package haxe.flixel.utils.commandLine;

import haxe.flixel.fileUtil.FileCreation;

class CommandLine {
	static function printHelp() {
		Sys.println("Available commands:");
		Sys.println("  help     - Print this help message");
	}

	static function printVersion() {
		var version = FileCreation.read(".gitver");

		var onlineversion = VersionChecker.getVersion(version);
		Sys.println(version);
	}

	public static inline function parse(args) {
		if (args.length > 0) {
			switch (args[0]) {
				case "help":
					printHelp();

				default:
					Sys.println('Unknown command: "' + args[0] + '". Please run "haxelib run haxeflixel-utils help" to see the list of available commands.');
			}
		} else {
			printHelp();
		}
	}
}
