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
_StringConst_42:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_41:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_40:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_39:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_38:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_37:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_36:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_35:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_34:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_33:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_32:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_31:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_30:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_29:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_28:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_27:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_26:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_25:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_24:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_23:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_22:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_21:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_20:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
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
	set	0x1b47eebc,r4		! myHashVal = 457699004
	cmp	r3,r4
	be	_Label_45
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
_Label_45:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_46
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_46
_Label_46:
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
_Label_476:
	push	r0
	sub	r1,1,r1
	bne	_Label_476
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_47 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_47  sizeInBytes=4
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
_Label_477:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_477
!   _P_Thread_mainThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_56 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_57 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_56  sizeInBytes=4
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
!   _temp_58 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-36]
!   _temp_59 = _temp_58 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_59 = 3  (sizeInBytes=4)
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
_Label_478:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_478
!   _P_Thread_idleThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0SE",r10
!   _temp_61 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_62 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_61  sizeInBytes=4
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
!   _temp_63 = _function_44_IdleFunction
	set	_function_44_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_64 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_63  sizeInBytes=4
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
	.word	_Label_65
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_66
	.word	-12
	.word	4
	.word	_Label_67
	.word	-16
	.word	4
	.word	_Label_68
	.word	-20
	.word	4
	.word	_Label_69
	.word	-24
	.word	4
	.word	_Label_70
	.word	-28
	.word	4
	.word	_Label_71
	.word	-32
	.word	4
	.word	_Label_72
	.word	-36
	.word	4
	.word	_Label_73
	.word	-40
	.word	4
	.word	_Label_74
	.word	-44
	.word	4
	.word	_Label_75
	.word	-48
	.word	4
	.word	_Label_76
	.word	-52
	.word	4
	.word	_Label_77
	.word	-56
	.word	4
	.word	_Label_78
	.word	-60
	.word	4
	.word	_Label_79
	.word	-64
	.word	4
	.word	_Label_80
	.word	-68
	.word	4
	.word	_Label_81
	.word	-72
	.word	4
	.word	_Label_82
	.word	-76
	.word	4
	.word	_Label_83
	.word	-80
	.word	4
	.word	0
_Label_65:
	.ascii	"InitializeScheduler\0"
	.align
_Label_66:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_67:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_68:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_71:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_72:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_73:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_74:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_75:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_76:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_53\0"
	.align
_Label_78:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_79:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_80:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_44_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_44_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_479:
	push	r0
	sub	r1,1,r1
	bne	_Label_479
	mov	36,r13		! source line 36
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0WH",r10
_Label_84:
!	_Label_85	jmp	_Label_85
_Label_85:
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
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   _temp_89 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_87 else goto _Label_88
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_88
	jmp	_Label_87
_Label_87:
! THEN...
	mov	49,r13		! source line 49
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	49,r13		! source line 49
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_90
_Label_88:
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
_Label_90:
! END WHILE...
	jmp	_Label_84
_Label_86:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_44_IdleFunction:
	.word	_sourceFileName
	.word	_Label_91
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_92
	.word	8
	.word	4
	.word	_Label_93
	.word	-12
	.word	4
	.word	_Label_94
	.word	-16
	.word	4
	.word	0
_Label_91:
	.ascii	"IdleFunction\0"
	.align
_Label_92:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_94:
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
_Label_480:
	push	r0
	sub	r1,1,r1
	bne	_Label_480
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
!   _temp_95 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_95 = 3  (sizeInBytes=4)
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
_Label_96:
	mov	82,r13		! source line 82
	mov	"\0\0SE",r10
!   _temp_100 = &_P_Thread_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_99  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_99 then goto _Label_98 else goto _Label_97
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_97
	jmp	_Label_98
_Label_97:
	mov	82,r13		! source line 82
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0AS",r10
	mov	83,r13		! source line 83
	mov	"\0\0SE",r10
!   _temp_101 = &_P_Thread_threadsToBeDestroyed
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
!   _temp_102 = th + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_102 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-16],r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_96
_Label_98:
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
	.word	_Label_103
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_104
	.word	8
	.word	4
	.word	_Label_105
	.word	-16
	.word	4
	.word	_Label_106
	.word	-20
	.word	4
	.word	_Label_107
	.word	-24
	.word	4
	.word	_Label_108
	.word	-9
	.word	1
	.word	_Label_109
	.word	-28
	.word	4
	.word	_Label_110
	.word	-32
	.word	4
	.word	_Label_111
	.word	-36
	.word	4
	.word	0
_Label_103:
	.ascii	"Run\0"
	.align
_Label_104:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_105:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_106:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_108:
	.byte	'C'
	.ascii	"_temp_99\0"
	.align
