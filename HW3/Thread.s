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
	.skip	4100
_P_Thread_idleThread:
	.skip	4100
_P_Thread_threadsToBeDestroyed:
	.skip	12
_P_Thread_currentInterruptStatus:
	.skip	4
	.align
! String constants
_StringConst_53:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_52:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_51:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_50:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_49:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_48:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_47:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_46:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_45:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_44:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_43:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_42:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_41:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_40:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_39:
	.word	10			! length
	.ascii	"Priority: "
	.align
_StringConst_38:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_37:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_36:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_35:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_34:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_33:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_32:
	.word	11			! length
	.ascii	"error sleep"
	.align
_StringConst_31:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_30:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_29:
	.word	13			! length
	.ascii	"error yeild 2"
	.align
_StringConst_28:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_27:
	.word	13			! length
	.ascii	"Error yield 1"
	.align
_StringConst_26:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
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
	set	0xc9cf64b9,r4		! myHashVal = -909155143
	cmp	r3,r4
	be	_Label_56
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
_Label_56:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_57
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_57
_Label_57:
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
_Label_640:
	push	r0
	sub	r1,1,r1
	bne	_Label_640
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_58 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_58  sizeInBytes=4
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
_Label_641:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_641
!   _P_Thread_mainThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_67 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-52]
!   _temp_68 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_67  sizeInBytes=4
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
!   _temp_69 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-44]
!   _temp_70 = _temp_69 + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_70 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0SE",r10
!   _temp_71 = &_P_Thread_mainThread
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
!   ZeroMemory: _P_Thread_idleThread = zeros  (sizeInBytes=4100)
	set	_P_Thread_idleThread,r4
	mov	1025,r3
_Label_642:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_642
!   _P_Thread_idleThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_73 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-28]
!   _temp_74 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_73  sizeInBytes=4
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
!   _temp_75 = &_P_Thread_idleThread
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
!   _temp_76 = _function_55_IdleFunction
	set	_function_55_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_77 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_76  sizeInBytes=4
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
	.word	_Label_78
	.word	0		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_79
	.word	-12
	.word	4
	.word	_Label_80
	.word	-16
	.word	4
	.word	_Label_81
	.word	-20
	.word	4
	.word	_Label_82
	.word	-24
	.word	4
	.word	_Label_83
	.word	-28
	.word	4
	.word	_Label_84
	.word	-32
	.word	4
	.word	_Label_85
	.word	-36
	.word	4
	.word	_Label_86
	.word	-40
	.word	4
	.word	_Label_87
	.word	-44
	.word	4
	.word	_Label_88
	.word	-48
	.word	4
	.word	_Label_89
	.word	-52
	.word	4
	.word	_Label_90
	.word	-56
	.word	4
	.word	_Label_91
	.word	-60
	.word	4
	.word	_Label_92
	.word	-64
	.word	4
	.word	_Label_93
	.word	-68
	.word	4
	.word	_Label_94
	.word	-72
	.word	4
	.word	_Label_95
	.word	-76
	.word	4
	.word	_Label_96
	.word	-80
	.word	4
	.word	_Label_97
	.word	-84
	.word	4
	.word	_Label_98
	.word	-88
	.word	4
	.word	0
_Label_78:
	.ascii	"InitializeScheduler\0"
	.align
_Label_79:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_80:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_55_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_55_IdleFunction,r1
	push	r1
	mov	7,r1
_Label_643:
	push	r0
	sub	r1,1,r1
	bne	_Label_643
	mov	42,r13		! source line 42
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0WH",r10
_Label_99:
!	_Label_100	jmp	_Label_100
_Label_100:
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
!   _temp_108 = &_P_Thread_one
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
!   if result==true then goto _Label_107 else goto _Label_103
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_103
	jmp	_Label_107
_Label_107:
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_109 = &_P_Thread_two
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
!   if result==true then goto _Label_106 else goto _Label_103
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_103
	jmp	_Label_106
_Label_106:
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_110 = &_P_Thread_three
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
!   if result==true then goto _Label_105 else goto _Label_103
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_103
	jmp	_Label_105
_Label_105:
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_111 = &_P_Thread_four
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
!   if result==true then goto _Label_104 else goto _Label_103
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_103
	jmp	_Label_104
_Label_104:
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_112 = &_P_Thread_five
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
!   if result==true then goto _Label_102 else goto _Label_103
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_103
	jmp	_Label_102
_Label_102:
! THEN...
	mov	56,r13		! source line 56
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	56,r13		! source line 56
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_113
_Label_103:
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
_Label_113:
! END WHILE...
	jmp	_Label_99
_Label_101:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_55_IdleFunction:
	.word	_sourceFileName
	.word	_Label_114
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_115
	.word	8
	.word	4
	.word	_Label_116
	.word	-12
	.word	4
	.word	_Label_117
	.word	-16
	.word	4
	.word	_Label_118
	.word	-20
	.word	4
	.word	_Label_119
	.word	-24
	.word	4
	.word	_Label_120
	.word	-28
	.word	4
	.word	_Label_121
	.word	-32
	.word	4
	.word	0
_Label_114:
	.ascii	"IdleFunction\0"
	.align
_Label_115:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_117:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_118:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_119:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
_Label_120:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_121:
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
_Label_644:
	push	r0
	sub	r1,1,r1
	bne	_Label_644
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
!   _temp_122 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_122 = 3  (sizeInBytes=4)
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
_Label_123:
	mov	89,r13		! source line 89
	mov	"\0\0SE",r10
!   _temp_127 = &_P_Thread_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_126  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_126 then goto _Label_125 else goto _Label_124
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_124
	jmp	_Label_125
_Label_124:
	mov	89,r13		! source line 89
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0AS",r10
	mov	90,r13		! source line 90
	mov	"\0\0SE",r10
!   _temp_128 = &_P_Thread_threadsToBeDestroyed
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
!   _temp_129 = th + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_129 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-16],r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_123
_Label_125:
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
	.word	_Label_130
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_131
	.word	8
	.word	4
	.word	_Label_132
	.word	-16
	.word	4
	.word	_Label_133
	.word	-20
	.word	4
	.word	_Label_134
	.word	-24
	.word	4
	.word	_Label_135
	.word	-9
	.word	1
	.word	_Label_136
	.word	-28
	.word	4
	.word	_Label_137
	.word	-32
	.word	4
	.word	_Label_138
	.word	-36
	.word	4
	.word	0
