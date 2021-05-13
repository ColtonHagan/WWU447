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
_StringConst_55:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_54:
	.word	12			! length
	.ascii	" priority = "
	.align
_StringConst_53:
	.word	26			! length
	.ascii	"Thread add to Q at prio = "
	.align
_StringConst_52:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_51:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_50:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_49:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_48:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_47:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_46:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_45:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_44:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_43:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_42:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_41:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_40:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_39:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_38:
	.word	10			! length
	.ascii	"Priority: "
	.align
_StringConst_37:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_36:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_35:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_34:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_33:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_32:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
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
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_28:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_27:
	.word	39			! length
	.ascii	"ERRRRRRORRR: This should never happen!!"
	.align
_StringConst_26:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_25:
	.word	19			! length
	.ascii	"highest prio int is"
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
	set	0xe62f4316,r4		! myHashVal = -433110250
	cmp	r3,r4
	be	_Label_58
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
_Label_58:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_59
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_59
_Label_59:
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
	mov	22,r1
_Label_675:
	push	r0
	sub	r1,1,r1
	bne	_Label_675
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_60 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_60  sizeInBytes=4
	load	[r14+-84],r1
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
_Label_676:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_676
!   _P_Thread_mainThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_69 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-48]
!   _temp_70 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_69  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0SE",r10
!   _temp_71 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Send message setPriority
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _temp_72 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-36]
!   _temp_73 = _temp_72 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_73 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_idleThread = zeros  (sizeInBytes=4100)
	set	_P_Thread_idleThread,r4
	mov	1025,r3
_Label_677:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_677
!   _P_Thread_idleThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_75 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_76 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_75  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0SE",r10
!   _temp_77 = _function_57_IdleFunction
	set	_function_57_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_78 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_77  sizeInBytes=4
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
	add	r2,12,r2
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
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_79
	.word	0		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_80
	.word	-12
	.word	4
	.word	_Label_81
	.word	-16
	.word	4
	.word	_Label_82
	.word	-20
	.word	4
	.word	_Label_83
	.word	-24
	.word	4
	.word	_Label_84
	.word	-28
	.word	4
	.word	_Label_85
	.word	-32
	.word	4
	.word	_Label_86
	.word	-36
	.word	4
	.word	_Label_87
	.word	-40
	.word	4
	.word	_Label_88
	.word	-44
	.word	4
	.word	_Label_89
	.word	-48
	.word	4
	.word	_Label_90
	.word	-52
	.word	4
	.word	_Label_91
	.word	-56
	.word	4
	.word	_Label_92
	.word	-60
	.word	4
	.word	_Label_93
	.word	-64
	.word	4
	.word	_Label_94
	.word	-68
	.word	4
	.word	_Label_95
	.word	-72
	.word	4
	.word	_Label_96
	.word	-76
	.word	4
	.word	_Label_97
	.word	-80
	.word	4
	.word	_Label_98
	.word	-84
	.word	4
	.word	0
_Label_79:
	.ascii	"InitializeScheduler\0"
	.align
_Label_80:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_57_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_57_IdleFunction,r1
	push	r1
	mov	7,r1
_Label_678:
	push	r0
	sub	r1,1,r1
	bne	_Label_678
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
	add	r2,24,r2
	call	r2
! END IF...
_Label_113:
! END WHILE...
	jmp	_Label_99
_Label_101:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_57_IdleFunction:
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
_Label_679:
	push	r0
	sub	r1,1,r1
	bne	_Label_679
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
	add	r2,32,r2
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
_Label_680:
	push	r0
	sub	r1,1,r1
	bne	_Label_680
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
!   _temp_141 = _function_56_ThreadPrint
	set	_function_56_ThreadPrint,r1
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
!   _temp_144 = _function_56_ThreadPrint
	set	_function_56_ThreadPrint,r1
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
!   _temp_147 = _function_56_ThreadPrint
	set	_function_56_ThreadPrint,r1
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
!   _temp_150 = _function_56_ThreadPrint
	set	_function_56_ThreadPrint,r1
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
!   _temp_153 = _function_56_ThreadPrint
	set	_function_56_ThreadPrint,r1
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
_Label_681:
	push	r0
	sub	r1,1,r1
	bne	_Label_681
	mov	121,r13		! source line 121
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	133,r13		! source line 133
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
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
	mov	135,r13		! source line 135
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	136,r13		! source line 136
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
	mov	137,r13		! source line 137
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! RETURN STATEMENT...
	mov	137,r13		! source line 137
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
_Label_682:
	push	r0
	sub	r1,1,r1
	bne	_Label_682
	mov	142,r13		! source line 142
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	153,r13		! source line 153
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! SEND STATEMENT...
	mov	157,r13		! source line 157
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
	mov	158,r13		! source line 158
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
	add	r2,28,r2
	call	r2
! --------------------  DEBUG  --------------------
	mov	160,r13		! source line 160
	mov	"\0\0DE",r10
	debug
! RETURN STATEMENT...
	mov	160,r13		! source line 160
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
_Label_683:
	push	r0
	sub	r1,1,r1
	bne	_Label_683
	mov	165,r13		! source line 165
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	172,r13		! source line 172
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
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
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	174,r13		! source line 174
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
	mov	175,r13		! source line 175
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_191 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_191  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	175,r13		! source line 175
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
	mov	176,r13		! source line 176
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
	mov	178,r13		! source line 178
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	179,r13		! source line 179
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
	mov	180,r13		! source line 180
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	181,r13		! source line 181
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	181,r13		! source line 181
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
_Label_684:
	push	r0
	sub	r1,1,r1
	bne	_Label_684
	mov	186,r13		! source line 186
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	200,r13		! source line 200
	mov	"\0\0AS",r10
!   oldStat = _P_Thread_currentInterruptStatus		(4 bytes)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_206		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_206
!	_Label_205	jmp	_Label_205
_Label_205:
! THEN...
	mov	202,r13		! source line 202
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	203,r13		! source line 203
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_207
_Label_206:
! ELSE...
	mov	205,r13		! source line 205
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	205,r13		! source line 205
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	206,r13		! source line 206
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_207:
! RETURN STATEMENT...
	mov	208,r13		! source line 208
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
	mov	3,r1