_Label_109:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_110:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_111:
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
	mov	6,r1
_Label_481:
	push	r0
	sub	r1,1,r1
	bne	_Label_481
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
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_112 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_112  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	98,r13		! source line 98
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0SE",r10
!   _temp_113 = _function_43_ThreadPrint
	set	_function_43_ThreadPrint,r1
	store	r1,[r14+-16]
!   _temp_114 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_113  sizeInBytes=4
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
	mov	100,r13		! source line 100
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	100,r13		! source line 100
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_115
	.word	0		! total size of parameters
	.word	24		! frame size = 24
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
	.word	0
_Label_115:
	.ascii	"PrintReadyList\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_117:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_118:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_119:
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
_Label_482:
	push	r0
	sub	r1,1,r1
	bne	_Label_482
	mov	105,r13		! source line 105
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	117,r13		! source line 117
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0AS",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_120 = _P_Thread_currentThread + 80
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_120  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_122 = _P_Thread_currentThread + 84
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_121 = *_temp_122  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_121  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	119,r13		! source line 119
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	120,r13		! source line 120
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! CALL STATEMENT...
!   _temp_123 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_123  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	121,r13		! source line 121
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! RETURN STATEMENT...
	mov	121,r13		! source line 121
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
	.word	_Label_124
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_125
	.word	-12
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
	.word	-28
	.word	4
	.word	_Label_130
	.word	-32
	.word	4
	.word	0
_Label_124:
	.ascii	"ThreadStartMain\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_129:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_130:
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
_Label_483:
	push	r0
	sub	r1,1,r1
	bne	_Label_483
	mov	126,r13		! source line 126
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	137,r13		! source line 137
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! SEND STATEMENT...
	mov	141,r13		! source line 141
	mov	"\0\0SE",r10
!   _temp_131 = &_P_Thread_threadsToBeDestroyed
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
	mov	142,r13		! source line 142
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
	mov	144,r13		! source line 144
	mov	"\0\0DE",r10
	debug
! RETURN STATEMENT...
	mov	144,r13		! source line 144
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
	.word	_Label_132
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_133
	.word	-12
	.word	4
	.word	_Label_134
	.word	-16
	.word	4
	.word	0
_Label_132:
	.ascii	"ThreadFinish\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_134:
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
_Label_484:
	push	r0
	sub	r1,1,r1
	bne	_Label_484
	mov	149,r13		! source line 149
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	156,r13		! source line 156
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	156,r13		! source line 156
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! CALL STATEMENT...
!   _temp_135 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_135  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	157,r13		! source line 157
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	158,r13		! source line 158
	mov	"\0\0IF",r10
!   if _P_Thread_currentThread == 0 then goto _Label_137		(int)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_137
!	_Label_136	jmp	_Label_136
_Label_136:
! THEN...
	mov	159,r13		! source line 159
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_138 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_138  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	159,r13		! source line 159
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_140 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Data Move: _temp_139 = *_temp_140  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_139  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	160,r13		! source line 160
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_137:
! CALL STATEMENT...
!   _temp_141 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_141  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	162,r13		! source line 162
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	163,r13		! source line 163
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_142 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_142  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	165,r13		! source line 165
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
	.word	_Label_143
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_144
	.word	8
	.word	4
	.word	_Label_145
	.word	-12
	.word	4
	.word	_Label_146
	.word	-16
	.word	4
	.word	_Label_147
	.word	-20
	.word	4
	.word	_Label_148
	.word	-24
	.word	4
	.word	_Label_149
	.word	-28
	.word	4
	.word	_Label_150
	.word	-32
	.word	4
	.word	_Label_151
	.word	-36
	.word	4
	.word	0
_Label_143:
	.ascii	"FatalError\0"
	.align
_Label_144:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_151:
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
_Label_485:
	push	r0
	sub	r1,1,r1
	bne	_Label_485
	mov	170,r13		! source line 170
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	183,r13		! source line 183
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0AS",r10
!   oldStat = _P_Thread_currentInterruptStatus		(4 bytes)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	185,r13		! source line 185
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_153		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_153
!	_Label_152	jmp	_Label_152
_Label_152:
! THEN...
	mov	186,r13		! source line 186
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	187,r13		! source line 187
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_154
_Label_153:
! ELSE...
	mov	189,r13		! source line 189
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	190,r13		! source line 190
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_154:
! RETURN STATEMENT...
	mov	192,r13		! source line 192
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
	.word	_Label_155
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_156
	.word	8
	.word	4
	.word	_Label_157
	.word	-12
	.word	4
	.word	0
_Label_155:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_156:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_157:
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
	mov	1,r1
