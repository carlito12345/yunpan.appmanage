.class public final Lvd/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final q:Lorg/slf4j/Logger;

.field public static final r:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lvd/z;

.field public volatile e:I

.field public volatile f:Ljava/lang/String;

.field public volatile g:Z

.field public volatile h:Z

.field public volatile i:J

.field public final j:Ljava/util/concurrent/atomic/AtomicLong;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Z

.field public final m:Ljava/util/LinkedList;

.field public final n:Ljava/util/LinkedList;

.field public p:Lbd/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lvd/h0;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvd/h0;->q:Lorg/slf4j/Logger;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lvd/h0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lvd/z;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lvd/h0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lvd/h0;->e:I

    .line 13
    .line 14
    const-string v0, "?????"

    .line 15
    .line 16
    iput-object v0, p0, Lvd/h0;->f:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 19
    .line 20
    const-wide/16 v1, 0x0

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lvd/h0;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lvd/h0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    invoke-virtual {p1}, Lvd/z;->r()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lvd/h0;->d:Lvd/z;

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Lvd/h0;->b:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p2, p0, Lvd/h0;->f:Ljava/lang/String;

    .line 47
    .line 48
    iput-object p2, p0, Lvd/h0;->c:Ljava/lang/String;

    .line 49
    .line 50
    iget-object p1, p1, Lvd/z;->g:Lvc/b;

    .line 51
    .line 52
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lwc/a;

    .line 57
    .line 58
    iget-boolean p1, p1, Lwc/a;->n0:Z

    .line 59
    .line 60
    iput-boolean p1, p0, Lvd/h0;->l:Z

    .line 61
    .line 62
    if-eqz p1, :cond_0

    .line 63
    .line 64
    new-instance p1, Ljava/util/LinkedList;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p1, p0, Lvd/h0;->m:Ljava/util/LinkedList;

    .line 70
    .line 71
    new-instance p1, Ljava/util/LinkedList;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p1, p0, Lvd/h0;->n:Ljava/util/LinkedList;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lvd/h0;->m:Ljava/util/LinkedList;

    .line 81
    .line 82
    iput-object p1, p0, Lvd/h0;->n:Ljava/util/LinkedList;

    .line 83
    .line 84
    :goto_0
    return-void
.end method

