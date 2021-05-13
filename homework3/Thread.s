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
_StringConst_48:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_47:
	.word	15			! length
	.ascii	"Thread add to Q"
	.align
_StringConst_46:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_45:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_44:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_43:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_42:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_41:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_40:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_39:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_38:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_37:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_36:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_35:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_34:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_33:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_32:
	.word	10			! length
	.ascii	"Priority: "
	.align
_StringConst_31:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_30:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_29:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_28:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_27:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_26:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_25:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_24:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_23:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_22:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_21:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_20:
	.word	19			! length
	.ascii	"highest prio int is"
	.align
_StringConst_19:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_18:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_17:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_16:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_15:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_14:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_13:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_12:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_11:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_10:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_9:
	.word	18			! length
	.ascii	"\" -- TERMINATING!\n"
	.align
_StringConst_8:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_7:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_6:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
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
	be	_Label_51
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
_Label_51:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_52
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_52
_Label_52:
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
	mov	21,r1
_Label_488:
	push	r0
	sub	r1,1,r1
	bne	_Label_488
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_53 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_53  sizeInBytes=4
	load	[r14+-80],r1
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
_Label_489:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_489
!   _P_Thread_mainThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_62 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_63 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_62  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _temp_64 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-36]
!   _temp_65 = _temp_64 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_65 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_idleThread = zeros  (sizeInBytes=4100)
	set	_P_Thread_idleThread,r4
	mov	1025,r3
_Label_490:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_490
!   _P_Thread_idleThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0SE",r10
!   _temp_67 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_68 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_67  sizeInBytes=4
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
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_69 = _function_50_IdleFunction
	set	_function_50_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_70 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_69  sizeInBytes=4
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
	mov	29,r13		! source line 29
	mov	"\0\0AS",r10
!   _P_Thread_currentThread = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	set	_P_Thread_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	31,r13		! source line 31
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_71
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_72
	.word	-12
	.word	4
	.word	_Label_73
	.word	-16
	.word	4
	.word	_Label_74
	.word	-20
	.word	4
	.word	_Label_75
	.word	-24
	.word	4
	.word	_Label_76
	.word	-28
	.word	4
	.word	_Label_77
	.word	-32
	.word	4
	.word	_Label_78
	.word	-36
	.word	4
	.word	_Label_79
	.word	-40
	.word	4
	.word	_Label_80
	.word	-44
	.word	4
	.word	_Label_81
	.word	-48
	.word	4
	.word	_Label_82
	.word	-52
	.word	4
	.word	_Label_83
	.word	-56
	.word	4
	.word	_Label_84
	.word	-60
	.word	4
	.word	_Label_85
	.word	-64
	.word	4
	.word	_Label_86
	.word	-68
	.word	4
	.word	_Label_87
	.word	-72
	.word	4
	.word	_Label_88
	.word	-76
	.word	4
	.word	_Label_89
	.word	-80
	.word	4
	.word	0
_Label_71:
	.ascii	"InitializeScheduler\0"
	.align
_Label_72:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_73:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_74:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_75:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_76:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_78:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_79:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_80:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_53\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_50_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_50_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_491:
	push	r0
	sub	r1,1,r1
	bne	_Label_491
	mov	36,r13		! source line 36
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0WH",r10
_Label_90:
!	_Label_91	jmp	_Label_91
_Label_91:
	mov	46,r13		! source line 46
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	47,r13		! source line 47
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0IF",r10
!   Call the function
	mov	48,r13		! source line 48
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioThread
!   Retrieve Result: targetName=_temp_95  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_95) then goto _Label_93
	load	[r14+-12],r1
	cmp	r1,r0
	be	_Label_93
	jmp	_Label_94
_Label_93:
! THEN...
	mov	49,r13		! source line 49
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_96
_Label_94:
! ELSE...
	mov	51,r13		! source line 51
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	51,r13		! source line 51
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
_Label_96:
! END WHILE...
	jmp	_Label_90
_Label_92:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_50_IdleFunction:
	.word	_sourceFileName
	.word	_Label_97
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_98
	.word	8
	.word	4
	.word	_Label_99
	.word	-12
	.word	4
	.word	_Label_100
	.word	-16
	.word	4
	.word	0
_Label_97:
	.ascii	"IdleFunction\0"
	.align
_Label_98:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_100:
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
_Label_492:
	push	r0
	sub	r1,1,r1
	bne	_Label_492
	mov	58,r13		! source line 58
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0AS",r10
!   prevThread = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-32]
! SEND STATEMENT...
	mov	70,r13		! source line 70
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
	mov	71,r13		! source line 71
	mov	"\0\0AS",r10
!   _P_Thread_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Thread_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_101 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_101 = 3  (sizeInBytes=4)
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
	mov	78,r13		! source line 78
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0WH",r10
_Label_102:
	mov	82,r13		! source line 82
	mov	"\0\0SE",r10
!   _temp_106 = &_P_Thread_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_105  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_105 then goto _Label_104 else goto _Label_103
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_103
	jmp	_Label_104
