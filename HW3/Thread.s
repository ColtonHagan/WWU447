! Name of package being compiled: Thread
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
! Externally visible functions in this package
	.export	_P_Thread_InitializeScheduler
	.export	_P_Thread_Run
	.export	_P_Thread_PrintReadyList
	.export	_P_Thread_ThreadStartMain
	.export	_P_Thread_ThreadFinish
	.export	_P_Thread_FatalError
	.export	_P_Thread_SetInterruptsTo
	.export	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Thread_Thread
	.export	_Method_P_Thread_Thread_1
	.export	_Method_P_Thread_Thread_2
	.export	_Method_P_Thread_Thread_3
	.export	_Method_P_Thread_Thread_4
	.export	_Method_P_Thread_Thread_5
	.export	_Method_P_Thread_Thread_6
	.export	_Method_P_Thread_Thread_7
	.export	_Method_P_Thread_Thread_8
	.export	_Method_P_Thread_Thread_9
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
! Global variables in this package
	.data
	.export	_P_Thread_readyList
	.export	_P_Thread_one
	.export	_P_Thread_two
	.export	_P_Thread_three
	.export	_P_Thread_four
	.export	_P_Thread_five
	.export	_P_Thread_currentThread
	.export	_P_Thread_mainThread
	.export	_P_Thread_idleThread
	.export	_P_Thread_threadsToBeDestroyed
	.export	_P_Thread_currentInterruptStatus
_P_Thread_readyList:
	.skip	12
_P_Thread_one:
	.skip	12
_P_Thread_two:
	.skip	12
_P_Thread_three:
	.skip	12
_P_Thread_four:
	.skip	12
_P_Thread_five:
	.skip	12
_P_Thread_currentThread:
	.skip	4
_P_Thread_mainThread:
	.skip	4104
_P_Thread_idleThread:
	.skip	4104
_P_Thread_threadsToBeDestroyed:
	.skip	12
_P_Thread_currentInterruptStatus:
	.skip	4
	.align
! String constants
_StringConst_59:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_58:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_57:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_56:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_55:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_54:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_53:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_52:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_51:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_50:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_49:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_48:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_47:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_46:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_45:
	.word	10			! length
	.ascii	"Priority: "
	.align
_StringConst_44:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_43:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_42:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_41:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_40:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_39:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_38:
	.word	11			! length
	.ascii	"error sleep"
	.align
_StringConst_37:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_36:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_35:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_34:
	.word	17			! length
	.ascii	" Demoted back to "
	.align
_StringConst_33:
	.word	13			! length
	.ascii	"Error yeild 2"
	.align
_StringConst_32:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_31:
	.word	13			! length
	.ascii	"Error yield 1"
	.align
_StringConst_30:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_29:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_28:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_27:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_26:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_25:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_24:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_23:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_22:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_21:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_20:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_19:
	.word	29			! length
	.ascii	" Promoted from five to four!\n"
	.align
_StringConst_18:
	.word	30			! length
	.ascii	" Promoted from four to three!\n"
	.align
_StringConst_17:
	.word	29			! length
	.ascii	" Promoted from three to two!\n"
	.align
_StringConst_16:
	.word	27			! length
	.ascii	" Promoted from two to one!\n"
	.align
_StringConst_15:
	.word	31			! length
	.ascii	"Error should not happen - timer"
	.align
_StringConst_14:
	.word	18			! length
	.ascii	"\" -- TERMINATING!\n"
	.align
_StringConst_13:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_12:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_11:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_10:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_9:
	.word	8			! length
	.ascii	"FIVE : \n"
	.align
_StringConst_8:
	.word	8			! length
	.ascii	"FOUR : \n"
	.align
_StringConst_7:
	.word	9			! length
	.ascii	"THREE : \n"
	.align
_StringConst_6:
	.word	7			! length
	.ascii	"TWO : \n"
	.align
_StringConst_5:
	.word	7			! length
	.ascii	"ONE : \n"
	.align
_StringConst_4:
	.word	29			! length
	.ascii	"Here is the priority Queues:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Thread.k\0"
_packageName:
	.ascii	"Thread\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Thread_:
	.export	_CheckVersion_P_Thread_
	set	0xd499e704,r4		! myHashVal = -728111356
	cmp	r3,r4
	be	_Label_64
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_64:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_65
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_65
_Label_65:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Thread_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_InitializeScheduler,r1
	push	r1
	mov	23,r1
_Label_822:
	push	r0
	sub	r1,1,r1
	bne	_Label_822
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_66 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_66  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_readyList = zeros  (sizeInBytes=12)
	set	_P_Thread_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_one = zeros  (sizeInBytes=12)
	set	_P_Thread_one,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_one = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_one,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_two = zeros  (sizeInBytes=12)
	set	_P_Thread_two,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_two = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_two,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_three = zeros  (sizeInBytes=12)
	set	_P_Thread_three,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_three = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_three,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_four = zeros  (sizeInBytes=12)
	set	_P_Thread_four,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_four = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_four,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_five = zeros  (sizeInBytes=12)
	set	_P_Thread_five,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_five = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_five,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Thread_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Thread_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Thread_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_mainThread = zeros  (sizeInBytes=4104)
	set	_P_Thread_mainThread,r4
	mov	1026,r3
_Label_823:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_823
!   _P_Thread_mainThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_75 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-52]
!   _temp_76 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_75  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _temp_77 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-44]
!   _temp_78 = _temp_77 + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_78 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0SE",r10
!   _temp_79 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message setPriority
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_idleThread = zeros  (sizeInBytes=4104)
	set	_P_Thread_idleThread,r4
	mov	1026,r3
_Label_824:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_824
!   _P_Thread_idleThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_81 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-28]
!   _temp_82 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_81  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0SE",r10
!   _temp_83 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+4]
!   Send message setPriority
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! SEND STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0SE",r10
!   _temp_84 = _function_63_IdleFunction
	set	_function_63_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_85 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_84  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
!   _P_Thread_currentThread = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	set	_P_Thread_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	37,r13		! source line 37
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	37,r13		! source line 37
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_86
	.word	0		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_87
	.word	-12
	.word	4
	.word	_Label_88
	.word	-16
	.word	4
	.word	_Label_89
	.word	-20
	.word	4
	.word	_Label_90
	.word	-24
	.word	4
	.word	_Label_91
	.word	-28
	.word	4
	.word	_Label_92
	.word	-32
	.word	4
	.word	_Label_93
	.word	-36
	.word	4
	.word	_Label_94
	.word	-40
	.word	4
	.word	_Label_95
	.word	-44
	.word	4
	.word	_Label_96
	.word	-48
	.word	4
	.word	_Label_97
	.word	-52
	.word	4
	.word	_Label_98
	.word	-56
	.word	4
	.word	_Label_99
	.word	-60
	.word	4
	.word	_Label_100
	.word	-64
	.word	4
	.word	_Label_101
	.word	-68
	.word	4
	.word	_Label_102
	.word	-72
	.word	4
	.word	_Label_103
	.word	-76
	.word	4
	.word	_Label_104
	.word	-80
	.word	4
	.word	_Label_105
	.word	-84
	.word	4
	.word	_Label_106
	.word	-88
	.word	4
	.word	0
_Label_86:
	.ascii	"InitializeScheduler\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_102:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_103:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_104:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_105:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_106:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_63_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_63_IdleFunction,r1
	push	r1
	mov	7,r1
_Label_825:
	push	r0
	sub	r1,1,r1
	bne	_Label_825
	mov	42,r13		! source line 42
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0WH",r10
_Label_107:
!	_Label_108	jmp	_Label_108
_Label_108:
	mov	53,r13		! source line 53
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	54,r13		! source line 54
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0IF",r10
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_116 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-28]
!   Send message IsEmpty
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_115 else goto _Label_111
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_111
	jmp	_Label_115
_Label_115:
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_117 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-24]
!   Send message IsEmpty
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_114 else goto _Label_111
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_111
	jmp	_Label_114
_Label_114:
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_118 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-20]
!   Send message IsEmpty
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_113 else goto _Label_111
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_111
	jmp	_Label_113
_Label_113:
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_119 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-16]
!   Send message IsEmpty
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_112 else goto _Label_111
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_111
	jmp	_Label_112
_Label_112:
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_120 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_110 else goto _Label_111
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_111
	jmp	_Label_110
_Label_110:
! THEN...
	mov	56,r13		! source line 56
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	56,r13		! source line 56
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_121
_Label_111:
! ELSE...
	mov	58,r13		! source line 58
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_121:
! END WHILE...
	jmp	_Label_107
_Label_109:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_63_IdleFunction:
	.word	_sourceFileName
	.word	_Label_122
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_123
	.word	8
	.word	4
	.word	_Label_124
	.word	-12
	.word	4
	.word	_Label_125
	.word	-16
	.word	4
	.word	_Label_126
	.word	-20
	.word	4
	.word	_Label_127
	.word	-24
	.word	4
	.word	_Label_128
	.word	-28
	.word	4
	.word	_Label_129
	.word	-32
	.word	4
	.word	0
