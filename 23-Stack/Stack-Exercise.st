!classDefinition: #OOStackTest category: #'Stack-Exercise'!
TestCase subclass: #OOStackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:30'!
test01StackShouldBeEmptyWhenCreated

	| stack |
	
	stack := OOStack new.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'LLR 4/18/2019 23:48:44'!
test02PushAddElementsToTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'Something'.
	
	self deny: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:31'!
test03PopRemovesElementsFromTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'Something'.
	stack pop.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/8/2012 08:20'!
test04PopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'Something'.
	stack push: pushedObject.
	
	self assert: stack pop = pushedObject! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:33'!
test05StackBehavesLIFO

	| stack firstPushedObject secondPushedObject |
	
	stack := OOStack new.
	firstPushedObject := 'First'.
	secondPushedObject := 'Second'.
	
	stack push: firstPushedObject.
	stack push: secondPushedObject.
	
	self assert: stack pop = secondPushedObject.
	self assert: stack pop = firstPushedObject.
	self assert: stack isEmpty 
	! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:35'!
test06TopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'Something'.
	
	stack push: pushedObject.
	
	self assert: stack top = pushedObject.
	! !

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:36'!
test07TopDoesNotRemoveObjectFromStack

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'Something'.
	
	stack push: pushedObject.
	
	self assert: stack size = 1.
	stack top.
	self assert: stack size = 1.
	! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:26'!
test08CanNotPopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:36'!
test09CanNotPopWhenThereAreNoObjectsInTheStackAndTheStackHadObjects

	| stack  |
	
	stack := OOStack new.
	stack push: 'Something'.
	stack pop.
	
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:44'!
test10CanNotTopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack top ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !


!classDefinition: #SentenceFinderByPrefixTest category: #'Stack-Exercise'!
TestCase subclass: #SentenceFinderByPrefixTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefixTest methodsFor: 'test' stamp: 'LLR 4/20/2019 21:01:46'!
test01CanNotSendAnEmptyPrefixAsMessage

	| stack emptyPrefix |
	
	stack := OOStack new.
	emptyPrefix := ''.
	
	self
		should: [ (SentenceFinderByPrefix with: stack) find: emptyPrefix ]
		raise:  Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = SentenceFinderByPrefix prefixEmptyErrorDescription ]
		! !

!SentenceFinderByPrefixTest methodsFor: 'test' stamp: 'LLR 4/20/2019 21:27:59'!
test02CanNotSendAPrefixWithSpacesAsMessage

	| stack prefixWithSpace |
	
	stack := OOStack new.
	prefixWithSpace := 'search text with spaces'.
	
	self
		should: [ (SentenceFinderByPrefix with: stack) find: prefixWithSpace ]
		raise:  Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = SentenceFinderByPrefix prefixCanNotContainSpacesErrorDescription ]
		! !

!SentenceFinderByPrefixTest methodsFor: 'test' stamp: 'LLR 4/20/2019 21:04:55'!
test03SearchAnyPrefixOverAnEmptyStackRetunsNoElements
	| stack prefixToSearch |
	
	stack := OOStack new.
	prefixToSearch := 'anytextnospaces'.
	
	self assert: ((SentenceFinderByPrefix with: stack) find: prefixToSearch) isEmpty
		! !

!SentenceFinderByPrefixTest methodsFor: 'test' stamp: 'LLR 4/20/2019 21:35:28'!
test04SearchAnyPrefixThatIsNotInTheStackReturnsNoElements
	| stack prefixToSearch |
	
	stack := OOStack new.
	stack push: 'Tony'.
	stack push: 'Banner'.
	stack push: 'Logan'.
	
	prefixToSearch := 'NotInStackText'.
	
	
	self assert: ((SentenceFinderByPrefix with: stack) find: prefixToSearch) isEmpty
		! !