_Label_103:
	mov	82,r13		! source line 82
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0AS",r10
	mov	83,r13		! source line 83
	mov	"\0\0SE",r10
!   _temp_107 = &_P_Thread_threadsToBeDestroyed
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
	mov	84,r13		! source line 84
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_108 = th + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_108 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-16],r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_102
_Label_104:
! RETURN STATEMENT...
	mov	82,r13		! source line 82
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
	.word	_Label_109
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_110
	.word	8
	.word	4
	.word	_Label_111
	.word	-16
	.word	4
	.word	_Label_112
	.word	-20
	.word	4
	.word	_Label_113
	.word	-24
	.word	4
	.word	_Label_114
	.word	-9
	.word	1
	.word	_Label_115
	.word	-28
	.word	4
	.word	_Label_116
	.word	-32
	.word	4
	.word	_Label_117
	.word	-36
	.word	4
	.word	0
_Label_109:
	.ascii	"Run\0"
	.align
_Label_110:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_111:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_112:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_113:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_114:
	.byte	'C'
	.ascii	"_temp_105\0"
	.align
_Label_115:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_116:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_117:
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
	mov	14,r1
_Label_493:
	push	r0
	sub	r1,1,r1
	bne	_Label_493
	mov	90,r13		! source line 90
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	97,r13		! source line 97
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	97,r13		! source line 97
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_118 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_118  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	98,r13		! source line 98
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0SE",r10
!   _temp_119 = _function_49_ThreadPrint
	set	_function_49_ThreadPrint,r1
	store	r1,[r14+-48]
!   _temp_120 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_119  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0SE",r10
!   _temp_121 = _function_49_ThreadPrint
	set	_function_49_ThreadPrint,r1
	store	r1,[r14+-40]
!   _temp_122 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_121  sizeInBytes=4
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
! SEND STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0SE",r10
!   _temp_123 = _function_49_ThreadPrint
	set	_function_49_ThreadPrint,r1
	store	r1,[r14+-32]
!   _temp_124 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_123  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0SE",r10
!   _temp_125 = _function_49_ThreadPrint
	set	_function_49_ThreadPrint,r1
	store	r1,[r14+-24]
!   _temp_126 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_125  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0SE",r10
!   _temp_127 = _function_49_ThreadPrint
	set	_function_49_ThreadPrint,r1
	store	r1,[r14+-16]
!   _temp_128 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_127  sizeInBytes=4
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
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_129
	.word	0		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_130
	.word	-12
	.word	4
	.word	_Label_131
	.word	-16
	.word	4
	.word	_Label_132
	.word	-20
	.word	4
	.word	_Label_133
	.word	-24
	.word	4
	.word	_Label_134
	.word	-28
	.word	4
	.word	_Label_135
	.word	-32
	.word	4
	.word	_Label_136
	.word	-36
	.word	4
	.word	_Label_137
	.word	-40
	.word	4
	.word	_Label_138
	.word	-44
	.word	4
	.word	_Label_139
	.word	-48
	.word	4
	.word	_Label_140
	.word	-52
	.word	4
	.word	_Label_141
	.word	-56
	.word	4
	.word	0
_Label_129:
	.ascii	"PrintReadyList\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_125\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_124\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_141:
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
_Label_494:
	push	r0
	sub	r1,1,r1
	bne	_Label_494
	mov	109,r13		! source line 109
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	121,r13		! source line 121
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0AS",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_142 = _P_Thread_currentThread + 80
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_142  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_144 = _P_Thread_currentThread + 84
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_143 = *_temp_144  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_143  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	123,r13		! source line 123
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! CALL STATEMENT...
!   _temp_145 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_145  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	125,r13		! source line 125
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! RETURN STATEMENT...
	mov	125,r13		! source line 125
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
	.word	_Label_146
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_147
	.word	-12
	.word	4
	.word	_Label_148
	.word	-16
	.word	4
	.word	_Label_149
	.word	-20
	.word	4
	.word	_Label_150
	.word	-24
	.word	4
	.word	_Label_151
	.word	-28
	.word	4
	.word	_Label_152
	.word	-32
	.word	4
	.word	0
_Label_146:
	.ascii	"ThreadStartMain\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_151:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_152:
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
_Label_495:
	push	r0
	sub	r1,1,r1
	bne	_Label_495
	mov	130,r13		! source line 130
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	141,r13		! source line 141
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	141,r13		! source line 141
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! SEND STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0SE",r10
!   _temp_153 = &_P_Thread_threadsToBeDestroyed
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
	mov	146,r13		! source line 146
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
	mov	148,r13		! source line 148
	mov	"\0\0DE",r10
	debug
! RETURN STATEMENT...
	mov	148,r13		! source line 148
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
	.word	_Label_154
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_155
	.word	-12
	.word	4
	.word	_Label_156
	.word	-16
	.word	4
	.word	0
