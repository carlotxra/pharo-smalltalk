Class {
	#name : #ExercismSubmitTest,
	#superclass : #TestCase,
	#category : #'ExercismTools-Tests'
}

{ #category : #running }
ExercismSubmitTest >> setUp [
	ExercismCommand verifyToken 
]

{ #category : #tests }
ExercismSubmitTest >> testSolutionDataForClass [
	|solutionData|
	ExercismDownload exercise: 'hello-world'.
	solutionData := ExercismSubmit solutionDataForClass: HelloWorld.
	self assert: ((solutionData at: 'exercise') at: 'id') equals: 'hello-world'.
]

{ #category : #tests }
ExercismSubmitTest >> testsolutionDataForExercise [
	|solutionData|
	ExercismDownload exercise: 'hello-world'.
	solutionData := ExercismSubmit solutionDataForExercise: 'hello-world'.
	self assert: ((solutionData at: 'exercise') at: 'id') equals: 'hello-world'.
]