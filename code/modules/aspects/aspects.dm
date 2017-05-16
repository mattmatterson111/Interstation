/*
##################ASPECTS!############
##Aspects are one time events that only fire at the very beginning of the round.
##The idea behind them is that they change something about the game world, an aspect if you will,
##to keep rounds from being samey. They can either affect a certain job, the crew on whole, or the map.
##Obviously some are going to be more balanced than others. Aspects should change something about the 
##game world to make it more interesting, not annoying. Remember that when adding a new one.
##
##In order to add your own just make a child event of aspect and then add it to the rotation list
##in the proc choose_aspect() in ticker.dm. I'm sure there's a better way to do this, and I'll change
##this comment block when I find one. - Matt
######################################

IT'S IMPORTANT TO REMEMBER THAT YES, ASPECTS HAVE THE HUGE POTENTIAL TO RUIN GAME BALANCE!
								USE THIS POWER WITH CAUTION!
*/

/datum/round_event_control/aspect
	aspect = 1


/datum/round_event/aspect
	var/name = null			//The name that will be displayed post round.
	var/description = null	//The description that will be displayed pre and post round.
							//These are called in ticker.dm in a proc called choose_aspect()



//This was a test aspect, should not be put in rotation:
/datum/round_event_control/aspect/lightsout
	name = "Lights Out!"
	typepath = /datum/round_event/aspect/lightsout

/datum/round_event/aspect/lightsout
	name = "Dark Days Ahead"
	description = "Nanotrasen has decided that having lights is too expensive."

/datum/round_event/aspect/lightsout/start()//Round starts with all lights destroyed! Do not actually try to play like this! It sucks!
	for(var/obj/machinery/light/L in machines)
		L.break_light_tube()

	for(var/mob/living/carbon/human/H in living_mob_list)
		if(!istype(H))//Sanity check.
			return
		H.put_in_r_hand( new /obj/item/device/flashlight(H) )//Give them a flashlight to be nice.


/* Still working on this.
/client/proc/forceAspect()
	set name = "Force Aspect"
	set category = "Fun"

	if(!holder ||!check_rights(R_FUN))
		return

	holder.forceAspect()

/datum/admins/proc/forceAspect()
	

*/