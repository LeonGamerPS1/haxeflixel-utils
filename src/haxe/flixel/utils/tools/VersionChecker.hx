package src.haxe.flixel.utils.tools;

import haxe.http.HttpMethod;
import haxe.http.HttpBase;
import haxe.http.HttpStatus;

using StringTools;

class VersionChecker {
	public static function getVersion(curVer) {
		var version = new haxe.Http("https://raw.githubusercontent.com/LeonGamerPS1/haxeflixel-utils/main/.gitver");
		var htp = "NAN";

		version.onData = function(data:String) {
			htp = data.split('\n')[0].trim();

			if (htp != curVer) {
				//throw 'versions arent matching.';
			}
		}
		version.request();
		return htp;
	}
}
