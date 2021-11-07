;terminal train of death
;-------------------------------------------------------------------------------
(script continuous train_of_death

	(object_destroy eastbound_train)
	
	(object_destroy westbound_train)

	(sleep (random_range 60 360))
	
	(if (= 0 (random_range 0 2))
		
		(begin
		
			(object_create eastbound_train)
;			(cinematic_light_object_off eastbound_train)

		)
		
		(begin
		
			(object_create westbound_train)
;			(cinematic_light_object_off westbound_train)
		)

	)

	(sleep 240)
	
)