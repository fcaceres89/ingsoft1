!classDefinition: #Se�alDeTransito category: #'01-Semaforo'!
Light subclass: #Se�alDeTransito
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Se�alDeTransito class' category: #'01-Semaforo'!
Se�alDeTransito class
	instanceVariableNames: 'colorDeLuz'!

!Se�alDeTransito class methodsFor: 'morph' stamp: 'FC 4/8/2019 13:01:20'!
createMorph

	^EllipseMorph new
		color: Color black;
		yourself! !


!Se�alDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 13:15:46'!
apagar
	
	self color: Color black.! !

!Se�alDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 13:15:49'!
prender
	
	self color: colorDeLuz.! !


!Se�alDeTransito class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:04'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := nil.! !


!classDefinition: #Se�alDeAvance category: #'01-Semaforo'!
Se�alDeTransito subclass: #Se�alDeAvance
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Se�alDeAvance class' category: #'01-Semaforo'!
Se�alDeAvance class
	instanceVariableNames: ''!

!Se�alDeAvance class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:04'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := (Color r: 0.082 g: 0.690 b: 0.102).! !


!classDefinition: #Se�alDeAvance1 category: #'01-Semaforo'!
Se�alDeTransito subclass: #Se�alDeAvance1
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Se�alDeAvance1 class' category: #'01-Semaforo'!
Se�alDeAvance1 class
	instanceVariableNames: ''!

!Se�alDeAvance1 class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:04'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := nil.! !


!classDefinition: #Se�alDeAvance4 category: #'01-Semaforo'!
Se�alDeTransito subclass: #Se�alDeAvance4
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Se�alDeAvance4 class' category: #'01-Semaforo'!
Se�alDeAvance4 class
	instanceVariableNames: ''!

!Se�alDeAvance4 class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:04'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := nil.! !


!classDefinition: #Se�alDeDetencion category: #'01-Semaforo'!
Se�alDeTransito subclass: #Se�alDeDetencion
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Se�alDeDetencion class' category: #'01-Semaforo'!
Se�alDeDetencion class
	instanceVariableNames: ''!

!Se�alDeDetencion class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := (Color r: 0.898 g: 0.000 b: 0.000).! !


!classDefinition: #Se�alDeDetencion2 category: #'01-Semaforo'!
Se�alDeTransito subclass: #Se�alDeDetencion2
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Se�alDeDetencion2 class' category: #'01-Semaforo'!
Se�alDeDetencion2 class
	instanceVariableNames: ''!

!Se�alDeDetencion2 class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := nil.! !


!classDefinition: #Se�alDeDetencion5 category: #'01-Semaforo'!
Se�alDeTransito subclass: #Se�alDeDetencion5
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Se�alDeDetencion5 class' category: #'01-Semaforo'!
Se�alDeDetencion5 class
	instanceVariableNames: ''!

!Se�alDeDetencion5 class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := nil.! !


!classDefinition: #Se�alDePrecaucion category: #'01-Semaforo'!
Se�alDeTransito subclass: #Se�alDePrecaucion
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Se�alDePrecaucion class' category: #'01-Semaforo'!
Se�alDePrecaucion class
	instanceVariableNames: ''!

!Se�alDePrecaucion class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := (Color r: 1.000 g: 1.000 b: 0.078).! !


!classDefinition: #Se�alDePrecaucion3 category: #'01-Semaforo'!
Se�alDeTransito subclass: #Se�alDePrecaucion3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Se�alDePrecaucion3 class' category: #'01-Semaforo'!
Se�alDePrecaucion3 class
	instanceVariableNames: ''!

!Se�alDePrecaucion3 class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := nil.! !


!classDefinition: #Se�alDePrecaucion6 category: #'01-Semaforo'!
Se�alDeTransito subclass: #Se�alDePrecaucion6
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Se�alDePrecaucion6 class' category: #'01-Semaforo'!
Se�alDePrecaucion6 class
	instanceVariableNames: ''!

!Se�alDePrecaucion6 class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	colorDeLuz := nil.! !


