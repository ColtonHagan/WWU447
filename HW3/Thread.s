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
	.skip	4096
_P_Thread_idleThread:
	.skip	4096
_P_Thread_threadsToBeDestroyed:
	.skip	12
_P_Thread_currentInterruptStatus:
	.skip	4
	.align
! String constants
_StringConst_49:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_48:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_47:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_46:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_45:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_44:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_43:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_42:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_41:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_40:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_39:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_38:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_37:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_36:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_35:
	.word	10			! length
	.ascii	"Priority: "
	.align
_StringConst_34:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_33:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_32:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_31:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_30:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_29:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_28:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_27:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_26:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_25:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_24:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_23:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_22:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_21:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_20:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_19:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_18:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_17:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_16:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_15:
	.word	10			! length
	.ascii	"  Thread \""
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
	set	0x7bc3c164,r4		! myHashVal = 2076426596
	cmp	r3,r4
	be	_Label_52
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
_Label_52:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_53
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_53
_Label_53:
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
_Label_703:
	push	r0
	sub	r1,1,r1
	bne	_Label_703
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_54 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_54  sizeInBytes=4
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
!   ZeroMemory: _P_Thread_mainThread = zeros  (sizeInBytes=4096)
	set	_P_Thread_mainThread,r4
	mov	1024,r3
_Label_704:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_704
!   _P_Thread_mainThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_63 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-52]
!   _temp_64 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_63  sizeInBytes=4
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
!   _temp_65 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-44]
!   _temp_66 = _temp_65 + 76
	load	[r14+-44],r1
	add	r1,76,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_66 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-40],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0SE",r10
!   _temp_67 = &_P_Thread_mainThread
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
!   ZeroMemory: _P_Thread_idleThread = zeros  (sizeInBytes=4096)
	set	_P_Thread_idleThread,r4
	mov	1024,r3
_Label_705:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_705
!   _P_Thread_idleThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_69 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-28]
!   _temp_70 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_69  sizeInBytes=4
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
!   _temp_71 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
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
!   _temp_72 = _function_51_IdleFunction
	set	_function_51_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_73 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_72  sizeInBytes=4
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
	.word	_Label_74
	.word	0		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_75
	.word	-12
	.word	4
	.word	_Label_76
	.word	-16
	.word	4
	.word	_Label_77
	.word	-20
	.word	4
	.word	_Label_78
	.word	-24
	.word	4
	.word	_Label_79
	.word	-28
	.word	4
	.word	_Label_80
	.word	-32
	.word	4
	.word	_Label_81
	.word	-36
	.word	4
	.word	_Label_82
	.word	-40
	.word	4
	.word	_Label_83
	.word	-44
	.word	4
	.word	_Label_84
	.word	-48
	.word	4
	.word	_Label_85
	.word	-52
	.word	4
	.word	_Label_86
	.word	-56
	.word	4
	.word	_Label_87
	.word	-60
	.word	4
	.word	_Label_88
	.word	-64
	.word	4
	.word	_Label_89
	.word	-68
	.word	4
	.word	_Label_90
	.word	-72
	.word	4
	.word	_Label_91
	.word	-76
	.word	4
	.word	_Label_92
	.word	-80
	.word	4
	.word	_Label_93
	.word	-84
	.word	4
	.word	_Label_94
	.word	-88
	.word	4
	.word	0
_Label_74:
	.ascii	"InitializeScheduler\0"
	.align
_Label_75:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_76:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_78:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_79:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_80:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_51_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_51_IdleFunction,r1
	push	r1
	mov	7,r1
_Label_706:
	push	r0
	sub	r1,1,r1
	bne	_Label_706
	mov	42,r13		! source line 42
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0WH",r10
_Label_95:
!	_Label_96	jmp	_Label_96
_Label_96:
	mov	54,r13		! source line 54
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	55,r13		! source line 55
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0IF",r10
	mov	56,r13		! source line 56
	mov	"\0\0SE",r10
!   _temp_104 = &_P_Thread_one
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
!   if result==true then goto _Label_103 else goto _Label_99
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_99
	jmp	_Label_103
_Label_103:
	mov	56,r13		! source line 56
	mov	"\0\0SE",r10
!   _temp_105 = &_P_Thread_two
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
!   if result==true then goto _Label_102 else goto _Label_99
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_99
	jmp	_Label_102
_Label_102:
	mov	56,r13		! source line 56
	mov	"\0\0SE",r10
!   _temp_106 = &_P_Thread_three
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
!   if result==true then goto _Label_101 else goto _Label_99
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_99
	jmp	_Label_101
_Label_101:
	mov	56,r13		! source line 56
	mov	"\0\0SE",r10
!   _temp_107 = &_P_Thread_four
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
!   if result==true then goto _Label_100 else goto _Label_99
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_99
	jmp	_Label_100
_Label_100:
	mov	56,r13		! source line 56
	mov	"\0\0SE",r10
!   _temp_108 = &_P_Thread_five
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
!   if result==true then goto _Label_98 else goto _Label_99
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_99
	jmp	_Label_98
_Label_98:
! THEN...
	mov	57,r13		! source line 57
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	57,r13		! source line 57
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_109
_Label_99:
! ELSE...
	mov	59,r13		! source line 59
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	59,r13		! source line 59
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
_Label_109:
! END WHILE...
	jmp	_Label_95
_Label_97:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_51_IdleFunction:
	.word	_sourceFileName
	.word	_Label_110
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_111
	.word	8
	.word	4
	.word	_Label_112
	.word	-12
	.word	4
	.word	_Label_113
	.word	-16
	.word	4
	.word	_Label_114
	.word	-20
	.word	4
	.word	_Label_115
	.word	-24
	.word	4
	.word	_Label_116
	.word	-28
	.word	4
	.word	_Label_117
	.word	-32
	.word	4
	.word	0
_Label_110:
	.ascii	"IdleFunction\0"
	.align
_Label_111:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_112:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_113:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_114:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_115:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_117:
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
_Label_707:
	push	r0
	sub	r1,1,r1
	bne	_Label_707
	mov	66,r13		! source line 66
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
!   prevThread = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-32]
! SEND STATEMENT...
	mov	78,r13		! source line 78
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
	mov	79,r13		! source line 79
	mov	"\0\0AS",r10
!   _P_Thread_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Thread_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	80,r13		! source line 80
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_118 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_118 = 3  (sizeInBytes=4)
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
	mov	86,r13		! source line 86
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0WH",r10
_Label_119:
	mov	90,r13		! source line 90
	mov	"\0\0SE",r10
!   _temp_123 = &_P_Thread_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_122  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_122 then goto _Label_121 else goto _Label_120
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_120
	jmp	_Label_121
_Label_120:
	mov	90,r13		! source line 90
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0AS",r10
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_124 = &_P_Thread_threadsToBeDestroyed
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
	mov	92,r13		! source line 92
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_125 = th + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_125 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-16],r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_119
_Label_121:
! RETURN STATEMENT...
	mov	90,r13		! source line 90
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
	.word	_Label_126
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_127
	.word	8
	.word	4
	.word	_Label_128
	.word	-16
	.word	4
	.word	_Label_129
	.word	-20
	.word	4
	.word	_Label_130
	.word	-24
	.word	4
	.word	_Label_131
	.word	-9
	.word	1
	.word	_Label_132
	.word	-28
	.word	4
	.word	_Label_133
	.word	-32
	.word	4
	.word	_Label_134
	.word	-36
	.word	4
	.word	0
