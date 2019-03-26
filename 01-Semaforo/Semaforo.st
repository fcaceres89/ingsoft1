!classDefinition: #LuzAmarilla category: #Semaforo!
DenotativeObjectMorph subclass: #LuzAmarilla
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LuzAmarilla class' category: #Semaforo!
LuzAmarilla class
	instanceVariableNames: ''!

!LuzAmarilla class methodsFor: 'morph' stamp: 'LLR 3/25/2019 20:02:08'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!LuzAmarilla class methodsFor: 'as yet unclassified' stamp: 'LLR 3/25/2019 21:06:25'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #LuzRoja category: #Semaforo!
DenotativeObjectMorph subclass: #LuzRoja
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LuzRoja class' category: #Semaforo!
LuzRoja class
	instanceVariableNames: ''!

!LuzRoja class methodsFor: 'morph' stamp: 'LLR 3/25/2019 20:01:45'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!LuzRoja class methodsFor: 'as yet unclassified' stamp: 'LLR 3/25/2019 21:06:25'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #LuzVerde category: #Semaforo!
DenotativeObjectMorph subclass: #LuzVerde
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'LuzVerde class' category: #Semaforo!
LuzVerde class
	instanceVariableNames: ''!

!LuzVerde class methodsFor: 'morph' stamp: 'LLR 3/25/2019 20:02:22'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!LuzVerde class methodsFor: 'as yet unclassified' stamp: 'LLR 3/25/2019 21:06:25'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.! !


!classDefinition: #Semaforo category: #Semaforo!
DenotativeObjectMorph subclass: #Semaforo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Semaforo class' category: #Semaforo!
Semaforo class
	instanceVariableNames: 'apagado'!

!Semaforo class methodsFor: 'morph' stamp: 'LLR 3/25/2019 20:00:53'!
createMorph

	^LayoutMorph newColumn
		morphExtent: 60 @ 130;
		yourself
! !


!Semaforo class methodsFor: 'acciones' stamp: 'LLR 3/25/2019 20:41:58'!
apagar
	apagado := true.
	LuzRoja color: Color black.
	LuzAmarilla color: Color black.
	LuzVerde color: Color black.
! !

!Semaforo class methodsFor: 'acciones' stamp: 'LLR 3/25/2019 20:44:41'!
prender
	|bloqueIntermitencia|
	
	apagado := false.
	bloqueIntermitencia := [apagado ifFalse:   [LuzAmarilla color: Color yellow.
		                                 (Delay for: 1*second) wait. 
							   LuzAmarilla color: Color black.
							   (Delay for: 1*second) wait.].].					.
      bloqueIntermitencia value.
	bloqueIntermitencia value.
	bloqueIntermitencia value.
	bloqueIntermitencia value.
	bloqueIntermitencia value.
	
! !


!Semaforo class methodsFor: 'as yet unclassified' stamp: 'LLR 3/25/2019 21:06:25'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	apagado := true.! !

LuzAmarilla initializeAfterFileIn!
LuzRoja initializeAfterFileIn!
LuzVerde initializeAfterFileIn!
Semaforo initializeAfterFileIn!