_Label_154:
	.ascii	"ThreadFinish\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_156:
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
_Label_496:
	push	r0
	sub	r1,1,r1
	bne	_Label_496
	mov	153,r13		! source line 153
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	160,r13		! source line 160
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! CALL STATEMENT...
!   _temp_157 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_157  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	161,r13		! source line 161
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0IF",r10
!   if _P_Thread_currentThread == 0 then goto _Label_159		(int)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_159
!	_Label_158	jmp	_Label_158
_Label_158:
! THEN...
	mov	163,r13		! source line 163
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_160 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_160  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	163,r13		! source line 163
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_162 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Data Move: _temp_161 = *_temp_162  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_161  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_159:
! CALL STATEMENT...
!   _temp_163 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_163  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_164 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_164  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	169,r13		! source line 169
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
	.word	_Label_165
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_166
	.word	8
	.word	4
	.word	_Label_167
	.word	-12
	.word	4
	.word	_Label_168
	.word	-16
	.word	4
	.word	_Label_169
	.word	-20
	.word	4
	.word	_Label_170
	.word	-24
	.word	4
	.word	_Label_171
	.word	-28
	.word	4
	.word	_Label_172
	.word	-32
	.word	4
	.word	_Label_173
	.word	-36
	.word	4
	.word	0
_Label_165:
	.ascii	"FatalError\0"
	.align
_Label_166:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_163\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_160\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_157\0"
	.align
_Label_173:
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
_Label_497:
	push	r0
	sub	r1,1,r1
	bne	_Label_497
	mov	174,r13		! source line 174
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	187,r13		! source line 187
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0AS",r10
!   oldStat = _P_Thread_currentInterruptStatus		(4 bytes)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_175		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_175
!	_Label_174	jmp	_Label_174
_Label_174:
! THEN...
	mov	190,r13		! source line 190
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	190,r13		! source line 190
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	191,r13		! source line 191
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_176
_Label_175:
! ELSE...
	mov	193,r13		! source line 193
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	194,r13		! source line 194
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_176:
! RETURN STATEMENT...
	mov	196,r13		! source line 196
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
	.word	_Label_177
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_178
	.word	8
	.word	4
	.word	_Label_179
	.word	-12
	.word	4
	.word	0
_Label_177:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_178:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_179:
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
_Label_498:
	push	r0
	sub	r1,1,r1
	bne	_Label_498
	mov	201,r13		! source line 201
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0IF",r10
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioInt
!   Retrieve Result: targetName=_temp_182  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
	mov	213,r13		! source line 213
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
!   Retrieve Result: targetName=_temp_183  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   if _temp_182 < _temp_183 then goto _Label_181		(int)
	load	[r14+-16],r1
	load	[r14+-12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_181
!	_Label_180	jmp	_Label_180
_Label_180:
! THEN...
	mov	214,r13		! source line 214
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	214,r13		! source line 214
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
_Label_181:
! ASSIGNMENT STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	217,r13		! source line 217
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
	.word	_Label_184
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_185
	.word	-12
	.word	4
	.word	_Label_186
	.word	-16
	.word	4
	.word	0
_Label_184:
	.ascii	"TimerInterruptHandler\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
! 
! ===============  FUNCTION ThreadPrint  ===============
! 
_function_49_ThreadPrint:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_49_ThreadPrint,r1
	push	r1
	mov	17,r1
_Label_499:
	push	r0
	sub	r1,1,r1
	bne	_Label_499
	mov	222,r13		! source line 222
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	229,r13		! source line 229
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   _temp_187 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_187  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	230,r13		! source line 230
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_189 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-60]
!   Data Move: _temp_188 = *_temp_189  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_188  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	231,r13		! source line 231
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_190 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_190  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	232,r13		! source line 232
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	233,r13		! source line 233
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_199 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-48]
!   Data Move: _temp_198 = *_temp_199  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Branch to the right case label
	load	[r14+-52],r1
	cmp	r1,1
	be	_Label_193
	cmp	r1,2
	be	_Label_194
	cmp	r1,3
	be	_Label_195
	cmp	r1,4
	be	_Label_196
	cmp	r1,5
	be	_Label_197
	jmp	_Label_191
! CASE 1...
_Label_193:
! CALL STATEMENT...
!   _temp_200 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_200  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	235,r13		! source line 235
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0BR",r10
	jmp	_Label_192
! CASE 2...
_Label_194:
! CALL STATEMENT...
!   _temp_201 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_201  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	238,r13		! source line 238
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0BR",r10
	jmp	_Label_192
! CASE 3...
_Label_195:
! CALL STATEMENT...
!   _temp_202 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_202  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	241,r13		! source line 241
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0BR",r10
	jmp	_Label_192
! CASE 4...
_Label_196:
! CALL STATEMENT...
!   _temp_203 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_203  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0BR",r10
	jmp	_Label_192
! CASE 5...
_Label_197:
! CALL STATEMENT...
!   _temp_204 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_204  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	247,r13		! source line 247
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0BR",r10
	jmp	_Label_192