_Label_126:
	.ascii	"Run\0"
	.align
_Label_127:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_125\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_124\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_131:
	.byte	'C'
	.ascii	"_temp_122\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_133:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_134:
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
_Label_708:
	push	r0
	sub	r1,1,r1
	bne	_Label_708
	mov	98,r13		! source line 98
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! CALL STATEMENT...
!   _temp_135 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_135  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_136 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_136  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_137 = _function_50_ThreadPrint
	set	_function_50_ThreadPrint,r1
	store	r1,[r14+-64]
!   _temp_138 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_137  sizeInBytes=4
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
!   _temp_139 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_139  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	109,r13		! source line 109
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0SE",r10
!   _temp_140 = _function_50_ThreadPrint
	set	_function_50_ThreadPrint,r1
	store	r1,[r14+-52]
!   _temp_141 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_140  sizeInBytes=4
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
!   _temp_142 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_142  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0SE",r10
!   _temp_143 = _function_50_ThreadPrint
	set	_function_50_ThreadPrint,r1
	store	r1,[r14+-40]
!   _temp_144 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_143  sizeInBytes=4
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
!   _temp_145 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_145  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	113,r13		! source line 113
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0SE",r10
!   _temp_146 = _function_50_ThreadPrint
	set	_function_50_ThreadPrint,r1
	store	r1,[r14+-28]
!   _temp_147 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_146  sizeInBytes=4
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
!   _temp_148 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_148  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	115,r13		! source line 115
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0SE",r10
!   _temp_149 = _function_50_ThreadPrint
	set	_function_50_ThreadPrint,r1
	store	r1,[r14+-16]
!   _temp_150 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_149  sizeInBytes=4
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
	mov	117,r13		! source line 117
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	117,r13		! source line 117
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! RETURN STATEMENT...
	mov	117,r13		! source line 117
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
	.word	_Label_151
	.word	0		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_152
	.word	-12
	.word	4
	.word	_Label_153
	.word	-16
	.word	4
	.word	_Label_154
	.word	-20
	.word	4
	.word	_Label_155
	.word	-24
	.word	4
	.word	_Label_156
	.word	-28
	.word	4
	.word	_Label_157
	.word	-32
	.word	4
	.word	_Label_158
	.word	-36
	.word	4
	.word	_Label_159
	.word	-40
	.word	4
	.word	_Label_160
	.word	-44
	.word	4
	.word	_Label_161
	.word	-48
	.word	4
	.word	_Label_162
	.word	-52
	.word	4
	.word	_Label_163
	.word	-56
	.word	4
	.word	_Label_164
	.word	-60
	.word	4
	.word	_Label_165
	.word	-64
	.word	4
	.word	_Label_166
	.word	-68
	.word	4
	.word	_Label_167
	.word	-72
	.word	4
	.word	_Label_168
	.word	-76
	.word	4
	.word	0
_Label_151:
	.ascii	"PrintReadyList\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_168:
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
_Label_709:
	push	r0
	sub	r1,1,r1
	bne	_Label_709
	mov	123,r13		! source line 123
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	135,r13		! source line 135
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0AS",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_169 = _P_Thread_currentThread + 80
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_169  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_171 = _P_Thread_currentThread + 84
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_170 = *_temp_171  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_170  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	137,r13		! source line 137
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	138,r13		! source line 138
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! CALL STATEMENT...
!   _temp_172 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_172  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	139,r13		! source line 139
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! RETURN STATEMENT...
	mov	139,r13		! source line 139
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
	.word	_Label_173
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_174
	.word	-12
	.word	4
	.word	_Label_175
	.word	-16
	.word	4
	.word	_Label_176
	.word	-20
	.word	4
	.word	_Label_177
	.word	-24
	.word	4
	.word	_Label_178
	.word	-28
	.word	4
	.word	_Label_179
	.word	-32
	.word	4
	.word	0
_Label_173:
	.ascii	"ThreadStartMain\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_178:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_179:
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
_Label_710:
	push	r0
	sub	r1,1,r1
	bne	_Label_710
	mov	144,r13		! source line 144
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	155,r13		! source line 155
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	155,r13		! source line 155
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! SEND STATEMENT...
	mov	159,r13		! source line 159
	mov	"\0\0SE",r10
!   _temp_180 = &_P_Thread_threadsToBeDestroyed
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
	mov	160,r13		! source line 160
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
	mov	162,r13		! source line 162
	mov	"\0\0DE",r10
	debug
! RETURN STATEMENT...
	mov	162,r13		! source line 162
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
	.word	_Label_181
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_182
	.word	-12
	.word	4
	.word	_Label_183
	.word	-16
	.word	4
	.word	0
_Label_181:
	.ascii	"ThreadFinish\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_183:
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
_Label_711:
	push	r0
	sub	r1,1,r1
	bne	_Label_711
	mov	167,r13		! source line 167
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! CALL STATEMENT...
!   _temp_184 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_184  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0IF",r10
!   if _P_Thread_currentThread == 0 then goto _Label_186		(int)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_186
!	_Label_185	jmp	_Label_185
_Label_185:
! THEN...
	mov	177,r13		! source line 177
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_187 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_187  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_189 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Data Move: _temp_188 = *_temp_189  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_188  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_186:
! CALL STATEMENT...
!   _temp_190 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_190  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	180,r13		! source line 180
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	181,r13		! source line 181
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_191 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_191  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	182,r13		! source line 182
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	183,r13		! source line 183
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	183,r13		! source line 183
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
	.word	_Label_192
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_193
	.word	8
	.word	4
	.word	_Label_194
	.word	-12
	.word	4
	.word	_Label_195
	.word	-16
	.word	4
	.word	_Label_196
	.word	-20
	.word	4
	.word	_Label_197
	.word	-24
	.word	4
	.word	_Label_198
	.word	-28
	.word	4
	.word	_Label_199
	.word	-32
	.word	4
	.word	_Label_200
	.word	-36
	.word	4
	.word	0
_Label_192:
	.ascii	"FatalError\0"
	.align
_Label_193:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_200:
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
_Label_712:
	push	r0
	sub	r1,1,r1
	bne	_Label_712
	mov	188,r13		! source line 188
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	201,r13		! source line 201
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0AS",r10
!   oldStat = _P_Thread_currentInterruptStatus		(4 bytes)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	203,r13		! source line 203
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_202		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_202
!	_Label_201	jmp	_Label_201
_Label_201:
! THEN...
	mov	204,r13		! source line 204
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	204,r13		! source line 204
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	205,r13		! source line 205
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_203
_Label_202:
! ELSE...
	mov	207,r13		! source line 207
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	207,r13		! source line 207
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	208,r13		! source line 208
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_203:
! RETURN STATEMENT...
	mov	210,r13		! source line 210
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
	.word	_Label_204
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_205
	.word	8
	.word	4
	.word	_Label_206
	.word	-12
	.word	4
	.word	0
