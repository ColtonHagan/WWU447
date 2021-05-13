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
_StringConst_56:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_55:
	.word	12			! length
	.ascii	" priority = "
	.align
_StringConst_54:
	.word	26			! length
	.ascii	"Thread add to Q at prio = "
	.align
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
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_31:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_30:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_29:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_28:
	.word	39			! length
	.ascii	"ERRRRRRORRR: This should never happen!!"
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
	be	_Label_59
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
_Label_59:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_60
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_60
_Label_60:
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
	mov	27,r1
_Label_527:
	push	r0
	sub	r1,1,r1
	bne	_Label_527
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_61 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_61  sizeInBytes=4
	load	[r14+-104],r1
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
_Label_528:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_528
!   _P_Thread_mainThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_70 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-68]
!   _temp_71 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_70  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0SE",r10
!   _temp_72 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Send message setPriority
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _temp_73 = &_P_Thread_mainThread
	set	_P_Thread_mainThread,r1
	store	r1,[r14+-56]
!   _temp_74 = _temp_73 + 76
	load	[r14+-56],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_74 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-52],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Thread_idleThread = zeros  (sizeInBytes=4100)
	set	_P_Thread_idleThread,r4
	mov	1025,r3
_Label_529:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_529
!   _P_Thread_idleThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_P_Thread_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_76 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-44]
!   _temp_77 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_76  sizeInBytes=4
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
! SEND STATEMENT...
	mov	29,r13		! source line 29
	mov	"\0\0SE",r10
!   _temp_78 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
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
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0SE",r10
!   _temp_79 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+4]
!   Send message setPriority
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0SE",r10
!   _temp_80 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Send message setPriority
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_81 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+4]
!   Send message setPriority
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0SE",r10
!   _temp_82 = &_P_Thread_idleThread
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
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0SE",r10
!   _temp_83 = _function_58_IdleFunction
	set	_function_58_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_84 = &_P_Thread_idleThread
	set	_P_Thread_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_83  sizeInBytes=4
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
	add	r15,112,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_85
	.word	0		! total size of parameters
	.word	108		! frame size = 108
	.word	_Label_86
	.word	-12
	.word	4
	.word	_Label_87
	.word	-16
	.word	4
	.word	_Label_88
	.word	-20
	.word	4
	.word	_Label_89
	.word	-24
	.word	4
	.word	_Label_90
	.word	-28
	.word	4
	.word	_Label_91
	.word	-32
	.word	4
	.word	_Label_92
	.word	-36
	.word	4
	.word	_Label_93
	.word	-40
	.word	4
	.word	_Label_94
	.word	-44
	.word	4
	.word	_Label_95
	.word	-48
	.word	4
	.word	_Label_96
	.word	-52
	.word	4
	.word	_Label_97
	.word	-56
	.word	4
	.word	_Label_98
	.word	-60
	.word	4
	.word	_Label_99
	.word	-64
	.word	4
	.word	_Label_100
	.word	-68
	.word	4
	.word	_Label_101
	.word	-72
	.word	4
	.word	_Label_102
	.word	-76
	.word	4
	.word	_Label_103
	.word	-80
	.word	4
	.word	_Label_104
	.word	-84
	.word	4
	.word	_Label_105
	.word	-88
	.word	4
	.word	_Label_106
	.word	-92
	.word	4
	.word	_Label_107
	.word	-96
	.word	4
	.word	_Label_108
	.word	-100
	.word	4
	.word	_Label_109
	.word	-104
	.word	4
	.word	0
_Label_85:
	.ascii	"InitializeScheduler\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_102:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_103:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_104:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_105:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_106:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_109:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_58_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_58_IdleFunction,r1
	push	r1
	mov	4,r1
_Label_530:
	push	r0
	sub	r1,1,r1
	bne	_Label_530
	mov	42,r13		! source line 42
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_110 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_110  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	53,r13		! source line 53
	mov	"\0\0CE",r10
	call	print
! WHILE STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0WH",r10
_Label_111:
!	_Label_112	jmp	_Label_112
_Label_112:
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
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0IF",r10
!   Call the function
	mov	56,r13		! source line 56
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioThread
!   Retrieve Result: targetName=_temp_116  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_116) then goto _Label_114
	load	[r14+-12],r1
	cmp	r1,r0
	be	_Label_114
	jmp	_Label_115
_Label_114:
! THEN...
	mov	57,r13		! source line 57
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	57,r13		! source line 57
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_117
_Label_115:
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
	add	r2,20,r2
	call	r2
! END IF...
_Label_117:
! END WHILE...
	jmp	_Label_111
_Label_113:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_58_IdleFunction:
	.word	_sourceFileName
	.word	_Label_118
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_119
	.word	8
	.word	4
	.word	_Label_120
	.word	-12
	.word	4
	.word	_Label_121
	.word	-16
	.word	4
	.word	_Label_122
	.word	-20
	.word	4
	.word	0
_Label_118:
	.ascii	"IdleFunction\0"
	.align
_Label_119:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_120:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_121:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_122:
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
_Label_531:
	push	r0
	sub	r1,1,r1
	bne	_Label_531
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
	add	r2,28,r2
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
!   _temp_123 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_123 = 3  (sizeInBytes=4)
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
_Label_124:
	mov	90,r13		! source line 90
	mov	"\0\0SE",r10
!   _temp_128 = &_P_Thread_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_127  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_127 then goto _Label_126 else goto _Label_125
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_125
	jmp	_Label_126