! DEFAULT CASE...
_Label_191:
! CALL STATEMENT...
!   _temp_205 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_205  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	250,r13		! source line 250
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_192:
! CALL STATEMENT...
!   _temp_206 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_206  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	252,r13		! source line 252
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_207 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_207  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	253,r13		! source line 253
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_208 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_208  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	255,r13		! source line 255
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	257,r13		! source line 257
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! RETURN STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_49_ThreadPrint:
	.word	_sourceFileName
	.word	_Label_209
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_210
	.word	8
	.word	4
	.word	_Label_211
	.word	-12
	.word	4
	.word	_Label_212
	.word	-16
	.word	4
	.word	_Label_213
	.word	-20
	.word	4
	.word	_Label_214
	.word	-24
	.word	4
	.word	_Label_215
	.word	-28
	.word	4
	.word	_Label_216
	.word	-32
	.word	4
	.word	_Label_217
	.word	-36
	.word	4
	.word	_Label_218
	.word	-40
	.word	4
	.word	_Label_219
	.word	-44
	.word	4
	.word	_Label_220
	.word	-48
	.word	4
	.word	_Label_221
	.word	-52
	.word	4
	.word	_Label_222
	.word	-56
	.word	4
	.word	_Label_223
	.word	-60
	.word	4
	.word	_Label_224
	.word	-64
	.word	4
	.word	_Label_225
	.word	-68
	.word	4
	.word	_Label_226
	.word	-72
	.word	4
	.word	0
_Label_209:
	.ascii	"ThreadPrint\0"
	.align
_Label_210:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_226:
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
_Label_500:
	push	r0
	sub	r1,1,r1
	bne	_Label_500
	mov	260,r13		! source line 260
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0IF",r10
	mov	261,r13		! source line 261
	mov	"\0\0SE",r10
!   _temp_230 = &_P_Thread_one
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
!   Retrieve Result: targetName=_temp_229  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_229 then goto _Label_228 else goto _Label_227
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_227
	jmp	_Label_228
_Label_227:
! THEN...
	mov	262,r13		! source line 262
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_231
_Label_228:
! ELSE...
	mov	263,r13		! source line 263
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
	mov	263,r13		! source line 263
	mov	"\0\0SE",r10
!   _temp_235 = &_P_Thread_two
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
!   Retrieve Result: targetName=_temp_234  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_234 then goto _Label_233 else goto _Label_232
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_232
	jmp	_Label_233
_Label_232:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0RE",r10
!   ReturnResult: 2  (sizeInBytes=4)
	mov	2,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_236
_Label_233:
! ELSE...
	mov	265,r13		! source line 265
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	265,r13		! source line 265
	mov	"\0\0IF",r10
	mov	265,r13		! source line 265
	mov	"\0\0SE",r10
!   _temp_240 = &_P_Thread_three
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
!   Retrieve Result: targetName=_temp_239  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_239 then goto _Label_238 else goto _Label_237
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_237
	jmp	_Label_238
_Label_237:
! THEN...
	mov	266,r13		! source line 266
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0RE",r10
!   ReturnResult: 3  (sizeInBytes=4)
	mov	3,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_241
_Label_238:
! ELSE...
	mov	267,r13		! source line 267
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
	mov	267,r13		! source line 267
	mov	"\0\0SE",r10
!   _temp_245 = &_P_Thread_four
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
!   Retrieve Result: targetName=_temp_244  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_244 then goto _Label_243 else goto _Label_242
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_242
	jmp	_Label_243
_Label_242:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0RE",r10
!   ReturnResult: 4  (sizeInBytes=4)
	mov	4,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_246
_Label_243:
! ELSE...
	mov	269,r13		! source line 269
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0IF",r10
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   _temp_250 = &_P_Thread_five
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
!   Retrieve Result: targetName=_temp_249  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_249 then goto _Label_248 else goto _Label_247
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_247
	jmp	_Label_248
_Label_247:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0RE",r10
!   ReturnResult: 5  (sizeInBytes=4)
	mov	5,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_248:
! END IF...
_Label_246:
! END IF...
_Label_241:
! END IF...
_Label_236:
! END IF...
_Label_231:
! RETURN STATEMENT...
	mov	272,r13		! source line 272
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
	.word	_Label_251
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_252
	.word	-20
	.word	4
	.word	_Label_253
	.word	-9
	.word	1
	.word	_Label_254
	.word	-24
	.word	4
	.word	_Label_255
	.word	-10
	.word	1
	.word	_Label_256
	.word	-28
	.word	4
	.word	_Label_257
	.word	-11
	.word	1
	.word	_Label_258
	.word	-32
	.word	4
	.word	_Label_259
	.word	-12
	.word	1
	.word	_Label_260
	.word	-36
	.word	4
	.word	_Label_261
	.word	-13
	.word	1
	.word	0
_Label_251:
	.ascii	"highestPrioInt\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_253:
	.byte	'C'
	.ascii	"_temp_249\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_255:
	.byte	'C'
	.ascii	"_temp_244\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_257:
	.byte	'C'
	.ascii	"_temp_239\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_259:
	.byte	'C'
	.ascii	"_temp_234\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_261:
	.byte	'C'
	.ascii	"_temp_229\0"
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
_Label_501:
	push	r0
	sub	r1,1,r1
	bne	_Label_501
	mov	275,r13		! source line 275
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0AS",r10
!   Call the function
	mov	277,r13		! source line 277
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioInt
!   Retrieve Result: targetName=prioInt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_262 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_262  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prioInt  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	279,r13		! source line 279
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_263 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_263  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	280,r13		! source line 280
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	281,r13		! source line 281
	mov	"\0\0RE",r10
	mov	281,r13		! source line 281
	mov	"\0\0SE",r10
