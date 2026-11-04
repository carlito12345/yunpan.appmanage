.class public final Ldg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldg/a;->b:Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldg/a;->c:Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldg/a;->d:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Ldg/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lag/l;[CLm7/e;Lcom/bumptech/glide/manager/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p3, p4, Lcom/bumptech/glide/manager/s;->c:Ljava/lang/Object;

    check-cast p3, Lcg/a;

    iput-object p3, p0, Ldg/a;->b:Ljava/lang/Object;

    .line 3
    iget-boolean p3, p4, Lcom/bumptech/glide/manager/s;->b:Z

    iput-boolean p3, p0, Ldg/a;->a:Z

    .line 4
    iget-object p3, p4, Lcom/bumptech/glide/manager/s;->d:Ljava/lang/Object;

    check-cast p3, Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Ldg/a;->c:Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Ldg/a;->d:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Ldg/a;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lvb/g;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Ldg/a;->a:Z

    .line 9
    iput-object p1, p0, Ldg/a;->e:Ljava/lang/Object;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldg/a;->b:Ljava/lang/Object;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldg/a;->c:Ljava/lang/Object;

    .line 12
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object p1, p0, Ldg/a;->d:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Ldg/a;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ldg/a;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x3e

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v0, p0, Ldg/a;->d:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/Class;

    .line 45
    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    return v1

    .line 59
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 60
    return p1
.end method

.method public b(La2/g1;Lcg/a;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-object v2, p1, La2/g1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v2, Lag/h;

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Ldg/a;->e(Lag/h;)Lyf/j;

    .line 8
    .line 9
    .line 10
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iget-object v3, p0, Ldg/a;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lag/l;

    .line 14
    .line 15
    iget-object v3, v3, Lag/l;->b:Lag/c;

    .line 16
    .line 17
    iget-object v3, v3, Lag/c;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    move-object v5, v3

    .line 34
    check-cast v5, Lag/f;

    .line 35
    .line 36
    iget-object v3, v5, Lag/b;->k:Ljava/lang/String;

    .line 37
    .line 38
    const-string v4, "__MACOSX"

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    iget-wide v3, v5, Lag/b;->i:J

    .line 47
    .line 48
    invoke-virtual {p2, v3, v4}, Lcg/a;->a(J)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    iget-object v3, p0, Ldg/a;->f:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v3, Lmg/a;

    .line 57
    .line 58
    invoke-virtual {v3, v5}, Lmg/a;->r(Lag/f;)V

    .line 59
    .line 60
    .line 61
    const/16 v3, 0x1000

    .line 62
    .line 63
    new-array v8, v3, [B

    .line 64
    .line 65
    iget-object v3, p1, La2/g1;->c:Ljava/lang/Object;

    .line 66
    .line 67
    move-object v6, v3

    .line 68
    check-cast v6, Ljava/lang/String;

    .line 69
    .line 70
    move-object v3, p0

    .line 71
    move-object v4, v2

    .line 72
    move-object v7, p2

    .line 73
    invoke-virtual/range {v3 .. v8}, Ldg/a;->c(Lyf/j;Lag/f;Ljava/lang/String;Lcg/a;[B)V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Ldg/a;->b:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v3, Lcg/a;

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lyf/j;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Ldg/a;->f:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p1, Lmg/a;

    .line 90
    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 94
    .line 95
    .line 96
    :cond_2
    return-void

    .line 97
    :catchall_1
    move-exception p1

    .line 98
    goto :goto_3

    .line 99
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Lyf/j;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :catchall_2
    move-exception p2

    .line 104
    :try_start_4
    const-class v2, Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 105
    .line 106
    :try_start_5
    const-string v3, "addSuppressed"

    .line 107
    .line 108
    new-array v4, v1, [Ljava/lang/Class;

    .line 109
    .line 110
    aput-object v2, v4, v0

    .line 111
    .line 112
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    new-array v1, v1, [Ljava/lang/Object;

    .line 117
    .line 118
    aput-object p2, v1, v0

    .line 119
    .line 120
    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 121
    .line 122
    .line 123
    :catch_0
    :goto_2
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 124
    :goto_3
    iget-object p2, p0, Ldg/a;->f:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast p2, Lmg/a;

    .line 127
    .line 128
    if-eqz p2, :cond_3

    .line 129
    .line 130
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 131
    .line 132
    .line 133
    :cond_3
    goto :goto_5

    .line 134
    :goto_4
    throw p1

    .line 135
    :goto_5
    goto :goto_4
.end method

.method public c(Lyf/j;Lag/f;Ljava/lang/String;Lcg/a;[B)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p2, Lag/f;->x:[B

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    const/4 v4, 0x4

    .line 9
    if-ge v3, v4, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x3

    .line 13
    aget-byte v2, v2, v3

    .line 14
    .line 15
    const/4 v3, 0x5

    .line 16
    invoke-static {v2, v3}, Leg/c;->g(BI)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 22
    :goto_1
    sget-object v3, Leg/d;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p3, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_2

    .line 29
    .line 30
    invoke-static {p3, v3}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    :cond_2
    iget-object v4, p2, Lag/b;->k:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v5, Ljava/io/File;

    .line 37
    .line 38
    const-string v6, ":\\\\"

    .line 39
    .line 40
    const-string v7, "_"

    .line 41
    .line 42
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    const-string v7, "[/\\\\]"

    .line 51
    .line 52
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-direct {v5, p3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_3

    .line 74
    .line 75
    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-nez v6, :cond_3

    .line 80
    .line 81
    invoke-static {v4, v3}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    :cond_3
    new-instance v6, Ljava/io/File;

    .line 86
    .line 87
    invoke-direct {v6, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    invoke-virtual {p3, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-nez v6, :cond_4

    .line 99
    .line 100
    invoke-static {p3, v3}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    :cond_4
    invoke-virtual {v4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    if-eqz p3, :cond_17

    .line 109
    .line 110
    iget-object p3, p2, Lag/b;->d:[B

    .line 111
    .line 112
    aget-byte p3, p3, v1

    .line 113
    .line 114
    const/4 v3, 0x6

    .line 115
    invoke-static {p3, v3}, Leg/c;->g(BI)Z

    .line 116
    .line 117
    .line 118
    move-result p3

    .line 119
    if-nez p3, :cond_16

    .line 120
    .line 121
    invoke-virtual {p1, p2, v1}, Lyf/j;->A(Lag/f;Z)Lag/g;

    .line 122
    .line 123
    .line 124
    move-result-object p3

    .line 125
    if-eqz p3, :cond_15

    .line 126
    .line 127
    iget-object v3, p2, Lag/b;->k:Ljava/lang/String;

    .line 128
    .line 129
    iget-object p3, p3, Lag/b;->k:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    if-eqz p3, :cond_14

    .line 136
    .line 137
    iget-boolean p3, p2, Lag/b;->t:Z

    .line 138
    .line 139
    if-eqz p3, :cond_6

    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-nez p1, :cond_10

    .line 146
    .line 147
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_5

    .line 152
    .line 153
    goto/16 :goto_7

    .line 154
    .line 155
    :cond_5
    new-instance p1, Lwf/a;

    .line 156
    .line 157
    new-instance p2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string p3, "Could not create directory: "

    .line 160
    .line 161
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-direct {p1, p2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :cond_6
    const-string p3, "addSuppressed"

    .line 176
    .line 177
    const-class v3, Ljava/lang/Throwable;

    .line 178
    .line 179
    if-eqz v2, :cond_c

    .line 180
    .line 181
    const-string p5, "Could not delete existing symlink "

    .line 182
    .line 183
    new-instance v4, Ljava/lang/String;

    .line 184
    .line 185
    iget-wide v6, p2, Lag/b;->i:J

    .line 186
    .line 187
    long-to-int v7, v6

    .line 188
    new-array v6, v7, [B

    .line 189
    .line 190
    invoke-virtual {p1, v6, v1, v7}, Lyf/j;->read([BII)I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-ne p1, v7, :cond_b

    .line 195
    .line 196
    int-to-long v7, v7

    .line 197
    invoke-virtual {p4, v7, v8}, Lcg/a;->a(J)V

    .line 198
    .line 199
    .line 200
    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-nez p1, :cond_8

    .line 212
    .line 213
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_7

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_7
    new-instance p1, Lwf/a;

    .line 225
    .line 226
    const-string p2, "Could not create parent directories"

    .line 227
    .line 228
    invoke-direct {p1, p2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw p1

    .line 232
    :cond_8
    :goto_2
    :try_start_0
    new-array p1, v1, [Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {v4, p1}, Lcom/hjq/permissions/permission/special/b;->k(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 239
    .line 240
    .line 241
    move-result p4

    .line 242
    if-eqz p4, :cond_a

    .line 243
    .line 244
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 245
    .line 246
    .line 247
    move-result p4

    .line 248
    if-eqz p4, :cond_9

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_9
    new-instance p1, Lwf/a;

    .line 252
    .line 253
    new-instance p4, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p4

    .line 265
    invoke-direct {p1, p4}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw p1

    .line 269
    :cond_a
    :goto_3
    invoke-static {v5}, Lvb/t;->d(Ljava/io/File;)Ljava/nio/file/Path;

    .line 270
    .line 271
    .line 272
    move-result-object p4

    .line 273
    new-array p5, v1, [Ljava/nio/file/attribute/FileAttribute;

    .line 274
    .line 275
    invoke-static {p4, p1, p5}, Lcom/hjq/permissions/permission/special/b;->q(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .line 277
    .line 278
    goto/16 :goto_7

    .line 279
    .line 280
    :catch_0
    new-instance p1, Ljava/io/FileOutputStream;

    .line 281
    .line 282
    invoke-direct {p1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 283
    .line 284
    .line 285
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 286
    .line 287
    .line 288
    move-result-object p4

    .line 289
    invoke-virtual {p1, p4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 293
    .line 294
    .line 295
    goto :goto_7

    .line 296
    :catchall_0
    move-exception p2

    .line 297
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 298
    .line 299
    .line 300
    goto :goto_4

    .line 301
    :catchall_1
    move-exception p1

    .line 302
    :try_start_3
    new-array p4, v0, [Ljava/lang/Class;

    .line 303
    .line 304
    aput-object v3, p4, v1

    .line 305
    .line 306
    invoke-virtual {v3, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 307
    .line 308
    .line 309
    move-result-object p3

    .line 310
    new-array p4, v0, [Ljava/lang/Object;

    .line 311
    .line 312
    aput-object p1, p4, v1

    .line 313
    .line 314
    invoke-virtual {p3, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 315
    .line 316
    .line 317
    :catch_1
    :goto_4
    throw p2

    .line 318
    :cond_b
    new-instance p1, Lwf/a;

    .line 319
    .line 320
    const-string p2, "Could not read complete entry"

    .line 321
    .line 322
    invoke-direct {p1, p2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw p1

    .line 326
    :cond_c
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    if-nez v4, :cond_e

    .line 335
    .line 336
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    if-eqz v4, :cond_d

    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_d
    new-instance p1, Lwf/a;

    .line 348
    .line 349
    new-instance p2, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string p3, "Unable to create parent directories: "

    .line 352
    .line 353
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 357
    .line 358
    .line 359
    move-result-object p3

    .line 360
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p2

    .line 367
    invoke-direct {p1, p2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw p1

    .line 371
    :cond_e
    :goto_5
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    .line 372
    .line 373
    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 374
    .line 375
    .line 376
    :goto_6
    :try_start_5
    array-length v6, p5

    .line 377
    invoke-virtual {p1, p5, v1, v6}, Lyf/j;->read([BII)I

    .line 378
    .line 379
    .line 380
    move-result v6

    .line 381
    const/4 v7, -0x1

    .line 382
    if-eq v6, v7, :cond_f

    .line 383
    .line 384
    invoke-virtual {v4, p5, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 385
    .line 386
    .line 387
    int-to-long v6, v6

    .line 388
    invoke-virtual {p4, v6, v7}, Lcg/a;->a(J)V

    .line 389
    .line 390
    .line 391
    iget-object v6, p0, Ldg/a;->b:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v6, Lcg/a;

    .line 394
    .line 395
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 396
    .line 397
    .line 398
    goto :goto_6

    .line 399
    :catchall_2
    move-exception p1

    .line 400
    goto :goto_9

    .line 401
    :cond_f
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 402
    .line 403
    .line 404
    :cond_10
    :goto_7
    if-nez v2, :cond_12

    .line 405
    .line 406
    :try_start_7
    invoke-static {v5}, Lvb/t;->d(Ljava/io/File;)Ljava/nio/file/Path;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    iget-object p3, p2, Lag/f;->x:[B

    .line 411
    .line 412
    invoke-static {p1, p3}, Leg/c;->m(Ljava/nio/file/Path;[B)V

    .line 413
    .line 414
    .line 415
    iget-wide p3, p2, Lag/b;->f:J

    .line 416
    .line 417
    const-wide/16 v2, 0x0

    .line 418
    .line 419
    cmp-long p5, p3, v2

    .line 420
    .line 421
    if-lez p5, :cond_12

    .line 422
    .line 423
    new-array p5, v1, [Ljava/nio/file/LinkOption;

    .line 424
    .line 425
    invoke-static {p1, p5}, Lcom/hjq/permissions/permission/special/b;->v(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    .line 426
    .line 427
    .line 428
    move-result p5
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_2

    .line 429
    if-nez p5, :cond_11

    .line 430
    .line 431
    goto :goto_8

    .line 432
    :cond_11
    :try_start_8
    invoke-static {p3, p4}, Leg/c;->c(J)J

    .line 433
    .line 434
    .line 435
    move-result-wide p3

    .line 436
    invoke-static {p3, p4}, Landroidx/media3/exoplayer/video/i;->l(J)Ljava/nio/file/attribute/FileTime;

    .line 437
    .line 438
    .line 439
    move-result-object p3

    .line 440
    invoke-static {p1, p3}, Lcom/hjq/permissions/permission/special/b;->r(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_8 .. :try_end_8} :catch_2

    .line 441
    .line 442
    .line 443
    goto :goto_8

    .line 444
    :catch_2
    iget-wide p1, p2, Lag/b;->f:J

    .line 445
    .line 446
    invoke-static {p1, p2}, Leg/c;->c(J)J

    .line 447
    .line 448
    .line 449
    move-result-wide p1

    .line 450
    invoke-virtual {v5, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    .line 451
    .line 452
    .line 453
    :catch_3
    :cond_12
    :goto_8
    return-void

    .line 454
    :catch_4
    move-exception p1

    .line 455
    goto :goto_b

    .line 456
    :goto_9
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 457
    .line 458
    .line 459
    goto :goto_a

    .line 460
    :catchall_3
    move-exception p2

    .line 461
    :try_start_a
    new-array p4, v0, [Ljava/lang/Class;

    .line 462
    .line 463
    aput-object v3, p4, v1

    .line 464
    .line 465
    invoke-virtual {v3, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 466
    .line 467
    .line 468
    move-result-object p3

    .line 469
    new-array p4, v0, [Ljava/lang/Object;

    .line 470
    .line 471
    aput-object p2, p4, v1

    .line 472
    .line 473
    invoke-virtual {p3, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 474
    .line 475
    .line 476
    :catch_5
    :goto_a
    :try_start_b
    throw p1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 477
    :goto_b
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 478
    .line 479
    .line 480
    move-result p2

    .line 481
    if-eqz p2, :cond_13

    .line 482
    .line 483
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 484
    .line 485
    .line 486
    :cond_13
    throw p1

    .line 487
    :cond_14
    new-instance p1, Lwf/a;

    .line 488
    .line 489
    const-string p2, "File header and local file header mismatch"

    .line 490
    .line 491
    invoke-direct {p1, p2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    throw p1

    .line 495
    :cond_15
    new-instance p1, Lwf/a;

    .line 496
    .line 497
    new-instance p3, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    const-string p4, "Could not read corresponding local file header for file header: "

    .line 500
    .line 501
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    iget-object p2, p2, Lag/b;->k:Ljava/lang/String;

    .line 505
    .line 506
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object p2

    .line 513
    invoke-direct {p1, p2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    throw p1

    .line 517
    :cond_16
    new-instance p1, Lwf/a;

    .line 518
    .line 519
    new-instance p3, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    const-string p4, "Entry with name "

    .line 522
    .line 523
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    iget-object p2, p2, Lag/b;->k:Ljava/lang/String;

    .line 527
    .line 528
    const-string p4, " is encrypted with Strong Encryption. Zip4j does not support Strong Encryption, as this is patented."

    .line 529
    .line 530
    invoke-static {p2, p4, p3}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object p2

    .line 534
    invoke-direct {p1, p2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    throw p1

    .line 538
    :cond_17
    new-instance p1, Lwf/a;

    .line 539
    .line 540
    new-instance p3, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    const-string p4, "illegal file name that breaks out of the target directory: "

    .line 543
    .line 544
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    iget-object p2, p2, Lag/b;->k:Ljava/lang/String;

    .line 548
    .line 549
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object p2

    .line 556
    invoke-direct {p1, p2}, Lwf/a;-><init>(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    goto :goto_d

    .line 560
    :goto_c
    throw p1

    .line 561
    :goto_d
    goto :goto_c
.end method

.method public d(La2/g1;Lcg/a;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ldg/a;->b(La2/g1;Lcg/a;)V

    .line 4
    .line 5
    .line 6
    iput v1, p2, Lcg/a;->e:I

    .line 7
    .line 8
    const/16 p1, 0x64

    .line 9
    .line 10
    iput p1, p2, Lcg/a;->d:I

    .line 11
    .line 12
    iput v1, p2, Lcg/a;->a:I
    :try_end_0
    .catch Lwf/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :catch_1
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :goto_0
    iput v0, p2, Lcg/a;->e:I

    .line 20
    .line 21
    iput-object p1, p2, Lcg/a;->f:Ljava/lang/Exception;

    .line 22
    .line 23
    iput v1, p2, Lcg/a;->a:I

    .line 24
    .line 25
    new-instance p2, Lwf/a;

    .line 26
    .line 27
    invoke-direct {p2, p1}, Lwf/a;-><init>(Ljava/lang/Exception;)V

    .line 28
    .line 29
    .line 30
    throw p2

    .line 31
    :goto_1
    iput v0, p2, Lcg/a;->e:I

    .line 32
    .line 33
    iput-object p1, p2, Lcg/a;->f:Ljava/lang/Exception;

    .line 34
    .line 35
    iput v1, p2, Lcg/a;->a:I

    .line 36
    .line 37
    throw p1
.end method

.method public e(Lag/h;)Lyf/j;
    .locals 5

    .line 1
    iget-object v0, p0, Ldg/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lag/l;

    .line 4
    .line 5
    iget-object v1, v0, Lag/l;->g:Ljava/io/File;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, ".zip.001"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Lyf/f;

    .line 20
    .line 21
    iget-object v2, v0, Lag/l;->g:Ljava/io/File;

    .line 22
    .line 23
    invoke-direct {v1, v2}, Lyf/f;-><init>(Ljava/io/File;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v1, Lyf/k;

    .line 28
    .line 29
    iget-object v2, v0, Lag/l;->g:Ljava/io/File;

    .line 30
    .line 31
    iget-boolean v3, v0, Lag/l;->f:Z

    .line 32
    .line 33
    iget-object v4, v0, Lag/l;->c:Lag/d;

    .line 34
    .line 35
    iget v4, v4, Lag/d;->c:I

    .line 36
    .line 37
    invoke-direct {v1, v2, v3, v4}, Lyf/k;-><init>(Ljava/io/File;ZI)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iput-object v1, p0, Ldg/a;->f:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v1, v0, Lag/l;->b:Lag/c;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    iget-object v1, v1, Lag/c;->a:Ljava/util/ArrayList;

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object v0, v0, Lag/l;->b:Lag/c;

    .line 58
    .line 59
    iget-object v0, v0, Lag/c;->a:Ljava/util/ArrayList;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lag/f;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 70
    :goto_2
    if-eqz v0, :cond_3

    .line 71
    .line 72
    iget-object v1, p0, Ldg/a;->f:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Lmg/a;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lmg/a;->r(Lag/f;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    new-instance v0, Lyf/j;

    .line 80
    .line 81
    iget-object v1, p0, Ldg/a;->f:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, Lmg/a;

    .line 84
    .line 85
    iget-object v2, p0, Ldg/a;->e:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, [C

    .line 88
    .line 89
    invoke-direct {v0, v1, v2, p1}, Lyf/j;-><init>(Ljava/io/InputStream;[CLag/h;)V

    .line 90
    .line 91
    .line 92
    return-object v0
.end method
