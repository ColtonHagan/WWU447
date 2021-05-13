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
_StringConst_69:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_68:
	.word	22			! length
	.ascii	" added to Q at prio = "
	.align
_StringConst_67:
	.word	7			! length
	.ascii	"Thread "
	.align
_StringConst_66:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_65:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_64:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_63:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_62:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_61:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_60:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_59:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_58:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_57:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_56:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_55:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_54:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_53:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_52:
	.word	10			! length
	.ascii	"Priority: "
	.align
_StringConst_51:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_50:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_49:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_48:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_47:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_46:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_45:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_44:
	.word	9			! length
	.ascii	"Sleeping "
	.align
_StringConst_43:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_42:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_41:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_40:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_39:
	.word	13			! length
	.ascii	"About to run "
	.align
_StringConst_38:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_37:
	.word	9			! length
	.ascii	"Yielding "
	.align
_StringConst_36:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_35:
	.word	18			! length
	.ascii	"Forking thread...\n"
	.align
_StringConst_34:
	.word	39			! length
	.ascii	"ERRRRRRORRR: This should never happen!!"
	.align
_StringConst_33:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_32:
	.word	21			! length
	.ascii	"Removing thread from "
	.align
_StringConst_31:
	.word	2			! length
	.ascii	"5\n"
	.align
_StringConst_30:
	.word	2			! length
	.ascii	"4\n"
	.align
_StringConst_29:
	.word	2			! length
	.ascii	"3\n"
	.align
_StringConst_28:
	.word	2			! length
	.ascii	"2\n"
	.align
_StringConst_27:
	.word	2			! length
	.ascii	"1\n"
	.align
_StringConst_26:
	.word	23			! length
	.ascii	"highest prio thread is "
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
	set	0xe62f4316,r4		! myHashVal = -433110250
	cmp	r3,r4
	be	_Label_72
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
_Label_72:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_73
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_73
_Label_73:
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
_Label_723:
	push	r0
	sub	r1,1,r1
	bne	_Label_723
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_74 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_74  sizeInBytes=4
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
_Label_724:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_724
!   _P_Thread_mainThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_83 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-52]
!   _temp_84 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_83  sizeInBytes=4
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
!   _temp_85 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message setPriority
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _temp_86 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-40]
!   _temp_87 = _temp_86 + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_87 = 3  (sizeInBytes=4)
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
_Label_725:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_725
!   _P_Thread_idleThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_89 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-28]
!   _temp_90 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_89  sizeInBytes=4
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
!   _temp_91 = &_P_Thread_idleThread
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
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0SE",r10
!   _temp_92 = _function_71_IdleFunction
	set	_function_71_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_93 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_92  sizeInBytes=4
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
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_94
	.word	0		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_95
	.word	-12
	.word	4
	.word	_Label_96
	.word	-16
	.word	4
	.word	_Label_97
	.word	-20
	.word	4
	.word	_Label_98
	.word	-24
	.word	4
	.word	_Label_99
	.word	-28
	.word	4
	.word	_Label_100
	.word	-32
	.word	4
	.word	_Label_101
	.word	-36
	.word	4
	.word	_Label_102
	.word	-40
	.word	4
	.word	_Label_103
	.word	-44
	.word	4
	.word	_Label_104
	.word	-48
	.word	4
	.word	_Label_105
	.word	-52
	.word	4
	.word	_Label_106
	.word	-56
	.word	4
	.word	_Label_107
	.word	-60
	.word	4
	.word	_Label_108
	.word	-64
	.word	4
	.word	_Label_109
	.word	-68
	.word	4
	.word	_Label_110
	.word	-72
	.word	4
	.word	_Label_111
	.word	-76
	.word	4
	.word	_Label_112
	.word	-80
	.word	4
	.word	_Label_113
	.word	-84
	.word	4
	.word	_Label_114
	.word	-88
	.word	4
	.word	0
_Label_94:
	.ascii	"InitializeScheduler\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_102:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_103:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_104:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_105:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_106:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_109:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_110:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_111:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_112:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_113:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_114:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_71_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_71_IdleFunction,r1
	push	r1
	mov	8,r1
_Label_726:
	push	r0
	sub	r1,1,r1
	bne	_Label_726
	mov	42,r13		! source line 42
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_115 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_115  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	52,r13		! source line 52
	mov	"\0\0CE",r10
	call	print
! WHILE STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0WH",r10
_Label_116:
!	_Label_117	jmp	_Label_117
_Label_117:
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
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0IF",r10
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_125 = &_P_Thread_one
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
!   if result==true then goto _Label_124 else goto _Label_120
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_120
	jmp	_Label_124
_Label_124:
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_126 = &_P_Thread_two
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
!   if result==true then goto _Label_123 else goto _Label_120
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_120
	jmp	_Label_123
_Label_123:
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_127 = &_P_Thread_three
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
!   if result==true then goto _Label_122 else goto _Label_120
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_120
	jmp	_Label_122
_Label_122:
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_128 = &_P_Thread_four
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
!   if result==true then goto _Label_121 else goto _Label_120
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_120
	jmp	_Label_121
_Label_121:
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   _temp_129 = &_P_Thread_five
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
!   if result==true then goto _Label_119 else goto _Label_120
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_120
	jmp	_Label_119
_Label_119:
! THEN...
	mov	56,r13		! source line 56
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	56,r13		! source line 56
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_130
_Label_120:
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
_Label_130:
! END WHILE...
	jmp	_Label_116
_Label_118:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_71_IdleFunction:
	.word	_sourceFileName
	.word	_Label_131
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_132
	.word	8
	.word	4
	.word	_Label_133
	.word	-12
	.word	4
	.word	_Label_134
	.word	-16
	.word	4
	.word	_Label_135
	.word	-20
	.word	4
	.word	_Label_136
	.word	-24
	.word	4
	.word	_Label_137
	.word	-28
	.word	4
	.word	_Label_138
	.word	-32
	.word	4
	.word	_Label_139
	.word	-36
	.word	4
	.word	0
_Label_131:
	.ascii	"IdleFunction\0"
	.align
_Label_132:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_125\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_139:
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
_Label_727:
	push	r0
	sub	r1,1,r1
	bne	_Label_727
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
!   _temp_140 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_140 = 3  (sizeInBytes=4)
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
_Label_141:
	mov	89,r13		! source line 89
	mov	"\0\0SE",r10
!   _temp_145 = &_P_Thread_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_144  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_144 then goto _Label_143 else goto _Label_142
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_142
	jmp	_Label_143
_Label_142:
	mov	89,r13		! source line 89
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0AS",r10
	mov	90,r13		! source line 90
	mov	"\0\0SE",r10
