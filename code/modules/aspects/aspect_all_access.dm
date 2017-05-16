/datum/round_event_control/aspect/bad_hop
	name = "Bad HoP"
	typepath = /datum/round_event/aspect/bad_hop

/datum/round_event/aspect/bad_hop
	name = "Bad HoP"
	description = "Those most trustworthy get all access today!"

/datum/round_event/aspect/bad_hop/start()
	var/trustworthy1 = null
	var/trustworthy2 = null
	for(var/mob/living/carbon/human/H in living_mob_list)//Look through the list.
		if(!istype(H))//Sanity check.
			return

		trustworthy1 = pick("Clown", "Librarian", "Chef")//Very trustworthy indeed.
		trustworthy2 = pick("Mime", "Assistant", "Janitor")

		if(H.mind.assigned_role == trustworthy1 || H.mind.assigned_role == trustworthy2)
			var/obj/item/weapon/card/id/W = H.wear_id//Get their ID.
			W.access = get_all_accesses()//And give them all access.
			H << "<B>You are very trustworthy today!</B>"




//GIVING JUST THE CLOWN AND MIME ALL ACCESS
/datum/round_event_control/aspect/bad_hop/clown
	name = "Bad HoP Clown and Mime"
	typepath = /datum/round_event/aspect/bad_hop/clown

/datum/round_event/aspect/bad_hop/clown//No sense defining this twice, it's the same as the last one.

/datum/round_event/aspect/bad_hop/clown/start()
	for(var/mob/living/carbon/human/H in living_mob_list)//Look through the list.
		if(!istype(H))//Sanity check.
			return

		if(H.mind.assigned_role == "Mime" || H.mind.assigned_role == "Clown")//Oh shit we got a mime and clown here!
			var/obj/item/weapon/card/id/W = H.wear_id
			W.access = get_all_accesses()
			H << "<B>You are very trustworthy today!</B>"