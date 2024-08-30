package src.haxe.flixel.fileUtil;

import sys.io.File;
import sys.FileSystem;

class FileCreation {
	public static function read(path:String) {
		if (path == null)
			throw "NULL ERROR: PATH IS NULL!";
		return File.read("logo.txt").readAll();
	}

	public static function write(path:String, content:String) {
		if (path == null || content == null)
			throw "NULL ERROR: PATH AND/OR IS NULL!";
		File.saveContent(path, content);
	}
}