!   _temp_146 = &_P_Thread_threadsToBeDestroyed
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
!   _temp_147 = th + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_147 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-16],r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_141
_Label_143:
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
	.word	_Label_148
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_149
	.word	8
	.word	4
	.word	_Label_150
	.word	-16
	.word	4
	.word	_Label_151
	.word	-20
	.word	4
	.word	_Label_152
	.word	-24
	.word	4
	.word	_Label_153
	.word	-9
	.word	1
	.word	_Label_154
	.word	-28
	.word	4
	.word	_Label_155
	.word	-32
	.word	4
	.word	_Label_156
	.word	-36
	.word	4
	.word	0
_Label_148:
	.ascii	"Run\0"
	.align
_Label_149:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_153:
	.byte	'C'
	.ascii	"_temp_144\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_155:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_156:
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
_Label_728:
	push	r0
	sub	r1,1,r1
	bne	_Label_728
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
!   _temp_157 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_157  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_158 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_158  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_159 = _function_70_ThreadPrint
	set	_function_70_ThreadPrint,r1
	store	r1,[r14+-64]
!   _temp_160 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_159  sizeInBytes=4
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
!   _temp_161 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_161  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0SE",r10
!   _temp_162 = _function_70_ThreadPrint
	set	_function_70_ThreadPrint,r1
	store	r1,[r14+-52]
!   _temp_163 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_162  sizeInBytes=4
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
!   _temp_164 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_164  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0SE",r10
!   _temp_165 = _function_70_ThreadPrint
	set	_function_70_ThreadPrint,r1
	store	r1,[r14+-40]
!   _temp_166 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_165  sizeInBytes=4
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
!   _temp_167 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_167  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0SE",r10
!   _temp_168 = _function_70_ThreadPrint
	set	_function_70_ThreadPrint,r1
	store	r1,[r14+-28]
!   _temp_169 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_168  sizeInBytes=4
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
!   _temp_170 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_170  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0SE",r10
!   _temp_171 = _function_70_ThreadPrint
	set	_function_70_ThreadPrint,r1
	store	r1,[r14+-16]
!   _temp_172 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_171  sizeInBytes=4
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
	.word	_Label_173
	.word	0		! total size of parameters
	.word	76		! frame size = 76
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
	.word	_Label_180
	.word	-36
	.word	4
	.word	_Label_181
	.word	-40
	.word	4
	.word	_Label_182
	.word	-44
	.word	4
	.word	_Label_183
	.word	-48
	.word	4
	.word	_Label_184
	.word	-52
	.word	4
	.word	_Label_185
	.word	-56
	.word	4
	.word	_Label_186
	.word	-60
	.word	4
	.word	_Label_187
	.word	-64
	.word	4
	.word	_Label_188
	.word	-68
	.word	4
	.word	_Label_189
	.word	-72
	.word	4
	.word	_Label_190
	.word	-76
	.word	4
	.word	0
_Label_173:
	.ascii	"PrintReadyList\0"
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
	.byte	'?'
	.ascii	"_temp_168\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_163\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_160\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_159\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_157\0"
	.align
_Label_190:
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
_Label_729:
	push	r0
	sub	r1,1,r1
	bne	_Label_729
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
!   _temp_191 = _P_Thread_currentThread + 80
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_191  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_193 = _P_Thread_currentThread + 84
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_192 = *_temp_193  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_192  sizeInBytes=4
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
!   _temp_194 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_194  sizeInBytes=4
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
	.word	_Label_195
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_196
	.word	-12
	.word	4
	.word	_Label_197
	.word	-16
	.word	4
	.word	_Label_198
	.word	-20
	.word	4
	.word	_Label_199
	.word	-24
	.word	4
	.word	_Label_200
	.word	-28
	.word	4
	.word	_Label_201
	.word	-32
	.word	4
	.word	0
_Label_195:
	.ascii	"ThreadStartMain\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_200:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_201:
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
_Label_730:
	push	r0
	sub	r1,1,r1
	bne	_Label_730
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
!   _temp_202 = &_P_Thread_threadsToBeDestroyed
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
	.word	_Label_203
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_204
	.word	-12
	.word	4
	.word	_Label_205
	.word	-16
	.word	4
	.word	0
_Label_203:
	.ascii	"ThreadFinish\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_205:
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
_Label_731:
	push	r0
	sub	r1,1,r1
	bne	_Label_731
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
!   _temp_206 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_206  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0IF",r10
!   if _P_Thread_currentThread == 0 then goto _Label_208		(int)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_208
!	_Label_207	jmp	_Label_207
_Label_207:
! THEN...
	mov	175,r13		! source line 175
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_209 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_209  sizeInBytes=4
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
!   _temp_211 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Data Move: _temp_210 = *_temp_211  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_210  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	176,r13		! source line 176
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_208:
! CALL STATEMENT...
!   _temp_212 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_212  sizeInBytes=4
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
!   _temp_213 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_213  sizeInBytes=4
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
	.word	_Label_214
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_215
	.word	8
	.word	4
	.word	_Label_216
	.word	-12
	.word	4
	.word	_Label_217
	.word	-16
	.word	4
	.word	_Label_218
	.word	-20
	.word	4
	.word	_Label_219
	.word	-24
	.word	4
	.word	_Label_220
	.word	-28
	.word	4
	.word	_Label_221
	.word	-32
	.word	4
	.word	_Label_222
	.word	-36
	.word	4
	.word	0
_Label_214:
	.ascii	"FatalError\0"
	.align
_Label_215:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_222:
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
_Label_732:
	push	r0
	sub	r1,1,r1
	bne	_Label_732
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
!   if newStatus != 1 then goto _Label_224		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_224
!	_Label_223	jmp	_Label_223
_Label_223:
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
	jmp	_Label_225
_Label_224:
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
_Label_225:
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
	.word	_Label_226
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_227
	.word	8
	.word	4
	.word	_Label_228
	.word	-12
	.word	4
	.word	0
_Label_226:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_227:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_228:
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
_Label_733:
	push	r0
	sub	r1,1,r1
	bne	_Label_733
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
!   Retrieve Result: targetName=_temp_231  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_232  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   if _temp_231 < _temp_232 then goto _Label_230		(int)
	load	[r14+-16],r1
	load	[r14+-12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_230
!	_Label_229	jmp	_Label_229
_Label_229:
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
_Label_230:
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
	.word	_Label_233
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_234
	.word	-12
	.word	4
	.word	_Label_235
	.word	-16
	.word	4
	.word	0
_Label_233:
	.ascii	"TimerInterruptHandler\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
! 
! ===============  FUNCTION ThreadPrint  ===============
! 
_function_70_ThreadPrint:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_70_ThreadPrint,r1
	push	r1
	mov	17,r1
_Label_734:
	push	r0
	sub	r1,1,r1
	bne	_Label_734
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
!   _temp_236 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
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
!   _temp_238 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-60]
!   Data Move: _temp_237 = *_temp_238  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_237  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	243,r13		! source line 243
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_239 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
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
!   _temp_248 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-48]
!   Data Move: _temp_247 = *_temp_248  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Branch to the right case label
	load	[r14+-52],r1
	cmp	r1,1
	be	_Label_242
	cmp	r1,2
	be	_Label_243
	cmp	r1,3
	be	_Label_244
	cmp	r1,4
	be	_Label_245
	cmp	r1,5
	be	_Label_246
	jmp	_Label_240