_Label_685:
	push	r0
	sub	r1,1,r1
	bne	_Label_685
	mov	213,r13		! source line 213
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	223,r13		! source line 223
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0IF",r10
!   Call the function
	mov	225,r13		! source line 225
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioInt
!   Retrieve Result: targetName=_temp_213  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
	mov	225,r13		! source line 225
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
	add	r2,20,r2
	call	r2
!   Retrieve Result: targetName=_temp_214  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   if _temp_213 < _temp_214 then goto _Label_212		(int)
	load	[r14+-16],r1
	load	[r14+-12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_212
!	_Label_211	jmp	_Label_211
_Label_211:
! THEN...
	mov	226,r13		! source line 226
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	226,r13		! source line 226
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
	add	r2,24,r2
	call	r2
! END IF...
_Label_212:
! ASSIGNMENT STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	229,r13		! source line 229
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
	.word	_Label_215
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_216
	.word	-12
	.word	4
	.word	_Label_217
	.word	-16
	.word	4
	.word	0
_Label_215:
	.ascii	"TimerInterruptHandler\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
! 
! ===============  FUNCTION ThreadPrint  ===============
! 
_function_56_ThreadPrint:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_56_ThreadPrint,r1
	push	r1
	mov	17,r1
_Label_686:
	push	r0
	sub	r1,1,r1
	bne	_Label_686
	mov	234,r13		! source line 234
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	241,r13		! source line 241
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   _temp_218 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_218  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_220 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-60]
!   Data Move: _temp_219 = *_temp_220  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_219  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	243,r13		! source line 243
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_221 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_221  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	245,r13		! source line 245
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_230 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-48]
!   Data Move: _temp_229 = *_temp_230  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Branch to the right case label
	load	[r14+-52],r1
	cmp	r1,1
	be	_Label_224
	cmp	r1,2
	be	_Label_225
	cmp	r1,3
	be	_Label_226
	cmp	r1,4
	be	_Label_227
	cmp	r1,5
	be	_Label_228
	jmp	_Label_222
! CASE 1...
_Label_224:
! CALL STATEMENT...
!   _temp_231 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_231  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	247,r13		! source line 247
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0BR",r10
	jmp	_Label_223
! CASE 2...
_Label_225:
! CALL STATEMENT...
!   _temp_232 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_232  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	250,r13		! source line 250
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0BR",r10
	jmp	_Label_223
! CASE 3...
_Label_226:
! CALL STATEMENT...
!   _temp_233 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_233  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	253,r13		! source line 253
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0BR",r10
	jmp	_Label_223
! CASE 4...
_Label_227:
! CALL STATEMENT...
!   _temp_234 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_234  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	256,r13		! source line 256
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0BR",r10
	jmp	_Label_223
! CASE 5...
_Label_228:
! CALL STATEMENT...
!   _temp_235 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_235  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	259,r13		! source line 259
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0BR",r10
	jmp	_Label_223
! DEFAULT CASE...
_Label_222:
! CALL STATEMENT...
!   _temp_236 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_223:
! CALL STATEMENT...
!   _temp_237 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_237  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	264,r13		! source line 264
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_238 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_238  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	265,r13		! source line 265
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_239 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	266,r13		! source line 266
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	267,r13		! source line 267
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	269,r13		! source line 269
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! RETURN STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_56_ThreadPrint:
	.word	_sourceFileName
	.word	_Label_240
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_241
	.word	8
	.word	4
	.word	_Label_242
	.word	-12
	.word	4
	.word	_Label_243
	.word	-16
	.word	4
	.word	_Label_244
	.word	-20
	.word	4
	.word	_Label_245
	.word	-24
	.word	4
	.word	_Label_246
	.word	-28
	.word	4
	.word	_Label_247
	.word	-32
	.word	4
	.word	_Label_248
	.word	-36
	.word	4
	.word	_Label_249
	.word	-40
	.word	4
	.word	_Label_250
	.word	-44
	.word	4
	.word	_Label_251
	.word	-48
	.word	4
	.word	_Label_252
	.word	-52
	.word	4
	.word	_Label_253
	.word	-56
	.word	4
	.word	_Label_254
	.word	-60
	.word	4
	.word	_Label_255
	.word	-64
	.word	4
	.word	_Label_256
	.word	-68
	.word	4
	.word	_Label_257
	.word	-72
	.word	4
	.word	0
_Label_240:
	.ascii	"ThreadPrint\0"
	.align
_Label_241:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_257:
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
_Label_687:
	push	r0
	sub	r1,1,r1
	bne	_Label_687
	mov	272,r13		! source line 272
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0IF",r10
	mov	273,r13		! source line 273
	mov	"\0\0SE",r10
!   _temp_261 = &_P_Thread_one
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
!   Retrieve Result: targetName=_temp_260  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_260 then goto _Label_259 else goto _Label_258
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_258
	jmp	_Label_259
_Label_258:
! THEN...
	mov	274,r13		! source line 274
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_262
_Label_259:
! ELSE...
	mov	275,r13		! source line 275
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0IF",r10
	mov	275,r13		! source line 275
	mov	"\0\0SE",r10
!   _temp_266 = &_P_Thread_two
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
!   Retrieve Result: targetName=_temp_265  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_265 then goto _Label_264 else goto _Label_263
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_263
	jmp	_Label_264
_Label_263:
! THEN...
	mov	276,r13		! source line 276
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0RE",r10
!   ReturnResult: 2  (sizeInBytes=4)
	mov	2,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_267
_Label_264:
! ELSE...
	mov	277,r13		! source line 277
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0IF",r10
	mov	277,r13		! source line 277
	mov	"\0\0SE",r10
!   _temp_271 = &_P_Thread_three
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
!   Retrieve Result: targetName=_temp_270  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_270 then goto _Label_269 else goto _Label_268
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_268
	jmp	_Label_269
