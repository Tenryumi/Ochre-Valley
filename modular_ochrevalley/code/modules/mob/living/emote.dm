/datum/emote/living/quest
	key = "quest"
	key_third_person = "has a quest to offer!"
	message = "has a quest to offer!"
	emote_type = EMOTE_AUDIBLE
	show_runechat = TRUE

/datum/emote/living/quest/run_emote(mob/living/user, params, type_override, intentional, targetted, animal)
	. = ..()
	user.play_overhead_indicator('modular_ochrevalley/icons/mob/overhead_effects.dmi', "quest", 100, MUTATIONS_LAYER, soundin = 'sound/misc/levelup1.ogg', y_offset = 32)

/mob/living/carbon/human/verb/emote_quest()
	set name = "Offer Quest"
	set category = "Emotes"

	emote("quest", intentional =  TRUE)
