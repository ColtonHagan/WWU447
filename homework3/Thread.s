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
	.export	_P_Thread_highestPrioInt
	.export	_P_Thread_highestPrioThread
	.export	_P_Thread_intToQ
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
	.skip	4100
_P_Thread_idleThread:
	.skip	4100
_P_Thread_threadsToBeDestroyed:
	.skip	12
_P_Thread_currentInterruptStatus:
	.skip	4
	.align
! String constants
_StringConst_57:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_56:
	.word	12			! length
	.ascii	" priority = "
	.align
_StringConst_55:
	.word	26			! length
	.ascii	"Thread add to Q at prio = "
	.align
_StringConst_54:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_53:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_52:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_51:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_50:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_49:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_48:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_47:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_46:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_45:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_44:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_43:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_42:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_41:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_40:
	.word	10			! length
	.ascii	"Priority: "
	.align
_StringConst_39:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_38:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_37:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_36:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_35:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_34:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_33:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_32:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_31:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_30:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_29:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_28:
	.word	7			! length
	.ascii	"intToQ "
	.align
_StringConst_27:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_26:
	.word	19			! length
	.ascii	"highest prio int is"
	.align
_StringConst_25:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_24:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_23:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_22:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_21:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_20:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_19:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_18:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_17:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_16:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_15:
	.word	18			! length
	.ascii	"\" -- TERMINATING!\n"
	.align
_StringConst_14:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_13:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_12:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_11:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_10:
	.word	8			! length
	.ascii	"FIVE : \n"
	.align
_StringConst_9:
	.word	8			! length
	.ascii	"FOUR : \n"
	.align
_StringConst_8:
	.word	9			! length
	.ascii	"THREE : \n"
	.align
_StringConst_7:
	.word	7			! length
	.ascii	"TWO : \n"
	.align
_StringConst_6:
	.word	7			! length
	.ascii	"ONE : \n"
	.align
_StringConst_5:
	.word	29			! length
	.ascii	"Here is the priority Queues:\n"
	.align
_StringConst_4:
	.word	28			! length
	.ascii	"----> idle function is run \n"
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
	set	0x8f56e8c8,r4		! myHashVal = -1890129720
	cmp	r3,r4
	be	_Label_60
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
_Label_60:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_61
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_61
_Label_61:
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
_Label_519:
	push	r0
	sub	r1,1,r1
	bne	_Label_519
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_62 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_62  sizeInBytes=4
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
!   ZeroMemory: _P_Thread_mainThread = zeros  (sizeInBytes=4100)
	set	_P_Thread_mainThread,r4
	mov	1025,r3
_Label_520:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_520
!   _P_Thread_mainThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_71 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-52]
!   _temp_72 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_71  sizeInBytes=4
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
! SEND STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0SE",r10
!   _temp_73 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Send message setPriority
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _temp_74 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-40]
!   _temp_75 = _temp_74 + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_75 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_idleThread = zeros  (sizeInBytes=4100)
	set	_P_Thread_idleThread,r4
	mov	1025,r3
_Label_521:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_521
!   _P_Thread_idleThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_77 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-28]
!   _temp_78 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_77  sizeInBytes=4
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
	mov	29,r13		! source line 29
	mov	"\0\0SE",r10
!   _temp_79 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Send message setPriority
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0SE",r10
!   _temp_80 = _function_59_IdleFunction
	set	_function_59_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_81 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_80  sizeInBytes=4
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
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   _P_Thread_currentThread = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	set	_P_Thread_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	33,r13		! source line 33
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	33,r13		! source line 33
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
	.word	_Label_82
	.word	0		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_83
	.word	-12
	.word	4
	.word	_Label_84
	.word	-16
	.word	4
	.word	_Label_85
	.word	-20
	.word	4
	.word	_Label_86
	.word	-24
	.word	4
	.word	_Label_87
	.word	-28
	.word	4
	.word	_Label_88
	.word	-32
	.word	4
	.word	_Label_89
	.word	-36
	.word	4
	.word	_Label_90
	.word	-40
	.word	4
	.word	_Label_91
	.word	-44
	.word	4
	.word	_Label_92
	.word	-48
	.word	4
	.word	_Label_93
	.word	-52
	.word	4
	.word	_Label_94
	.word	-56
	.word	4
	.word	_Label_95
	.word	-60
	.word	4
	.word	_Label_96
	.word	-64
	.word	4
	.word	_Label_97
	.word	-68
	.word	4
	.word	_Label_98
	.word	-72
	.word	4
	.word	_Label_99
	.word	-76
	.word	4
	.word	_Label_100
	.word	-80
	.word	4
	.word	_Label_101
	.word	-84
	.word	4
	.word	_Label_102
	.word	-88
	.word	4
	.word	0
_Label_82:
	.ascii	"InitializeScheduler\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_102:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_59_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_59_IdleFunction,r1
	push	r1
	mov	4,r1
_Label_522:
	push	r0
	sub	r1,1,r1
	bne	_Label_522
	mov	38,r13		! source line 38
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_103 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_103  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CE",r10
	call	print
! WHILE STATEMENT...
	mov	50,r13		! source line 50
	mov	"\0\0WH",r10
_Label_104:
!	_Label_105	jmp	_Label_105
_Label_105:
	mov	50,r13		! source line 50
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	51,r13		! source line 51
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	51,r13		! source line 51
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0IF",r10
!   Call the function
	mov	52,r13		! source line 52
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioThread
!   Retrieve Result: targetName=_temp_109  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_109) then goto _Label_107
	load	[r14+-12],r1
	cmp	r1,r0
	be	_Label_107
	jmp	_Label_108
