!classDefinition: #SeñalDeTransito category: #'01-Semaforo'!
Light subclass: #SeñalDeTransito
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDeTransito class' category: #'01-Semaforo'!
SeñalDeTransito class
	instanceVariableNames: 'colorDeLuz'!

!SeñalDeTransito class methodsFor: 'morph' stamp: 'FC 4/8/2019 13:01:20'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!SeñalDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 13:15:46'!
apagar
	
	self color: Color black.! !

!SeñalDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 13:15:49'!
prender
	
	self color: colorDeLuz.! !


!SeñalDeTransito class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:04'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := nil.! !


!classDefinition: #SeñalDeAvance category: #'01-Semaforo'!
SeñalDeTransito subclass: #SeñalDeAvance
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDeAvance class' category: #'01-Semaforo'!
SeñalDeAvance class
	instanceVariableNames: ''!

!SeñalDeAvance class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:04'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := (Color r: 0.082 g: 0.690 b: 0.102).! !


!classDefinition: #SeñalDeAvance1 category: #'01-Semaforo'!
SeñalDeTransito subclass: #SeñalDeAvance1
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDeAvance1 class' category: #'01-Semaforo'!
SeñalDeAvance1 class
	instanceVariableNames: ''!

!SeñalDeAvance1 class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:04'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := nil.! !


!classDefinition: #SeñalDeAvance4 category: #'01-Semaforo'!
SeñalDeTransito subclass: #SeñalDeAvance4
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDeAvance4 class' category: #'01-Semaforo'!
SeñalDeAvance4 class
	instanceVariableNames: ''!

!SeñalDeAvance4 class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:04'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := nil.! !


!classDefinition: #SeñalDeDetencion category: #'01-Semaforo'!
SeñalDeTransito subclass: #SeñalDeDetencion
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDeDetencion class' category: #'01-Semaforo'!
SeñalDeDetencion class
	instanceVariableNames: ''!

!SeñalDeDetencion class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := (Color r: 0.898 g: 0.000 b: 0.000).! !


!classDefinition: #SeñalDeDetencion2 category: #'01-Semaforo'!
SeñalDeTransito subclass: #SeñalDeDetencion2
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDeDetencion2 class' category: #'01-Semaforo'!
SeñalDeDetencion2 class
	instanceVariableNames: ''!

!SeñalDeDetencion2 class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := nil.! !


!classDefinition: #SeñalDeDetencion5 category: #'01-Semaforo'!
SeñalDeTransito subclass: #SeñalDeDetencion5
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDeDetencion5 class' category: #'01-Semaforo'!
SeñalDeDetencion5 class
	instanceVariableNames: ''!

!SeñalDeDetencion5 class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := nil.! !


!classDefinition: #SeñalDePrecaucion category: #'01-Semaforo'!
SeñalDeTransito subclass: #SeñalDePrecaucion
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDePrecaucion class' category: #'01-Semaforo'!
SeñalDePrecaucion class
	instanceVariableNames: ''!

!SeñalDePrecaucion class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := (Color r: 1.000 g: 1.000 b: 0.078).! !


!classDefinition: #SeñalDePrecaucion3 category: #'01-Semaforo'!
SeñalDeTransito subclass: #SeñalDePrecaucion3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDePrecaucion3 class' category: #'01-Semaforo'!
SeñalDePrecaucion3 class
	instanceVariableNames: ''!

!SeñalDePrecaucion3 class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := nil.! !


!classDefinition: #SeñalDePrecaucion6 category: #'01-Semaforo'!
SeñalDeTransito subclass: #SeñalDePrecaucion6
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SeñalDePrecaucion6 class' category: #'01-Semaforo'!
SeñalDePrecaucion6 class
	instanceVariableNames: ''!

!SeñalDePrecaucion6 class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := nil.! !


!classDefinition: #ContenedorDeSeñalesDeTransito category: #'01-Semaforo'!
ThreeLightsContainer subclass: #ContenedorDeSeñalesDeTransito
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ContenedorDeSeñalesDeTransito class' category: #'01-Semaforo'!
ContenedorDeSeñalesDeTransito class
	instanceVariableNames: 'laSeñalDeAvance laSeñalDeDetencion laSeñalDePrecaucion'!

