require('shelljs/global');
var evdevLayout =
'<layout>'+ 
  '<configItem>'+ 
    '<name>dvjsv</name>'+
    '<shortDescription>dvv</shortDescription>'+
    '<description>dvorak vim</description>'+
    '<languageList><iso639Id>eng</iso639Id></languageList>'+
  '</configItem>'+
'</layout>';
var output = '/usr/share/X11/xkb/rules';

// cd(output);
echo(output);

