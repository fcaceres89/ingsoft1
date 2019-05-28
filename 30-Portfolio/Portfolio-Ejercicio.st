!classDefinition: #PortfolioTest category: #'Portfolio-Ejercicio'!
TestCase subclass: #PortfolioTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Portfolio-Ejercicio'!

!PortfolioTest methodsFor: 'as yet unclassified' stamp: 'LLR 5/23/2019 21:31:08'!
test01PortfolioBalanceWithAnAccountIsTheAccountBalance
	| account portfolio |
	
	account := ReceptiveAccount new.
	Deposit register: 100 on: account. 
	
	portfolio := Portfolio with: account.

	self assert: portfolio balance equals: account balance.! !

!PortfolioTest methodsFor: 'as yet unclassified' stamp: 'LLR 5/23/2019 21:31:54'!
test02PortfolioBalanceWithAPortofolioIsThePortfolioBalance
	| newPortfolio portfolio account|
	
	account := ReceptiveAccount new.
	Deposit register: 100 on: account. 
	
	portfolio := Portfolio with: account.
	
	newPortfolio := Portfolio with: portfolio.
	
	self assert: newPortfolio balance equals: portfolio balance.! !

!PortfolioTest methodsFor: 'as yet unclassified' stamp: 'LLR 5/23/2019 21:33:04'!
test03AddAccountToPortfolioUpdateThePortfolioBalance
	| previousBalance newAccount portfolio account|
	
	account := ReceptiveAccount new.
	Deposit register: 100 on: account.
	 
	portfolio := Portfolio with: account.
	previousBalance := portfolio balance.
	
	newAccount :=  ReceptiveAccount new. 
	Deposit register: 100 on: newAccount.
	
	portfolio add: newAccount.
	
	self assert: portfolio balance equals: previousBalance+(newAccount balance).! !

!PortfolioTest methodsFor: 'as yet unclassified' stamp: 'LLR 5/23/2019 21:35:57'!
test04AddPortolioToPortfolioUpdateThePortfolioBalance
	| previousBalance newPortfolio portfolio account account2|
	
	account := ReceptiveAccount new.
	Deposit register: 100 on: account.
	 
	portfolio := Portfolio with: account.
	previousBalance := portfolio balance.
	
	account2 := ReceptiveAccount new.
	Deposit register: 100 on: account2.
	
	newPortfolio := Portfolio with: account2.  
	
	portfolio add: newPortfolio.
	
	self assert: portfolio balance equals: previousBalance+(newPortfolio balance).! !

!PortfolioTest methodsFor: 'as yet unclassified' stamp: 'LLR 5/23/2019 21:46:24'!
test05AddingAnAccountThatExistsOnPorfolioThrowsAnError
	| account portfolio |
	
	account := ReceptiveAccount new.
	portfolio := Portfolio with: account.
	
	self 
		should: [ portfolio add: account. ]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: Portfolio canNotAddAnExistantAccountInPortfolioErrorDescription ]
	
		
	! !

!PortfolioTest methodsFor: 'as yet unclassified' stamp: 'LLR 5/24/2019 13:06:01'!
test06AddingAnAccountThatExistsInSomePortfolioOfPorfolioThrowsAnError
	| account portfolio portfolio2 |
	
	account := ReceptiveAccount new.
	portfolio := Portfolio with: account.
	
	portfolio2 := Portfolio with: portfolio.
	 
	self 
		should: [ portfolio2 add: account. ]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: Portfolio canNotAddAnExistantAccountInPortfolioErrorDescription ]
	
		
	! !

!PortfolioTest methodsFor: 'as yet unclassified' stamp: 'LLR 5/24/2019 16:02:11'!
test07CheckIfAnAccountHasRegisteredATransaction
	| account portfolio transaction |
	
	account := ReceptiveAccount new.
	portfolio := Portfolio with: account.
	transaction := Deposit register: 100 on: account.
	
	self assert: (portfolio hasRegistered: transaction)
		
	! !