!   Prepare Argument: offset=8  value=prioInt  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	281,r13		! source line 281
	mov	"\0\0CA",r10
	call	_P_Thread_intToQ
!   Retrieve Result: targetName=_temp_265  sizeInBytes=12
	mov	3,r3
	mov	r15,r5
	add	r14,-24,r4
_Label_502:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_502
!   _temp_266 = &_temp_265
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
!   Retrieve Result: targetName=_temp_264  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_264  (sizeInBytes=4)
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
	.word	_Label_267
	.word	0		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_268
	.word	-12
	.word	4
	.word	_Label_269
	.word	-24
	.word	12
	.word	_Label_270
	.word	-28
	.word	4
	.word	_Label_271
	.word	-32
	.word	4
	.word	_Label_272
	.word	-36
	.word	4
	.word	_Label_273
	.word	-40
	.word	4
	.word	0
_Label_267:
	.ascii	"highestPrioThread\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_273:
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
	mov	284,r13		! source line 284
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	285,r13		! source line 285
	mov	"\0\0IF",r10
!   if prio != 1 then goto _Label_275		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_275
!	_Label_274	jmp	_Label_274
_Label_274:
! THEN...
	mov	286,r13		! source line 286
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_one  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_one,r5
_Label_503:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_503
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_276
_Label_275:
! ELSE...
	mov	287,r13		! source line 287
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	287,r13		! source line 287
	mov	"\0\0IF",r10
!   if prio != 2 then goto _Label_278		(int)
	load	[r14+8],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_278
!	_Label_277	jmp	_Label_277
_Label_277:
! THEN...
	mov	288,r13		! source line 288
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	288,r13		! source line 288
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_two  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_two,r5
_Label_504:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_504
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_279
_Label_278:
! ELSE...
	mov	289,r13		! source line 289
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0IF",r10
!   if prio != 3 then goto _Label_281		(int)
	load	[r14+8],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_281
!	_Label_280	jmp	_Label_280
_Label_280:
! THEN...
	mov	290,r13		! source line 290
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_three  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_three,r5
_Label_505:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_505
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_282
_Label_281:
! ELSE...
	mov	291,r13		! source line 291
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0IF",r10
!   if prio != 4 then goto _Label_284		(int)
	load	[r14+8],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_284
!	_Label_283	jmp	_Label_283
_Label_283:
! THEN...
	mov	292,r13		! source line 292
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_four  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_four,r5
_Label_506:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_506
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_284:
! END IF...
_Label_282:
! END IF...
_Label_279:
! END IF...
_Label_276:
! RETURN STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_five  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_five,r5
_Label_507:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_507
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_intToQ:
	.word	_sourceFileName
	.word	_Label_285
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_286
	.word	8
	.word	4
	.word	0
_Label_285:
	.ascii	"intToQ\0"
	.align
_Label_286:
	.byte	'I'
	.ascii	"prio\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Thread_Thread:
	.word	_Label_287
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
_Label_287:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_288
	.word	_sourceFileName
	.word	43		! line number
	.word	4100		! size of instances, in bytes
	.word	_P_Thread_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_288:
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
_Label_508:
	push	r0
	sub	r1,1,r1
	bne	_Label_508
	mov	301,r13		! source line 301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0AS",r10
!   _temp_289 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_289) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_289 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-108],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0AS",r10
!   _temp_290 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-104]
!   Move address of _temp_290 [0 ] into _temp_291
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
!   Data Move: *_temp_291 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0AS",r10
!   _temp_292 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-96]
!   Move address of _temp_292 [999 ] into _temp_293
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
!   Data Move: *_temp_293 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0AS",r10
!   _temp_294 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-88]
!   Move address of _temp_294 [999 ] into _temp_295
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
!   stackTop = _temp_295		(4 bytes)
	load	[r14+-84],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   _temp_296 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-80]
!   NEW ARRAY Constructor...
!   _temp_298 = &_temp_297
	add	r14,-76,r1
	store	r1,[r14+-20]
!   _temp_298 = _temp_298 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	13,r1
	store	r1,[r14+-16]
_Label_300:
!   Data Move: *_temp_298 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_298 = _temp_298 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_299 = _temp_299 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_299) then goto _Label_300
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_300
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-76]
!   _temp_301 = &_temp_297
	add	r14,-76,r1
	store	r1,[r14+-12]
!   make sure array has size 13
	load	[r14+-80],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_509
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_509:
!   make sure array has size 13
	load	[r14+-12],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_296 = *_temp_301  (sizeInBytes=56)
	load	[r14+-12],r5
	load	[r14+-80],r4
	mov	14,r3
_Label_510:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_510
! ASSIGNMENT STATEMENT...
	mov	315,r13		! source line 315
	mov	"\0\0AS",r10