_Label_486:
	push	r0
	sub	r1,1,r1
	bne	_Label_486
	mov	197,r13		! source line 197
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	207,r13		! source line 207
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	209,r13		! source line 209
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
! ASSIGNMENT STATEMENT...
	mov	210,r13		! source line 210
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	210,r13		! source line 210
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_158
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_158:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION ThreadPrint  ===============
! 
_function_43_ThreadPrint:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_43_ThreadPrint,r1
	push	r1
	mov	17,r1
_Label_487:
	push	r0
	sub	r1,1,r1
	bne	_Label_487
	mov	215,r13		! source line 215
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	222,r13		! source line 222
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   _temp_159 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_159  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	223,r13		! source line 223
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_161 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-60]
!   Data Move: _temp_160 = *_temp_161  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_160  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_162 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_162  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	225,r13		! source line 225
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	226,r13		! source line 226
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_171 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-48]
!   Data Move: _temp_170 = *_temp_171  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Branch to the right case label
	load	[r14+-52],r1
	cmp	r1,1
	be	_Label_165
	cmp	r1,2
	be	_Label_166
	cmp	r1,3
	be	_Label_167
	cmp	r1,4
	be	_Label_168
	cmp	r1,5
	be	_Label_169
	jmp	_Label_163
! CASE 1...
_Label_165:
! CALL STATEMENT...
!   _temp_172 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_172  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	228,r13		! source line 228
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0BR",r10
	jmp	_Label_164
! CASE 2...
_Label_166:
! CALL STATEMENT...
!   _temp_173 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_173  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	231,r13		! source line 231
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0BR",r10
	jmp	_Label_164
! CASE 3...
_Label_167:
! CALL STATEMENT...
!   _temp_174 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_174  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	234,r13		! source line 234
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0BR",r10
	jmp	_Label_164
! CASE 4...
_Label_168:
! CALL STATEMENT...
!   _temp_175 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_175  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	237,r13		! source line 237
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0BR",r10
	jmp	_Label_164
! CASE 5...
_Label_169:
! CALL STATEMENT...
!   _temp_176 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_176  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	240,r13		! source line 240
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0BR",r10
	jmp	_Label_164
! DEFAULT CASE...
_Label_163:
! CALL STATEMENT...
!   _temp_177 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_177  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	243,r13		! source line 243
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_164:
! CALL STATEMENT...
!   _temp_178 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_178  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_179 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_179  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	246,r13		! source line 246
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_180 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_180  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	247,r13		! source line 247
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	248,r13		! source line 248
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	250,r13		! source line 250
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! RETURN STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_43_ThreadPrint:
	.word	_sourceFileName
	.word	_Label_181
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_182
	.word	8
	.word	4
	.word	_Label_183
	.word	-12
	.word	4
	.word	_Label_184
	.word	-16
	.word	4
	.word	_Label_185
	.word	-20
	.word	4
	.word	_Label_186
	.word	-24
	.word	4
	.word	_Label_187
	.word	-28
	.word	4
	.word	_Label_188
	.word	-32
	.word	4
	.word	_Label_189
	.word	-36
	.word	4
	.word	_Label_190
	.word	-40
	.word	4
	.word	_Label_191
	.word	-44
	.word	4
	.word	_Label_192
	.word	-48
	.word	4
	.word	_Label_193
	.word	-52
	.word	4
	.word	_Label_194
	.word	-56
	.word	4
	.word	_Label_195
	.word	-60
	.word	4
	.word	_Label_196
	.word	-64
	.word	4
	.word	_Label_197
	.word	-68
	.word	4
	.word	_Label_198
	.word	-72
	.word	4
	.word	0
_Label_181:
	.ascii	"ThreadPrint\0"
	.align
_Label_182:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_177\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_176\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_175\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_160\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_159\0"
	.align
_Label_198:
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
	mov	5,r1
_Label_488:
	push	r0
	sub	r1,1,r1
	bne	_Label_488
	mov	253,r13		! source line 253
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0IF",r10
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_201 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-24]
!   Send message IsEmpty
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_199 else goto _Label_200
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_200
	jmp	_Label_199
_Label_199:
! THEN...
	mov	255,r13		! source line 255
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_202
_Label_200:
! ELSE...
	mov	256,r13		! source line 256
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0IF",r10
	mov	256,r13		! source line 256
	mov	"\0\0SE",r10
!   _temp_205 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-20]
!   Send message IsEmpty
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_203 else goto _Label_204
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_204
	jmp	_Label_203
_Label_203:
! THEN...
	mov	257,r13		! source line 257
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0RE",r10
!   ReturnResult: 2  (sizeInBytes=4)
	mov	2,r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_206
