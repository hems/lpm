fs     = require "fs"
path   = require "path"
colors = require 'colors'

Install = require './install'

module.exports = class lpm
  
  constructor:->
    @root     = path.normalize __dirname + "/.."

    @version = (require "#{@root}/package.json" ).version

    @usage = "#{'lpm'.bold} " + "v#{@version}".grey
    @usage += "\n"

    @usage += "#{'Usage:'.bold}"
    @usage += "\n"
    @usage += "  lpm midi   #{'[path_to_your_zip_file]'.yellow}"
    @usage += "\n"
    @usage += "  lpm instrument  #{'[path_to_your_zip_file]'.yellow}"
    @usage += "\n"
    @usage += "  lpm effect #{'[path_to_your_zip_file]'.yellow}"
    @usage += "\n\n"

    @usage += "#{'Options:'.bold}\n"
    @usage += "            #{'midi'.red}   Download and install max4live midi device.\n"
    @usage += "            #{'audio'.red}  Download and install max4live audio device.\n"
    @usage += "            #{'effect'.red} Download and install max4live effect device.\n"
    @usage += "            #{'help'.red}   Show this help screen.\n"

    # grab options starting from index 2
    options = process.argv.slice 2

    # defaults to help command in case user doesn't pass any parameter
    # if not options.length
    # console.log "ERROR".bold.red + " You should provide an http url to be shooted.\n\n"

    if not options.length or options[0] == 'help' or ( options.length != 2 )
      console.log @usage
      return

    if ['midi','effect','instrument'].indexOf( options[0] ) == -1
      console.log @usage
      return
    
    new Install( options[0], options[1] )