_Label_125:
	mov	90,r13		! source line 90
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0AS",r10
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_129 = &_P_Thread_threadsToBeDestroyed
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
!   _temp_130 = th + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_130 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-16],r2
	store	r1,[r2]
! END WHILE...
	jmp	_Label_124
_Label_126:
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
	.word	_Label_131
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_132
	.word	8
	.word	4
	.word	_Label_133
	.word	-16
	.word	4
	.word	_Label_134
	.word	-20
	.word	4
	.word	_Label_135
	.word	-24
	.word	4
	.word	_Label_136
	.word	-9
	.word	1
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
	.ascii	"Run\0"
	.align
_Label_132:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_136:
	.byte	'C'
	.ascii	"_temp_127\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_138:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_139:
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
_Label_532:
	push	r0
	sub	r1,1,r1
	bne	_Label_532
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
!   _temp_140 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_140  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_141 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_141  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0SE",r10
!   _temp_142 = _function_57_ThreadPrint
	set	_function_57_ThreadPrint,r1
	store	r1,[r14+-64]
!   _temp_143 = &_P_Thread_one
	set	_P_Thread_one,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_142  sizeInBytes=4
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
!   _temp_144 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_144  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	109,r13		! source line 109
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0SE",r10
!   _temp_145 = _function_57_ThreadPrint
	set	_function_57_ThreadPrint,r1
	store	r1,[r14+-52]
!   _temp_146 = &_P_Thread_two
	set	_P_Thread_two,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_145  sizeInBytes=4
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
!   _temp_147 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_147  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0SE",r10
!   _temp_148 = _function_57_ThreadPrint
	set	_function_57_ThreadPrint,r1
	store	r1,[r14+-40]
!   _temp_149 = &_P_Thread_three
	set	_P_Thread_three,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_148  sizeInBytes=4
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
!   _temp_150 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_150  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	113,r13		! source line 113
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0SE",r10
!   _temp_151 = _function_57_ThreadPrint
	set	_function_57_ThreadPrint,r1
	store	r1,[r14+-28]
!   _temp_152 = &_P_Thread_four
	set	_P_Thread_four,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_151  sizeInBytes=4
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
!   _temp_153 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_153  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	115,r13		! source line 115
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	116,r13		! source line 116
	mov	"\0\0SE",r10
!   _temp_154 = _function_57_ThreadPrint
	set	_function_57_ThreadPrint,r1
	store	r1,[r14+-16]
!   _temp_155 = &_P_Thread_five
	set	_P_Thread_five,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_154  sizeInBytes=4
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
	.word	_Label_156
	.word	0		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_157
	.word	-12
	.word	4
	.word	_Label_158
	.word	-16
	.word	4
	.word	_Label_159
	.word	-20
	.word	4
	.word	_Label_160
	.word	-24
	.word	4
	.word	_Label_161
	.word	-28
	.word	4
	.word	_Label_162
	.word	-32
	.word	4
	.word	_Label_163
	.word	-36
	.word	4
	.word	_Label_164
	.word	-40
	.word	4
	.word	_Label_165
	.word	-44
	.word	4
	.word	_Label_166
	.word	-48
	.word	4
	.word	_Label_167
	.word	-52
	.word	4
	.word	_Label_168
	.word	-56
	.word	4
	.word	_Label_169
	.word	-60
	.word	4
	.word	_Label_170
	.word	-64
	.word	4
	.word	_Label_171
	.word	-68
	.word	4
	.word	_Label_172
	.word	-72
	.word	4
	.word	_Label_173
	.word	-76
	.word	4
	.word	0
_Label_156:
	.ascii	"PrintReadyList\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_173:
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
_Label_533:
	push	r0
	sub	r1,1,r1
	bne	_Label_533
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
!   _temp_174 = _P_Thread_currentThread + 80
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_174  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_176 = _P_Thread_currentThread + 84
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_175 = *_temp_176  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_175  sizeInBytes=4
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
!   _temp_177 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_177  sizeInBytes=4
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
	.word	_Label_178
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_179
	.word	-12
	.word	4
	.word	_Label_180
	.word	-16
	.word	4
	.word	_Label_181
	.word	-20
	.word	4
	.word	_Label_182
	.word	-24
	.word	4
	.word	_Label_183
	.word	-28
	.word	4
	.word	_Label_184
	.word	-32
	.word	4
	.word	0
_Label_178:
	.ascii	"ThreadStartMain\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_177\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_176\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_175\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_183:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_184:
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
_Label_534:
	push	r0
	sub	r1,1,r1
	bne	_Label_534
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
!   _temp_185 = &_P_Thread_threadsToBeDestroyed
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
	add	r2,24,r2
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
	.word	_Label_186
	.word	0		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_187
	.word	-12
	.word	4
	.word	_Label_188
	.word	-16
	.word	4
	.word	0