_Label_130:
	.ascii	"Run\0"
	.align
_Label_131:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
_Label_135:
	.byte	'C'
	.ascii	"_temp_126\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_137:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_138:
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
_Label_645:
	push	r0
	sub	r1,1,r1
	bne	_Label_645
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
!   _temp_139 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_139  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_140 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_140  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_141 = _function_54_ThreadPrint
	set	_function_54_ThreadPrint,r1
	store	r1,[r14+-64]
!   _temp_142 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_141  sizeInBytes=4
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
!   _temp_143 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_143  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0SE",r10
!   _temp_144 = _function_54_ThreadPrint
	set	_function_54_ThreadPrint,r1
	store	r1,[r14+-52]
!   _temp_145 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_144  sizeInBytes=4
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
!   _temp_146 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_146  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0SE",r10
!   _temp_147 = _function_54_ThreadPrint
	set	_function_54_ThreadPrint,r1
	store	r1,[r14+-40]
!   _temp_148 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_147  sizeInBytes=4
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
!   _temp_149 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_149  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0SE",r10
!   _temp_150 = _function_54_ThreadPrint
	set	_function_54_ThreadPrint,r1
	store	r1,[r14+-28]
!   _temp_151 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_150  sizeInBytes=4
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
!   _temp_152 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_152  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0SE",r10
!   _temp_153 = _function_54_ThreadPrint
	set	_function_54_ThreadPrint,r1
	store	r1,[r14+-16]
!   _temp_154 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_153  sizeInBytes=4
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
	.word	_Label_155
	.word	0		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_156
	.word	-12
	.word	4
	.word	_Label_157
	.word	-16
	.word	4
	.word	_Label_158
	.word	-20
	.word	4
	.word	_Label_159
	.word	-24
	.word	4
	.word	_Label_160
	.word	-28
	.word	4
	.word	_Label_161
	.word	-32
	.word	4
	.word	_Label_162
	.word	-36
	.word	4
	.word	_Label_163
	.word	-40
	.word	4
	.word	_Label_164
	.word	-44
	.word	4
	.word	_Label_165
	.word	-48
	.word	4
	.word	_Label_166
	.word	-52
	.word	4
	.word	_Label_167
	.word	-56
	.word	4
	.word	_Label_168
	.word	-60
	.word	4
	.word	_Label_169
	.word	-64
	.word	4
	.word	_Label_170
	.word	-68
	.word	4
	.word	_Label_171
	.word	-72
	.word	4
	.word	_Label_172
	.word	-76
	.word	4
	.word	0
_Label_155:
	.ascii	"PrintReadyList\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_172:
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
_Label_646:
	push	r0
	sub	r1,1,r1
	bne	_Label_646
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
!   _temp_173 = _P_Thread_currentThread + 80
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_173  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_175 = _P_Thread_currentThread + 84
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_174 = *_temp_175  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_174  sizeInBytes=4
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
!   _temp_176 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_176  sizeInBytes=4
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
	.word	_Label_177
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_178
	.word	-12
	.word	4
	.word	_Label_179
	.word	-16
	.word	4
	.word	_Label_180
	.word	-20
	.word	4
	.word	_Label_181
	.word	-24
	.word	4
	.word	_Label_182
	.word	-28
	.word	4
	.word	_Label_183
	.word	-32
	.word	4
	.word	0
_Label_177:
	.ascii	"ThreadStartMain\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_176\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_175\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_182:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_183:
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
_Label_647:
	push	r0
	sub	r1,1,r1
	bne	_Label_647
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
!   _temp_184 = &_P_Thread_threadsToBeDestroyed
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
	.word	_Label_185
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_186
	.word	-12
	.word	4
	.word	_Label_187
	.word	-16
	.word	4
	.word	0
_Label_185:
	.ascii	"ThreadFinish\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_187:
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
_Label_648:
	push	r0
	sub	r1,1,r1
	bne	_Label_648
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
!   _temp_188 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_188  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0IF",r10
!   if _P_Thread_currentThread == 0 then goto _Label_190		(int)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_190
!	_Label_189	jmp	_Label_189
_Label_189:
! THEN...
	mov	176,r13		! source line 176
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_191 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_191  sizeInBytes=4
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
!   _temp_193 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Data Move: _temp_192 = *_temp_193  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_192  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_190:
! CALL STATEMENT...
!   _temp_194 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_194  sizeInBytes=4
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
!   _temp_195 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_195  sizeInBytes=4
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
	.word	_Label_196
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_197
	.word	8
	.word	4
	.word	_Label_198
	.word	-12
	.word	4
	.word	_Label_199
	.word	-16
	.word	4
	.word	_Label_200
	.word	-20
	.word	4
	.word	_Label_201
	.word	-24
	.word	4
	.word	_Label_202
	.word	-28
	.word	4
	.word	_Label_203
	.word	-32
	.word	4
	.word	_Label_204
	.word	-36
	.word	4
	.word	0
_Label_196:
	.ascii	"FatalError\0"
	.align
_Label_197:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_204:
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
_Label_649:
	push	r0
	sub	r1,1,r1
	bne	_Label_649
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
!   if newStatus != 1 then goto _Label_206		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_206
!	_Label_205	jmp	_Label_205
_Label_205:
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
	jmp	_Label_207
_Label_206:
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
_Label_207:
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
	.word	_Label_208
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_209
	.word	8
	.word	4
	.word	_Label_210
	.word	-12
	.word	4
	.word	0
_Label_208:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_209:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_210:
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
	mov	11,r1
_Label_650:
	push	r0
	sub	r1,1,r1
	bne	_Label_650
	mov	214,r13		! source line 214
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0IF",r10
	mov	228,r13		! source line 228
	mov	"\0\0SE",r10
!   _temp_214 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-44]
!   Send message IsEmpty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_213  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_213 then goto _Label_212 else goto _Label_211
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_211
	jmp	_Label_212
_Label_211:
! THEN...
	mov	229,r13		! source line 229
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0AS",r10
!   highestPrio = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
	jmp	_Label_215