!   time = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4092]
! RETURN STATEMENT...
	mov	315,r13		! source line 315
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
	.word	_Label_302
	.word	8		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_303
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_304
	.word	12
	.word	4
	.word	_Label_305
	.word	-12
	.word	4
	.word	_Label_306
	.word	-16
	.word	4
	.word	_Label_307
	.word	-20
	.word	4
	.word	_Label_308
	.word	-76
	.word	56
	.word	_Label_309
	.word	-80
	.word	4
	.word	_Label_310
	.word	-84
	.word	4
	.word	_Label_311
	.word	-88
	.word	4
	.word	_Label_312
	.word	-92
	.word	4
	.word	_Label_313
	.word	-96
	.word	4
	.word	_Label_314
	.word	-100
	.word	4
	.word	_Label_315
	.word	-104
	.word	4
	.word	_Label_316
	.word	-108
	.word	4
	.word	0
_Label_302:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_303:
	.ascii	"Pself\0"
	.align
_Label_304:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_289\0"
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
_Label_511:
	push	r0
	sub	r1,1,r1
	bne	_Label_511
	mov	320,r13		! source line 320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	331,r13		! source line 331
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
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
	mov	336,r13		! source line 336
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_317 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-32]
!   Data Move: *stackTop = _temp_317  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	338,r13		! source line 338
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=priority  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4096],r1
	store	r1,[r15+0]
!   Call the function
	mov	338,r13		! source line 338
	mov	"\0\0CA",r10
	call	_P_Thread_intToQ
!   Retrieve Result: targetName=_temp_319  sizeInBytes=12
	mov	3,r3
	mov	r15,r5
	add	r14,-24,r4
_Label_512:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_512
!   _temp_320 = &_temp_319
	add	r14,-24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_318  sizeInBytes=4
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
	mov	339,r13		! source line 339
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	339,r13		! source line 339
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	339,r13		! source line 339
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
	.word	_Label_321
	.word	12		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_322
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_323
	.word	12
	.word	4
	.word	_Label_324
	.word	16
	.word	4
	.word	_Label_325
	.word	-12
	.word	4
	.word	_Label_326
	.word	-24
	.word	12
	.word	_Label_327
	.word	-28
	.word	4
	.word	_Label_328
	.word	-32
	.word	4
	.word	_Label_329
	.word	-36
	.word	4
	.word	_Label_330
	.word	-40
	.word	4
	.word	0
_Label_321:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_322:
	.ascii	"Pself\0"
	.align
_Label_323:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_324:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_329:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_330:
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
_Label_513:
	push	r0
	sub	r1,1,r1
	bne	_Label_513
	mov	344,r13		! source line 344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	360,r13		! source line 360
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if _temp_333 == _P_Thread_currentThread then goto _Label_332		(int)
	load	[r14+-40],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_332
!	_Label_331	jmp	_Label_331
_Label_331:
! THEN...
	mov	361,r13		! source line 361
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_334 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	361,r13		! source line 361
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_332:
! ASSIGNMENT STATEMENT...
	mov	363,r13		! source line 363
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	363,r13		! source line 363
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	367,r13		! source line 367
	mov	"\0\0AS",r10
!   Call the function
	mov	367,r13		! source line 367
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioThread
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! IF STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_336		(int)
	load	[r14+-44],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_336
!	_Label_335	jmp	_Label_335
_Label_335:
! THEN...
	mov	372,r13		! source line 372
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	372,r13		! source line 372
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_338		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_338
!	_Label_337	jmp	_Label_337
_Label_337:
! THEN...
	mov	373,r13		! source line 373
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_339 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	373,r13		! source line 373
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_338:
! ASSIGNMENT STATEMENT...
	mov	375,r13		! source line 375
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	377,r13		! source line 377
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=priority  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4096],r1
	store	r1,[r15+0]
!   Call the function
	mov	377,r13		! source line 377
	mov	"\0\0CA",r10
	call	_P_Thread_intToQ
!   Retrieve Result: targetName=_temp_341  sizeInBytes=12
	mov	3,r3
	mov	r15,r5
	add	r14,-24,r4
_Label_514:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_514
!   _temp_342 = &_temp_341
	add	r14,-24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_340  sizeInBytes=4
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
	mov	378,r13		! source line 378
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! END IF...
_Label_336:
! ASSIGNMENT STATEMENT...
	mov	380,r13		! source line 380
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	380,r13		! source line 380
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	380,r13		! source line 380
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
	.word	_Label_343
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_344
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_345
	.word	-12
	.word	4
	.word	_Label_346
	.word	-24
	.word	12
	.word	_Label_347
	.word	-28
	.word	4
	.word	_Label_348
	.word	-32
	.word	4
	.word	_Label_349
	.word	-36
	.word	4
	.word	_Label_350
	.word	-40
	.word	4
	.word	_Label_351
	.word	-44
	.word	4
	.word	_Label_352
	.word	-48
	.word	4
	.word	_Label_353
	.word	-52
	.word	4
	.word	0