_Label_204:
! ELSE...
	mov	258,r13		! source line 258
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0IF",r10
	mov	258,r13		! source line 258
	mov	"\0\0SE",r10
!   _temp_209 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-16]
!   Send message IsEmpty
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_207 else goto _Label_208
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_208
	jmp	_Label_207
_Label_207:
! THEN...
	mov	259,r13		! source line 259
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0RE",r10
!   ReturnResult: 3  (sizeInBytes=4)
	mov	3,r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_210
_Label_208:
! ELSE...
	mov	260,r13		! source line 260
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0IF",r10
	mov	260,r13		! source line 260
	mov	"\0\0SE",r10
!   _temp_213 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_211 else goto _Label_212
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_212
	jmp	_Label_211
_Label_211:
! THEN...
	mov	261,r13		! source line 261
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0RE",r10
!   ReturnResult: 4  (sizeInBytes=4)
	mov	4,r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_212:
! END IF...
_Label_210:
! END IF...
_Label_206:
! END IF...
_Label_202:
! RETURN STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0RE",r10
!   ReturnResult: 5  (sizeInBytes=4)
	mov	5,r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_highestPrioInt:
	.word	_sourceFileName
	.word	_Label_214
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_215
	.word	-12
	.word	4
	.word	_Label_216
	.word	-16
	.word	4
	.word	_Label_217
	.word	-20
	.word	4
	.word	_Label_218
	.word	-24
	.word	4
	.word	0
_Label_214:
	.ascii	"highestPrioInt\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_201\0"
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
	mov	12,r1
_Label_489:
	push	r0
	sub	r1,1,r1
	bne	_Label_489
	mov	266,r13		! source line 266
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0AS",r10
!   Call the function
	mov	268,r13		! source line 268
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioInt
!   Retrieve Result: targetName=prioInt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0IF",r10
!   if prioInt != 1 then goto _Label_220		(int)
	load	[r14+-52],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_220
!	_Label_219	jmp	_Label_219
_Label_219:
! THEN...
	mov	270,r13		! source line 270
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0RE",r10
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_222 = &_P_Thread_one
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
!   Retrieve Result: targetName=_temp_221  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_221  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_223
_Label_220:
! ELSE...
	mov	271,r13		! source line 271
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0IF",r10
!   if prioInt != 2 then goto _Label_225		(int)
	load	[r14+-52],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_225
!	_Label_224	jmp	_Label_224
_Label_224:
! THEN...
	mov	272,r13		! source line 272
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0RE",r10
	mov	272,r13		! source line 272
	mov	"\0\0SE",r10
!   _temp_227 = &_P_Thread_two
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
!   Retrieve Result: targetName=_temp_226  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_226  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_228
_Label_225:
! ELSE...
	mov	273,r13		! source line 273
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0IF",r10
!   if prioInt != 3 then goto _Label_230		(int)
	load	[r14+-52],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_230
!	_Label_229	jmp	_Label_229
_Label_229:
! THEN...
	mov	274,r13		! source line 274
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0RE",r10
	mov	274,r13		! source line 274
	mov	"\0\0SE",r10
!   _temp_232 = &_P_Thread_three
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
!   Retrieve Result: targetName=_temp_231  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_231  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_233
_Label_230:
! ELSE...
	mov	275,r13		! source line 275
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0IF",r10
!   if prioInt != 4 then goto _Label_235		(int)
	load	[r14+-52],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_235
!	_Label_234	jmp	_Label_234
_Label_234:
! THEN...
	mov	276,r13		! source line 276
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0RE",r10
	mov	276,r13		! source line 276
	mov	"\0\0SE",r10
!   _temp_237 = &_P_Thread_four
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
!   Retrieve Result: targetName=_temp_236  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_236  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_238
_Label_235:
! ELSE...
	mov	277,r13		! source line 277
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0IF",r10
!   if prioInt != 5 then goto _Label_240		(int)
	load	[r14+-52],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_240
!	_Label_239	jmp	_Label_239
_Label_239:
! THEN...
	mov	278,r13		! source line 278
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0RE",r10
	mov	278,r13		! source line 278
	mov	"\0\0SE",r10
