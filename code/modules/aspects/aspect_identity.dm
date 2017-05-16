/datum/round_event_control/aspect/identity_crisis
	name = "Make all the people random"
	typepath = /datum/round_event/aspect/bad_hop

/datum/round_event/aspect/identity_crisis
	name = "Identity Crisis"
	description = "Everyone is not who they seem today."

/datum/round_event/aspect/identity_crisis/start()
	
	for(var/mob/living/carbon/human/H in living_mob_list)//Look through the list.
		if(!istype(H))//Sanity check. A pointless one at that.
			return
		randomize_human(H)//Make them random.