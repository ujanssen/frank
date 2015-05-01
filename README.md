# frank

A playground for learning saltstack/salt

- install salt-minion:

		$ sudo apt-get --yes -q install python-software-properties
		$ sudo add-apt-repository ppa:saltstack/salt
		$ sudo apt-get --yes -q update
		$ sudo apt-get --yes -q install salt-minion

- clone repo:

		$ git clone https://github.com/ujanssen/frank.git

- execute with:

		$ cd frank
		$ ./highstate.sh
