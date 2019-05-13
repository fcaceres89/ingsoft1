!classDefinition: #MarsRoverTest category: #MarsRover!
TestCase subclass: #MarsRoverTest
	instanceVariableNames: 'marsRover'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRoverTest methodsFor: 'tests' stamp: 'FC 5/13/2019 16:00:05'!
testCanNotProcessAnUnrecognizedCommand
	
	marsRover := MarsRover at: 0@0 heading: #North.
	
	self should: [ marsRover process: 'x' ]
		raise: Error
		description: MovementCommand unrecognizedCommandErrorDescription! !

!MarsRoverTest methodsFor: 'tests' stamp: 'FC 5/13/2019 14:03:48'!
testDoesNotMoveOnEmptySequenceOfCommands
	
	marsRover := MarsRover at: 0@0 heading: #North.
	
	marsRover process: ''.
	
	self assert: (marsRover isAt: 0@0 heading: #North).! !

!MarsRoverTest methodsFor: 'tests' stamp: 'FC 5/13/2019 15:58:16'!
testMoveBackward
	
	marsRover := MarsRover at: 0@0 heading: #South.
	
	marsRover process: 'b'.
	
	self assert: (marsRover isAt: 0@1 heading: #South).! !

!MarsRoverTest methodsFor: 'tests' stamp: 'FC 5/13/2019 15:57:34'!
testMoveForward
	
	marsRover := MarsRover at: 0@0 heading: #North.
	
	marsRover process: 'f'.
	
	self assert: (marsRover isAt: 0@1 heading: #North).! !

!MarsRoverTest methodsFor: 'tests' stamp: 'FC 5/13/2019 16:02:02'!
testProcessesMoreThanOneCommand
	
	marsRover := MarsRover at: 0@0 heading: #North.
	
	marsRover process: 'fflbbrb'.
	
	self assert: (marsRover isAt: 2@1 heading: #North).! !

!MarsRoverTest methodsFor: 'tests' stamp: 'FC 5/13/2019 16:05:26'!
testStopsMovingOnUnrecognizedCommand
	
	marsRover := MarsRover at: 0@0 heading: #South.
	
	self should: [ marsRover process: 'ffxfffff' ]
		raise: Error
		description: MovementCommand unrecognizedCommandErrorDescription.
	
	self assert: (marsRover isAt: 0@-2 heading: #South)! !

!MarsRoverTest methodsFor: 'tests' stamp: 'FC 5/13/2019 15:58:54'!
testTurnLeft
	
	marsRover := MarsRover at: 0@0 heading: #East.
	
	marsRover process: 'l'.
	
	self assert: (marsRover isAt: 0@0 heading: #North).! !

!MarsRoverTest methodsFor: 'tests' stamp: 'FC 5/13/2019 15:59:13'!
testTurnRight
	
	marsRover := MarsRover at: 0@0 heading: #West.
	
	marsRover process: 'r'.
	
	self assert: (marsRover isAt: 0@0 heading: #North).! !


!classDefinition: #HeadingWheels category: #MarsRover!
Object subclass: #HeadingWheels
	instanceVariableNames: 'direction'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!HeadingWheels methodsFor: 'movement' stamp: 'FC 5/13/2019 15:50:30'!
moveBackwardOn: aRover

	self subclassResponsibility! !

!HeadingWheels methodsFor: 'movement' stamp: 'FC 5/13/2019 15:50:44'!
moveForwardOn: aRover

	self subclassResponsibility! !

!HeadingWheels methodsFor: 'movement' stamp: 'FC 5/13/2019 15:50:49'!
turnLeftOn: aRover

	self subclassResponsibility! !

!HeadingWheels methodsFor: 'movement' stamp: 'FC 5/13/2019 15:50:53'!
turnRightOn: aRover

	self subclassResponsibility! !


!HeadingWheels methodsFor: 'testing' stamp: 'FC 5/13/2019 15:13:33'!
headingDirection

	^ direction! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'HeadingWheels class' category: #MarsRover!
HeadingWheels class
	instanceVariableNames: ''!

!HeadingWheels class methodsFor: 'creation' stamp: 'FC 5/13/2019 15:10:39'!
heading: aCardinalPoint

	aCardinalPoint = #North ifTrue: [ ^ WheelsHeadingNorth new ].
	aCardinalPoint = #South ifTrue: [ ^ WheelsHeadingSouth new ].
	aCardinalPoint = #East ifTrue: [ ^ WheelsHeadingEast new ].
	aCardinalPoint = #West ifTrue: [ ^ WheelsHeadingWest new ]! !


!classDefinition: #WheelsHeadingEast category: #MarsRover!
HeadingWheels subclass: #WheelsHeadingEast
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!WheelsHeadingEast methodsFor: 'movement' stamp: 'FC 5/13/2019 15:51:43'!
moveBackwardOn: aRover

	aRover moveBackwardHeadingEast! !

!WheelsHeadingEast methodsFor: 'movement' stamp: 'FC 5/13/2019 15:52:05'!
moveForwardOn: aRover

	aRover moveForwardHeadingEast! !

!WheelsHeadingEast methodsFor: 'movement' stamp: 'FC 5/13/2019 15:53:22'!
turnLeftOn: aRover

	aRover turnLeftHeadingEast! !

!WheelsHeadingEast methodsFor: 'movement' stamp: 'FC 5/13/2019 15:53:42'!
turnRightOn: aRover

	aRover turnRightHeadingEast! !


!WheelsHeadingEast methodsFor: 'creation' stamp: 'FC 5/13/2019 15:12:40'!
initialize

	direction := #East! !


!classDefinition: #WheelsHeadingNorth category: #MarsRover!
HeadingWheels subclass: #WheelsHeadingNorth
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!WheelsHeadingNorth methodsFor: 'movement' stamp: 'FC 5/13/2019 15:54:19'!
moveBackwardOn: aRover

	aRover moveBackwardHeadingNorth! !

!WheelsHeadingNorth methodsFor: 'movement' stamp: 'FC 5/13/2019 15:54:33'!
moveForwardOn: aRover

	aRover moveForwardHeadingNorth! !

!WheelsHeadingNorth methodsFor: 'movement' stamp: 'FC 5/13/2019 15:54:47'!
turnLeftOn: aRover

	aRover turnLeftHeadingNorth! !

!WheelsHeadingNorth methodsFor: 'movement' stamp: 'FC 5/13/2019 15:54:53'!
turnRightOn: aRover

	aRover turnRightHeadingNorth! !


!WheelsHeadingNorth methodsFor: 'creation' stamp: 'FC 5/13/2019 15:12:56'!
initialize

	direction := #North! !


!classDefinition: #WheelsHeadingSouth category: #MarsRover!
HeadingWheels subclass: #WheelsHeadingSouth
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!WheelsHeadingSouth methodsFor: 'movement' stamp: 'FC 5/13/2019 15:55:37'!
moveBackwardOn: aRover
	
	aRover moveBackwardHeadingSouth! !

!WheelsHeadingSouth methodsFor: 'movement' stamp: 'FC 5/13/2019 15:55:29'!
moveForwardOn: aRover
	
	aRover moveForwardHeadingSouth! !

!WheelsHeadingSouth methodsFor: 'movement' stamp: 'FC 5/13/2019 15:55:52'!
turnLeftOn: aRover
	
	aRover turnLeftHeadingSouth! !

!WheelsHeadingSouth methodsFor: 'movement' stamp: 'FC 5/13/2019 15:56:01'!
turnRightOn: aRover
	
	aRover turnRightHeadingSouth! !


!WheelsHeadingSouth methodsFor: 'creation' stamp: 'FC 5/13/2019 15:13:07'!
initialize

	direction := #South! !


!classDefinition: #WheelsHeadingWest category: #MarsRover!
HeadingWheels subclass: #WheelsHeadingWest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!WheelsHeadingWest methodsFor: 'movement' stamp: 'FC 5/13/2019 15:56:18'!
moveBackwardOn: aRover
	
	aRover moveBackwardHeadingWest! !

!WheelsHeadingWest methodsFor: 'movement' stamp: 'FC 5/13/2019 15:56:26'!
moveForwardOn: aRover
	
	aRover moveForwardHeadingWest! !

!WheelsHeadingWest methodsFor: 'movement' stamp: 'FC 5/13/2019 15:56:39'!
turnLeftOn: aRover
	
	aRover turnLeftHeadingWest! !

!WheelsHeadingWest methodsFor: 'movement' stamp: 'FC 5/13/2019 15:56:47'!
turnRightOn: aRover
	
	aRover turnRightHeadingWest! !


!WheelsHeadingWest methodsFor: 'creation' stamp: 'FC 5/13/2019 15:13:18'!
initialize

	direction := #West! !


!classDefinition: #MarsRover category: #MarsRover!
Object subclass: #MarsRover
	instanceVariableNames: 'position direction headingWheels'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MarsRover methodsFor: 'initialize' stamp: 'FC 5/13/2019 15:32:00'!
initializeAt: aPoint heading: aCardinalPoint 
	
	position := aPoint.
	headingWheels := HeadingWheels heading: aCardinalPoint.! !


!MarsRover methodsFor: 'testing' stamp: 'FC 5/13/2019 14:49:21'!
isAt: aPoint heading: aCardinalPoint

	^ position = aPoint and: [ headingWheels headingDirection = aCardinalPoint ]! !


!MarsRover methodsFor: 'movement' stamp: 'FC 5/13/2019 15:49:46'!
process: aSequenceOfCommands
	
	aSequenceOfCommands do: [ :aSingleCommand |
		(MovementCommand for: aSingleCommand) processOn: self
	]! !


!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:46:28'!
moveBackward

	headingWheels moveBackwardOn: self! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:27:38'!
moveBackwardHeadingEast

	position := position + (-1@0)! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 14:44:03'!
moveBackwardHeadingNorth

	position := position + (0@-1)! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:21:57'!
moveBackwardHeadingSouth

	position := position + (0@1)! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:28:26'!
moveBackwardHeadingWest

	position := position + (1@0)! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:46:50'!
moveForward

	headingWheels moveForwardOn: self! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:27:52'!
moveForwardHeadingEast

	position := position + (1@0)! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 14:44:11'!
moveForwardHeadingNorth

	position := position + (0@1)! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:22:04'!
moveForwardHeadingSouth

	position := position + (0@-1)! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:28:33'!
moveForwardHeadingWest

	position := position + (-1@0)! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:47:17'!
turnLeft

	headingWheels turnLeftOn: self! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:28:05'!
turnLeftHeadingEast

	headingWheels := WheelsHeadingNorth new.! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 14:45:04'!
turnLeftHeadingNorth

	headingWheels := WheelsHeadingWest new.! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:22:35'!
turnLeftHeadingSouth

	headingWheels := WheelsHeadingEast new.! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:28:49'!
turnLeftHeadingWest

	headingWheels := WheelsHeadingSouth new.! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:47:31'!
turnRight

	headingWheels turnRightOn: self! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:29:21'!
turnRightHeadingEast

	headingWheels := WheelsHeadingSouth new.! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 14:52:30'!
turnRightHeadingNorth

	headingWheels := WheelsHeadingEast new.! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:30:12'!
turnRightHeadingSouth

	headingWheels := WheelsHeadingWest new.! !

!MarsRover methodsFor: 'movement private' stamp: 'FC 5/13/2019 15:29:49'!
turnRightHeadingWest

	headingWheels := WheelsHeadingNorth new.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MarsRover class' category: #MarsRover!
MarsRover class
	instanceVariableNames: ''!

!MarsRover class methodsFor: 'creation' stamp: 'FC 5/9/2019 19:24:20'!
at: aPoint heading: aCardinalPoint 
	
	^ self new initializeAt: aPoint heading: aCardinalPoint! !


!classDefinition: #MovementCommand category: #MarsRover!
Object subclass: #MovementCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MovementCommand methodsFor: 'processing' stamp: 'FC 5/13/2019 15:41:26'!
processOn: aRover

	self subclassResponsibility! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'MovementCommand class' category: #MarsRover!
MovementCommand class
	instanceVariableNames: ''!

!MovementCommand class methodsFor: 'creation' stamp: 'FC 5/13/2019 15:39:08'!
for: aCodeCommand
	
	('fblr' includes: aCodeCommand) ifFalse: [ self error: self unrecognizedCommandErrorDescription ].
	
	aCodeCommand = $f ifTrue: [ ^ MoveForwardCommand new ].
	aCodeCommand = $b ifTrue: [ ^ MoveBackwardCommand new ].
	aCodeCommand = $l ifTrue: [ ^ TurnLeftCommand new ].
	aCodeCommand = $r ifTrue: [ ^ TurnRightCommand new ]! !

!MovementCommand class methodsFor: 'creation' stamp: 'FC 5/13/2019 15:36:02'!
unrecognizedCommandErrorDescription

	^ 'Unrecognized command'! !


!classDefinition: #MoveBackwardCommand category: #MarsRover!
MovementCommand subclass: #MoveBackwardCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MoveBackwardCommand methodsFor: 'processing' stamp: 'FC 5/13/2019 15:41:53'!
processOn: aRover

	aRover moveBackward! !


!classDefinition: #MoveForwardCommand category: #MarsRover!
MovementCommand subclass: #MoveForwardCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!MoveForwardCommand methodsFor: 'processing' stamp: 'FC 5/13/2019 15:42:15'!
processOn: aRover

	aRover moveForward! !


!classDefinition: #TurnLeftCommand category: #MarsRover!
MovementCommand subclass: #TurnLeftCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!TurnLeftCommand methodsFor: 'processing' stamp: 'FC 5/13/2019 15:42:27'!
processOn: aRover

	aRover turnLeft! !


!classDefinition: #TurnRightCommand category: #MarsRover!
MovementCommand subclass: #TurnRightCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MarsRover'!

!TurnRightCommand methodsFor: 'processing' stamp: 'FC 5/13/2019 15:42:40'!
processOn: aRover

	aRover turnRight! !
