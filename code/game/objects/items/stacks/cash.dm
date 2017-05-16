/obj/item/stack/spacecash
	name = "space cash"
	desc = "But you've got to have... money..."
	singular_name = "bill"
	icon = 'icons/obj/items.dmi'
	icon_state = "spacecash"
	amount = 1
	max_amount = 1000000
	throwforce = 0
	throw_speed = 2
	throw_range = 2
	w_class = 1
	resistance_flags = FLAMMABLE
	var/value = 1

/obj/item/stack/spacecash/New(var/atom/loc, var/amt = 1 as num)
	..(loc)
	amount = amt
	update_value()
	update_icon()

/obj/item/stack/spacecash/proc/update_value()
	value = amount


/obj/item/stack/spacecash/update_icon()
	//name = "[amount == max_amount ? "1000000" : amount] Credit[amount > 1 ? "s" : ""]"
	if (amount >= 1 && amount < 10)
		icon_state = "cashgreen"
	else if (amount >= 10 && amount < 50)
		icon_state = "spacecash"
	else if (amount >= 50 && amount < 500)
		icon_state = "cashblue"
	else if (amount >= 500 && amount < 1000)
		icon_state = "cashindi"
	else if (amount >= 1000 && amount < 1000000)
		icon_state = "cashpurp"
	else
		icon_state = "cashrbow"



/obj/item/stack/spacecash/examine(mob/user)
	..()
	user << "It's worth [src.value] credits."

/obj/item/stack/spacecash/add(amount)
	..()
	update_value()
/obj/item/stack/spacecash/change_stack()
	..()
	update_value()

/obj/item/stack/spacecash/c5
	desc = "THIS IS FAKE MONEY THAT DOESN'T ACTUALLY WORK! YOU'VE BEEN TRICKY DICKIED!"
	value = 5

/obj/item/stack/spacecash/c10
	desc = "THIS IS FAKE MONEY THAT DOESN'T ACTUALLY WORK! YOU'VE BEEN TRICKY DICKIED!"
	value = 10

/obj/item/stack/spacecash/c20
	desc = "THIS IS FAKE MONEY THAT DOESN'T ACTUALLY WORK! YOU'VE BEEN TRICKY DICKIED!"
	value = 20

/obj/item/stack/spacecash/c50
	desc = "THIS IS FAKE MONEY THAT DOESN'T ACTUALLY WORK! YOU'VE BEEN TRICKY DICKIED!"
	value = 50

/obj/item/stack/spacecash/c100
	desc = "THIS IS FAKE MONEY THAT DOESN'T ACTUALLY WORK! YOU'VE BEEN TRICKY DICKIED!"
	value = 100

/obj/item/stack/spacecash/c200
	desc = "THIS IS FAKE MONEY THAT DOESN'T ACTUALLY WORK! YOU'VE BEEN TRICKY DICKIED!"
	value = 200

/obj/item/stack/spacecash/c500
	desc = "THIS IS FAKE MONEY THAT DOESN'T ACTUALLY WORK! YOU'VE BEEN TRICKY DICKIED!"
	value = 500

/obj/item/stack/spacecash/c1000
	desc = "THIS IS FAKE MONEY THAT DOESN'T ACTUALLY WORK! YOU'VE BEEN TRICKY DICKIED!"
	value = 1000