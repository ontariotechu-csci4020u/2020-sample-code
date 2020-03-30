.class public Base
.super java/lang/Object

.method public <init>()V
    aload_0
    invokenonvirtual java/lang/Object/<init>()V
    return
.end method


.method public static main([Ljava/lang/String;)V
    .limit stack 10
    .limit locals 10

    ;
    ; Print an integer 
    ;
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc 123
    invokevirtual java/io/PrintStream/println(I)V

    ;
    ; Print a float
    ;
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc 3.14
    invokevirtual java/io/PrintStream/println(F)V
    
    ;
    ; Print a double
    ;
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc2_w 3.14
    invokevirtual java/io/PrintStream/println(D)V

    ;
    ; Print a string
    ;
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc "Hello world"
    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V




    ;
    ; Save integer to local
    ;
    ldc 10
    istore_0    ; short-hand
    ldc 20
    istore 1    ; explicit

    ; Add them
    iload_0
    iload_1
    iadd

    ; Print
    ; don't forget to get the order on the stack right
    istore_0
    getstatic java/lang/System/out Ljava/io/PrintStream;
    iload_0
    invokevirtual java/io/PrintStream/println(I)V

    ; Branching
    ldc 1
    ifeq World

Hello:
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc "Hello"
    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
    goto EndIf

World:
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc "World"
    invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

EndIf:

    return
.end method