_Label_343:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_344:
	.ascii	"Pself\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_351:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_352:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_353:
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
_Label_515:
	push	r0
	sub	r1,1,r1
	bne	_Label_515
	mov	385,r13		! source line 385
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0IF",r10
!   if _P_Thread_currentInterruptStatus == 2 then goto _Label_355		(int)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_355
!	_Label_354	jmp	_Label_354
_Label_354:
! THEN...
	mov	398,r13		! source line 398
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_356 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_355:
! IF STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if _temp_359 == _P_Thread_currentThread then goto _Label_358		(int)
	load	[r14+-20],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_358
!	_Label_357	jmp	_Label_357
_Label_357:
! THEN...
	mov	402,r13		! source line 402
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_360 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_360  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_358:
! ASSIGNMENT STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	408,r13		! source line 408
	mov	"\0\0AS",r10
!   Call the function
	mov	408,r13		! source line 408
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioThread
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_361
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_361
	jmp	_Label_362
_Label_361:
! THEN...
	mov	410,r13		! source line 410
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_363 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	410,r13		! source line 410
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_362:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	412,r13		! source line 412
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! RETURN STATEMENT...
	mov	412,r13		! source line 412
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
	.word	_Label_364
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_365
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_366
	.word	-12
	.word	4
	.word	_Label_367
	.word	-16
	.word	4
	.word	_Label_368
	.word	-20
	.word	4
	.word	_Label_369
	.word	-24
	.word	4
	.word	_Label_370
	.word	-28
	.word	4
	.word	0
_Label_364:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_365:
	.ascii	"Pself\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_370:
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
_Label_516:
	push	r0
	sub	r1,1,r1
	bne	_Label_516
	mov	417,r13		! source line 417
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0IF",r10
!   _temp_374 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_374 [0 ] into _temp_375
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
!   Data Move: _temp_373 = *_temp_375  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_373 == 606348324 then goto _Label_372		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_372
!	_Label_371	jmp	_Label_371
_Label_371:
! THEN...
	mov	424,r13		! source line 424
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_376 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	424,r13		! source line 424
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
	jmp	_Label_377
_Label_372:
! ELSE...
	mov	425,r13		! source line 425
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0IF",r10
!   _temp_381 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_381 [999 ] into _temp_382
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
!   Data Move: _temp_380 = *_temp_382  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_380 == 606348324 then goto _Label_379		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_379
!	_Label_378	jmp	_Label_378
_Label_378:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_383 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_383  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	426,r13		! source line 426
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_379:
! END IF...
_Label_377:
! RETURN STATEMENT...
	mov	423,r13		! source line 423
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
	.word	_Label_384
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_385
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_386
	.word	-12
	.word	4
	.word	_Label_387
	.word	-16
	.word	4
	.word	_Label_388
	.word	-20
	.word	4
	.word	_Label_389
	.word	-24
	.word	4
	.word	_Label_390
	.word	-28
	.word	4
	.word	_Label_391
	.word	-32
	.word	4
	.word	_Label_392
	.word	-36
	.word	4
	.word	_Label_393
	.word	-40
	.word	4
	.word	0
_Label_384:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_385:
	.ascii	"Pself\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_373\0"
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
_Label_517:
	push	r0
	sub	r1,1,r1
	bne	_Label_517
	mov	432,r13		! source line 432
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! CALL STATEMENT...
!   _temp_394 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_394  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	439,r13		! source line 439
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_395 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_395  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	440,r13		! source line 440
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_396  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	441,r13		! source line 441
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_397 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	442,r13		! source line 442
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_398 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	443,r13		! source line 443
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=priority  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4096],r1
	store	r1,[r15+0]
!   Call the function
	mov	444,r13		! source line 444
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_399 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	445,r13		! source line 445
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_400 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	446,r13		! source line 446
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_405 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
!   Calculate and save the FOR-LOOP ending value
!   _temp_406 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-104]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_405  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+-140]
_Label_401:
!   Perform the FOR-LOOP termination test
!   if i > _temp_406 then goto _Label_404		
	load	[r14+-140],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_404
_Label_402:
	mov	447,r13		! source line 447
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_407 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_407  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	448,r13		! source line 448
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_408 = i + 2		(int)
	load	[r14+-140],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	449,r13		! source line 449
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_409 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_409  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	450,r13		! source line 450
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_411 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   Move address of _temp_411 [i ] into _temp_412
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
!   Data Move: _temp_410 = *_temp_412  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_410  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	451,r13		! source line 451
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_413 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	452,r13		! source line 452
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_415 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Move address of _temp_415 [i ] into _temp_416
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
!   Data Move: _temp_414 = *_temp_416  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_414  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	453,r13		! source line 453
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_417 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_417  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	454,r13		! source line 454
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_403:
!   i = i + 1
	load	[r14+-140],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
	jmp	_Label_401
! END FOR
_Label_404:
! CALL STATEMENT...
!   _temp_418 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-56]
!   _temp_419 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_418  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_419  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	456,r13		! source line 456
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_420 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-48]
!   _temp_422 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-40]
!   Move address of _temp_422 [0 ] into _temp_423
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
!   _temp_421 = _temp_423		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_421  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	457,r13		! source line 457
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	458,r13		! source line 458
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_426
	cmp	r1,2
	be	_Label_427
	cmp	r1,3
	be	_Label_428
	cmp	r1,4
	be	_Label_429
	cmp	r1,5
	be	_Label_430
	jmp	_Label_424