_Label_107:
! THEN...
	mov	53,r13		! source line 53
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	53,r13		! source line 53
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_110
_Label_108:
! ELSE...
	mov	55,r13		! source line 55
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	55,r13		! source line 55
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
	add	r2,20,r2
	call	r2
! END IF...
_Label_110:
! END WHILE...
	jmp	_Label_104
_Label_106:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_59_IdleFunction:
	.word	_sourceFileName
	.word	_Label_111
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_112
	.word	8
	.word	4
	.word	_Label_113
	.word	-12
	.word	4
	.word	_Label_114
	.word	-16
	.word	4
	.word	_Label_115
	.word	-20
	.word	4
	.word	0
_Label_111:
	.ascii	"IdleFunction\0"
	.align
_Label_112:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_113:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
_Label_114:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_115:
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
_Label_523:
	push	r0
	sub	r1,1,r1
	bne	_Label_523
	mov	62,r13		! source line 62
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   prevThread = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-32]
! SEND STATEMENT...
	mov	74,r13		! source line 74
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
	add	r2,28,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
!   _P_Thread_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Thread_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_116 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_116 = 3  (sizeInBytes=4)
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
	mov	82,r13		! source line 82
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0WH",r10
_Label_117:
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_121 = &_P_Thread_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_120  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_120 then goto _Label_119 else goto _Label_118
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_118
	jmp	_Label_119
_Label_118:
	mov	86,r13		! source line 86
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0AS",r10
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_122 = &_P_Thread_threadsToBeDestroyed
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
	mov	88,r13		! source line 88
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_123 = th + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_123 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-16],r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_117
_Label_119:
! RETURN STATEMENT...
	mov	86,r13		! source line 86
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
	.word	_Label_124
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_125
	.word	8
	.word	4
	.word	_Label_126
	.word	-16
	.word	4
	.word	_Label_127
	.word	-20
	.word	4
	.word	_Label_128
	.word	-24
	.word	4
	.word	_Label_129
	.word	-9
	.word	1
	.word	_Label_130
	.word	-28
	.word	4
	.word	_Label_131
	.word	-32
	.word	4
	.word	_Label_132
	.word	-36
	.word	4
	.word	0
_Label_124:
	.ascii	"Run\0"
	.align
_Label_125:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_129:
	.byte	'C'
	.ascii	"_temp_120\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_131:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_132:
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
_Label_524:
	push	r0
	sub	r1,1,r1
	bne	_Label_524
	mov	94,r13		! source line 94
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	101,r13		! source line 101
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! CALL STATEMENT...
!   _temp_133 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_133  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	102,r13		! source line 102
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_134 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_134  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	103,r13		! source line 103
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0SE",r10
!   _temp_135 = _function_58_ThreadPrint
	set	_function_58_ThreadPrint,r1
	store	r1,[r14+-64]
!   _temp_136 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_135  sizeInBytes=4
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
!   _temp_137 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_137  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_138 = _function_58_ThreadPrint
	set	_function_58_ThreadPrint,r1
	store	r1,[r14+-52]
!   _temp_139 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_138  sizeInBytes=4
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
!   _temp_140 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_140  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_141 = _function_58_ThreadPrint
	set	_function_58_ThreadPrint,r1
	store	r1,[r14+-40]
!   _temp_142 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_141  sizeInBytes=4
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
!   _temp_143 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_143  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	109,r13		! source line 109
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0SE",r10
!   _temp_144 = _function_58_ThreadPrint
	set	_function_58_ThreadPrint,r1
	store	r1,[r14+-28]
!   _temp_145 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_144  sizeInBytes=4
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
!   _temp_146 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_146  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0SE",r10
!   _temp_147 = _function_58_ThreadPrint
	set	_function_58_ThreadPrint,r1
	store	r1,[r14+-16]
!   _temp_148 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_147  sizeInBytes=4
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
	mov	113,r13		! source line 113
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	113,r13		! source line 113
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! RETURN STATEMENT...
	mov	113,r13		! source line 113
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
	.word	_Label_149
	.word	0		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_150
	.word	-12
	.word	4
	.word	_Label_151
	.word	-16
	.word	4
	.word	_Label_152
	.word	-20
	.word	4
	.word	_Label_153
	.word	-24
	.word	4
	.word	_Label_154
	.word	-28
	.word	4
	.word	_Label_155
	.word	-32
	.word	4
	.word	_Label_156
	.word	-36
	.word	4
	.word	_Label_157
	.word	-40
	.word	4
	.word	_Label_158
	.word	-44
	.word	4
	.word	_Label_159
	.word	-48
	.word	4
	.word	_Label_160
	.word	-52
	.word	4
	.word	_Label_161
	.word	-56
	.word	4
	.word	_Label_162
	.word	-60
	.word	4
	.word	_Label_163
	.word	-64
	.word	4
	.word	_Label_164
	.word	-68
	.word	4
	.word	_Label_165
	.word	-72
	.word	4
	.word	_Label_166
	.word	-76
	.word	4
	.word	0
_Label_149:
	.ascii	"PrintReadyList\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_166:
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
_Label_525:
	push	r0
	sub	r1,1,r1
	bne	_Label_525
	mov	118,r13		! source line 118
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	130,r13		! source line 130
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0AS",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_167 = _P_Thread_currentThread + 80
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_167  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_169 = _P_Thread_currentThread + 84
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_168 = *_temp_169  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_168  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	132,r13		! source line 132
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	133,r13		! source line 133
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! CALL STATEMENT...
!   _temp_170 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_170  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	134,r13		! source line 134
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! RETURN STATEMENT...
	mov	134,r13		! source line 134
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
	.word	_Label_171
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_172
	.word	-12
	.word	4
	.word	_Label_173
	.word	-16
	.word	4
	.word	_Label_174
	.word	-20
	.word	4
	.word	_Label_175
	.word	-24
	.word	4
	.word	_Label_176
	.word	-28
	.word	4
	.word	_Label_177
	.word	-32
	.word	4
	.word	0
