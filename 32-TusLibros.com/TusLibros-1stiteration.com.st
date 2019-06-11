!classDefinition: #TestX category: #'TusLibros.com'!
TestCase subclass: #TestX
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros.com'!

!TestX methodsFor: 'as yet unclassified' stamp: 'LLR 6/9/2019 13:13:16'!
test01ANewCartIsCreatedWithoutAnyBook
	| cart |
	cart := Cart initializeWith: Catalog new.
	self assert: cart isEmpty.! !

!TestX methodsFor: 'as yet unclassified' stamp: 'LLR 6/11/2019 10:57:28'!
test02TheCartHasOnlyOneBookWhenABookIsAdded
	| aCart  aBook aCatalog |
	aCatalog := Catalog new.
	aCart := Cart initializeWith: aCatalog. 
	aBook := Book new.
	aCatalog add: aBook.
	aCart add: aBook.
	self assert: aCart size == 1.! !

!TestX methodsFor: 'as yet unclassified' stamp: 'LLR 6/11/2019 10:55:11'!
test03CanNotAddABookThatDoesNotBelongToStore
	| aCart  aBook|
	aCart := Cart initializeWith: Catalog new.
	aBook := Book new.
	
	self 
		should: [ aCart add: aBook. ]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: Cart canNotAddABookThatDoesNotBelongToStore ]
	
	! !

!TestX methodsFor: 'as yet unclassified' stamp: 'LLR 6/11/2019 11:16:22'!
test04AddingTwoDifferentBooksAreListedInCart
	| aCart  aBook aCatalog anotherBook |
	aCatalog := Catalog new.
	aCart := Cart initializeWith: aCatalog. 
	aBook := Book new.
	anotherBook := Book new.
	
	aCatalog add: aBook.
	aCatalog add: anotherBook.
	
	aCart add: aBook.
	aCart add: anotherBook.
	
	self assert: aCart size == 2.
	self assert: ((aCart list includes: aBook) and: (aCart list includes: anotherBook)).! !

!TestX methodsFor: 'as yet unclassified' stamp: 'LLR 6/11/2019 11:18:53'!
test05AddingTwoCopiesOfTheSameBooksAreListedInCart
	| aCart  aBook aCatalog |
	aCatalog := Catalog new.
	aCart := Cart initializeWith: aCatalog. 
	aBook := Book new.
	
	aCatalog add: aBook.
	
	aCart add: aBook.
	aCart add: aBook.
	
	self assert: aCart size == 2.
	self assert: ((aCart list includes: aBook) and: (aCart list includes: aBook)).! !


!classDefinition: #Book category: #'TusLibros.com'!
Object subclass: #Book
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros.com'!


!classDefinition: #Cart category: #'TusLibros.com'!
Object subclass: #Cart
	instanceVariableNames: 'contents catalog'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros.com'!

!Cart methodsFor: 'initialization' stamp: 'LLR 6/9/2019 13:11:05'!
initializeWith: aCatalog
	contents := Bag new. 
	catalog := aCatalog.! !


!Cart methodsFor: 'status check' stamp: 'LLR 6/9/2019 12:43:00'!
isEmpty
	^ contents isEmpty.! !

!Cart methodsFor: 'status check' stamp: 'LLR 6/9/2019 12:51:18'!
size
	^ contents size.! !


!Cart methodsFor: 'operation' stamp: 'LLR 6/11/2019 10:48:42'!
add: aBook 
	(catalog contains: aBook) ifFalse: [self error: self class canNotAddABookThatDoesNotBelongToStore].
	contents add: aBook! !


!Cart methodsFor: 'as yet unclassified' stamp: 'LLR 6/11/2019 11:16:49'!
list
	^ contents.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Cart class' category: #'TusLibros.com'!
Cart class
	instanceVariableNames: ''!

!Cart class methodsFor: 'as yet unclassified' stamp: 'LLR 6/11/2019 10:36:42'!
canNotAddABookThatDoesNotBelongToStore
	^ 'Can not add a book that does not belong to the catalog'.! !

!Cart class methodsFor: 'as yet unclassified' stamp: 'LLR 6/9/2019 13:12:15'!
initializeWith: aCatalog
	^ self new initializeWith: aCatalog ! !


!classDefinition: #Catalog category: #'TusLibros.com'!
Object subclass: #Catalog
	instanceVariableNames: 'books'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros.com'!

!Catalog methodsFor: 'as yet unclassified' stamp: 'LLR 6/11/2019 10:57:28'!
add: aBook
	books add: aBook.! !

!Catalog methodsFor: 'as yet unclassified' stamp: 'LLR 6/11/2019 10:49:20'!
contains: aBook
	^ books includes: aBook.! !

!Catalog methodsFor: 'as yet unclassified' stamp: 'LLR 6/9/2019 13:10:10'!
initialize
	books := Set new.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Catalog class' category: #'TusLibros.com'!
Catalog class
	instanceVariableNames: ''!

!Catalog class methodsFor: 'as yet unclassified' stamp: 'LLR 6/9/2019 13:08:54'!
initialize
  ^ self new initialize! !

Catalog initialize!