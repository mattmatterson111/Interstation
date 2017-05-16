/datum/round_event_control/aspect/eimplant
	name = "Explosive implant"
	typepath = /datum/round_event/aspect/eimplant
/datum/round_event/aspect/eimplant
	name = "Last Resort"
	description = "Due to the Nanotrasen \"Self-Cleanup Initiative\", the starting crew has been fitted with explosive implants!"

/datum/round_event/aspect/eimplant/start()
	for(var/mob/living/carbon/human/H in living_mob_list)

		var/obj/item/weapon/implant/explosive/L = new/obj/item/weapon/implant/explosive(H)
		L.implant(H, null, 1)