_Label_171:
	.ascii	"ThreadStartMain\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_168\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_176:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_177:
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
_Label_526:
	push	r0
	sub	r1,1,r1
	bne	_Label_526
	mov	139,r13		! source line 139
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	150,r13		! source line 150
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! SEND STATEMENT...
	mov	154,r13		! source line 154
	mov	"\0\0SE",r10
!   _temp_178 = &_P_Thread_threadsToBeDestroyed
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
	mov	155,r13		! source line 155
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
	add	r2,24,r2
	call	r2
! --------------------  DEBUG  --------------------
	mov	157,r13		! source line 157
	mov	"\0\0DE",r10
	debug
! RETURN STATEMENT...
	mov	157,r13		! source line 157
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
	.word	_Label_179
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_180
	.word	-12
	.word	4
	.word	_Label_181
	.word	-16
	.word	4
	.word	0
_Label_179:
	.ascii	"ThreadFinish\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_181:
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
_Label_527:
	push	r0
	sub	r1,1,r1
	bne	_Label_527
	mov	162,r13		! source line 162
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! CALL STATEMENT...
!   _temp_182 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_182  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	171,r13		! source line 171
	mov	"\0\0IF",r10
!   if _P_Thread_currentThread == 0 then goto _Label_184		(int)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_184
!	_Label_183	jmp	_Label_183
_Label_183:
! THEN...
	mov	172,r13		! source line 172
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_185 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_185  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_187 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Data Move: _temp_186 = *_temp_187  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_186  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_184:
! CALL STATEMENT...
!   _temp_188 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_188  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_189 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_189  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	178,r13		! source line 178
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
	.word	_Label_190
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_191
	.word	8
	.word	4
	.word	_Label_192
	.word	-12
	.word	4
	.word	_Label_193
	.word	-16
	.word	4
	.word	_Label_194
	.word	-20
	.word	4
	.word	_Label_195
	.word	-24
	.word	4
	.word	_Label_196
	.word	-28
	.word	4
	.word	_Label_197
	.word	-32
	.word	4
	.word	_Label_198
	.word	-36
	.word	4
	.word	0
_Label_190:
	.ascii	"FatalError\0"
	.align
_Label_191:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_198:
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
_Label_528:
	push	r0
	sub	r1,1,r1
	bne	_Label_528
	mov	183,r13		! source line 183
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0AS",r10
!   oldStat = _P_Thread_currentInterruptStatus		(4 bytes)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_200		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_200
!	_Label_199	jmp	_Label_199
_Label_199:
! THEN...
	mov	199,r13		! source line 199
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	200,r13		! source line 200
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_201
_Label_200:
! ELSE...
	mov	202,r13		! source line 202
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	203,r13		! source line 203
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_201:
! RETURN STATEMENT...
	mov	205,r13		! source line 205
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
	.word	_Label_202
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_203
	.word	8
	.word	4
	.word	_Label_204
	.word	-12
	.word	4
	.word	0
_Label_202:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_203:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_204:
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
	mov	3,r1
_Label_529:
	push	r0
	sub	r1,1,r1
	bne	_Label_529
	mov	210,r13		! source line 210
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	220,r13		! source line 220
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	222,r13		! source line 222
	mov	"\0\0IF",r10
!   Call the function
	mov	222,r13		! source line 222
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioInt
!   Retrieve Result: targetName=_temp_207  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
	mov	222,r13		! source line 222
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
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_208  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   if _temp_207 < _temp_208 then goto _Label_206		(int)
	load	[r14+-16],r1
	load	[r14+-12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_206
!	_Label_205	jmp	_Label_205
_Label_205:
! THEN...
	mov	223,r13		! source line 223
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	223,r13		! source line 223
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
	add	r2,20,r2
	call	r2
! END IF...
_Label_206:
! ASSIGNMENT STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_209
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_210
	.word	-12
	.word	4
	.word	_Label_211
	.word	-16
	.word	4
	.word	0
_Label_209:
	.ascii	"TimerInterruptHandler\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
! 
! ===============  FUNCTION ThreadPrint  ===============
! 
_function_58_ThreadPrint:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_58_ThreadPrint,r1
	push	r1
	mov	17,r1
_Label_530:
	push	r0
	sub	r1,1,r1
	bne	_Label_530
	mov	231,r13		! source line 231
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	238,r13		! source line 238
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   _temp_212 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_212  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	239,r13		! source line 239
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_214 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-60]
!   Data Move: _temp_213 = *_temp_214  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_213  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_215 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_215  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	241,r13		! source line 241
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	242,r13		! source line 242
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_224 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-48]
!   Data Move: _temp_223 = *_temp_224  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Branch to the right case label
	load	[r14+-52],r1
	cmp	r1,1
	be	_Label_218
	cmp	r1,2
	be	_Label_219
	cmp	r1,3
	be	_Label_220
	cmp	r1,4
	be	_Label_221
	cmp	r1,5
	be	_Label_222
	jmp	_Label_216
! CASE 1...
_Label_218:
! CALL STATEMENT...
!   _temp_225 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_225  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0BR",r10
	jmp	_Label_217