_Label_122:
	.ascii	"IdleFunction\0"
	.align
_Label_123:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_129:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Thread_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_Run,r1
	push	r1
	mov	9,r1
_Label_826:
	push	r0
	sub	r1,1,r1
	bne	_Label_826
	mov	65,r13		! source line 65
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
!   prevThread = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-32]
! SEND STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0AS",r10
!   _P_Thread_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Thread_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	79,r13		! source line 79
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_130 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_130 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	85,r13		! source line 85
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0WH",r10
_Label_131:
	mov	89,r13		! source line 89
	mov	"\0\0SE",r10
!   _temp_135 = &_P_Thread_threadsToBeDestroyed
	set	_P_Thread_threadsToBeDestroyed,r1
	store	r1,[r14+-24]
!   Send message IsEmpty
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_134  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_134 then goto _Label_133 else goto _Label_132
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_132
	jmp	_Label_133
_Label_132:
	mov	89,r13		! source line 89
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0AS",r10
	mov	90,r13		! source line 90
	mov	"\0\0SE",r10
!   _temp_136 = &_P_Thread_threadsToBeDestroyed
	set	_P_Thread_threadsToBeDestroyed,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_137 = th + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_137 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-16],r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_131
_Label_133:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_Run:
	.word	_sourceFileName
	.word	_Label_138
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_139
	.word	8
	.word	4
	.word	_Label_140
	.word	-16
	.word	4
	.word	_Label_141
	.word	-20
	.word	4
	.word	_Label_142
	.word	-24
	.word	4
	.word	_Label_143
	.word	-9
	.word	1
	.word	_Label_144
	.word	-28
	.word	4
	.word	_Label_145
	.word	-32
	.word	4
	.word	_Label_146
	.word	-36
	.word	4
	.word	0
_Label_138:
	.ascii	"Run\0"
	.align
_Label_139:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_143:
	.byte	'C'
	.ascii	"_temp_134\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_145:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_146:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Thread_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_PrintReadyList,r1
	push	r1
	mov	19,r1
_Label_827:
	push	r0
	sub	r1,1,r1
	bne	_Label_827
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! CALL STATEMENT...
!   _temp_147 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_147  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_148 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_148  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_149 = _function_60_ThreadPrint
	set	_function_60_ThreadPrint,r1
	store	r1,[r14+-64]
!   _temp_150 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_149  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   _temp_151 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_151  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0SE",r10
!   _temp_152 = _function_60_ThreadPrint
	set	_function_60_ThreadPrint,r1
	store	r1,[r14+-52]
!   _temp_153 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_152  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   _temp_154 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_154  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0SE",r10
!   _temp_155 = _function_60_ThreadPrint
	set	_function_60_ThreadPrint,r1
	store	r1,[r14+-40]
!   _temp_156 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_155  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   _temp_157 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_157  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0SE",r10
!   _temp_158 = _function_60_ThreadPrint
	set	_function_60_ThreadPrint,r1
	store	r1,[r14+-28]
!   _temp_159 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_158  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   _temp_160 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_160  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0SE",r10
!   _temp_161 = _function_60_ThreadPrint
	set	_function_60_ThreadPrint,r1
	store	r1,[r14+-16]
!   _temp_162 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_161  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	116,r13		! source line 116
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! RETURN STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_163
	.word	0		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_164
	.word	-12
	.word	4
	.word	_Label_165
	.word	-16
	.word	4
	.word	_Label_166
	.word	-20
	.word	4
	.word	_Label_167
	.word	-24
	.word	4
	.word	_Label_168
	.word	-28
	.word	4
	.word	_Label_169
	.word	-32
	.word	4
	.word	_Label_170
	.word	-36
	.word	4
	.word	_Label_171
	.word	-40
	.word	4
	.word	_Label_172
	.word	-44
	.word	4
	.word	_Label_173
	.word	-48
	.word	4
	.word	_Label_174
	.word	-52
	.word	4
	.word	_Label_175
	.word	-56
	.word	4
	.word	_Label_176
	.word	-60
	.word	4
	.word	_Label_177
	.word	-64
	.word	4
	.word	_Label_178
	.word	-68
	.word	4
	.word	_Label_179
	.word	-72
	.word	4
	.word	_Label_180
	.word	-76
	.word	4
	.word	0
_Label_163:
	.ascii	"PrintReadyList\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_160\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_159\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_157\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_156\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_180:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Thread_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_828:
	push	r0
	sub	r1,1,r1
	bne	_Label_828
	mov	122,r13		! source line 122
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	134,r13		! source line 134
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0AS",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_181 = _P_Thread_currentThread + 80
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_181  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_183 = _P_Thread_currentThread + 84
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_182 = *_temp_183  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_182  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	136,r13		! source line 136
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	137,r13		! source line 137
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! CALL STATEMENT...
!   _temp_184 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_184  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	138,r13		! source line 138
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! RETURN STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_185
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_186
	.word	-12
	.word	4
	.word	_Label_187
	.word	-16
	.word	4
	.word	_Label_188
	.word	-20
	.word	4
	.word	_Label_189
	.word	-24
	.word	4
	.word	_Label_190
	.word	-28
	.word	4
	.word	_Label_191
	.word	-32
	.word	4
	.word	0
_Label_185:
	.ascii	"ThreadStartMain\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_190:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_191:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Thread_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_ThreadFinish,r1
	push	r1
	mov	4,r1
_Label_829:
	push	r0
	sub	r1,1,r1
	bne	_Label_829
	mov	143,r13		! source line 143
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	154,r13		! source line 154
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	154,r13		! source line 154
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! SEND STATEMENT...
	mov	158,r13		! source line 158
	mov	"\0\0SE",r10
!   _temp_192 = &_P_Thread_threadsToBeDestroyed
	set	_P_Thread_threadsToBeDestroyed,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	159,r13		! source line 159
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! --------------------  DEBUG  --------------------
	mov	161,r13		! source line 161
	mov	"\0\0DE",r10
	debug
! RETURN STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_193
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_194
	.word	-12
	.word	4
	.word	_Label_195
	.word	-16
	.word	4
	.word	0
_Label_193:
	.ascii	"ThreadFinish\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_195:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError  ===============
! 
_P_Thread_FatalError:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_FatalError,r1
	push	r1
	mov	8,r1
_Label_830:
	push	r0
	sub	r1,1,r1
	bne	_Label_830
	mov	166,r13		! source line 166
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! CALL STATEMENT...
!   _temp_196 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_196  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0IF",r10
!   if _P_Thread_currentThread == 0 then goto _Label_198		(int)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_198
!	_Label_197	jmp	_Label_197
_Label_197:
! THEN...
	mov	176,r13		! source line 176
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_199 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_199  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_201 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Data Move: _temp_200 = *_temp_201  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_200  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_198:
! CALL STATEMENT...
!   _temp_202 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_202  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	179,r13		! source line 179
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	180,r13		! source line 180
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_203 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_203  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	181,r13		! source line 181
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	182,r13		! source line 182
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	182,r13		! source line 182
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_FatalError:
	.word	_sourceFileName
	.word	_Label_204
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_205
	.word	8
	.word	4
	.word	_Label_206
	.word	-12
	.word	4
	.word	_Label_207
	.word	-16
	.word	4
	.word	_Label_208
	.word	-20
	.word	4
	.word	_Label_209
	.word	-24
	.word	4
	.word	_Label_210
	.word	-28
	.word	4
	.word	_Label_211
	.word	-32
	.word	4
	.word	_Label_212
	.word	-36
	.word	4
	.word	0
_Label_204:
	.ascii	"FatalError\0"
	.align
_Label_205:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_212:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Thread_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_831:
	push	r0
	sub	r1,1,r1
	bne	_Label_831
	mov	187,r13		! source line 187
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	200,r13		! source line 200
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0AS",r10
!   oldStat = _P_Thread_currentInterruptStatus		(4 bytes)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_214		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_214
!	_Label_213	jmp	_Label_213
_Label_213:
! THEN...
	mov	203,r13		! source line 203
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	204,r13		! source line 204
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_215
_Label_214:
! ELSE...
	mov	206,r13		! source line 206
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	207,r13		! source line 207
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_215:
! RETURN STATEMENT...
	mov	209,r13		! source line 209
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_216
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_217
	.word	8
	.word	4
	.word	_Label_218
	.word	-12
	.word	4
	.word	0
_Label_216:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_217:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_218:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Thread_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_TimerInterruptHandler,r1
	push	r1
	mov	22,r1
_Label_832:
	push	r0
	sub	r1,1,r1
	bne	_Label_832
	mov	214,r13		! source line 214
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0IF",r10
	mov	227,r13		! source line 227
	mov	"\0\0SE",r10
!   _temp_222 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-84]
!   Send message IsEmpty
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_221  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_221 then goto _Label_220 else goto _Label_219
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_219
	jmp	_Label_220
_Label_219:
! THEN...
	mov	228,r13		! source line 228
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0AS",r10
!   highestPrio = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-88]
	jmp	_Label_223
