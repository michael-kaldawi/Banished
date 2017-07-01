PackageFile apiary
{
	String _name = "Building Example";
	String _author = "Shining Rock Software, LLC";
	String _description = "This is an exampe mod from the Banished Toolkit. 
	    This mod adds an apiary building and a beekeeper profession. The
		source data to this mod can be found in the mod kit at www.shiningrocksoftware.com/mods";
	String _icon = "icon.png";
	String _preview = "preview.jpg";
	int _userVersion = 1;

	// all files in resource directory
	String _includeList
	[
		"*"	
	]
	
	// exclude package files, mod files, file used for building packages
	String _excludeList
	[
		"Package_*.crs"
		"*.pkg"
		"*.pkm"
	]
}
