Class {
	#name : #Descriptor,
	#superclass : #Object,
	#classVars : [
		'classVar'
	],
	#classInstVars : [
		'classArgument'
	],
	#category : #ClassDescription
}

{ #category : #'as yet unclassified' }
Descriptor class >> classDescription: aClassNameVariable [
| instVariableNameContener superclassContener methods |
superclassContener := aClassNameVariable  superclass name.
instVariableNameContener := aClassNameVariable instVarNames fold: [:a :b | a, String cr,b].
methods := aClassNameVariable  selectors fold:[:a :b | a, String cr,b].
^('The superclass of ',aClassNameVariable printString,' is ',superclassContener,String cr,'The instance variables are ',instVariableNameContener,String cr,String cr,String cr,'and its methods ',methods)
]