_Label_220:
! ELSE...
	mov	229,r13		! source line 229
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0IF",r10
	mov	229,r13		! source line 229
	mov	"\0\0SE",r10
!   _temp_227 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-80]
!   Send message IsEmpty
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_226  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_226 then goto _Label_225 else goto _Label_224
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_224
	jmp	_Label_225
_Label_224:
! THEN...
	mov	230,r13		! source line 230
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0AS",r10
!   highestPrio = 2		(4 bytes)
	mov	2,r1
	store	r1,[r14+-88]
	jmp	_Label_228
_Label_225:
! ELSE...
	mov	231,r13		! source line 231
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
	mov	231,r13		! source line 231
	mov	"\0\0SE",r10
!   _temp_232 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-76]
!   Send message IsEmpty
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_231  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_231 then goto _Label_230 else goto _Label_229
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_229
	jmp	_Label_230
_Label_229:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0AS",r10
!   highestPrio = 3		(4 bytes)
	mov	3,r1
	store	r1,[r14+-88]
	jmp	_Label_233
_Label_230:
! ELSE...
	mov	233,r13		! source line 233
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0IF",r10
	mov	233,r13		! source line 233
	mov	"\0\0SE",r10
!   _temp_237 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-72]
!   Send message IsEmpty
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_236  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_236 then goto _Label_235 else goto _Label_234
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_234
	jmp	_Label_235
_Label_234:
! THEN...
	mov	234,r13		! source line 234
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   highestPrio = 4		(4 bytes)
	mov	4,r1
	store	r1,[r14+-88]
	jmp	_Label_238
_Label_235:
! ELSE...
	mov	235,r13		! source line 235
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0IF",r10
	mov	235,r13		! source line 235
	mov	"\0\0SE",r10
!   _temp_242 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-68]
!   Send message IsEmpty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_241  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_241 then goto _Label_240 else goto _Label_239
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_239
	jmp	_Label_240
_Label_239:
! THEN...
	mov	236,r13		! source line 236
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   highestPrio = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-88]
	jmp	_Label_243
_Label_240:
! ELSE...
	mov	238,r13		! source line 238
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_244 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_244  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	238,r13		! source line 238
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_243:
! END IF...
_Label_238:
! END IF...
_Label_233:
! END IF...
_Label_228:
! END IF...
_Label_223:
! SEND STATEMENT...
	mov	240,r13		! source line 240
	mov	"\0\0SE",r10
!   _temp_245 = _function_62_ageThread
	set	_function_62_ageThread,r1
	store	r1,[r14+-60]
!   _temp_246 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_245  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0SE",r10
!   _temp_247 = _function_62_ageThread
	set	_function_62_ageThread,r1
	store	r1,[r14+-52]
!   _temp_248 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_247  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0SE",r10
!   _temp_249 = _function_62_ageThread
	set	_function_62_ageThread,r1
	store	r1,[r14+-44]
!   _temp_250 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_249  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0SE",r10
!   _temp_251 = _function_62_ageThread
	set	_function_62_ageThread,r1
	store	r1,[r14+-36]
!   _temp_252 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_251  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0SE",r10
!   _temp_253 = _function_62_ageThread
	set	_function_62_ageThread,r1
	store	r1,[r14+-28]
!   _temp_254 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_253  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CA",r10
	call	_function_61_promoteThreads
! IF STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0IF",r10
	mov	246,r13		! source line 246
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message getPriority
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_257  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if highestPrio > _temp_257 then goto _Label_256		(int)
	load	[r14+-88],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_256
!	_Label_255	jmp	_Label_255
_Label_255:
! THEN...
	mov	247,r13		! source line 247
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_256:
! ASSIGNMENT STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_258
	.word	0		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_259
	.word	-20
	.word	4
	.word	_Label_260
	.word	-24
	.word	4
	.word	_Label_261
	.word	-28
	.word	4
	.word	_Label_262
	.word	-32
	.word	4
	.word	_Label_263
	.word	-36
	.word	4
	.word	_Label_264
	.word	-40
	.word	4
	.word	_Label_265
	.word	-44
	.word	4
	.word	_Label_266
	.word	-48
	.word	4
	.word	_Label_267
	.word	-52
	.word	4
	.word	_Label_268
	.word	-56
	.word	4
	.word	_Label_269
	.word	-60
	.word	4
	.word	_Label_270
	.word	-64
	.word	4
	.word	_Label_271
	.word	-68
	.word	4
	.word	_Label_272
	.word	-9
	.word	1
	.word	_Label_273
	.word	-72
	.word	4
	.word	_Label_274
	.word	-10
	.word	1
	.word	_Label_275
	.word	-76
	.word	4
	.word	_Label_276
	.word	-11
	.word	1
	.word	_Label_277
	.word	-80
	.word	4
	.word	_Label_278
	.word	-12
	.word	1
	.word	_Label_279
	.word	-84
	.word	4
	.word	_Label_280
	.word	-13
	.word	1
	.word	_Label_281
	.word	-88
	.word	4
	.word	0
_Label_258:
	.ascii	"TimerInterruptHandler\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_272:
	.byte	'C'
	.ascii	"_temp_241\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_274:
	.byte	'C'
	.ascii	"_temp_236\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_276:
	.byte	'C'
	.ascii	"_temp_231\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_278:
	.byte	'C'
	.ascii	"_temp_226\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_280:
	.byte	'C'
	.ascii	"_temp_221\0"
	.align
_Label_281:
	.byte	'I'
	.ascii	"highestPrio\0"
	.align
! 
! ===============  FUNCTION ageThread  ===============
! 
_function_62_ageThread:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_62_ageThread,r1
	push	r1
	mov	4,r1
_Label_833:
	push	r0
	sub	r1,1,r1
	bne	_Label_833
	mov	252,r13		! source line 252
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_282 = t + 4100
	load	[r14+8],r1
	add	r1,4100,r1
	store	r1,[r14+-24]
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_285 = t + 4100
	load	[r14+8],r1
	add	r1,4100,r1
	store	r1,[r14+-12]
!   Data Move: _temp_284 = *_temp_285  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   _temp_283 = _temp_284 + 1		(int)
	load	[r14+-16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Data Move: *_temp_282 = _temp_283  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+-24],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_62_ageThread:
	.word	_sourceFileName
	.word	_Label_286
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_287
	.word	8
	.word	4
	.word	_Label_288
	.word	-12
	.word	4
	.word	_Label_289
	.word	-16
	.word	4
	.word	_Label_290
	.word	-20
	.word	4
	.word	_Label_291
	.word	-24
	.word	4
	.word	0
_Label_286:
	.ascii	"ageThread\0"
	.align
_Label_287:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
! 
! ===============  FUNCTION promoteThreads  ===============
! 
_function_61_promoteThreads:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_61_promoteThreads,r1
	push	r1
	mov	55,r1
_Label_834:
	push	r0
	sub	r1,1,r1
	bne	_Label_834
	mov	256,r13		! source line 256
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0WH",r10
_Label_292:
!	_Label_293	jmp	_Label_293
_Label_293:
	mov	258,r13		! source line 258
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0AS",r10
	mov	259,r13		! source line 259
	mov	"\0\0SE",r10
!   _temp_295 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-216]
!   Send message Remove
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=checkThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-220]
! IF STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0IF",r10
!   if intIsZero (checkThread) then goto _Label_296
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_296
	jmp	_Label_297
_Label_296:
! THEN...
	mov	261,r13		! source line 261
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0BR",r10
	jmp	_Label_294
! END IF...
_Label_297:
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_301 = checkThread + 4100
	load	[r14+-220],r1
	add	r1,4100,r1
	store	r1,[r14+-208]
!   Data Move: _temp_300 = *_temp_301  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if _temp_300 < 5 then goto _Label_299		(int)
	load	[r14+-212],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_299
!	_Label_298	jmp	_Label_298
_Label_298:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0AS",r10
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_302 = checkThread + 4100
	load	[r14+-220],r1
	add	r1,4100,r1
	store	r1,[r14+-204]
!   Data Move: *_temp_302 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-204],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0SE",r10
!   _temp_303 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=12  value=checkThread  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-200],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_304 = checkThread + 4096
	load	[r14+-220],r1
	add	r1,4096,r1
	store	r1,[r14+-196]
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_307 = checkThread + 4096
	load	[r14+-220],r1
	add	r1,4096,r1
	store	r1,[r14+-184]
!   Data Move: _temp_306 = *_temp_307  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   _temp_305 = _temp_306 + 1		(int)
	load	[r14+-188],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
!   Data Move: *_temp_304 = _temp_305  (sizeInBytes=4)
	load	[r14+-192],r1
	load	[r14+-196],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_309 = checkThread + 72
	load	[r14+-220],r1
	add	r1,72,r1
	store	r1,[r14+-176]
!   Data Move: _temp_308 = *_temp_309  (sizeInBytes=4)
	load	[r14+-176],r1
	load	[r1],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	267,r13		! source line 267
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_310 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	268,r13		! source line 268
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_311
_Label_299:
! ELSE...
	mov	270,r13		! source line 270
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_312 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=12  value=checkThread  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-168],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! BREAK STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0BR",r10
	jmp	_Label_294
