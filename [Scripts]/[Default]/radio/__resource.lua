resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

supersede_radio "RADIO_01_CLASS_ROCK" { url = "http://radio.truckers.fm", volume = 0.2, name = "TruckersFM" }



files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js"
}