_Label_186:
	.ascii	"ThreadFinish\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_188:
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
_Label_535:
	push	r0
	sub	r1,1,r1
	bne	_Label_535
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
!   _temp_189 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_189  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0IF",r10
!   if _P_Thread_currentThread == 0 then goto _Label_191		(int)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_191
!	_Label_190	jmp	_Label_190
_Label_190:
! THEN...
	mov	176,r13		! source line 176
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_192 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_192  sizeInBytes=4
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
!   _temp_194 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Data Move: _temp_193 = *_temp_194  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_193  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_191:
! CALL STATEMENT...
!   _temp_195 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_195  sizeInBytes=4
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
!   _temp_196 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_196  sizeInBytes=4
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
	.word	_Label_197
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_198
	.word	8
	.word	4
	.word	_Label_199
	.word	-12
	.word	4
	.word	_Label_200
	.word	-16
	.word	4
	.word	_Label_201
	.word	-20
	.word	4
	.word	_Label_202
	.word	-24
	.word	4
	.word	_Label_203
	.word	-28
	.word	4
	.word	_Label_204
	.word	-32
	.word	4
	.word	_Label_205
	.word	-36
	.word	4
	.word	0
_Label_197:
	.ascii	"FatalError\0"
	.align
_Label_198:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_205:
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
_Label_536:
	push	r0
	sub	r1,1,r1
	bne	_Label_536
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
!   if newStatus != 1 then goto _Label_207		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_207
!	_Label_206	jmp	_Label_206
_Label_206:
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
	jmp	_Label_208
_Label_207:
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
_Label_208:
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
	.word	_Label_209
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_210
	.word	8
	.word	4
	.word	_Label_211
	.word	-12
	.word	4
	.word	0
_Label_209:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_210:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_211:
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
_Label_537:
	push	r0
	sub	r1,1,r1
	bne	_Label_537
	mov	214,r13		! source line 214
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0IF",r10
!   Call the function
	mov	226,r13		! source line 226
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioInt
!   Retrieve Result: targetName=_temp_214  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
	mov	226,r13		! source line 226
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
!   Retrieve Result: targetName=_temp_215  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-12]
!   if _temp_214 < _temp_215 then goto _Label_213		(int)
	load	[r14+-16],r1
	load	[r14+-12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_213
!	_Label_212	jmp	_Label_212
_Label_212:
! THEN...
	mov	227,r13		! source line 227
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	227,r13		! source line 227
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
_Label_213:
! ASSIGNMENT STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0AS",r10
!   _P_Thread_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Thread_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	230,r13		! source line 230
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
	.word	_Label_216
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_217
	.word	-12
	.word	4
	.word	_Label_218
	.word	-16
	.word	4
	.word	0
_Label_216:
	.ascii	"TimerInterruptHandler\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
! 
! ===============  FUNCTION ThreadPrint  ===============
! 
_function_57_ThreadPrint:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_57_ThreadPrint,r1
	push	r1
	mov	17,r1
_Label_538:
	push	r0
	sub	r1,1,r1
	bne	_Label_538
	mov	235,r13		! source line 235
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! CALL STATEMENT...
!   _temp_219 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_219  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	243,r13		! source line 243
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_221 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-60]
!   Data Move: _temp_220 = *_temp_221  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_220  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_222 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_222  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	246,r13		! source line 246
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_231 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-48]
!   Data Move: _temp_230 = *_temp_231  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   Branch to the right case label
	load	[r14+-52],r1
	cmp	r1,1
	be	_Label_225
	cmp	r1,2
	be	_Label_226
	cmp	r1,3
	be	_Label_227
	cmp	r1,4
	be	_Label_228
	cmp	r1,5
	be	_Label_229
	jmp	_Label_223
! CASE 1...
_Label_225:
! CALL STATEMENT...
!   _temp_232 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_232  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	248,r13		! source line 248
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0BR",r10
	jmp	_Label_224
! CASE 2...
_Label_226:
! CALL STATEMENT...
!   _temp_233 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_233  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	251,r13		! source line 251
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0BR",r10
	jmp	_Label_224
! CASE 3...
_Label_227:
! CALL STATEMENT...
!   _temp_234 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_234  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0BR",r10
	jmp	_Label_224
! CASE 4...
_Label_228:
! CALL STATEMENT...
!   _temp_235 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_235  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	257,r13		! source line 257
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0BR",r10
	jmp	_Label_224
! CASE 5...
_Label_229:
! CALL STATEMENT...
!   _temp_236 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_236  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	260,r13		! source line 260
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0BR",r10
	jmp	_Label_224
! DEFAULT CASE...
_Label_223:
! CALL STATEMENT...
!   _temp_237 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_237  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	263,r13		! source line 263
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_224:
! CALL STATEMENT...
!   _temp_238 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_238  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	265,r13		! source line 265
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_239 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	266,r13		! source line 266
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_240 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_240  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	267,r13		! source line 267
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	268,r13		! source line 268
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	270,r13		! source line 270
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! RETURN STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_57_ThreadPrint:
	.word	_sourceFileName
	.word	_Label_241
	.word	4		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_242
	.word	8
	.word	4
	.word	_Label_243
	.word	-12
	.word	4
	.word	_Label_244
	.word	-16
	.word	4
	.word	_Label_245
	.word	-20
	.word	4
	.word	_Label_246
	.word	-24
	.word	4
	.word	_Label_247
	.word	-28
	.word	4
	.word	_Label_248
	.word	-32
	.word	4
	.word	_Label_249
	.word	-36
	.word	4
	.word	_Label_250
	.word	-40
	.word	4
	.word	_Label_251
	.word	-44
	.word	4
	.word	_Label_252
	.word	-48
	.word	4
	.word	_Label_253
	.word	-52
	.word	4
	.word	_Label_254
	.word	-56
	.word	4
	.word	_Label_255
	.word	-60
	.word	4
	.word	_Label_256
	.word	-64
	.word	4
	.word	_Label_257
	.word	-68
	.word	4
	.word	_Label_258
	.word	-72
	.word	4
	.word	0
