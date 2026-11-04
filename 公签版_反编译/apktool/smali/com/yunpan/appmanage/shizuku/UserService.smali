.class public Lcom/yunpan/appmanage/shizuku/UserService;
.super Lcom/yunpan/appmanage/shizuku/IUserService$Stub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yunpan/appmanage/shizuku/IUserService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Ljava/lang/Process;Lcom/yunpan/appmanage/shizuku/CmdResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yunpan/appmanage/shizuku/UserService;->lambda$exec$0(Ljava/lang/Process;Lcom/yunpan/appmanage/shizuku/CmdResult;)V

    return-void
.end method

.method private static synthetic lambda$exec$0(Ljava/lang/Process;Lcom/yunpan/appmanage/shizuku/CmdResult;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 4
    .line 5
    new-instance v3, Ljava/io/InputStreamReader;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    iget-object v3, p1, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_4

    .line 35
    :catch_0
    move-exception p0

    .line 36
    goto :goto_3

    .line 37
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :catchall_1
    move-exception p1

    .line 42
    :try_start_4
    const-class v2, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 43
    .line 44
    :try_start_5
    const-string v3, "addSuppressed"

    .line 45
    .line 46
    new-array v4, v1, [Ljava/lang/Class;

    .line 47
    .line 48
    aput-object v2, v4, v0

    .line 49
    .line 50
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object p1, v1, v0

    .line 57
    .line 58
    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 59
    .line 60
    .line 61
    :catch_1
    :goto_2
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 62
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :goto_4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 3
    .line 4
    invoke-direct {v1}, Lcom/yunpan/appmanage/shizuku/CmdResult;-><init>()V

    .line 5
    .line 6
    .line 7
    :try_start_0
    new-instance v2, Ljava/lang/ProcessBuilder;

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    new-array v3, v3, [Ljava/lang/String;

    .line 11
    .line 12
    const-string v4, "/system/bin/sh"

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput-object v4, v3, v5

    .line 16
    .line 17
    const-string v4, "-c"

    .line 18
    .line 19
    aput-object v4, v3, v0

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    aput-object p1, v3, v4

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v2, Lfg/b;

    .line 35
    .line 36
    new-instance v3, La2/c0;

    .line 37
    .line 38
    const/16 v4, 0xb

    .line 39
    .line 40
    invoke-direct {v3, p1, v4, v1}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3, v0}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 47
    .line 48
    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    const/16 v3, 0x1a

    .line 52
    .line 53
    const-string v4, "\u6267\u884c\u547d\u4ee4\u8d85\u65f6"

    .line 54
    .line 55
    if-lt v0, v3, :cond_1

    .line 56
    .line 57
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    .line 59
    invoke-static {p1, p2, p3, v0}, Landroidx/media3/exoplayer/video/i;->s(Ljava/lang/Process;JLjava/util/concurrent/TimeUnit;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    invoke-static {p1}, Landroidx/media3/exoplayer/video/i;->o(Ljava/lang/Process;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 70
    .line 71
    .line 72
    new-instance p1, Landroid/os/RemoteException;

    .line 73
    .line 74
    invoke-direct {p1, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :catch_0
    move-exception p1

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v7

    .line 94
    sub-long/2addr v7, v5

    .line 95
    cmp-long v0, v7, p2

    .line 96
    .line 97
    if-gez v0, :cond_2

    .line 98
    .line 99
    const-wide/16 v7, 0x14d

    .line 100
    .line 101
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    if-nez p2, :cond_3

    .line 110
    .line 111
    :goto_1
    const-wide/16 p2, 0x3e8

    .line 112
    .line 113
    invoke-virtual {v2, p2, p3}, Ljava/lang/Thread;->join(J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Process;->exitValue()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    iput p1, v1, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 127
    .line 128
    .line 129
    new-instance p1, Landroid/os/RemoteException;

    .line 130
    .line 131
    invoke-direct {p1, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    :goto_2
    iget-object p2, v1, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :goto_3
    return-object v1
.end method

.method public exit()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yunpan/appmanage/shizuku/UserService;->destroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