_Label_212:
! ELSE...
	mov	230,r13		! source line 230
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0IF",r10
	mov	230,r13		! source line 230
	mov	"\0\0SE",r10
!   _temp_219 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_218  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_218 then goto _Label_217 else goto _Label_216
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_216
	jmp	_Label_217
_Label_216:
! THEN...
	mov	231,r13		! source line 231
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0AS",r10
!   highestPrio = 2		(4 bytes)
	mov	2,r1
	store	r1,[r14+-48]
	jmp	_Label_220
_Label_217:
! ELSE...
	mov	232,r13		! source line 232
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0IF",r10
	mov	232,r13		! source line 232
	mov	"\0\0SE",r10
!   _temp_224 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_223  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_223 then goto _Label_222 else goto _Label_221
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_221
	jmp	_Label_222
_Label_221:
! THEN...
	mov	233,r13		! source line 233
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0AS",r10
!   highestPrio = 3		(4 bytes)
	mov	3,r1
	store	r1,[r14+-48]
	jmp	_Label_225
_Label_222:
! ELSE...
	mov	234,r13		! source line 234
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0IF",r10
	mov	234,r13		! source line 234
	mov	"\0\0SE",r10
!   _temp_229 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_228  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_228 then goto _Label_227 else goto _Label_226
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_226
	jmp	_Label_227
_Label_226:
! THEN...
	mov	235,r13		! source line 235
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   highestPrio = 4		(4 bytes)
	mov	4,r1
	store	r1,[r14+-48]
	jmp	_Label_230
_Label_227:
! ELSE...
	mov	236,r13		! source line 236
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0IF",r10
	mov	236,r13		! source line 236
	mov	"\0\0SE",r10
!   _temp_234 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-28]
!   Send message IsEmpty
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_233  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_233 then goto _Label_232 else goto _Label_231
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_231
	jmp	_Label_232
_Label_231:
! THEN...
	mov	237,r13		! source line 237
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
!   highestPrio = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-48]
	jmp	_Label_235
_Label_232:
! ELSE...
	mov	239,r13		! source line 239
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_236 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	239,r13		! source line 239
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_235:
! END IF...
_Label_230:
! END IF...
_Label_225:
! END IF...
_Label_220:
! END IF...
_Label_215:
! IF STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0IF",r10
	mov	241,r13		! source line 241
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
!   Retrieve Result: targetName=_temp_239  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if highestPrio > _temp_239 then goto _Label_238		(int)
	load	[r14+-48],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_238
!	_Label_237	jmp	_Label_237
_Label_237:
! THEN...
	mov	243,r13		! source line 243
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	243,r13		! source line 243
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
_Label_238:
! ASSIGNMENT STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_240
	.word	0		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_241
	.word	-20
	.word	4
	.word	_Label_242
	.word	-24
	.word	4
	.word	_Label_243
	.word	-28
	.word	4
	.word	_Label_244
	.word	-9
	.word	1
	.word	_Label_245
	.word	-32
	.word	4
	.word	_Label_246
	.word	-10
	.word	1
	.word	_Label_247
	.word	-36
	.word	4
	.word	_Label_248
	.word	-11
	.word	1
	.word	_Label_249
	.word	-40
	.word	4
	.word	_Label_250
	.word	-12
	.word	1
	.word	_Label_251
	.word	-44
	.word	4
	.word	_Label_252
	.word	-13
	.word	1
	.word	_Label_253
	.word	-48
	.word	4
	.word	0
_Label_240:
	.ascii	"TimerInterruptHandler\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_244:
	.byte	'C'
	.ascii	"_temp_233\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_246:
	.byte	'C'
	.ascii	"_temp_228\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_248:
	.byte	'C'
	.ascii	"_temp_223\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_250:
	.byte	'C'
	.ascii	"_temp_218\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_252:
	.byte	'C'
	.ascii	"_temp_213\0"
	.align
_Label_253:
	.byte	'I'
	.ascii	"highestPrio\0"
	.align
! 
! ===============  FUNCTION ThreadPrint  ===============
! 
_function_54_ThreadPrint:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_54_ThreadPrint,r1
	push	r1
	mov	17,r1
_Label_651:
	push	r0
	sub	r1,1,r1
	bne	_Label_651
	mov	250,r13		! source line 250
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	257,r13		! source line 257
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   _temp_254 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_254  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	258,r13		! source line 258
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_256 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-60]
!   Data Move: _temp_255 = *_temp_256  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_255  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	259,r13		! source line 259
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_257 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_257  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	260,r13		! source line 260
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	261,r13		! source line 261
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_266 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-48]
!   Data Move: _temp_265 = *_temp_266  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Branch to the right case label
	load	[r14+-52],r1
	cmp	r1,1
	be	_Label_260
	cmp	r1,2
	be	_Label_261
	cmp	r1,3
	be	_Label_262
	cmp	r1,4
	be	_Label_263
	cmp	r1,5
	be	_Label_264
	jmp	_Label_258
! CASE 1...
_Label_260:
! CALL STATEMENT...
!   _temp_267 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_267  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	263,r13		! source line 263
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0BR",r10
	jmp	_Label_259
! CASE 2...
_Label_261:
! CALL STATEMENT...
!   _temp_268 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_268  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	266,r13		! source line 266
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0BR",r10
	jmp	_Label_259
! CASE 3...
_Label_262:
! CALL STATEMENT...
!   _temp_269 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_269  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	269,r13		! source line 269
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0BR",r10
	jmp	_Label_259
! CASE 4...
_Label_263:
! CALL STATEMENT...
!   _temp_270 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_270  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	272,r13		! source line 272
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0BR",r10
	jmp	_Label_259
! CASE 5...
_Label_264:
! CALL STATEMENT...
!   _temp_271 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_271  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0BR",r10
	jmp	_Label_259
