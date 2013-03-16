package croissants

class WelcomeController {

    def index() {
		Team t = Team.get(0)
		List<People> ps = People.listOrderByListNumber()
		[team:t, peoples:ps]
	}
}