! CASE 1...
_Label_242:
! CALL STATEMENT...
!   _temp_249 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_249  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	247,r13		! source line 247
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0BR",r10
	jmp	_Label_241
! CASE 2...
_Label_243:
! CALL STATEMENT...
!   _temp_250 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_250  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	250,r13		! source line 250
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0BR",r10
	jmp	_Label_241
! CASE 3...
_Label_244:
! CALL STATEMENT...
!   _temp_251 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_251  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	253,r13		! source line 253
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0BR",r10
	jmp	_Label_241
! CASE 4...
_Label_245:
! CALL STATEMENT...
!   _temp_252 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_252  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	256,r13		! source line 256
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	257,r13		! source line 257
	mov	"\0\0BR",r10
	jmp	_Label_241
! CASE 5...
_Label_246:
! CALL STATEMENT...
!   _temp_253 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_253  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	259,r13		! source line 259
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0BR",r10
	jmp	_Label_241
! DEFAULT CASE...
_Label_240:
! CALL STATEMENT...
!   _temp_254 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_254  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_241:
! CALL STATEMENT...
!   _temp_255 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_255  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	264,r13		! source line 264
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_256 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_256  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	265,r13		! source line 265
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_257 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_257  sizeInBytes=4
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
_RoutineDescriptor__function_70_ThreadPrint:
	.word	_sourceFileName
	.word	_Label_258
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_259
	.word	8
	.word	4
	.word	_Label_260
	.word	-12
	.word	4
	.word	_Label_261
	.word	-16
	.word	4
	.word	_Label_262
	.word	-20
	.word	4
	.word	_Label_263
	.word	-24
	.word	4
	.word	_Label_264
	.word	-28
	.word	4
	.word	_Label_265
	.word	-32
	.word	4
	.word	_Label_266
	.word	-36
	.word	4
	.word	_Label_267
	.word	-40
	.word	4
	.word	_Label_268
	.word	-44
	.word	4
	.word	_Label_269
	.word	-48
	.word	4
	.word	_Label_270
	.word	-52
	.word	4
	.word	_Label_271
	.word	-56
	.word	4
	.word	_Label_272
	.word	-60
	.word	4
	.word	_Label_273
	.word	-64
	.word	4
	.word	_Label_274
	.word	-68
	.word	4
	.word	_Label_275
	.word	-72
	.word	4
	.word	0
_Label_258:
	.ascii	"ThreadPrint\0"
	.align
_Label_259:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_255\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_275:
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
	mov	14,r1
_Label_735:
	push	r0
	sub	r1,1,r1
	bne	_Label_735
	mov	272,r13		! source line 272
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_276 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_276  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0IF",r10
	mov	274,r13		! source line 274
	mov	"\0\0SE",r10
!   _temp_280 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_279  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_279 then goto _Label_278 else goto _Label_277
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_277
	jmp	_Label_278
_Label_277:
! THEN...
	mov	275,r13		! source line 275
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_281 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_281  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	275,r13		! source line 275
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_282
_Label_278:
! ELSE...
	mov	277,r13		! source line 277
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0IF",r10
	mov	277,r13		! source line 277
	mov	"\0\0SE",r10
!   _temp_286 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-48]
!   Send message IsEmpty
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_285  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_285 then goto _Label_284 else goto _Label_283
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_283
	jmp	_Label_284
_Label_283:
! THEN...
	mov	278,r13		! source line 278
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_287 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	278,r13		! source line 278
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	279,r13		! source line 279
	mov	"\0\0RE",r10
!   ReturnResult: 2  (sizeInBytes=4)
	mov	2,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_288
_Label_284:
! ELSE...
	mov	280,r13		! source line 280
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0IF",r10
	mov	280,r13		! source line 280
	mov	"\0\0SE",r10
!   _temp_292 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_291  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_291 then goto _Label_290 else goto _Label_289
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_289
	jmp	_Label_290
_Label_289:
! THEN...
	mov	281,r13		! source line 281
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_293 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_293  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	281,r13		! source line 281
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0RE",r10
!   ReturnResult: 3  (sizeInBytes=4)
	mov	3,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_294
_Label_290:
! ELSE...
	mov	283,r13		! source line 283
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0IF",r10
	mov	283,r13		! source line 283
	mov	"\0\0SE",r10
!   _temp_298 = &_P_Thread_four
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
!   Retrieve Result: targetName=_temp_297  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_297 then goto _Label_296 else goto _Label_295
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_295
	jmp	_Label_296
_Label_295:
! THEN...
	mov	284,r13		! source line 284
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_299 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_299  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	284,r13		! source line 284
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	285,r13		! source line 285
	mov	"\0\0RE",r10
!   ReturnResult: 4  (sizeInBytes=4)
	mov	4,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_300
_Label_296:
! ELSE...
	mov	286,r13		! source line 286
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	286,r13		! source line 286
	mov	"\0\0IF",r10
	mov	286,r13		! source line 286
	mov	"\0\0SE",r10
!   _temp_304 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-24]
!   Send message IsEmpty
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_303  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_303 then goto _Label_302 else goto _Label_301
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_301
	jmp	_Label_302
_Label_301:
! THEN...
	mov	287,r13		! source line 287
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_305 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_305  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	287,r13		! source line 287
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	288,r13		! source line 288
	mov	"\0\0RE",r10
!   ReturnResult: 5  (sizeInBytes=4)
	mov	5,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_302:
! END IF...
_Label_300:
! END IF...
_Label_294:
! END IF...
_Label_288:
! END IF...
_Label_282:
! RETURN STATEMENT...
	mov	290,r13		! source line 290
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_highestPrioInt:
	.word	_sourceFileName
	.word	_Label_306
	.word	0		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_307
	.word	-20
	.word	4
	.word	_Label_308
	.word	-24
	.word	4
	.word	_Label_309
	.word	-9
	.word	1
	.word	_Label_310
	.word	-28
	.word	4
	.word	_Label_311
	.word	-32
	.word	4
	.word	_Label_312
	.word	-10
	.word	1
	.word	_Label_313
	.word	-36
	.word	4
	.word	_Label_314
	.word	-40
	.word	4
	.word	_Label_315
	.word	-11
	.word	1
	.word	_Label_316
	.word	-44
	.word	4
	.word	_Label_317
	.word	-48
	.word	4
	.word	_Label_318
	.word	-12
	.word	1
	.word	_Label_319
	.word	-52
	.word	4
	.word	_Label_320
	.word	-56
	.word	4
	.word	_Label_321
	.word	-13
	.word	1
	.word	_Label_322
	.word	-60
	.word	4
	.word	0