! DEFAULT CASE...
_Label_258:
! CALL STATEMENT...
!   _temp_272 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_272  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_259:
! CALL STATEMENT...
!   _temp_273 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_273  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	280,r13		! source line 280
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_274 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_274  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	281,r13		! source line 281
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_275 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_275  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	282,r13		! source line 282
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	283,r13		! source line 283
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	285,r13		! source line 285
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	285,r13		! source line 285
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! RETURN STATEMENT...
	mov	285,r13		! source line 285
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_54_ThreadPrint:
	.word	_sourceFileName
	.word	_Label_276
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_277
	.word	8
	.word	4
	.word	_Label_278
	.word	-12
	.word	4
	.word	_Label_279
	.word	-16
	.word	4
	.word	_Label_280
	.word	-20
	.word	4
	.word	_Label_281
	.word	-24
	.word	4
	.word	_Label_282
	.word	-28
	.word	4
	.word	_Label_283
	.word	-32
	.word	4
	.word	_Label_284
	.word	-36
	.word	4
	.word	_Label_285
	.word	-40
	.word	4
	.word	_Label_286
	.word	-44
	.word	4
	.word	_Label_287
	.word	-48
	.word	4
	.word	_Label_288
	.word	-52
	.word	4
	.word	_Label_289
	.word	-56
	.word	4
	.word	_Label_290
	.word	-60
	.word	4
	.word	_Label_291
	.word	-64
	.word	4
	.word	_Label_292
	.word	-68
	.word	4
	.word	_Label_293
	.word	-72
	.word	4
	.word	0
_Label_276:
	.ascii	"ThreadPrint\0"
	.align
_Label_277:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_293:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Thread_Thread:
	.word	_Label_294
	jmp	_Method_P_Thread_Thread_1	! 4:	Init
	jmp	_Method_P_Thread_Thread_2	! 8:	Fork
	jmp	_Method_P_Thread_Thread_3	! 12:	Yield
	jmp	_Method_P_Thread_Thread_4	! 16:	Sleep
	jmp	_Method_P_Thread_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Thread_Thread_6	! 24:	Print
	jmp	_Method_P_Thread_Thread_7	! 28:	setPriority
	jmp	_Method_P_Thread_Thread_8	! 32:	getPriority
	jmp	_Method_P_Thread_Thread_9	! 36:	ageThread
	.word	0
! 
! Class descriptor:
! 
_Label_294:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_295
	.word	_sourceFileName
	.word	41		! line number
	.word	4100		! size of instances, in bytes
	.word	_P_Thread_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_295:
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
_Label_652:
	push	r0
	sub	r1,1,r1
	bne	_Label_652
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0AS",r10
!   _temp_296 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_296) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_296 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-108],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0AS",r10
!   _temp_297 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-104]
!   Move address of _temp_297 [0 ] into _temp_298
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
!   Data Move: *_temp_298 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0AS",r10
!   _temp_299 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-96]
!   Move address of _temp_299 [999 ] into _temp_300
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
!   Data Move: *_temp_300 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0AS",r10
!   _temp_301 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-88]
!   Move address of _temp_301 [999 ] into _temp_302
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
!   stackTop = _temp_302		(4 bytes)
	load	[r14+-84],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   _temp_303 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-80]
!   NEW ARRAY Constructor...
!   _temp_305 = &_temp_304
	add	r14,-76,r1
	store	r1,[r14+-20]
!   _temp_305 = _temp_305 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	13,r1
	store	r1,[r14+-16]
_Label_307:
!   Data Move: *_temp_305 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_305 = _temp_305 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_306 = _temp_306 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_306) then goto _Label_307
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_307
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-76]
!   _temp_308 = &_temp_304
	add	r14,-76,r1
	store	r1,[r14+-12]
!   make sure array has size 13
	load	[r14+-80],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_653
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_653:
!   make sure array has size 13
	load	[r14+-12],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_303 = *_temp_308  (sizeInBytes=56)
	load	[r14+-12],r5
	load	[r14+-80],r4
	mov	14,r3
_Label_654:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_654
! ASSIGNMENT STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0AS",r10
!   prio = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4092]
! RETURN STATEMENT...
	mov	307,r13		! source line 307
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
	.word	_Label_309
	.word	8		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_310
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_311
	.word	12
	.word	4
	.word	_Label_312
	.word	-12
	.word	4
	.word	_Label_313
	.word	-16
	.word	4
	.word	_Label_314
	.word	-20
	.word	4
	.word	_Label_315
	.word	-76
	.word	56
	.word	_Label_316
	.word	-80
	.word	4
	.word	_Label_317
	.word	-84
	.word	4
	.word	_Label_318
	.word	-88
	.word	4
	.word	_Label_319
	.word	-92
	.word	4
	.word	_Label_320
	.word	-96
	.word	4
	.word	_Label_321
	.word	-100
	.word	4
	.word	_Label_322
	.word	-104
	.word	4
	.word	_Label_323
	.word	-108
	.word	4
	.word	0
_Label_309:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_310:
	.ascii	"Pself\0"
	.align
_Label_311:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_296\0"
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
_Label_655:
	push	r0
	sub	r1,1,r1
	bne	_Label_655
	mov	312,r13		! source line 312
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	323,r13		! source line 323
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
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
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_324 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-52]
!   Data Move: *stackTop = _temp_324  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! IF STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0IF",r10
!   if prio != 1 then goto _Label_326		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_326
!	_Label_325	jmp	_Label_325
_Label_325:
! THEN...
	mov	332,r13		! source line 332
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   _temp_328 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_327  sizeInBytes=4
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
	jmp	_Label_329
_Label_326:
! ELSE...
	mov	333,r13		! source line 333
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0IF",r10
!   if prio != 2 then goto _Label_331		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_331
!	_Label_330	jmp	_Label_330
_Label_330:
! THEN...
	mov	334,r13		! source line 334
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   _temp_333 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_332  sizeInBytes=4
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
	jmp	_Label_334
_Label_331:
! ELSE...
	mov	335,r13		! source line 335
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0IF",r10
!   if prio != 3 then goto _Label_336		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_336
!	_Label_335	jmp	_Label_335
_Label_335:
! THEN...
	mov	336,r13		! source line 336
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   _temp_338 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_337  sizeInBytes=4
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
	jmp	_Label_339
_Label_336:
! ELSE...
	mov	337,r13		! source line 337
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0IF",r10
!   if prio != 4 then goto _Label_341		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_341
!	_Label_340	jmp	_Label_340
_Label_340:
! THEN...
	mov	338,r13		! source line 338
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	338,r13		! source line 338
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   _temp_343 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_342  sizeInBytes=4
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
	jmp	_Label_344
_Label_341:
! ELSE...
	mov	339,r13		! source line 339
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	339,r13		! source line 339
	mov	"\0\0IF",r10