_Label_241:
	.ascii	"ThreadPrint\0"
	.align
_Label_242:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_238\0"
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
	.ascii	"_temp_235\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_258:
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
_Label_539:
	push	r0
	sub	r1,1,r1
	bne	_Label_539
	mov	273,r13		! source line 273
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0IF",r10
	mov	274,r13		! source line 274
	mov	"\0\0SE",r10
!   _temp_262 = &_P_Thread_one
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
!   Retrieve Result: targetName=_temp_261  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-13]
!   if _temp_261 then goto _Label_260 else goto _Label_259
	loadb	[r14+-13],r1
	cmp	r1,0
	be	_Label_259
	jmp	_Label_260
_Label_259:
! THEN...
	mov	275,r13		! source line 275
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	275,r13		! source line 275
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=4)
	mov	1,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_263
_Label_260:
! ELSE...
	mov	276,r13		! source line 276
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0IF",r10
	mov	276,r13		! source line 276
	mov	"\0\0SE",r10
!   _temp_267 = &_P_Thread_two
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
!   Retrieve Result: targetName=_temp_266  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-12]
!   if _temp_266 then goto _Label_265 else goto _Label_264
	loadb	[r14+-12],r1
	cmp	r1,0
	be	_Label_264
	jmp	_Label_265
_Label_264:
! THEN...
	mov	277,r13		! source line 277
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0RE",r10
!   ReturnResult: 2  (sizeInBytes=4)
	mov	2,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_268
_Label_265:
! ELSE...
	mov	278,r13		! source line 278
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	278,r13		! source line 278
	mov	"\0\0IF",r10
	mov	278,r13		! source line 278
	mov	"\0\0SE",r10
!   _temp_272 = &_P_Thread_three
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
!   Retrieve Result: targetName=_temp_271  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_271 then goto _Label_270 else goto _Label_269
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_269
	jmp	_Label_270
_Label_269:
! THEN...
	mov	279,r13		! source line 279
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	279,r13		! source line 279
	mov	"\0\0RE",r10
!   ReturnResult: 3  (sizeInBytes=4)
	mov	3,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_273
_Label_270:
! ELSE...
	mov	280,r13		! source line 280
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	280,r13		! source line 280
	mov	"\0\0IF",r10
	mov	280,r13		! source line 280
	mov	"\0\0SE",r10
!   _temp_277 = &_P_Thread_four
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
!   Retrieve Result: targetName=_temp_276  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_276 then goto _Label_275 else goto _Label_274
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_274
	jmp	_Label_275
_Label_274:
! THEN...
	mov	281,r13		! source line 281
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	281,r13		! source line 281
	mov	"\0\0RE",r10
!   ReturnResult: 4  (sizeInBytes=4)
	mov	4,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_278
_Label_275:
! ELSE...
	mov	282,r13		! source line 282
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0IF",r10
	mov	282,r13		! source line 282
	mov	"\0\0SE",r10
!   _temp_282 = &_P_Thread_five
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
!   Retrieve Result: targetName=_temp_281  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_281 then goto _Label_280 else goto _Label_279
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_279
	jmp	_Label_280
_Label_279:
! THEN...
	mov	283,r13		! source line 283
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	283,r13		! source line 283
	mov	"\0\0RE",r10
!   ReturnResult: 5  (sizeInBytes=4)
	mov	5,r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_280:
! END IF...
_Label_278:
! END IF...
_Label_273:
! END IF...
_Label_268:
! END IF...
_Label_263:
! CALL STATEMENT...
!   Call the function
	mov	285,r13		! source line 285
	mov	"\0\0CA",r10
	call	_P_Thread_PrintReadyList
! RETURN STATEMENT...
	mov	286,r13		! source line 286
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
	.word	_Label_283
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_284
	.word	-20
	.word	4
	.word	_Label_285
	.word	-9
	.word	1
	.word	_Label_286
	.word	-24
	.word	4
	.word	_Label_287
	.word	-10
	.word	1
	.word	_Label_288
	.word	-28
	.word	4
	.word	_Label_289
	.word	-11
	.word	1
	.word	_Label_290
	.word	-32
	.word	4
	.word	_Label_291
	.word	-12
	.word	1
	.word	_Label_292
	.word	-36
	.word	4
	.word	_Label_293
	.word	-13
	.word	1
	.word	0
_Label_283:
	.ascii	"highestPrioInt\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_285:
	.byte	'C'
	.ascii	"_temp_281\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_287:
	.byte	'C'
	.ascii	"_temp_276\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_289:
	.byte	'C'
	.ascii	"_temp_271\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_291:
	.byte	'C'
	.ascii	"_temp_266\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_293:
	.byte	'C'
	.ascii	"_temp_261\0"
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
_Label_540:
	push	r0
	sub	r1,1,r1
	bne	_Label_540
	mov	289,r13		! source line 289
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0AS",r10
!   Call the function
	mov	291,r13		! source line 291
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioInt
!   Retrieve Result: targetName=prioInt  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_294 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_294  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	292,r13		! source line 292
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prioInt  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	293,r13		! source line 293
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_295 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	294,r13		! source line 294
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	mov	295,r13		! source line 295
	mov	"\0\0SE",r10