! END IF...
_Label_311:
! END WHILE...
	jmp	_Label_292
_Label_294:
! WHILE STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0WH",r10
_Label_313:
!	_Label_314	jmp	_Label_314
_Label_314:
	mov	274,r13		! source line 274
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0AS",r10
	mov	275,r13		! source line 275
	mov	"\0\0SE",r10
!   _temp_316 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-164]
!   Send message Remove
	load	[r14+-164],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=checkThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-220]
! IF STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0IF",r10
!   if intIsZero (checkThread) then goto _Label_317
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_317
	jmp	_Label_318
_Label_317:
! THEN...
	mov	277,r13		! source line 277
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0BR",r10
	jmp	_Label_315
! END IF...
_Label_318:
! IF STATEMENT...
	mov	279,r13		! source line 279
	mov	"\0\0IF",r10
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_322 = checkThread + 4100
	load	[r14+-220],r1
	add	r1,4100,r1
	store	r1,[r14+-156]
!   Data Move: _temp_321 = *_temp_322  (sizeInBytes=4)
	load	[r14+-156],r1
	load	[r1],r1
	store	r1,[r14+-160]
!   if _temp_321 < 5 then goto _Label_320		(int)
	load	[r14+-160],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_320
!	_Label_319	jmp	_Label_319
_Label_319:
! THEN...
	mov	280,r13		! source line 280
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0AS",r10
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_323 = checkThread + 4100
	load	[r14+-220],r1
	add	r1,4100,r1
	store	r1,[r14+-152]
!   Data Move: *_temp_323 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-152],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	281,r13		! source line 281
	mov	"\0\0SE",r10
!   _temp_324 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=12  value=checkThread  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-148],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0AS",r10
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_325 = checkThread + 4096
	load	[r14+-220],r1
	add	r1,4096,r1
	store	r1,[r14+-144]
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_328 = checkThread + 4096
	load	[r14+-220],r1
	add	r1,4096,r1
	store	r1,[r14+-132]
!   Data Move: _temp_327 = *_temp_328  (sizeInBytes=4)
	load	[r14+-132],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   _temp_326 = _temp_327 + 1		(int)
	load	[r14+-136],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
!   Data Move: *_temp_325 = _temp_326  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-144],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_330 = checkThread + 72
	load	[r14+-220],r1
	add	r1,72,r1
	store	r1,[r14+-124]
!   Data Move: _temp_329 = *_temp_330  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	283,r13		! source line 283
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_331 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	284,r13		! source line 284
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_332
_Label_320:
! ELSE...
	mov	286,r13		! source line 286
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0SE",r10
!   _temp_333 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=12  value=checkThread  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! BREAK STATEMENT...
	mov	287,r13		! source line 287
	mov	"\0\0BR",r10
	jmp	_Label_315
! END IF...
_Label_332:
! END WHILE...
	jmp	_Label_313
_Label_315:
! WHILE STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0WH",r10
_Label_334:
!	_Label_335	jmp	_Label_335
_Label_335:
	mov	290,r13		! source line 290
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0AS",r10
	mov	291,r13		! source line 291
	mov	"\0\0SE",r10
!   _temp_337 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-112]
!   Send message Remove
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=checkThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-220]
! IF STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0IF",r10
!   if intIsZero (checkThread) then goto _Label_338
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_338
	jmp	_Label_339
_Label_338:
! THEN...
	mov	293,r13		! source line 293
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0BR",r10
	jmp	_Label_336
! END IF...
_Label_339:
! IF STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0IF",r10
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_343 = checkThread + 4100
	load	[r14+-220],r1
	add	r1,4100,r1
	store	r1,[r14+-104]
!   Data Move: _temp_342 = *_temp_343  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if _temp_342 < 5 then goto _Label_341		(int)
	load	[r14+-108],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_341
!	_Label_340	jmp	_Label_340
_Label_340:
! THEN...
	mov	296,r13		! source line 296
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_344 = checkThread + 4100
	load	[r14+-220],r1
	add	r1,4100,r1
	store	r1,[r14+-100]
!   Data Move: *_temp_344 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0SE",r10
!   _temp_345 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=checkThread  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0AS",r10
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_346 = checkThread + 4096
	load	[r14+-220],r1
	add	r1,4096,r1
	store	r1,[r14+-92]
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_349 = checkThread + 4096
	load	[r14+-220],r1
	add	r1,4096,r1
	store	r1,[r14+-80]
!   Data Move: _temp_348 = *_temp_349  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   _temp_347 = _temp_348 + 1		(int)
	load	[r14+-84],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
!   Data Move: *_temp_346 = _temp_347  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r14+-92],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_351 = checkThread + 72
	load	[r14+-220],r1
	add	r1,72,r1
	store	r1,[r14+-72]
!   Data Move: _temp_350 = *_temp_351  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	299,r13		! source line 299
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_352 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_352  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	300,r13		! source line 300
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_353
_Label_341:
! ELSE...
	mov	302,r13		! source line 302
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0SE",r10
!   _temp_354 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=checkThread  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! BREAK STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0BR",r10
	jmp	_Label_336
! END IF...
_Label_353:
! END WHILE...
	jmp	_Label_334
_Label_336:
! WHILE STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0WH",r10
_Label_355:
!	_Label_356	jmp	_Label_356
_Label_356:
	mov	306,r13		! source line 306
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0AS",r10
	mov	307,r13		! source line 307
	mov	"\0\0SE",r10
!   _temp_358 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-60]
!   Send message Remove
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=checkThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-220]
! IF STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0IF",r10
!   if intIsZero (checkThread) then goto _Label_359
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_359
	jmp	_Label_360
_Label_359:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0BR",r10
	jmp	_Label_357
! END IF...
_Label_360:
! IF STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0IF",r10
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_364 = checkThread + 4100
	load	[r14+-220],r1
	add	r1,4100,r1
	store	r1,[r14+-52]
!   Data Move: _temp_363 = *_temp_364  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_363 < 5 then goto _Label_362		(int)
	load	[r14+-56],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_362
!	_Label_361	jmp	_Label_361
_Label_361:
! THEN...
	mov	312,r13		! source line 312
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0AS",r10
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_365 = checkThread + 4100
	load	[r14+-220],r1
	add	r1,4100,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_365 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0SE",r10
!   _temp_366 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=checkThread  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0AS",r10
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_367 = checkThread + 4096
	load	[r14+-220],r1
	add	r1,4096,r1
	store	r1,[r14+-40]
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_370 = checkThread + 4096
	load	[r14+-220],r1
	add	r1,4096,r1
	store	r1,[r14+-28]
!   Data Move: _temp_369 = *_temp_370  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   _temp_368 = _temp_369 + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Data Move: *_temp_367 = _temp_368  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r14+-40],r2
	store	r1,[r2]
! CALL STATEMENT...
!   if intIsZero (checkThread) then goto _runtimeErrorNullPointer
	load	[r14+-220],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_372 = checkThread + 72
	load	[r14+-220],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Data Move: _temp_371 = *_temp_372  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	315,r13		! source line 315
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_373 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	316,r13		! source line 316
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_374
_Label_362:
! ELSE...
	mov	318,r13		! source line 318
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0SE",r10
!   _temp_375 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=checkThread  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! BREAK STATEMENT...
	mov	319,r13		! source line 319
	mov	"\0\0BR",r10
	jmp	_Label_357
! END IF...
_Label_374:
! END WHILE...
	jmp	_Label_355
