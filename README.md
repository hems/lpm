# lpm

Simple max4live install script

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
lpm instrument [/path/to/a/zip/file]
lpm effect     [/path/to/a/zip/file]
````

<a name="todo" />
### TODO

- figure out a more compatible http download lib for node, at the moment when downloading a zip from github it will fail due to the 302 message error. started using wget but still no luck

- windows version
	- perhaps just adjust some paths on install.coffee will do the job


Should be simple and would be great if someone could contribute with that.

<a name="next-steps" />
### Next Steps

The next steps will depend on feedback and real life usage.

Everyone is more than welcome to suggest improvements to this system.

By the way,the initial idea was :

	- fork npm repository
		-> add "device-type" property on package.json [midi|audio|effect]
		-> add 'device-file' property to package.json
		-> publish the max4live device as npm module
		-> add couple of extra command line options, i.e.:
			- npm install midi /path/to/package
			- npm install audio /path/to/package
			- npm install efx /path/to/package
		-> call it "lpm"

But... lets keep it simple and grow step by step ( :

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