_Label_204:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_205:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_206:
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
	mov	27,r1
_Label_713:
	push	r0
	sub	r1,1,r1
	bne	_Label_713
	mov	215,r13		! source line 215
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0IF",r10
	mov	229,r13		! source line 229
	mov	"\0\0SE",r10
!   _temp_210 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-100]
!   Send message IsEmpty
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_209  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_209 then goto _Label_208 else goto _Label_207
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_207
	jmp	_Label_208
_Label_207:
! THEN...
	mov	230,r13		! source line 230
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0AS",r10
!   highestPrio = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-104]
	jmp	_Label_211
_Label_208:
! ELSE...
	mov	231,r13		! source line 231
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
	mov	231,r13		! source line 231
	mov	"\0\0SE",r10
!   _temp_215 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-96]
!   Send message IsEmpty
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_214  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_214 then goto _Label_213 else goto _Label_212
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_212
	jmp	_Label_213
_Label_212:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0AS",r10
!   highestPrio = 2		(4 bytes)
	mov	2,r1
	store	r1,[r14+-104]
	jmp	_Label_216
_Label_213:
! ELSE...
	mov	233,r13		! source line 233
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0IF",r10
	mov	233,r13		! source line 233
	mov	"\0\0SE",r10
!   _temp_220 = &_P_Thread_three
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
!   Retrieve Result: targetName=_temp_219  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_219 then goto _Label_218 else goto _Label_217
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_217
	jmp	_Label_218
_Label_217:
! THEN...
	mov	234,r13		! source line 234
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   highestPrio = 3		(4 bytes)
	mov	3,r1
	store	r1,[r14+-104]
	jmp	_Label_221
_Label_218:
! ELSE...
	mov	235,r13		! source line 235
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0IF",r10
	mov	235,r13		! source line 235
	mov	"\0\0SE",r10
!   _temp_225 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-88]
!   Send message IsEmpty
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_224  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_224 then goto _Label_223 else goto _Label_222
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_222
	jmp	_Label_223
_Label_222:
! THEN...
	mov	236,r13		! source line 236
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   highestPrio = 4		(4 bytes)
	mov	4,r1
	store	r1,[r14+-104]
	jmp	_Label_226
_Label_223:
! ELSE...
	mov	237,r13		! source line 237
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0IF",r10
	mov	237,r13		! source line 237
	mov	"\0\0SE",r10
!   _temp_230 = &_P_Thread_five
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
!   Retrieve Result: targetName=_temp_229  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_229 then goto _Label_228 else goto _Label_227
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_227
	jmp	_Label_228
_Label_227:
! THEN...
	mov	238,r13		! source line 238
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0AS",r10
!   highestPrio = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-104]
! END IF...
_Label_228:
! END IF...
_Label_226:
! END IF...
_Label_221:
! END IF...
_Label_216:
! END IF...
_Label_211:
! IF STATEMENT...
	mov	240,r13		! source line 240
	mov	"\0\0IF",r10
	mov	240,r13		! source line 240
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
!   Retrieve Result: targetName=_temp_233  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
!   if highestPrio > _temp_233 then goto _Label_232		(int)
	load	[r14+-104],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_232
!	_Label_231	jmp	_Label_231
_Label_231:
! THEN...
	mov	241,r13		! source line 241
	mov	"\0\0TN",r10
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
!   Retrieve Result: targetName=_temp_236  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
!   if _temp_236 != 1 then goto _Label_235		(int)
	load	[r14+-76],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_235
!	_Label_234	jmp	_Label_234
_Label_234:
! THEN...
	mov	242,r13		! source line 242
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0AS",r10
	mov	242,r13		! source line 242
	mov	"\0\0SE",r10
!   _temp_237 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-72]
!   Send message Remove
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=tempThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0SE",r10
!   _temp_238 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=tempThread  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
	jmp	_Label_239
_Label_235:
! ELSE...
	mov	244,r13		! source line 244
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0IF",r10
	mov	244,r13		! source line 244
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
!   Retrieve Result: targetName=_temp_242  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_242 != 2 then goto _Label_241		(int)
	load	[r14+-64],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_241
!	_Label_240	jmp	_Label_240
_Label_240:
! THEN...
	mov	245,r13		! source line 245
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0AS",r10
	mov	245,r13		! source line 245
	mov	"\0\0SE",r10
!   _temp_243 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-60]
!   Send message Remove
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=tempThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0SE",r10
!   _temp_244 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=tempThread  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
	jmp	_Label_245
_Label_241:
! ELSE...
	mov	247,r13		! source line 247
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0IF",r10
	mov	247,r13		! source line 247
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
!   Retrieve Result: targetName=_temp_248  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
!   if _temp_248 != 3 then goto _Label_247		(int)
	load	[r14+-52],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_247
!	_Label_246	jmp	_Label_246
_Label_246:
! THEN...
	mov	248,r13		! source line 248
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
	mov	248,r13		! source line 248
	mov	"\0\0SE",r10
!   _temp_249 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=tempThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0SE",r10
!   _temp_250 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=tempThread  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
	jmp	_Label_251
_Label_247:
! ELSE...
	mov	250,r13		! source line 250
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0IF",r10
	mov	250,r13		! source line 250
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
!   Retrieve Result: targetName=_temp_254  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_254 != 4 then goto _Label_253		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_253
!	_Label_252	jmp	_Label_252
_Label_252:
! THEN...
	mov	251,r13		! source line 251
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
!   _temp_255 = &_P_Thread_four
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
!   Retrieve Result: targetName=tempThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_256 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=tempThread  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
	jmp	_Label_257
_Label_253:
! ELSE...
	mov	253,r13		! source line 253
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0IF",r10
	mov	253,r13		! source line 253
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
!   Retrieve Result: targetName=_temp_260  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_260 != 5 then goto _Label_259		(int)
	load	[r14+-28],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_259
!	_Label_258	jmp	_Label_258
_Label_258:
! THEN...
	mov	254,r13		! source line 254
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_261 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=tempThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
!   _temp_262 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=tempThread  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! END IF...
_Label_259:
! END IF...
_Label_257:
! END IF...
_Label_251:
! END IF...
_Label_245:
! END IF...
_Label_239:
! IF STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0IF",r10
!   if tempThread == _P_Thread_currentThread then goto _Label_264		(int)
	load	[r14+-108],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_264
