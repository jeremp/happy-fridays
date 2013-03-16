package croissants



class RollItJob {
	
	def teamService
	
    static triggers = {
       cron name: 'myTrigger', cronExpression: "0 5 11 ? * FRI *"
    }

    def execute() {
        log.info("===> roll it ! ...")
		teamService.itsTimeToRoll()
		log.info("<=== roll it ! [DONE]")
    }
}