!PortfolioTest methodsFor: 'as yet unclassified' stamp: 'LLR 5/24/2019 16:04:06'!
test08CheckIfAnAccountHasNoRegisteredATransaction
	| account2 account portfolio transaction |
	
	account := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	transaction := Deposit register: 100 on: account.
	portfolio := Portfolio with: account2.
	Deposit register: 100 on: account.
	
	self deny: (portfolio hasRegistered: transaction)
		
	
	! !

!PortfolioTest methodsFor: 'as yet unclassified' stamp: 'LLR 5/24/2019 13:18:57'!
test09ATransacionOfAnAccountIsInPortfolioTransactions
	| account portfolio transaction|
	
	account := ReceptiveAccount new.
	portfolio := Portfolio with: account.
	transaction := Deposit register: 100 on: account.
	
	self assert: (portfolio transactions includes: transaction).
	self assert: (portfolio transactions size = 1).	! !

!PortfolioTest methodsFor: 'as yet unclassified' stamp: 'LLR 5/28/2019 15:48:36'!
test10AddingAnAccountToAPorfolioThatBelongsToPortfolioWithTheAccountThrowsAnError
	| account account2 portfolio2 portfolio |
	
	account := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	
	
	portfolio := Portfolio with: account.
	portfolio2 := Portfolio with: account2.
	portfolio add: portfolio2.

	self 
		should: [ portfolio2 add: account. ]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: Portfolio canNotAddAnExistantAccountInPortfolioErrorDescription ]
	
	
	! !


!classDefinition: #ReceptiveAccountTest category: #'Portfolio-Ejercicio'!
TestCase subclass: #ReceptiveAccountTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Portfolio-Ejercicio'!

!ReceptiveAccountTest methodsFor: 'tests' stamp: 'HAW 5/23/2019 15:19:48'!
test01ReceptiveAccountHaveZeroAsBalanceWhenCreated 

	| account |
	
	account := ReceptiveAccount new.

	self assert: 0 equals: account balance .
! !

!ReceptiveAccountTest methodsFor: 'tests' stamp: 'HAW 5/23/2019 15:19:54'!
test02DepositIncreasesBalanceOnTransactionValue 

	| account |
	
	account := ReceptiveAccount  new.
	Deposit register: 100 on: account.
		
	self assert: 100 equals: account balance .
! !

!ReceptiveAccountTest methodsFor: 'tests' stamp: 'HAW 5/23/2019 15:20:02'!
test03WithdrawDecreasesBalanceOnTransactionValue 

	| account |
	
	account := ReceptiveAccount new.
	Deposit register: 100 on: account.
	Withdraw register: 50 on: account.
		
	self assert: 50 equals: account balance .
! !

!ReceptiveAccountTest methodsFor: 'tests' stamp: 'HAW 5/23/2019 15:20:32'!
test04WithdrawValueMustBePositive 

	| account withdrawValue |
	
	account := ReceptiveAccount new.
	withdrawValue := 50.
	
	self assert: withdrawValue equals: (Withdraw register: withdrawValue on: account) value
! !

!ReceptiveAccountTest methodsFor: 'tests' stamp: 'HAW 5/23/2019 15:20:46'!
test05ReceptiveAccountKnowsRegisteredTransactions 

	| account deposit withdraw |
	
	account := ReceptiveAccount new.
	deposit := Deposit register: 100 on: account.
	withdraw := Withdraw register: 50 on: account.
		
	self assert: (account hasRegistered: deposit).
	self assert: (account hasRegistered: withdraw).
! !

!ReceptiveAccountTest methodsFor: 'tests' stamp: 'HAW 5/23/2019 15:20:54'!
test06ReceptiveAccountDoNotKnowNotRegisteredTransactions

	| account deposit withdraw |
	
	account := ReceptiveAccount new.
	deposit :=  Deposit for: 100.
	withdraw := Withdraw for: 50.
		
	self deny: (account hasRegistered: deposit).
	self deny: (account hasRegistered:withdraw).
! !

!ReceptiveAccountTest methodsFor: 'tests' stamp: 'HAW 5/23/2019 15:21:24'!
test07AccountKnowsItsTransactions 

	| account1 deposit1 |
	
	account1 := ReceptiveAccount new.
	
	deposit1 := Deposit register: 100 on: account1.
		
	self assert: 1 equals: account1 transactions size .
	self assert: (account1 transactions includes: deposit1).
