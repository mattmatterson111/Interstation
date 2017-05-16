/datum/round_event_control/aspect/toolbox_salesman
	name = "Toolbox Salesman"
	typepath = /datum/round_event/aspect/toolbox_salesman

/datum/round_event/aspect/toolbox_salesman
	name = "Toolbox Salesman"
	description = "As apart of Nanotrasen's \"Fixer Upper Initiative\" all shift start assistants recieve a free toolbox."

/datum/round_event/aspect/toolbox_salesman/start()//What a pointless aspect.
	
	for(var/mob/living/carbon/human/H in living_mob_list)
		if(!istype(H))//Sanity check.
			return
		
		if(H.mind.assigned_role == "Assistant")
			H.put_in_r_hand( new /obj/item/weapon/storage/toolbox/mechanical(H) )
			//And congratulations. Now they have a fucking pointless ass toolbox. Cool.

