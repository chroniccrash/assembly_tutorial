BITS 32			;you must specify bits mode
segment .text   ;you must specify a section


GLOBAL lesson, lessonSize
lesson:
; Lesson_001
; GOAL: place an int3 instruction.  This will tell the program to 'break' and await debugging/instruction.
;;;;;;;;;;;;; YOUR CODE BELOW
	int3
;;;;;;;;;;;;; YOUR CODE ABOVE
	ret
lessonSize dd $-lesson -1