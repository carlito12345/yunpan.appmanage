.class public final synthetic Lha/y9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/y6;
.implements Lec/d;


# instance fields
.field public final synthetic a:Lha/ba;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lha/ba;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/y9;->a:Lha/ba;

    iput-object p2, p0, Lha/y9;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lha/y9;->b:Ljava/io/File;

    .line 4
    .line 5
    iget-object v3, p0, Lha/y9;->a:Lha/ba;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v4, "addSuppressed"

    .line 11
    .line 12
    const-class v5, Ljava/lang/Throwable;

    .line 13
    .line 14
    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    .line 15
    .line 16
    invoke-direct {v6, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 17
    .line 18
    .line 19
    :try_start_1
    new-instance v7, Ljava/io/BufferedWriter;

    .line 20
    .line 21
    invoke-direct {v7, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    :goto_0
    :try_start_2
    iget-object v9, v3, Lha/ba;->i:Lx9/t0;

    .line 26
    .line 27
    invoke-virtual {v9}, Lc6/g;->b()I

    .line 28
    .line 29
    .line 30
    move-result v9

    .line 31
    if-ge v8, v9, :cond_0

    .line 32
    .line 33
    iget-object v9, v3, Lha/ba;->i:Lx9/t0;

    .line 34
    .line 35
    invoke-virtual {v9, v8}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    check-cast v9, Lcom/yunpan/appmanage/bean/LogcatBean;

    .line 40
    .line 41
    iget-object v9, v9, Lcom/yunpan/appmanage/bean/LogcatBean;->log:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v7, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    .line 49
    add-int/2addr v8, v0

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v2

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    .line 55
    .line 56
    :try_start_4
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "\u4fdd\u5b58\u6210\u529f\uff01\u5728Download\u76ee\u5f55\u5185"

    .line 71
    .line 72
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 76
    .line 77
    .line 78
    goto :goto_5

    .line 79
    :catchall_1
    move-exception v2

    .line 80
    goto :goto_3

    .line 81
    :goto_1
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :catchall_2
    move-exception v3

    .line 86
    :try_start_6
    new-array v7, v0, [Ljava/lang/Class;

    .line 87
    .line 88
    aput-object v5, v7, v1

    .line 89
    .line 90
    invoke-virtual {v5, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    new-array v8, v0, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object v3, v8, v1

    .line 97
    .line 98
    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 99
    .line 100
    .line 101
    :catch_0
    :goto_2
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 102
    :goto_3
    :try_start_8
    invoke-virtual {v6}, Ljava/io/Writer;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :catchall_3
    move-exception v3

    .line 107
    :try_start_9
    new-array v6, v0, [Ljava/lang/Class;

    .line 108
    .line 109
    aput-object v5, v6, v1

    .line 110
    .line 111
    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    new-array v0, v0, [Ljava/lang/Object;

    .line 116
    .line 117
    aput-object v3, v0, v1

    .line 118
    .line 119
    invoke-virtual {v4, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 120
    .line 121
    .line 122
    :catch_1
    :goto_4
    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 123
    :catch_2
    const-string v0, "\u4fdd\u5b58\u5931\u8d25"

    .line 124
    .line 125
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Ljava/lang/Exception;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    :goto_5
    return-void
.end method

.method public n(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lha/y9;->a:Lha/ba;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Lha/y9;

    .line 10
    .line 11
    iget-object v0, p0, Lha/y9;->b:Ljava/io/File;

    .line 12
    .line 13
    invoke-direct {p2, p1, v0}, Lha/y9;-><init>(Lha/ba;Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Lmc/c;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, v0, p2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance p2, Lha/m6;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    invoke-direct {p2, v0}, Lha/m6;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method