_Label_306:
	.ascii	"highestPrioInt\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_309:
	.byte	'C'
	.ascii	"_temp_303\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_312:
	.byte	'C'
	.ascii	"_temp_297\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_315:
	.byte	'C'
	.ascii	"_temp_291\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_318:
	.byte	'C'
	.ascii	"_temp_285\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_321:
	.byte	'C'
	.ascii	"_temp_279\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_276\0"
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
_Label_736:
	push	r0
	sub	r1,1,r1
	bne	_Label_736
	mov	293,r13		! source line 293
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   Call the function
	mov	295,r13		! source line 295
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioInt
!   Retrieve Result: targetName=prioInt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_323 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_323  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	296,r13		! source line 296
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prioInt  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	297,r13		! source line 297
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_324 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	298,r13		! source line 298
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0IF",r10
!   if prioInt != 1 then goto _Label_326		(int)
	load	[r14+-60],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_326
!	_Label_325	jmp	_Label_325
_Label_325:
! THEN...
	mov	301,r13		! source line 301
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0RE",r10
	mov	301,r13		! source line 301
	mov	"\0\0SE",r10
!   _temp_328 = &_P_Thread_one
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
!   Retrieve Result: targetName=_temp_327  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_327  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_329
_Label_326:
! ELSE...
	mov	302,r13		! source line 302
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0IF",r10
!   if prioInt != 2 then goto _Label_331		(int)
	load	[r14+-60],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_331
!	_Label_330	jmp	_Label_330
_Label_330:
! THEN...
	mov	303,r13		! source line 303
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0RE",r10
	mov	303,r13		! source line 303
	mov	"\0\0SE",r10
!   _temp_333 = &_P_Thread_two
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
!   Retrieve Result: targetName=_temp_332  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_332  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_334
_Label_331:
! ELSE...
	mov	304,r13		! source line 304
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if prioInt != 3 then goto _Label_336		(int)
	load	[r14+-60],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_336
!	_Label_335	jmp	_Label_335
_Label_335:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0RE",r10
	mov	306,r13		! source line 306
	mov	"\0\0SE",r10
!   _temp_338 = &_P_Thread_three
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
!   Retrieve Result: targetName=_temp_337  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_337  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_339
_Label_336:
! ELSE...
	mov	307,r13		! source line 307
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if prioInt != 4 then goto _Label_341		(int)
	load	[r14+-60],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_341
!	_Label_340	jmp	_Label_340
_Label_340:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0RE",r10
	mov	308,r13		! source line 308
	mov	"\0\0SE",r10
!   _temp_343 = &_P_Thread_four
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
!   Retrieve Result: targetName=_temp_342  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_342  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_344
_Label_341:
! ELSE...
	mov	309,r13		! source line 309
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0IF",r10
!   if prioInt != 5 then goto _Label_346		(int)
	load	[r14+-60],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_346
!	_Label_345	jmp	_Label_345
_Label_345:
! THEN...
	mov	310,r13		! source line 310
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0RE",r10
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_348 = &_P_Thread_five
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
!   Retrieve Result: targetName=_temp_347  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
!   ReturnResult: _temp_347  (sizeInBytes=4)
	load	[r14+-16],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
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
! RETURN STATEMENT...
	mov	312,r13		! source line 312
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
	.word	_Label_349
	.word	0		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_350
	.word	-12
	.word	4
	.word	_Label_351
	.word	-16
	.word	4
	.word	_Label_352
	.word	-20
	.word	4
	.word	_Label_353
	.word	-24
	.word	4
	.word	_Label_354
	.word	-28
	.word	4
	.word	_Label_355
	.word	-32
	.word	4
	.word	_Label_356
	.word	-36
	.word	4
	.word	_Label_357
	.word	-40
	.word	4
	.word	_Label_358
	.word	-44
	.word	4
	.word	_Label_359
	.word	-48
	.word	4
	.word	_Label_360
	.word	-52
	.word	4
	.word	_Label_361
	.word	-56
	.word	4
	.word	_Label_362
	.word	-60
	.word	4
	.word	0
_Label_349:
	.ascii	"highestPrioThread\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_354:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_355:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_362:
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
_Label_737:
	push	r0
	sub	r1,1,r1
	bne	_Label_737
	mov	315,r13		! source line 315
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	320,r13		! source line 320
	mov	"\0\0IF",r10
!   if prio != 1 then goto _Label_364		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_364
!	_Label_363	jmp	_Label_363
_Label_363:
! THEN...
	mov	321,r13		! source line 321
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	321,r13		! source line 321
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_one  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_one,r5
_Label_738:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_738
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_365
_Label_364:
! ELSE...
	mov	322,r13		! source line 322
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if prio != 2 then goto _Label_367		(int)
	load	[r14+8],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_367
!	_Label_366	jmp	_Label_366
_Label_366:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_two  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_two,r5
_Label_739:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_739
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_368
_Label_367:
! ELSE...
	mov	324,r13		! source line 324
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if prio != 3 then goto _Label_370		(int)
	load	[r14+8],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_370
!	_Label_369	jmp	_Label_369
_Label_369:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_three  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_three,r5
_Label_740:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_740
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_371
_Label_370:
! ELSE...
	mov	326,r13		! source line 326
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0IF",r10
!   if prio != 4 then goto _Label_373		(int)
	load	[r14+8],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_373
!	_Label_372	jmp	_Label_372
_Label_372:
! THEN...
	mov	327,r13		! source line 327
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_four  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_four,r5
_Label_741:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_741
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_374
_Label_373:
! ELSE...
	mov	328,r13		! source line 328
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0IF",r10
!   if prio != 5 then goto _Label_376		(int)
	load	[r14+8],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_376
!	_Label_375	jmp	_Label_375
_Label_375:
! THEN...
	mov	329,r13		! source line 329
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_five  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_five,r5
_Label_742:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_742
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_376:
! END IF...
_Label_374:
! END IF...
_Label_371:
! END IF...
_Label_368:
! END IF...
_Label_365:
! CALL STATEMENT...
!   _temp_377 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	332,r13		! source line 332
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_readyList  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_readyList,r5
_Label_743:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_743
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_intToQ:
	.word	_sourceFileName
	.word	_Label_378
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_379
	.word	8
	.word	4
	.word	_Label_380
	.word	-12
	.word	4
	.word	0
_Label_378:
	.ascii	"intToQ\0"
	.align
_Label_379:
	.byte	'I'
	.ascii	"prio\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Thread_Thread:
	.word	_Label_381
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
_Label_381:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_382
	.word	_sourceFileName
	.word	43		! line number
	.word	4100		! size of instances, in bytes
	.word	_P_Thread_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_382:
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
_Label_744:
	push	r0
	sub	r1,1,r1
	bne	_Label_744
	mov	340,r13		! source line 340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	346,r13		! source line 346
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	348,r13		! source line 348
	mov	"\0\0AS",r10
