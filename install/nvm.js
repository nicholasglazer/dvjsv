require('shelljs/global');
// Manual installation for later
// var zshrc = '.zshrc';
// var str = 'export NVM_DIR="$HOME/.nvm"';
// var str2 = '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm';
// var outputStr = str +'\n'+ str2 +'\n';

// if (!which('git')) {
//   echo('Sorry, this script requires git');
//   exit(1);
// }
// cd('../../');
// echo(pwd());
// echo('Clone nvm, and check out the latest version')

//upgrade: cd "$NVM_DIR" && git pull origin master && git checkout `git describe --abbrev=0 --tags`
//. "$NVM_DIR/nvm.sh"

// exec('git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`', function(code, stdout, stderr) {
//   console.log('Exit code:', code);
//   console.log('Program output:', stdout);
//   console.log('Program stderr:', stderr);
// });
// echo('Activate nvm into this environment');
// exec('source ~/.nvm/nvm.sh');

exec('curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash', function(code, stdout, stderr) {
  console.log('Exit code:', code);
  console.log('Program output:', stdout);
  console.log('Program stderr:', stderr);
});


//check this first
// https://www.digitalocean.com/community/tutorials/how-to-install-node-js-with-nvm-node-version-manager-on-a-vps
// exec('sudo n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local');
// exec('which node');
