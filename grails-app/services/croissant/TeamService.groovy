package croissant

import croissants.People;
import croissants.Team;

class TeamService {

	// la méthode qui effectue le changement
    def itsTimeToRoll() {
		List<People> peoples = People.listOrderByListNumber()
		if(peoples && peoples.size()>1){
			if(Team.count()!=1){
				log.error("Il ne faut une seule équipe ! il y en a ${Team.count()}")
				log.error("Aucune modification ne sera faite")
			}else{
				Team t = Team.list().get(0)
				int index = 1
				People a // the current guy			
				People b // the next guy
				boolean jobDone = false
				for(People p : peoples){
					if(p.isNext){
						a = p
						if(index==peoples.size()){
							// on est en fin de liste, le prochain sera le premier
							b = peoples.get(0)
						}else{
							b = peoples.get(index)
						}
						jobDone = true
					}
					index++
				}
				
				if(jobDone){
					a.lastTime = new Date()
					a.isNext = false
					a.save()
					
					b.isNext = true
					b.save()
					
					t.nextPeople = b
					t.previousPeople = a
					t.save()
					
					log.info("The previous People was $t.previousPeople.firstName")
					log.info("The next People is $t.nextPeople.firstName")
				}else{
					log.error("Aucune modifications de faite... un People a-t-il isNext=true ?")
				}
			}
		}else{
			log.error("Il faut au moins deux personnes dans la liste !")
			log.error("Aucune modification ne sera faite")
		}
    }
}