!   Prepare Argument: offset=8  value=prioInt  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	295,r13		! source line 295
	mov	"\0\0CA",r10
	call	_P_Thread_intToQ
!   Retrieve Result: targetName=_temp_297  sizeInBytes=12
	mov	3,r3
	mov	r15,r5
	add	r14,-24,r4
_Label_541:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_541
!   _temp_298 = &_temp_297
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
!   Retrieve Result: targetName=_temp_296  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_296  (sizeInBytes=4)
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
	.word	_Label_299
	.word	0		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_300
	.word	-12
	.word	4
	.word	_Label_301
	.word	-24
	.word	12
	.word	_Label_302
	.word	-28
	.word	4
	.word	_Label_303
	.word	-32
	.word	4
	.word	_Label_304
	.word	-36
	.word	4
	.word	_Label_305
	.word	-40
	.word	4
	.word	0
_Label_299:
	.ascii	"highestPrioThread\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_305:
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
_Label_542:
	push	r0
	sub	r1,1,r1
	bne	_Label_542
	mov	298,r13		! source line 298
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if prio != 1 then goto _Label_307		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_307
!	_Label_306	jmp	_Label_306
_Label_306:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_one  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_one,r5
_Label_543:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_543
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_308
_Label_307:
! ELSE...
	mov	305,r13		! source line 305
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0IF",r10
!   if prio != 2 then goto _Label_310		(int)
	load	[r14+8],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_310
!	_Label_309	jmp	_Label_309
_Label_309:
! THEN...
	mov	306,r13		! source line 306
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_two  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_two,r5
_Label_544:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_544
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_311
_Label_310:
! ELSE...
	mov	307,r13		! source line 307
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if prio != 3 then goto _Label_313		(int)
	load	[r14+8],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_313
!	_Label_312	jmp	_Label_312
_Label_312:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_three  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_three,r5
_Label_545:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_545
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_314
_Label_313:
! ELSE...
	mov	309,r13		! source line 309
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0IF",r10
!   if prio != 4 then goto _Label_316		(int)
	load	[r14+8],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_316
!	_Label_315	jmp	_Label_315
_Label_315:
! THEN...
	mov	310,r13		! source line 310
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_four  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_four,r5
_Label_546:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_546
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_317
_Label_316:
! ELSE...
	mov	311,r13		! source line 311
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0IF",r10
!   if prio != 5 then goto _Label_319		(int)
	load	[r14+8],r1
	mov	5,r2
	cmp	r1,r2
	bne	_Label_319
!	_Label_318	jmp	_Label_318
_Label_318:
! THEN...
	mov	312,r13		! source line 312
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_five  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_five,r5
_Label_547:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_547
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_319:
! END IF...
_Label_317:
! END IF...
_Label_314:
! END IF...
_Label_311:
! END IF...
_Label_308:
! CALL STATEMENT...
!   _temp_320 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	315,r13		! source line 315
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0RE",r10
!   ReturnResult: _P_Thread_readyList  (sizeInBytes=12)
	mov	3,r3
	add	r14,8,r4
	set	_P_Thread_readyList,r5
_Label_548:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_548
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Thread_intToQ:
	.word	_sourceFileName
	.word	_Label_321
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_322
	.word	8
	.word	4
	.word	_Label_323
	.word	-12
	.word	4
	.word	0
_Label_321:
	.ascii	"intToQ\0"
	.align
_Label_322:
	.byte	'I'
	.ascii	"prio\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Thread_Thread:
	.word	_Label_324
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
_Label_324:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_325
	.word	_sourceFileName
	.word	43		! line number
	.word	4100		! size of instances, in bytes
	.word	_P_Thread_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_325:
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
_Label_549:
	push	r0
	sub	r1,1,r1
	bne	_Label_549
	mov	323,r13		! source line 323
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0AS",r10
!   _temp_326 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_326) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_326 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-108],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   _temp_327 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-104]
!   Move address of _temp_327 [0 ] into _temp_328
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
!   Data Move: *_temp_328 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-100],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0AS",r10
!   _temp_329 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-96]
!   Move address of _temp_329 [999 ] into _temp_330
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
!   Data Move: *_temp_330 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-92],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   _temp_331 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-88]
!   Move address of _temp_331 [999 ] into _temp_332
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
!   stackTop = _temp_332		(4 bytes)
	load	[r14+-84],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0AS",r10
!   _temp_333 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-80]
!   NEW ARRAY Constructor...
!   _temp_335 = &_temp_334
	add	r14,-76,r1
	store	r1,[r14+-20]
!   _temp_335 = _temp_335 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	13,r1
	store	r1,[r14+-16]
_Label_337:
!   Data Move: *_temp_335 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_335 = _temp_335 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_336 = _temp_336 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_336) then goto _Label_337
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_337
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-76]
!   _temp_338 = &_temp_334
	add	r14,-76,r1
	store	r1,[r14+-12]
!   make sure array has size 13
	load	[r14+-80],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_550
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_550:
!   make sure array has size 13
	load	[r14+-12],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_333 = *_temp_338  (sizeInBytes=56)
	load	[r14+-12],r5
	load	[r14+-80],r4
	mov	14,r3
_Label_551:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_551
! ASSIGNMENT STATEMENT...
	mov	339,r13		! source line 339
	mov	"\0\0AS",r10