!	_Label_263	jmp	_Label_263
_Label_263:
! THEN...
	mov	258,r13		! source line 258
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	258,r13		! source line 258
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
_Label_264:
! END IF...
_Label_232:
! ASSIGNMENT STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0RE",r10
	add	r15,112,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_265
	.word	0		! total size of parameters
	.word	108		! frame size = 108
	.word	_Label_266
	.word	-20
	.word	4
	.word	_Label_267
	.word	-24
	.word	4
	.word	_Label_268
	.word	-28
	.word	4
	.word	_Label_269
	.word	-32
	.word	4
	.word	_Label_270
	.word	-36
	.word	4
	.word	_Label_271
	.word	-40
	.word	4
	.word	_Label_272
	.word	-44
	.word	4
	.word	_Label_273
	.word	-48
	.word	4
	.word	_Label_274
	.word	-52
	.word	4
	.word	_Label_275
	.word	-56
	.word	4
	.word	_Label_276
	.word	-60
	.word	4
	.word	_Label_277
	.word	-64
	.word	4
	.word	_Label_278
	.word	-68
	.word	4
	.word	_Label_279
	.word	-72
	.word	4
	.word	_Label_280
	.word	-76
	.word	4
	.word	_Label_281
	.word	-80
	.word	4
	.word	_Label_282
	.word	-84
	.word	4
	.word	_Label_283
	.word	-9
	.word	1
	.word	_Label_284
	.word	-88
	.word	4
	.word	_Label_285
	.word	-10
	.word	1
	.word	_Label_286
	.word	-92
	.word	4
	.word	_Label_287
	.word	-11
	.word	1
	.word	_Label_288
	.word	-96
	.word	4
	.word	_Label_289
	.word	-12
	.word	1
	.word	_Label_290
	.word	-100
	.word	4
	.word	_Label_291
	.word	-13
	.word	1
	.word	_Label_292
	.word	-104
	.word	4
	.word	_Label_293
	.word	-108
	.word	4
	.word	0
_Label_265:
	.ascii	"TimerInterruptHandler\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_283:
	.byte	'C'
	.ascii	"_temp_229\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_285:
	.byte	'C'
	.ascii	"_temp_224\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_287:
	.byte	'C'
	.ascii	"_temp_219\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_289:
	.byte	'C'
	.ascii	"_temp_214\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_291:
	.byte	'C'
	.ascii	"_temp_209\0"
	.align
_Label_292:
	.byte	'I'
	.ascii	"highestPrio\0"
	.align
_Label_293:
	.byte	'P'
	.ascii	"tempThread\0"
	.align
! 
! ===============  FUNCTION ThreadPrint  ===============
! 
_function_50_ThreadPrint:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_50_ThreadPrint,r1
	push	r1
	mov	17,r1
_Label_714:
	push	r0
	sub	r1,1,r1
	bne	_Label_714
	mov	266,r13		! source line 266
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   _temp_294 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_294  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	274,r13		! source line 274
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_296 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-60]
!   Data Move: _temp_295 = *_temp_296  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_297 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_297  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	276,r13		! source line 276
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	277,r13		! source line 277
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_306 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-48]
!   Data Move: _temp_305 = *_temp_306  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Branch to the right case label
	load	[r14+-52],r1
	cmp	r1,1
	be	_Label_300
	cmp	r1,2
	be	_Label_301
	cmp	r1,3
	be	_Label_302
	cmp	r1,4
	be	_Label_303
	cmp	r1,5
	be	_Label_304
	jmp	_Label_298
! CASE 1...
_Label_300:
! CALL STATEMENT...
!   _temp_307 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_307  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	279,r13		! source line 279
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0BR",r10
	jmp	_Label_299
! CASE 2...
_Label_301:
! CALL STATEMENT...
!   _temp_308 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_308  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	282,r13		! source line 282
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0BR",r10
	jmp	_Label_299
! CASE 3...
_Label_302:
! CALL STATEMENT...
!   _temp_309 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	285,r13		! source line 285
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0BR",r10
	jmp	_Label_299
! CASE 4...
_Label_303:
! CALL STATEMENT...
!   _temp_310 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_310  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	288,r13		! source line 288
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0BR",r10
	jmp	_Label_299
! CASE 5...
_Label_304:
! CALL STATEMENT...
!   _temp_311 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	291,r13		! source line 291
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0BR",r10
	jmp	_Label_299
! DEFAULT CASE...
_Label_298:
! CALL STATEMENT...
!   _temp_312 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	294,r13		! source line 294
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_299:
! CALL STATEMENT...
!   _temp_313 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	296,r13		! source line 296
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_314 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	297,r13		! source line 297
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_315 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	298,r13		! source line 298
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	299,r13		! source line 299
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	301,r13		! source line 301
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! RETURN STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_50_ThreadPrint:
	.word	_sourceFileName
	.word	_Label_316
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_317
	.word	8
	.word	4
	.word	_Label_318
	.word	-12
	.word	4
	.word	_Label_319
	.word	-16
	.word	4
	.word	_Label_320
	.word	-20
	.word	4
	.word	_Label_321
	.word	-24
	.word	4
	.word	_Label_322
	.word	-28
	.word	4
	.word	_Label_323
	.word	-32
	.word	4
	.word	_Label_324
	.word	-36
	.word	4
	.word	_Label_325
	.word	-40
	.word	4
	.word	_Label_326
	.word	-44
	.word	4
	.word	_Label_327
	.word	-48
	.word	4
	.word	_Label_328
	.word	-52
	.word	4
	.word	_Label_329
	.word	-56
	.word	4
	.word	_Label_330
	.word	-60
	.word	4
	.word	_Label_331
	.word	-64
	.word	4
	.word	_Label_332
	.word	-68
	.word	4
	.word	_Label_333
	.word	-72
	.word	4
	.word	0
_Label_316:
	.ascii	"ThreadPrint\0"
	.align
_Label_317:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_333:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Thread_Thread:
	.word	_Label_334
	jmp	_Method_P_Thread_Thread_1	! 4:	Init
	jmp	_Method_P_Thread_Thread_2	! 8:	Fork
	jmp	_Method_P_Thread_Thread_3	! 12:	Yield
	jmp	_Method_P_Thread_Thread_4	! 16:	Sleep
	jmp	_Method_P_Thread_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Thread_Thread_6	! 24:	Print
	jmp	_Method_P_Thread_Thread_7	! 28:	setPriority
	jmp	_Method_P_Thread_Thread_8	! 32:	getPriority
	.word	0
! 
! Class descriptor:
! 
_Label_334:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_335
	.word	_sourceFileName
	.word	41		! line number
	.word	4096		! size of instances, in bytes
	.word	_P_Thread_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_335:
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
_Label_715:
	push	r0
	sub	r1,1,r1
	bne	_Label_715
	mov	310,r13		! source line 310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0AS",r10
!   _temp_336 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_336) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_336 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-108],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	319,r13		! source line 319
	mov	"\0\0AS",r10
!   _temp_337 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-104]
!   Move address of _temp_337 [0 ] into _temp_338
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
!   Data Move: *_temp_338 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	320,r13		! source line 320
	mov	"\0\0AS",r10
!   _temp_339 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-96]
!   Move address of _temp_339 [999 ] into _temp_340
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
!   Data Move: *_temp_340 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	321,r13		! source line 321
	mov	"\0\0AS",r10
!   _temp_341 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-88]
!   Move address of _temp_341 [999 ] into _temp_342
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
!   stackTop = _temp_342		(4 bytes)
	load	[r14+-84],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0AS",r10
!   _temp_343 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-80]
!   NEW ARRAY Constructor...
!   _temp_345 = &_temp_344
	add	r14,-76,r1
	store	r1,[r14+-20]
!   _temp_345 = _temp_345 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	13,r1
	store	r1,[r14+-16]
