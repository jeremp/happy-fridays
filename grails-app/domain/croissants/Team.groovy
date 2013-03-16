package croissants

class Team {

	int dayOfWeek = GregorianCalendar.FRIDAY
	People nextPeople
	People previousPeople
	
    static constraints = {
    	dayOfWeek nullable:false 
	}
}