_Label_268:
! THEN...
	mov	278,r13		! source line 278
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0RE",r10
!   ReturnResult: 3  (sizeInBytes=4)
	mov	3,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_272
_Label_269:
! ELSE...
	mov	279,r13		! source line 279
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	279,r13		! source line 279
	mov	"\0\0IF",r10
	mov	279,r13		! source line 279
	mov	"\0\0SE",r10
!   _temp_276 = &_P_Thread_four
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
!   Retrieve Result: targetName=_temp_275  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_275 then goto _Label_274 else goto _Label_273
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_273
	jmp	_Label_274
_Label_273:
! THEN...
	mov	280,r13		! source line 280
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0RE",r10
!   ReturnResult: 4  (sizeInBytes=4)
	mov	4,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_277
_Label_274:
! ELSE...
	mov	281,r13		! source line 281
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	281,r13		! source line 281
	mov	"\0\0IF",r10
	mov	281,r13		! source line 281
	mov	"\0\0SE",r10
!   _temp_281 = &_P_Thread_five
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
!   Retrieve Result: targetName=_temp_280  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_280 then goto _Label_279 else goto _Label_278
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_278
	jmp	_Label_279
_Label_278:
! THEN...
	mov	282,r13		! source line 282
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0RE",r10
!   ReturnResult: 5  (sizeInBytes=4)
	mov	5,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_279:
! END IF...
_Label_277:
! END IF...
_Label_272:
! END IF...
_Label_267:
! END IF...
_Label_262:
! RETURN STATEMENT...
	mov	284,r13		! source line 284
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
	.word	_Label_282
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_283
	.word	-20
	.word	4
	.word	_Label_284
	.word	-9
	.word	1
	.word	_Label_285
	.word	-24
	.word	4
	.word	_Label_286
	.word	-10
	.word	1
	.word	_Label_287
	.word	-28
	.word	4
	.word	_Label_288
	.word	-11
	.word	1
	.word	_Label_289
	.word	-32
	.word	4
	.word	_Label_290
	.word	-12
	.word	1
	.word	_Label_291
	.word	-36
	.word	4
	.word	_Label_292
	.word	-13
	.word	1
	.word	0
_Label_282:
	.ascii	"highestPrioInt\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_284:
	.byte	'C'
	.ascii	"_temp_280\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_286:
	.byte	'C'
	.ascii	"_temp_275\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_288:
	.byte	'C'
	.ascii	"_temp_270\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_290:
	.byte	'C'
	.ascii	"_temp_265\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_292:
	.byte	'C'
	.ascii	"_temp_260\0"
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
	mov	14,r1
_Label_688:
	push	r0
	sub	r1,1,r1
	bne	_Label_688
	mov	287,r13		! source line 287
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0AS",r10
!   Call the function
	mov	289,r13		! source line 289
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioInt
!   Retrieve Result: targetName=prioInt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_293 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	290,r13		! source line 290
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prioInt  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	291,r13		! source line 291
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_294 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_294  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	292,r13		! source line 292
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	293,r13		! source line 293
	mov	"\0\0CA",r10
	call	_P_Thread_PrintReadyList
! IF STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0IF",r10
!   if prioInt != 1 then goto _Label_296		(int)
	load	[r14+-60],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_296
!	_Label_295	jmp	_Label_295
_Label_295:
! THEN...
	mov	295,r13		! source line 295
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	mov	295,r13		! source line 295
	mov	"\0\0SE",r10
!   _temp_298 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_297  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_297  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_299
_Label_296:
! ELSE...
	mov	296,r13		! source line 296
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0IF",r10
!   if prioInt != 2 then goto _Label_301		(int)
	load	[r14+-60],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_301
!	_Label_300	jmp	_Label_300
_Label_300:
! THEN...
	mov	297,r13		! source line 297
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0RE",r10
	mov	297,r13		! source line 297
	mov	"\0\0SE",r10
!   _temp_303 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-36]
!   Send message Remove
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_302  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_302  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_304
_Label_301:
! ELSE...
	mov	298,r13		! source line 298
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0IF",r10
!   if prioInt != 3 then goto _Label_306		(int)
	load	[r14+-60],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_306
!	_Label_305	jmp	_Label_305
_Label_305:
! THEN...
	mov	299,r13		! source line 299
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0RE",r10
	mov	299,r13		! source line 299
	mov	"\0\0SE",r10
!   _temp_308 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_307  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_307  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_309
_Label_306:
! ELSE...
	mov	300,r13		! source line 300
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0IF",r10
!   if prioInt != 4 then goto _Label_311		(int)
	load	[r14+-60],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_311
!	_Label_310	jmp	_Label_310
_Label_310:
! THEN...
	mov	301,r13		! source line 301
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0RE",r10
	mov	301,r13		! source line 301
	mov	"\0\0SE",r10
!   _temp_313 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_312  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_312  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_314
_Label_311:
! ELSE...
	mov	302,r13		! source line 302
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0IF",r10
!   if prioInt != 5 then goto _Label_316		(int)
	load	[r14+-60],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_316
!	_Label_315	jmp	_Label_315
_Label_315:
! THEN...
	mov	303,r13		! source line 303
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0RE",r10
	mov	303,r13		! source line 303
	mov	"\0\0SE",r10
!   _temp_318 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Send message Remove
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_317  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_317  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_316:
! END IF...
_Label_314:
! END IF...
_Label_309:
! END IF...
_Label_304:
! END IF...
_Label_299:
! RETURN STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_highestPrioThread:
	.word	_sourceFileName
	.word	_Label_319
	.word	0		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_320
	.word	-12
	.word	4
	.word	_Label_321
	.word	-16
	.word	4
	.word	_Label_322
	.word	-20
	.word	4
	.word	_Label_323
	.word	-24
	.word	4
	.word	_Label_324
	.word	-28
	.word	4
	.word	_Label_325
	.word	-32
	.word	4
	.word	_Label_326
	.word	-36
	.word	4
	.word	_Label_327
	.word	-40
	.word	4
	.word	_Label_328
	.word	-44
	.word	4
	.word	_Label_329
	.word	-48
	.word	4
	.word	_Label_330
	.word	-52
	.word	4
	.word	_Label_331
	.word	-56
	.word	4
	.word	_Label_332
	.word	-60
	.word	4
	.word	0