!ContenedorDeSeñalesDeTransito class methodsFor: 'morph' stamp: 'FC 4/8/2019 12:57:53'!
createMorph

	^LayoutMorph newColumn
		morphExtent: 60 @ 130;
		yourself
! !


!ContenedorDeSeñalesDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 13:52:12'!
apagarTodasLasSeñales
	
	laSeñalDeAvance apagar.
	laSeñalDeDetencion apagar.
	laSeñalDePrecaucion apagar.! !

!ContenedorDeSeñalesDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 15:30:43'!
avisarAvanceDelTransito
	
	laSeñalDeDetencion apagar.
	laSeñalDeAvance prender.! !

!ContenedorDeSeñalesDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 15:30:12'!
avisarDetencionDelTransito
	
	laSeñalDePrecaucion apagar.
	laSeñalDeDetencion prender.! !

!ContenedorDeSeñalesDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 15:29:10'!
avisarPrecaucionPorDetencion
	
	laSeñalDeAvance apagar.
	laSeñalDePrecaucion prender.! !

!ContenedorDeSeñalesDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 13:45:34'!
avisarPrecaucionPorEncendido
	
	5 timesRepeat: [
		self titilarSeñalDePrecaucion.
	].! !

!ContenedorDeSeñalesDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 16:06:45'!
initialize
	
	laSeñalDeAvance := SeñalDeAvance clone.
	laSeñalDeDetencion := SeñalDeDetencion clone.
	laSeñalDePrecaucion := SeñalDePrecaucion clone.! !

!ContenedorDeSeñalesDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 13:45:14'!
titilarSeñalDePrecaucion
	
	laSeñalDePrecaucion prender.
	(Delay for: 1*second) wait.
	
	laSeñalDePrecaucion apagar.
	(Delay for: 1*second) wait.! !


!ContenedorDeSeñalesDeTransito class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	laSeñalDeAvance := nil.
	laSeñalDeDetencion := nil.
	laSeñalDePrecaucion := nil.! !


!classDefinition: #elContenedorDeSeñalesSobreCorrientes category: #'01-Semaforo'!
ContenedorDeSeñalesDeTransito subclass: #elContenedorDeSeñalesSobreCorrientes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'elContenedorDeSeñalesSobreCorrientes class' category: #'01-Semaforo'!
elContenedorDeSeñalesSobreCorrientes class
	instanceVariableNames: ''!

!elContenedorDeSeñalesSobreCorrientes class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	laSeñalDeAvance := SeñalDeAvance4.
	laSeñalDeDetencion := SeñalDeDetencion5.
	laSeñalDePrecaucion := SeñalDePrecaucion6.! !


!classDefinition: #elContenedorDeSeñalesSobreMaipu category: #'01-Semaforo'!
ContenedorDeSeñalesDeTransito subclass: #elContenedorDeSeñalesSobreMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'elContenedorDeSeñalesSobreMaipu class' category: #'01-Semaforo'!
elContenedorDeSeñalesSobreMaipu class
	instanceVariableNames: ''!

!elContenedorDeSeñalesSobreMaipu class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	laSeñalDeAvance := SeñalDeAvance1.
	laSeñalDeDetencion := SeñalDeDetencion2.
	laSeñalDePrecaucion := SeñalDePrecaucion3.! !


!classDefinition: #SemaforoDeInterseccionDeDosCalles category: #'01-Semaforo'!
DenotativeObject subclass: #SemaforoDeInterseccionDeDosCalles
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SemaforoDeInterseccionDeDosCalles class' category: #'01-Semaforo'!
SemaforoDeInterseccionDeDosCalles class
	instanceVariableNames: 'señalesDeLaCalleQueComienzaAvanzando señalesDeLaCalleQueComienzaDetenida cantidadDeAlternaciones'!