!   if prio != 5 then goto _Label_346		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_346
!	_Label_345	jmp	_Label_345
_Label_345:
! THEN...
	mov	340,r13		! source line 340
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_348 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_347  sizeInBytes=4
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
_Label_346:
! END IF...
_Label_344:
! END IF...
_Label_339:
! END IF...
_Label_334:
! END IF...
_Label_329:
! ASSIGNMENT STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	342,r13		! source line 342
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	342,r13		! source line 342
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
	.word	_Label_349
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_350
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_351
	.word	12
	.word	4
	.word	_Label_352
	.word	16
	.word	4
	.word	_Label_353
	.word	-12
	.word	4
	.word	_Label_354
	.word	-16
	.word	4
	.word	_Label_355
	.word	-20
	.word	4
	.word	_Label_356
	.word	-24
	.word	4
	.word	_Label_357
	.word	-28
	.word	4
	.word	_Label_358
	.word	-32
	.word	4
	.word	_Label_359
	.word	-36
	.word	4
	.word	_Label_360
	.word	-40
	.word	4
	.word	_Label_361
	.word	-44
	.word	4
	.word	_Label_362
	.word	-48
	.word	4
	.word	_Label_363
	.word	-52
	.word	4
	.word	_Label_364
	.word	-56
	.word	4
	.word	_Label_365
	.word	-60
	.word	4
	.word	0
_Label_349:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_350:
	.ascii	"Pself\0"
	.align
_Label_351:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_352:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_364:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_365:
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
	mov	32,r1
_Label_656:
	push	r0
	sub	r1,1,r1
	bne	_Label_656
	mov	347,r13		! source line 347
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	363,r13		! source line 363
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if _temp_368 == _P_Thread_currentThread then goto _Label_367		(int)
	load	[r14+-116],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_367
!	_Label_366	jmp	_Label_366
_Label_366:
! THEN...
	mov	364,r13		! source line 364
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_369 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	364,r13		! source line 364
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_367:
! ASSIGNMENT STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	366,r13		! source line 366
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	371,r13		! source line 371
	mov	"\0\0IF",r10
	mov	371,r13		! source line 371
	mov	"\0\0SE",r10
!   _temp_373 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-108]
!   Send message IsEmpty
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_372  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_372 then goto _Label_371 else goto _Label_370
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_370
	jmp	_Label_371
_Label_370:
! THEN...
	mov	372,r13		! source line 372
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0AS",r10
	mov	372,r13		! source line 372
	mov	"\0\0SE",r10
!   _temp_374 = &_P_Thread_one
	set	_P_Thread_one,r1
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
	store	r1,[r14+-120]
	jmp	_Label_375
_Label_371:
! ELSE...
	mov	373,r13		! source line 373
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	373,r13		! source line 373
	mov	"\0\0IF",r10
	mov	373,r13		! source line 373
	mov	"\0\0SE",r10
!   _temp_379 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-100]
!   Send message IsEmpty
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_378  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_378 then goto _Label_377 else goto _Label_376
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_376
	jmp	_Label_377
_Label_376:
! THEN...
	mov	374,r13		! source line 374
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	374,r13		! source line 374
	mov	"\0\0AS",r10
	mov	374,r13		! source line 374
	mov	"\0\0SE",r10
!   _temp_380 = &_P_Thread_two
	set	_P_Thread_two,r1
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
	store	r1,[r14+-120]
	jmp	_Label_381
_Label_377:
! ELSE...
	mov	375,r13		! source line 375
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0IF",r10
	mov	375,r13		! source line 375
	mov	"\0\0SE",r10
!   _temp_385 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-92]
!   Send message IsEmpty
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_384  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_384 then goto _Label_383 else goto _Label_382
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_382
	jmp	_Label_383
_Label_382:
! THEN...
	mov	376,r13		! source line 376
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	376,r13		! source line 376
	mov	"\0\0AS",r10
	mov	376,r13		! source line 376
	mov	"\0\0SE",r10
!   _temp_386 = &_P_Thread_three
	set	_P_Thread_three,r1
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
	store	r1,[r14+-120]
	jmp	_Label_387
_Label_383:
! ELSE...
	mov	377,r13		! source line 377
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	377,r13		! source line 377
	mov	"\0\0IF",r10
	mov	377,r13		! source line 377
	mov	"\0\0SE",r10
!   _temp_391 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-84]
!   Send message IsEmpty
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_390  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_390 then goto _Label_389 else goto _Label_388
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_388
	jmp	_Label_389
_Label_388:
! THEN...
	mov	378,r13		! source line 378
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	378,r13		! source line 378
	mov	"\0\0AS",r10
	mov	378,r13		! source line 378
	mov	"\0\0SE",r10
!   _temp_392 = &_P_Thread_four
	set	_P_Thread_four,r1
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
	store	r1,[r14+-120]
	jmp	_Label_393
_Label_389:
! ELSE...
	mov	379,r13		! source line 379
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0IF",r10
	mov	379,r13		! source line 379
	mov	"\0\0SE",r10
!   _temp_397 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-76]
!   Send message IsEmpty
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_396  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_396 then goto _Label_395 else goto _Label_394
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_394
	jmp	_Label_395
_Label_394:
! THEN...
	mov	380,r13		! source line 380
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	380,r13		! source line 380
	mov	"\0\0AS",r10
	mov	380,r13		! source line 380
	mov	"\0\0SE",r10
!   _temp_398 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-72]
!   Send message Remove
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
	jmp	_Label_399
_Label_395:
! ELSE...
	mov	382,r13		! source line 382
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_400 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	382,r13		! source line 382
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_399:
! END IF...
_Label_393:
! END IF...
_Label_387:
! END IF...
_Label_381:
! END IF...
_Label_375:
! IF STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_402		(int)
	load	[r14+-120],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_402
!	_Label_401	jmp	_Label_401
_Label_401:
! THEN...
	mov	388,r13		! source line 388
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_404		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_404
!	_Label_403	jmp	_Label_403
_Label_403:
! THEN...
	mov	389,r13		! source line 389
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_405 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_405  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	389,r13		! source line 389
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_404:
! ASSIGNMENT STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! IF STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0IF",r10
!   if prio != 1 then goto _Label_407		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_407
!	_Label_406	jmp	_Label_406
_Label_406:
! THEN...
	mov	394,r13		! source line 394
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   _temp_409 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_408  sizeInBytes=4
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
	jmp	_Label_410