! CASE 1...
_Label_426:
! CALL STATEMENT...
!   _temp_431 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_431  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	460,r13		! source line 460
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0BR",r10
	jmp	_Label_425
! CASE 2...
_Label_427:
! CALL STATEMENT...
!   _temp_432 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_432  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	463,r13		! source line 463
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0BR",r10
	jmp	_Label_425
! CASE 3...
_Label_428:
! CALL STATEMENT...
!   _temp_433 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_433  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	466,r13		! source line 466
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0BR",r10
	jmp	_Label_425
! CASE 4...
_Label_429:
! CALL STATEMENT...
!   _temp_434 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_434  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	469,r13		! source line 469
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	470,r13		! source line 470
	mov	"\0\0BR",r10
	jmp	_Label_425
! CASE 5...
_Label_430:
! CALL STATEMENT...
!   _temp_435 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	472,r13		! source line 472
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0BR",r10
	jmp	_Label_425
! DEFAULT CASE...
_Label_424:
! CALL STATEMENT...
!   _temp_436 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_436  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	475,r13		! source line 475
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_425:
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! RETURN STATEMENT...
	mov	477,r13		! source line 477
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
	.word	_Label_437
	.word	4		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_438
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_439
	.word	-12
	.word	4
	.word	_Label_440
	.word	-16
	.word	4
	.word	_Label_441
	.word	-20
	.word	4
	.word	_Label_442
	.word	-24
	.word	4
	.word	_Label_443
	.word	-28
	.word	4
	.word	_Label_444
	.word	-32
	.word	4
	.word	_Label_445
	.word	-36
	.word	4
	.word	_Label_446
	.word	-40
	.word	4
	.word	_Label_447
	.word	-44
	.word	4
	.word	_Label_448
	.word	-48
	.word	4
	.word	_Label_449
	.word	-52
	.word	4
	.word	_Label_450
	.word	-56
	.word	4
	.word	_Label_451
	.word	-60
	.word	4
	.word	_Label_452
	.word	-64
	.word	4
	.word	_Label_453
	.word	-68
	.word	4
	.word	_Label_454
	.word	-72
	.word	4
	.word	_Label_455
	.word	-76
	.word	4
	.word	_Label_456
	.word	-80
	.word	4
	.word	_Label_457
	.word	-84
	.word	4
	.word	_Label_458
	.word	-88
	.word	4
	.word	_Label_459
	.word	-92
	.word	4
	.word	_Label_460
	.word	-96
	.word	4
	.word	_Label_461
	.word	-100
	.word	4
	.word	_Label_462
	.word	-104
	.word	4
	.word	_Label_463
	.word	-108
	.word	4
	.word	_Label_464
	.word	-112
	.word	4
	.word	_Label_465
	.word	-116
	.word	4
	.word	_Label_466
	.word	-120
	.word	4
	.word	_Label_467
	.word	-124
	.word	4
	.word	_Label_468
	.word	-128
	.word	4
	.word	_Label_469
	.word	-132
	.word	4
	.word	_Label_470
	.word	-136
	.word	4
	.word	_Label_471
	.word	-140
	.word	4
	.word	_Label_472
	.word	-144
	.word	4
	.word	0
_Label_437:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_438:
	.ascii	"Pself\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_471:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_472:
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
	mov	10,r1
_Label_518:
	push	r0
	sub	r1,1,r1
	bne	_Label_518
	mov	481,r13		! source line 481
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   priority = prio		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4096]
! SEND STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=prio  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	483,r13		! source line 483
	mov	"\0\0CA",r10
	call	_P_Thread_intToQ
!   Retrieve Result: targetName=_temp_474  sizeInBytes=12
	mov	3,r3
	mov	r15,r5
	add	r14,-32,r4
_Label_519:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_519
!   _temp_475 = &_temp_474
	add	r14,-32,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_473  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_476 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_476  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	484,r13		! source line 484
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prio  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	485,r13		! source line 485
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_477 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_477  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	486,r13		! source line 486
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_7:
	.word	_sourceFileName
	.word	_Label_478
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_479
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_480
	.word	12
	.word	4
	.word	_Label_481
	.word	-12
	.word	4
	.word	_Label_482
	.word	-16
	.word	4
	.word	_Label_483
	.word	-20
	.word	4
	.word	_Label_484
	.word	-32
	.word	12
	.word	_Label_485
	.word	-36
	.word	4
	.word	0
_Label_478:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"setPriority\0"
	.align
_Label_479:
	.ascii	"Pself\0"
	.align
_Label_480:
	.byte	'I'
	.ascii	"prio\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_476\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_473\0"
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
	mov	489,r13		! source line 489
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	490,r13		! source line 490
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
	.word	_Label_486
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_487
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_486:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"getPriority\0"
	.align
_Label_487:
	.ascii	"Pself\0"
	.align
