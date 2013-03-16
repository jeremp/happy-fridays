package croissants

class People {

	String lastName
	String firstName
	String email
	
	int listNumber // to give an order
	boolean isNext = false// indicates he's the next
	
	Date lastTime // the last time he brought something
	
    static constraints = {
		lastName blank:false 
		firstName blank:false
		email blank:false
		lastTime nullable:true
    }
}