.method public static A(Led/c;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "A:"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-byte v0, p0, Led/c;->a:B

    .line 10
    .line 11
    const/16 v1, -0x5e

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    const/16 v1, 0x25

    .line 19
    .line 20
    const-string v2, "Invalid operation for "

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    const/16 v1, 0x32

    .line 25
    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    const/16 v1, 0x71

    .line 29
    .line 30
    if-eq v0, v1, :cond_2

    .line 31
    .line 32
    packed-switch v0, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    new-instance v0, Lvd/r;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, " service"

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v0, p0}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw v0

    .line 61
    :cond_0
    move-object v0, p0

    .line 62
    check-cast v0, Lgd/a;

    .line 63
    .line 64
    iget-byte v0, v0, Lgd/a;->t0:B

    .line 65
    .line 66
    and-int/lit16 v0, v0, 0xff

    .line 67
    .line 68
    const/16 v1, -0x29

    .line 69
    .line 70
    if-eq v0, v1, :cond_2

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    const/16 v1, 0x10

    .line 75
    .line 76
    if-eq v0, v1, :cond_2

    .line 77
    .line 78
    const/16 v1, 0x23

    .line 79
    .line 80
    if-eq v0, v1, :cond_2

    .line 81
    .line 82
    const/16 v1, 0x26

    .line 83
    .line 84
    if-eq v0, v1, :cond_2

    .line 85
    .line 86
    const/16 v1, 0x68

    .line 87
    .line 88
    if-eq v0, v1, :cond_2

    .line 89
    .line 90
    const/16 v1, 0x53

    .line 91
    .line 92
    if-eq v0, v1, :cond_2

    .line 93
    .line 94
    const/16 v1, 0x54

    .line 95
    .line 96
    if-ne v0, v1, :cond_1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Lvd/r;

    .line 100
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p1, " service: "

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-direct {v0, p0}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v0

    .line 125
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static S([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x2

    .line 4
    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    .line 6
    aget-object v3, p0, v1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const-class v4, Lvd/h0;

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    const-string v4, "close"

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, "org.junit.runners."

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    add-int/lit8 v0, v1, -0x4

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    :goto_2
    sub-int/2addr v0, v2

    .line 60
    new-array v1, v0, [Ljava/lang/StackTraceElement;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    return-object v1
.end method


# virtual methods
.method public final J()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lvd/h0;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lvd/h0;->m:Ljava/util/LinkedList;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lvd/h0;->m:Ljava/util/LinkedList;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, [Ljava/lang/StackTraceElement;

    .line 26
    .line 27
    sget-object v3, Lvd/h0;->q:Lorg/slf4j/Logger;

    .line 28
    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v5, "Acquire "

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    goto :goto_3

    .line 56
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object v1, p0, Lvd/h0;->n:Ljava/util/LinkedList;

    .line 58
    .line 59
    monitor-enter v1

    .line 60
    :try_start_1
    iget-object v0, p0, Lvd/h0;->n:Ljava/util/LinkedList;

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, [Ljava/lang/StackTraceElement;

    .line 77
    .line 78
    sget-object v3, Lvd/h0;->q:Lorg/slf4j/Logger;

    .line 79
    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v5, "Release "

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    monitor-exit v1

    .line 108
    return-void

    .line 109
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    throw v0

    .line 111
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    goto :goto_5

    .line 113
    :goto_4
    throw v1

    .line 114
    :goto_5
    goto :goto_4
.end method

.method public final K()Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lvd/h0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x2

    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lvd/h0;->g:Z

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    iget-object v2, p0, Lvd/h0;->d:Lvd/z;

    .line 16
    .line 17
    iget-object v2, v2, Lvd/z;->d:Lvd/b0;

    .line 18
    .line 19
    invoke-virtual {v2}, Lvd/b0;->b0()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v2}, Lvd/b0;->l0()Lad/k;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3}, Lad/k;->b0()Z

    .line 27
    .line 28
    .line 29
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v2}, Lhe/e;->Y()V

    .line 31
    .line 32
    .line 33
    return v0

    .line 34
    :catchall_0
    move-exception v3

    .line 35
    :try_start_1
    invoke-virtual {v2}, Lhe/e;->Y()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_1
    move-exception v2

    .line 40
    const-class v4, Ljava/lang/Throwable;

    .line 41
    .line 42
    :try_start_2
    const-string v5, "addSuppressed"

    .line 43
    .line 44
    new-array v6, v1, [Ljava/lang/Class;

    .line 45
    .line 46
    aput-object v4, v6, v0

    .line 47
    .line 48
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object v2, v1, v0

    .line 55
    .line 56
    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    .line 58
    .line 59
    :catch_0
    :goto_0
    throw v3
.end method

.method public final L(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/h0;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const-string p1, "??"

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lvd/h0;->f:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    :cond_0
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method public final M(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lvd/h0;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-object v2, Lvd/h0;->q:Lorg/slf4j/Logger;

    .line 8
    .line 9
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "Release tree "

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, " "

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-boolean p1, p0, Lvd/h0;->l:Z

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lvd/h0;->n:Ljava/util/LinkedList;

    .line 47
    .line 48
    monitor-enter p1

    .line 49
    :try_start_0
    iget-object v3, p0, Lvd/h0;->n:Ljava/util/LinkedList;

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4}, Lvd/h0;->S([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    monitor-exit p1

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw v0

    .line 71
    :cond_1
    :goto_0
    const-wide/16 v3, 0x0

    .line 72
    .line 73
    cmp-long p1, v0, v3

    .line 74
    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    monitor-enter p0

    .line 78
    :try_start_1
    const-string p1, "Usage dropped to zero, release session"

    .line 79
    .line 80
    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lvd/h0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    iget-object p1, p0, Lvd/h0;->d:Lvd/z;

    .line 94
    .line 95
    invoke-virtual {p1}, Lvd/z;->O()V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_1
    move-exception p1

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    :goto_1
    monitor-exit p0

    .line 102
    goto :goto_3

    .line 103
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    throw p1

    .line 105
    :cond_3
    cmp-long p1, v0, v3

    .line 106
    .line 107
    if-ltz p1, :cond_4

    .line 108
    .line 109
    :goto_3
    return-void

    .line 110
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v0, "Usage count dropped below zero "

    .line 113
    .line 114
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lvd/h0;->J()V

    .line 128
    .line 129
    .line 130
    new-instance p1, Landroidx/fragment/app/b0;

    .line 131
    .line 132
    const-string v0, "Usage count dropped below zero"

    .line 133
    .line 134
    const/16 v1, 0xa

    .line 135
    .line 136
    invoke-direct {p1, v0, v1}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    throw p1
.end method

.method public final N(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "addSuppressed"

    .line 4
    .line 5
    const-class v3, Ljava/lang/Throwable;

    .line 6
    .line 7
    const-string v4, "Setting DFS request path from "

    .line 8
    .line 9
    const-string v5, "Service is null in state "

    .line 10
    .line 11
    iget-object v6, p0, Lvd/h0;->d:Lvd/z;

    .line 12
    .line 13
    invoke-virtual {v6}, Lvd/z;->r()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v7, v6, Lvd/z;->d:Lvd/b0;

    .line 17
    .line 18
    invoke-virtual {v7}, Lvd/b0;->b0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    :try_start_1
    invoke-interface {p2}, Lhe/d;->O()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_0
    :goto_0
    instance-of v8, p1, Lfd/w;

    .line 31
    .line 32
    const/4 v9, 0x0

    .line 33
    if-nez v8, :cond_1

    .line 34
    .line 35
    instance-of v8, p1, Lqd/c;

    .line 36
    .line 37
    if-nez v8, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lvd/h0;->P(Lad/c;Lad/d;)Lad/d;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v8, v9

    .line 45
    :goto_1
    if-eqz p1, :cond_8

    .line 46
    .line 47
    if-eqz v8, :cond_2

    .line 48
    .line 49
    invoke-interface {v8}, Lhe/d;->c0()Z

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    if-eqz v10, :cond_2

    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_2
    iget v8, p0, Lvd/h0;->e:I

    .line 58
    .line 59
    invoke-interface {p1, v8}, Lad/c;->L(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7}, Lvd/b0;->n0()Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-nez v8, :cond_4

    .line 67
    .line 68
    move-object v8, p1

    .line 69
    check-cast v8, Led/c;

    .line 70
    .line 71
    iget-object v9, p0, Lvd/h0;->f:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz v9, :cond_3

    .line 74
    .line 75
    invoke-static {v8, v9}, Lvd/h0;->A(Led/c;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    new-instance p1, Lvd/r;

    .line 80
    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p3, p0, Lvd/h0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-direct {p1, p2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_4
    :goto_2
    iget-boolean v5, p0, Lvd/h0;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    sget-object v8, Lvd/h0;->q:Lorg/slf4j/Logger;

    .line 106
    .line 107
    if-eqz v5, :cond_6

    .line 108
    .line 109
    :try_start_2
    const-string v5, "IPC"

    .line 110
    .line 111
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-nez v5, :cond_6

    .line 116
    .line 117
    const-string v5, "IPC$"

    .line 118
    .line 119
    iget-object v9, p0, Lvd/h0;->b:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-nez v5, :cond_6

    .line 126
    .line 127
    instance-of v5, p1, Lad/f;

    .line 128
    .line 129
    if-eqz v5, :cond_6

    .line 130
    .line 131
    move-object v5, p1

    .line 132
    check-cast v5, Lad/f;

    .line 133
    .line 134
    invoke-interface {v5}, Lad/f;->getPath()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    if-eqz v9, :cond_6

    .line 139
    .line 140
    invoke-interface {v5}, Lad/f;->getPath()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-lez v9, :cond_6

    .line 149
    .line 150
    invoke-interface {v8}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-eqz v9, :cond_5

    .line 155
    .line 156
    invoke-interface {v5}, Lad/f;->getPath()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    invoke-interface {v5}, Lad/f;->W()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    new-instance v11, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v4, " to "

    .line 173
    .line 174
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-interface {v8, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_5
    invoke-interface {v5}, Lad/f;->j()V

    .line 188
    .line 189
    .line 190
    invoke-interface {v5}, Lad/f;->W()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-interface {v5, v4}, Lad/f;->k(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    .line 196
    .line 197
    :cond_6
    :try_start_3
    invoke-virtual {v6, p1, p2, p3}, Lvd/z;->P(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;

    .line 198
    .line 199
    .line 200
    move-result-object p1
    :try_end_3
    .catch Lvd/r; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    :try_start_4
    invoke-virtual {v7}, Lhe/e;->Y()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6}, Lvd/z;->O()V

    .line 205
    .line 206
    .line 207
    return-object p1

    .line 208
    :catch_0
    move-exception p1

    .line 209
    :try_start_5
    iget p2, p1, Lvd/r;->a:I

    .line 210
    .line 211
    const p3, -0x3fffff37    # -2.000048f

    .line 212
    .line 213
    .line 214
    if-ne p2, p3, :cond_7

    .line 215
    .line 216
    const-string p2, "Disconnect tree on NT_STATUS_NETWORK_NAME_DELETED"

    .line 217
    .line 218
    invoke-interface {v8, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v1, v1}, Lvd/h0;->R(ZZ)Z

    .line 222
    .line 223
    .line 224
    :cond_7
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 225
    :cond_8
    :goto_3
    :try_start_6
    invoke-virtual {v7}, Lhe/e;->Y()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6}, Lvd/z;->O()V

    .line 229
    .line 230
    .line 231
    return-object v8

    .line 232
    :goto_4
    :try_start_7
    invoke-virtual {v7}, Lhe/e;->Y()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :catchall_1
    move-exception p2

    .line 237
    :try_start_8
    new-array p3, v1, [Ljava/lang/Class;

    .line 238
    .line 239
    aput-object v3, p3, v0

    .line 240
    .line 241
    invoke-virtual {v3, v2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 242
    .line 243
    .line 244
    move-result-object p3

    .line 245
    new-array v4, v1, [Ljava/lang/Object;

    .line 246
    .line 247
    aput-object p2, v4, v0

    .line 248
    .line 249
    invoke-virtual {p3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 250
    .line 251
    .line 252
    :catch_1
    :goto_5
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 253
    :catchall_2
    move-exception p1

    .line 254
    :try_start_a
    invoke-virtual {v6}, Lvd/z;->O()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 255
    .line 256
    .line 257
    goto :goto_6

    .line 258
    :catchall_3
    move-exception p2

    .line 259
    :try_start_b
    new-array p3, v1, [Ljava/lang/Class;

    .line 260
    .line 261
    aput-object v3, p3, v0

    .line 262
    .line 263
    invoke-virtual {v3, v2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 264
    .line 265
    .line 266
    move-result-object p3

    .line 267
    new-array v1, v1, [Ljava/lang/Object;

    .line 268
    .line 269
    aput-object p2, v1, v0

    .line 270
    .line 271
    invoke-virtual {p3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 272
    .line 273
    .line 274
    :catch_2
    :goto_6
    throw p1
.end method

.method public final varargs O(Lid/c;[Lvd/l;)Lad/d;
    .locals 2

    .line 1
    iget-object v0, p1, Lid/c;->x:Lid/d;

    .line 2
    .line 3
    array-length v1, p2

    .line 4
    if-lez v1, :cond_0

    .line 5
    .line 6
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-static {p2}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-class p2, Lvd/l;

    .line 16
    .line 17
    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lvd/h0;->N(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public final P(Lad/c;Lad/d;)Lad/d;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const-string v0, "treeConnect: unc="

    .line 6
    .line 7
    const-string v4, "\\\\"

    .line 8
    .line 9
    const-string v5, "Connection state was "

    .line 10
    .line 11
    iget-object v6, v1, Lvd/h0;->d:Lvd/z;

    .line 12
    .line 13
    invoke-virtual {v6}, Lvd/z;->r()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-object v7, v6, Lvd/z;->d:Lvd/b0;

    .line 17
    .line 18
    invoke-virtual {v7}, Lvd/b0;->b0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 19
    .line 20
    .line 21
    :try_start_1
    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 22
    :try_start_2
    invoke-virtual {v7}, Lvd/b0;->j0()Z

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v7}, Lvd/h0;->V(Lvd/b0;)I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/4 v9, 0x2

    .line 30
    const/4 v10, 0x0

    .line 31
    if-ne v8, v9, :cond_0

    .line 32
    .line 33
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :try_start_3
    invoke-virtual {v7}, Lhe/e;->Y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6}, Lvd/z;->O()V

    .line 38
    .line 39
    .line 40
    return-object v10

    .line 41
    :goto_0
    move-object v4, v0

    .line 42
    goto/16 :goto_7

    .line 43
    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_0
    :try_start_4
    iget-object v8, v1, Lvd/h0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    .line 49
    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-ne v8, v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1, v7}, Lvd/h0;->V(Lvd/b0;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-ne v0, v9, :cond_1

    .line 60
    .line 61
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    :try_start_5
    invoke-virtual {v7}, Lhe/e;->Y()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 63
    .line 64
    .line 65
    invoke-virtual {v6}, Lvd/z;->O()V

    .line 66
    .line 67
    .line 68
    return-object v10

    .line 69
    :cond_1
    :try_start_6
    new-instance v0, Lvd/r;

    .line 70
    .line 71
    const-string v4, "Tree disconnected while waiting for connection"

    .line 72
    .line 73
    invoke-direct {v0, v4}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :cond_2
    if-ne v8, v9, :cond_3

    .line 78
    .line 79
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 80
    :try_start_7
    invoke-virtual {v7}, Lhe/e;->Y()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6}, Lvd/z;->O()V

    .line 84
    .line 85
    .line 86
    return-object v10

    .line 87
    :cond_3
    :try_start_8
    sget-object v9, Lvd/h0;->q:Lorg/slf4j/Logger;

    .line 88
    .line 89
    invoke-interface {v9}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    if-eqz v11, :cond_4

    .line 94
    .line 95
    new-instance v11, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-interface {v9, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 108
    .line 109
    .line 110
    :cond_4
    :try_start_9
    iget-object v5, v6, Lvd/z;->q:Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v5, :cond_a

    .line 113
    .line 114
    invoke-virtual {v7}, Lvd/b0;->l0()Lad/k;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    new-instance v11, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const/16 v4, 0x5c

    .line 127
    .line 128
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v4, v1, Lvd/h0;->b:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v15

    .line 140
    iget-object v4, v1, Lvd/h0;->c:Ljava/lang/String;

    .line 141
    .line 142
    invoke-interface {v9}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_5

    .line 147
    .line 148
    new-instance v5, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, ",service="

    .line 157
    .line 158
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-interface {v9, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :catchall_1
    move-exception v0

    .line 173
    goto/16 :goto_4

    .line 174
    .line 175
    :catch_0
    move-exception v0

    .line 176
    goto/16 :goto_3

    .line 177
    .line 178
    :cond_5
    :goto_1
    invoke-virtual {v7}, Lvd/b0;->n0()Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_7

    .line 183
    .line 184
    new-instance v0, Lqd/a;

    .line 185
    .line 186
    iget-object v4, v6, Lvd/z;->g:Lvc/b;

    .line 187
    .line 188
    invoke-interface {v4}, Lvc/b;->e()Lvc/f;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-direct {v0, v15, v4}, Lqd/a;-><init>(Ljava/lang/String;Lvc/f;)V

    .line 193
    .line 194
    .line 195
    if-eqz p1, :cond_6

    .line 196
    .line 197
    move-object/from16 v4, p1

    .line 198
    .line 199
    check-cast v4, Lid/b;

    .line 200
    .line 201
    invoke-virtual {v0, v4}, Lqd/a;->g0(Lid/b;)Z

    .line 202
    .line 203
    .line 204
    :cond_6
    move-object v5, v0

    .line 205
    move-object v0, v10

    .line 206
    goto :goto_2

    .line 207
    :cond_7
    new-instance v0, Lfd/v;

    .line 208
    .line 209
    iget-object v5, v6, Lvd/z;->g:Lvc/b;

    .line 210
    .line 211
    invoke-interface {v5}, Lvc/b;->e()Lvc/f;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    move-object/from16 v9, p2

    .line 216
    .line 217
    check-cast v9, Led/c;

    .line 218
    .line 219
    invoke-direct {v0, v5, v9}, Lfd/v;-><init>(Lvc/f;Led/c;)V

    .line 220
    .line 221
    .line 222
    new-instance v5, Lfd/u;

    .line 223
    .line 224
    iget-object v9, v6, Lvd/z;->d:Lvd/b0;

    .line 225
    .line 226
    iget-object v13, v9, Lvd/b0;->z:Lvc/b;

    .line 227
    .line 228
    check-cast v8, Lfd/j;

    .line 229
    .line 230
    iget-object v14, v8, Lfd/j;->H:Lfd/b;

    .line 231
    .line 232
    move-object/from16 v17, p1

    .line 233
    .line 234
    check-cast v17, Led/c;

    .line 235
    .line 236
    move-object v12, v5

    .line 237
    move-object/from16 v16, v4

    .line 238
    .line 239
    invoke-direct/range {v12 .. v17}, Lfd/u;-><init>(Lvc/b;Lfd/b;Ljava/lang/String;Ljava/lang/String;Led/c;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 240
    .line 241
    .line 242
    :goto_2
    :try_start_a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {v6, v5, v0, v4}, Lvd/z;->P(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Lad/l;

    .line 251
    .line 252
    invoke-virtual {v1, v7, v6, v0}, Lvd/h0;->Q(Lvd/b0;Lvd/z;Lad/l;)V

    .line 253
    .line 254
    .line 255
    if-eqz p2, :cond_8

    .line 256
    .line 257
    invoke-interface/range {p2 .. p2}, Lhe/d;->c0()Z

    .line 258
    .line 259
    .line 260
    move-result v4
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 261
    if-eqz v4, :cond_8

    .line 262
    .line 263
    :try_start_b
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 264
    .line 265
    .line 266
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 267
    :try_start_c
    invoke-virtual {v7}, Lhe/e;->Y()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6}, Lvd/z;->O()V

    .line 271
    .line 272
    .line 273
    return-object p2

    .line 274
    :catch_1
    move-exception v0

    .line 275
    move-object v10, v5

    .line 276
    goto :goto_3

    .line 277
    :cond_8
    :try_start_d
    invoke-virtual {v7}, Lvd/b0;->n0()Z

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    if-eqz v4, :cond_9

    .line 282
    .line 283
    invoke-interface {v0}, Lad/d;->t()Lad/d;

    .line 284
    .line 285
    .line 286
    move-result-object v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 287
    :try_start_e
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 288
    .line 289
    .line 290
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 291
    :try_start_f
    invoke-virtual {v7}, Lhe/e;->Y()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 292
    .line 293
    .line 294
    invoke-virtual {v6}, Lvd/z;->O()V

    .line 295
    .line 296
    .line 297
    return-object v0

    .line 298
    :cond_9
    :try_start_10
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 299
    .line 300
    .line 301
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 302
    :try_start_11
    invoke-virtual {v7}, Lhe/e;->Y()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 303
    .line 304
    .line 305
    invoke-virtual {v6}, Lvd/z;->O()V

    .line 306
    .line 307
    .line 308
    return-object v10

    .line 309
    :cond_a
    :try_start_12
    new-instance v0, Lvd/r;

    .line 310
    .line 311
    const-string v4, "Transport disconnected while waiting for connection"

    .line 312
    .line 313
    invoke-direct {v0, v4}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 317
    :goto_3
    if-eqz v10, :cond_c

    .line 318
    .line 319
    :try_start_13
    invoke-interface {v10}, Lad/b;->b()Lad/d;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    if-eqz v4, :cond_c

    .line 324
    .line 325
    invoke-interface {v10}, Lad/b;->b()Lad/d;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    check-cast v4, Lad/l;

    .line 330
    .line 331
    invoke-interface {v4}, Lhe/d;->c0()Z

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    if-eqz v5, :cond_c

    .line 336
    .line 337
    invoke-interface {v4}, Lhe/d;->T()Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-nez v5, :cond_c

    .line 342
    .line 343
    invoke-interface {v4}, Lhe/d;->r()I

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    if-nez v5, :cond_c

    .line 348
    .line 349
    invoke-virtual {v7}, Lvd/b0;->T()Z

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    if-nez v5, :cond_b

    .line 354
    .line 355
    invoke-virtual {v1, v7, v6, v4}, Lvd/h0;->Q(Lvd/b0;Lvd/z;Lad/l;)V

    .line 356
    .line 357
    .line 358
    :cond_b
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 359
    :cond_c
    :try_start_14
    sget-object v4, Lvd/h0;->q:Lorg/slf4j/Logger;

    .line 360
    .line 361
    const-string v5, "Disconnect tree on treeConnectFailure"

    .line 362
    .line 363
    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v3, v3}, Lvd/h0;->R(ZZ)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 367
    .line 368
    .line 369
    :try_start_15
    iget-object v4, v1, Lvd/h0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 370
    .line 371
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 372
    .line 373
    .line 374
    throw v0

    .line 375
    :catchall_2
    move-exception v0

    .line 376
    iget-object v4, v1, Lvd/h0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 377
    .line 378
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 379
    .line 380
    .line 381
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 382
    :goto_4
    :try_start_16
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 383
    .line 384
    .line 385
    throw v0

    .line 386
    :goto_5
    monitor-exit v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 387
    :try_start_17
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 388
    :catchall_3
    move-exception v0

    .line 389
    move-object v4, v0

    .line 390
    :try_start_18
    invoke-virtual {v7}, Lhe/e;->Y()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 391
    .line 392
    .line 393
    goto :goto_6

    .line 394
    :catchall_4
    move-exception v0

    .line 395
    move-object v5, v0

    .line 396
    :try_start_19
    const-class v0, Ljava/lang/Throwable;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 397
    .line 398
    :try_start_1a
    const-string v7, "addSuppressed"

    .line 399
    .line 400
    new-array v8, v3, [Ljava/lang/Class;

    .line 401
    .line 402
    aput-object v0, v8, v2

    .line 403
    .line 404
    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    new-array v7, v3, [Ljava/lang/Object;

    .line 409
    .line 410
    aput-object v5, v7, v2

    .line 411
    .line 412
    invoke-virtual {v0, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 413
    .line 414
    .line 415
    :catch_2
    :goto_6
    :try_start_1b
    throw v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 416
    :catchall_5
    move-exception v0

    .line 417
    goto/16 :goto_0

    .line 418
    .line 419
    :goto_7
    :try_start_1c
    invoke-virtual {v6}, Lvd/z;->O()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 420
    .line 421
    .line 422
    goto :goto_8

    .line 423
    :catchall_6
    move-exception v0

    .line 424
    move-object v5, v0

    .line 425
    const-class v0, Ljava/lang/Throwable;

    .line 426
    .line 427
    :try_start_1d
    const-string v6, "addSuppressed"

    .line 428
    .line 429
    new-array v7, v3, [Ljava/lang/Class;

    .line 430
    .line 431
    aput-object v0, v7, v2

    .line 432
    .line 433
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    new-array v3, v3, [Ljava/lang/Object;

    .line 438
    .line 439
    aput-object v5, v3, v2

    .line 440
    .line 441
    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3

    .line 442
    .line 443
    .line 444
    :catch_3
    :goto_8
    goto :goto_a

    .line 445
    :goto_9
    throw v4

    .line 446
    :goto_a
    goto :goto_9
.end method

.method public final Q(Lvd/b0;Lvd/z;Lad/l;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-interface {p3}, Lad/l;->A()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_5

    .line 8
    .line 9
    invoke-interface {p3}, Lad/l;->Z()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iput v2, p0, Lvd/h0;->e:I

    .line 14
    .line 15
    invoke-interface {p3}, Lad/l;->G()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lvd/b0;->n0()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Lvd/r;

    .line 29
    .line 30
    const-string p2, "Service is NULL"

    .line 31
    .line 32
    invoke-direct {p1, p2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    :goto_0
    iget-object v3, p1, Lvd/b0;->z:Lvc/b;

    .line 37
    .line 38
    invoke-interface {v3}, Lvc/b;->e()Lvc/f;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lwc/a;

    .line 43
    .line 44
    iget-boolean v3, v3, Lwc/a;->i:Z

    .line 45
    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    iget-object v3, p0, Lvd/h0;->b:Ljava/lang/String;

    .line 49
    .line 50
    const-string v4, "IPC$"

    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    const-string v3, "IPC"

    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    :cond_2
    iget-object v3, p2, Lvd/z;->h:Lvd/j;

    .line 67
    .line 68
    invoke-virtual {v3}, Lvd/j;->d()Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_4

    .line 73
    .line 74
    invoke-virtual {p2}, Lvd/z;->J()Lad/h;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    new-instance p1, Lvd/r;

    .line 82
    .line 83
    const-string p2, "IPC signing is enforced, but no signing is available"

    .line 84
    .line 85
    invoke-direct {p1, p2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw p1

    .line 89
    :cond_4
    :goto_1
    iput-object v2, p0, Lvd/h0;->f:Ljava/lang/String;

    .line 90
    .line 91
    invoke-interface {p3}, Lad/l;->U()Z

    .line 92
    .line 93
    .line 94
    move-result p3

    .line 95
    iput-boolean p3, p0, Lvd/h0;->g:Z

    .line 96
    .line 97
    sget-object p3, Lvd/h0;->r:Ljava/util/concurrent/atomic/AtomicLong;

    .line 98
    .line 99
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    iput-wide v2, p0, Lvd/h0;->i:J

    .line 104
    .line 105
    iget-object p3, p0, Lvd/h0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    .line 107
    const/4 v2, 0x2

    .line 108
    invoke-virtual {p3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 109
    .line 110
    .line 111
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lvd/h0;->U(Lvd/b0;Lvd/z;)V
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catch_0
    move-exception p2

    .line 116
    :try_start_1
    invoke-virtual {p1}, Lhe/e;->J()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :catch_1
    move-exception p1

    .line 121
    sget-object p3, Lvd/h0;->q:Lorg/slf4j/Logger;

    .line 122
    .line 123
    const-string v2, "Failed to disconnect transport"

    .line 124
    .line 125
    invoke-interface {p3, v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    const-class p3, Ljava/lang/Throwable;

    .line 129
    .line 130
    :try_start_2
    const-string v2, "addSuppressed"

    .line 131
    .line 132
    new-array v3, v1, [Ljava/lang/Class;

    .line 133
    .line 134
    aput-object p3, v3, v0

    .line 135
    .line 136
    invoke-virtual {p3, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    new-array v1, v1, [Ljava/lang/Object;

    .line 141
    .line 142
    aput-object p1, v1, v0

    .line 143
    .line 144
    invoke-virtual {p3, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 145
    .line 146
    .line 147
    :catch_2
    :goto_2
    throw p2

    .line 148
    :cond_5
    new-instance p1, Lvd/r;

    .line 149
    .line 150
    const-string p2, "TreeID is invalid"

    .line 151
    .line 152
    invoke-direct {p1, p2}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1
.end method

.method public final R(ZZ)Z
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "Disconnected tree while still in use "

    .line 4
    .line 5
    iget-object v3, p0, Lvd/h0;->d:Lvd/z;

    .line 6
    .line 7
    invoke-virtual {v3}, Lvd/z;->r()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v4, v3, Lvd/z;->d:Lvd/b0;

    .line 11
    .line 12
    invoke-virtual {v4}, Lvd/b0;->b0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 13
    .line 14
    .line 15
    :try_start_1
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    iget-object v5, p0, Lvd/h0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    const/4 v6, 0x3

    .line 19
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/4 v6, 0x2

    .line 24
    if-ne v5, v6, :cond_5

    .line 25
    .line 26
    iget-object v5, p0, Lvd/h0;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    .line 28
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    const-wide/16 v7, 0x1

    .line 35
    .line 36
    cmp-long v9, v5, v7

    .line 37
    .line 38
    if-nez v9, :cond_1

    .line 39
    .line 40
    :cond_0
    if-nez p2, :cond_3

    .line 41
    .line 42
    const-wide/16 v7, 0x0

    .line 43
    .line 44
    cmp-long p2, v5, v7

    .line 45
    .line 46
    if-lez p2, :cond_3

    .line 47
    .line 48
    :cond_1
    sget-object p2, Lvd/h0;->q:Lorg/slf4j/Logger;

    .line 49
    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {p2, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lvd/h0;->J()V

    .line 66
    .line 67
    .line 68
    iget-object p2, v3, Lvd/z;->g:Lvc/b;

    .line 69
    .line 70
    invoke-interface {p2}, Lvc/b;->e()Lvc/f;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Lwc/a;

    .line 75
    .line 76
    iget-boolean p2, p2, Lwc/a;->n0:Z

    .line 77
    .line 78
    if-nez p2, :cond_2

    .line 79
    .line 80
    const/4 p2, 0x1

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    new-instance p1, Landroidx/fragment/app/b0;

    .line 83
    .line 84
    const-string p2, "Disconnected tree while still in use"

    .line 85
    .line 86
    const/16 v2, 0xa

    .line 87
    .line 88
    invoke-direct {p1, p2, v2}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    const/4 p2, 0x0

    .line 95
    :goto_0
    if-nez p1, :cond_6

    .line 96
    .line 97
    iget p1, p0, Lvd/h0;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .line 99
    const/4 v2, -0x1

    .line 100
    if-eq p1, v2, :cond_6

    .line 101
    .line 102
    :try_start_3
    invoke-virtual {v4}, Lvd/b0;->n0()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    new-instance p1, Lqd/c;

    .line 109
    .line 110
    iget-object v2, v3, Lvd/z;->g:Lvc/b;

    .line 111
    .line 112
    invoke-interface {v2}, Lvc/b;->e()Lvc/f;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-direct {p1, v2}, Lqd/c;-><init>(Lvc/f;)V

    .line 117
    .line 118
    .line 119
    new-array v2, v1, [Lvd/l;

    .line 120
    .line 121
    invoke-virtual {p0, p1, v2}, Lvd/h0;->O(Lid/c;[Lvd/l;)Lad/d;

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catch_0
    move-exception p1

    .line 126
    goto :goto_1

    .line 127
    :cond_4
    new-instance p1, Lfd/w;

    .line 128
    .line 129
    iget-object v2, v3, Lvd/z;->g:Lvc/b;

    .line 130
    .line 131
    invoke-interface {v2}, Lvc/b;->e()Lvc/f;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-direct {p1, v2}, Lfd/w;-><init>(Lvc/f;)V

    .line 136
    .line 137
    .line 138
    new-instance v2, Lfd/c;

    .line 139
    .line 140
    iget-object v5, v3, Lvd/z;->g:Lvc/b;

    .line 141
    .line 142
    invoke-interface {v5}, Lvc/b;->e()Lvc/f;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-direct {v2, v5}, Lfd/c;-><init>(Lvc/f;)V

    .line 147
    .line 148
    .line 149
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {p0, p1, v2, v5}, Lvd/h0;->N(Lad/c;Lad/d;Ljava/util/Set;)Lad/d;
    :try_end_3
    .catch Lvc/c; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :goto_1
    :try_start_4
    sget-object v2, Lvd/h0;->q:Lorg/slf4j/Logger;

    .line 158
    .line 159
    const-string v5, "Tree disconnect failed"

    .line 160
    .line 161
    invoke-interface {v2, v5, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    const/4 p2, 0x0

    .line 166
    :cond_6
    :goto_2
    iput-boolean v1, p0, Lvd/h0;->g:Z

    .line 167
    .line 168
    iput-boolean v1, p0, Lvd/h0;->h:Z

    .line 169
    .line 170
    iget-object p1, p0, Lvd/h0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 176
    .line 177
    .line 178
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    :try_start_5
    invoke-virtual {v4}, Lhe/e;->Y()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Lvd/z;->O()V

    .line 183
    .line 184
    .line 185
    return p2

    .line 186
    :goto_3
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 187
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 188
    :catchall_1
    move-exception p1

    .line 189
    :try_start_8
    invoke-virtual {v4}, Lhe/e;->Y()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :catchall_2
    move-exception p2

    .line 194
    :try_start_9
    const-class v2, Ljava/lang/Throwable;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 195
    .line 196
    :try_start_a
    const-string v4, "addSuppressed"

    .line 197
    .line 198
    new-array v5, v0, [Ljava/lang/Class;

    .line 199
    .line 200
    aput-object v2, v5, v1

    .line 201
    .line 202
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    new-array v4, v0, [Ljava/lang/Object;

    .line 207
    .line 208
    aput-object p2, v4, v1

    .line 209
    .line 210
    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 211
    .line 212
    .line 213
    :catch_1
    :goto_4
    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 214
    :catchall_3
    move-exception p1

    .line 215
    :try_start_c
    invoke-virtual {v3}, Lvd/z;->O()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :catchall_4
    move-exception p2

    .line 220
    const-class v2, Ljava/lang/Throwable;

    .line 221
    .line 222
    :try_start_d
    const-string v3, "addSuppressed"

    .line 223
    .line 224
    new-array v4, v0, [Ljava/lang/Class;

    .line 225
    .line 226
    aput-object v2, v4, v1

    .line 227
    .line 228
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    new-array v0, v0, [Ljava/lang/Object;

    .line 233
    .line 234
    aput-object p2, v0, v1

    .line 235
    .line 236
    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 237
    .line 238
    .line 239
    :catch_2
    :goto_5
    throw p1
.end method

.method public final T(Ljava/lang/Class;)Lvd/h0;
    .locals 1

    .line 1
    const-class v0, Lvd/h0;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public final U(Lvd/b0;Lvd/z;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1}, Lvd/b0;->n0()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    sget-object v3, Lvd/h0;->q:Lorg/slf4j/Logger;

    .line 8
    .line 9
    if-eqz v2, :cond_8

    .line 10
    .line 11
    iget-object v2, p1, Lvd/b0;->C:Lad/h;

    .line 12
    .line 13
    if-eqz v2, :cond_8

    .line 14
    .line 15
    iget-object v2, p2, Lvd/z;->g:Lvc/b;

    .line 16
    .line 17
    invoke-interface {v2}, Lvc/b;->e()Lvc/f;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lwc/a;

    .line 22
    .line 23
    iget-boolean v2, v2, Lwc/a;->s0:Z

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p1}, Lvd/b0;->l0()Lad/k;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lod/f;

    .line 34
    .line 35
    iget-object v4, v2, Lod/f;->P:Lvc/i;

    .line 36
    .line 37
    sget-object v5, Lvc/i;->g:Lvc/i;

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Lvc/i;->a(Lvc/i;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    const-string p1, "Secure negotiation does not apply, is SMB3.1"

    .line 46
    .line 47
    invoke-interface {v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    new-instance v4, Lod/e;

    .line 52
    .line 53
    iget-object v5, p2, Lvd/z;->g:Lvc/b;

    .line 54
    .line 55
    invoke-interface {v5}, Lvc/b;->e()Lvc/f;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget-boolean p1, p1, Lvd/b0;->A:Z

    .line 60
    .line 61
    if-nez p1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v2}, Lod/f;->Q()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 p1, 0x1

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    :goto_0
    const/4 p1, 0x3

    .line 73
    :goto_1
    invoke-direct {v4, v5, p1}, Lod/e;-><init>(Lvc/f;I)V

    .line 74
    .line 75
    .line 76
    const-string v5, "Sending VALIDATE_NEGOTIATE_INFO"

    .line 77
    .line 78
    invoke-interface {v3, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v5, Lmd/a;

    .line 82
    .line 83
    iget-object p2, p2, Lvd/z;->g:Lvc/b;

    .line 84
    .line 85
    invoke-interface {p2}, Lvc/b;->e()Lvc/f;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    const v6, 0x140204

    .line 90
    .line 91
    .line 92
    invoke-direct {v5, p2, v6}, Lmd/a;-><init>(Lvc/f;I)V

    .line 93
    .line 94
    .line 95
    iput v1, v5, Lmd/a;->C:I

    .line 96
    .line 97
    new-instance p2, La9/a;

    .line 98
    .line 99
    iget v6, v4, Lod/e;->z:I

    .line 100
    .line 101
    iget-object v7, v4, Lod/e;->A:[B

    .line 102
    .line 103
    int-to-short p1, p1

    .line 104
    iget-object v4, v4, Lod/e;->y:[I

    .line 105
    .line 106
    invoke-direct {p2, v6, v7, p1, v4}, La9/a;-><init>(I[BI[I)V

    .line 107
    .line 108
    .line 109
    iput-object p2, v5, Lmd/a;->D:Lvc/j;

    .line 110
    .line 111
    :try_start_0
    new-array p1, v1, [Lvd/l;

    .line 112
    .line 113
    sget-object p2, Lvd/l;->b:Lvd/l;

    .line 114
    .line 115
    aput-object p2, p1, v0

    .line 116
    .line 117
    invoke-virtual {p0, v5, p1}, Lvd/h0;->O(Lid/c;[Lvd/l;)Lad/d;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lmd/b;
    :try_end_0
    .catch Lvd/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    const-class p2, Lmd/c;

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Lmd/b;->r0(Ljava/lang/Class;)Lvc/g;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    check-cast p1, Lmd/c;

    .line 130
    .line 131
    iget p2, v2, Lod/f;->D:I

    .line 132
    .line 133
    iget v0, p1, Lmd/c;->c:I

    .line 134
    .line 135
    if-ne p2, v0, :cond_4

    .line 136
    .line 137
    iget p2, v2, Lod/f;->G:I

    .line 138
    .line 139
    iget v0, p1, Lmd/c;->a:I

    .line 140
    .line 141
    if-ne p2, v0, :cond_4

    .line 142
    .line 143
    iget p2, v2, Lod/f;->E:I

    .line 144
    .line 145
    iget v0, p1, Lmd/c;->d:I

    .line 146
    .line 147
    if-ne p2, v0, :cond_4

    .line 148
    .line 149
    iget-object p2, v2, Lod/f;->F:[B

    .line 150
    .line 151
    iget-object p1, p1, Lmd/c;->b:[B

    .line 152
    .line 153
    invoke-static {p2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_4

    .line 158
    .line 159
    const-string p1, "Secure negotiation OK"

    .line 160
    .line 161
    invoke-interface {v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_4
    const-string p1, "Secure negotiation failure"

    .line 166
    .line 167
    invoke-interface {v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    new-instance p1, Lvc/c;

    .line 171
    .line 172
    const-string p2, "Mismatched attributes validating negotiate info"

    .line 173
    .line 174
    invoke-direct {p1, p2}, Lvc/c;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :catch_0
    move-exception p1

    .line 179
    goto :goto_2

    .line 180
    :catch_1
    move-exception p1

    .line 181
    goto :goto_3

    .line 182
    :goto_2
    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    iget v2, p1, Lvd/r;->a:I

    .line 187
    .line 188
    if-eqz p2, :cond_5

    .line 189
    .line 190
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    new-array v1, v1, [Ljava/lang/Object;

    .line 195
    .line 196
    aput-object p2, v1, v0

    .line 197
    .line 198
    const-string p2, "VALIDATE_NEGOTIATE_INFO response code 0x%x"

    .line 199
    .line 200
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-interface {v3, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :cond_5
    const-string p2, "VALIDATE_NEGOTIATE_INFO returned error"

    .line 208
    .line 209
    invoke-interface {v3, p2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    iget-object p2, v5, Lid/c;->x:Lid/d;

    .line 213
    .line 214
    check-cast p2, Lmd/b;

    .line 215
    .line 216
    iget-boolean v0, p2, Lid/d;->x:Z

    .line 217
    .line 218
    if-eqz v0, :cond_6

    .line 219
    .line 220
    iget-boolean p2, p2, Lid/d;->A:Z

    .line 221
    .line 222
    if-nez p2, :cond_7

    .line 223
    .line 224
    :cond_6
    const p2, -0x3fffffde    # -2.000008f

    .line 225
    .line 226
    .line 227
    if-eq v2, p2, :cond_7

    .line 228
    .line 229
    return-void

    .line 230
    :cond_7
    new-instance p2, Lad/g;

    .line 231
    .line 232
    invoke-direct {p2, p1}, Lad/g;-><init>(Lvd/r;)V

    .line 233
    .line 234
    .line 235
    throw p2

    .line 236
    :goto_3
    new-instance p2, Lad/g;

    .line 237
    .line 238
    invoke-direct {p2, p1}, Lad/g;-><init>(Lvd/r;)V

    .line 239
    .line 240
    .line 241
    throw p2

    .line 242
    :cond_8
    :goto_4
    const-string p1, "Secure negotiation does not apply"

    .line 243
    .line 244
    invoke-interface {v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    return-void
.end method

.method public final V(Lvd/b0;)I
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lvd/h0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v1, 0x3

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    :try_start_0
    sget-object v0, Lvd/h0;->q:Lorg/slf4j/Logger;

    .line 17
    .line 18
    const-string v1, "Waiting for transport"

    .line 19
    .line 20
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    new-instance v0, Lvd/r;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, v1, p1}, Lvd/r;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_1
    new-instance p1, Lvd/r;

    .line 39
    .line 40
    const-string v0, "Disconnecting during tree connect"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_2
    return v0
.end method

.method public final close()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lvd/h0;->M(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lvd/h0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lvd/h0;

    .line 6
    .line 7
    iget-object v0, p1, Lvd/h0;->b:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p1, p1, Lvd/h0;->f:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Lvd/h0;->L(Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public final finalize()V
    .locals 5

    .line 1
    iget v0, p0, Lvd/h0;->e:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lvd/h0;->d:Lvd/z;

    .line 7
    .line 8
    iget-object v1, v0, Lvd/z;->d:Lvd/b0;

    .line 9
    .line 10
    invoke-virtual {v1}, Lvd/b0;->T()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lvd/z;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x2

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lvd/h0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lvd/h0;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    cmp-long v4, v0, v2

    .line 42
    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    sget-object v0, Lvd/h0;->q:Lorg/slf4j/Logger;

    .line 46
    .line 47
    const-string v1, "Tree was not properly released"

    .line 48
    .line 49
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lvd/h0;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lvd/h0;->f:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-int/lit8 v1, v1, 0x7

    .line 14
    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method public final r(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lvd/h0;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-object v2, Lvd/h0;->q:Lorg/slf4j/Logger;

    .line 8
    .line 9
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v4, "Acquire tree "

    .line 18
    .line 19
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v4, " "

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-boolean p1, p0, Lvd/h0;->l:Z

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lvd/h0;->m:Ljava/util/LinkedList;

    .line 47
    .line 48
    monitor-enter p1

    .line 49
    :try_start_0
    iget-object v3, p0, Lvd/h0;->m:Ljava/util/LinkedList;

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4}, Lvd/h0;->S([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    monitor-exit p1

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw v0

    .line 71
    :cond_1
    :goto_0
    const-wide/16 v3, 0x1

    .line 72
    .line 73
    cmp-long p1, v0, v3

    .line 74
    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    monitor-enter p0

    .line 78
    :try_start_1
    iget-object p1, p0, Lvd/h0;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    const/4 v1, 0x1

    .line 82
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    const-string p1, "Reacquire session"

    .line 89
    .line 90
    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lvd/h0;->d:Lvd/z;

    .line 94
    .line 95
    invoke-virtual {p1}, Lvd/z;->r()V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_1
    move-exception p1

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    :goto_1
    monitor-exit p0

    .line 102
    goto :goto_3

    .line 103
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    throw p1

    .line 105
    :cond_3
    :goto_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SmbTree[share="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lvd/h0;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",service="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lvd/h0;->f:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",tid="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lvd/h0;->e:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",inDfs="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lvd/h0;->g:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ",inDomainDfs="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lvd/h0;->h:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ",connectionState="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lvd/h0;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ",usage="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lvd/h0;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, "]"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method
