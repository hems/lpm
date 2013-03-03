fs    = require "fs"
fsu   = require "fs-util"
unzip = require "unzip"

http    = require 'http'
fstream = require 'fstream'

wget    = require 'wget'

###
	Download / unzip / extract / copy to ableton folder
###
module.exports = class Install

	constructor:( type, path )->

		console.log "New install #{type}, path is #{path}".bold.green

		if process.platform is "win32"

			home_dir = process.env[ 'USERPROFILE' ]

			output   = home_dir + 'Windows Path to Ableton Presets?'

			console.error "Unfortunately we still don't have windows support"

			return

		else

			home_dir  = process.env[ 'HOME' ]

			output = home_dir + '/Library/Application Support/Ableton/Library/Presets'



		# src    = path;
		# output = '/example/device.zip';

		# download = wget.download src, output

		# download.on "error", (err) ->
		#   console.log err

		# download.on "end", (output) ->
		#   console.log output

		# download.on "progress", (progress) ->
		# 	console.log "progress: #{progress}"

		# return;

		# code to show progress bar

		switch type
			when 'midi'
				output = output + '/MIDI Effects/Max MIDI Effect/'

			when 'effect'
				output = output + '/Audio Effects/Max Audio Effect/'

			when 'instrument'
				output = output + '/Instruments/Max Instrument/'


		readStream  = fs.createReadStream path
		writeStream = fstream.Writer output

		readStream
			.pipe( unzip.Parse() )
			.pipe( writeStream )
			.on( 'close', @after_uncompress )

	after_uncompress: =>

			console.log " OK - Installed succesfully.".bold.green