_Label_407:
! ELSE...
	mov	395,r13		! source line 395
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0IF",r10
!   if prio != 2 then goto _Label_412		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_412
!	_Label_411	jmp	_Label_411
_Label_411:
! THEN...
	mov	396,r13		! source line 396
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   _temp_414 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_413  sizeInBytes=4
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
	jmp	_Label_415
_Label_412:
! ELSE...
	mov	397,r13		! source line 397
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0IF",r10
!   if prio != 3 then goto _Label_417		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_417
!	_Label_416	jmp	_Label_416
_Label_416:
! THEN...
	mov	398,r13		! source line 398
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   _temp_419 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_418  sizeInBytes=4
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
	jmp	_Label_420
_Label_417:
! ELSE...
	mov	399,r13		! source line 399
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0IF",r10
!   if prio != 4 then goto _Label_422		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_422
!	_Label_421	jmp	_Label_421
_Label_421:
! THEN...
	mov	400,r13		! source line 400
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   _temp_424 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_423  sizeInBytes=4
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
	jmp	_Label_425
_Label_422:
! ELSE...
	mov	401,r13		! source line 401
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0IF",r10
!   if prio != 5 then goto _Label_427		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_427
!	_Label_426	jmp	_Label_426
_Label_426:
! THEN...
	mov	402,r13		! source line 402
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   _temp_429 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_428  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_430
_Label_427:
! ELSE...
	mov	404,r13		! source line 404
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_431 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_431  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	404,r13		! source line 404
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_430:
! END IF...
_Label_425:
! END IF...
_Label_420:
! END IF...
_Label_415:
! END IF...
_Label_410:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	406,r13		! source line 406
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! END IF...
_Label_402:
! ASSIGNMENT STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	408,r13		! source line 408
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-128]
! RETURN STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0RE",r10
	add	r15,132,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_3:
	.word	_sourceFileName
	.word	_Label_432
	.word	4		! total size of parameters
	.word	128		! frame size = 128
	.word	_Label_433
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_434
	.word	-20
	.word	4
	.word	_Label_435
	.word	-24
	.word	4
	.word	_Label_436
	.word	-28
	.word	4
	.word	_Label_437
	.word	-32
	.word	4
	.word	_Label_438
	.word	-36
	.word	4
	.word	_Label_439
	.word	-40
	.word	4
	.word	_Label_440
	.word	-44
	.word	4
	.word	_Label_441
	.word	-48
	.word	4
	.word	_Label_442
	.word	-52
	.word	4
	.word	_Label_443
	.word	-56
	.word	4
	.word	_Label_444
	.word	-60
	.word	4
	.word	_Label_445
	.word	-64
	.word	4
	.word	_Label_446
	.word	-68
	.word	4
	.word	_Label_447
	.word	-72
	.word	4
	.word	_Label_448
	.word	-76
	.word	4
	.word	_Label_449
	.word	-9
	.word	1
	.word	_Label_450
	.word	-80
	.word	4
	.word	_Label_451
	.word	-84
	.word	4
	.word	_Label_452
	.word	-10
	.word	1
	.word	_Label_453
	.word	-88
	.word	4
	.word	_Label_454
	.word	-92
	.word	4
	.word	_Label_455
	.word	-11
	.word	1
	.word	_Label_456
	.word	-96
	.word	4
	.word	_Label_457
	.word	-100
	.word	4
	.word	_Label_458
	.word	-12
	.word	1
	.word	_Label_459
	.word	-104
	.word	4
	.word	_Label_460
	.word	-108
	.word	4
	.word	_Label_461
	.word	-13
	.word	1
	.word	_Label_462
	.word	-112
	.word	4
	.word	_Label_463
	.word	-116
	.word	4
	.word	_Label_464
	.word	-120
	.word	4
	.word	_Label_465
	.word	-124
	.word	4
	.word	_Label_466
	.word	-128
	.word	4
	.word	0
_Label_432:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_433:
	.ascii	"Pself\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_449:
	.byte	'C'
	.ascii	"_temp_396\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_452:
	.byte	'C'
	.ascii	"_temp_390\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_455:
	.byte	'C'
	.ascii	"_temp_384\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_458:
	.byte	'C'
	.ascii	"_temp_378\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_461:
	.byte	'C'
	.ascii	"_temp_372\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_464:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_465:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_466:
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
_Label_657:
	push	r0
	sub	r1,1,r1
	bne	_Label_657
	mov	413,r13		! source line 413
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0IF",r10
!   if _P_Thread_currentInterruptStatus == 2 then goto _Label_468		(int)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_468
!	_Label_467	jmp	_Label_467
_Label_467:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_469 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_469  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	426,r13		! source line 426
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_468:
! IF STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if _temp_472 == _P_Thread_currentThread then goto _Label_471		(int)
	load	[r14+-72],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_471
!	_Label_470	jmp	_Label_470
_Label_470:
! THEN...
	mov	430,r13		! source line 430
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_473 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_473  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	430,r13		! source line 430
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_471:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! IF STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0IF",r10
	mov	437,r13		! source line 437
	mov	"\0\0SE",r10
!   _temp_477 = &_P_Thread_one
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
!   Retrieve Result: targetName=_temp_476  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_476 then goto _Label_475 else goto _Label_474
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_474
	jmp	_Label_475
_Label_474:
! THEN...
	mov	438,r13		! source line 438
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0AS",r10
	mov	438,r13		! source line 438
	mov	"\0\0SE",r10
!   _temp_478 = &_P_Thread_one
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
	jmp	_Label_479
_Label_475:
! ELSE...
	mov	439,r13		! source line 439
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0IF",r10
	mov	439,r13		! source line 439
	mov	"\0\0SE",r10
!   _temp_483 = &_P_Thread_two
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
!   Retrieve Result: targetName=_temp_482  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_482 then goto _Label_481 else goto _Label_480
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_480
	jmp	_Label_481
_Label_480:
! THEN...
	mov	440,r13		! source line 440
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0AS",r10
	mov	440,r13		! source line 440
	mov	"\0\0SE",r10
