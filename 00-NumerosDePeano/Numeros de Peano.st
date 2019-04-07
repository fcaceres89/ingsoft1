!classDefinition: #I category: #'Numeros de Peano'!
DenotativeObject subclass: #I
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros de Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'I class' category: #'Numeros de Peano'!
I class
	instanceVariableNames: 'next descripcionDeErrorDeNumerosNegativosNoSoportados descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor'!

!I class methodsFor: 'as yet unclassified' stamp: 'LLR 3/30/2019 12:44:10'!
* unNumeroDePeano
	^ unNumeroDePeano! !

!I class methodsFor: 'as yet unclassified' stamp: 'LLR 3/30/2019 12:44:26'!
+ unNumeroDePeano
	^ unNumeroDePeano next! !

!I class methodsFor: 'as yet unclassified' stamp: 'LLR 3/30/2019 14:15:32'!
- unNumeroDePeano
  self error: descripcionDeErrorDeNumerosNegativosNoSoportados! !

!I class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 01:54:03'!
/ unNumeroDePeano

	unNumeroDePeano  = self and: [^self].
	" ifTrue: [^self]. "
	
	self errorNoSePuedeDividirPorUnNumeroMayor .
	! !

!I class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 01:25:14'!
descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor
	^ descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor! !

!I class methodsFor: 'as yet unclassified' stamp: 'LLR 3/30/2019 14:19:41'!
descripcionDeErrorDeNumerosNegativosNoSoportados
	^ descripcionDeErrorDeNumerosNegativosNoSoportados! !

!I class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:11:51'!
errorNoSePuedeDividirPorUnNumeroMayor
	self error: self descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor .
	! !

!I class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 01:39:08'!
errorNumerosNegativosNoSoportados
	self error: descripcionDeErrorDeNumerosNegativosNoSoportados .
	! !

!I class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:16:38'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := II.
	descripcionDeErrorDeNumerosNegativosNoSoportados := 'Numeros negativos no soportados'.
	descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor := 'No se puede dividir por un número mayor'.! !

!I class methodsFor: 'as yet unclassified' stamp: 'LLR 3/30/2019 12:49:11'!
next
	^next! !


!classDefinition: #II category: #'Numeros de Peano'!
DenotativeObject subclass: #II
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros de Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'II class' category: #'Numeros de Peano'!
II class
	instanceVariableNames: 'next previous descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor'!

!II class methodsFor: 'as yet unclassified' stamp: 'LLR 3/30/2019 15:19:18'!
* unNumeroDePeano

	unNumeroDePeano = I and: [^ self]. "ifTrue: [^ self]."
	^self * unNumeroDePeano previous + self! !

!II class methodsFor: 'as yet unclassified' stamp: 'LLR 3/30/2019 12:45:52'!
+ unNumeroDePeano

	^self previous + unNumeroDePeano next! !

!II class methodsFor: 'as yet unclassified' stamp: 'LLR 3/30/2019 15:19:51'!
- unNumeroDePeano
	unNumeroDePeano = I and: [^self previous]. "ifTrue: [^self previous]."
	^self previous - unNumeroDePeano previous! !

!II class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:00'!
/ unNumeroDePeano

	
	self = unNumeroDePeano and: [^I]. "ifTrue:[^I]."
	^ ([self - unNumeroDePeano]  on: Error do:[ I errorNoSePuedeDividirPorUnNumeroMayor]) / unNumeroDePeano + I .! !

!II class methodsFor: 'as yet unclassified' stamp: 'LLR 3/30/2019 14:25:55'!
descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor
	^ descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor! !

!II class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:16:38'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := III.
	previous := I.
	descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor := 'No se puede dividir por un número mayor'.! !

!II class methodsFor: 'as yet unclassified' stamp: 'LLR 3/30/2019 15:22:55'!
next

	"next ifNil:"
	next = nil and:
	[
			next := self cloneNamed: (self name, 'I').
			next previous: self.
			
	].
	^ next.
	! !