!classDefinition: #ContenedorDeSe�alesDeTransito category: #'01-Semaforo'!
ThreeLightsContainer subclass: #ContenedorDeSe�alesDeTransito
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ContenedorDeSe�alesDeTransito class' category: #'01-Semaforo'!
ContenedorDeSe�alesDeTransito class
	instanceVariableNames: 'laSe�alDeAvance laSe�alDeDetencion laSe�alDePrecaucion'!

!ContenedorDeSe�alesDeTransito class methodsFor: 'morph' stamp: 'FC 4/8/2019 12:57:53'!
createMorph

	^LayoutMorph newColumn
		morphExtent: 60 @ 130;
		yourself
! !


!ContenedorDeSe�alesDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 13:52:12'!
apagarTodasLasSe�ales
	
	laSe�alDeAvance apagar.
	laSe�alDeDetencion apagar.
	laSe�alDePrecaucion apagar.! !

!ContenedorDeSe�alesDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 15:30:43'!
avisarAvanceDelTransito
	
	laSe�alDeDetencion apagar.
	laSe�alDeAvance prender.! !

!ContenedorDeSe�alesDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 15:30:12'!
avisarDetencionDelTransito
	
	laSe�alDePrecaucion apagar.
	laSe�alDeDetencion prender.! !

!ContenedorDeSe�alesDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 15:29:10'!
avisarPrecaucionPorDetencion
	
	laSe�alDeAvance apagar.
	laSe�alDePrecaucion prender.! !

!ContenedorDeSe�alesDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 13:45:34'!
avisarPrecaucionPorEncendido
	
	5 timesRepeat: [
		self titilarSe�alDePrecaucion.
	].! !

!ContenedorDeSe�alesDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 16:06:45'!
initialize
	
	laSe�alDeAvance := Se�alDeAvance clone.
	laSe�alDeDetencion := Se�alDeDetencion clone.
	laSe�alDePrecaucion := Se�alDePrecaucion clone.! !

!ContenedorDeSe�alesDeTransito class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 13:45:14'!
titilarSe�alDePrecaucion
	
	laSe�alDePrecaucion prender.
	(Delay for: 1*second) wait.
	
	laSe�alDePrecaucion apagar.
	(Delay for: 1*second) wait.! !


!ContenedorDeSe�alesDeTransito class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	laSe�alDeAvance := nil.
	laSe�alDeDetencion := nil.
	laSe�alDePrecaucion := nil.! !


!classDefinition: #elContenedorDeSe�alesSobreCorrientes category: #'01-Semaforo'!
ContenedorDeSe�alesDeTransito subclass: #elContenedorDeSe�alesSobreCorrientes
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'elContenedorDeSe�alesSobreCorrientes class' category: #'01-Semaforo'!
elContenedorDeSe�alesSobreCorrientes class
	instanceVariableNames: ''!

!elContenedorDeSe�alesSobreCorrientes class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	laSe�alDeAvance := Se�alDeAvance4.
	laSe�alDeDetencion := Se�alDeDetencion5.
	laSe�alDePrecaucion := Se�alDePrecaucion6.! !


!classDefinition: #elContenedorDeSe�alesSobreMaipu category: #'01-Semaforo'!
ContenedorDeSe�alesDeTransito subclass: #elContenedorDeSe�alesSobreMaipu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'elContenedorDeSe�alesSobreMaipu class' category: #'01-Semaforo'!
elContenedorDeSe�alesSobreMaipu class
	instanceVariableNames: ''!

!elContenedorDeSe�alesSobreMaipu class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	morph := nil.
	laSe�alDeAvance := Se�alDeAvance1.
	laSe�alDeDetencion := Se�alDeDetencion2.
	laSe�alDePrecaucion := Se�alDePrecaucion3.! !


!classDefinition: #SemaforoDeInterseccionDeDosCalles category: #'01-Semaforo'!
DenotativeObject subclass: #SemaforoDeInterseccionDeDosCalles
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '01-Semaforo'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SemaforoDeInterseccionDeDosCalles class' category: #'01-Semaforo'!
SemaforoDeInterseccionDeDosCalles class
	instanceVariableNames: 'se�alesDeLaCalleQueComienzaAvanzando se�alesDeLaCalleQueComienzaDetenida cantidadDeAlternaciones'!

