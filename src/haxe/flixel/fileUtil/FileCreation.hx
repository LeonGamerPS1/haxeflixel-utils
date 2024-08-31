package haxe.flixel.fileUtil;

import sys.io.File;
import sys.FileSystem;

/**
 * File Creation from Haxe-Flixel-Utils.
 * \n Keep in mind that this is my First Library, and therefore could be bad :( .
 */
class FileCreation {
	/**
	 * [Reads Files]
	 * @param path The path to the file that should be read. 
	 */
	public static function read(path:String) {
		if (path == null)
			throw "NULL ERROR: PATH IS NULL!";
		return File.read(path).readAll().toString();
	}

	public static function write(path:String, content:String) {
		if (path == null || content == null)
			throw "NULL ERROR: PATH AND/OR IS NULL!";
		File.saveContent(path, content);
	}
}