!   time = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4092]
! RETURN STATEMENT...
	mov	339,r13		! source line 339
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
	.word	_Label_339
	.word	8		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_340
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_341
	.word	12
	.word	4
	.word	_Label_342
	.word	-12
	.word	4
	.word	_Label_343
	.word	-16
	.word	4
	.word	_Label_344
	.word	-20
	.word	4
	.word	_Label_345
	.word	-76
	.word	56
	.word	_Label_346
	.word	-80
	.word	4
	.word	_Label_347
	.word	-84
	.word	4
	.word	_Label_348
	.word	-88
	.word	4
	.word	_Label_349
	.word	-92
	.word	4
	.word	_Label_350
	.word	-96
	.word	4
	.word	_Label_351
	.word	-100
	.word	4
	.word	_Label_352
	.word	-104
	.word	4
	.word	_Label_353
	.word	-108
	.word	4
	.word	0
_Label_339:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_340:
	.ascii	"Pself\0"
	.align
_Label_341:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_349:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_350:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_351:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_352:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_353:
	.byte	'?'
	.ascii	"_temp_326\0"
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
_Label_552:
	push	r0
	sub	r1,1,r1
	bne	_Label_552
	mov	344,r13		! source line 344
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	355,r13		! source line 355
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	359,r13		! source line 359
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
	mov	360,r13		! source line 360
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_354 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-32]
!   Data Move: *stackTop = _temp_354  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	362,r13		! source line 362
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=priority  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4096],r1
	store	r1,[r15+0]
!   Call the function
	mov	362,r13		! source line 362
	mov	"\0\0CA",r10
	call	_P_Thread_intToQ
!   Retrieve Result: targetName=_temp_356  sizeInBytes=12
	mov	3,r3
	mov	r15,r5
	add	r14,-24,r4
_Label_553:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_553
!   _temp_357 = &_temp_356
	add	r14,-24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_355  sizeInBytes=4
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
	mov	363,r13		! source line 363
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	363,r13		! source line 363
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	363,r13		! source line 363
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
	.word	_Label_358
	.word	12		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_359
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_360
	.word	12
	.word	4
	.word	_Label_361
	.word	16
	.word	4
	.word	_Label_362
	.word	-12
	.word	4
	.word	_Label_363
	.word	-24
	.word	12
	.word	_Label_364
	.word	-28
	.word	4
	.word	_Label_365
	.word	-32
	.word	4
	.word	_Label_366
	.word	-36
	.word	4
	.word	_Label_367
	.word	-40
	.word	4
	.word	0
_Label_358:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_359:
	.ascii	"Pself\0"
	.align
_Label_360:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_361:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_366:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_367:
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
_Label_554:
	push	r0
	sub	r1,1,r1
	bne	_Label_554
	mov	368,r13		! source line 368
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	384,r13		! source line 384
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if _temp_370 == _P_Thread_currentThread then goto _Label_369		(int)
	load	[r14+-40],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_369
!	_Label_368	jmp	_Label_368
_Label_368:
! THEN...
	mov	385,r13		! source line 385
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_371 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	385,r13		! source line 385
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_369:
! ASSIGNMENT STATEMENT...
	mov	387,r13		! source line 387
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	387,r13		! source line 387
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0AS",r10
!   Call the function
	mov	391,r13		! source line 391
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioThread
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! IF STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_373		(int)
	load	[r14+-44],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_373
!	_Label_372	jmp	_Label_372
_Label_372:
! THEN...
	mov	396,r13		! source line 396
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_375		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_375
!	_Label_374	jmp	_Label_374
_Label_374:
! THEN...
	mov	397,r13		! source line 397
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_376 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_375:
! ASSIGNMENT STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=priority  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4096],r1
	store	r1,[r15+0]
!   Call the function
	mov	401,r13		! source line 401
	mov	"\0\0CA",r10
	call	_P_Thread_intToQ
!   Retrieve Result: targetName=_temp_378  sizeInBytes=12
	mov	3,r3
	mov	r15,r5
	add	r14,-24,r4
_Label_555:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_555
!   _temp_379 = &_temp_378
	add	r14,-24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_377  sizeInBytes=4
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
	mov	402,r13		! source line 402
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! END IF...
_Label_373:
! ASSIGNMENT STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	404,r13		! source line 404
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	404,r13		! source line 404
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
	.word	_Label_380
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_381
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_382
	.word	-12
	.word	4
	.word	_Label_383
	.word	-24
	.word	12
	.word	_Label_384
	.word	-28
	.word	4
	.word	_Label_385
	.word	-32
	.word	4
	.word	_Label_386
	.word	-36
	.word	4
	.word	_Label_387
	.word	-40
	.word	4
	.word	_Label_388
	.word	-44
	.word	4
	.word	_Label_389
	.word	-48
	.word	4
	.word	_Label_390
	.word	-52
	.word	4
	.word	0
_Label_380:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_381:
	.ascii	"Pself\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_388:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_389:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_390:
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
_Label_556:
	push	r0
	sub	r1,1,r1
	bne	_Label_556
	mov	409,r13		! source line 409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	421,r13		! source line 421
	mov	"\0\0IF",r10
!   if _P_Thread_currentInterruptStatus == 2 then goto _Label_392		(int)
	set	_P_Thread_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_392
!	_Label_391	jmp	_Label_391
_Label_391:
! THEN...
	mov	422,r13		! source line 422
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_393 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	422,r13		! source line 422
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_392:
! IF STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if _temp_396 == _P_Thread_currentThread then goto _Label_395		(int)
	load	[r14+-20],r1
	set	_P_Thread_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_395
