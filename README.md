# lpm

Live package manager.. cof.. cof...

Actually just a simple command line tool to install max4live devices out of zip files.

# About

lpm is very inspired by npm, the node management system which is inspired by 
many other cool package managers.

# Issues

Do not hesitate to open a feature request or a bug report.
> https://github.com/hems/lpm/issues

# Docs
  - [Installing](#installing)
  - [Usage](#usage)
  - [TODO](#todo)
  - [Next Steps](#next-steps)
  - [Contributing](#contributing)

Have fun. :)

<a name="installing" />
## Installing

````bash
npm install -g lpm
````

<a name="usage" />
## Usage

````bash
lpm midi       [/path/to/a/zip/file]
# download and unzip the file into your Max for live midi folder
lpm instrument [/path/to/a/zip/file]
# download and unzip the file into your Max for live instrument folder
lpm effect     [/path/to/a/zip/file]
# download and unzip the file into your Max for live audio effects folder
````

<a name="todo" />
### TODO

- Add commands to install AU and VSTs

- Find out a better way to download zip files from web: at the moment when downloading a zip from github it will fail due to the 302 message error.

- Add a simple database to store data, so the user would able to install / uninstall / disable installed plugins

- Fix windows version
	- perhaps just adjust some paths on install.coffee will do the job


Should be simple and would be great if someone could contribute with that.

<a name="next-steps" />
### Next Steps

Having a centralized repository, or list of packages.

Agree on some configuration file, i.e. yaml or json file to specify package version, author among other basic information

<a name="contributing"/>
## Contributing

Download the repo and have fun, pull requests are more than welcome.

````bash
  git clone git://github.com/hems/lpm.git
  cd lpm
  npm link
````

# Powered by
 - [Node.js](http://nodejs.org/)
 - [CoffeeScript](https://github.com/jashkenas/coffee-script)
 - And other cool stuff, have a look at package.json file