!   _temp_383 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_383) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_383 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-108],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0AS",r10
!   _temp_384 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-104]
!   Move address of _temp_384 [0 ] into _temp_385
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
!   Data Move: *_temp_385 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0AS",r10
!   _temp_386 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-96]
!   Move address of _temp_386 [999 ] into _temp_387
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
!   Data Move: *_temp_387 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0AS",r10
!   _temp_388 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-88]
!   Move address of _temp_388 [999 ] into _temp_389
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
!   stackTop = _temp_389		(4 bytes)
	load	[r14+-84],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	352,r13		! source line 352
	mov	"\0\0AS",r10
!   _temp_390 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-80]
!   NEW ARRAY Constructor...
!   _temp_392 = &_temp_391
	add	r14,-76,r1
	store	r1,[r14+-20]
!   _temp_392 = _temp_392 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	13,r1
	store	r1,[r14+-16]
_Label_394:
!   Data Move: *_temp_392 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_392 = _temp_392 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_393 = _temp_393 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_393) then goto _Label_394
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_394
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-76]
!   _temp_395 = &_temp_391
	add	r14,-76,r1
	store	r1,[r14+-12]
!   make sure array has size 13
	load	[r14+-80],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_745
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_745:
!   make sure array has size 13
	load	[r14+-12],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_390 = *_temp_395  (sizeInBytes=56)
	load	[r14+-12],r5
	load	[r14+-80],r4
	mov	14,r3
_Label_746:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_746
! ASSIGNMENT STATEMENT...
	mov	356,r13		! source line 356
	mov	"\0\0AS",r10
!   time = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4092]
! RETURN STATEMENT...
	mov	356,r13		! source line 356
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
	.word	_Label_396
	.word	8		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_397
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_398
	.word	12
	.word	4
	.word	_Label_399
	.word	-12
	.word	4
	.word	_Label_400
	.word	-16
	.word	4
	.word	_Label_401
	.word	-20
	.word	4
	.word	_Label_402
	.word	-76
	.word	56
	.word	_Label_403
	.word	-80
	.word	4
	.word	_Label_404
	.word	-84
	.word	4
	.word	_Label_405
	.word	-88
	.word	4
	.word	_Label_406
	.word	-92
	.word	4
	.word	_Label_407
	.word	-96
	.word	4
	.word	_Label_408
	.word	-100
	.word	4
	.word	_Label_409
	.word	-104
	.word	4
	.word	_Label_410
	.word	-108
	.word	4
	.word	0
_Label_396:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_397:
	.ascii	"Pself\0"
	.align
_Label_398:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_390\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_383\0"
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
_Label_747:
	push	r0
	sub	r1,1,r1
	bne	_Label_747
	mov	359,r13		! source line 359
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	360,r13		! source line 360
	mov	"\0\0IF",r10
!   if priority != 1 then goto _Label_412		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_412
!	_Label_411	jmp	_Label_411
_Label_411:
! THEN...
	mov	361,r13		! source line 361
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   _temp_414 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_413  sizeInBytes=4
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
	jmp	_Label_415
_Label_412:
! ELSE...
	mov	362,r13		! source line 362
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0IF",r10
!   if priority != 2 then goto _Label_417		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_417
!	_Label_416	jmp	_Label_416
_Label_416:
! THEN...
	mov	363,r13		! source line 363
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	363,r13		! source line 363
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   _temp_419 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_418  sizeInBytes=4
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
	jmp	_Label_420
_Label_417:
! ELSE...
	mov	364,r13		! source line 364
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	364,r13		! source line 364
	mov	"\0\0IF",r10
!   if priority != 3 then goto _Label_422		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_422
!	_Label_421	jmp	_Label_421
_Label_421:
! THEN...
	mov	365,r13		! source line 365
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	365,r13		! source line 365
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   _temp_424 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_423  sizeInBytes=4
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
	jmp	_Label_425
_Label_422:
! ELSE...
	mov	366,r13		! source line 366
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	366,r13		! source line 366
	mov	"\0\0IF",r10
!   if priority != 4 then goto _Label_427		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_427
!	_Label_426	jmp	_Label_426
_Label_426:
! THEN...
	mov	367,r13		! source line 367
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	367,r13		! source line 367
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   _temp_429 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_428  sizeInBytes=4
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
	jmp	_Label_430
_Label_427:
! ELSE...
	mov	368,r13		! source line 368
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	368,r13		! source line 368
	mov	"\0\0IF",r10
!   if priority != 5 then goto _Label_432		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_432
!	_Label_431	jmp	_Label_431
_Label_431:
! THEN...
	mov	369,r13		! source line 369
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	369,r13		! source line 369
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_434 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_433  sizeInBytes=4
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
_Label_432:
! END IF...
_Label_430:
! END IF...
_Label_425:
! END IF...
_Label_420:
! END IF...
_Label_415:
! RETURN STATEMENT...
	mov	360,r13		! source line 360
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
	.word	_Label_435
	.word	8		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_436
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_437
	.word	12
	.word	4
	.word	_Label_438
	.word	-12
	.word	4
	.word	_Label_439
	.word	-16
	.word	4
	.word	_Label_440
	.word	-20
	.word	4
	.word	_Label_441
	.word	-24
	.word	4
	.word	_Label_442
	.word	-28
	.word	4
	.word	_Label_443
	.word	-32
	.word	4
	.word	_Label_444
	.word	-36
	.word	4
	.word	_Label_445
	.word	-40
	.word	4
	.word	_Label_446
	.word	-44
	.word	4
	.word	_Label_447
	.word	-48
	.word	4
	.word	0
_Label_435:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"assignQ\0"
	.align
_Label_436:
	.ascii	"Pself\0"
	.align
_Label_437:
	.byte	'I'
	.ascii	"prio\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_413\0"
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
	mov	16,r1
_Label_748:
	push	r0
	sub	r1,1,r1
	bne	_Label_748
	mov	375,r13		! source line 375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	386,r13		! source line 386
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	386,r13		! source line 386
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_448 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_448  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	387,r13		! source line 387
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	388,r13		! source line 388
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	390,r13		! source line 390
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
	mov	391,r13		! source line 391
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-52]
!   Data Move: *stackTop = _temp_449  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! IF STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0IF",r10
!   if priority != 1 then goto _Label_451		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_451
!	_Label_450	jmp	_Label_450
_Label_450:
! THEN...
	mov	394,r13		! source line 394
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   _temp_453 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_452  sizeInBytes=4
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
	jmp	_Label_454
_Label_451:
! ELSE...
	mov	395,r13		! source line 395
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0IF",r10
!   if priority != 2 then goto _Label_456		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_456
!	_Label_455	jmp	_Label_455
_Label_455:
! THEN...
	mov	396,r13		! source line 396
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   _temp_458 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_457  sizeInBytes=4
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
	jmp	_Label_459