!   _temp_484 = &_P_Thread_two
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
	jmp	_Label_485
_Label_481:
! ELSE...
	mov	441,r13		! source line 441
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0IF",r10
	mov	441,r13		! source line 441
	mov	"\0\0SE",r10
!   _temp_489 = &_P_Thread_three
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
!   Retrieve Result: targetName=_temp_488  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_488 then goto _Label_487 else goto _Label_486
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_486
	jmp	_Label_487
_Label_486:
! THEN...
	mov	442,r13		! source line 442
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0AS",r10
	mov	442,r13		! source line 442
	mov	"\0\0SE",r10
!   _temp_490 = &_P_Thread_three
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
	jmp	_Label_491
_Label_487:
! ELSE...
	mov	443,r13		! source line 443
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0IF",r10
	mov	443,r13		! source line 443
	mov	"\0\0SE",r10
!   _temp_495 = &_P_Thread_four
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
!   Retrieve Result: targetName=_temp_494  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_494 then goto _Label_493 else goto _Label_492
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_492
	jmp	_Label_493
_Label_492:
! THEN...
	mov	444,r13		! source line 444
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0AS",r10
	mov	444,r13		! source line 444
	mov	"\0\0SE",r10
!   _temp_496 = &_P_Thread_four
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
	jmp	_Label_497
_Label_493:
! ELSE...
	mov	445,r13		! source line 445
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0IF",r10
	mov	445,r13		! source line 445
	mov	"\0\0SE",r10
!   _temp_501 = &_P_Thread_five
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
!   Retrieve Result: targetName=_temp_500  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_500 then goto _Label_499 else goto _Label_498
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_498
	jmp	_Label_499
_Label_498:
! THEN...
	mov	446,r13		! source line 446
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0AS",r10
	mov	446,r13		! source line 446
	mov	"\0\0SE",r10
!   _temp_502 = &_P_Thread_five
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
	jmp	_Label_503
_Label_499:
! ELSE...
	mov	448,r13		! source line 448
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_504 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_504  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	448,r13		! source line 448
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_503:
! END IF...
_Label_497:
! END IF...
_Label_491:
! END IF...
_Label_485:
! END IF...
_Label_479:
! IF STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_505
	load	[r14+-80],r1
	cmp	r1,r0
	be	_Label_505
	jmp	_Label_506
_Label_505:
! THEN...
	mov	451,r13		! source line 451
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_507 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_507  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	451,r13		! source line 451
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_506:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	453,r13		! source line 453
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! RETURN STATEMENT...
	mov	453,r13		! source line 453
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
	.word	_Label_508
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_509
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_510
	.word	-20
	.word	4
	.word	_Label_511
	.word	-24
	.word	4
	.word	_Label_512
	.word	-28
	.word	4
	.word	_Label_513
	.word	-32
	.word	4
	.word	_Label_514
	.word	-9
	.word	1
	.word	_Label_515
	.word	-36
	.word	4
	.word	_Label_516
	.word	-40
	.word	4
	.word	_Label_517
	.word	-10
	.word	1
	.word	_Label_518
	.word	-44
	.word	4
	.word	_Label_519
	.word	-48
	.word	4
	.word	_Label_520
	.word	-11
	.word	1
	.word	_Label_521
	.word	-52
	.word	4
	.word	_Label_522
	.word	-56
	.word	4
	.word	_Label_523
	.word	-12
	.word	1
	.word	_Label_524
	.word	-60
	.word	4
	.word	_Label_525
	.word	-64
	.word	4
	.word	_Label_526
	.word	-13
	.word	1
	.word	_Label_527
	.word	-68
	.word	4
	.word	_Label_528
	.word	-72
	.word	4
	.word	_Label_529
	.word	-76
	.word	4
	.word	_Label_530
	.word	-80
	.word	4
	.word	0
_Label_508:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_509:
	.ascii	"Pself\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_514:
	.byte	'C'
	.ascii	"_temp_500\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_517:
	.byte	'C'
	.ascii	"_temp_494\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_520:
	.byte	'C'
	.ascii	"_temp_488\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_523:
	.byte	'C'
	.ascii	"_temp_482\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_526:
	.byte	'C'
	.ascii	"_temp_476\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_530:
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
_Label_658:
	push	r0
	sub	r1,1,r1
	bne	_Label_658
	mov	458,r13		! source line 458
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0IF",r10
!   _temp_534 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_534 [0 ] into _temp_535
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
!   Data Move: _temp_533 = *_temp_535  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_533 == 606348324 then goto _Label_532		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_532
!	_Label_531	jmp	_Label_531
_Label_531:
! THEN...
	mov	465,r13		! source line 465
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_536 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_536  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	465,r13		! source line 465
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
	jmp	_Label_537
_Label_532:
! ELSE...
	mov	466,r13		! source line 466
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0IF",r10
!   _temp_541 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_541 [999 ] into _temp_542
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
!   Data Move: _temp_540 = *_temp_542  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_540 == 606348324 then goto _Label_539		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_539
!	_Label_538	jmp	_Label_538
_Label_538:
! THEN...
	mov	467,r13		! source line 467
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_543 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_543  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	467,r13		! source line 467
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_539:
! END IF...
_Label_537:
! RETURN STATEMENT...
	mov	464,r13		! source line 464
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
	.word	_Label_544
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_545
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_546
	.word	-12
	.word	4
	.word	_Label_547
	.word	-16
	.word	4
	.word	_Label_548
	.word	-20
	.word	4
	.word	_Label_549
	.word	-24
	.word	4
	.word	_Label_550
	.word	-28
	.word	4
	.word	_Label_551
	.word	-32
	.word	4
	.word	_Label_552
	.word	-36
	.word	4
	.word	_Label_553
	.word	-40
	.word	4
	.word	0
_Label_544:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_545:
	.ascii	"Pself\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_533\0"
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
_Label_659:
	push	r0
	sub	r1,1,r1
	bne	_Label_659
	mov	473,r13		! source line 473
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	479,r13		! source line 479
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! CALL STATEMENT...
!   _temp_554 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_554  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	480,r13		! source line 480
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_555 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_555  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	481,r13		! source line 481
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_556  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	482,r13		! source line 482
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_557 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_557  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	483,r13		! source line 483
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_558 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_558  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	484,r13		! source line 484
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prio  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4092],r1
	store	r1,[r15+0]
