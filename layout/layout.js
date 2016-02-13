require('shelljs/global');
var evdevLayout =
	'\t<layout>\n'+ 
	  '\t\t\t<configItem>\n'+ 
	    '\t\t\t\t<name>dvjsv</name>\n'+
	    '\t\t\t\t<shortDescription>dvv</shortDescription>\n'+
	    '\t\t\t\t<description>dvorak vim</description>\n'+
	    '\t\t\t\t<languageList><iso639Id>eng</iso639Id></languageList>\n'+
	  '\t\t\t</configItem>\n'+
	'\t\t</layout>\n'+
'\t</layoutList>';
var rules = '/usr/share/X11/xkb/rules/';
var symbols = '/usr/share/X11/xkb/symbols/';

echo('Copying layout file to: '+symbols)
cp('dvjsv', symbols);

if (grep('<name>dvjsv</name>', rules+'evdev.xml')) {
	echo('Layout configuration already exists');
} else {
	echo('Appending configuration for layout inside: '+rules+'evdev.xml');
	sed('-i', '</layoutList>', evdevLayout, rules + 'evdev.xml' );
}

echo('Force the cache refreshing to reload keyboard settings.');
exec('sudo dpkg-reconfigure xkb-data');