_Label_456:
! ELSE...
	mov	397,r13		! source line 397
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0IF",r10
!   if priority != 3 then goto _Label_461		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_461
!	_Label_460	jmp	_Label_460
_Label_460:
! THEN...
	mov	398,r13		! source line 398
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   _temp_463 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_462  sizeInBytes=4
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
	jmp	_Label_464
_Label_461:
! ELSE...
	mov	399,r13		! source line 399
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0IF",r10
!   if priority != 4 then goto _Label_466		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_466
!	_Label_465	jmp	_Label_465
_Label_465:
! THEN...
	mov	400,r13		! source line 400
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   _temp_468 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_467  sizeInBytes=4
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
	jmp	_Label_469
_Label_466:
! ELSE...
	mov	401,r13		! source line 401
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0IF",r10
!   if priority != 5 then goto _Label_471		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_471
!	_Label_470	jmp	_Label_470
_Label_470:
! THEN...
	mov	402,r13		! source line 402
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	402,r13		! source line 402
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_473 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_472  sizeInBytes=4
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
_Label_471:
! END IF...
_Label_469:
! END IF...
_Label_464:
! END IF...
_Label_459:
! END IF...
_Label_454:
! ASSIGNMENT STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	404,r13		! source line 404
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
! RETURN STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_3:
	.word	_sourceFileName
	.word	_Label_474
	.word	12		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_475
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_476
	.word	12
	.word	4
	.word	_Label_477
	.word	16
	.word	4
	.word	_Label_478
	.word	-12
	.word	4
	.word	_Label_479
	.word	-16
	.word	4
	.word	_Label_480
	.word	-20
	.word	4
	.word	_Label_481
	.word	-24
	.word	4
	.word	_Label_482
	.word	-28
	.word	4
	.word	_Label_483
	.word	-32
	.word	4
	.word	_Label_484
	.word	-36
	.word	4
	.word	_Label_485
	.word	-40
	.word	4
	.word	_Label_486
	.word	-44
	.word	4
	.word	_Label_487
	.word	-48
	.word	4
	.word	_Label_488
	.word	-52
	.word	4
	.word	_Label_489
	.word	-56
	.word	4
	.word	_Label_490
	.word	-60
	.word	4
	.word	_Label_491
	.word	-64
	.word	4
	.word	0
_Label_474:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_475:
	.ascii	"Pself\0"
	.align
_Label_476:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_477:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_490:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_491:
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
	mov	24,r1
_Label_749:
	push	r0
	sub	r1,1,r1
	bne	_Label_749
	mov	409,r13		! source line 409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if _temp_494 == _P_Thread_currentThread then goto _Label_493		(int)
	load	[r14+-84],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_493
!	_Label_492	jmp	_Label_492
_Label_492:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_495 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_495  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	426,r13		! source line 426
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_493:
! ASSIGNMENT STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! CALL STATEMENT...
!   _temp_496 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_496  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	429,r13		! source line 429
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	430,r13		! source line 430
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_497 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_497  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	431,r13		! source line 431
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0AS",r10
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioThread
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! IF STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_499		(int)
	load	[r14+-88],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_499
!	_Label_498	jmp	_Label_498
_Label_498:
! THEN...
	mov	434,r13		! source line 434
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_500 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_500  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	434,r13		! source line 434
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (nextTh) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_502 = nextTh + 72
	load	[r14+-88],r1
	add	r1,72,r1
	store	r1,[r14+-60]
!   Data Move: _temp_501 = *_temp_502  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_501  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	435,r13		! source line 435
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_503 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_505		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_505
!	_Label_504	jmp	_Label_504
_Label_504:
! THEN...
	mov	438,r13		! source line 438
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_506 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_506  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_505:
! ASSIGNMENT STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! IF STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0IF",r10
!   if priority != 1 then goto _Label_508		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_508
!	_Label_507	jmp	_Label_507
_Label_507:
! THEN...
	mov	443,r13		! source line 443
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   _temp_510 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_509  sizeInBytes=4
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
	jmp	_Label_511
_Label_508:
! ELSE...
	mov	444,r13		! source line 444
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	444,r13		! source line 444
	mov	"\0\0IF",r10
!   if priority != 2 then goto _Label_513		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_513
!	_Label_512	jmp	_Label_512
_Label_512:
! THEN...
	mov	445,r13		! source line 445
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	445,r13		! source line 445
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   _temp_515 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_514  sizeInBytes=4
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
	jmp	_Label_516
_Label_513:
! ELSE...
	mov	446,r13		! source line 446
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	446,r13		! source line 446
	mov	"\0\0IF",r10
!   if priority != 3 then goto _Label_518		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_518
!	_Label_517	jmp	_Label_517
_Label_517:
! THEN...
	mov	447,r13		! source line 447
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	447,r13		! source line 447
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   _temp_520 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_519  sizeInBytes=4
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
	jmp	_Label_521
_Label_518:
! ELSE...
	mov	448,r13		! source line 448
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0IF",r10
!   if priority != 4 then goto _Label_523		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_523
!	_Label_522	jmp	_Label_522
_Label_522:
! THEN...
	mov	449,r13		! source line 449
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	449,r13		! source line 449
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   _temp_525 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_524  sizeInBytes=4
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
	jmp	_Label_526
_Label_523:
! ELSE...
	mov	450,r13		! source line 450
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0IF",r10
!   if priority != 5 then goto _Label_528		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_528
!	_Label_527	jmp	_Label_527
_Label_527:
! THEN...
	mov	451,r13		! source line 451
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_530 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_529  sizeInBytes=4
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
_Label_528:
! END IF...
_Label_526:
! END IF...
_Label_521:
! END IF...
_Label_516:
! END IF...
_Label_511:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	453,r13		! source line 453
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! END IF...
_Label_499:
! ASSIGNMENT STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	455,r13		! source line 455
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! RETURN STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_4:
	.word	_sourceFileName
	.word	_Label_531
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_532
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_533
	.word	-12
	.word	4
	.word	_Label_534
	.word	-16
	.word	4
	.word	_Label_535
	.word	-20
	.word	4
	.word	_Label_536
	.word	-24
	.word	4
	.word	_Label_537
	.word	-28
	.word	4
	.word	_Label_538
	.word	-32
	.word	4
	.word	_Label_539
	.word	-36
	.word	4
	.word	_Label_540
	.word	-40
	.word	4
	.word	_Label_541
	.word	-44
	.word	4
	.word	_Label_542
	.word	-48
	.word	4
	.word	_Label_543
	.word	-52
	.word	4
	.word	_Label_544
	.word	-56
	.word	4
	.word	_Label_545
	.word	-60
	.word	4
	.word	_Label_546
	.word	-64
	.word	4
	.word	_Label_547
	.word	-68
	.word	4
	.word	_Label_548
	.word	-72
	.word	4
	.word	_Label_549
	.word	-76
	.word	4
	.word	_Label_550
	.word	-80
	.word	4
	.word	_Label_551
	.word	-84
	.word	4
	.word	_Label_552
	.word	-88
	.word	4
	.word	_Label_553
	.word	-92
	.word	4
	.word	_Label_554
	.word	-96
	.word	4
	.word	0