!SemaforoDeInterseccionDeDosCalles class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 15:37:45'!
alternarSe�alesDeTransito
	|auxContenedorDeSe�ales|
	
	cantidadDeAlternaciones timesRepeat: [
		se�alesDeLaCalleQueComienzaAvanzando avisarAvanceDelTransito.
		se�alesDeLaCalleQueComienzaDetenida avisarDetencionDelTransito.
		(Delay for: 10*second) wait.
		
		se�alesDeLaCalleQueComienzaAvanzando avisarPrecaucionPorDetencion.
		(Delay for: 3*second) wait.
		
		auxContenedorDeSe�ales := se�alesDeLaCalleQueComienzaAvanzando.
		se�alesDeLaCalleQueComienzaAvanzando := se�alesDeLaCalleQueComienzaDetenida.
		se�alesDeLaCalleQueComienzaDetenida := auxContenedorDeSe�ales.
	].! !

!SemaforoDeInterseccionDeDosCalles class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 14:24:48'!
apagar
	
	se�alesDeLaCalleQueComienzaAvanzando apagarTodasLasSe�ales.
	se�alesDeLaCalleQueComienzaDetenida apagarTodasLasSe�ales.! !

!SemaforoDeInterseccionDeDosCalles class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 14:40:30'!
avisarPrecaucionPorEncendido
	
	5 timesRepeat: [
		se�alesDeLaCalleQueComienzaAvanzando titilarSe�alDePrecaucion.
		se�alesDeLaCalleQueComienzaDetenida titilarSe�alDePrecaucion.
	].
	
	! !

!SemaforoDeInterseccionDeDosCalles class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 15:41:05'!
openInWorld
	
	se�alesDeLaCalleQueComienzaAvanzando openInWorld.
	se�alesDeLaCalleQueComienzaDetenida openInWorld.
	! !

!SemaforoDeInterseccionDeDosCalles class methodsFor: 'semaforil' stamp: 'FC 4/8/2019 14:53:08'!
prender
	
	self avisarPrecaucionPorEncendido.
	self alternarSe�alesDeTransito.
	
	! !


!SemaforoDeInterseccionDeDosCalles class methodsFor: 'as yet unclassified' stamp: 'FC 4/8/2019 16:09:05'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	se�alesDeLaCalleQueComienzaAvanzando := AnObsoleteElContenedorDeSe�alesDeTransitoSobreMaipu.
	se�alesDeLaCalleQueComienzaDetenida := AnObsoleteElContenedorDeSe�alesDeTransitoSobreCorrientes.
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

	se�alesDeLaCalleQueComienzaAvanzando := elContenedorDeSe�alesSobreCorrientes.
	se�alesDeLaCalleQueComienzaDetenida := elContenedorDeSe�alesSobreMaipu.
	cantidadDeAlternaciones := 3.! !

Se�alDeTransito initializeAfterFileIn!
Se�alDeAvance initializeAfterFileIn!
Se�alDeAvance1 initializeAfterFileIn!
Se�alDeAvance4 initializeAfterFileIn!
Se�alDeDetencion initializeAfterFileIn!
Se�alDeDetencion2 initializeAfterFileIn!
Se�alDeDetencion5 initializeAfterFileIn!
Se�alDePrecaucion initializeAfterFileIn!
Se�alDePrecaucion3 initializeAfterFileIn!
Se�alDePrecaucion6 initializeAfterFileIn!
ContenedorDeSe�alesDeTransito initialize!
ContenedorDeSe�alesDeTransito initializeAfterFileIn!
elContenedorDeSe�alesSobreCorrientes initializeAfterFileIn!
elContenedorDeSe�alesSobreMaipu initializeAfterFileIn!
SemaforoDeInterseccionDeDosCalles initializeAfterFileIn!
elSemaforoDeMaipuYCorrientes initializeAfterFileIn!