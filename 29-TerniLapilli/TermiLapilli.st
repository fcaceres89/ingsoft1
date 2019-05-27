!classDefinition: #TermiLapilliTest category: #TermiLapilli!
TestCase subclass: #TermiLapilliTest
	instanceVariableNames: 'tateti'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TermiLapilli'!

!TermiLapilliTest methodsFor: 'setUp' stamp: 'FC 5/23/2019 17:07:39'!
setUp

	tateti := TermiLapilli new! !


!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/23/2019 20:13:57'!
test01PlayerXPutsFirst

	tateti putAt: 1@1.
	
	self deny: tateti isOver.
	self assert: (tateti is: #X at: 1@1).
	self assert: tateti currentPlayer equals: #O! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/23/2019 20:14:19'!
test02PlayerOPutsAfterPlayerX

	tateti putAt: 1@1.
	tateti putAt: 0@0.
	
	self deny: tateti isOver.
	self assert: (tateti is: #O at: 0@0).
	self assert: tateti currentPlayer equals: #X! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/23/2019 20:14:37'!
test03PlayerXPutsMoreThanOnce

	tateti putAt: 1@1.
	tateti putAt: 0@0.
	tateti putAt: 2@2.
	
	self deny: tateti isOver.
	self assert: (tateti is: #X at: 1@1).
	self assert: (tateti is: #X at: 2@2).! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/23/2019 20:14:46'!
test04PlayerOPutsMoreThanOnce

	tateti putAt: 1@1.
	tateti putAt: 0@0.
	tateti putAt: 2@2.
	tateti putAt: 0@1.
	
	self deny: tateti isOver.
	self assert: (tateti is: #O at: 0@0).
	self assert: (tateti is: #O at: 0@1).! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/23/2019 20:15:50'!
test05CanNotPutAtAPositionWithAColumnNumberHigherThanPermitted

	self should: [tateti putAt: 0@3]
		raise: Error
		description: tateti class canNotPutAtAnOutOfBoardPositionErrorDescription! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/23/2019 20:16:02'!
test06CanNotPutAtAPositionWithAColumnNumberLowerThanPermitted

	self should: [tateti putAt: 0@-1]
		raise: Error
		description: tateti class canNotPutAtAnOutOfBoardPositionErrorDescription! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/23/2019 20:16:08'!
test07CanNotPutAtAPositionWithARowNumberHigherThanPermitted

	self should: [tateti putAt: 3@0]
		raise: Error
		description: tateti class canNotPutAtAnOutOfBoardPositionErrorDescription! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/23/2019 20:16:15'!
test08CanNotPutAtAPositionWithARowNumberLowerThanPermitted

	self should: [tateti putAt: -1@0]
		raise: Error
		description: tateti class canNotPutAtAnOutOfBoardPositionErrorDescription! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/23/2019 20:16:38'!
test09CanNotPutAtAPositionOccupiedByPlayerX

	tateti putAt: 1@1.
	
	self should: [tateti putAt: 1@1]
		raise: Error
		description: tateti class canNotPutAtAnOccupiedPositionErrorDescription! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/23/2019 20:16:43'!
test10CanNotPutAtAPositionOccupiedByPlayerO

	tateti putAt: 1@1.
	tateti putAt: 0@0.
	
	self should: [tateti putAt: 0@0]
		raise: Error
		description: tateti class canNotPutAtAnOccupiedPositionErrorDescription! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/27/2019 15:34:10'!
test11APlayerWinsInARowAfterPuttingAt

	tateti putAt: 0@0.
	tateti putAt: 1@0.
	tateti putAt: 0@1.
	tateti putAt: 1@1.
	tateti putAt: 0@2.
	
	self assert: tateti isOver.
	self assert: tateti winner equals: #X! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/27/2019 15:34:04'!
test12APlayerWinsInAColumnAfterPuttingAt

	tateti putAt: 0@0.
	tateti putAt: 0@1.
	tateti putAt: 1@0.
	tateti putAt: 1@1.
	tateti putAt: 2@0.
	
	self assert: tateti isOver.
	self assert: tateti winner equals: #X! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/27/2019 15:33:58'!
test13APlayerWinsInTheMainDiagonalAfterPuttingAt

	tateti putAt: 0@0.
	tateti putAt: 0@1.
	tateti putAt: 1@1.
	tateti putAt: 0@2.
	tateti putAt: 2@2.
	
	self assert: tateti isOver.
	self assert: tateti winner equals: #X! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/27/2019 15:34:21'!
test14APlayerWinsInTheSecondaryDiagonalAfterPuttingAt

	tateti putAt: 0@2.
	tateti putAt: 0@0.
	tateti putAt: 1@1.
	tateti putAt: 0@1.
	tateti putAt: 2@0.
	
	self assert: tateti isOver.
	self assert: tateti winner equals: #X! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/27/2019 15:33:07'!
test15CanNotContinuePuttingAtAfterGameIsOver

	tateti putAt: 0@0.
	tateti putAt: 1@0.
	tateti putAt: 0@1.
	tateti putAt: 1@1.
	tateti putAt: 0@2.
	
	self should: [tateti putAt: 1@2]
		raise: Error
		description: tateti class canNotContinuePlayingAfterGameIsOverErrorDescription! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/27/2019 15:17:58'!
test16PlayerXMovesFirst

	tateti putAt: 0@0.
	tateti putAt: 1@0.
	tateti putAt: 0@1.
	tateti putAt: 1@1.
	tateti putAt: 1@2.
	tateti putAt: 2@2.
	tateti moveFrom: 1@2 to: 2@0.
	
	self deny: tateti isOver.
	self deny: (tateti is: #X at: 1@2).
	self assert: (tateti is: #X at: 2@0).
	self assert: tateti currentPlayer equals: #O! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/27/2019 15:18:06'!
test17PlayerOMovesAfterPlayerO

	tateti putAt: 0@0.
	tateti putAt: 1@0.
	tateti putAt: 0@1.
	tateti putAt: 1@1.
	tateti putAt: 1@2.
	tateti putAt: 2@2.
	tateti moveFrom: 1@2 to: 2@0.
	tateti moveFrom: 2@2 to: 2@1.
	
	self deny: tateti isOver.
	self deny: (tateti is: #O at: 2@2).
	self assert: (tateti is: #O at: 2@1).
	self assert: tateti currentPlayer equals: #X! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/27/2019 15:19:26'!
test18CanNotMoveFromAnOutOfBoardPosition
	
	tateti putAt: 0@0.
	tateti putAt: 1@0.
	tateti putAt: 0@1.
	tateti putAt: 1@1.
	tateti putAt: 1@2.
	tateti putAt: 2@2.
	
	self should: [tateti moveFrom: 0@3 to: 0@2]
		raise: Error
		description: tateti class canNotMoveFromAnOutOfBoardPositionErrorDescription! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/27/2019 15:25:28'!
test19CanNotMoveFromAPositionNonOccupiedByTheCurrentPlayer
	
	tateti putAt: 0@0.
	tateti putAt: 1@0.
	tateti putAt: 0@1.
	tateti putAt: 1@1.
	tateti putAt: 1@2.
	tateti putAt: 2@2.
	
	self should: [tateti moveFrom: 0@2 to: 2@1]
		raise: Error
		description: tateti class canNotMoveFromAPositionNonOccupiedByTheCurrentPlayerErrorDescription! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/27/2019 15:27:26'!
test20CanNotMoveToAnOutOfBoardPosition
	
	tateti putAt: 0@0.
	tateti putAt: 1@0.
	tateti putAt: 0@1.
	tateti putAt: 1@1.
	tateti putAt: 1@2.
	tateti putAt: 2@2.
	
	self should: [tateti moveFrom: 1@2 to: 0@3]
		raise: Error
		description: tateti class canNotMoveToAnOutOfBoardPositionErrorDescription! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/27/2019 15:38:51'!
test21APlayerWinsAfterMoving

	tateti putAt: 0@0.
	tateti putAt: 1@0.
	tateti putAt: 0@1.
	tateti putAt: 1@1.
	tateti putAt: 1@2.
	tateti putAt: 2@2.
	tateti moveFrom: 1@2 to: 0@2.
	
	self assert: tateti isOver.
	self assert: tateti winner equals: #X! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/27/2019 15:40:40'!
test22CanNotContinueMovingAfterGameIsOver

	tateti putAt: 0@0.
	tateti putAt: 1@0.
	tateti putAt: 0@1.
	tateti putAt: 1@1.
	tateti putAt: 1@2.
	tateti putAt: 2@2.
	tateti moveFrom: 1@2 to: 0@2.
	
	self should: [tateti moveFrom: 2@2 to: 1@2]
		raise: Error
		description: tateti class canNotContinuePlayingAfterGameIsOverErrorDescription! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/27/2019 16:10:48'!
test23CanNotMoveOnPuttingAtPhase

	tateti putAt: 0@0.
	tateti putAt: 1@0.
	
	self should: [tateti moveFrom: 0@0 to: 0@2]
		raise: Error
		description: tateti class canNotMoveOnPuttingAtPhaseErrorDescription! !

!TermiLapilliTest methodsFor: 'testing' stamp: 'FC 5/27/2019 16:12:34'!
test24CanNotPutAtOnMovingPhase

	tateti putAt: 0@0.
	tateti putAt: 1@0.
	tateti putAt: 0@1.
	tateti putAt: 1@1.
	tateti putAt: 1@2.
	tateti putAt: 2@2.
	
	self should: [tateti putAt: 0@2]
		raise: Error
		description: tateti class canNotPutAtOnMovingPhaseErrorDescription! !


!classDefinition: #TermiLapilli category: #TermiLapilli!
Object subclass: #TermiLapilli
	instanceVariableNames: 'playerX playerO currentPlayer winner gameBehavior turnNumber'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TermiLapilli'!

!TermiLapilli methodsFor: 'testing' stamp: 'FC 5/23/2019 15:45:12'!
currentPlayer
	
	^ currentPlayer token! !

!TermiLapilli methodsFor: 'testing' stamp: 'FC 5/23/2019 17:25:04'!
is: aPlayerToken at: aPosition
	
	aPlayerToken = #X ifTrue: [^ playerX isAt: aPosition].
	aPlayerToken = #O ifTrue: [^ playerO isAt: aPosition].! !

!TermiLapilli methodsFor: 'testing' stamp: 'FC 5/23/2019 15:45:00'!
winner

	^ winner token! !


!TermiLapilli methodsFor: 'initialization' stamp: 'FC 5/27/2019 16:01:01'!
initialize
	
	self initializeTurn.
	self initializePlayers.
	self initializeBehavior! !

!TermiLapilli methodsFor: 'initialization' stamp: 'FC 5/27/2019 16:00:01'!
initializeBehavior
	
	gameBehavior := TermiLapilliInPuttingAtPhaseBehavior new! !

!TermiLapilli methodsFor: 'initialization' stamp: 'FC 5/23/2019 19:32:08'!
initializePlayers
	
	playerX := TermiLapilliPlayer representedBy: #X.
	playerO := TermiLapilliPlayer representedBy: #O.
	playerX nextPlayer: playerO.
	playerO nextPlayer: playerX.
	
	currentPlayer := playerX.! !

!TermiLapilli methodsFor: 'initialization' stamp: 'FC 5/27/2019 15:47:58'!
initializeTurn
	
	turnNumber := 1! !


!TermiLapilli methodsFor: 'assertions' stamp: 'FC 5/27/2019 15:25:43'!
assertPositionIsAvailableToMoveFrom: aPosition 
	
	(self isInBoard: aPosition)
		ifFalse: [self error: self class canNotMoveFromAnOutOfBoardPositionErrorDescription].
	
	(self isOccupiedByTheCurrentPlayer: aPosition)
		ifFalse: [self error: self class canNotMoveFromAPositionNonOccupiedByTheCurrentPlayerErrorDescription]! !

!TermiLapilli methodsFor: 'assertions' stamp: 'FC 5/27/2019 15:30:42'!
assertPositionIsAvailableToMoveTo: aPosition
	
	(self isInBoard: aPosition)
		ifFalse: [self error: self class canNotMoveToAnOutOfBoardPositionErrorDescription].
	
	(self isEmpty: aPosition)
		ifFalse: [self error: self class canNotMoveToAnOccupiedPositionErrorDescription]! !

!TermiLapilli methodsFor: 'assertions' stamp: 'FC 5/27/2019 15:30:10'!
assertPositionIsAvailableToPutAt: aPosition
	
	(self isInBoard: aPosition)
		ifFalse: [self error: self class canNotPutAtAnOutOfBoardPositionErrorDescription].
	
	(self isEmpty: aPosition)
		ifFalse: [self error: self class canNotPutAtAnOccupiedPositionErrorDescription]! !

!TermiLapilli methodsFor: 'assertions' stamp: 'FC 5/27/2019 15:32:39'!
isEmpty: aPosition 
	
	^ ((playerX isAt: aPosition) or: [(playerO isAt: aPosition)]) not! !

!TermiLapilli methodsFor: 'assertions' stamp: 'FC 5/27/2019 15:03:52'!
isInBoard: aPosition 
	
	^ (aPosition x >= 0) and: [aPosition x <= 2] and: [aPosition y >= 0] and: [aPosition y <= 2]! !

!TermiLapilli methodsFor: 'assertions' stamp: 'FC 5/27/2019 15:26:05'!
isOccupiedByTheCurrentPlayer: aPosition 
	
	^ currentPlayer isAt: aPosition! !


!TermiLapilli methodsFor: 'gameplay' stamp: 'FC 5/27/2019 13:40:04'!
declareWinner
	
	winner := currentPlayer.
	gameBehavior := TermiLapilliOverBehavior new! !

!TermiLapilli methodsFor: 'gameplay' stamp: 'FC 5/23/2019 18:21:28'!
isOver
	
	^ gameBehavior gameOver! !

!TermiLapilli methodsFor: 'gameplay' stamp: 'FC 5/27/2019 15:28:18'!
moveFrom: aPosition to: anotherPosition 
	
	self assertPositionIsAvailableToMoveFrom: aPosition.
	self assertPositionIsAvailableToMoveTo: anotherPosition.
	
	gameBehavior move: currentPlayer from: aPosition to: anotherPosition in: self! !

!TermiLapilli methodsFor: 'gameplay' stamp: 'FC 5/27/2019 16:07:43'!
nextTurn
	
	turnNumber := turnNumber + 1.
	turnNumber = 7 ifTrue: [ gameBehavior := TermiLapilliInMovingPhaseBehavior new ].
	
	currentPlayer := currentPlayer nextPlayer! !

!TermiLapilli methodsFor: 'gameplay' stamp: 'FC 5/27/2019 13:37:42'!
putAt: aPosition 
	
	self assertPositionIsAvailableToPutAt: aPosition.
	
	gameBehavior put: currentPlayer at: aPosition in: self! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TermiLapilli class' category: #TermiLapilli!
TermiLapilli class
	instanceVariableNames: ''!

!TermiLapilli class methodsFor: 'error messages' stamp: 'FC 5/23/2019 18:46:26'!
canNotContinuePlayingAfterGameIsOverErrorDescription
	
	^ 'Cannot continue playing after game is over'! !

!TermiLapilli class methodsFor: 'error messages' stamp: 'FC 5/27/2019 15:23:22'!
canNotMoveFromAPositionNonOccupiedByTheCurrentPlayerErrorDescription
	
	^ 'Cannot move from a position non occupied by the current player'! !

!TermiLapilli class methodsFor: 'error messages' stamp: 'FC 5/27/2019 14:58:08'!
canNotMoveFromAnOutOfBoardPositionErrorDescription
	
	^ 'Cannot move from an out-of-board position'! !

!TermiLapilli class methodsFor: 'error messages' stamp: 'FC 5/27/2019 16:11:18'!
canNotMoveOnPuttingAtPhaseErrorDescription
	
	^ 'Cannot move on putting at phase'! !

!TermiLapilli class methodsFor: 'error messages' stamp: 'FC 5/27/2019 15:31:03'!
canNotMoveToAnOccupiedPositionErrorDescription
	
	^ 'Cannot move to an occupied position'! !

!TermiLapilli class methodsFor: 'error messages' stamp: 'FC 5/27/2019 15:27:47'!
canNotMoveToAnOutOfBoardPositionErrorDescription
	
	^ 'Cannot move to an out-of-board position'! !

!TermiLapilli class methodsFor: 'error messages' stamp: 'FC 5/23/2019 18:40:53'!
canNotPutAtAnOccupiedPositionErrorDescription
	
	^ 'Cannot put at an occupied position'! !

!TermiLapilli class methodsFor: 'error messages' stamp: 'FC 5/23/2019 18:41:09'!
canNotPutAtAnOutOfBoardPositionErrorDescription
	
	^ 'Cannot put at an out-of-board position'! !

!TermiLapilli class methodsFor: 'error messages' stamp: 'FC 5/27/2019 16:11:26'!
canNotPutAtOnMovingPhaseErrorDescription
	
	^ 'Cannot put at on moving phase'! !


!classDefinition: #TermiLapilliBehavior category: #TermiLapilli!
Object subclass: #TermiLapilliBehavior
	instanceVariableNames: 'winningConditions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TermiLapilli'!

!TermiLapilliBehavior methodsFor: 'gameplay' stamp: 'FC 5/23/2019 18:15:51'!
gameOver

	^ self subclassResponsibility! !

!TermiLapilliBehavior methodsFor: 'gameplay' stamp: 'FC 5/27/2019 16:05:34'!
move: aPlayer from: aPosition to: anotherPosition in: aTerniLapilli

	self subclassResponsibility! !

!TermiLapilliBehavior methodsFor: 'gameplay' stamp: 'FC 5/27/2019 16:05:30'!
put: aPlayer at: aPosition in: aTerniLapilli

	self subclassResponsibility! !


!TermiLapilliBehavior methodsFor: 'initialization' stamp: 'FC 5/27/2019 13:36:41'!
initialize
	
	winningConditions := OrderedCollection new.
	winningConditions add: TermiLapilliWinningInRowCondition new.
	winningConditions add: TermiLapilliWinningInColumnCondition new.
	winningConditions add: TermiLapilliWinningInMainDiagonalCondition new.
	winningConditions add: TermiLapilliWinningInSecondaryDiagonalCondition new! !


!classDefinition: #TermiLapilliInProgressBehavior category: #TermiLapilli!
TermiLapilliBehavior subclass: #TermiLapilliInProgressBehavior
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TermiLapilli'!

!TermiLapilliInProgressBehavior methodsFor: 'gameplay' stamp: 'FC 5/27/2019 13:51:55'!
declareWinner: aPlayer ifNecessaryIn: aTerniLapilli
	
	winningConditions detect: [:aWinningCondition | aWinningCondition declaresWinner: aPlayer]
	 	ifNone: [aTerniLapilli nextTurn. ^self].
	
	aTerniLapilli declareWinner! !

!TermiLapilliInProgressBehavior methodsFor: 'gameplay' stamp: 'FC 5/23/2019 18:16:08'!
gameOver

	^ false! !

!TermiLapilliInProgressBehavior methodsFor: 'gameplay' stamp: 'FC 5/27/2019 15:51:31'!
move: aPlayer from: aPosition to: anotherPosition in: aTerniLapilli
	
	self subclassResponsibility! !

!TermiLapilliInProgressBehavior methodsFor: 'gameplay' stamp: 'FC 5/27/2019 15:59:02'!
put: aPlayer at: aPosition in: aTerniLapilli
	
	self subclassResponsibility! !


!classDefinition: #TermiLapilliInMovingPhaseBehavior category: #TermiLapilli!
TermiLapilliInProgressBehavior subclass: #TermiLapilliInMovingPhaseBehavior
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TermiLapilli'!

!TermiLapilliInMovingPhaseBehavior methodsFor: 'gameplay' stamp: 'FC 5/27/2019 15:51:16'!
move: aPlayer from: aPosition to: anotherPosition in: aTerniLapilli
	
	aPlayer moveFrom: aPosition to: anotherPosition.
	
	self declareWinner: aPlayer ifNecessaryIn: aTerniLapilli! !

!TermiLapilliInMovingPhaseBehavior methodsFor: 'gameplay' stamp: 'FC 5/27/2019 16:09:47'!
put: aPlayer at: aPosition in: aTerniLapilli

	self error: aTerniLapilli class canNotPutAtOnMovingPhaseErrorDescription! !


!classDefinition: #TermiLapilliInPuttingAtPhaseBehavior category: #TermiLapilli!
TermiLapilliInProgressBehavior subclass: #TermiLapilliInPuttingAtPhaseBehavior
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TermiLapilli'!

!TermiLapilliInPuttingAtPhaseBehavior methodsFor: 'gameplay' stamp: 'FC 5/27/2019 16:12:19'!
move: aPlayer from: aPosition to: anotherPosition in: aTerniLapilli

	self error: aTerniLapilli class canNotMoveOnPuttingAtPhaseErrorDescription! !

!TermiLapilliInPuttingAtPhaseBehavior methodsFor: 'gameplay' stamp: 'FC 5/27/2019 15:58:49'!
put: aPlayer at: aPosition in: aTerniLapilli
	
	aPlayer putAt: aPosition.
	
	self declareWinner: aPlayer ifNecessaryIn: aTerniLapilli! !


!classDefinition: #TermiLapilliOverBehavior category: #TermiLapilli!
TermiLapilliBehavior subclass: #TermiLapilliOverBehavior
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TermiLapilli'!

!TermiLapilliOverBehavior methodsFor: 'gameplay' stamp: 'FC 5/23/2019 18:16:40'!
gameOver

	^ true! !

!TermiLapilliOverBehavior methodsFor: 'gameplay' stamp: 'FC 5/27/2019 15:56:43'!
move: aPlayer from: aPosition to: anotherPosition in: aTerniLapilli
	
	self error: aTerniLapilli class canNotContinuePlayingAfterGameIsOverErrorDescription! !

!TermiLapilliOverBehavior methodsFor: 'gameplay' stamp: 'FC 5/27/2019 13:43:32'!
put: aPlayer at: aPosition in: aTerniLapilli
	
	self error: aTerniLapilli class canNotContinuePlayingAfterGameIsOverErrorDescription! !


!classDefinition: #TermiLapilliPlayer category: #TermiLapilli!
Object subclass: #TermiLapilliPlayer
	instanceVariableNames: 'takenPositions token nextPlayer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TermiLapilli'!

!TermiLapilliPlayer methodsFor: 'testing' stamp: 'FC 5/23/2019 14:42:23'!
isAt: aPosition

	^ takenPositions includes: aPosition! !

!TermiLapilliPlayer methodsFor: 'testing' stamp: 'FC 5/23/2019 14:47:06'!
token

	^ token! !


!TermiLapilliPlayer methodsFor: 'gameplay' stamp: 'FC 5/27/2019 14:41:23'!
moveFrom: aPosition to: anotherPosition
	
	takenPositions remove: aPosition ifAbsent: [].
	takenPositions add: anotherPosition! !

!TermiLapilliPlayer methodsFor: 'gameplay' stamp: 'FC 5/23/2019 14:56:20'!
nextPlayer

	^ nextPlayer! !

!TermiLapilliPlayer methodsFor: 'gameplay' stamp: 'FC 5/23/2019 14:46:42'!
putAt: aPosition

	takenPositions add: aPosition! !


!TermiLapilliPlayer methodsFor: 'initialization' stamp: 'FC 5/23/2019 14:34:48'!
initializeRepresentedBy: aToken

	token := aToken.
	takenPositions := OrderedCollection new.! !

!TermiLapilliPlayer methodsFor: 'initialization' stamp: 'FC 5/23/2019 17:14:00'!
nextPlayer: aTermiLapilliPlayer

	nextPlayer := aTermiLapilliPlayer! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TermiLapilliPlayer class' category: #TermiLapilli!
TermiLapilliPlayer class
	instanceVariableNames: ''!

!TermiLapilliPlayer class methodsFor: 'instance creation' stamp: 'FC 5/23/2019 14:33:32'!
representedBy: aToken

	^ self new initializeRepresentedBy: aToken! !


!classDefinition: #TermiLapilliWinningCondition category: #TermiLapilli!
Object subclass: #TermiLapilliWinningCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TermiLapilli'!

!TermiLapilliWinningCondition methodsFor: 'winning' stamp: 'FC 5/23/2019 17:36:18'!
declaresWinner: aTermiLapilliPlayer
	
	^ self subclassResponsibility! !


!classDefinition: #TermiLapilliWinningInColumnCondition category: #TermiLapilli!
TermiLapilliWinningCondition subclass: #TermiLapilliWinningInColumnCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TermiLapilli'!

!TermiLapilliWinningInColumnCondition methodsFor: 'winning' stamp: 'FC 5/27/2019 13:56:41'!
declaresWinner: aPlayer
	| isTheWinner |
	
	isTheWinner := false.
	
	0 to: 2 do: [ :columnNumber |
		((aPlayer isAt: 0@columnNumber) and:
		[aPlayer isAt: 1@columnNumber] and:
		[aPlayer isAt: 2@columnNumber])
			ifTrue: [isTheWinner := true] ].
	
	^ isTheWinner! !


!classDefinition: #TermiLapilliWinningInMainDiagonalCondition category: #TermiLapilli!
TermiLapilliWinningCondition subclass: #TermiLapilliWinningInMainDiagonalCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TermiLapilli'!

!TermiLapilliWinningInMainDiagonalCondition methodsFor: 'winning' stamp: 'FC 5/27/2019 13:56:49'!
declaresWinner: aPlayer
	
	^ (aPlayer isAt: 0@0) and:
		[aPlayer isAt: 1@1] and:
		[aPlayer isAt: 2@2]! !


!classDefinition: #TermiLapilliWinningInRowCondition category: #TermiLapilli!
TermiLapilliWinningCondition subclass: #TermiLapilliWinningInRowCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TermiLapilli'!

!TermiLapilliWinningInRowCondition methodsFor: 'winning' stamp: 'FC 5/27/2019 13:56:57'!
declaresWinner: aPlayer
	| isTheWinner |
	
	isTheWinner := false.
	
	0 to: 2 do: [ :rowNumber |
		((aPlayer isAt: rowNumber@0) and:
		[aPlayer isAt: rowNumber@1] and:
		[aPlayer isAt: rowNumber@2])
			ifTrue: [isTheWinner := true] ].
	
	^ isTheWinner! !


!classDefinition: #TermiLapilliWinningInSecondaryDiagonalCondition category: #TermiLapilli!
TermiLapilliWinningCondition subclass: #TermiLapilliWinningInSecondaryDiagonalCondition
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TermiLapilli'!

!TermiLapilliWinningInSecondaryDiagonalCondition methodsFor: 'winning' stamp: 'FC 5/27/2019 13:57:10'!
declaresWinner: aPlayer
	
	^ (aPlayer isAt: 0@2) and:
		[aPlayer isAt: 1@1] and:
		[aPlayer isAt: 2@0]! !