_Label_319:
	.ascii	"highestPrioThread\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_331:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_332:
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
	mov	2,r1
_Label_689:
	push	r0
	sub	r1,1,r1
	bne	_Label_689
	mov	308,r13		! source line 308
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0IF",r10
!   if prio != 1 then goto _Label_334		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_334
!	_Label_333	jmp	_Label_333
_Label_333:
! THEN...
	mov	314,r13		! source line 314
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_one  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_one,r5
_Label_690:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_690
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_335
_Label_334:
! ELSE...
	mov	315,r13		! source line 315
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0IF",r10
!   if prio != 2 then goto _Label_337		(int)
	load	[r14+8],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_337
!	_Label_336	jmp	_Label_336
_Label_336:
! THEN...
	mov	316,r13		! source line 316
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_two  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_two,r5
_Label_691:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_691
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_338
_Label_337:
! ELSE...
	mov	317,r13		! source line 317
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0IF",r10
!   if prio != 3 then goto _Label_340		(int)
	load	[r14+8],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_340
!	_Label_339	jmp	_Label_339
_Label_339:
! THEN...
	mov	318,r13		! source line 318
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_three  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_three,r5
_Label_692:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_692
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_341
_Label_340:
! ELSE...
	mov	319,r13		! source line 319
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	319,r13		! source line 319
	mov	"\0\0IF",r10
!   if prio != 4 then goto _Label_343		(int)
	load	[r14+8],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_343
!	_Label_342	jmp	_Label_342
_Label_342:
! THEN...
	mov	320,r13		! source line 320
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	320,r13		! source line 320
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_four  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_four,r5
_Label_693:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_693
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_344
_Label_343:
! ELSE...
	mov	321,r13		! source line 321
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	321,r13		! source line 321
	mov	"\0\0IF",r10
!   if prio != 5 then goto _Label_346		(int)
	load	[r14+8],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_346
!	_Label_345	jmp	_Label_345
_Label_345:
! THEN...
	mov	322,r13		! source line 322
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_five  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_five,r5
_Label_694:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_694
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_346:
! END IF...
_Label_344:
! END IF...
_Label_341:
! END IF...
_Label_338:
! END IF...
_Label_335:
! CALL STATEMENT...
!   _temp_347 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_readyList  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_readyList,r5
_Label_695:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_695
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_intToQ:
	.word	_sourceFileName
	.word	_Label_348
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_349
	.word	8
	.word	4
	.word	_Label_350
	.word	-12
	.word	4
	.word	0
_Label_348:
	.ascii	"intToQ\0"
	.align
_Label_349:
	.byte	'I'
	.ascii	"prio\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Thread_Thread:
	.word	_Label_351
	jmp	_Method_P_Thread_Thread_1	! 4:	Init
	jmp	_Method_P_Thread_Thread_2	! 8:	assignQ
	jmp	_Method_P_Thread_Thread_3	! 12:	Fork
	jmp	_Method_P_Thread_Thread_8	! 16:	setPriority
	jmp	_Method_P_Thread_Thread_9	! 20:	getPriority
	jmp	_Method_P_Thread_Thread_4	! 24:	Yield
	jmp	_Method_P_Thread_Thread_5	! 28:	Sleep
	jmp	_Method_P_Thread_Thread_6	! 32:	CheckOverflow
	jmp	_Method_P_Thread_Thread_7	! 36:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_351:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_352
	.word	_sourceFileName
	.word	43		! line number
	.word	4100		! size of instances, in bytes
	.word	_P_Thread_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_352:
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
_Label_696:
	push	r0
	sub	r1,1,r1
	bne	_Label_696
	mov	333,r13		! source line 333
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	338,r13		! source line 338
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	339,r13		! source line 339
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0AS",r10
!   _temp_353 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_353) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_353 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-108],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0AS",r10
!   _temp_354 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-104]
!   Move address of _temp_354 [0 ] into _temp_355
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
!   Data Move: *_temp_355 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0AS",r10
!   _temp_356 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-96]
!   Move address of _temp_356 [999 ] into _temp_357
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
!   Data Move: *_temp_357 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	344,r13		! source line 344
	mov	"\0\0AS",r10
!   _temp_358 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-88]
!   Move address of _temp_358 [999 ] into _temp_359
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
!   stackTop = _temp_359		(4 bytes)
	load	[r14+-84],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0AS",r10
!   _temp_360 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-80]
!   NEW ARRAY Constructor...
!   _temp_362 = &_temp_361
	add	r14,-76,r1
	store	r1,[r14+-20]
!   _temp_362 = _temp_362 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	13,r1
	store	r1,[r14+-16]
_Label_364:
!   Data Move: *_temp_362 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_362 = _temp_362 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_363 = _temp_363 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_363) then goto _Label_364
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_364
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-76]
!   _temp_365 = &_temp_361
	add	r14,-76,r1
	store	r1,[r14+-12]
!   make sure array has size 13
	load	[r14+-80],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_697
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_697:
!   make sure array has size 13
	load	[r14+-12],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_360 = *_temp_365  (sizeInBytes=56)
	load	[r14+-12],r5
	load	[r14+-80],r4
	mov	14,r3
_Label_698:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_698
! ASSIGNMENT STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0AS",r10
!   time = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4092]
! RETURN STATEMENT...
	mov	349,r13		! source line 349
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
	.word	_Label_366
	.word	8		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_367
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_368
	.word	12
	.word	4
	.word	_Label_369
	.word	-12
	.word	4
	.word	_Label_370
	.word	-16
	.word	4
	.word	_Label_371
	.word	-20
	.word	4
	.word	_Label_372
	.word	-76
	.word	56
	.word	_Label_373
	.word	-80
	.word	4
	.word	_Label_374
	.word	-84
	.word	4
	.word	_Label_375
	.word	-88
	.word	4
	.word	_Label_376
	.word	-92
	.word	4
	.word	_Label_377
	.word	-96
	.word	4
	.word	_Label_378
	.word	-100
	.word	4
	.word	_Label_379
	.word	-104
	.word	4
	.word	_Label_380
	.word	-108
	.word	4
	.word	0