! CASE 2...
_Label_219:
! CALL STATEMENT...
!   _temp_226 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_226  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	247,r13		! source line 247
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0BR",r10
	jmp	_Label_217
! CASE 3...
_Label_220:
! CALL STATEMENT...
!   _temp_227 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_227  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	250,r13		! source line 250
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0BR",r10
	jmp	_Label_217
! CASE 4...
_Label_221:
! CALL STATEMENT...
!   _temp_228 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_228  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	253,r13		! source line 253
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0BR",r10
	jmp	_Label_217
! CASE 5...
_Label_222:
! CALL STATEMENT...
!   _temp_229 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_229  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	256,r13		! source line 256
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0BR",r10
	jmp	_Label_217
! DEFAULT CASE...
_Label_216:
! CALL STATEMENT...
!   _temp_230 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_230  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	259,r13		! source line 259
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_217:
! CALL STATEMENT...
!   _temp_231 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_231  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	261,r13		! source line 261
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_232 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_232  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_233 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_233  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	263,r13		! source line 263
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	264,r13		! source line 264
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	266,r13		! source line 266
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! RETURN STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_58_ThreadPrint:
	.word	_sourceFileName
	.word	_Label_234
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_235
	.word	8
	.word	4
	.word	_Label_236
	.word	-12
	.word	4
	.word	_Label_237
	.word	-16
	.word	4
	.word	_Label_238
	.word	-20
	.word	4
	.word	_Label_239
	.word	-24
	.word	4
	.word	_Label_240
	.word	-28
	.word	4
	.word	_Label_241
	.word	-32
	.word	4
	.word	_Label_242
	.word	-36
	.word	4
	.word	_Label_243
	.word	-40
	.word	4
	.word	_Label_244
	.word	-44
	.word	4
	.word	_Label_245
	.word	-48
	.word	4
	.word	_Label_246
	.word	-52
	.word	4
	.word	_Label_247
	.word	-56
	.word	4
	.word	_Label_248
	.word	-60
	.word	4
	.word	_Label_249
	.word	-64
	.word	4
	.word	_Label_250
	.word	-68
	.word	4
	.word	_Label_251
	.word	-72
	.word	4
	.word	0
_Label_234:
	.ascii	"ThreadPrint\0"
	.align
_Label_235:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_251:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION highestPrioInt  ===============
! 
_P_Thread_highestPrioInt:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_highestPrioInt,r1
	push	r1
	mov	8,r1
_Label_531:
	push	r0
	sub	r1,1,r1
	bne	_Label_531
	mov	269,r13		! source line 269
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0IF",r10
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_255 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_254  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_254 then goto _Label_253 else goto _Label_252
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_252
	jmp	_Label_253
_Label_252:
! THEN...
	mov	271,r13		! source line 271
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_256
_Label_253:
! ELSE...
	mov	272,r13		! source line 272
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0IF",r10
	mov	272,r13		! source line 272
	mov	"\0\0SE",r10
!   _temp_260 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_259  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_259 then goto _Label_258 else goto _Label_257
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_257
	jmp	_Label_258
_Label_257:
! THEN...
	mov	273,r13		! source line 273
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0RE",r10
!   ReturnResult: 2  (sizeInBytes=4)
	mov	2,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_261
_Label_258:
! ELSE...
	mov	274,r13		! source line 274
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0IF",r10
	mov	274,r13		! source line 274
	mov	"\0\0SE",r10
!   _temp_265 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-28]
!   Send message IsEmpty
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_264  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_264 then goto _Label_263 else goto _Label_262
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_262
	jmp	_Label_263
_Label_262:
! THEN...
	mov	275,r13		! source line 275
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0RE",r10
!   ReturnResult: 3  (sizeInBytes=4)
	mov	3,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_266
_Label_263:
! ELSE...
	mov	276,r13		! source line 276
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0IF",r10
	mov	276,r13		! source line 276
	mov	"\0\0SE",r10
!   _temp_270 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-24]
!   Send message IsEmpty
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_269  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_269 then goto _Label_268 else goto _Label_267
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_267
	jmp	_Label_268
_Label_267:
! THEN...
	mov	277,r13		! source line 277
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0RE",r10
!   ReturnResult: 4  (sizeInBytes=4)
	mov	4,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_271
_Label_268:
! ELSE...
	mov	278,r13		! source line 278
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0IF",r10
	mov	278,r13		! source line 278
	mov	"\0\0SE",r10
!   _temp_275 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-20]
!   Send message IsEmpty
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_274  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_274 then goto _Label_273 else goto _Label_272
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_272
	jmp	_Label_273
_Label_272:
! THEN...
	mov	279,r13		! source line 279
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	279,r13		! source line 279
	mov	"\0\0RE",r10
!   ReturnResult: 5  (sizeInBytes=4)
	mov	5,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_273:
! END IF...
_Label_271:
! END IF...
_Label_266:
! END IF...
_Label_261:
! END IF...
_Label_256:
! RETURN STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_highestPrioInt:
	.word	_sourceFileName
	.word	_Label_276
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_277
	.word	-20
	.word	4
	.word	_Label_278
	.word	-9
	.word	1
	.word	_Label_279
	.word	-24
	.word	4
	.word	_Label_280
	.word	-10
	.word	1
	.word	_Label_281
	.word	-28
	.word	4
	.word	_Label_282
	.word	-11
	.word	1
	.word	_Label_283
	.word	-32
	.word	4
	.word	_Label_284
	.word	-12
	.word	1
	.word	_Label_285
	.word	-36
	.word	4
	.word	_Label_286
	.word	-13
	.word	1
	.word	0
