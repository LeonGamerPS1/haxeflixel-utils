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

	/**
	 * Writes files to a location.
	 * & Caution: You need to specify the File Name and extension like this: "path/to/sample.txt"!
	 * @param path The Directory of the  File and name that should be saved.
	 * @param content  File-Content of the file.
	 */
	public static function write(path:String, content:Dynamic) {
		if (path == null || content == null)
			throw "NULL ERROR: PATH AND/OR CONTENT IS NULL!";
		File.saveContent(path, content.toString());
	}

	/**
	 * The function that deletes files.
	 * @param path Path to the file that should be deleted. 
	 * @since 0.0.2
	 */
	public static function delete(path:String) {
		if (path == null)
			throw "NULL ERROR: PATH  IS NULL!";
		FileSystem.deleteFile(path);
	}

	/**
	 * Copies the content of a file.
	 * @param source The source file.
	 * @param destination The file that should get its content replaced with the Source File's content.
	 * @since 0.0.2
	 */
	public static function copy(source, destination) {
		if (source == null)
			throw "NULL ERROR: SOURCE  IS NULL!";
		File.copy(source, destination);

	}
}