_Label_347:
!   Data Move: *_temp_345 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_345 = _temp_345 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_346 = _temp_346 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_346) then goto _Label_347
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_347
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-76]
!   _temp_348 = &_temp_344
	add	r14,-76,r1
	store	r1,[r14+-12]
!   make sure array has size 13
	load	[r14+-80],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_716
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_716:
!   make sure array has size 13
	load	[r14+-12],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_343 = *_temp_348  (sizeInBytes=56)
	load	[r14+-12],r5
	load	[r14+-80],r4
	mov	14,r3
_Label_717:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_717
! ASSIGNMENT STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0AS",r10
!   prio = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4092]
! RETURN STATEMENT...
	mov	323,r13		! source line 323
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
	.word	_Label_349
	.word	8		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_350
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_351
	.word	12
	.word	4
	.word	_Label_352
	.word	-12
	.word	4
	.word	_Label_353
	.word	-16
	.word	4
	.word	_Label_354
	.word	-20
	.word	4
	.word	_Label_355
	.word	-76
	.word	56
	.word	_Label_356
	.word	-80
	.word	4
	.word	_Label_357
	.word	-84
	.word	4
	.word	_Label_358
	.word	-88
	.word	4
	.word	_Label_359
	.word	-92
	.word	4
	.word	_Label_360
	.word	-96
	.word	4
	.word	_Label_361
	.word	-100
	.word	4
	.word	_Label_362
	.word	-104
	.word	4
	.word	_Label_363
	.word	-108
	.word	4
	.word	0
_Label_349:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_350:
	.ascii	"Pself\0"
	.align
_Label_351:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_336\0"
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
_Label_718:
	push	r0
	sub	r1,1,r1
	bne	_Label_718
	mov	328,r13		! source line 328
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	339,r13		! source line 339
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	339,r13		! source line 339
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	343,r13		! source line 343
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
	mov	344,r13		! source line 344
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_364 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-52]
!   Data Move: *stackTop = _temp_364  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! IF STATEMENT...
	mov	347,r13		! source line 347
	mov	"\0\0IF",r10
!   if prio != 1 then goto _Label_366		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_366
!	_Label_365	jmp	_Label_365
_Label_365:
! THEN...
	mov	348,r13		! source line 348
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   _temp_368 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_367  sizeInBytes=4
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
	jmp	_Label_369
_Label_366:
! ELSE...
	mov	349,r13		! source line 349
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0IF",r10
!   if prio != 2 then goto _Label_371		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_371
!	_Label_370	jmp	_Label_370
_Label_370:
! THEN...
	mov	350,r13		! source line 350
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   _temp_373 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_372  sizeInBytes=4
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
	jmp	_Label_374
_Label_371:
! ELSE...
	mov	351,r13		! source line 351
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0IF",r10
!   if prio != 3 then goto _Label_376		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_376
!	_Label_375	jmp	_Label_375
_Label_375:
! THEN...
	mov	352,r13		! source line 352
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   _temp_378 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_377  sizeInBytes=4
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
	jmp	_Label_379
_Label_376:
! ELSE...
	mov	353,r13		! source line 353
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0IF",r10
!   if prio != 4 then goto _Label_381		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_381
!	_Label_380	jmp	_Label_380
_Label_380:
! THEN...
	mov	354,r13		! source line 354
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   _temp_383 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_382  sizeInBytes=4
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
	jmp	_Label_384
_Label_381:
! ELSE...
	mov	355,r13		! source line 355
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0IF",r10
!   if prio != 5 then goto _Label_386		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_386
!	_Label_385	jmp	_Label_385
_Label_385:
! THEN...
	mov	356,r13		! source line 356
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	356,r13		! source line 356
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_388 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_387  sizeInBytes=4
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
_Label_386:
! END IF...
_Label_384:
! END IF...
_Label_379:
! END IF...
_Label_374:
! END IF...
_Label_369:
! ASSIGNMENT STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	358,r13		! source line 358
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	358,r13		! source line 358
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
	.word	_Label_389
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_390
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_391
	.word	12
	.word	4
	.word	_Label_392
	.word	16
	.word	4
	.word	_Label_393
	.word	-12
	.word	4
	.word	_Label_394
	.word	-16
	.word	4
	.word	_Label_395
	.word	-20
	.word	4
	.word	_Label_396
	.word	-24
	.word	4
	.word	_Label_397
	.word	-28
	.word	4
	.word	_Label_398
	.word	-32
	.word	4
	.word	_Label_399
	.word	-36
	.word	4
	.word	_Label_400
	.word	-40
	.word	4
	.word	_Label_401
	.word	-44
	.word	4
	.word	_Label_402
	.word	-48
	.word	4
	.word	_Label_403
	.word	-52
	.word	4
	.word	_Label_404
	.word	-56
	.word	4
	.word	_Label_405
	.word	-60
	.word	4
	.word	0
_Label_389:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_390:
	.ascii	"Pself\0"
	.align
_Label_391:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_392:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_404:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_405:
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
	mov	30,r1
_Label_719:
	push	r0
	sub	r1,1,r1
	bne	_Label_719
	mov	363,r13		! source line 363
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if _temp_408 == _P_Thread_currentThread then goto _Label_407		(int)
	load	[r14+-108],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_407
!	_Label_406	jmp	_Label_406
_Label_406:
! THEN...
	mov	380,r13		! source line 380
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_409 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_409  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	380,r13		! source line 380
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_407:
! ASSIGNMENT STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	382,r13		! source line 382
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0IF",r10
	mov	387,r13		! source line 387
	mov	"\0\0SE",r10
!   _temp_413 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-100]
!   Send message IsEmpty
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_412  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_412 then goto _Label_411 else goto _Label_410
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_410
	jmp	_Label_411
_Label_410:
! THEN...
	mov	388,r13		! source line 388
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0AS",r10
	mov	388,r13		! source line 388
	mov	"\0\0SE",r10
!   _temp_414 = &_P_Thread_one
	set	_P_Thread_one,r1
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
	store	r1,[r14+-112]
	jmp	_Label_415
_Label_411:
! ELSE...
	mov	389,r13		! source line 389
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
	mov	389,r13		! source line 389
	mov	"\0\0SE",r10
!   _temp_419 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-92]
!   Send message IsEmpty
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_418  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_418 then goto _Label_417 else goto _Label_416
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_416
	jmp	_Label_417
_Label_416:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0AS",r10
	mov	390,r13		! source line 390
	mov	"\0\0SE",r10
!   _temp_420 = &_P_Thread_two
	set	_P_Thread_two,r1
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
	store	r1,[r14+-112]
	jmp	_Label_421
_Label_417:
! ELSE...
	mov	391,r13		! source line 391
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0IF",r10
	mov	391,r13		! source line 391
	mov	"\0\0SE",r10
!   _temp_425 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-84]
!   Send message IsEmpty
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_424  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_424 then goto _Label_423 else goto _Label_422
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_422
	jmp	_Label_423
_Label_422:
! THEN...
	mov	392,r13		! source line 392
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
	mov	392,r13		! source line 392
	mov	"\0\0SE",r10