_Label_276:
	.ascii	"highestPrioInt\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_278:
	.byte	'C'
	.ascii	"_temp_274\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_280:
	.byte	'C'
	.ascii	"_temp_269\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_282:
	.byte	'C'
	.ascii	"_temp_264\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_284:
	.byte	'C'
	.ascii	"_temp_259\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_286:
	.byte	'C'
	.ascii	"_temp_254\0"
	.align
! 
! ===============  FUNCTION highestPrioThread  ===============
! 
_P_Thread_highestPrioThread:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_highestPrioThread,r1
	push	r1
	mov	11,r1
_Label_532:
	push	r0
	sub	r1,1,r1
	bne	_Label_532
	mov	285,r13		! source line 285
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	287,r13		! source line 287
	mov	"\0\0AS",r10
!   Call the function
	mov	287,r13		! source line 287
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioInt
!   Retrieve Result: targetName=prioInt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_287 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	288,r13		! source line 288
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prioInt  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	289,r13		! source line 289
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_288 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	290,r13		! source line 290
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0RE",r10
	mov	291,r13		! source line 291
	mov	"\0\0SE",r10
!   Prepare Argument: offset=8  value=prioInt  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	291,r13		! source line 291
	mov	"\0\0CA",r10
	call	_P_Thread_intToQ
!   Retrieve Result: targetName=_temp_290  sizeInBytes=12
	mov	3,r3
	mov	r15,r5
	add	r14,-24,r4
_Label_533:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_533
!   _temp_291 = &_temp_290
	add	r14,-24,r1
	store	r1,[r14+-12]
!   Send message Remove
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_289  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_289  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_highestPrioThread:
	.word	_sourceFileName
	.word	_Label_292
	.word	0		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_293
	.word	-12
	.word	4
	.word	_Label_294
	.word	-24
	.word	12
	.word	_Label_295
	.word	-28
	.word	4
	.word	_Label_296
	.word	-32
	.word	4
	.word	_Label_297
	.word	-36
	.word	4
	.word	_Label_298
	.word	-40
	.word	4
	.word	0
_Label_292:
	.ascii	"highestPrioThread\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_298:
	.byte	'I'
	.ascii	"prioInt\0"
	.align
! 
! ===============  FUNCTION intToQ  ===============
! 
_P_Thread_intToQ:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Thread_intToQ,r1
	push	r1
	mov	3,r1
_Label_534:
	push	r0
	sub	r1,1,r1
	bne	_Label_534
	mov	294,r13		! source line 294
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_299 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	295,r13		! source line 295
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prio  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	296,r13		! source line 296
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_300 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	297,r13		! source line 297
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0IF",r10
!   if prio != 1 then goto _Label_302		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_302
!	_Label_301	jmp	_Label_301
_Label_301:
! THEN...
	mov	299,r13		! source line 299
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_one  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_one,r5
_Label_535:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_535
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_303
_Label_302:
! ELSE...
	mov	300,r13		! source line 300
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0IF",r10
!   if prio != 2 then goto _Label_305		(int)
	load	[r14+8],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_305
!	_Label_304	jmp	_Label_304
_Label_304:
! THEN...
	mov	301,r13		! source line 301
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_two  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_two,r5
_Label_536:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_536
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_306
_Label_305:
! ELSE...
	mov	302,r13		! source line 302
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0IF",r10
!   if prio != 3 then goto _Label_308		(int)
	load	[r14+8],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_308
!	_Label_307	jmp	_Label_307
_Label_307:
! THEN...
	mov	303,r13		! source line 303
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_three  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_three,r5
_Label_537:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_537
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_309
_Label_308:
! ELSE...
	mov	304,r13		! source line 304
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if prio != 4 then goto _Label_311		(int)
	load	[r14+8],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_311
!	_Label_310	jmp	_Label_310
_Label_310:
! THEN...
	mov	305,r13		! source line 305
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_four  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_four,r5
_Label_538:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_538
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_311:
! END IF...
_Label_309:
! END IF...
_Label_306:
! END IF...
_Label_303:
! RETURN STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_five  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_five,r5
_Label_539:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_539
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_intToQ:
	.word	_sourceFileName
	.word	_Label_312
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_313
	.word	8
	.word	4
	.word	_Label_314
	.word	-12
	.word	4
	.word	_Label_315
	.word	-16
	.word	4
	.word	0
_Label_312:
	.ascii	"intToQ\0"
	.align
_Label_313:
	.byte	'I'
	.ascii	"prio\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Thread_Thread:
	.word	_Label_316
	jmp	_Method_P_Thread_Thread_1	! 4:	Init
	jmp	_Method_P_Thread_Thread_2	! 8:	Fork
	jmp	_Method_P_Thread_Thread_7	! 12:	setPriority
	jmp	_Method_P_Thread_Thread_8	! 16:	getPriority
	jmp	_Method_P_Thread_Thread_3	! 20:	Yield
	jmp	_Method_P_Thread_Thread_4	! 24:	Sleep
	jmp	_Method_P_Thread_Thread_5	! 28:	CheckOverflow
	jmp	_Method_P_Thread_Thread_6	! 32:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_316:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_317
	.word	_sourceFileName
	.word	43		! line number
	.word	4100		! size of instances, in bytes
	.word	_P_Thread_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_317:
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
_Label_540:
	push	r0
	sub	r1,1,r1
	bne	_Label_540
	mov	314,r13		! source line 314
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	319,r13		! source line 319
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	320,r13		! source line 320
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0AS",r10
!   _temp_318 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_318) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_318 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-108],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0AS",r10
!   _temp_319 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-104]
!   Move address of _temp_319 [0 ] into _temp_320
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
!   Data Move: *_temp_320 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0AS",r10
!   _temp_321 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-96]
!   Move address of _temp_321 [999 ] into _temp_322
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
!   Data Move: *_temp_322 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   _temp_323 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-88]
!   Move address of _temp_323 [999 ] into _temp_324
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
!   stackTop = _temp_324		(4 bytes)
	load	[r14+-84],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
