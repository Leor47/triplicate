;terminal train of death
;-------------------------------------------------------------------------------
(script startup triplicate	
    (sleep 400)
    (mp_wake_script train_of_death)
)

(script dormant train_of_death

	(object_destroy eastbound_train)
	
	(object_destroy westbound_train)

	(sleep (random_range 60 360))
	
	(if (= 0 (random_range 0 2))
		
		(begin
		
			(object_create eastbound_train)
			
		)
		
		(begin
		
			(object_create westbound_train)
		
		)

	)

	(sleep 240)
	
)