_Label_357:
! RETURN STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0RE",r10
	add	r15,224,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_61_promoteThreads:
	.word	_sourceFileName
	.word	_Label_376
	.word	0		! total size of parameters
	.word	220		! frame size = 220
	.word	_Label_377
	.word	-12
	.word	4
	.word	_Label_378
	.word	-16
	.word	4
	.word	_Label_379
	.word	-20
	.word	4
	.word	_Label_380
	.word	-24
	.word	4
	.word	_Label_381
	.word	-28
	.word	4
	.word	_Label_382
	.word	-32
	.word	4
	.word	_Label_383
	.word	-36
	.word	4
	.word	_Label_384
	.word	-40
	.word	4
	.word	_Label_385
	.word	-44
	.word	4
	.word	_Label_386
	.word	-48
	.word	4
	.word	_Label_387
	.word	-52
	.word	4
	.word	_Label_388
	.word	-56
	.word	4
	.word	_Label_389
	.word	-60
	.word	4
	.word	_Label_390
	.word	-64
	.word	4
	.word	_Label_391
	.word	-68
	.word	4
	.word	_Label_392
	.word	-72
	.word	4
	.word	_Label_393
	.word	-76
	.word	4
	.word	_Label_394
	.word	-80
	.word	4
	.word	_Label_395
	.word	-84
	.word	4
	.word	_Label_396
	.word	-88
	.word	4
	.word	_Label_397
	.word	-92
	.word	4
	.word	_Label_398
	.word	-96
	.word	4
	.word	_Label_399
	.word	-100
	.word	4
	.word	_Label_400
	.word	-104
	.word	4
	.word	_Label_401
	.word	-108
	.word	4
	.word	_Label_402
	.word	-112
	.word	4
	.word	_Label_403
	.word	-116
	.word	4
	.word	_Label_404
	.word	-120
	.word	4
	.word	_Label_405
	.word	-124
	.word	4
	.word	_Label_406
	.word	-128
	.word	4
	.word	_Label_407
	.word	-132
	.word	4
	.word	_Label_408
	.word	-136
	.word	4
	.word	_Label_409
	.word	-140
	.word	4
	.word	_Label_410
	.word	-144
	.word	4
	.word	_Label_411
	.word	-148
	.word	4
	.word	_Label_412
	.word	-152
	.word	4
	.word	_Label_413
	.word	-156
	.word	4
	.word	_Label_414
	.word	-160
	.word	4
	.word	_Label_415
	.word	-164
	.word	4
	.word	_Label_416
	.word	-168
	.word	4
	.word	_Label_417
	.word	-172
	.word	4
	.word	_Label_418
	.word	-176
	.word	4
	.word	_Label_419
	.word	-180
	.word	4
	.word	_Label_420
	.word	-184
	.word	4
	.word	_Label_421
	.word	-188
	.word	4
	.word	_Label_422
	.word	-192
	.word	4
	.word	_Label_423
	.word	-196
	.word	4
	.word	_Label_424
	.word	-200
	.word	4
	.word	_Label_425
	.word	-204
	.word	4
	.word	_Label_426
	.word	-208
	.word	4
	.word	_Label_427
	.word	-212
	.word	4
	.word	_Label_428
	.word	-216
	.word	4
	.word	_Label_429
	.word	-220
	.word	4
	.word	0
_Label_376:
	.ascii	"promoteThreads\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_429:
	.byte	'P'
	.ascii	"checkThread\0"
	.align
! 
! ===============  FUNCTION ThreadPrint  ===============
! 
_function_60_ThreadPrint:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_60_ThreadPrint,r1
	push	r1
	mov	17,r1
_Label_835:
	push	r0
	sub	r1,1,r1
	bne	_Label_835
	mov	326,r13		! source line 326
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	333,r13		! source line 333
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   _temp_430 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_430  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_432 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-60]
!   Data Move: _temp_431 = *_temp_432  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_431  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	335,r13		! source line 335
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_433 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_433  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	336,r13		! source line 336
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	337,r13		! source line 337
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_442 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-48]
!   Data Move: _temp_441 = *_temp_442  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Branch to the right case label
	load	[r14+-52],r1
	cmp	r1,1
	be	_Label_436
	cmp	r1,2
	be	_Label_437
	cmp	r1,3
	be	_Label_438
	cmp	r1,4
	be	_Label_439
	cmp	r1,5
	be	_Label_440
	jmp	_Label_434
! CASE 1...
_Label_436:
! CALL STATEMENT...
!   _temp_443 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_443  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	339,r13		! source line 339
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0BR",r10
	jmp	_Label_435
! CASE 2...
_Label_437:
! CALL STATEMENT...
!   _temp_444 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	342,r13		! source line 342
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0BR",r10
	jmp	_Label_435
! CASE 3...
_Label_438:
! CALL STATEMENT...
!   _temp_445 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_445  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	345,r13		! source line 345
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0BR",r10
	jmp	_Label_435
! CASE 4...
_Label_439:
! CALL STATEMENT...
!   _temp_446 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_446  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	348,r13		! source line 348
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0BR",r10
	jmp	_Label_435
! CASE 5...
_Label_440:
! CALL STATEMENT...
!   _temp_447 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_447  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	351,r13		! source line 351
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0BR",r10
	jmp	_Label_435
! DEFAULT CASE...
_Label_434:
! CALL STATEMENT...
!   _temp_448 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_448  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	354,r13		! source line 354
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_435:
! CALL STATEMENT...
!   _temp_449 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_449  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	356,r13		! source line 356
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_450 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_450  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	357,r13		! source line 357
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_451 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_451  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	358,r13		! source line 358
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	359,r13		! source line 359
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	361,r13		! source line 361
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! RETURN STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_60_ThreadPrint:
	.word	_sourceFileName
	.word	_Label_452
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_453
	.word	8
	.word	4
	.word	_Label_454
	.word	-12
	.word	4
	.word	_Label_455
	.word	-16
	.word	4
	.word	_Label_456
	.word	-20
	.word	4
	.word	_Label_457
	.word	-24
	.word	4
	.word	_Label_458
	.word	-28
	.word	4
	.word	_Label_459
	.word	-32
	.word	4
	.word	_Label_460
	.word	-36
	.word	4
	.word	_Label_461
	.word	-40
	.word	4
	.word	_Label_462
	.word	-44
	.word	4
	.word	_Label_463
	.word	-48
	.word	4
	.word	_Label_464
	.word	-52
	.word	4
	.word	_Label_465
	.word	-56
	.word	4
	.word	_Label_466
	.word	-60
	.word	4
	.word	_Label_467
	.word	-64
	.word	4
	.word	_Label_468
	.word	-68
	.word	4
	.word	_Label_469
	.word	-72
	.word	4
	.word	0
_Label_452:
	.ascii	"ThreadPrint\0"
	.align
_Label_453:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_469:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Thread_Thread:
	.word	_Label_470
	jmp	_Method_P_Thread_Thread_1	! 4:	Init
	jmp	_Method_P_Thread_Thread_2	! 8:	Fork
	jmp	_Method_P_Thread_Thread_3	! 12:	Yield
	jmp	_Method_P_Thread_Thread_4	! 16:	Sleep
	jmp	_Method_P_Thread_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Thread_Thread_6	! 24:	Print
	jmp	_Method_P_Thread_Thread_7	! 28:	setPriority
	jmp	_Method_P_Thread_Thread_8	! 32:	getPriority
	jmp	_Method_P_Thread_Thread_9	! 36:	getTime
	.word	0
! 
! Class descriptor:
! 
_Label_470:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_471
	.word	_sourceFileName
	.word	41		! line number
	.word	4104		! size of instances, in bytes
	.word	_P_Thread_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_471:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Thread_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_1,r1
	push	r1
	mov	25,r1
_Label_836:
	push	r0
	sub	r1,1,r1
	bne	_Label_836
	mov	370,r13		! source line 370
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	376,r13		! source line 376
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0AS",r10
!   _temp_472 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_472) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_472 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-108],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0AS",r10
!   _temp_473 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-104]
!   Move address of _temp_473 [0 ] into _temp_474
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-104],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-100]
!   Data Move: *_temp_474 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	380,r13		! source line 380
	mov	"\0\0AS",r10
!   _temp_475 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-96]
!   Move address of _temp_475 [999 ] into _temp_476
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Data Move: *_temp_476 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   _temp_477 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-88]
!   Move address of _temp_477 [999 ] into _temp_478
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   stackTop = _temp_478		(4 bytes)
	load	[r14+-84],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0AS",r10
!   _temp_479 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-80]
!   NEW ARRAY Constructor...
!   _temp_481 = &_temp_480
	add	r14,-76,r1
	store	r1,[r14+-20]
!   _temp_481 = _temp_481 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	13,r1
	store	r1,[r14+-16]
_Label_483:
!   Data Move: *_temp_481 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_481 = _temp_481 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_482 = _temp_482 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_482) then goto _Label_483
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_483
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-76]
!   _temp_484 = &_temp_480
	add	r14,-76,r1
	store	r1,[r14+-12]
!   make sure array has size 13
	load	[r14+-80],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_837
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_837:
!   make sure array has size 13
	load	[r14+-12],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_479 = *_temp_484  (sizeInBytes=56)
	load	[r14+-12],r5
	load	[r14+-80],r4
	mov	14,r3
_Label_838:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_838
! ASSIGNMENT STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0AS",r10
!   prio = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0AS",r10
!   time = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4100]
! ASSIGNMENT STATEMENT...
	mov	385,r13		! source line 385
	mov	"\0\0AS",r10
!   currPrio = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4096]
! RETURN STATEMENT...
	mov	385,r13		! source line 385
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_1:
	.word	_sourceFileName
	.word	_Label_485
	.word	8		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_486
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_487
	.word	12
	.word	4
	.word	_Label_488
	.word	-12
	.word	4
	.word	_Label_489
	.word	-16
	.word	4
	.word	_Label_490
	.word	-20
	.word	4
	.word	_Label_491
	.word	-76
	.word	56
	.word	_Label_492
	.word	-80
	.word	4
	.word	_Label_493
	.word	-84
	.word	4
	.word	_Label_494
	.word	-88
	.word	4
	.word	_Label_495
	.word	-92
	.word	4
	.word	_Label_496
	.word	-96
	.word	4
	.word	_Label_497
	.word	-100
	.word	4
	.word	_Label_498
	.word	-104
	.word	4
	.word	_Label_499
	.word	-108
	.word	4
	.word	0