!SentenceFinderByPrefixTest methodsFor: 'test' stamp: 'LLR 4/20/2019 21:52:49'!
test05SearchAPrefixReturnsOnlyTheCaseSensitiveResults
	| stack prefixToSearch str1 str2 str3 str4 result|
	
	prefixToSearch := 'Sun'.
	str1 := 'Sunny Day at School'.
	str2 := 'It is the sun'. 
	str3 := 'sun is raising'.
	str4 := 'Sun is raising'.
	
	
	stack := OOStack new.
	stack push: str1.
	stack push: str2.
	stack push: str3.
	stack push: str4.
	
	result := ((SentenceFinderByPrefix with: stack) find: prefixToSearch).
	
	self assert: ((result pop = str1) and: (result pop = str4))
		! !

!SentenceFinderByPrefixTest methodsFor: 'test' stamp: 'LLR 4/20/2019 21:55:50'!
test06OnceSentenceFinderByPrefixEndsSearchingTheElementsOfTheStackAreInSameOrder
      | stack prefixToSearch str1 str2 str3 str4 workStack|
	
	prefixToSearch := 'Sun'.
	str1 := 'Sunny Day at School'.
	str2 := 'It is the sun'. 
	str3 := 'sun is raising'.
	str4 := 'Sun is raising'.
	
	
	stack := OOStack new.
	stack push: str1.
	stack push: str2.
	stack push: str3.
	stack push: str4.
	
	((SentenceFinderByPrefix with: stack) find: prefixToSearch).
	
	workStack := stack copy.
	
	self assert: ((workStack pop = str4) and: (workStack pop = str3) and: (workStack pop = str2) and: (workStack pop = str1))
		! !


!classDefinition: #OOStack category: #'Stack-Exercise'!
Object subclass: #OOStack
	instanceVariableNames: 'element'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStack methodsFor: 'initialization' stamp: 'LLR 4/18/2019 21:05:01'!
initialize
	element := EmptyElement new.! !


!OOStack methodsFor: 'operations' stamp: 'LLR 4/18/2019 20:01:09'!
isEmpty
	^ element isEmpty ! !

!OOStack methodsFor: 'operations' stamp: 'LLR 4/18/2019 23:51:55'!
pop
	|atTop|
	atTop := element top.
	element := element next.
	
	^ atTop ! !

!OOStack methodsFor: 'operations' stamp: 'LLR 4/18/2019 23:55:16'!
push: unaCadenaElemento
	element := element push: unaCadenaElemento.! !

!OOStack methodsFor: 'operations' stamp: 'LLR 4/18/2019 21:54:21'!
size
	^element size.! !

!OOStack methodsFor: 'operations' stamp: 'LLR 4/19/2019 00:23:07'!
top
	^ element top.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStack class' category: #'Stack-Exercise'!
OOStack class
	instanceVariableNames: ''!

!OOStack class methodsFor: 'error descriptions' stamp: 'HernanWilkinson 5/7/2012 11:51'!
stackEmptyErrorDescription
	
	^ 'Stack is empty'! !


!classDefinition: #SentenceFinderByPrefix category: #'Stack-Exercise'!
Object subclass: #SentenceFinderByPrefix
	instanceVariableNames: 'stack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefix methodsFor: 'initialization' stamp: 'LLR 4/20/2019 18:01:04'!
initializeWith: aStack
	stack := aStack! !


!SentenceFinderByPrefix methodsFor: 'operations' stamp: 'LLR 4/20/2019 21:35:49'!
find: aPrefix 
	" Returns the messages of the aStack that start with aPrefix - Case sensitive. No empty and no spaces allowed in aPrefix. "
	|result workStack currentValue | 
	
	
	(aPrefix size = 0)  ifTrue: [^ self error: self class prefixEmptyErrorDescription ] .
	(aPrefix findString: ' ')  > 0 ifTrue: [^ self error: self class prefixCanNotContainSpacesErrorDescription ] .
	
	result := OOStack new.
	
	workStack := stack copy.
	
	[workStack isEmpty ] whileFalse:
		[ currentValue := workStack pop.
		      (currentValue beginsWith: aPrefix) ifTrue: [result push: currentValue]
		].
	
	"The exercise hasn't order requirements over the result :)"
	 ^ result! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SentenceFinderByPrefix class' category: #'Stack-Exercise'!
SentenceFinderByPrefix class
	instanceVariableNames: ''!

!SentenceFinderByPrefix class methodsFor: 'error descriptions' stamp: 'LLR 4/20/2019 16:14:01'!
prefixCanNotContainSpacesErrorDescription
	
	^ 'The Prefix can not contain spaces'! !