_Label_531:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_532:
	.ascii	"Pself\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_552:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_553:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_554:
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
	mov	8,r1
_Label_750:
	push	r0
	sub	r1,1,r1
	bne	_Label_750
	mov	460,r13		! source line 460
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0IF",r10
!   if _P_Thread_currentInterruptStatus == 2 then goto _Label_556		(int)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_556
!	_Label_555	jmp	_Label_555
_Label_555:
! THEN...
	mov	473,r13		! source line 473
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_557 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_557  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	473,r13		! source line 473
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_556:
! IF STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if _temp_560 == _P_Thread_currentThread then goto _Label_559		(int)
	load	[r14+-28],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_559
!	_Label_558	jmp	_Label_558
_Label_558:
! THEN...
	mov	477,r13		! source line 477
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_561 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_561  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_559:
! CALL STATEMENT...
!   _temp_562 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_562  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	479,r13		! source line 479
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	480,r13		! source line 480
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_563 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_563  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	481,r13		! source line 481
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   Call the function
	mov	483,r13		! source line 483
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioThread
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_564
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_564
	jmp	_Label_565
_Label_564:
! THEN...
	mov	485,r13		! source line 485
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	485,r13		! source line 485
	mov	"\0\0CA",r10
	call	_P_Thread_PrintReadyList
! CALL STATEMENT...
!   _temp_566 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_566  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	486,r13		! source line 486
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_565:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	488,r13		! source line 488
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! RETURN STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Thread_Thread_5:
	.word	_sourceFileName
	.word	_Label_567
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_568
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_569
	.word	-12
	.word	4
	.word	_Label_570
	.word	-16
	.word	4
	.word	_Label_571
	.word	-20
	.word	4
	.word	_Label_572
	.word	-24
	.word	4
	.word	_Label_573
	.word	-28
	.word	4
	.word	_Label_574
	.word	-32
	.word	4
	.word	_Label_575
	.word	-36
	.word	4
	.word	0
_Label_567:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_568:
	.ascii	"Pself\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_561\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_557\0"
	.align
_Label_575:
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
_Label_751:
	push	r0
	sub	r1,1,r1
	bne	_Label_751
	mov	493,r13		! source line 493
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0IF",r10
!   _temp_579 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_579 [0 ] into _temp_580
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
!   Data Move: _temp_578 = *_temp_580  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_578 == 606348324 then goto _Label_577		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_577
!	_Label_576	jmp	_Label_576
_Label_576:
! THEN...
	mov	500,r13		! source line 500
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_581 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_581  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	500,r13		! source line 500
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
	jmp	_Label_582
_Label_577:
! ELSE...
	mov	501,r13		! source line 501
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	501,r13		! source line 501
	mov	"\0\0IF",r10
!   _temp_586 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_586 [999 ] into _temp_587
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
!   Data Move: _temp_585 = *_temp_587  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_585 == 606348324 then goto _Label_584		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_584
!	_Label_583	jmp	_Label_583
_Label_583:
! THEN...
	mov	502,r13		! source line 502
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_588 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_588  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	502,r13		! source line 502
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_584:
! END IF...
_Label_582:
! RETURN STATEMENT...
	mov	499,r13		! source line 499
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
	.word	_Label_589
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_590
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_591
	.word	-12
	.word	4
	.word	_Label_592
	.word	-16
	.word	4
	.word	_Label_593
	.word	-20
	.word	4
	.word	_Label_594
	.word	-24
	.word	4
	.word	_Label_595
	.word	-28
	.word	4
	.word	_Label_596
	.word	-32
	.word	4
	.word	_Label_597
	.word	-36
	.word	4
	.word	_Label_598
	.word	-40
	.word	4
	.word	0
_Label_589:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_590:
	.ascii	"Pself\0"
	.align
_Label_591:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_592:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_578\0"
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
_Label_752:
	push	r0
	sub	r1,1,r1
	bne	_Label_752
	mov	508,r13		! source line 508
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	514,r13		! source line 514
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! CALL STATEMENT...
!   _temp_599 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_599  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	515,r13		! source line 515
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_600 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_600  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	516,r13		! source line 516
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_601  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	517,r13		! source line 517
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_602 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_602  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	518,r13		! source line 518
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_603 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_603  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	519,r13		! source line 519
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=priority  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4096],r1
	store	r1,[r15+0]
!   Call the function
	mov	520,r13		! source line 520
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_604 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_604  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	521,r13		! source line 521
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_605 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_605  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	522,r13		! source line 522
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_610 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
!   Calculate and save the FOR-LOOP ending value
!   _temp_611 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-104]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_610  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+-140]
_Label_606:
!   Perform the FOR-LOOP termination test
!   if i > _temp_611 then goto _Label_609		
	load	[r14+-140],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_609
_Label_607:
	mov	523,r13		! source line 523
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_612 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_612  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	524,r13		! source line 524
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_613 = i + 2		(int)
	load	[r14+-140],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_613  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_614 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_614  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	526,r13		! source line 526
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_616 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   Move address of _temp_616 [i ] into _temp_617
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
!   Data Move: _temp_615 = *_temp_617  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_615  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	527,r13		! source line 527
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_618 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_618  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	528,r13		! source line 528
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_620 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Move address of _temp_620 [i ] into _temp_621
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
!   Data Move: _temp_619 = *_temp_621  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_619  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	529,r13		! source line 529
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_622 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_622  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	530,r13		! source line 530
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_608:
!   i = i + 1
	load	[r14+-140],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
	jmp	_Label_606
! END FOR
_Label_609:
! CALL STATEMENT...
!   _temp_623 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-56]
!   _temp_624 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_623  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_624  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	532,r13		! source line 532
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_625 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-48]
!   _temp_627 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-40]
!   Move address of _temp_627 [0 ] into _temp_628
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
!   _temp_626 = _temp_628		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_625  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_626  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	533,r13		! source line 533
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	534,r13		! source line 534
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_631
	cmp	r1,2
	be	_Label_632
	cmp	r1,3
	be	_Label_633
	cmp	r1,4
	be	_Label_634
	cmp	r1,5
	be	_Label_635
	jmp	_Label_629
! CASE 1...
_Label_631:
! CALL STATEMENT...
!   _temp_636 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_636  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	536,r13		! source line 536
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0BR",r10
	jmp	_Label_630