!	_Label_394	jmp	_Label_394
_Label_394:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_397 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_397  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	426,r13		! source line 426
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_395:
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0AS",r10
!   Call the function
	mov	432,r13		! source line 432
	mov	"\0\0CA",r10
	call	_P_Thread_highestPrioThread
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_398
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_398
	jmp	_Label_399
_Label_398:
! THEN...
	mov	434,r13		! source line 434
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	434,r13		! source line 434
	mov	"\0\0CA",r10
	call	_P_Thread_PrintReadyList
! CALL STATEMENT...
!   _temp_400 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	435,r13		! source line 435
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_399:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CA",r10
	call	_P_Thread_Run
! RETURN STATEMENT...
	mov	437,r13		! source line 437
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
	.word	_Label_401
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_402
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_403
	.word	-12
	.word	4
	.word	_Label_404
	.word	-16
	.word	4
	.word	_Label_405
	.word	-20
	.word	4
	.word	_Label_406
	.word	-24
	.word	4
	.word	_Label_407
	.word	-28
	.word	4
	.word	0
_Label_401:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_402:
	.ascii	"Pself\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_397\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_396\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_407:
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
_Label_557:
	push	r0
	sub	r1,1,r1
	bne	_Label_557
	mov	442,r13		! source line 442
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	448,r13		! source line 448
	mov	"\0\0IF",r10
!   _temp_411 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_411 [0 ] into _temp_412
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
!   Data Move: _temp_410 = *_temp_412  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_410 == 606348324 then goto _Label_409		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_409
!	_Label_408	jmp	_Label_408
_Label_408:
! THEN...
	mov	449,r13		! source line 449
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_413 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_413  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	449,r13		! source line 449
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
	jmp	_Label_414
_Label_409:
! ELSE...
	mov	450,r13		! source line 450
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	450,r13		! source line 450
	mov	"\0\0IF",r10
!   _temp_418 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_418 [999 ] into _temp_419
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
!   Data Move: _temp_417 = *_temp_419  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_417 == 606348324 then goto _Label_416		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_416
!	_Label_415	jmp	_Label_415
_Label_415:
! THEN...
	mov	451,r13		! source line 451
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_420 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_420  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	451,r13		! source line 451
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_416:
! END IF...
_Label_414:
! RETURN STATEMENT...
	mov	448,r13		! source line 448
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
	.word	_Label_421
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_422
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_423
	.word	-12
	.word	4
	.word	_Label_424
	.word	-16
	.word	4
	.word	_Label_425
	.word	-20
	.word	4
	.word	_Label_426
	.word	-24
	.word	4
	.word	_Label_427
	.word	-28
	.word	4
	.word	_Label_428
	.word	-32
	.word	4
	.word	_Label_429
	.word	-36
	.word	4
	.word	_Label_430
	.word	-40
	.word	4
	.word	0
_Label_421:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_422:
	.ascii	"Pself\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_410\0"
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
_Label_558:
	push	r0
	sub	r1,1,r1
	bne	_Label_558
	mov	457,r13		! source line 457
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	463,r13		! source line 463
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! CALL STATEMENT...
!   _temp_431 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_431  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	464,r13		! source line 464
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_432 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_432  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	465,r13		! source line 465
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_433  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	466,r13		! source line 466
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_434 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_434  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Call the function
	mov	467,r13		! source line 467
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_435 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	468,r13		! source line 468
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=priority  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4096],r1
	store	r1,[r15+0]
!   Call the function
	mov	469,r13		! source line 469
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_436 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_436  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	470,r13		! source line 470
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_437 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_437  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	471,r13		! source line 471
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	472,r13		! source line 472
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_442 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-108]
!   Calculate and save the FOR-LOOP ending value
!   _temp_443 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-104]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_442  (sizeInBytes=4)
	load	[r14+-108],r1
	store	r1,[r14+-140]
_Label_438:
!   Perform the FOR-LOOP termination test
!   if i > _temp_443 then goto _Label_441		
	load	[r14+-140],r1
	load	[r14+-104],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_441
_Label_439:
	mov	472,r13		! source line 472
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_444 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	473,r13		! source line 473
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_445 = i + 2		(int)
	load	[r14+-140],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_445  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	474,r13		! source line 474
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_446 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_446  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	475,r13		! source line 475
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_448 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-84]
!   Move address of _temp_448 [i ] into _temp_449
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
!   Data Move: _temp_447 = *_temp_449  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_447  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	476,r13		! source line 476
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_450 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_450  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	477,r13		! source line 477
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_452 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-68]
!   Move address of _temp_452 [i ] into _temp_453
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
!   Data Move: _temp_451 = *_temp_453  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_451  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	478,r13		! source line 478
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_454 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_454  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	479,r13		! source line 479
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_440:
!   i = i + 1
	load	[r14+-140],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-140]
	jmp	_Label_438
! END FOR
_Label_441:
! CALL STATEMENT...
!   _temp_455 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-56]
!   _temp_456 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_455  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_456  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Call the function
	mov	481,r13		! source line 481
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_457 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-48]
!   _temp_459 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-40]
!   Move address of _temp_459 [0 ] into _temp_460
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
!   _temp_458 = _temp_460		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_457  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_458  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	482,r13		! source line 482
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	483,r13		! source line 483
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_463
	cmp	r1,2
	be	_Label_464
	cmp	r1,3
	be	_Label_465
	cmp	r1,4
	be	_Label_466
	cmp	r1,5
	be	_Label_467
	jmp	_Label_461
