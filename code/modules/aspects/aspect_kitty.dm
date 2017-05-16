//OH GOD WHY!

/datum/round_event_control/aspect/neko
	name = "Neko Para"
	typepath = /datum/round_event/aspect/neko

/datum/round_event/aspect/neko
	name = "Neko Para"
	description = "As apart of Nanotrasen's \"Kawaii Containment Initiative\" the starting crew has been replaced with their neko counterparts."

/datum/round_event/aspect/neko/start()
	for(var/mob/living/carbon/human/H in player_list)//Look through the list.
		H.dna.features["tail_human"] = "Cat"
		H.dna.features["ears"] = "Cat"
		H.regenerate_icons()//Now you're a cat.