!   _temp_242 = &_P_Thread_five
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
!   Retrieve Result: targetName=_temp_241  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_241  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_240:
! END IF...
_Label_238:
! END IF...
_Label_233:
! END IF...
_Label_228:
! END IF...
_Label_223:
! RETURN STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_highestPrioThread:
	.word	_sourceFileName
	.word	_Label_243
	.word	0		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_244
	.word	-12
	.word	4
	.word	_Label_245
	.word	-16
	.word	4
	.word	_Label_246
	.word	-20
	.word	4
	.word	_Label_247
	.word	-24
	.word	4
	.word	_Label_248
	.word	-28
	.word	4
	.word	_Label_249
	.word	-32
	.word	4
	.word	_Label_250
	.word	-36
	.word	4
	.word	_Label_251
	.word	-40
	.word	4
	.word	_Label_252
	.word	-44
	.word	4
	.word	_Label_253
	.word	-48
	.word	4
	.word	_Label_254
	.word	-52
	.word	4
	.word	0
_Label_243:
	.ascii	"highestPrioThread\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_254:
	.byte	'I'
	.ascii	"prioInt\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Thread_Thread:
	.word	_Label_255
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
_Label_255:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_256
	.word	_sourceFileName
	.word	42		! line number
	.word	4100		! size of instances, in bytes
	.word	_P_Thread_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_256:
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
_Label_490:
	push	r0
	sub	r1,1,r1
	bne	_Label_490
	mov	288,r13		! source line 288
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   _temp_257 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_257) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_257 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-108],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0AS",r10
!   _temp_258 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-104]
!   Move address of _temp_258 [0 ] into _temp_259
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
!   Data Move: *_temp_259 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0AS",r10
!   _temp_260 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-96]
!   Move address of _temp_260 [999 ] into _temp_261
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
!   Data Move: *_temp_261 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
!   _temp_262 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-88]
!   Move address of _temp_262 [999 ] into _temp_263
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
!   stackTop = _temp_263		(4 bytes)
	load	[r14+-84],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0AS",r10
!   _temp_264 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-80]
!   NEW ARRAY Constructor...
!   _temp_266 = &_temp_265
	add	r14,-76,r1
	store	r1,[r14+-20]
!   _temp_266 = _temp_266 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	13,r1
	store	r1,[r14+-16]
_Label_268:
!   Data Move: *_temp_266 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_266 = _temp_266 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_267 = _temp_267 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_267) then goto _Label_268
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_268
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-76]
!   _temp_269 = &_temp_265
	add	r14,-76,r1
	store	r1,[r14+-12]
!   make sure array has size 13
	load	[r14+-80],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_491
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_491:
!   make sure array has size 13
	load	[r14+-12],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_264 = *_temp_269  (sizeInBytes=56)
	load	[r14+-12],r5
	load	[r14+-80],r4
	mov	14,r3
_Label_492:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_492
! RETURN STATEMENT...
	mov	300,r13		! source line 300
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
	.word	_Label_270
	.word	8		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_271
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_272
	.word	12
	.word	4
	.word	_Label_273
	.word	-12
	.word	4
	.word	_Label_274
	.word	-16
	.word	4
	.word	_Label_275
	.word	-20
	.word	4
	.word	_Label_276
	.word	-76
	.word	56
	.word	_Label_277
	.word	-80
	.word	4
	.word	_Label_278
	.word	-84
	.word	4
	.word	_Label_279
	.word	-88
	.word	4
	.word	_Label_280
	.word	-92
	.word	4
	.word	_Label_281
	.word	-96
	.word	4
	.word	_Label_282
	.word	-100
	.word	4
	.word	_Label_283
	.word	-104
	.word	4
	.word	_Label_284
	.word	-108
	.word	4
	.word	0
_Label_270:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_271:
	.ascii	"Pself\0"
	.align
_Label_272:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_257\0"
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
	mov	7,r1
_Label_493:
	push	r0
	sub	r1,1,r1
	bne	_Label_493
	mov	305,r13		! source line 305
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	316,r13		! source line 316
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	318,r13		! source line 318
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	319,r13		! source line 319
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	320,r13		! source line 320
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
	mov	321,r13		! source line 321
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_285 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_285  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_287 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_286  sizeInBytes=4
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
! ASSIGNMENT STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	324,r13		! source line 324
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_2:
	.word	_sourceFileName
	.word	_Label_288
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_289
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_290
	.word	12
	.word	4
	.word	_Label_291
	.word	16
	.word	4
	.word	_Label_292
	.word	-12
	.word	4
	.word	_Label_293
	.word	-16
	.word	4
	.word	_Label_294
	.word	-20
	.word	4
	.word	_Label_295
	.word	-24
	.word	4
	.word	_Label_296
	.word	-28
	.word	4
	.word	0
_Label_288:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_289:
	.ascii	"Pself\0"
	.align
_Label_290:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_291:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_295:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_296:
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
	mov	11,r1
_Label_494:
	push	r0
	sub	r1,1,r1
	bne	_Label_494
	mov	329,r13		! source line 329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_299 == _P_Thread_currentThread then goto _Label_298		(int)
	load	[r14+-32],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_298