! CASE 1...
_Label_463:
! CALL STATEMENT...
!   _temp_468 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_468  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	485,r13		! source line 485
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0BR",r10
	jmp	_Label_462
! CASE 2...
_Label_464:
! CALL STATEMENT...
!   _temp_469 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_469  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	488,r13		! source line 488
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0BR",r10
	jmp	_Label_462
! CASE 3...
_Label_465:
! CALL STATEMENT...
!   _temp_470 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_470  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	491,r13		! source line 491
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0BR",r10
	jmp	_Label_462
! CASE 4...
_Label_466:
! CALL STATEMENT...
!   _temp_471 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_471  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	494,r13		! source line 494
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	495,r13		! source line 495
	mov	"\0\0BR",r10
	jmp	_Label_462
! CASE 5...
_Label_467:
! CALL STATEMENT...
!   _temp_472 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_472  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	497,r13		! source line 497
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0BR",r10
	jmp	_Label_462
! DEFAULT CASE...
_Label_461:
! CALL STATEMENT...
!   _temp_473 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_473  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	500,r13		! source line 500
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END SWITCH...
_Label_462:
! ASSIGNMENT STATEMENT...
	mov	502,r13		! source line 502
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	502,r13		! source line 502
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-144]
! RETURN STATEMENT...
	mov	502,r13		! source line 502
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
	.word	_Label_474
	.word	4		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_475
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_476
	.word	-12
	.word	4
	.word	_Label_477
	.word	-16
	.word	4
	.word	_Label_478
	.word	-20
	.word	4
	.word	_Label_479
	.word	-24
	.word	4
	.word	_Label_480
	.word	-28
	.word	4
	.word	_Label_481
	.word	-32
	.word	4
	.word	_Label_482
	.word	-36
	.word	4
	.word	_Label_483
	.word	-40
	.word	4
	.word	_Label_484
	.word	-44
	.word	4
	.word	_Label_485
	.word	-48
	.word	4
	.word	_Label_486
	.word	-52
	.word	4
	.word	_Label_487
	.word	-56
	.word	4
	.word	_Label_488
	.word	-60
	.word	4
	.word	_Label_489
	.word	-64
	.word	4
	.word	_Label_490
	.word	-68
	.word	4
	.word	_Label_491
	.word	-72
	.word	4
	.word	_Label_492
	.word	-76
	.word	4
	.word	_Label_493
	.word	-80
	.word	4
	.word	_Label_494
	.word	-84
	.word	4
	.word	_Label_495
	.word	-88
	.word	4
	.word	_Label_496
	.word	-92
	.word	4
	.word	_Label_497
	.word	-96
	.word	4
	.word	_Label_498
	.word	-100
	.word	4
	.word	_Label_499
	.word	-104
	.word	4
	.word	_Label_500
	.word	-108
	.word	4
	.word	_Label_501
	.word	-112
	.word	4
	.word	_Label_502
	.word	-116
	.word	4
	.word	_Label_503
	.word	-120
	.word	4
	.word	_Label_504
	.word	-124
	.word	4
	.word	_Label_505
	.word	-128
	.word	4
	.word	_Label_506
	.word	-132
	.word	4
	.word	_Label_507
	.word	-136
	.word	4
	.word	_Label_508
	.word	-140
	.word	4
	.word	_Label_509
	.word	-144
	.word	4
	.word	0
_Label_474:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_475:
	.ascii	"Pself\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_473\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_459\0"
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
	.ascii	"_temp_456\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_493:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_434\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_433\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_508:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_509:
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
_Label_559:
	push	r0
	sub	r1,1,r1
	bne	_Label_559
	mov	506,r13		! source line 506
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0AS",r10
!   priority = prio		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4096]
! SEND STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=prio  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	508,r13		! source line 508
	mov	"\0\0CA",r10
	call	_P_Thread_intToQ
!   Retrieve Result: targetName=_temp_511  sizeInBytes=12
	mov	3,r3
	mov	r15,r5
	add	r14,-36,r4
_Label_560:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_560
!   _temp_512 = &_temp_511
	add	r14,-36,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_510  sizeInBytes=4
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
!   _temp_513 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_513  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	510,r13		! source line 510
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prio  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	511,r13		! source line 511
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_514 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_514  sizeInBytes=4
	load	[r14+-16],r1
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
!   _temp_515 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_515  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	514,r13		! source line 514
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	514,r13		! source line 514
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
	.word	_Label_516
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_517
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_518
	.word	12
	.word	4
	.word	_Label_519
	.word	-12
	.word	4
	.word	_Label_520
	.word	-16
	.word	4
	.word	_Label_521
	.word	-20
	.word	4
	.word	_Label_522
	.word	-24
	.word	4
	.word	_Label_523
	.word	-36
	.word	12
	.word	_Label_524
	.word	-40
	.word	4
	.word	0
_Label_516:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"setPriority\0"
	.align
_Label_517:
	.ascii	"Pself\0"
	.align
_Label_518:
	.byte	'I'
	.ascii	"prio\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_513\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_512\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_510\0"
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
	mov	517,r13		! source line 517
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	518,r13		! source line 518
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
	.word	_Label_525
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_526
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_525:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"getPriority\0"
	.align
_Label_526:
	.ascii	"Pself\0"
	.align