!   _temp_325 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-80]
!   NEW ARRAY Constructor...
!   _temp_327 = &_temp_326
	add	r14,-76,r1
	store	r1,[r14+-20]
!   _temp_327 = _temp_327 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	13,r1
	store	r1,[r14+-16]
_Label_329:
!   Data Move: *_temp_327 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_327 = _temp_327 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_328 = _temp_328 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_328) then goto _Label_329
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_329
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-76]
!   _temp_330 = &_temp_326
	add	r14,-76,r1
	store	r1,[r14+-12]
!   make sure array has size 13
	load	[r14+-80],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_541
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_541:
!   make sure array has size 13
	load	[r14+-12],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_325 = *_temp_330  (sizeInBytes=56)
	load	[r14+-12],r5
	load	[r14+-80],r4
	mov	14,r3
_Label_542:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_542
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   time = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4092]
! RETURN STATEMENT...
	mov	330,r13		! source line 330
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
	.word	_Label_331
	.word	8		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_332
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_333
	.word	12
	.word	4
	.word	_Label_334
	.word	-12
	.word	4
	.word	_Label_335
	.word	-16
	.word	4
	.word	_Label_336
	.word	-20
	.word	4
	.word	_Label_337
	.word	-76
	.word	56
	.word	_Label_338
	.word	-80
	.word	4
	.word	_Label_339
	.word	-84
	.word	4
	.word	_Label_340
	.word	-88
	.word	4
	.word	_Label_341
	.word	-92
	.word	4
	.word	_Label_342
	.word	-96
	.word	4
	.word	_Label_343
	.word	-100
	.word	4
	.word	_Label_344
	.word	-104
	.word	4
	.word	_Label_345
	.word	-108
	.word	4
	.word	0
_Label_331:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_332:
	.ascii	"Pself\0"
	.align
_Label_333:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_318\0"
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
	mov	11,r1
_Label_543:
	push	r0
	sub	r1,1,r1
	bne	_Label_543
	mov	335,r13		! source line 335
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	346,r13		! source line 346
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	350,r13		! source line 350
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
	mov	351,r13		! source line 351
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_346 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-32]
!   Data Move: *stackTop = _temp_346  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=priority  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4096],r1
	store	r1,[r15+0]
!   Call the function
	mov	353,r13		! source line 353
	mov	"\0\0CA",r10
	call	_P_Thread_intToQ
!   Retrieve Result: targetName=_temp_348  sizeInBytes=12
	mov	3,r3
	mov	r15,r5
	add	r14,-24,r4
_Label_544:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_544
!   _temp_349 = &_temp_348
	add	r14,-24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_347  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	354,r13		! source line 354
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_2:
	.word	_sourceFileName
	.word	_Label_350
	.word	12		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_351
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_352
	.word	12
	.word	4
	.word	_Label_353
	.word	16
	.word	4
	.word	_Label_354
	.word	-12
	.word	4
	.word	_Label_355
	.word	-24
	.word	12
	.word	_Label_356
	.word	-28
	.word	4
	.word	_Label_357
	.word	-32
	.word	4
	.word	_Label_358
	.word	-36
	.word	4
	.word	_Label_359
	.word	-40
	.word	4
	.word	0
_Label_350:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_351:
	.ascii	"Pself\0"
	.align
_Label_352:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_353:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_358:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_359:
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
	mov	14,r1
_Label_545:
	push	r0
	sub	r1,1,r1
	bne	_Label_545
	mov	359,r13		! source line 359
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if _temp_362 == _P_Thread_currentThread then goto _Label_361		(int)
	load	[r14+-40],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_361
!	_Label_360	jmp	_Label_360
_Label_360:
! THEN...
	mov	376,r13		! source line 376
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_363 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	376,r13		! source line 376
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_361:
! ASSIGNMENT STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	378,r13		! source line 378
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0AS",r10
!   Call the function
	mov	382,r13		! source line 382
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioThread
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! IF STATEMENT...
	mov	383,r13		! source line 383
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_365		(int)
	load	[r14+-44],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_365
!	_Label_364	jmp	_Label_364
_Label_364:
! THEN...
	mov	387,r13		! source line 387
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_367		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_367
!	_Label_366	jmp	_Label_366
_Label_366:
! THEN...
	mov	388,r13		! source line 388
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_368 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_368  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	388,r13		! source line 388
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_367:
! ASSIGNMENT STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=priority  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4096],r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_Thread_intToQ
!   Retrieve Result: targetName=_temp_370  sizeInBytes=12
	mov	3,r3
	mov	r15,r5
	add	r14,-24,r4
_Label_546:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_546
!   _temp_371 = &_temp_370
	add	r14,-24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_369  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	393,r13		! source line 393
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! END IF...
_Label_365:
! ASSIGNMENT STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_3:
	.word	_sourceFileName
	.word	_Label_372
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_373
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_374
	.word	-12
	.word	4
	.word	_Label_375
	.word	-24
	.word	12
	.word	_Label_376
	.word	-28
	.word	4
	.word	_Label_377
	.word	-32
	.word	4
	.word	_Label_378
	.word	-36
	.word	4
	.word	_Label_379
	.word	-40
	.word	4
	.word	_Label_380
	.word	-44
	.word	4
	.word	_Label_381
	.word	-48
	.word	4
	.word	_Label_382
	.word	-52
	.word	4
	.word	0