_Label_485:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_486:
	.ascii	"Pself\0"
	.align
_Label_487:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_476\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Thread_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_2,r1
	push	r1
	mov	15,r1
_Label_839:
	push	r0
	sub	r1,1,r1
	bne	_Label_839
	mov	390,r13		! source line 390
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	401,r13		! source line 401
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_500 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-52]
!   Data Move: *stackTop = _temp_500  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! IF STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0IF",r10
!   if prio != 1 then goto _Label_502		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_502
!	_Label_501	jmp	_Label_501
_Label_501:
! THEN...
	mov	410,r13		! source line 410
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   _temp_504 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_503  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_505
_Label_502:
! ELSE...
	mov	411,r13		! source line 411
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0IF",r10
!   if prio != 2 then goto _Label_507		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_507
!	_Label_506	jmp	_Label_506
_Label_506:
! THEN...
	mov	412,r13		! source line 412
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   _temp_509 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_508  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_510
_Label_507:
! ELSE...
	mov	413,r13		! source line 413
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0IF",r10
!   if prio != 3 then goto _Label_512		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_512
!	_Label_511	jmp	_Label_511
_Label_511:
! THEN...
	mov	414,r13		! source line 414
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   _temp_514 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_513  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_515
_Label_512:
! ELSE...
	mov	415,r13		! source line 415
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0IF",r10
!   if prio != 4 then goto _Label_517		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_517
!	_Label_516	jmp	_Label_516
_Label_516:
! THEN...
	mov	416,r13		! source line 416
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   _temp_519 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_518  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_520
_Label_517:
! ELSE...
	mov	417,r13		! source line 417
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0IF",r10
!   if prio != 5 then goto _Label_522		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_522
!	_Label_521	jmp	_Label_521
_Label_521:
! THEN...
	mov	418,r13		! source line 418
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	418,r13		! source line 418
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_524 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_523  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_522:
! END IF...
_Label_520:
! END IF...
_Label_515:
! END IF...
_Label_510:
! END IF...
_Label_505:
! ASSIGNMENT STATEMENT...
	mov	420,r13		! source line 420
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	420,r13		! source line 420
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	420,r13		! source line 420
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_2:
	.word	_sourceFileName
	.word	_Label_525
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_526
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_527
	.word	12
	.word	4
	.word	_Label_528
	.word	16
	.word	4
	.word	_Label_529
	.word	-12
	.word	4
	.word	_Label_530
	.word	-16
	.word	4
	.word	_Label_531
	.word	-20
	.word	4
	.word	_Label_532
	.word	-24
	.word	4
	.word	_Label_533
	.word	-28
	.word	4
	.word	_Label_534
	.word	-32
	.word	4
	.word	_Label_535
	.word	-36
	.word	4
	.word	_Label_536
	.word	-40
	.word	4
	.word	_Label_537
	.word	-44
	.word	4
	.word	_Label_538
	.word	-48
	.word	4
	.word	_Label_539
	.word	-52
	.word	4
	.word	_Label_540
	.word	-56
	.word	4
	.word	_Label_541
	.word	-60
	.word	4
	.word	0
_Label_525:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_526:
	.ascii	"Pself\0"
	.align
_Label_527:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_528:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_508\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_540:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_541:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Thread_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_3,r1
	push	r1
	mov	34,r1
_Label_840:
	push	r0
	sub	r1,1,r1
	bne	_Label_840
	mov	425,r13		! source line 425
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-124]
!   if _temp_544 == _P_Thread_currentThread then goto _Label_543		(int)
	load	[r14+-124],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_543
!	_Label_542	jmp	_Label_542
_Label_542:
! THEN...
	mov	442,r13		! source line 442
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_545 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_545  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	442,r13		! source line 442
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_543:
! ASSIGNMENT STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	444,r13		! source line 444
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0IF",r10
	mov	449,r13		! source line 449
	mov	"\0\0SE",r10
!   _temp_549 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-116]
!   Send message IsEmpty
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_548  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_548 then goto _Label_547 else goto _Label_546
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_546
	jmp	_Label_547
_Label_546:
! THEN...
	mov	450,r13		! source line 450
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0AS",r10
	mov	450,r13		! source line 450
	mov	"\0\0SE",r10
!   _temp_550 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-112]
!   Send message Remove
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
	jmp	_Label_551
_Label_547:
! ELSE...
	mov	451,r13		! source line 451
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0IF",r10
	mov	451,r13		! source line 451
	mov	"\0\0SE",r10
!   _temp_555 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-108]
!   Send message IsEmpty
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_554  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_554 then goto _Label_553 else goto _Label_552
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_552
	jmp	_Label_553
_Label_552:
! THEN...
	mov	452,r13		! source line 452
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
	mov	452,r13		! source line 452
	mov	"\0\0SE",r10
!   _temp_556 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-104]
!   Send message Remove
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
	jmp	_Label_557
_Label_553:
! ELSE...
	mov	453,r13		! source line 453
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0IF",r10
	mov	453,r13		! source line 453
	mov	"\0\0SE",r10
!   _temp_561 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-100]
!   Send message IsEmpty
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_560  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_560 then goto _Label_559 else goto _Label_558
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_558
	jmp	_Label_559
_Label_558:
! THEN...
	mov	454,r13		! source line 454
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
	mov	454,r13		! source line 454
	mov	"\0\0SE",r10
!   _temp_562 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-96]
!   Send message Remove
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
	jmp	_Label_563
_Label_559:
! ELSE...
	mov	455,r13		! source line 455
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0IF",r10
	mov	455,r13		! source line 455
	mov	"\0\0SE",r10
!   _temp_567 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-92]
!   Send message IsEmpty
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_566  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_566 then goto _Label_565 else goto _Label_564
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_564
	jmp	_Label_565
_Label_564:
! THEN...
	mov	456,r13		! source line 456
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
	mov	456,r13		! source line 456
	mov	"\0\0SE",r10
!   _temp_568 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-88]
!   Send message Remove
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
	jmp	_Label_569
_Label_565:
! ELSE...
	mov	457,r13		! source line 457
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0IF",r10
	mov	457,r13		! source line 457
	mov	"\0\0SE",r10
!   _temp_573 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-84]
!   Send message IsEmpty
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_572  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_572 then goto _Label_571 else goto _Label_570
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_570
	jmp	_Label_571
_Label_570:
! THEN...
	mov	458,r13		! source line 458
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
	mov	458,r13		! source line 458
	mov	"\0\0SE",r10
!   _temp_574 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-80]
!   Send message Remove
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
	jmp	_Label_575
_Label_571:
! ELSE...
	mov	460,r13		! source line 460
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_576 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_576  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	460,r13		! source line 460
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_575:
! END IF...
_Label_569:
! END IF...
_Label_563:
! END IF...
_Label_557:
! END IF...
_Label_551:
! IF STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_578		(int)
	load	[r14+-128],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_578
!	_Label_577	jmp	_Label_577
_Label_577:
! THEN...
	mov	466,r13		! source line 466
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_580		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_580
!	_Label_579	jmp	_Label_579
_Label_579:
! THEN...
	mov	467,r13		! source line 467
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_581 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_581  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	467,r13		! source line 467
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_580:
! ASSIGNMENT STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! IF STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0IF",r10
!   if prio != 1 then goto _Label_583		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_583
!	_Label_582	jmp	_Label_582
_Label_582:
! THEN...
	mov	472,r13		! source line 472
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   _temp_585 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_584  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_586
_Label_583:
! ELSE...
	mov	473,r13		! source line 473
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0IF",r10
!   if prio != 2 then goto _Label_588		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_588
!	_Label_587	jmp	_Label_587
_Label_587:
! THEN...
	mov	474,r13		! source line 474
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   _temp_590 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_589  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_591
_Label_588:
! ELSE...
	mov	475,r13		! source line 475
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0IF",r10
!   if prio != 3 then goto _Label_593		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_593
!	_Label_592	jmp	_Label_592
_Label_592:
! THEN...
	mov	476,r13		! source line 476
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   _temp_595 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_594  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_596
_Label_593:
! ELSE...
	mov	477,r13		! source line 477
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0IF",r10
!   if prio != 4 then goto _Label_598		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_598
!	_Label_597	jmp	_Label_597
_Label_597:
! THEN...
	mov	478,r13		! source line 478
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   _temp_600 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_599  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_601
_Label_598:
! ELSE...
	mov	479,r13		! source line 479
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0IF",r10
!   if prio != 5 then goto _Label_603		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_603
!	_Label_602	jmp	_Label_602
_Label_602:
! THEN...
	mov	480,r13		! source line 480
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   _temp_605 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_604  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_606
_Label_603:
! ELSE...
	mov	482,r13		! source line 482
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_607 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_607  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	482,r13		! source line 482
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_606:
! END IF...
_Label_601:
! END IF...
_Label_596:
! END IF...
_Label_591:
! END IF...
_Label_586:
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   time = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4100]
! IF STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0IF",r10
!   if prio == currPrio then goto _Label_609		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	load	[r14+8],r2
	load	[r2+4096],r2
	cmp	r1,r2
	be	_Label_609
