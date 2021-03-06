"
Implements behavior of VW's Cormas class

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #CMProjectModel,
	#superclass : #PFProjectBase,
	#instVars : [
		'cormasModel',
		'cormasModelClass',
		'codeGenerator'
	],
	#category : #'Cormas-UI-Project'
}

{ #category : #'instance creation' }
CMProjectModel class >> for: aCormasModel [
	" Answer a new instance of the receiver configured for aCormasModel "
	
	^ self new initializeForModel: aCormasModel 
]

{ #category : #accessing }
CMProjectModel >> codeGenerator [
	" Answer a code generator binding a reference to the receiver model "

	^ codeGenerator
		ifNil: [ codeGenerator := CGStCormas for: self ]

]

{ #category : #accessing }
CMProjectModel >> codeGenerator: anObject [
	codeGenerator := anObject
]

{ #category : #accessing }
CMProjectModel >> cormasModel [
	^ cormasModel
]

{ #category : #accessing }
CMProjectModel >> cormasModel: aCormasModel [
	" Set the receiver's model to be aCormasModel "

	cormasModel := aCormasModel
]

{ #category : #accessing }
CMProjectModel >> cormasModelAuthors: aString [ 
	" See comment in CMProjectManager>>cormasModelAuthors: "
	
	self codeGenerator 
		generateMethod: aString 
		selector: #authors 
		inClass: self cormasModelClass class.

]

{ #category : #accessing }
CMProjectModel >> cormasModelClass [
	^ cormasModelClass
]

{ #category : #accessing }
CMProjectModel >> cormasModelClass: aClass [
	" Set the receiver's model class to be aClass "

	cormasModelClass := aClass
]

{ #category : #accessing }
CMProjectModel >> cormasModelCreationDate: aString [ 

	self codeGenerator
		generateMethod: aString 
		selector: #creationDate 
		inClass: self cormasModelClass class.


]

{ #category : #accessing }
CMProjectModel >> cormasModelEmails: aString [ 
	" See comment in CMProjectManager>>cormasModelEmails: "

	self codeGenerator 
		generateMethod: aString 
		selector: #emails 
		inClass: self cormasModelClass class.

]

{ #category : #accessing }
CMProjectModel >> cormasModelName [
	" Answer a <String> with the receiver's model name "

	^ self cormasModelClass cormasModelName
]

{ #category : #accessing }
CMProjectModel >> cormasModelText: aString [ 
	" See comment in CMProjectManager>>cormasModelText: "

	self codeGenerator 
		generateMethod: aString 
		selector: #comments 
		inClass: self cormasModelClass class.

]

{ #category : #accessing }
CMProjectModel >> cormasModelVersion: aString [ 

	self codeGenerator
		generateMethod: aString 
		selector: #version 
		inClass: self cormasModelClass class
]

{ #category : #accessing }
CMProjectModel >> createClassModelNamed: modelName [
	" Generate a new class named modelName. Answer the new generated <Class> "
	
	| validClassName |
	
	validClassName := self validateCormasModelName: modelName.
	self codeGenerator 
		targetClassCategory: validClassName , 'Category';
		targetClass: validClassName;
		generateClassNamed: validClassName 
		superclass: CMAbstractModel.
	self codeGenerator generateMethods.
	^ Smalltalk at: validClassName asSymbol
]

{ #category : #testing }
CMProjectModel >> hasCormasModelClass [
	" Answer <true> if receiver has configured a Cormas model "
	
	^ self cormasModelClass notNil
]

{ #category : #'initialize - release' }
CMProjectModel >> initializeForModel: aCormasModel [
	" Private - Set up the cormas model for the receiver "

	self initializeNamed: 'Unnamed'.
	self cormasModel: aCormasModel.
	self cormasModelClass: aCormasModel class.
]

{ #category : #'initialize - release' }
CMProjectModel >> initializeForModel: aCormasModel named: aString [
	" Private - Set up the cormas model for the receiver "

	self initializeNamed: aString.
	self cormasModel: aCormasModel.
	self cormasModelClass: aCormasModel class.
]

{ #category : #accessing }
CMProjectModel >> projectName [
	" Answer a <String> with the receiver's model name "

	^ self cormasModelName
]

{ #category : #accessing }
CMProjectModel >> validateCormasModelName: modelName [
	" Answer a <String> with modelName as valid Smalltalk class name "

	| validClassName |
	
	(validClassName := self codeGenerator validateClassName: modelName) ~= modelName
		ifTrue: [ self alertMessage: self translator tModifiedModelName  ].
	^ validClassName
]