_Label_372:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_373:
	.ascii	"Pself\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_380:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_381:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_382:
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
	mov	6,r1
_Label_547:
	push	r0
	sub	r1,1,r1
	bne	_Label_547
	mov	400,r13		! source line 400
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0IF",r10
!   if _P_Thread_currentInterruptStatus == 2 then goto _Label_384		(int)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_384
!	_Label_383	jmp	_Label_383
_Label_383:
! THEN...
	mov	413,r13		! source line 413
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_385 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_385  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	413,r13		! source line 413
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_384:
! IF STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if _temp_388 == _P_Thread_currentThread then goto _Label_387		(int)
	load	[r14+-20],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_387
!	_Label_386	jmp	_Label_386
_Label_386:
! THEN...
	mov	417,r13		! source line 417
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_389 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	417,r13		! source line 417
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_387:
! ASSIGNMENT STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0AS",r10
!   Call the function
	mov	423,r13		! source line 423
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioThread
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_390
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_390
	jmp	_Label_391
_Label_390:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	425,r13		! source line 425
	mov	"\0\0CA",r10
	call	_P_Thread_PrintReadyList
! CALL STATEMENT...
!   _temp_392 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_392  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	426,r13		! source line 426
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_391:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! RETURN STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_4:
	.word	_sourceFileName
	.word	_Label_393
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_394
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_395
	.word	-12
	.word	4
	.word	_Label_396
	.word	-16
	.word	4
	.word	_Label_397
	.word	-20
	.word	4
	.word	_Label_398
	.word	-24
	.word	4
	.word	_Label_399
	.word	-28
	.word	4
	.word	0
_Label_393:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_394:
	.ascii	"Pself\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_399:
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
_Label_548:
	push	r0
	sub	r1,1,r1
	bne	_Label_548
	mov	433,r13		! source line 433
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0IF",r10
!   _temp_403 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_403 [0 ] into _temp_404
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
!   Data Move: _temp_402 = *_temp_404  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_402 == 606348324 then goto _Label_401		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_401
!	_Label_400	jmp	_Label_400
_Label_400:
! THEN...
	mov	440,r13		! source line 440
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_405 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_405  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	440,r13		! source line 440
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
	jmp	_Label_406
_Label_401:
! ELSE...
	mov	441,r13		! source line 441
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0IF",r10
!   _temp_410 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_410 [999 ] into _temp_411
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
!   Data Move: _temp_409 = *_temp_411  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_409 == 606348324 then goto _Label_408		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_408
!	_Label_407	jmp	_Label_407
_Label_407:
! THEN...
	mov	442,r13		! source line 442
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_412 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_412  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	442,r13		! source line 442
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_408:
! END IF...
_Label_406:
! RETURN STATEMENT...
	mov	439,r13		! source line 439
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
	.word	_Label_413
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_414
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_415
	.word	-12
	.word	4
	.word	_Label_416
	.word	-16
	.word	4
	.word	_Label_417
	.word	-20
	.word	4
	.word	_Label_418
	.word	-24
	.word	4
	.word	_Label_419
	.word	-28
	.word	4
	.word	_Label_420
	.word	-32
	.word	4
	.word	_Label_421
	.word	-36
	.word	4
	.word	_Label_422
	.word	-40
	.word	4
	.word	0
_Label_413:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_414:
	.ascii	"Pself\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_402\0"
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
_Label_549:
	push	r0
	sub	r1,1,r1
	bne	_Label_549
	mov	448,r13		! source line 448
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	454,r13		! source line 454
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! CALL STATEMENT...
!   _temp_423 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_423  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	455,r13		! source line 455
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_424 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_424  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	456,r13		! source line 456
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_425  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	457,r13		! source line 457
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_426 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_426  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	458,r13		! source line 458
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_427 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_427  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	459,r13		! source line 459
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=priority  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4096],r1
	store	r1,[r15+0]
!   Call the function
	mov	460,r13		! source line 460
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_428 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_428  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	461,r13		! source line 461
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_429 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_429  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	462,r13		! source line 462
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_434 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
!   Calculate and save the FOR-LOOP ending value
!   _temp_435 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-104]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_434  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+-140]
_Label_430:
!   Perform the FOR-LOOP termination test
!   if i > _temp_435 then goto _Label_433		
	load	[r14+-140],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_433
_Label_431:
	mov	463,r13		! source line 463
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_436 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_436  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	464,r13		! source line 464
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_437 = i + 2		(int)
	load	[r14+-140],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	465,r13		! source line 465
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_438 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	466,r13		! source line 466
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_440 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   Move address of _temp_440 [i ] into _temp_441
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
!   Data Move: _temp_439 = *_temp_441  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_439  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	467,r13		! source line 467
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_442 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_442  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	468,r13		! source line 468
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_444 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Move address of _temp_444 [i ] into _temp_445
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
!   Data Move: _temp_443 = *_temp_445  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_443  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	469,r13		! source line 469
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_446 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_446  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	470,r13		! source line 470
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_432:
!   i = i + 1
	load	[r14+-140],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
	jmp	_Label_430