!	_Label_608	jmp	_Label_608
_Label_608:
! THEN...
	mov	486,r13		! source line 486
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	486,r13		! source line 486
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_610 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_610  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	487,r13		! source line 487
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prio  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4092],r1
	store	r1,[r15+0]
!   Call the function
	mov	488,r13		! source line 488
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_611 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_611  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	489,r13		! source line 489
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	490,r13		! source line 490
	mov	"\0\0AS",r10
!   currPrio = prio		(4 bytes)
	load	[r14+8],r1
	load	[r1+4092],r1
	load	[r14+8],r2
	store	r1,[r2+4096]
! END IF...
_Label_609:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	492,r13		! source line 492
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! END IF...
_Label_578:
! ASSIGNMENT STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	494,r13		! source line 494
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! RETURN STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0RE",r10
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_3:
	.word	_sourceFileName
	.word	_Label_612
	.word	4		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_613
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_614
	.word	-20
	.word	4
	.word	_Label_615
	.word	-24
	.word	4
	.word	_Label_616
	.word	-28
	.word	4
	.word	_Label_617
	.word	-32
	.word	4
	.word	_Label_618
	.word	-36
	.word	4
	.word	_Label_619
	.word	-40
	.word	4
	.word	_Label_620
	.word	-44
	.word	4
	.word	_Label_621
	.word	-48
	.word	4
	.word	_Label_622
	.word	-52
	.word	4
	.word	_Label_623
	.word	-56
	.word	4
	.word	_Label_624
	.word	-60
	.word	4
	.word	_Label_625
	.word	-64
	.word	4
	.word	_Label_626
	.word	-68
	.word	4
	.word	_Label_627
	.word	-72
	.word	4
	.word	_Label_628
	.word	-76
	.word	4
	.word	_Label_629
	.word	-80
	.word	4
	.word	_Label_630
	.word	-84
	.word	4
	.word	_Label_631
	.word	-9
	.word	1
	.word	_Label_632
	.word	-88
	.word	4
	.word	_Label_633
	.word	-92
	.word	4
	.word	_Label_634
	.word	-10
	.word	1
	.word	_Label_635
	.word	-96
	.word	4
	.word	_Label_636
	.word	-100
	.word	4
	.word	_Label_637
	.word	-11
	.word	1
	.word	_Label_638
	.word	-104
	.word	4
	.word	_Label_639
	.word	-108
	.word	4
	.word	_Label_640
	.word	-12
	.word	1
	.word	_Label_641
	.word	-112
	.word	4
	.word	_Label_642
	.word	-116
	.word	4
	.word	_Label_643
	.word	-13
	.word	1
	.word	_Label_644
	.word	-120
	.word	4
	.word	_Label_645
	.word	-124
	.word	4
	.word	_Label_646
	.word	-128
	.word	4
	.word	_Label_647
	.word	-132
	.word	4
	.word	_Label_648
	.word	-136
	.word	4
	.word	0
_Label_612:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_613:
	.ascii	"Pself\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_631:
	.byte	'C'
	.ascii	"_temp_572\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_634:
	.byte	'C'
	.ascii	"_temp_566\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_637:
	.byte	'C'
	.ascii	"_temp_560\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_640:
	.byte	'C'
	.ascii	"_temp_554\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_643:
	.byte	'C'
	.ascii	"_temp_548\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_646:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_647:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_648:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Thread_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_4,r1
	push	r1
	mov	19,r1
_Label_841:
	push	r0
	sub	r1,1,r1
	bne	_Label_841
	mov	499,r13		! source line 499
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	511,r13		! source line 511
	mov	"\0\0IF",r10
!   if _P_Thread_currentInterruptStatus == 2 then goto _Label_650		(int)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_650
!	_Label_649	jmp	_Label_649
_Label_649:
! THEN...
	mov	512,r13		! source line 512
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_651 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_651  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	512,r13		! source line 512
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_650:
! IF STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if _temp_654 == _P_Thread_currentThread then goto _Label_653		(int)
	load	[r14+-72],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_653
!	_Label_652	jmp	_Label_652
_Label_652:
! THEN...
	mov	516,r13		! source line 516
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_655 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_655  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	516,r13		! source line 516
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_653:
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! IF STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0IF",r10
	mov	523,r13		! source line 523
	mov	"\0\0SE",r10
!   _temp_659 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-64]
!   Send message IsEmpty
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_658  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_658 then goto _Label_657 else goto _Label_656
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_656
	jmp	_Label_657
_Label_656:
! THEN...
	mov	524,r13		! source line 524
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0AS",r10
	mov	524,r13		! source line 524
	mov	"\0\0SE",r10
!   _temp_660 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-60]
!   Send message Remove
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
	jmp	_Label_661
_Label_657:
! ELSE...
	mov	525,r13		! source line 525
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0IF",r10
	mov	525,r13		! source line 525
	mov	"\0\0SE",r10
!   _temp_665 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_664  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_664 then goto _Label_663 else goto _Label_662
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_662
	jmp	_Label_663
_Label_662:
! THEN...
	mov	526,r13		! source line 526
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0AS",r10
	mov	526,r13		! source line 526
	mov	"\0\0SE",r10
!   _temp_666 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-52]
!   Send message Remove
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
	jmp	_Label_667
_Label_663:
! ELSE...
	mov	527,r13		! source line 527
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0IF",r10
	mov	527,r13		! source line 527
	mov	"\0\0SE",r10
!   _temp_671 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-48]
!   Send message IsEmpty
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_670  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_670 then goto _Label_669 else goto _Label_668
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_668
	jmp	_Label_669
_Label_668:
! THEN...
	mov	528,r13		! source line 528
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
	mov	528,r13		! source line 528
	mov	"\0\0SE",r10
!   _temp_672 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
	jmp	_Label_673
_Label_669:
! ELSE...
	mov	529,r13		! source line 529
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0IF",r10
	mov	529,r13		! source line 529
	mov	"\0\0SE",r10
!   _temp_677 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_676  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_676 then goto _Label_675 else goto _Label_674
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_674
	jmp	_Label_675
_Label_674:
! THEN...
	mov	530,r13		! source line 530
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	530,r13		! source line 530
	mov	"\0\0AS",r10
	mov	530,r13		! source line 530
	mov	"\0\0SE",r10
!   _temp_678 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-36]
!   Send message Remove
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
	jmp	_Label_679
_Label_675:
! ELSE...
	mov	531,r13		! source line 531
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	531,r13		! source line 531
	mov	"\0\0IF",r10
	mov	531,r13		! source line 531
	mov	"\0\0SE",r10
!   _temp_683 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_682  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_682 then goto _Label_681 else goto _Label_680
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_680
	jmp	_Label_681
_Label_680:
! THEN...
	mov	532,r13		! source line 532
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0AS",r10
	mov	532,r13		! source line 532
	mov	"\0\0SE",r10
!   _temp_684 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
	jmp	_Label_685
_Label_681:
! ELSE...
	mov	534,r13		! source line 534
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_686 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_686  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	534,r13		! source line 534
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_685:
! END IF...
_Label_679:
! END IF...
_Label_673:
! END IF...
_Label_667:
! END IF...
_Label_661:
! IF STATEMENT...
	mov	536,r13		! source line 536
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_687
	load	[r14+-80],r1
	cmp	r1,r0
	be	_Label_687
	jmp	_Label_688
_Label_687:
! THEN...
	mov	537,r13		! source line 537
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_689 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	537,r13		! source line 537
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_688:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	539,r13		! source line 539
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! RETURN STATEMENT...
	mov	539,r13		! source line 539
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_4:
	.word	_sourceFileName
	.word	_Label_690
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_692
	.word	-20
	.word	4
	.word	_Label_693
	.word	-24
	.word	4
	.word	_Label_694
	.word	-28
	.word	4
	.word	_Label_695
	.word	-32
	.word	4
	.word	_Label_696
	.word	-9
	.word	1
	.word	_Label_697
	.word	-36
	.word	4
	.word	_Label_698
	.word	-40
	.word	4
	.word	_Label_699
	.word	-10
	.word	1
	.word	_Label_700
	.word	-44
	.word	4
	.word	_Label_701
	.word	-48
	.word	4
	.word	_Label_702
	.word	-11
	.word	1
	.word	_Label_703
	.word	-52
	.word	4
	.word	_Label_704
	.word	-56
	.word	4
	.word	_Label_705
	.word	-12
	.word	1
	.word	_Label_706
	.word	-60
	.word	4
	.word	_Label_707
	.word	-64
	.word	4
	.word	_Label_708
	.word	-13
	.word	1
	.word	_Label_709
	.word	-68
	.word	4
	.word	_Label_710
	.word	-72
	.word	4
	.word	_Label_711
	.word	-76
	.word	4
	.word	_Label_712
	.word	-80
	.word	4
	.word	0