!SentenceFinderByPrefix class methodsFor: 'error descriptions' stamp: 'LLR 4/20/2019 16:11:30'!
prefixEmptyErrorDescription
	
	^ 'The Prefix can not be empty'! !


!SentenceFinderByPrefix class methodsFor: 'instance creation' stamp: 'LLR 4/20/2019 18:04:55'!
with: aStack
	^ SentenceFinderByPrefix new initializeWith: aStack! !


!classDefinition: #StackElement category: #'Stack-Exercise'!
Object subclass: #StackElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!StackElement methodsFor: 'operations' stamp: 'LLR 4/18/2019 19:37:24'!
isEmpty
	self subclassResponsibility ! !

!StackElement methodsFor: 'operations' stamp: 'LLR 4/19/2019 00:26:54'!
pop
	self subclassResponsibility ! !

!StackElement methodsFor: 'operations' stamp: 'LLR 4/19/2019 00:27:00'!
push: aString
	self subclassResponsibility ! !

!StackElement methodsFor: 'operations' stamp: 'LLR 4/19/2019 00:27:10'!
size
	self subclassResponsibility ! !

!StackElement methodsFor: 'operations' stamp: 'LLR 4/19/2019 00:27:06'!
top
	self subclassResponsibility ! !


!classDefinition: #EmptyElement category: #'Stack-Exercise'!
StackElement subclass: #EmptyElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!EmptyElement methodsFor: 'operations' stamp: 'LLR 4/18/2019 19:38:49'!
isEmpty
	^ true! !

!EmptyElement methodsFor: 'operations' stamp: 'LLR 4/18/2019 23:50:23'!
pop
	self error: OOStack stackEmptyErrorDescription! !

!EmptyElement methodsFor: 'operations' stamp: 'LLR 4/19/2019 00:06:08'!
push: aString
	| node |
	
	node := NodeElement new with: aString.
	
	^ node ! !

!EmptyElement methodsFor: 'operations' stamp: 'LLR 4/18/2019 21:52:59'!
size
	^ 0! !

!EmptyElement methodsFor: 'operations' stamp: 'LLR 4/18/2019 22:38:02'!
top
	self error: OOStack stackEmptyErrorDescription! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EmptyElement class' category: #'Stack-Exercise'!
EmptyElement class
	instanceVariableNames: 'uniqueInstance'!

!EmptyElement class methodsFor: 'instance creation' stamp: 'LLR 4/18/2019 19:47:55'!
initialize

	uniqueInstance := self basicNew ! !


!classDefinition: #NodeElement category: #'Stack-Exercise'!
StackElement subclass: #NodeElement
	instanceVariableNames: 'value nextElement'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!NodeElement methodsFor: 'initialization' stamp: 'LLR 4/19/2019 00:15:41'!
with: aString 
	self with: aString next: EmptyElement  new.! !

!NodeElement methodsFor: 'initialization' stamp: 'LLR 4/19/2019 00:15:21'!
with: aString next: nextNode
	value := aString.
	nextElement := nextNode.! !


!NodeElement methodsFor: 'operations' stamp: 'LLR 4/19/2019 00:08:07'!
isEmpty
	^ false! !

!NodeElement methodsFor: 'operations' stamp: 'LLR 4/18/2019 23:52:25'!
next
	^ nextElement ! !

!NodeElement methodsFor: 'operations' stamp: 'LLR 4/19/2019 00:17:20'!
push: aString
	| node |
	
	node := NodeElement new with: aString next: self.
	
	^ node ! !

!NodeElement methodsFor: 'operations' stamp: 'LLR 4/19/2019 00:24:43'!
size
	^ 1+nextElement size.
	! !

!NodeElement methodsFor: 'operations' stamp: 'LLR 4/18/2019 23:53:20'!
top
	^ value ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NodeElement class' category: #'Stack-Exercise'!
NodeElement class
	instanceVariableNames: 'value nextElement'!


!NodeElement class methodsFor: 'operations' stamp: 'LLR 4/18/2019 23:49:29'!
isEmpty
	^ false! !

EmptyElement initialize!