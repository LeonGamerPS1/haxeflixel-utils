package haxe.flixel.utils.commandLine;

import haxe.flixel.fileUtil.FileCreation;

class CommandLine {
	static function printHelp() {
		Sys.println("Available commands:");
		Sys.println("  help     - Print this help message.");
		Sys.println("  time     - Print the current time as a message.");
	}

	static function printVersion() {

	}

	public static inline function parse(args) {
		if (args.length > 0) {
			switch (args[0]) {
				case "help":
					printHelp();
				case 'time':
					var time = '%H:%M:%S';
					switch (args[1]) {
						case 'seconds':
							time = '%S';
						case 'minutes':
							time = '%M';
						case 'hours':
							time = '%H';
						default:
								
					}
					var vs = 'Current time in ${args[1]}: ${DateTools.format(Date.now(), time)}';
					Sys.println(vs);
				default:
					Sys.println('Unknown command: "' + args[0] + '". Please run "haxelib run haxeflixel-utils help" to see the list of available commands.');
			}
		} else {
			printHelp();
		}
	}
}