!SemaforoDeInterseccionDeDosCalles class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 15:37:45'!
alternarSeñalesDeTransito
	|auxContenedorDeSeñales|
	
	cantidadDeAlternaciones timesRepeat: [
		señalesDeLaCalleQueComienzaAvanzando avisarAvanceDelTransito.
		señalesDeLaCalleQueComienzaDetenida avisarDetencionDelTransito.
		(Delay for: 10*second) wait.
		
		señalesDeLaCalleQueComienzaAvanzando avisarPrecaucionPorDetencion.
		(Delay for: 3*second) wait.
		
		auxContenedorDeSeñales := señalesDeLaCalleQueComienzaAvanzando.
		señalesDeLaCalleQueComienzaAvanzando := señalesDeLaCalleQueComienzaDetenida.
		señalesDeLaCalleQueComienzaDetenida := auxContenedorDeSeñales.
	].! !

!SemaforoDeInterseccionDeDosCalles class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 14:24:48'!
apagar
	
	señalesDeLaCalleQueComienzaAvanzando apagarTodasLasSeñales.
	señalesDeLaCalleQueComienzaDetenida apagarTodasLasSeñales.! !

!SemaforoDeInterseccionDeDosCalles class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 14:40:30'!
avisarPrecaucionPorEncendido
	
	5 timesRepeat: [
		señalesDeLaCalleQueComienzaAvanzando titilarSeñalDePrecaucion.
		señalesDeLaCalleQueComienzaDetenida titilarSeñalDePrecaucion.
	].
	
	! !

!SemaforoDeInterseccionDeDosCalles class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 15:41:05'!
openInWorld
	
	señalesDeLaCalleQueComienzaAvanzando openInWorld.
	señalesDeLaCalleQueComienzaDetenida openInWorld.
	! !

!SemaforoDeInterseccionDeDosCalles class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 14:53:08'!
prender
	
	self avisarPrecaucionPorEncendido.
	self alternarSeñalesDeTransito.
	
	! !


!SemaforoDeInterseccionDeDosCalles class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	señalesDeLaCalleQueComienzaAvanzando := AnObsoleteElContenedorDeSeñalesDeTransitoSobreMaipu.
	señalesDeLaCalleQueComienzaDetenida := AnObsoleteElContenedorDeSeñalesDeTransitoSobreCorrientes.
	cantidadDeAlternaciones := nil.! !


!classDefinition: #elSemaforoDeMaipuYCorrientes category: #'01-Semaforo'!
SemaforoDeInterseccionDeDosCalles subclass: #elSemaforoDeMaipuYCorrientes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'elSemaforoDeMaipuYCorrientes class' category: #'01-Semaforo'!
elSemaforoDeMaipuYCorrientes class
	instanceVariableNames: ''!

!elSemaforoDeMaipuYCorrientes class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	señalesDeLaCalleQueComienzaAvanzando := elContenedorDeSeñalesSobreCorrientes.
	señalesDeLaCalleQueComienzaDetenida := elContenedorDeSeñalesSobreMaipu.
	cantidadDeAlternaciones := 3.! !

SeñalDeTransito initializeAfterFileIn!
SeñalDeAvance initializeAfterFileIn!
SeñalDeAvance1 initializeAfterFileIn!
SeñalDeAvance4 initializeAfterFileIn!
SeñalDeDetencion initializeAfterFileIn!
SeñalDeDetencion2 initializeAfterFileIn!
SeñalDeDetencion5 initializeAfterFileIn!
SeñalDePrecaucion initializeAfterFileIn!
SeñalDePrecaucion3 initializeAfterFileIn!
SeñalDePrecaucion6 initializeAfterFileIn!
ContenedorDeSeñalesDeTransito initialize!
ContenedorDeSeñalesDeTransito initializeAfterFileIn!
elContenedorDeSeñalesSobreCorrientes initializeAfterFileIn!
elContenedorDeSeñalesSobreMaipu initializeAfterFileIn!
SemaforoDeInterseccionDeDosCalles initializeAfterFileIn!
elSemaforoDeMaipuYCorrientes initializeAfterFileIn!