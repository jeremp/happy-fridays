class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller:"welcome", action:"index")
		"/administration"(view:"/admin")
		"500"(view:'/error')
	}
}