!II class methodsFor: 'as yet unclassified' stamp: 'LLR 3/30/2019 12:47:36'!
previous
	^ previous! !

!II class methodsFor: 'as yet unclassified' stamp: 'LLR 3/30/2019 12:59:32'!
previous: unNumeroDePeano
	previous := unNumeroDePeano! !

!II class methodsFor: 'as yet unclassified' stamp: 'LLR 3/30/2019 12:48:08'!
removeAllNext

	next ifNotNil:
	[
		next removeAllNext.
		next removeFromSystem.
		next := nil.
	]
! !


!classDefinition: #III category: #'Numeros de Peano'!
DenotativeObject subclass: #III
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros de Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'III class' category: #'Numeros de Peano'!
III class
	instanceVariableNames: 'next previous descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor'!

!III class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:43'!
* unNumeroDePeano

	unNumeroDePeano = I and: [^ self]. "ifTrue: [^ self]."
	^self * unNumeroDePeano previous + self! !

!III class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:43'!
+ unNumeroDePeano

	^self previous + unNumeroDePeano next! !

!III class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:43'!
- unNumeroDePeano
	unNumeroDePeano = I and: [^self previous]. "ifTrue: [^self previous]."
	^self previous - unNumeroDePeano previous! !

!III class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:43'!
/ unNumeroDePeano

	
	self = unNumeroDePeano and: [^I]. "ifTrue:[^I]."
	^ ([self - unNumeroDePeano]  on: Error do:[ I errorNoSePuedeDividirPorUnNumeroMayor]) / unNumeroDePeano + I .! !

!III class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:43'!
descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor
	^ descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor! !

!III class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:16:38'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := IIII.
	previous := II.
	descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor := 'No se puede dividir por un número mayor'.! !

!III class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:43'!
next

	"next ifNil:"
	next = nil and:
	[
			next := self cloneNamed: (self name, 'I').
			next previous: self.
			
	].
	^ next.
	! !

!III class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:43'!
previous
	^ previous! !

!III class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:43'!
previous: unNumeroDePeano
	previous := unNumeroDePeano! !

!III class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:43'!
removeAllNext

	next ifNotNil:
	[
		next removeAllNext.
		next removeFromSystem.
		next := nil.
	]
! !


!classDefinition: #IIII category: #'Numeros de Peano'!
DenotativeObject subclass: #IIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros de Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIII class' category: #'Numeros de Peano'!
IIII class
	instanceVariableNames: 'next previous descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor'!

!IIII class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:47'!
* unNumeroDePeano

	unNumeroDePeano = I and: [^ self]. "ifTrue: [^ self]."
	^self * unNumeroDePeano previous + self! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:47'!
+ unNumeroDePeano

	^self previous + unNumeroDePeano next! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:47'!
- unNumeroDePeano
	unNumeroDePeano = I and: [^self previous]. "ifTrue: [^self previous]."
	^self previous - unNumeroDePeano previous! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:47'!
/ unNumeroDePeano

	
	self = unNumeroDePeano and: [^I]. "ifTrue:[^I]."
	^ ([self - unNumeroDePeano]  on: Error do:[ I errorNoSePuedeDividirPorUnNumeroMayor]) / unNumeroDePeano + I .! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:47'!
descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor
	^ descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:16:38'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := nil.
	previous := III.
	descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor := 'No se puede dividir por un número mayor'.! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:47'!
next

	"next ifNil:"
	next = nil and:
	[
			next := self cloneNamed: (self name, 'I').
			next previous: self.
			
	].
	^ next.
	! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:47'!
previous
	^ previous! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:47'!
previous: unNumeroDePeano
	previous := unNumeroDePeano! !

!IIII class methodsFor: 'as yet unclassified' stamp: 'LLR 4/7/2019 02:09:47'!
removeAllNext

	next ifNotNil:
	[
		next removeAllNext.
		next removeFromSystem.
		next := nil.
	]
! !

I initializeAfterFileIn!
II initializeAfterFileIn!
III initializeAfterFileIn!
IIII initializeAfterFileIn!