!   _temp_426 = &_P_Thread_three
	set	_P_Thread_three,r1
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
	store	r1,[r14+-112]
	jmp	_Label_427
_Label_423:
! ELSE...
	mov	393,r13		! source line 393
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0IF",r10
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
!   _temp_431 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-76]
!   Send message IsEmpty
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_430  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_430 then goto _Label_429 else goto _Label_428
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_428
	jmp	_Label_429
_Label_428:
! THEN...
	mov	394,r13		! source line 394
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0AS",r10
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   _temp_432 = &_P_Thread_four
	set	_P_Thread_four,r1
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
	store	r1,[r14+-112]
	jmp	_Label_433
_Label_429:
! ELSE...
	mov	395,r13		! source line 395
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0IF",r10
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   _temp_437 = &_P_Thread_five
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
!   Retrieve Result: targetName=_temp_436  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_436 then goto _Label_435 else goto _Label_434
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_434
	jmp	_Label_435
_Label_434:
! THEN...
	mov	396,r13		! source line 396
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0AS",r10
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   _temp_438 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-64]
!   Send message Remove
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-112]
! END IF...
_Label_435:
! END IF...
_Label_433:
! END IF...
_Label_427:
! END IF...
_Label_421:
! END IF...
_Label_415:
! IF STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_440		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_440
!	_Label_439	jmp	_Label_439
_Label_439:
! THEN...
	mov	402,r13		! source line 402
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_442		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_442
!	_Label_441	jmp	_Label_441
_Label_441:
! THEN...
	mov	403,r13		! source line 403
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_443 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_443  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	403,r13		! source line 403
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_442:
! ASSIGNMENT STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! IF STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0IF",r10
!   if prio != 1 then goto _Label_445		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_445
!	_Label_444	jmp	_Label_444
_Label_444:
! THEN...
	mov	408,r13		! source line 408
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-56]
!   _temp_447 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_446  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_448
_Label_445:
! ELSE...
	mov	409,r13		! source line 409
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0IF",r10
!   if prio != 2 then goto _Label_450		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_450
!	_Label_449	jmp	_Label_449
_Label_449:
! THEN...
	mov	410,r13		! source line 410
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   _temp_452 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_451  sizeInBytes=4
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
	jmp	_Label_453
_Label_450:
! ELSE...
	mov	411,r13		! source line 411
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0IF",r10
!   if prio != 3 then goto _Label_455		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_455
!	_Label_454	jmp	_Label_454
_Label_454:
! THEN...
	mov	412,r13		! source line 412
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   _temp_457 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_456  sizeInBytes=4
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
	jmp	_Label_458
_Label_455:
! ELSE...
	mov	413,r13		! source line 413
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0IF",r10
!   if prio != 4 then goto _Label_460		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_460
!	_Label_459	jmp	_Label_459
_Label_459:
! THEN...
	mov	414,r13		! source line 414
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   _temp_462 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_461  sizeInBytes=4
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
	jmp	_Label_463
_Label_460:
! ELSE...
	mov	415,r13		! source line 415
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0IF",r10
!   if prio != 5 then goto _Label_465		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_465
!	_Label_464	jmp	_Label_464
_Label_464:
! THEN...
	mov	416,r13		! source line 416
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   _temp_467 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_466  sizeInBytes=4
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
! END IF...
_Label_465:
! END IF...
_Label_463:
! END IF...
_Label_458:
! END IF...
_Label_453:
! END IF...
_Label_448:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	418,r13		! source line 418
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! END IF...
_Label_440:
! ASSIGNMENT STATEMENT...
	mov	420,r13		! source line 420
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	420,r13		! source line 420
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! RETURN STATEMENT...
	mov	420,r13		! source line 420
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_3:
	.word	_sourceFileName
	.word	_Label_468
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_469
	.word	4		! size of self
	.word	8		! offset of self
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
	.word	-9
	.word	1
	.word	_Label_484
	.word	-72
	.word	4
	.word	_Label_485
	.word	-76
	.word	4
	.word	_Label_486
	.word	-10
	.word	1
	.word	_Label_487
	.word	-80
	.word	4
	.word	_Label_488
	.word	-84
	.word	4
	.word	_Label_489
	.word	-11
	.word	1
	.word	_Label_490
	.word	-88
	.word	4
	.word	_Label_491
	.word	-92
	.word	4
	.word	_Label_492
	.word	-12
	.word	1
	.word	_Label_493
	.word	-96
	.word	4
	.word	_Label_494
	.word	-100
	.word	4
	.word	_Label_495
	.word	-13
	.word	1
	.word	_Label_496
	.word	-104
	.word	4
	.word	_Label_497
	.word	-108
	.word	4
	.word	_Label_498
	.word	-112
	.word	4
	.word	_Label_499
	.word	-116
	.word	4
	.word	_Label_500
	.word	-120
	.word	4
	.word	0
_Label_468:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_469:
	.ascii	"Pself\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_483:
	.byte	'C'
	.ascii	"_temp_436\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_486:
	.byte	'C'
	.ascii	"_temp_430\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_489:
	.byte	'C'
	.ascii	"_temp_424\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_492:
	.byte	'C'
	.ascii	"_temp_418\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_495:
	.byte	'C'
	.ascii	"_temp_412\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_498:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_499:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_500:
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
	mov	18,r1
_Label_720:
	push	r0
	sub	r1,1,r1
	bne	_Label_720
	mov	425,r13		! source line 425
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0IF",r10
!   if _P_Thread_currentInterruptStatus == 2 then goto _Label_502		(int)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_502
!	_Label_501	jmp	_Label_501
_Label_501:
! THEN...
	mov	438,r13		! source line 438
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_503 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_502:
! IF STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if _temp_506 == _P_Thread_currentThread then goto _Label_505		(int)
	load	[r14+-68],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_505
!	_Label_504	jmp	_Label_504
_Label_504:
! THEN...
	mov	442,r13		! source line 442
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_507 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_507  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	442,r13		! source line 442
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_505:
! ASSIGNMENT STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! IF STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0IF",r10
	mov	449,r13		! source line 449
	mov	"\0\0SE",r10
!   _temp_511 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-60]
!   Send message IsEmpty
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_510  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_510 then goto _Label_509 else goto _Label_508
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_508
	jmp	_Label_509
_Label_508:
! THEN...
	mov	450,r13		! source line 450
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0AS",r10
	mov	450,r13		! source line 450
	mov	"\0\0SE",r10
!   _temp_512 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-56]
!   Send message Remove
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
	jmp	_Label_513
_Label_509:
! ELSE...
	mov	451,r13		! source line 451
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0IF",r10
	mov	451,r13		! source line 451
	mov	"\0\0SE",r10
!   _temp_517 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_516  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_516 then goto _Label_515 else goto _Label_514
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_514
	jmp	_Label_515
_Label_514:
! THEN...
	mov	452,r13		! source line 452
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0AS",r10
	mov	452,r13		! source line 452
	mov	"\0\0SE",r10
!   _temp_518 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
	jmp	_Label_519
_Label_515:
! ELSE...
	mov	453,r13		! source line 453
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0IF",r10
	mov	453,r13		! source line 453
	mov	"\0\0SE",r10