_Label_366:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_367:
	.ascii	"Pself\0"
	.align
_Label_368:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
! 
! ===============  METHOD assignQ  ===============
! 
_Method_P_Thread_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_2,r1
	push	r1
	mov	12,r1
_Label_699:
	push	r0
	sub	r1,1,r1
	bne	_Label_699
	mov	352,r13		! source line 352
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0IF",r10
!   if priority != 1 then goto _Label_382		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_382
!	_Label_381	jmp	_Label_381
_Label_381:
! THEN...
	mov	354,r13		! source line 354
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   _temp_384 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_383  sizeInBytes=4
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
	jmp	_Label_385
_Label_382:
! ELSE...
	mov	355,r13		! source line 355
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0IF",r10
!   if priority != 2 then goto _Label_387		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_387
!	_Label_386	jmp	_Label_386
_Label_386:
! THEN...
	mov	356,r13		! source line 356
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	356,r13		! source line 356
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   _temp_389 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_388  sizeInBytes=4
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
	jmp	_Label_390
_Label_387:
! ELSE...
	mov	357,r13		! source line 357
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0IF",r10
!   if priority != 3 then goto _Label_392		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_392
!	_Label_391	jmp	_Label_391
_Label_391:
! THEN...
	mov	358,r13		! source line 358
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   _temp_394 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_393  sizeInBytes=4
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
	jmp	_Label_395
_Label_392:
! ELSE...
	mov	359,r13		! source line 359
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0IF",r10
!   if priority != 4 then goto _Label_397		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_397
!	_Label_396	jmp	_Label_396
_Label_396:
! THEN...
	mov	360,r13		! source line 360
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	360,r13		! source line 360
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   _temp_399 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_398  sizeInBytes=4
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
	jmp	_Label_400
_Label_397:
! ELSE...
	mov	361,r13		! source line 361
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0IF",r10
!   if priority != 5 then goto _Label_402		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_402
!	_Label_401	jmp	_Label_401
_Label_401:
! THEN...
	mov	362,r13		! source line 362
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_404 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_403  sizeInBytes=4
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
_Label_402:
! END IF...
_Label_400:
! END IF...
_Label_395:
! END IF...
_Label_390:
! END IF...
_Label_385:
! RETURN STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_2:
	.word	_sourceFileName
	.word	_Label_405
	.word	8		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_406
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_407
	.word	12
	.word	4
	.word	_Label_408
	.word	-12
	.word	4
	.word	_Label_409
	.word	-16
	.word	4
	.word	_Label_410
	.word	-20
	.word	4
	.word	_Label_411
	.word	-24
	.word	4
	.word	_Label_412
	.word	-28
	.word	4
	.word	_Label_413
	.word	-32
	.word	4
	.word	_Label_414
	.word	-36
	.word	4
	.word	_Label_415
	.word	-40
	.word	4
	.word	_Label_416
	.word	-44
	.word	4
	.word	_Label_417
	.word	-48
	.word	4
	.word	0
_Label_405:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"assignQ\0"
	.align
_Label_406:
	.ascii	"Pself\0"
	.align
_Label_407:
	.byte	'I'
	.ascii	"prio\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Thread_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_3,r1
	push	r1
	mov	15,r1
_Label_700:
	push	r0
	sub	r1,1,r1
	bne	_Label_700
	mov	368,r13		! source line 368
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	379,r13		! source line 379
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	379,r13		! source line 379
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	383,r13		! source line 383
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
	mov	384,r13		! source line 384
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_418 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-52]
!   Data Move: *stackTop = _temp_418  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	385,r13		! source line 385
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! IF STATEMENT...
	mov	386,r13		! source line 386
	mov	"\0\0IF",r10
!   if priority != 1 then goto _Label_420		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_420
!	_Label_419	jmp	_Label_419
_Label_419:
! THEN...
	mov	387,r13		! source line 387
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   _temp_422 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_421  sizeInBytes=4
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
	jmp	_Label_423
_Label_420:
! ELSE...
	mov	388,r13		! source line 388
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0IF",r10
!   if priority != 2 then goto _Label_425		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_425
!	_Label_424	jmp	_Label_424
_Label_424:
! THEN...
	mov	389,r13		! source line 389
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   _temp_427 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_426  sizeInBytes=4
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
	jmp	_Label_428
_Label_425:
! ELSE...
	mov	390,r13		! source line 390
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0IF",r10
!   if priority != 3 then goto _Label_430		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_430
!	_Label_429	jmp	_Label_429
_Label_429:
! THEN...
	mov	391,r13		! source line 391
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   _temp_432 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_431  sizeInBytes=4
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
	jmp	_Label_433
_Label_430:
! ELSE...
	mov	392,r13		! source line 392
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0IF",r10
!   if priority != 4 then goto _Label_435		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_435
!	_Label_434	jmp	_Label_434
_Label_434:
! THEN...
	mov	393,r13		! source line 393
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   _temp_437 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_436  sizeInBytes=4
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
	jmp	_Label_438
_Label_435:
! ELSE...
	mov	394,r13		! source line 394
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0IF",r10
!   if priority != 5 then goto _Label_440		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_440
!	_Label_439	jmp	_Label_439
_Label_439:
! THEN...
	mov	395,r13		! source line 395
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_442 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_441  sizeInBytes=4
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
_Label_440:
! END IF...
_Label_438:
! END IF...
_Label_433:
! END IF...
_Label_428:
! END IF...
_Label_423:
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_3:
	.word	_sourceFileName
	.word	_Label_443
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_444
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_445
	.word	12
	.word	4
	.word	_Label_446
	.word	16
	.word	4
	.word	_Label_447
	.word	-12
	.word	4
	.word	_Label_448
	.word	-16
	.word	4
	.word	_Label_449
	.word	-20
	.word	4
	.word	_Label_450
	.word	-24
	.word	4
	.word	_Label_451
	.word	-28
	.word	4
	.word	_Label_452
	.word	-32
	.word	4
	.word	_Label_453
	.word	-36
	.word	4
	.word	_Label_454
	.word	-40
	.word	4
	.word	_Label_455
	.word	-44
	.word	4
	.word	_Label_456
	.word	-48
	.word	4
	.word	_Label_457
	.word	-52
	.word	4
	.word	_Label_458
	.word	-56
	.word	4
	.word	_Label_459
	.word	-60
	.word	4
	.word	0