! END FOR
_Label_433:
! CALL STATEMENT...
!   _temp_447 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-56]
!   _temp_448 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_447  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_448  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	472,r13		! source line 472
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_449 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-48]
!   _temp_451 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-40]
!   Move address of _temp_451 [0 ] into _temp_452
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
!   _temp_450 = _temp_452		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_449  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_450  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	473,r13		! source line 473
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	474,r13		! source line 474
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_455
	cmp	r1,2
	be	_Label_456
	cmp	r1,3
	be	_Label_457
	cmp	r1,4
	be	_Label_458
	cmp	r1,5
	be	_Label_459
	jmp	_Label_453
! CASE 1...
_Label_455:
! CALL STATEMENT...
!   _temp_460 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_460  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	476,r13		! source line 476
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0BR",r10
	jmp	_Label_454
! CASE 2...
_Label_456:
! CALL STATEMENT...
!   _temp_461 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_461  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	479,r13		! source line 479
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0BR",r10
	jmp	_Label_454
! CASE 3...
_Label_457:
! CALL STATEMENT...
!   _temp_462 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_462  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	482,r13		! source line 482
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0BR",r10
	jmp	_Label_454
! CASE 4...
_Label_458:
! CALL STATEMENT...
!   _temp_463 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_463  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	485,r13		! source line 485
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0BR",r10
	jmp	_Label_454
! CASE 5...
_Label_459:
! CALL STATEMENT...
!   _temp_464 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_464  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	488,r13		! source line 488
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0BR",r10
	jmp	_Label_454
! DEFAULT CASE...
_Label_453:
! CALL STATEMENT...
!   _temp_465 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_465  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	491,r13		! source line 491
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_454:
! ASSIGNMENT STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	493,r13		! source line 493
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! RETURN STATEMENT...
	mov	493,r13		! source line 493
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
	.word	_Label_466
	.word	4		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_467
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_468
	.word	-12
	.word	4
	.word	_Label_469
	.word	-16
	.word	4
	.word	_Label_470
	.word	-20
	.word	4
	.word	_Label_471
	.word	-24
	.word	4
	.word	_Label_472
	.word	-28
	.word	4
	.word	_Label_473
	.word	-32
	.word	4
	.word	_Label_474
	.word	-36
	.word	4
	.word	_Label_475
	.word	-40
	.word	4
	.word	_Label_476
	.word	-44
	.word	4
	.word	_Label_477
	.word	-48
	.word	4
	.word	_Label_478
	.word	-52
	.word	4
	.word	_Label_479
	.word	-56
	.word	4
	.word	_Label_480
	.word	-60
	.word	4
	.word	_Label_481
	.word	-64
	.word	4
	.word	_Label_482
	.word	-68
	.word	4
	.word	_Label_483
	.word	-72
	.word	4
	.word	_Label_484
	.word	-76
	.word	4
	.word	_Label_485
	.word	-80
	.word	4
	.word	_Label_486
	.word	-84
	.word	4
	.word	_Label_487
	.word	-88
	.word	4
	.word	_Label_488
	.word	-92
	.word	4
	.word	_Label_489
	.word	-96
	.word	4
	.word	_Label_490
	.word	-100
	.word	4
	.word	_Label_491
	.word	-104
	.word	4
	.word	_Label_492
	.word	-108
	.word	4
	.word	_Label_493
	.word	-112
	.word	4
	.word	_Label_494
	.word	-116
	.word	4
	.word	_Label_495
	.word	-120
	.word	4
	.word	_Label_496
	.word	-124
	.word	4
	.word	_Label_497
	.word	-128
	.word	4
	.word	_Label_498
	.word	-132
	.word	4
	.word	_Label_499
	.word	-136
	.word	4
	.word	_Label_500
	.word	-140
	.word	4
	.word	_Label_501
	.word	-144
	.word	4
	.word	0
_Label_466:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_467:
	.ascii	"Pself\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_439\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_500:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_501:
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
	mov	11,r1
_Label_550:
	push	r0
	sub	r1,1,r1
	bne	_Label_550
	mov	497,r13		! source line 497
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0AS",r10
!   priority = prio		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4096]
! SEND STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=prio  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	499,r13		! source line 499
	mov	"\0\0CA",r10
	call	_P_Thread_intToQ
!   Retrieve Result: targetName=_temp_503  sizeInBytes=12
	mov	3,r3
	mov	r15,r5
	add	r14,-36,r4
_Label_551:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_551
!   _temp_504 = &_temp_503
	add	r14,-36,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_502  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_505 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	500,r13		! source line 500
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prio  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	501,r13		! source line 501
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_506 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_506  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	502,r13		! source line 502
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=priority  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4096],r1
	store	r1,[r15+0]
!   Call the function
	mov	503,r13		! source line 503
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_507 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_507  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	504,r13		! source line 504
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_7:
	.word	_sourceFileName
	.word	_Label_508
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_509
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_510
	.word	12
	.word	4
	.word	_Label_511
	.word	-12
	.word	4
	.word	_Label_512
	.word	-16
	.word	4
	.word	_Label_513
	.word	-20
	.word	4
	.word	_Label_514
	.word	-24
	.word	4
	.word	_Label_515
	.word	-36
	.word	12
	.word	_Label_516
	.word	-40
	.word	4
	.word	0
_Label_508:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"setPriority\0"
	.align
_Label_509:
	.ascii	"Pself\0"
	.align
_Label_510:
	.byte	'I'
	.ascii	"prio\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_502\0"
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
	mov	507,r13		! source line 507
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0RE",r10
!   ReturnResult: priority  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4096],r1
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
	.word	_Label_517
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_518
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_517:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"getPriority\0"
	.align
_Label_518:
	.ascii	"Pself\0"
	.align