! !


!classDefinition: #AccountTransaction category: #'Portfolio-Ejercicio'!
Object subclass: #AccountTransaction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Portfolio-Ejercicio'!

!AccountTransaction methodsFor: 'value' stamp: 'HernanWilkinson 9/12/2011 12:25'!
value 

	self subclassResponsibility ! !


!AccountTransaction methodsFor: 'as yet unclassified' stamp: 'LLR 5/23/2019 20:48:41'!
affectBalance: aBalance 
	^ self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AccountTransaction class' category: #'Portfolio-Ejercicio'!
AccountTransaction class
	instanceVariableNames: ''!

!AccountTransaction class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:38'!
register: aValue on: account

	| withdraw |
	
	withdraw := self for: aValue.
	account register: withdraw.
		
	^ withdraw! !


!classDefinition: #Deposit category: #'Portfolio-Ejercicio'!
AccountTransaction subclass: #Deposit
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Portfolio-Ejercicio'!

!Deposit methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:45'!
initializeFor: aValue

	value := aValue ! !


!Deposit methodsFor: 'value' stamp: 'HernanWilkinson 7/13/2011 18:38'!
value

	^ value! !


!Deposit methodsFor: 'as yet unclassified' stamp: 'LLR 5/23/2019 20:49:29'!
affectBalance: aBalance
  ^ aBalance + self value .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Deposit class' category: #'Portfolio-Ejercicio'!
Deposit class
	instanceVariableNames: ''!

!Deposit class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:38'!
for: aValue

	^ self new initializeFor: aValue ! !


!classDefinition: #Withdraw category: #'Portfolio-Ejercicio'!
AccountTransaction subclass: #Withdraw
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Portfolio-Ejercicio'!

!Withdraw methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:46'!
initializeFor: aValue

	value := aValue ! !


!Withdraw methodsFor: 'value' stamp: 'LLR 5/23/2019 20:24:38'!
value

	^ value! !


!Withdraw methodsFor: 'as yet unclassified' stamp: 'LLR 5/23/2019 20:50:12'!
affectBalance: aBalance
	^ aBalance - self value.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Withdraw class' category: #'Portfolio-Ejercicio'!
Withdraw class
	instanceVariableNames: ''!

!Withdraw class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:33'!
for: aValue

	^ self new initializeFor: aValue ! !


!classDefinition: #Portfolio category: #'Portfolio-Ejercicio'!
Object subclass: #Portfolio
	instanceVariableNames: 'parents accounts'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Portfolio-Ejercicio'!

!Portfolio methodsFor: 'initialization' stamp: 'LLR 5/28/2019 14:04:14'!
with: anAccount 
	accounts := OrderedCollection new. 
	parents := OrderedCollection new.
	self add: anAccount.
	anAccount addAsAParentTo: self.! !


!Portfolio methodsFor: 'operation' stamp: 'LLR 5/27/2019 12:45:43'!
add: anAccountorPortfolio 
	(self exists: anAccountorPortfolio) ifTrue: [self error: self class canNotAddAnExistantAccountInPortfolioErrorDescription ].
	accounts add: anAccountorPortfolio.
	anAccountorPortfolio addAsAParentTo: self.
	
	
	! !

!Portfolio methodsFor: 'operation' stamp: 'LLR 5/28/2019 14:06:29'!
addAsAParentTo: aPortfoliooranAccount
	 self addParent: aPortfoliooranAccount .! !

!Portfolio methodsFor: 'operation' stamp: 'LLR 5/27/2019 12:36:17'!
addParent: aPortfolio
	parents add: aPortfolio.! !

!Portfolio methodsFor: 'operation' stamp: 'LLR 5/23/2019 20:59:24'!
balance
	| total |
	total := 0.
	accounts do: [:anAccount | total := anAccount balance + total].
	^ total! !

!Portfolio methodsFor: 'operation' stamp: 'LLR 5/28/2019 15:45:19'!
exists: anAccount
	| rootPorfolios res |
	rootPorfolios := self rootPortfoliosFromPortfolio. 
	
	res:= false.
	
	rootPorfolios do: [:rootPortfolio | res := ((rootPortfolio existsAccountFrom: anAccount) or: res).  ].
	^ res.
	
	! !