!	_Label_297	jmp	_Label_297
_Label_297:
! THEN...
	mov	346,r13		! source line 346
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_300 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	346,r13		! source line 346
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_298:
! ASSIGNMENT STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	348,r13		! source line 348
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0AS",r10
	mov	352,r13		! source line 352
	mov	"\0\0SE",r10
!   _temp_301 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
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
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	353,r13		! source line 353
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_303		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_303
!	_Label_302	jmp	_Label_302
_Label_302:
! THEN...
	mov	357,r13		! source line 357
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_305		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_305
!	_Label_304	jmp	_Label_304
_Label_304:
! THEN...
	mov	358,r13		! source line 358
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_306 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_306  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	358,r13		! source line 358
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_305:
! ASSIGNMENT STATEMENT...
	mov	360,r13		! source line 360
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_308 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_307  sizeInBytes=4
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
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	362,r13		! source line 362
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! END IF...
_Label_303:
! ASSIGNMENT STATEMENT...
	mov	364,r13		! source line 364
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	364,r13		! source line 364
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	364,r13		! source line 364
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_3:
	.word	_sourceFileName
	.word	_Label_309
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_310
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_311
	.word	-12
	.word	4
	.word	_Label_312
	.word	-16
	.word	4
	.word	_Label_313
	.word	-20
	.word	4
	.word	_Label_314
	.word	-24
	.word	4
	.word	_Label_315
	.word	-28
	.word	4
	.word	_Label_316
	.word	-32
	.word	4
	.word	_Label_317
	.word	-36
	.word	4
	.word	_Label_318
	.word	-40
	.word	4
	.word	_Label_319
	.word	-44
	.word	4
	.word	0
_Label_309:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_310:
	.ascii	"Pself\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_317:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_318:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_319:
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
	mov	7,r1
_Label_495:
	push	r0
	sub	r1,1,r1
	bne	_Label_495
	mov	369,r13		! source line 369
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0IF",r10
!   if _P_Thread_currentInterruptStatus == 2 then goto _Label_321		(int)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_321
!	_Label_320	jmp	_Label_320
_Label_320:
! THEN...
	mov	382,r13		! source line 382
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_322 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	382,r13		! source line 382
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_321:
! IF STATEMENT...
	mov	385,r13		! source line 385
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_325 == _P_Thread_currentThread then goto _Label_324		(int)
	load	[r14+-24],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_324
!	_Label_323	jmp	_Label_323
_Label_323:
! THEN...
	mov	386,r13		! source line 386
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_326 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_326  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	386,r13		! source line 386
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_324:
! ASSIGNMENT STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
	mov	392,r13		! source line 392
	mov	"\0\0SE",r10
!   _temp_327 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_328
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_328
	jmp	_Label_329
_Label_328:
! THEN...
	mov	394,r13		! source line 394
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_330 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	394,r13		! source line 394
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_329:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	396,r13		! source line 396
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! RETURN STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_4:
	.word	_sourceFileName
	.word	_Label_331
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_332
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_333
	.word	-12
	.word	4
	.word	_Label_334
	.word	-16
	.word	4
	.word	_Label_335
	.word	-20
	.word	4
	.word	_Label_336
	.word	-24
	.word	4
	.word	_Label_337
	.word	-28
	.word	4
	.word	_Label_338
	.word	-32
	.word	4
	.word	0
_Label_331:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_332:
	.ascii	"Pself\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_334:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_338:
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
_Label_496:
	push	r0
	sub	r1,1,r1
	bne	_Label_496
	mov	401,r13		! source line 401
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0IF",r10
!   _temp_342 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_342 [0 ] into _temp_343
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
!   Data Move: _temp_341 = *_temp_343  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_341 == 606348324 then goto _Label_340		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_340
!	_Label_339	jmp	_Label_339
_Label_339:
! THEN...
	mov	408,r13		! source line 408
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_344 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_344  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	408,r13		! source line 408
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
	jmp	_Label_345
_Label_340:
! ELSE...
	mov	409,r13		! source line 409
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0IF",r10
!   _temp_349 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_349 [999 ] into _temp_350
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
!   Data Move: _temp_348 = *_temp_350  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_348 == 606348324 then goto _Label_347		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_347
!	_Label_346	jmp	_Label_346
_Label_346:
! THEN...
	mov	410,r13		! source line 410
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_351 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	410,r13		! source line 410
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_347:
! END IF...
_Label_345:
! RETURN STATEMENT...
	mov	407,r13		! source line 407
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
	.word	_Label_352
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_353
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_354
	.word	-12
	.word	4
	.word	_Label_355
	.word	-16
	.word	4
	.word	_Label_356
	.word	-20
	.word	4
	.word	_Label_357
	.word	-24
	.word	4
	.word	_Label_358
	.word	-28
	.word	4
	.word	_Label_359
	.word	-32
	.word	4
	.word	_Label_360
	.word	-36
	.word	4
	.word	_Label_361
	.word	-40
	.word	4
	.word	0