!   _temp_523 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-44]
!   Send message IsEmpty
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_522  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_522 then goto _Label_521 else goto _Label_520
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_520
	jmp	_Label_521
_Label_520:
! THEN...
	mov	454,r13		! source line 454
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
	mov	454,r13		! source line 454
	mov	"\0\0SE",r10
!   _temp_524 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-40]
!   Send message Remove
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
	jmp	_Label_525
_Label_521:
! ELSE...
	mov	455,r13		! source line 455
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0IF",r10
	mov	455,r13		! source line 455
	mov	"\0\0SE",r10
!   _temp_529 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_528  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_528 then goto _Label_527 else goto _Label_526
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_526
	jmp	_Label_527
_Label_526:
! THEN...
	mov	456,r13		! source line 456
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
	mov	456,r13		! source line 456
	mov	"\0\0SE",r10
!   _temp_530 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-32]
!   Send message Remove
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
	jmp	_Label_531
_Label_527:
! ELSE...
	mov	457,r13		! source line 457
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0IF",r10
	mov	457,r13		! source line 457
	mov	"\0\0SE",r10
!   _temp_535 = &_P_Thread_five
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
!   Retrieve Result: targetName=_temp_534  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_534 then goto _Label_533 else goto _Label_532
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_532
	jmp	_Label_533
_Label_532:
! THEN...
	mov	458,r13		! source line 458
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
	mov	458,r13		! source line 458
	mov	"\0\0SE",r10
!   _temp_536 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! END IF...
_Label_533:
! END IF...
_Label_531:
! END IF...
_Label_525:
! END IF...
_Label_519:
! END IF...
_Label_513:
! IF STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_537
	load	[r14+-76],r1
	cmp	r1,r0
	be	_Label_537
	jmp	_Label_538
_Label_537:
! THEN...
	mov	461,r13		! source line 461
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_539 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_539  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	461,r13		! source line 461
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_538:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	463,r13		! source line 463
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! RETURN STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_4:
	.word	_sourceFileName
	.word	_Label_540
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_541
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_542
	.word	-20
	.word	4
	.word	_Label_543
	.word	-24
	.word	4
	.word	_Label_544
	.word	-28
	.word	4
	.word	_Label_545
	.word	-9
	.word	1
	.word	_Label_546
	.word	-32
	.word	4
	.word	_Label_547
	.word	-36
	.word	4
	.word	_Label_548
	.word	-10
	.word	1
	.word	_Label_549
	.word	-40
	.word	4
	.word	_Label_550
	.word	-44
	.word	4
	.word	_Label_551
	.word	-11
	.word	1
	.word	_Label_552
	.word	-48
	.word	4
	.word	_Label_553
	.word	-52
	.word	4
	.word	_Label_554
	.word	-12
	.word	1
	.word	_Label_555
	.word	-56
	.word	4
	.word	_Label_556
	.word	-60
	.word	4
	.word	_Label_557
	.word	-13
	.word	1
	.word	_Label_558
	.word	-64
	.word	4
	.word	_Label_559
	.word	-68
	.word	4
	.word	_Label_560
	.word	-72
	.word	4
	.word	_Label_561
	.word	-76
	.word	4
	.word	0
_Label_540:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_541:
	.ascii	"Pself\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_545:
	.byte	'C'
	.ascii	"_temp_534\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_548:
	.byte	'C'
	.ascii	"_temp_528\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_551:
	.byte	'C'
	.ascii	"_temp_522\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_554:
	.byte	'C'
	.ascii	"_temp_516\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_557:
	.byte	'C'
	.ascii	"_temp_510\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_507\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_561:
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
_Label_721:
	push	r0
	sub	r1,1,r1
	bne	_Label_721
	mov	468,r13		! source line 468
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0IF",r10
!   _temp_565 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_565 [0 ] into _temp_566
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
!   Data Move: _temp_564 = *_temp_566  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_564 == 606348324 then goto _Label_563		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_563
!	_Label_562	jmp	_Label_562
_Label_562:
! THEN...
	mov	475,r13		! source line 475
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_567 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_567  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	475,r13		! source line 475
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
	jmp	_Label_568
_Label_563:
! ELSE...
	mov	476,r13		! source line 476
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0IF",r10
!   _temp_572 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_572 [999 ] into _temp_573
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
!   Data Move: _temp_571 = *_temp_573  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_571 == 606348324 then goto _Label_570		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_570
!	_Label_569	jmp	_Label_569
_Label_569:
! THEN...
	mov	477,r13		! source line 477
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_574 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_570:
! END IF...
_Label_568:
! RETURN STATEMENT...
	mov	474,r13		! source line 474
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
	.word	_Label_575
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_576
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_577
	.word	-12
	.word	4
	.word	_Label_578
	.word	-16
	.word	4
	.word	_Label_579
	.word	-20
	.word	4
	.word	_Label_580
	.word	-24
	.word	4
	.word	_Label_581
	.word	-28
	.word	4
	.word	_Label_582
	.word	-32
	.word	4
	.word	_Label_583
	.word	-36
	.word	4
	.word	_Label_584
	.word	-40
	.word	4
	.word	0
_Label_575:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_576:
	.ascii	"Pself\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_564\0"
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
_Label_722:
	push	r0
	sub	r1,1,r1
	bne	_Label_722
	mov	483,r13		! source line 483
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	489,r13		! source line 489
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! CALL STATEMENT...
!   _temp_585 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_585  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	490,r13		! source line 490
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_586 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_586  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	491,r13		! source line 491
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_587  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	492,r13		! source line 492
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_588 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_588  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	493,r13		! source line 493
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_589 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_589  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	494,r13		! source line 494
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prio  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4092],r1
	store	r1,[r15+0]
!   Call the function
	mov	495,r13		! source line 495
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_590 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_590  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	496,r13		! source line 496
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_591 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_591  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	497,r13		! source line 497
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_596 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
!   Calculate and save the FOR-LOOP ending value
!   _temp_597 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-104]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_596  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+-140]
_Label_592:
!   Perform the FOR-LOOP termination test
!   if i > _temp_597 then goto _Label_595		
	load	[r14+-140],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_595
_Label_593:
	mov	498,r13		! source line 498
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_598 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_598  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	499,r13		! source line 499
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_599 = i + 2		(int)
	load	[r14+-140],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_599  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	500,r13		! source line 500
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_600 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_600  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	501,r13		! source line 501
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_602 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   Move address of _temp_602 [i ] into _temp_603
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
!   Data Move: _temp_601 = *_temp_603  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_601  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	502,r13		! source line 502
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_604 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_604  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	503,r13		! source line 503
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_606 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Move address of _temp_606 [i ] into _temp_607
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
!   Data Move: _temp_605 = *_temp_607  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_605  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	504,r13		! source line 504
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_608 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_608  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	505,r13		! source line 505
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_594:
!   i = i + 1
	load	[r14+-140],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
	jmp	_Label_592