! CASE 2...
_Label_632:
! CALL STATEMENT...
!   _temp_637 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_637  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	539,r13		! source line 539
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	540,r13		! source line 540
	mov	"\0\0BR",r10
	jmp	_Label_630
! CASE 3...
_Label_633:
! CALL STATEMENT...
!   _temp_638 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_638  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	542,r13		! source line 542
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0BR",r10
	jmp	_Label_630
! CASE 4...
_Label_634:
! CALL STATEMENT...
!   _temp_639 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_639  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	545,r13		! source line 545
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0BR",r10
	jmp	_Label_630
! CASE 5...
_Label_635:
! CALL STATEMENT...
!   _temp_640 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_640  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	548,r13		! source line 548
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0BR",r10
	jmp	_Label_630
! DEFAULT CASE...
_Label_629:
! CALL STATEMENT...
!   _temp_641 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_641  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	551,r13		! source line 551
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_630:
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	553,r13		! source line 553
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! RETURN STATEMENT...
	mov	553,r13		! source line 553
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
	.word	_Label_642
	.word	4		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_643
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_644
	.word	-12
	.word	4
	.word	_Label_645
	.word	-16
	.word	4
	.word	_Label_646
	.word	-20
	.word	4
	.word	_Label_647
	.word	-24
	.word	4
	.word	_Label_648
	.word	-28
	.word	4
	.word	_Label_649
	.word	-32
	.word	4
	.word	_Label_650
	.word	-36
	.word	4
	.word	_Label_651
	.word	-40
	.word	4
	.word	_Label_652
	.word	-44
	.word	4
	.word	_Label_653
	.word	-48
	.word	4
	.word	_Label_654
	.word	-52
	.word	4
	.word	_Label_655
	.word	-56
	.word	4
	.word	_Label_656
	.word	-60
	.word	4
	.word	_Label_657
	.word	-64
	.word	4
	.word	_Label_658
	.word	-68
	.word	4
	.word	_Label_659
	.word	-72
	.word	4
	.word	_Label_660
	.word	-76
	.word	4
	.word	_Label_661
	.word	-80
	.word	4
	.word	_Label_662
	.word	-84
	.word	4
	.word	_Label_663
	.word	-88
	.word	4
	.word	_Label_664
	.word	-92
	.word	4
	.word	_Label_665
	.word	-96
	.word	4
	.word	_Label_666
	.word	-100
	.word	4
	.word	_Label_667
	.word	-104
	.word	4
	.word	_Label_668
	.word	-108
	.word	4
	.word	_Label_669
	.word	-112
	.word	4
	.word	_Label_670
	.word	-116
	.word	4
	.word	_Label_671
	.word	-120
	.word	4
	.word	_Label_672
	.word	-124
	.word	4
	.word	_Label_673
	.word	-128
	.word	4
	.word	_Label_674
	.word	-132
	.word	4
	.word	_Label_675
	.word	-136
	.word	4
	.word	_Label_676
	.word	-140
	.word	4
	.word	_Label_677
	.word	-144
	.word	4
	.word	0
_Label_642:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_643:
	.ascii	"Pself\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_641\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_640\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_614\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_613\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_612\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_676:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_677:
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
_Label_753:
	push	r0
	sub	r1,1,r1
	bne	_Label_753
	mov	557,r13		! source line 557
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0AS",r10
!   priority = prio		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4096]
! IF STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0IF",r10
!   if priority != 1 then goto _Label_679		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_679
!	_Label_678	jmp	_Label_678
_Label_678:
! THEN...
	mov	560,r13		! source line 560
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   _temp_681 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_680  sizeInBytes=4
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
	jmp	_Label_682
_Label_679:
! ELSE...
	mov	561,r13		! source line 561
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0IF",r10
!   if priority != 2 then goto _Label_684		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_684
!	_Label_683	jmp	_Label_683
_Label_683:
! THEN...
	mov	562,r13		! source line 562
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	562,r13		! source line 562
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   _temp_686 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_685  sizeInBytes=4
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
	jmp	_Label_687
_Label_684:
! ELSE...
	mov	563,r13		! source line 563
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	563,r13		! source line 563
	mov	"\0\0IF",r10
!   if priority != 3 then goto _Label_689		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_689
!	_Label_688	jmp	_Label_688
_Label_688:
! THEN...
	mov	564,r13		! source line 564
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   _temp_691 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_690  sizeInBytes=4
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
	jmp	_Label_692
_Label_689:
! ELSE...
	mov	565,r13		! source line 565
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0IF",r10
!   if priority != 4 then goto _Label_694		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_694
!	_Label_693	jmp	_Label_693
_Label_693:
! THEN...
	mov	566,r13		! source line 566
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   _temp_696 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_695  sizeInBytes=4
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
	jmp	_Label_697
_Label_694:
! ELSE...
	mov	567,r13		! source line 567
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0IF",r10
!   if priority != 5 then goto _Label_699		(int)
	load	[r14+8],r1
	load	[r1+4096],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_699
!	_Label_698	jmp	_Label_698
_Label_698:
! THEN...
	mov	568,r13		! source line 568
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   _temp_701 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_700  sizeInBytes=4
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
_Label_699:
! END IF...
_Label_697:
! END IF...
_Label_692:
! END IF...
_Label_687:
! END IF...
_Label_682:
! CALL STATEMENT...
!   _temp_702 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	570,r13		! source line 570
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	571,r13		! source line 571
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_703 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	572,r13		! source line 572
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=priority  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4096],r1
	store	r1,[r15+0]
!   Call the function
	mov	573,r13		! source line 573
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_704 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	574,r13		! source line 574
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	574,r13		! source line 574
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
	.word	_Label_705
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_706
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_707
	.word	12
	.word	4
	.word	_Label_708
	.word	-12
	.word	4
	.word	_Label_709
	.word	-16
	.word	4
	.word	_Label_710
	.word	-20
	.word	4
	.word	_Label_711
	.word	-24
	.word	4
	.word	_Label_712
	.word	-28
	.word	4
	.word	_Label_713
	.word	-32
	.word	4
	.word	_Label_714
	.word	-36
	.word	4
	.word	_Label_715
	.word	-40
	.word	4
	.word	_Label_716
	.word	-44
	.word	4
	.word	_Label_717
	.word	-48
	.word	4
	.word	_Label_718
	.word	-52
	.word	4
	.word	_Label_719
	.word	-56
	.word	4
	.word	_Label_720
	.word	-60
	.word	4
	.word	0
_Label_705:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"setPriority\0"
	.align
_Label_706:
	.ascii	"Pself\0"
	.align
_Label_707:
	.byte	'I'
	.ascii	"prio\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_680\0"
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
	mov	577,r13		! source line 577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	578,r13		! source line 578
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
	.word	_Label_721
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_722
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_721:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"getPriority\0"
	.align
_Label_722:
	.ascii	"Pself\0"
	.align
