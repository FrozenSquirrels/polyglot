# polyglot
http://frozensquirrels.pythonanywhere.com

## Development 
If your developing on a Vagrant instance run:

```
sudo apt-get install git
cd /vagrant
git clone git@github.com:FrozenSquirrels/polyglot.git
cd polyglot
sudo ./vagrant_setup.sh
#set your_email@exmaple.com to your github email account.
git config --global user.email "your_email@example.com"
```

You can now edit file via windows via the the shared directory:
 *  http://docs.vagrantup.com/v2/synced-folders/

or in Linux with your favorit editor.