_Label_443:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_444:
	.ascii	"Pself\0"
	.align
_Label_445:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_446:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_458:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_459:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Thread_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_4,r1
	push	r1
	mov	18,r1
_Label_701:
	push	r0
	sub	r1,1,r1
	bne	_Label_701
	mov	402,r13		! source line 402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	418,r13		! source line 418
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if _temp_462 == _P_Thread_currentThread then goto _Label_461		(int)
	load	[r14+-60],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_461
!	_Label_460	jmp	_Label_460
_Label_460:
! THEN...
	mov	419,r13		! source line 419
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_463 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_463  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	419,r13		! source line 419
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_461:
! ASSIGNMENT STATEMENT...
	mov	421,r13		! source line 421
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	421,r13		! source line 421
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0AS",r10
!   Call the function
	mov	425,r13		! source line 425
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioThread
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! IF STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_465		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_465
!	_Label_464	jmp	_Label_464
_Label_464:
! THEN...
	mov	430,r13		! source line 430
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_467		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_467
!	_Label_466	jmp	_Label_466
_Label_466:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_468 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_468  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	431,r13		! source line 431
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_467:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! IF STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0IF",r10
!   if priority != 1 then goto _Label_470		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_470
!	_Label_469	jmp	_Label_469
_Label_469:
! THEN...
	mov	436,r13		! source line 436
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   _temp_472 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_471  sizeInBytes=4
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
	jmp	_Label_473
_Label_470:
! ELSE...
	mov	437,r13		! source line 437
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0IF",r10
!   if priority != 2 then goto _Label_475		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_475
!	_Label_474	jmp	_Label_474
_Label_474:
! THEN...
	mov	438,r13		! source line 438
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   _temp_477 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_476  sizeInBytes=4
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
	jmp	_Label_478
_Label_475:
! ELSE...
	mov	439,r13		! source line 439
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0IF",r10
!   if priority != 3 then goto _Label_480		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_480
!	_Label_479	jmp	_Label_479
_Label_479:
! THEN...
	mov	440,r13		! source line 440
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   _temp_482 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_481  sizeInBytes=4
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
	jmp	_Label_483
_Label_480:
! ELSE...
	mov	441,r13		! source line 441
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	441,r13		! source line 441
	mov	"\0\0IF",r10
!   if priority != 4 then goto _Label_485		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_485
!	_Label_484	jmp	_Label_484
_Label_484:
! THEN...
	mov	442,r13		! source line 442
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   _temp_487 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_486  sizeInBytes=4
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
	jmp	_Label_488
_Label_485:
! ELSE...
	mov	443,r13		! source line 443
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0IF",r10
!   if priority != 5 then goto _Label_490		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_490
!	_Label_489	jmp	_Label_489
_Label_489:
! THEN...
	mov	444,r13		! source line 444
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_492 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_491  sizeInBytes=4
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
_Label_490:
! END IF...
_Label_488:
! END IF...
_Label_483:
! END IF...
_Label_478:
! END IF...
_Label_473:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	446,r13		! source line 446
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! END IF...
_Label_465:
! ASSIGNMENT STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	448,r13		! source line 448
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! RETURN STATEMENT...
	mov	448,r13		! source line 448
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
	.word	_Label_493
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_494
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_495
	.word	-12
	.word	4
	.word	_Label_496
	.word	-16
	.word	4
	.word	_Label_497
	.word	-20
	.word	4
	.word	_Label_498
	.word	-24
	.word	4
	.word	_Label_499
	.word	-28
	.word	4
	.word	_Label_500
	.word	-32
	.word	4
	.word	_Label_501
	.word	-36
	.word	4
	.word	_Label_502
	.word	-40
	.word	4
	.word	_Label_503
	.word	-44
	.word	4
	.word	_Label_504
	.word	-48
	.word	4
	.word	_Label_505
	.word	-52
	.word	4
	.word	_Label_506
	.word	-56
	.word	4
	.word	_Label_507
	.word	-60
	.word	4
	.word	_Label_508
	.word	-64
	.word	4
	.word	_Label_509
	.word	-68
	.word	4
	.word	_Label_510
	.word	-72
	.word	4
	.word	0
_Label_493:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_494:
	.ascii	"Pself\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_476\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_508:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_509:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_510:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Thread_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_5,r1
	push	r1
	mov	6,r1
_Label_702:
	push	r0
	sub	r1,1,r1
	bne	_Label_702
	mov	453,r13		! source line 453
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0IF",r10
!   if _P_Thread_currentInterruptStatus == 2 then goto _Label_512		(int)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_512
!	_Label_511	jmp	_Label_511
_Label_511:
! THEN...
	mov	466,r13		! source line 466
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_513 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_513  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	466,r13		! source line 466
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_512:
! IF STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if _temp_516 == _P_Thread_currentThread then goto _Label_515		(int)
	load	[r14+-20],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_515
!	_Label_514	jmp	_Label_514
_Label_514:
! THEN...
	mov	470,r13		! source line 470
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_517 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_517  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	470,r13		! source line 470
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_515:
! ASSIGNMENT STATEMENT...
	mov	475,r13		! source line 475
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0AS",r10
!   Call the function
	mov	476,r13		! source line 476
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioThread
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_518
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_518
	jmp	_Label_519
_Label_518:
! THEN...
	mov	478,r13		! source line 478
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	478,r13		! source line 478
	mov	"\0\0CA",r10
	call	_P_Thread_PrintReadyList