! END FOR
_Label_595:
! CALL STATEMENT...
!   _temp_609 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-56]
!   _temp_610 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_609  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_610  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	507,r13		! source line 507
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_611 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-48]
!   _temp_613 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-40]
!   Move address of _temp_613 [0 ] into _temp_614
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
!   _temp_612 = _temp_614		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_611  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_612  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	508,r13		! source line 508
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	509,r13		! source line 509
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_617
	cmp	r1,2
	be	_Label_618
	cmp	r1,3
	be	_Label_619
	cmp	r1,4
	be	_Label_620
	cmp	r1,5
	be	_Label_621
	jmp	_Label_615
! CASE 1...
_Label_617:
! CALL STATEMENT...
!   _temp_622 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_622  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	511,r13		! source line 511
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0BR",r10
	jmp	_Label_616
! CASE 2...
_Label_618:
! CALL STATEMENT...
!   _temp_623 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_623  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	514,r13		! source line 514
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0BR",r10
	jmp	_Label_616
! CASE 3...
_Label_619:
! CALL STATEMENT...
!   _temp_624 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_624  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	517,r13		! source line 517
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0BR",r10
	jmp	_Label_616
! CASE 4...
_Label_620:
! CALL STATEMENT...
!   _temp_625 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_625  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	520,r13		! source line 520
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0BR",r10
	jmp	_Label_616
! CASE 5...
_Label_621:
! CALL STATEMENT...
!   _temp_626 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_626  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	523,r13		! source line 523
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0BR",r10
	jmp	_Label_616
! DEFAULT CASE...
_Label_615:
! CALL STATEMENT...
!   _temp_627 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_627  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	526,r13		! source line 526
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_616:
! ASSIGNMENT STATEMENT...
	mov	528,r13		! source line 528
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	528,r13		! source line 528
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! RETURN STATEMENT...
	mov	528,r13		! source line 528
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
	.word	_Label_628
	.word	4		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_630
	.word	-12
	.word	4
	.word	_Label_631
	.word	-16
	.word	4
	.word	_Label_632
	.word	-20
	.word	4
	.word	_Label_633
	.word	-24
	.word	4
	.word	_Label_634
	.word	-28
	.word	4
	.word	_Label_635
	.word	-32
	.word	4
	.word	_Label_636
	.word	-36
	.word	4
	.word	_Label_637
	.word	-40
	.word	4
	.word	_Label_638
	.word	-44
	.word	4
	.word	_Label_639
	.word	-48
	.word	4
	.word	_Label_640
	.word	-52
	.word	4
	.word	_Label_641
	.word	-56
	.word	4
	.word	_Label_642
	.word	-60
	.word	4
	.word	_Label_643
	.word	-64
	.word	4
	.word	_Label_644
	.word	-68
	.word	4
	.word	_Label_645
	.word	-72
	.word	4
	.word	_Label_646
	.word	-76
	.word	4
	.word	_Label_647
	.word	-80
	.word	4
	.word	_Label_648
	.word	-84
	.word	4
	.word	_Label_649
	.word	-88
	.word	4
	.word	_Label_650
	.word	-92
	.word	4
	.word	_Label_651
	.word	-96
	.word	4
	.word	_Label_652
	.word	-100
	.word	4
	.word	_Label_653
	.word	-104
	.word	4
	.word	_Label_654
	.word	-108
	.word	4
	.word	_Label_655
	.word	-112
	.word	4
	.word	_Label_656
	.word	-116
	.word	4
	.word	_Label_657
	.word	-120
	.word	4
	.word	_Label_658
	.word	-124
	.word	4
	.word	_Label_659
	.word	-128
	.word	4
	.word	_Label_660
	.word	-132
	.word	4
	.word	_Label_661
	.word	-136
	.word	4
	.word	_Label_662
	.word	-140
	.word	4
	.word	_Label_663
	.word	-144
	.word	4
	.word	0
_Label_628:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_629:
	.ascii	"Pself\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_662:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_663:
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
	mov	12,r1
_Label_723:
	push	r0
	sub	r1,1,r1
	bne	_Label_723
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0AS",r10
!   prio = givenPrio		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4092]
! IF STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0IF",r10
!   if prio != 1 then goto _Label_665		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_665
!	_Label_664	jmp	_Label_664
_Label_664:
! THEN...
	mov	534,r13		! source line 534
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   _temp_667 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_666  sizeInBytes=4
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
	jmp	_Label_668
_Label_665:
! ELSE...
	mov	535,r13		! source line 535
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	535,r13		! source line 535
	mov	"\0\0IF",r10
!   if prio != 2 then goto _Label_670		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_670
!	_Label_669	jmp	_Label_669
_Label_669:
! THEN...
	mov	536,r13		! source line 536
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	536,r13		! source line 536
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   _temp_672 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_671  sizeInBytes=4
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
	jmp	_Label_673
_Label_670:
! ELSE...
	mov	537,r13		! source line 537
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0IF",r10
!   if prio != 3 then goto _Label_675		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_675
!	_Label_674	jmp	_Label_674
_Label_674:
! THEN...
	mov	538,r13		! source line 538
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	538,r13		! source line 538
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   _temp_677 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_676  sizeInBytes=4
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
	jmp	_Label_678
_Label_675:
! ELSE...
	mov	539,r13		! source line 539
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	539,r13		! source line 539
	mov	"\0\0IF",r10
!   if prio != 4 then goto _Label_680		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_680
!	_Label_679	jmp	_Label_679
_Label_679:
! THEN...
	mov	540,r13		! source line 540
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	540,r13		! source line 540
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   _temp_682 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_681  sizeInBytes=4
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
	jmp	_Label_683
_Label_680:
! ELSE...
	mov	541,r13		! source line 541
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	541,r13		! source line 541
	mov	"\0\0IF",r10
!   if prio != 5 then goto _Label_685		(int)
	load	[r14+8],r1
	load	[r1+4092],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_685
!	_Label_684	jmp	_Label_684
_Label_684:
! THEN...
	mov	542,r13		! source line 542
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_687 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_686  sizeInBytes=4
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
_Label_685:
! END IF...
_Label_683:
! END IF...
_Label_678:
! END IF...
_Label_673:
! END IF...
_Label_668:
! RETURN STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_7:
	.word	_sourceFileName
	.word	_Label_688
	.word	8		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_689
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_690
	.word	12
	.word	4
	.word	_Label_691
	.word	-12
	.word	4
	.word	_Label_692
	.word	-16
	.word	4
	.word	_Label_693
	.word	-20
	.word	4
	.word	_Label_694
	.word	-24
	.word	4
	.word	_Label_695
	.word	-28
	.word	4
	.word	_Label_696
	.word	-32
	.word	4
	.word	_Label_697
	.word	-36
	.word	4
	.word	_Label_698
	.word	-40
	.word	4
	.word	_Label_699
	.word	-44
	.word	4
	.word	_Label_700
	.word	-48
	.word	4
	.word	0
_Label_688:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"setPriority\0"
	.align
_Label_689:
	.ascii	"Pself\0"
	.align
_Label_690:
	.byte	'I'
	.ascii	"givenPrio\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_666\0"
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
	mov	545,r13		! source line 545
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	546,r13		! source line 546
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
	.word	_Label_701
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_702
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_701:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"getPriority\0"
	.align
_Label_702:
	.ascii	"Pself\0"
	.align
