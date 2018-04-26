accessing
addTranslationsForENPart2
	" Private - See superimplementor's comment "

	^ (self translatorClass forLanguage: #EN) translationMap 
		at: #tInitialValueChooser 			put: 'Initial value chooser';
		at: #tSetterAccessor 					put: 'Setter accessor';
		at: #tGetterAccessor 					put: 'Getter accessor';
		at: #tNotifyObs 						put: 'Notify observers when changed';
		at: #tInitialValueLabel				put: 'Enter an initial value for this attribute';
		at: #tNumber 							put: 'Number';
		at: #tRandom 							put: 'Random';
		at: #tBoolean 							put: 'Boolean';
		at: #tStringSymbol 					put: 'String / Symbol';
		at: #tArray 								put: 'Array';
		at: #tNewEntity 						put: 'New Entity';
		at: #tCollectionEmpty 				put: 'Collection (empty)';
		at: #tNoValue 							put: 'No value or another instance (to be sent in #init)';
		at: #tFillArray							put: 'Fill the Array with values';
		at: #tSimulate 							put: 'simulate';
		at: #tReplay 							put: 'replay';
		at: #tCurrentStep 						put: 'current step';
		at: #tInitialize 						put: 'Initialize';
		at: #tBackwardLabel 					put: 'Backward';
		at: #tForwardLabel 					put: 'Forward';
		at: #tFinalStep 						put: 'final step';
		at: #tChange 							put: 'Change';
		at: #tSimCloseHelp 					put: 'Close the simulation interface';
		at: #tSimStepHelp 						put: 'Current time';	
		at: #tSimFinalStepHelp 				put: 'Enter the final step';
		at: #tSelectMethod 					put: 'Select a method of ';
		at: #tFinalStepChoice 				put: 'Final step:';
		at: #tInitializeRandomness 			put: 'Initialize randomness';
		at: #tMissingInitMethods 			put: 'The model does not define any method for initialization !';
		at: #tMissingControlMethods 		put: 'The model does not define any method for control !';
		at: #tNoStoredSim 						put: 'The "Dump" directory does not contain stored simulations';
		at: #tNoStoredSimFolder				put: ' directory does not contain stored simulations';
		at: #tReplayStartStep 				put: 'The replay will starts at step ';
		at: #tChooseDumpDir					put: 'Choose a ''Dump'' Directory:';
		at: #tCreatePoVAtt 					put: 'Create PoV on which attribute?';
		at: #tFoundPoVValues 					put: 'Cormas found the following values for the attribute ';
		at: #tAddSymbols 						put: 'Do you want to create the symbols associated to these values?';
		at: #tEnterNewSymbol 					put: 'Enter a new symbol';
		at: #tSelectEntity 					put: 'An entity must be selected';
		at: #tNoMoreMethods 					put: 'No more methods can be added to this list';
		at: #tNoMorePoVMethods				put: 'No more pov can be added to this list';
		at: #tNoMoreEntities 					put: 'No more entities can be added to this list';
		at: #tNoMoreInfo 						put: 'No more info can be added to this list';
		at: #tPoVMethods 						put: 'POV Methods';
		at: #tAgentTracksSize 				put: 'Choose the size of the agents tracks';
		at: #tSpaceNotAllowed 				put: 'Space characters are not allowed for Habitus names. Do you want to replace by ''_'' character ?';
		at: #tConfigTitle 						put: 'Please enter a title for that configuration';
		at: #tOneInfo 							put: 'Only one info can be set as default';
		at: #tInfoDefault 						put: 'This info is already set as default';
		at: #tPoVDefault 						put: 'This pov is already set as default';
		at: #tMustSelectEntity 				put: 'An entity must be selected';
		at: #tEntitiesToCreate 				put: 'Entities to be Created';
		at: #tManipulationEntities			put: 'Manipulation Entities';
		at: #tObservedEntities 				put: 'Observed Entities';
		at: #tChooseConfig 					put: 'Choose a configuration';
		at: #tNoInfoSelected 					put: 'No info selected';							
		at: #tNoAttribSelected 				put: 'No attribute selected';
		at: #tNoEntitySelected 				put: 'No entity selected';
		at: #tNoMethodSelected 				put: 'No method selected';
		at: #tNoPoVSelected 					put: 'No pov selected';
		at: #tOnePoV 							put: 'Only one pov can be set as default';
		at: #tHabitusTitle 					put: 'Habitus from Bourdieu';
		at: #tHabitusText 						put: 'L''habitus est un système de disposition acquises par l''apprentissage implicite ou explicite qui fonctionne comme un système de schèmes générateurs. L''habitus est générateur de stratégies qui peuvent être objectivement conformes aux intérêts objectifs de leurs auteurs sans en avoir été expressément conçues à cette fin. (Bourdieu 1972)
Autre définition : L''habitus est un ensemble de manière d''être, d''agir et de penser propre à un individu, fruit d''un apprentissage particulier lié à son groupe d''appartenance, qui diffère selon sa classe sociale, sa disposition en capital, et sa place occupée dans l''espace social. L''habitus structure les comportements et les actions de l''individu, et à la fois, structure les positions dans l''espace social.';
		at: #tSelectPoVSymbol 				put: 'Please, select a pov symbol';
		at: #tSymbolAlreadyExists 			put: 'This symbol already exists !!!';
		at: #tSelectSymbol 					put: 'Select a symbol !!!';
		at: #tChooseTokenColor 				put: 'Choose token color';
		at: #tNoModel 							put: 'Select or create a model';
		at: #tWhichAttribute					put: 'Which attribute !!';
		at: #tPoVDefinition 					put: 'PoV definition';
		at: #tPoVListMethods 					put: 'Methods returning a Color or Symbol';
		at: #tPoVListSymbols 					put: 'Associated Symbols';
		at: #tPoVInfoDisplayed				put: 'Information to be displayed';
		at: #tPoVListInfo 						put: 'Methods returning a String';
		at: #tPoVSetColor 						put: 'Set the Color';
		yourself