! CALL STATEMENT...
!   _temp_520 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	479,r13		! source line 479
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_519:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	481,r13		! source line 481
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! RETURN STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_5:
	.word	_sourceFileName
	.word	_Label_521
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_522
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_523
	.word	-12
	.word	4
	.word	_Label_524
	.word	-16
	.word	4
	.word	_Label_525
	.word	-20
	.word	4
	.word	_Label_526
	.word	-24
	.word	4
	.word	_Label_527
	.word	-28
	.word	4
	.word	0
_Label_521:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_522:
	.ascii	"Pself\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_527:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Thread_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_6,r1
	push	r1
	mov	9,r1
_Label_703:
	push	r0
	sub	r1,1,r1
	bne	_Label_703
	mov	486,r13		! source line 486
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0IF",r10
!   _temp_531 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_531 [0 ] into _temp_532
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
!   Data Move: _temp_530 = *_temp_532  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_530 == 606348324 then goto _Label_529		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_529
!	_Label_528	jmp	_Label_528
_Label_528:
! THEN...
	mov	493,r13		! source line 493
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_533 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	493,r13		! source line 493
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
	jmp	_Label_534
_Label_529:
! ELSE...
	mov	494,r13		! source line 494
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0IF",r10
!   _temp_538 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_538 [999 ] into _temp_539
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
!   Data Move: _temp_537 = *_temp_539  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_537 == 606348324 then goto _Label_536		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_536
!	_Label_535	jmp	_Label_535
_Label_535:
! THEN...
	mov	495,r13		! source line 495
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_540 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_540  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	495,r13		! source line 495
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_536:
! END IF...
_Label_534:
! RETURN STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_6:
	.word	_sourceFileName
	.word	_Label_541
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_542
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_543
	.word	-12
	.word	4
	.word	_Label_544
	.word	-16
	.word	4
	.word	_Label_545
	.word	-20
	.word	4
	.word	_Label_546
	.word	-24
	.word	4
	.word	_Label_547
	.word	-28
	.word	4
	.word	_Label_548
	.word	-32
	.word	4
	.word	_Label_549
	.word	-36
	.word	4
	.word	_Label_550
	.word	-40
	.word	4
	.word	0
_Label_541:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_542:
	.ascii	"Pself\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Thread_Thread_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_7,r1
	push	r1
	mov	36,r1
_Label_704:
	push	r0
	sub	r1,1,r1
	bne	_Label_704
	mov	501,r13		! source line 501
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	507,r13		! source line 507
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! CALL STATEMENT...
!   _temp_551 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_551  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	508,r13		! source line 508
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_552 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_552  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	509,r13		! source line 509
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_553  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	510,r13		! source line 510
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_554 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_554  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	511,r13		! source line 511
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_555 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_555  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	512,r13		! source line 512
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=priority  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4096],r1
	store	r1,[r15+0]
!   Call the function
	mov	513,r13		! source line 513
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_556 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_556  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	514,r13		! source line 514
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_557 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_557  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	515,r13		! source line 515
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_562 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
!   Calculate and save the FOR-LOOP ending value
!   _temp_563 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-104]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_562  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+-140]
_Label_558:
!   Perform the FOR-LOOP termination test
!   if i > _temp_563 then goto _Label_561		
	load	[r14+-140],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_561
_Label_559:
	mov	516,r13		! source line 516
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_564 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_564  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	517,r13		! source line 517
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_565 = i + 2		(int)
	load	[r14+-140],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_565  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	518,r13		! source line 518
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_566 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_566  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	519,r13		! source line 519
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_568 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   Move address of _temp_568 [i ] into _temp_569
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
!   Data Move: _temp_567 = *_temp_569  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_567  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	520,r13		! source line 520
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_570 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_570  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	521,r13		! source line 521
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_572 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Move address of _temp_572 [i ] into _temp_573
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
!   Data Move: _temp_571 = *_temp_573  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_571  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	522,r13		! source line 522
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_574 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_574  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	523,r13		! source line 523
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_560:
!   i = i + 1
	load	[r14+-140],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
	jmp	_Label_558
! END FOR
_Label_561:
! CALL STATEMENT...
!   _temp_575 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-56]
!   _temp_576 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_575  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_576  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_577 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-48]
!   _temp_579 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-40]
!   Move address of _temp_579 [0 ] into _temp_580
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
!   _temp_578 = _temp_580		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_577  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_578  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	526,r13		! source line 526
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	527,r13		! source line 527
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_583
	cmp	r1,2
	be	_Label_584
	cmp	r1,3
	be	_Label_585
	cmp	r1,4
	be	_Label_586
	cmp	r1,5
	be	_Label_587
	jmp	_Label_581
! CASE 1...
_Label_583:
! CALL STATEMENT...
!   _temp_588 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_588  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	529,r13		! source line 529
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	530,r13		! source line 530
	mov	"\0\0BR",r10
	jmp	_Label_582
! CASE 2...
_Label_584:
! CALL STATEMENT...
!   _temp_589 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_589  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	532,r13		! source line 532
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0BR",r10
	jmp	_Label_582
! CASE 3...
_Label_585:
! CALL STATEMENT...
!   _temp_590 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_590  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	535,r13		! source line 535
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	536,r13		! source line 536
	mov	"\0\0BR",r10
	jmp	_Label_582
! CASE 4...
_Label_586:
! CALL STATEMENT...
!   _temp_591 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_591  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	538,r13		! source line 538
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	539,r13		! source line 539
	mov	"\0\0BR",r10
	jmp	_Label_582
! CASE 5...
_Label_587:
! CALL STATEMENT...
!   _temp_592 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_592  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	541,r13		! source line 541
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0BR",r10
	jmp	_Label_582