!Portfolio methodsFor: 'operation' stamp: 'LLR 5/28/2019 15:33:09'!
existsAccountFrom: anAccount
	|res|
	
	res := false.
	accounts do: [:account | res := ((account = anAccount) or: res).  ].
	
	res ifTrue: [^ res].
	
	accounts do: [ :account | res := (res or: (account existsAccountFrom: anAccount)). ].
	
	^ res! !

!Portfolio methodsFor: 'operation' stamp: 'LLR 5/24/2019 16:01:23'!
hasRegistered: aTransaction
	^ self transactions includes: aTransaction! !

!Portfolio methodsFor: 'operation' stamp: 'LLR 5/28/2019 15:18:29'!
rootPortfoliosFromPortfolio
	|rootPortfolios|
	
	rootPortfolios := Set new.
	
	 
	(self parents isEmpty) 
		ifTrue: [rootPortfolios add: self]
		ifFalse: [parents do: [:parent | rootPortfolios addAll: parent rootPortfoliosFromPortfolio]
				].
			
	^ rootPortfolios
	! !

!Portfolio methodsFor: 'operation' stamp: 'LLR 5/24/2019 13:17:49'!
transactions
	| res |
	res := OrderedCollection new.
	
	accounts do: [:account | res addAll: (account transactions)  ].
	
	^ res! !


!Portfolio methodsFor: 'as yet unclassified' stamp: 'LLR 5/28/2019 14:58:24'!
parents
	^parents! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Portfolio class' category: #'Portfolio-Ejercicio'!
Portfolio class
	instanceVariableNames: ''!

!Portfolio class methodsFor: 'as yet unclassified' stamp: 'LLR 5/24/2019 12:30:28'!
canNotAddAnExistantAccountInPortfolioErrorDescription
	^ 'Can not add an existant account in porfolio'! !

!Portfolio class methodsFor: 'as yet unclassified' stamp: 'LLR 5/23/2019 20:39:58'!
with: anAccount 
	^ self new with: anAccount! !


!classDefinition: #ReceptiveAccount category: #'Portfolio-Ejercicio'!
Object subclass: #ReceptiveAccount
	instanceVariableNames: 'transactions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Portfolio-Ejercicio'!

!ReceptiveAccount methodsFor: 'initialization' stamp: 'LLR 5/27/2019 12:34:46'!
initialize

	super initialize.
	transactions := OrderedCollection new.
	parents := OrderedCollection new.! !


!ReceptiveAccount methodsFor: 'transactions' stamp: 'LLR 5/27/2019 20:30:01'!
addAsAParentTo: aPortfoliooranAccount
	 ! !

!ReceptiveAccount methodsFor: 'transactions' stamp: 'LLR 5/27/2019 20:29:53'!
addParent: aPortfolio 

	! !

!ReceptiveAccount methodsFor: 'transactions' stamp: 'LLR 5/28/2019 15:45:48'!
exists: anAccount
	|res|
	res := (anAccount = self).	
	
	^ res
	
	! !

!ReceptiveAccount methodsFor: 'transactions' stamp: 'LLR 5/28/2019 15:48:12'!
existsAccountFrom: anAccount
	^ false.! !

!ReceptiveAccount methodsFor: 'transactions' stamp: 'LLR 5/28/2019 15:46:34'!
parents
	^ OrderedCollection new.	
	! !

!ReceptiveAccount methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 18:37'!
register: aTransaction

	transactions add: aTransaction 
! !

!ReceptiveAccount methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 18:37'!
transactions 

	^ transactions copy! !


!ReceptiveAccount methodsFor: 'balance' stamp: 'LLR 5/23/2019 20:47:56'!
balance

	^ transactions
		inject: 0
		into: [:currentBalance :aTransaction | aTransaction affectBalance: currentBalance] 
! !


!ReceptiveAccount methodsFor: 'testing' stamp: 'LLR 5/27/2019 12:12:16'!
hasRegistered: aTtransaction

	^ transactions includes: aTtransaction ! !
