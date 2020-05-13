-- https://github.com/mpv-player/mpv/blob/master/DOCS/man/lua.rst#events

function run_cava_randomizer(event)
	os.execute("sh ~/scripts/random-scripts/random_cava.sh")
end

mp.register_event("file-loaded", run_cava_randomizer)