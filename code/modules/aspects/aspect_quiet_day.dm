/datum/round_event_control/aspect/quiet
	name = "All Mimes"
	typepath = /datum/round_event/aspect/quiet

/datum/round_event/aspect/quiet
	name = "Quiet Day"
	description = "As apart of Nanotrasen's \"Job Inclusivity\" intiative, the starting crew has been replaced with highly skilled mimes."

/datum/round_event/aspect/quiet/start()
	for(var/mob/living/carbon/human/H in living_mob_list)//Look through the list.
		if(!istype(H))//Sanity check.
			return
		if(H.mind.assigned_role != "Clown" || H.mind.assigned_role != "Mime")
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/aoe_turf/conjure/mime_wall(null))
			H.mind.AddSpell(new /obj/effect/proc_holder/spell/targeted/mime/speak(null))
			H.mind.miming = 1