_Label_690:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_691:
	.ascii	"Pself\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_696:
	.byte	'C'
	.ascii	"_temp_682\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_699:
	.byte	'C'
	.ascii	"_temp_676\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_702:
	.byte	'C'
	.ascii	"_temp_670\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_705:
	.byte	'C'
	.ascii	"_temp_664\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_659\0"
	.align
_Label_708:
	.byte	'C'
	.ascii	"_temp_658\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_712:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Thread_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_5,r1
	push	r1
	mov	9,r1
_Label_842:
	push	r0
	sub	r1,1,r1
	bne	_Label_842
	mov	544,r13		! source line 544
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0IF",r10
!   _temp_716 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_716 [0 ] into _temp_717
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_715 = *_temp_717  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_715 == 606348324 then goto _Label_714		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_714
!	_Label_713	jmp	_Label_713
_Label_713:
! THEN...
	mov	551,r13		! source line 551
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_718 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	551,r13		! source line 551
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
	jmp	_Label_719
_Label_714:
! ELSE...
	mov	552,r13		! source line 552
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0IF",r10
!   _temp_723 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_723 [999 ] into _temp_724
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_722 = *_temp_724  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_722 == 606348324 then goto _Label_721		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_721
!	_Label_720	jmp	_Label_720
_Label_720:
! THEN...
	mov	553,r13		! source line 553
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_725 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	553,r13		! source line 553
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_721:
! END IF...
_Label_719:
! RETURN STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_5:
	.word	_sourceFileName
	.word	_Label_726
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_727
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_728
	.word	-12
	.word	4
	.word	_Label_729
	.word	-16
	.word	4
	.word	_Label_730
	.word	-20
	.word	4
	.word	_Label_731
	.word	-24
	.word	4
	.word	_Label_732
	.word	-28
	.word	4
	.word	_Label_733
	.word	-32
	.word	4
	.word	_Label_734
	.word	-36
	.word	4
	.word	_Label_735
	.word	-40
	.word	4
	.word	0
_Label_726:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_727:
	.ascii	"Pself\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Thread_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_6,r1
	push	r1
	mov	36,r1
_Label_843:
	push	r0
	sub	r1,1,r1
	bne	_Label_843
	mov	559,r13		! source line 559
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	565,r13		! source line 565
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! CALL STATEMENT...
!   _temp_736 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	566,r13		! source line 566
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_737 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_737  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	567,r13		! source line 567
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_738  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	568,r13		! source line 568
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_739 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_739  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	569,r13		! source line 569
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_740 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	570,r13		! source line 570
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prio  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4092],r1
	store	r1,[r15+0]
!   Call the function
	mov	571,r13		! source line 571
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_741 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	572,r13		! source line 572
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_742 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	573,r13		! source line 573
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_747 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
!   Calculate and save the FOR-LOOP ending value
!   _temp_748 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-104]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_747  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+-140]
_Label_743:
!   Perform the FOR-LOOP termination test
!   if i > _temp_748 then goto _Label_746		
	load	[r14+-140],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_746
_Label_744:
	mov	574,r13		! source line 574
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_749 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	575,r13		! source line 575
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_750 = i + 2		(int)
	load	[r14+-140],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_750  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	576,r13		! source line 576
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_751 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_751  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	577,r13		! source line 577
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_753 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   Move address of _temp_753 [i ] into _temp_754
!     make sure index expr is >= 0
	load	[r14+-140],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Data Move: _temp_752 = *_temp_754  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	578,r13		! source line 578
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_755 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	579,r13		! source line 579
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_757 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Move address of _temp_757 [i ] into _temp_758
!     make sure index expr is >= 0
	load	[r14+-140],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Data Move: _temp_756 = *_temp_758  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	580,r13		! source line 580
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_759 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_759  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	581,r13		! source line 581
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_745:
!   i = i + 1
	load	[r14+-140],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
	jmp	_Label_743
! END FOR
_Label_746:
! CALL STATEMENT...
!   _temp_760 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-56]
!   _temp_761 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_760  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_761  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	583,r13		! source line 583
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_762 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-48]
!   _temp_764 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-40]
!   Move address of _temp_764 [0 ] into _temp_765
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_763 = _temp_765		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_762  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_763  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	585,r13		! source line 585
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_768
	cmp	r1,2
	be	_Label_769
	cmp	r1,3
	be	_Label_770
	cmp	r1,4
	be	_Label_771
	cmp	r1,5
	be	_Label_772
	jmp	_Label_766
! CASE 1...
_Label_768:
! CALL STATEMENT...
!   _temp_773 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_773  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0BR",r10
	jmp	_Label_767
! CASE 2...
_Label_769:
! CALL STATEMENT...
!   _temp_774 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_774  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0BR",r10
	jmp	_Label_767
! CASE 3...
_Label_770:
! CALL STATEMENT...
!   _temp_775 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_775  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0BR",r10
	jmp	_Label_767
! CASE 4...
_Label_771:
! CALL STATEMENT...
!   _temp_776 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_776  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0BR",r10
	jmp	_Label_767
! CASE 5...
_Label_772:
! CALL STATEMENT...
!   _temp_777 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_777  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	600,r13		! source line 600
	mov	"\0\0BR",r10
	jmp	_Label_767
! DEFAULT CASE...
_Label_766:
! CALL STATEMENT...
!   _temp_778 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_778  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	602,r13		! source line 602
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_767:
! ASSIGNMENT STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! RETURN STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0RE",r10
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_6:
	.word	_sourceFileName
	.word	_Label_779
	.word	4		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_780
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_781
	.word	-12
	.word	4
	.word	_Label_782
	.word	-16
	.word	4
	.word	_Label_783
	.word	-20
	.word	4
	.word	_Label_784
	.word	-24
	.word	4
	.word	_Label_785
	.word	-28
	.word	4
	.word	_Label_786
	.word	-32
	.word	4
	.word	_Label_787
	.word	-36
	.word	4
	.word	_Label_788
	.word	-40
	.word	4
	.word	_Label_789
	.word	-44
	.word	4
	.word	_Label_790
	.word	-48
	.word	4
	.word	_Label_791
	.word	-52
	.word	4
	.word	_Label_792
	.word	-56
	.word	4
	.word	_Label_793
	.word	-60
	.word	4
	.word	_Label_794
	.word	-64
	.word	4
	.word	_Label_795
	.word	-68
	.word	4
	.word	_Label_796
	.word	-72
	.word	4
	.word	_Label_797
	.word	-76
	.word	4
	.word	_Label_798
	.word	-80
	.word	4
	.word	_Label_799
	.word	-84
	.word	4
	.word	_Label_800
	.word	-88
	.word	4
	.word	_Label_801
	.word	-92
	.word	4
	.word	_Label_802
	.word	-96
	.word	4
	.word	_Label_803
	.word	-100
	.word	4
	.word	_Label_804
	.word	-104
	.word	4
	.word	_Label_805
	.word	-108
	.word	4
	.word	_Label_806
	.word	-112
	.word	4
	.word	_Label_807
	.word	-116
	.word	4
	.word	_Label_808
	.word	-120
	.word	4
	.word	_Label_809
	.word	-124
	.word	4
	.word	_Label_810
	.word	-128
	.word	4
	.word	_Label_811
	.word	-132
	.word	4
	.word	_Label_812
	.word	-136
	.word	4
	.word	_Label_813
	.word	-140
	.word	4
	.word	_Label_814
	.word	-144
	.word	4
	.word	0
_Label_779:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_780:
	.ascii	"Pself\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_783:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_813:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_814:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD setPriority  ===============
! 
_Method_P_Thread_Thread_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_7,r1
	push	r1
	mov	607,r13		! source line 607
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0AS",r10
!   prio = givenPrio		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0AS",r10
!   currPrio = prio		(4 bytes)
	load	[r14+8],r1
	load	[r1+4092],r1
	load	[r14+8],r2
	store	r1,[r2+4096]
! RETURN STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_7:
	.word	_sourceFileName
	.word	_Label_815
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_816
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_817
	.word	12
	.word	4
	.word	0
_Label_815:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"setPriority\0"
	.align
_Label_816:
	.ascii	"Pself\0"
	.align
_Label_817:
	.byte	'I'
	.ascii	"givenPrio\0"
	.align
! 
! ===============  METHOD getPriority  ===============
! 
_Method_P_Thread_Thread_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_8,r1
	push	r1
	mov	625,r13		! source line 625
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	626,r13		! source line 626
	mov	"\0\0RE",r10
!   ReturnResult: prio  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4092],r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_8:
	.word	_sourceFileName
	.word	_Label_818
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_819
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_818:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"getPriority\0"
	.align
_Label_819:
	.ascii	"Pself\0"
	.align
! 
! ===============  METHOD getTime  ===============
! 
_Method_P_Thread_Thread_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_9,r1
	push	r1
	mov	630,r13		! source line 630
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	631,r13		! source line 631
	mov	"\0\0RE",r10
!   ReturnResult: time  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4100],r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_9:
	.word	_sourceFileName
	.word	_Label_820
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_821
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_820:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"getTime\0"
	.align
_Label_821:
	.ascii	"Pself\0"
	.align