_Label_352:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_353:
	.ascii	"Pself\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_341\0"
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
	mov	34,r1
_Label_497:
	push	r0
	sub	r1,1,r1
	bne	_Label_497
	mov	416,r13		! source line 416
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	422,r13		! source line 422
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! CALL STATEMENT...
!   _temp_362 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	423,r13		! source line 423
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	424,r13		! source line 424
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_363 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	425,r13		! source line 425
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_364  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	426,r13		! source line 426
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_365 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_366 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_366  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_371 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
!   Calculate and save the FOR-LOOP ending value
!   _temp_372 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-104]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_371  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+-132]
_Label_367:
!   Perform the FOR-LOOP termination test
!   if i > _temp_372 then goto _Label_370		
	load	[r14+-132],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_370
_Label_368:
	mov	429,r13		! source line 429
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_373 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	430,r13		! source line 430
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_374 = i + 2		(int)
	load	[r14+-132],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	431,r13		! source line 431
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_375 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_377 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   Move address of _temp_377 [i ] into _temp_378
!     make sure index expr is >= 0
	load	[r14+-132],r2
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
!   Data Move: _temp_376 = *_temp_378  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	433,r13		! source line 433
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_379 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	434,r13		! source line 434
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_381 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Move address of _temp_381 [i ] into _temp_382
!     make sure index expr is >= 0
	load	[r14+-132],r2
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
!   Data Move: _temp_380 = *_temp_382  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	435,r13		! source line 435
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_383 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_383  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_369:
!   i = i + 1
	load	[r14+-132],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-132]
	jmp	_Label_367
! END FOR
_Label_370:
! CALL STATEMENT...
!   _temp_384 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-56]
!   _temp_385 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_384  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_385  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_386 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-48]
!   _temp_388 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-40]
!   Move address of _temp_388 [0 ] into _temp_389
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
!   _temp_387 = _temp_389		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_386  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_387  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	439,r13		! source line 439
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	440,r13		! source line 440
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_392
	cmp	r1,2
	be	_Label_393
	cmp	r1,3
	be	_Label_394
	cmp	r1,4
	be	_Label_395
	cmp	r1,5
	be	_Label_396
	jmp	_Label_390
! CASE 1...
_Label_392:
! CALL STATEMENT...
!   _temp_397 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	442,r13		! source line 442
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0BR",r10
	jmp	_Label_391
! CASE 2...
_Label_393:
! CALL STATEMENT...
!   _temp_398 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	445,r13		! source line 445
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0BR",r10
	jmp	_Label_391
! CASE 3...
_Label_394:
! CALL STATEMENT...
!   _temp_399 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_399  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	448,r13		! source line 448
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0BR",r10
	jmp	_Label_391
! CASE 4...
_Label_395:
! CALL STATEMENT...
!   _temp_400 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	451,r13		! source line 451
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	452,r13		! source line 452
	mov	"\0\0BR",r10
	jmp	_Label_391
! CASE 5...
_Label_396:
! CALL STATEMENT...
!   _temp_401 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_401  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	454,r13		! source line 454
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0BR",r10
	jmp	_Label_391
! DEFAULT CASE...
_Label_390:
! CALL STATEMENT...
!   _temp_402 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	457,r13		! source line 457
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_391:
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	459,r13		! source line 459
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-136]
! RETURN STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0RE",r10
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_6:
	.word	_sourceFileName
	.word	_Label_403
	.word	4		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_404
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_405
	.word	-12
	.word	4
	.word	_Label_406
	.word	-16
	.word	4
	.word	_Label_407
	.word	-20
	.word	4
	.word	_Label_408
	.word	-24
	.word	4
	.word	_Label_409
	.word	-28
	.word	4
	.word	_Label_410
	.word	-32
	.word	4
	.word	_Label_411
	.word	-36
	.word	4
	.word	_Label_412
	.word	-40
	.word	4
	.word	_Label_413
	.word	-44
	.word	4
	.word	_Label_414
	.word	-48
	.word	4
	.word	_Label_415
	.word	-52
	.word	4
	.word	_Label_416
	.word	-56
	.word	4
	.word	_Label_417
	.word	-60
	.word	4
	.word	_Label_418
	.word	-64
	.word	4
	.word	_Label_419
	.word	-68
	.word	4
	.word	_Label_420
	.word	-72
	.word	4
	.word	_Label_421
	.word	-76
	.word	4
	.word	_Label_422
	.word	-80
	.word	4
	.word	_Label_423
	.word	-84
	.word	4
	.word	_Label_424
	.word	-88
	.word	4
	.word	_Label_425
	.word	-92
	.word	4
	.word	_Label_426
	.word	-96
	.word	4
	.word	_Label_427
	.word	-100
	.word	4
	.word	_Label_428
	.word	-104
	.word	4
	.word	_Label_429
	.word	-108
	.word	4
	.word	_Label_430
	.word	-112
	.word	4
	.word	_Label_431
	.word	-116
	.word	4
	.word	_Label_432
	.word	-120
	.word	4
	.word	_Label_433
	.word	-124
	.word	4
	.word	_Label_434
	.word	-128
	.word	4
	.word	_Label_435
	.word	-132
	.word	4
	.word	_Label_436
	.word	-136
	.word	4
	.word	0
