tool states
initializeChangeAttributeTool
	"This method was automatically generated by the HotDraw ToolStateMachineEditor.
	To edit this method, evaluate the comment below"
	"| states transitions stateTable |
	states := ((Core.OrderedCollection new) add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'ChangeAttribute Tool'; instVarAt: 3 put: '[:tool :event | tool cursor: Cursor caret.]'; instVarAt: 4 put: (Core.Point x: 225 y: 19); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'End State'; instVarAt: 3 put: '[:tool :event | ]'; instVarAt: 4 put: (Core.Point x: 100 y: 328); instVarAt: 5 put: true; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'setAttributeValue'; instVarAt: 3 put: '[:tool :event | 
| figure |
tool drawing activeAttribute isNil ifFalse:[
	figure := (tool allFiguresAtEvent: event) detect:[:f| f model entity class includesBehavior: tool drawing manipulatedEntity] ifNone:nil.
	figure ifNotNil:
		[ tool drawing changeAttributeOf: figure]]]'; instVarAt: 4 put: (Core.Point x: 13 y: 202); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'isForInspect'; instVarAt: 3 put: '[:tool :event | 
		tool drawing manipulationAction = #inspect 
			ifTrue:[tool valueAt: #condition put: true ] 
			ifFalse:[tool valueAt: #condition put: false ]]'; instVarAt: 4 put: (Core.Point x: 343 y: 91); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'inspectEntity'; instVarAt: 3 put: '[:tool :event |    | figure |
	figure := (tool allFiguresAtEvent: event) 
				detect:[:f| 
					f model entity class includesBehavior: tool drawing manipulatedEntity] 
				ifNone:nil.
	figure ifNotNil:
		[ tool drawing inspectOf: figure]]'; instVarAt: 4 put: (Core.Point x: 215 y: 240); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'isForColor'; instVarAt: 3 put: '[:tool :event | 
		tool drawing manipulationAction = #coloring 
			ifTrue:[tool valueAt: #condition put: true ] 
			ifFalse:[tool valueAt: #condition put: false ]]'; instVarAt: 4 put: (Core.Point x: 419 y: 154); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'colorEntity'; instVarAt: 3 put: '[:tool :event |    | figure |
	figure := (tool allFiguresAtEvent: event) 
				detect:[:f| f model entity class includesBehavior: tool drawing manipulatedEntity] 
				ifNone:nil.
	figure ifNotNil:
		[ tool drawing changeColorOf: figure]]'; instVarAt: 4 put: (Core.Point x: 381 y: 262); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'isForResetColor'; instVarAt: 3 put: '[:tool :event |
		tool drawing manipulationAction = #resetColor 
			ifTrue:[tool valueAt: #condition put: true ] 
			ifFalse:[tool valueAt: #condition put: false ]]'; instVarAt: 4 put: (Core.Point x: 551 y: 181); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'resetColorEntity'; instVarAt: 3 put: '[:tool :event |    | figure |
	figure := (tool allFiguresAtEvent: event) 
				detect:[:f| f model entity class includesBehavior: tool drawing manipulatedEntity] 
				ifNone:nil.
	figure ifNotNil:
		[ tool drawing resetColorOf: figure]]'; instVarAt: 4 put: (Core.Point x: 506 y: 317); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'executeAction'; instVarAt: 3 put: '[:tool :event |    | figure |
	figure := (tool allFiguresAtEvent: event) 
				detect:[:f| f model entity class includesBehavior: tool drawing manipulatedEntity] 
				ifNone:nil.
	figure ifNotNil:
		[ tool drawing executeMethodOf: figure]]'; instVarAt: 4 put: (Core.Point x: 563 y: 393); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); add: (Refactory.HotDraw.ToolStateModel basicNew instVarAt: 1 put: nil; instVarAt: 2 put: 'isForSetting'; instVarAt: 3 put: '[:tool :event | 
		tool drawing manipulationAction = #setValue 
			ifTrue:[tool valueAt: #condition put: true ] 
			ifFalse:[tool valueAt: #condition put: false ]]'; instVarAt: 4 put: (Core.Point x: 195 y: 76); instVarAt: 5 put: false; instVarAt: 6 put: false; yourself); yourself).
	stateTable := Dictionary new.
	states do: [:each | stateTable at: each name put: each].

	transitions := OrderedCollection new.
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'setAttributeValue'); to: (stateTable at: 'End State'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #redButtonRelease; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 67.5579 y: 233.935); add: (Core.Point x: 118.288 y: 329.035); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'setAttributeValue'); to: (stateTable at: 'setAttributeValue'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #mouseMove; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 87.9547 y: 202.444); add: (Core.Point x: 125 y: 160); add: (Core.Point x: 148 y: 160); add: (Core.Point x: 174 y: 179); add: (Core.Point x: 154 y: 215); add: (Core.Point x: 124 y: 215); add: (Core.Point x: 124 y: 215); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'inspectEntity'); to: (stateTable at: 'End State'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #redButtonRelease; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 244.575 y: 270.594); add: (Core.Point x: 157.781 y: 331.295); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'isForInspect'); to: (stateTable at: 'inspectEntity'); type: (CormasNS.ToolConditionType basicNew instVarAt: 1 put: #immediate; instVarAt: 2 put: true; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 375.031 y: 122.998); add: (Core.Point x: 281.037 y: 241.113); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'isForInspect'); to: (stateTable at: 'isForColor'); type: (CormasNS.ToolConditionType basicNew instVarAt: 1 put: #immediate; instVarAt: 2 put: false; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 408.887 y: 120.383); add: (Core.Point x: 459 y: 109); add: (Core.Point x: 448.408 y: 153.456); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'colorEntity'); to: (stateTable at: 'End State'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #redButtonRelease; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 383.283 y: 285.363); add: (Core.Point x: 356 y: 335); add: (Core.Point x: 165.632 y: 336.123); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'colorEntity'); to: (stateTable at: 'colorEntity'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #mouseMove; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 454.214 y: 277.5); add: (Core.Point x: 463 y: (535/2)); add: (Core.Point x: 463 y: (575/2)); add: (Core.Point x: 454.214 y: 277.5); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'isForColor'); to: (stateTable at: 'colorEntity'); type: (CormasNS.ToolConditionType basicNew instVarAt: 1 put: #immediate; instVarAt: 2 put: true; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 463.603 y: 185.711); add: (Core.Point x: 425.727 y: 261.228); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'isForColor'); to: (stateTable at: 'isForResetColor'); type: (CormasNS.ToolConditionType basicNew instVarAt: 1 put: #immediate; instVarAt: 2 put: false; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 486.781 y: 163.406); add: (Core.Point x: 564 y: 136); add: (Core.Point x: 556.245 y: 187.805); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'isForResetColor'); to: (stateTable at: 'resetColorEntity'); type: (CormasNS.ToolConditionType basicNew instVarAt: 1 put: #immediate; instVarAt: 2 put: true; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 597.391 y: 212.763); add: (Core.Point x: 562.888 y: 316.336); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'resetColorEntity'); to: (stateTable at: 'End State'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #redButtonRelease; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 518.391 y: 343.688); add: (Core.Point x: 445 y: 378); add: (Core.Point x: 247 y: 377); add: (Core.Point x: 158.521 y: 354.535); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'executeAction'); to: (stateTable at: 'End State'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #redButtonRelease; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 561.726 y: 408.656); add: (Core.Point x: 144 y: 411); add: (Core.Point x: 135 y: 360); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'resetColorEntity'); to: (stateTable at: 'resetColorEntity'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #mouseMove; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 610.086 y: 332.5); add: (Core.Point x: 619 y: (645/2)); add: (Core.Point x: 619 y: (685/2)); add: (Core.Point x: 610.086 y: 332.5); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'isForResetColor'); to: (stateTable at: 'executeAction'); type: (CormasNS.ToolConditionType basicNew instVarAt: 1 put: #immediate; instVarAt: 2 put: false; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 605.981 y: 212.772); add: (Core.Point x: 686 y: 265); add: (Core.Point x: 642.289 y: 396.387); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'ChangeAttribute Tool'); to: (stateTable at: 'isForSetting'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #redButtonPress; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 275.357 y: 51.004); add: (Core.Point x: 250.762 y: 76.303); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'isForSetting'); to: (stateTable at: 'setAttributeValue'); type: (CormasNS.ToolConditionType basicNew instVarAt: 1 put: #immediate; instVarAt: 2 put: true; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 214.777 y: 106.758); add: (Core.Point x: 75 y: 98); add: (Core.Point x: 88.0672 y: 202.359); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'isForSetting'); to: (stateTable at: 'isForInspect'); type: (CormasNS.ToolConditionType basicNew instVarAt: 1 put: #immediate; instVarAt: 2 put: false; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 245.262 y: 108.013); add: (Core.Point x: 259 y: 121); add: (Core.Point x: 350.028 y: 117.027); yourself); yourself).
	transitions add: (ToolStateTransitionModel new from: (stateTable at: 'executeAction'); to: (stateTable at: 'executeAction'); type: (Refactory.HotDraw.TransitionType basicNew instVarAt: 1 put: #mouseMove; yourself); points: ((Core.OrderedCollection new) add: (Core.Point x: 657.468 y: 408.5); add: (Core.Point x: 666 y: (797/2)); add: (Core.Point x: 666 y: (837/2)); add: (Core.Point x: 657.468 y: 408.5); yourself); yourself).
	ToolStateMachineEditor openWithStates: states connections: transitions"
	
	Tool states
		at: 'ChangeAttribute Tool'
		put:
			(ToolState
				name: 'ChangeAttribute Tool'
				command: [:tool :event | tool cursor: Cursor caret]).
	Tool states
		at: 'End State'
		put:
			(EndToolState
				name: 'End State'
				command: [:tool :event | ]).
	Tool states
		at: 'setAttributeValue'
		put:
			(ToolState
				name: 'setAttributeValue'
				command:
					[:tool :event | 
					| figure |
					tool drawing activeAttribute isNil
						ifFalse:
							[figure := (tool allFiguresAtEvent: event)
								detect:
									[:f | f model entity class includesBehavior: tool drawing manipulatedEntity]
								ifNone: nil.
							figure ifNotNil: [tool drawing changeAttributeOf: figure]]]).
	Tool states
		at: 'isForInspect'
		put:
			(ToolState
				name: 'isForInspect'
				command:
					[:tool :event | 
					tool drawing manipulationAction = #inspect
						ifTrue: [tool valueAt: #condition put: true]
						ifFalse: [tool valueAt: #condition put: false]]).
	Tool states
		at: 'inspectEntity'
		put:
			(ToolState
				name: 'inspectEntity'
				command:
					[:tool :event | 
					| figure |
					figure := (tool allFiguresAtEvent: event)
						detect:
							[:f | f model entity class includesBehavior: tool drawing manipulatedEntity]
						ifNone: nil.
					figure ifNotNil: [tool drawing inspectOf: figure]]).
	Tool states
		at: 'isForColor'
		put:
			(ToolState
				name: 'isForColor'
				command:
					[:tool :event | 
					tool drawing manipulationAction = #coloring
						ifTrue: [tool valueAt: #condition put: true]
						ifFalse: [tool valueAt: #condition put: false]]).
	Tool states
		at: 'colorEntity'
		put:
			(ToolState
				name: 'colorEntity'
				command:
					[:tool :event | 
					| figure |
					figure := (tool allFiguresAtEvent: event)
						detect:
							[:f | f model entity class includesBehavior: tool drawing manipulatedEntity]
						ifNone: nil.
					figure ifNotNil: [tool drawing changeColorOf: figure]]).
	Tool states
		at: 'isForResetColor'
		put:
			(ToolState
				name: 'isForResetColor'
				command:
					[:tool :event | 
					tool drawing manipulationAction = #resetColor
						ifTrue: [tool valueAt: #condition put: true]
						ifFalse: [tool valueAt: #condition put: false]]).
	Tool states
		at: 'resetColorEntity'
		put:
			(ToolState
				name: 'resetColorEntity'
				command:
					[:tool :event | 
					| figure |
					figure := (tool allFiguresAtEvent: event)
						detect:
							[:f | f model entity class includesBehavior: tool drawing manipulatedEntity]
						ifNone: nil.
					figure ifNotNil: [tool drawing resetColorOf: figure]]).
	Tool states
		at: 'executeAction'
		put:
			(ToolState
				name: 'executeAction'
				command:
					[:tool :event | 
					| figure |
					figure := (tool allFiguresAtEvent: event)
						detect:
							[:f | f model entity class includesBehavior: tool drawing manipulatedEntity]
						ifNone: nil.
					figure ifNotNil: [tool drawing executeMethodOf: figure]]).
	Tool states
		at: 'isForSetting'
		put:
			(ToolState
				name: 'isForSetting'
				command:
					[:tool :event | 
					tool drawing manipulationAction = #setValue
						ifTrue: [tool valueAt: #condition put: true]
						ifFalse: [tool valueAt: #condition put: false]]).
	(Tool stateFor: 'executeAction')
		mouseMove:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'executeAction');
				yourself).
	(Tool stateFor: 'executeAction')
		redButtonRelease:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'End State');
				yourself).
	(Tool stateFor: 'inspectEntity')
		redButtonRelease:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'End State');
				yourself).
	(Tool stateFor: 'resetColorEntity')
		mouseMove:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'resetColorEntity');
				yourself).
	(Tool stateFor: 'resetColorEntity')
		redButtonRelease:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'End State');
				yourself).
	(Tool stateFor: 'ChangeAttribute Tool')
		redButtonPress:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'isForSetting');
				yourself).
	(Tool stateFor: 'isForResetColor')
		immediate:
			((ConditionTransitionTable new)
				onCondition: false
					goto: (Tool stateFor: 'executeAction');
				onCondition: true
					goto: (Tool stateFor: 'resetColorEntity');
				yourself).
	(Tool stateFor: 'isForInspect')
		immediate:
			((ConditionTransitionTable new)
				onCondition: false
					goto: (Tool stateFor: 'isForColor');
				onCondition: true
					goto: (Tool stateFor: 'inspectEntity');
				yourself).
	(Tool stateFor: 'isForSetting')
		immediate:
			((ConditionTransitionTable new)
				onCondition: false
					goto: (Tool stateFor: 'isForInspect');
				onCondition: true
					goto: (Tool stateFor: 'setAttributeValue');
				yourself).
	(Tool stateFor: 'setAttributeValue')
		mouseMove:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'setAttributeValue');
				yourself).
	(Tool stateFor: 'setAttributeValue')
		redButtonRelease:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'End State');
				yourself).
	(Tool stateFor: 'colorEntity')
		mouseMove:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'colorEntity');
				yourself).
	(Tool stateFor: 'colorEntity')
		redButtonRelease:
			((SimpleTransitionTable new)
				goto: (Tool stateFor: 'End State');
				yourself).
	(Tool stateFor: 'isForColor')
		immediate:
			((ConditionTransitionTable new)
				onCondition: false
					goto: (Tool stateFor: 'isForResetColor');
				onCondition: true
					goto: (Tool stateFor: 'colorEntity');
				yourself)