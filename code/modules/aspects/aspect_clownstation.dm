//Can't quite get this to work.

/datum/round_event_control/aspect/clownstation
	name = "All Heads Clowns"
	typepath = /datum/round_event/aspect/clownstation

/datum/round_event/aspect/clownstation
	name = "ClownStation"
	description = "Due to Nanotrasen's \"Honk Initiative\" all the start heads have been replaced with Clowns."

/datum/round_event/aspect/clownstation/start()
	for(var/mob/living/carbon/human/H in mob_list)
		if(H.stat!=2 && H.mind && (H.mind.assigned_role in command_positions))
			qdel(H.w_uniform)
			qdel(H.shoes)


			H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/clown(H),slot_w_uniform)
			H.equip_to_slot_or_del(new /obj/item/clothing/shoes/clown_shoes(H),slot_shoes)
			H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas/clown_hat(H),slot_wear_mask)
			H.fully_replace_character_name(H.real_name, pick(clown_names))
			H.dna.add_mutation(CLOWNMUT)