_Label_403:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_404:
	.ascii	"Pself\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_435:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_436:
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
_Label_498:
	push	r0
	sub	r1,1,r1
	bne	_Label_498
	mov	463,r13		! source line 463
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0AS",r10
!   priority = prio		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4096]
! IF STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0IF",r10
!   if prio != 1 then goto _Label_438		(int)
	load	[r14+12],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_438
!	_Label_437	jmp	_Label_437
_Label_437:
! THEN...
	mov	466,r13		! source line 466
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	466,r13		! source line 466
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   _temp_440 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_439  sizeInBytes=4
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
	jmp	_Label_441
_Label_438:
! ELSE...
	mov	467,r13		! source line 467
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0IF",r10
!   if prio != 2 then goto _Label_443		(int)
	load	[r14+12],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_443
!	_Label_442	jmp	_Label_442
_Label_442:
! THEN...
	mov	468,r13		! source line 468
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   _temp_445 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_444  sizeInBytes=4
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
	jmp	_Label_446
_Label_443:
! ELSE...
	mov	469,r13		! source line 469
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	469,r13		! source line 469
	mov	"\0\0IF",r10
!   if prio != 3 then goto _Label_448		(int)
	load	[r14+12],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_448
!	_Label_447	jmp	_Label_447
_Label_447:
! THEN...
	mov	470,r13		! source line 470
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	470,r13		! source line 470
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   _temp_450 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_449  sizeInBytes=4
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
	jmp	_Label_451
_Label_448:
! ELSE...
	mov	471,r13		! source line 471
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	471,r13		! source line 471
	mov	"\0\0IF",r10
!   if prio != 4 then goto _Label_453		(int)
	load	[r14+12],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_453
!	_Label_452	jmp	_Label_452
_Label_452:
! THEN...
	mov	472,r13		! source line 472
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   _temp_455 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_454  sizeInBytes=4
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
	jmp	_Label_456
_Label_453:
! ELSE...
	mov	473,r13		! source line 473
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0IF",r10
!   if prio != 5 then goto _Label_458		(int)
	load	[r14+12],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_458
!	_Label_457	jmp	_Label_457
_Label_457:
! THEN...
	mov	474,r13		! source line 474
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	474,r13		! source line 474
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_460 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_459  sizeInBytes=4
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
_Label_458:
! END IF...
_Label_456:
! END IF...
_Label_451:
! END IF...
_Label_446:
! END IF...
_Label_441:
! RETURN STATEMENT...
	mov	465,r13		! source line 465
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
	.word	_Label_461
	.word	8		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_462
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_463
	.word	12
	.word	4
	.word	_Label_464
	.word	-12
	.word	4
	.word	_Label_465
	.word	-16
	.word	4
	.word	_Label_466
	.word	-20
	.word	4
	.word	_Label_467
	.word	-24
	.word	4
	.word	_Label_468
	.word	-28
	.word	4
	.word	_Label_469
	.word	-32
	.word	4
	.word	_Label_470
	.word	-36
	.word	4
	.word	_Label_471
	.word	-40
	.word	4
	.word	_Label_472
	.word	-44
	.word	4
	.word	_Label_473
	.word	-48
	.word	4
	.word	0
_Label_461:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"setPriority\0"
	.align
_Label_462:
	.ascii	"Pself\0"
	.align
_Label_463:
	.byte	'I'
	.ascii	"prio\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_439\0"
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
	mov	478,r13		! source line 478
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	479,r13		! source line 479
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
	.word	_Label_474
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_475
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_474:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"getPriority\0"
	.align
_Label_475:
	.ascii	"Pself\0"
	.align