!   Call the function
	mov	485,r13		! source line 485
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_559 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_559  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	486,r13		! source line 486
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_560 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_560  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	487,r13		! source line 487
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_565 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
!   Calculate and save the FOR-LOOP ending value
!   _temp_566 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-104]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_565  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+-140]
_Label_561:
!   Perform the FOR-LOOP termination test
!   if i > _temp_566 then goto _Label_564		
	load	[r14+-140],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_564
_Label_562:
	mov	488,r13		! source line 488
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_567 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_567  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	489,r13		! source line 489
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_568 = i + 2		(int)
	load	[r14+-140],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_568  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	490,r13		! source line 490
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_569 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	491,r13		! source line 491
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_571 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   Move address of _temp_571 [i ] into _temp_572
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
!   Data Move: _temp_570 = *_temp_572  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_570  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	492,r13		! source line 492
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_573 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_573  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	493,r13		! source line 493
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_575 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Move address of _temp_575 [i ] into _temp_576
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
!   Data Move: _temp_574 = *_temp_576  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	494,r13		! source line 494
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_577 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_577  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	495,r13		! source line 495
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_563:
!   i = i + 1
	load	[r14+-140],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
	jmp	_Label_561
! END FOR
_Label_564:
! CALL STATEMENT...
!   _temp_578 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-56]
!   _temp_579 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_578  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_579  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	497,r13		! source line 497
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_580 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-48]
!   _temp_582 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-40]
!   Move address of _temp_582 [0 ] into _temp_583
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
!   _temp_581 = _temp_583		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_580  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_581  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	498,r13		! source line 498
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	499,r13		! source line 499
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_586
	cmp	r1,2
	be	_Label_587
	cmp	r1,3
	be	_Label_588
	cmp	r1,4
	be	_Label_589
	cmp	r1,5
	be	_Label_590
	jmp	_Label_584
! CASE 1...
_Label_586:
! CALL STATEMENT...
!   _temp_591 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_591  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	501,r13		! source line 501
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0BR",r10
	jmp	_Label_585
! CASE 2...
_Label_587:
! CALL STATEMENT...
!   _temp_592 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_592  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	504,r13		! source line 504
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0BR",r10
	jmp	_Label_585
! CASE 3...
_Label_588:
! CALL STATEMENT...
!   _temp_593 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_593  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	507,r13		! source line 507
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0BR",r10
	jmp	_Label_585
! CASE 4...
_Label_589:
! CALL STATEMENT...
!   _temp_594 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_594  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	510,r13		! source line 510
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	511,r13		! source line 511
	mov	"\0\0BR",r10
	jmp	_Label_585
! CASE 5...
_Label_590:
! CALL STATEMENT...
!   _temp_595 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_595  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	513,r13		! source line 513
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0BR",r10
	jmp	_Label_585
! DEFAULT CASE...
_Label_584:
! CALL STATEMENT...
!   _temp_596 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_596  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	516,r13		! source line 516
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_585:
! ASSIGNMENT STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	518,r13		! source line 518
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! RETURN STATEMENT...
	mov	518,r13		! source line 518
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
	.word	_Label_597
	.word	4		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_598
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_599
	.word	-12
	.word	4
	.word	_Label_600
	.word	-16
	.word	4
	.word	_Label_601
	.word	-20
	.word	4
	.word	_Label_602
	.word	-24
	.word	4
	.word	_Label_603
	.word	-28
	.word	4
	.word	_Label_604
	.word	-32
	.word	4
	.word	_Label_605
	.word	-36
	.word	4
	.word	_Label_606
	.word	-40
	.word	4
	.word	_Label_607
	.word	-44
	.word	4
	.word	_Label_608
	.word	-48
	.word	4
	.word	_Label_609
	.word	-52
	.word	4
	.word	_Label_610
	.word	-56
	.word	4
	.word	_Label_611
	.word	-60
	.word	4
	.word	_Label_612
	.word	-64
	.word	4
	.word	_Label_613
	.word	-68
	.word	4
	.word	_Label_614
	.word	-72
	.word	4
	.word	_Label_615
	.word	-76
	.word	4
	.word	_Label_616
	.word	-80
	.word	4
	.word	_Label_617
	.word	-84
	.word	4
	.word	_Label_618
	.word	-88
	.word	4
	.word	_Label_619
	.word	-92
	.word	4
	.word	_Label_620
	.word	-96
	.word	4
	.word	_Label_621
	.word	-100
	.word	4
	.word	_Label_622
	.word	-104
	.word	4
	.word	_Label_623
	.word	-108
	.word	4
	.word	_Label_624
	.word	-112
	.word	4
	.word	_Label_625
	.word	-116
	.word	4
	.word	_Label_626
	.word	-120
	.word	4
	.word	_Label_627
	.word	-124
	.word	4
	.word	_Label_628
	.word	-128
	.word	4
	.word	_Label_629
	.word	-132
	.word	4
	.word	_Label_630
	.word	-136
	.word	4
	.word	_Label_631
	.word	-140
	.word	4
	.word	_Label_632
	.word	-144
	.word	4
	.word	0
_Label_597:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_598:
	.ascii	"Pself\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_558\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_631:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_632:
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
	mov	521,r13		! source line 521
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   prio = givenPrio		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4092]
! RETURN STATEMENT...
	mov	522,r13		! source line 522
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
	.word	_Label_633
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_634
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_635
	.word	12
	.word	4
	.word	0
_Label_633:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"setPriority\0"
	.align
_Label_634:
	.ascii	"Pself\0"
	.align
_Label_635:
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
	mov	538,r13		! source line 538
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	539,r13		! source line 539
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
	.word	_Label_636
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_637
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_636:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"getPriority\0"
	.align
_Label_637:
	.ascii	"Pself\0"
	.align
! 
! ===============  METHOD ageThread  ===============
! 
_Method_P_Thread_Thread_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_9,r1
	push	r1
	mov	542,r13		! source line 542
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0AS",r10
!   time = time + 1		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4096]
! RETURN STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_9:
	.word	_sourceFileName
	.word	_Label_638
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_639
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_638:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"ageThread\0"
	.align
_Label_639:
	.ascii	"Pself\0"
	.align
