/datum/round_event_control/aspect/two_caps
	name = "Two Captains"
	typepath = /datum/round_event/aspect/two_caps

/datum/round_event/aspect/two_caps
	name = "Two Many Condoms"
	description = "Nanotrasen has allowed for two captains today."

/datum/round_event/aspect/two_caps/start()
	for(var/datum/job/job in SSjob.occupations)
		if(job.title == "Captain")
			job.total_positions = 2