! DEFAULT CASE...
_Label_581:
! CALL STATEMENT...
!   _temp_593 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_593  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	544,r13		! source line 544
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_582:
! ASSIGNMENT STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	546,r13		! source line 546
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! RETURN STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0RE",r10
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_7:
	.word	_sourceFileName
	.word	_Label_594
	.word	4		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_595
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_596
	.word	-12
	.word	4
	.word	_Label_597
	.word	-16
	.word	4
	.word	_Label_598
	.word	-20
	.word	4
	.word	_Label_599
	.word	-24
	.word	4
	.word	_Label_600
	.word	-28
	.word	4
	.word	_Label_601
	.word	-32
	.word	4
	.word	_Label_602
	.word	-36
	.word	4
	.word	_Label_603
	.word	-40
	.word	4
	.word	_Label_604
	.word	-44
	.word	4
	.word	_Label_605
	.word	-48
	.word	4
	.word	_Label_606
	.word	-52
	.word	4
	.word	_Label_607
	.word	-56
	.word	4
	.word	_Label_608
	.word	-60
	.word	4
	.word	_Label_609
	.word	-64
	.word	4
	.word	_Label_610
	.word	-68
	.word	4
	.word	_Label_611
	.word	-72
	.word	4
	.word	_Label_612
	.word	-76
	.word	4
	.word	_Label_613
	.word	-80
	.word	4
	.word	_Label_614
	.word	-84
	.word	4
	.word	_Label_615
	.word	-88
	.word	4
	.word	_Label_616
	.word	-92
	.word	4
	.word	_Label_617
	.word	-96
	.word	4
	.word	_Label_618
	.word	-100
	.word	4
	.word	_Label_619
	.word	-104
	.word	4
	.word	_Label_620
	.word	-108
	.word	4
	.word	_Label_621
	.word	-112
	.word	4
	.word	_Label_622
	.word	-116
	.word	4
	.word	_Label_623
	.word	-120
	.word	4
	.word	_Label_624
	.word	-124
	.word	4
	.word	_Label_625
	.word	-128
	.word	4
	.word	_Label_626
	.word	-132
	.word	4
	.word	_Label_627
	.word	-136
	.word	4
	.word	_Label_628
	.word	-140
	.word	4
	.word	_Label_629
	.word	-144
	.word	4
	.word	0
_Label_594:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_595:
	.ascii	"Pself\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_600:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_628:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_629:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD setPriority  ===============
! 
_Method_P_Thread_Thread_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_8,r1
	push	r1
	mov	15,r1
_Label_705:
	push	r0
	sub	r1,1,r1
	bne	_Label_705
	mov	550,r13		! source line 550
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	551,r13		! source line 551
	mov	"\0\0AS",r10
!   priority = prio		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4096]
! IF STATEMENT...
	mov	552,r13		! source line 552
	mov	"\0\0IF",r10
!   if priority != 1 then goto _Label_631		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_631
!	_Label_630	jmp	_Label_630
_Label_630:
! THEN...
	mov	553,r13		! source line 553
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   _temp_633 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_632  sizeInBytes=4
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
	jmp	_Label_634
_Label_631:
! ELSE...
	mov	554,r13		! source line 554
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0IF",r10
!   if priority != 2 then goto _Label_636		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_636
!	_Label_635	jmp	_Label_635
_Label_635:
! THEN...
	mov	555,r13		! source line 555
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   _temp_638 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_637  sizeInBytes=4
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
	jmp	_Label_639
_Label_636:
! ELSE...
	mov	556,r13		! source line 556
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0IF",r10
!   if priority != 3 then goto _Label_641		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_641
!	_Label_640	jmp	_Label_640
_Label_640:
! THEN...
	mov	557,r13		! source line 557
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   _temp_643 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_642  sizeInBytes=4
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
	jmp	_Label_644
_Label_641:
! ELSE...
	mov	558,r13		! source line 558
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0IF",r10
!   if priority != 4 then goto _Label_646		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_646
!	_Label_645	jmp	_Label_645
_Label_645:
! THEN...
	mov	559,r13		! source line 559
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   _temp_648 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_647  sizeInBytes=4
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
	jmp	_Label_649
_Label_646:
! ELSE...
	mov	560,r13		! source line 560
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0IF",r10
!   if priority != 5 then goto _Label_651		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_651
!	_Label_650	jmp	_Label_650
_Label_650:
! THEN...
	mov	561,r13		! source line 561
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   _temp_653 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_652  sizeInBytes=4
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
! END IF...
_Label_651:
! END IF...
_Label_649:
! END IF...
_Label_644:
! END IF...
_Label_639:
! END IF...
_Label_634:
! CALL STATEMENT...
!   _temp_654 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_654  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	563,r13		! source line 563
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prio  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	564,r13		! source line 564
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_655 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_655  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	565,r13		! source line 565
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=priority  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4096],r1
	store	r1,[r15+0]
!   Call the function
	mov	566,r13		! source line 566
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_656 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_656  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	567,r13		! source line 567
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_8:
	.word	_sourceFileName
	.word	_Label_657
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_658
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_659
	.word	12
	.word	4
	.word	_Label_660
	.word	-12
	.word	4
	.word	_Label_661
	.word	-16
	.word	4
	.word	_Label_662
	.word	-20
	.word	4
	.word	_Label_663
	.word	-24
	.word	4
	.word	_Label_664
	.word	-28
	.word	4
	.word	_Label_665
	.word	-32
	.word	4
	.word	_Label_666
	.word	-36
	.word	4
	.word	_Label_667
	.word	-40
	.word	4
	.word	_Label_668
	.word	-44
	.word	4
	.word	_Label_669
	.word	-48
	.word	4
	.word	_Label_670
	.word	-52
	.word	4
	.word	_Label_671
	.word	-56
	.word	4
	.word	_Label_672
	.word	-60
	.word	4
	.word	0
_Label_657:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"setPriority\0"
	.align
_Label_658:
	.ascii	"Pself\0"
	.align
_Label_659:
	.byte	'I'
	.ascii	"prio\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_652\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
! 
! ===============  METHOD getPriority  ===============
! 
_Method_P_Thread_Thread_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Thread_Thread_9,r1
	push	r1
	mov	570,r13		! source line 570
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	571,r13		! source line 571
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
_RoutineDescriptor__Method_P_Thread_Thread_9:
	.word	_sourceFileName
	.word	_Label_673
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_674
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_673:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"getPriority\0"
	.align
_Label_674:
	.ascii	"Pself\0"
	.align
