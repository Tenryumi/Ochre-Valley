/proc/amia_whitelistcheck(ckey)
	if(CONFIG_GET(flag/amia_enabled))
		// Ochre Edit - STOP url encoding it DELETES UNDERSCORES
		var/encondedckey = url_encode(ckey)
		var/constring =  amia_constring() + "CheckWL?ckey=[encondedckey]" 
		// Ochre Edit End
		var/list/response = world.Export(constring)
		if(!islist(response))
			log_runtime("Can't reach AMIA")
			return FALSE
		var/content = file2text(response["CONTENT"])
		var/list/decoded = json_decode(content)
		if(decoded["ok"])
			return TRUE
		else
			return FALSE
	else
		return TRUE
