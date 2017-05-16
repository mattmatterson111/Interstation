/datum/round_event_control/aspect/kungfu
	name = "Kung-Fu"
	typepath = /datum/round_event/aspect/kungfu

/datum/round_event/aspect/kungfu
	name = "I know Kung-Fu"
	description = "As part of the Nanotrasen \"Self-Defense\" intiative, everybody has gained knowledge of hidden a martial art."

/datum/round_event/aspect/kungfu/start()
	for(var/mob/living/carbon/human/H in living_mob_list)
		if(!istype(H))//Sanity check.
			return
		var/style = null
		

		style = pick(/datum/martial_art/krav_maga, /datum/martial_art/boxing, /datum/martial_art/wrestling, /datum/martial_art/plasma_fist, /datum/martial_art/the_sleeping_carp)
		
		if(H.mind.assigned_role != "Shaft Miner")
			if(style)
				var/datum/martial_art/S = new style()
			
				S.teach(H,0)

