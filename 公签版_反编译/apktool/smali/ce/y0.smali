.class public final Lce/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/util/Vector;

.field public final d:Lwd/c;

.field public final e:I

.field public final f:I

.field public final g:Ljava/net/InetAddress;

.field public h:Lce/b1;

.field public i:Lce/p;

.field public j:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lwd/a;->a:Ljava/util/Properties;

    .line 2
    .line 3
    const-string v1, "jcifs.smb1.smb.client.logonShare"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    const-string v0, "jcifs.smb1.netbios.lookupRespLimit"

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    const-string v0, "jcifs.smb1.smb.client.domain"

    .line 16
    .line 17
    invoke-static {v0}, Lwd/a;->d(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "jcifs.smb1.smb.client.username"

    .line 21
    .line 22
    invoke-static {v0}, Lwd/a;->d(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "jcifs.smb1.netbios.cachePolicy"

    .line 26
    .line 27
    const/16 v1, 0x258

    .line 28
    .line 29
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Lwd/c;ILjava/net/InetAddress;ILce/p;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lce/y0;->h:Lce/b1;

    .line 6
    .line 7
    iput-object p1, p0, Lce/y0;->d:Lwd/c;

    .line 8
    .line 9
    iput p2, p0, Lce/y0;->e:I

    .line 10
    .line 11
    iput-object p3, p0, Lce/y0;->g:Ljava/net/InetAddress;

    .line 12
    .line 13
    iput p4, p0, Lce/y0;->f:I

    .line 14
    .line 15
    iput-object p5, p0, Lce/y0;->i:Lce/p;

    .line 16
    .line 17
    new-instance p1, Ljava/util/Vector;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lce/y0;->c:Ljava/util/Vector;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lce/y0;->a:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lce/c1;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    const-string p1, "IPC$"

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    iget-object v0, p0, Lce/y0;->c:Ljava/util/Vector;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lce/c1;

    .line 26
    .line 27
    invoke-virtual {v1, p1, p2}, Lce/c1;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-object v1

    .line 35
    :cond_2
    :try_start_1
    new-instance v0, Lce/c1;

    .line 36
    .line 37
    invoke-direct {v0, p0, p1, p2}, Lce/c1;-><init>(Lce/y0;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lce/y0;->c:Ljava/util/Vector;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-object v0

    .line 47
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    goto :goto_3

    .line 49
    :goto_2
    throw p1

    .line 50
    :goto_3
    goto :goto_2
.end method

.method public final b(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lce/y0;->e()Lce/b1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, p0, Lce/y0;->a:I

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v1, v2, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x3

    .line 16
    iput v1, p0, Lce/y0;->a:I

    .line 17
    .line 18
    iget-object v1, p0, Lce/y0;->c:Ljava/util/Vector;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lce/c1;

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Lce/c1;->d(Z)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lce/y0;->h:Lce/b1;

    .line 44
    .line 45
    iget-object p1, p1, Lce/b1;->w:Lce/a1;

    .line 46
    .line 47
    iget p1, p1, Lce/a1;->g:I

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    new-instance p1, Lce/w;

    .line 52
    .line 53
    invoke-direct {p1}, Lce/w;-><init>()V

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lce/y0;->b:I

    .line 57
    .line 58
    iput v2, p1, Lce/q;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    :try_start_1
    iget-object v2, p0, Lce/y0;->h:Lce/b1;

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-virtual {v2, p1, v3}, Lce/b1;->s(Lce/q;Lce/q;)V
    :try_end_1
    .catch Lce/r0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    :catch_0
    :try_start_2
    iput v1, p0, Lce/y0;->b:I

    .line 67
    .line 68
    :cond_2
    iput v1, p0, Lce/y0;->a:I

    .line 69
    .line 70
    iget-object p1, p0, Lce/y0;->h:Lce/b1;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 73
    .line 74
    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    goto :goto_3

    .line 79
    :goto_2
    throw p1

    .line 80
    :goto_3
    goto :goto_2
.end method

.method public final c(Lce/q;Lce/q;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lce/y0;->e()Lce/b1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    monitor-enter v0

    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    iput-boolean v1, p2, Lce/q;->r:Z

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    sget v3, Lce/q0;->u0:I

    .line 19
    .line 20
    int-to-long v3, v3

    .line 21
    add-long/2addr v1, v3

    .line 22
    iput-wide v1, p0, Lce/y0;->j:J

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lce/y0;->d(Lce/q;Lce/q;)V

    .line 25
    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    iget-boolean v1, p2, Lce/q;->r:Z

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    instance-of v1, p1, Lce/k0;

    .line 36
    .line 37
    iget v1, p0, Lce/y0;->b:I

    .line 38
    .line 39
    iput v1, p1, Lce/q;->l:I

    .line 40
    .line 41
    iget-object v1, p0, Lce/y0;->i:Lce/p;

    .line 42
    .line 43
    iput-object v1, p1, Lce/q;->w:Lce/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    :try_start_1
    iget-object v1, p0, Lce/y0;->h:Lce/b1;

    .line 46
    .line 47
    invoke-virtual {v1, p1, p2}, Lce/b1;->s(Lce/q;Lce/q;)V
    :try_end_1
    .catch Lce/r0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    :try_start_2
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catch_0
    move-exception p2

    .line 53
    instance-of v1, p1, Lce/k0;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-virtual {p0, v1}, Lce/y0;->b(Z)V

    .line 59
    .line 60
    .line 61
    :cond_2
    const/4 v1, 0x0

    .line 62
    iput-object v1, p1, Lce/q;->y:Lce/r;

    .line 63
    .line 64
    throw p2

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    throw p1
.end method

.method public final d(Lce/q;Lce/q;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lce/y0;->e()Lce/b1;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    monitor-enter v2

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    new-array v0, v3, [B

    .line 10
    .line 11
    :goto_0
    iget v4, v1, Lce/y0;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    if-eqz v4, :cond_2

    .line 15
    .line 16
    if-eq v4, v5, :cond_1

    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    if-ne v4, v5, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :try_start_1
    iget-object v4, v1, Lce/y0;->h:Lce/b1;

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto/16 :goto_13

    .line 30
    .line 31
    :catch_0
    move-exception v0

    .line 32
    :try_start_2
    new-instance v3, Lce/r0;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-direct {v3, v4, v0}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 39
    .line 40
    .line 41
    throw v3

    .line 42
    :cond_1
    :goto_1
    monitor-exit v2

    .line 43
    return-void

    .line 44
    :cond_2
    const/4 v4, 0x1

    .line 45
    iput v4, v1, Lce/y0;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    :try_start_3
    iget-object v6, v1, Lce/y0;->h:Lce/b1;

    .line 48
    .line 49
    invoke-virtual {v6}, Lce/b1;->l()V

    .line 50
    .line 51
    .line 52
    sget-object v6, Lce/b1;->E:[B

    .line 53
    .line 54
    sget v6, Lde/d;->b:I
    :try_end_3
    .catch Lce/r0; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    .line 56
    const/4 v7, 0x4

    .line 57
    if-lt v6, v7, :cond_3

    .line 58
    .line 59
    :try_start_4
    sget-object v6, Lce/b1;->G:Lde/d;

    .line 60
    .line 61
    iget-object v8, v1, Lce/y0;->i:Lce/p;

    .line 62
    .line 63
    iget-object v8, v8, Lce/p;->b:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Lce/r0; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catchall_1
    move-exception v0

    .line 70
    goto/16 :goto_12

    .line 71
    .line 72
    :catch_1
    move-exception v0

    .line 73
    goto/16 :goto_11

    .line 74
    .line 75
    :cond_3
    :goto_2
    :try_start_5
    iput v3, v1, Lce/y0;->b:I
    :try_end_5
    .catch Lce/r0; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 76
    .line 77
    const/16 v6, 0xa

    .line 78
    .line 79
    const/4 v8, 0x0

    .line 80
    move-object v9, v0

    .line 81
    move-object v0, v8

    .line 82
    move-object v11, v0

    .line 83
    const/16 v10, 0xa

    .line 84
    .line 85
    :goto_3
    const v12, -0x3fffff93    # -2.000026f

    .line 86
    .line 87
    .line 88
    const/16 v13, 0x14

    .line 89
    .line 90
    if-eq v10, v6, :cond_f

    .line 91
    .line 92
    if-ne v10, v13, :cond_e

    .line 93
    .line 94
    if-nez v11, :cond_5

    .line 95
    .line 96
    :try_start_6
    iget-object v11, v1, Lce/y0;->h:Lce/b1;

    .line 97
    .line 98
    iget v11, v11, Lce/b1;->x:I

    .line 99
    .line 100
    and-int/2addr v11, v7

    .line 101
    if-eqz v11, :cond_4

    .line 102
    .line 103
    const/4 v11, 0x1

    .line 104
    goto :goto_4

    .line 105
    :cond_4
    const/4 v11, 0x0

    .line 106
    :goto_4
    new-instance v13, Landroidx/recyclerview/widget/u;

    .line 107
    .line 108
    iget-object v14, v1, Lce/y0;->i:Lce/p;

    .line 109
    .line 110
    invoke-direct {v13, v14, v11}, Landroidx/recyclerview/widget/u;-><init>(Lce/p;Z)V

    .line 111
    .line 112
    .line 113
    move-object v11, v13

    .line 114
    :cond_5
    sget-object v13, Lce/b1;->E:[B

    .line 115
    .line 116
    sget v13, Lde/d;->b:I

    .line 117
    .line 118
    if-lt v13, v7, :cond_6

    .line 119
    .line 120
    sget-object v13, Lce/b1;->G:Lde/d;

    .line 121
    .line 122
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    :cond_6
    iget-boolean v13, v11, Landroidx/recyclerview/widget/u;->c:Z

    .line 126
    .line 127
    if-eqz v13, :cond_7

    .line 128
    .line 129
    iput v5, v1, Lce/y0;->a:I
    :try_end_6
    .catch Lce/r0; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 130
    .line 131
    move-object/from16 v13, p1

    .line 132
    .line 133
    move-object/from16 v14, p2

    .line 134
    .line 135
    :goto_5
    const/4 v10, 0x0

    .line 136
    goto/16 :goto_f

    .line 137
    .line 138
    :cond_7
    :try_start_7
    array-length v13, v9

    .line 139
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/u;->b([B)[B

    .line 140
    .line 141
    .line 142
    move-result-object v9
    :try_end_7
    .catch Lce/r0; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 143
    :try_start_8
    new-instance v13, Lce/g0;

    .line 144
    .line 145
    invoke-direct {v13, v1, v8, v9}, Lce/g0;-><init>(Lce/y0;Lce/q;Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    new-instance v9, Lce/h0;

    .line 149
    .line 150
    invoke-direct {v9, v8}, Lce/h0;-><init>(Lce/q;)V

    .line 151
    .line 152
    .line 153
    iget-object v14, v1, Lce/y0;->h:Lce/b1;

    .line 154
    .line 155
    iget-object v15, v1, Lce/y0;->i:Lce/p;

    .line 156
    .line 157
    iget v6, v14, Lce/b1;->x:I

    .line 158
    .line 159
    and-int/2addr v6, v7

    .line 160
    if-eqz v6, :cond_8

    .line 161
    .line 162
    iget-object v6, v14, Lce/b1;->t:Lce/r;

    .line 163
    .line 164
    if-nez v6, :cond_8

    .line 165
    .line 166
    sget-object v6, Lce/p;->m:Lce/p;

    .line 167
    .line 168
    if-eq v15, v6, :cond_8

    .line 169
    .line 170
    invoke-virtual {v6, v15}, Lce/p;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-nez v6, :cond_8

    .line 175
    .line 176
    const/4 v6, 0x1

    .line 177
    goto :goto_6

    .line 178
    :cond_8
    const/4 v6, 0x0

    .line 179
    :goto_6
    if-eqz v6, :cond_9

    .line 180
    .line 181
    iget-object v6, v11, Landroidx/recyclerview/widget/u;->g:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v6, [B

    .line 184
    .line 185
    if-eqz v6, :cond_9

    .line 186
    .line 187
    new-instance v14, Lce/r;

    .line 188
    .line 189
    invoke-direct {v14, v6, v4}, Lce/r;-><init>([BZ)V

    .line 190
    .line 191
    .line 192
    iput-object v14, v13, Lce/q;->y:Lce/r;

    .line 193
    .line 194
    :cond_9
    iget v6, v1, Lce/y0;->b:I

    .line 195
    .line 196
    iput v6, v13, Lce/q;->l:I

    .line 197
    .line 198
    iput v3, v1, Lce/y0;->b:I
    :try_end_8
    .catch Lce/r0; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 199
    .line 200
    :try_start_9
    iget-object v6, v1, Lce/y0;->h:Lce/b1;

    .line 201
    .line 202
    invoke-virtual {v6, v13, v9}, Lce/b1;->s(Lce/q;Lce/q;)V
    :try_end_9
    .catch Lce/s; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lce/r0; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 203
    .line 204
    .line 205
    goto :goto_8

    .line 206
    :catch_2
    move-exception v0

    .line 207
    goto :goto_7

    .line 208
    :catch_3
    move-exception v0

    .line 209
    goto :goto_a

    .line 210
    :goto_7
    :try_start_a
    iget-object v6, v1, Lce/y0;->h:Lce/b1;

    .line 211
    .line 212
    invoke-virtual {v6, v4}, Lee/b;->b(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 213
    .line 214
    .line 215
    :catch_4
    :goto_8
    :try_start_b
    iget-boolean v6, v9, Lce/h0;->I:Z

    .line 216
    .line 217
    if-eqz v6, :cond_b

    .line 218
    .line 219
    const-string v6, "GUEST"

    .line 220
    .line 221
    iget-object v14, v1, Lce/y0;->i:Lce/p;

    .line 222
    .line 223
    iget-object v14, v14, Lce/p;->b:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v6, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-eqz v6, :cond_a

    .line 230
    .line 231
    goto :goto_9

    .line 232
    :cond_a
    new-instance v0, Lce/s;

    .line 233
    .line 234
    invoke-direct {v0, v12}, Lce/s;-><init>(I)V

    .line 235
    .line 236
    .line 237
    throw v0

    .line 238
    :cond_b
    :goto_9
    if-nez v0, :cond_d

    .line 239
    .line 240
    iget v6, v9, Lce/q;->l:I

    .line 241
    .line 242
    iput v6, v1, Lce/y0;->b:I

    .line 243
    .line 244
    iget-object v6, v13, Lce/q;->y:Lce/r;

    .line 245
    .line 246
    if-eqz v6, :cond_c

    .line 247
    .line 248
    iget-object v12, v1, Lce/y0;->h:Lce/b1;

    .line 249
    .line 250
    iput-object v6, v12, Lce/b1;->t:Lce/r;

    .line 251
    .line 252
    :cond_c
    iget-object v6, v9, Lce/h0;->K:[B

    .line 253
    .line 254
    move-object/from16 v13, p1

    .line 255
    .line 256
    move-object/from16 v14, p2

    .line 257
    .line 258
    move-object v9, v6

    .line 259
    goto/16 :goto_f

    .line 260
    .line 261
    :cond_d
    throw v0

    .line 262
    :goto_a
    throw v0
    :try_end_b
    .catch Lce/r0; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 263
    :catch_5
    move-exception v0

    .line 264
    :try_start_c
    iget-object v5, v1, Lce/y0;->h:Lce/b1;

    .line 265
    .line 266
    invoke-virtual {v5, v4}, Lee/b;->b(Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 267
    .line 268
    .line 269
    :catch_6
    :try_start_d
    iput v3, v1, Lce/y0;->b:I

    .line 270
    .line 271
    throw v0

    .line 272
    :cond_e
    new-instance v0, Lce/r0;

    .line 273
    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string v6, "Unexpected session setup state: "

    .line 280
    .line 281
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    invoke-direct {v0, v5}, Lce/r0;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v0
    :try_end_d
    .catch Lce/r0; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 295
    :cond_f
    :try_start_e
    iget-object v6, v1, Lce/y0;->i:Lce/p;

    .line 296
    .line 297
    sget-object v10, Lce/p;->l:Lce/p;
    :try_end_e
    .catch Lce/r0; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 298
    .line 299
    if-eq v6, v10, :cond_10

    .line 300
    .line 301
    :try_start_f
    iget-object v6, v1, Lce/y0;->h:Lce/b1;

    .line 302
    .line 303
    const/high16 v10, -0x80000000

    .line 304
    .line 305
    invoke-virtual {v6, v10}, Lce/b1;->q(I)Z

    .line 306
    .line 307
    .line 308
    move-result v6
    :try_end_f
    .catch Lce/r0; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 309
    if-eqz v6, :cond_10

    .line 310
    .line 311
    move-object/from16 v13, p1

    .line 312
    .line 313
    move-object/from16 v14, p2

    .line 314
    .line 315
    const/16 v10, 0x14

    .line 316
    .line 317
    goto/16 :goto_f

    .line 318
    .line 319
    :cond_10
    :try_start_10
    new-instance v6, Lce/g0;

    .line 320
    .line 321
    iget-object v10, v1, Lce/y0;->i:Lce/p;

    .line 322
    .line 323
    move-object/from16 v13, p1

    .line 324
    .line 325
    invoke-direct {v6, v1, v13, v10}, Lce/g0;-><init>(Lce/y0;Lce/q;Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    new-instance v10, Lce/h0;

    .line 329
    .line 330
    move-object/from16 v14, p2

    .line 331
    .line 332
    invoke-direct {v10, v14}, Lce/h0;-><init>(Lce/q;)V

    .line 333
    .line 334
    .line 335
    iget-object v15, v1, Lce/y0;->h:Lce/b1;

    .line 336
    .line 337
    iget-object v8, v1, Lce/y0;->i:Lce/p;

    .line 338
    .line 339
    iget v4, v15, Lce/b1;->x:I

    .line 340
    .line 341
    and-int/2addr v4, v7

    .line 342
    if-eqz v4, :cond_11

    .line 343
    .line 344
    iget-object v4, v15, Lce/b1;->t:Lce/r;

    .line 345
    .line 346
    if-nez v4, :cond_11

    .line 347
    .line 348
    sget-object v4, Lce/p;->m:Lce/p;

    .line 349
    .line 350
    if-eq v8, v4, :cond_11

    .line 351
    .line 352
    invoke-virtual {v4, v8}, Lce/p;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-nez v4, :cond_11

    .line 357
    .line 358
    const/4 v4, 0x1

    .line 359
    goto :goto_b

    .line 360
    :cond_11
    const/4 v4, 0x0

    .line 361
    :goto_b
    if-eqz v4, :cond_12

    .line 362
    .line 363
    iget-object v4, v1, Lce/y0;->i:Lce/p;

    .line 364
    .line 365
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    iget-object v4, v1, Lce/y0;->i:Lce/p;

    .line 369
    .line 370
    iget-object v8, v1, Lce/y0;->h:Lce/b1;

    .line 371
    .line 372
    iget-object v8, v8, Lce/b1;->w:Lce/a1;

    .line 373
    .line 374
    iget-object v8, v8, Lce/a1;->p:[B

    .line 375
    .line 376
    invoke-virtual {v4, v8}, Lce/p;->g([B)[B

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    new-instance v8, Lce/r;

    .line 381
    .line 382
    invoke-direct {v8, v4, v3}, Lce/r;-><init>([BZ)V

    .line 383
    .line 384
    .line 385
    iput-object v8, v6, Lce/q;->y:Lce/r;

    .line 386
    .line 387
    goto :goto_c

    .line 388
    :catch_7
    move-exception v0

    .line 389
    const/4 v4, 0x1

    .line 390
    goto :goto_11

    .line 391
    :cond_12
    :goto_c
    iget-object v4, v1, Lce/y0;->i:Lce/p;

    .line 392
    .line 393
    iput-object v4, v6, Lce/q;->w:Lce/p;
    :try_end_10
    .catch Lce/r0; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 394
    .line 395
    :try_start_11
    iget-object v4, v1, Lce/y0;->h:Lce/b1;

    .line 396
    .line 397
    invoke-virtual {v4, v6, v10}, Lce/b1;->s(Lce/q;Lce/q;)V
    :try_end_11
    .catch Lce/s; {:try_start_11 .. :try_end_11} :catch_9
    .catch Lce/r0; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 398
    .line 399
    .line 400
    goto :goto_d

    .line 401
    :catch_8
    move-exception v0

    .line 402
    goto :goto_d

    .line 403
    :catch_9
    move-exception v0

    .line 404
    goto :goto_10

    .line 405
    :goto_d
    :try_start_12
    iget-boolean v4, v10, Lce/h0;->I:Z

    .line 406
    .line 407
    if-eqz v4, :cond_14

    .line 408
    .line 409
    const-string v4, "GUEST"

    .line 410
    .line 411
    iget-object v8, v1, Lce/y0;->i:Lce/p;

    .line 412
    .line 413
    iget-object v8, v8, Lce/p;->b:Ljava/lang/String;

    .line 414
    .line 415
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    if-nez v4, :cond_14

    .line 420
    .line 421
    iget-object v4, v1, Lce/y0;->h:Lce/b1;

    .line 422
    .line 423
    iget-object v4, v4, Lce/b1;->w:Lce/a1;

    .line 424
    .line 425
    iget v4, v4, Lce/a1;->g:I

    .line 426
    .line 427
    if-eqz v4, :cond_14

    .line 428
    .line 429
    iget-object v4, v1, Lce/y0;->i:Lce/p;

    .line 430
    .line 431
    sget-object v8, Lce/p;->l:Lce/p;

    .line 432
    .line 433
    if-ne v4, v8, :cond_13

    .line 434
    .line 435
    goto :goto_e

    .line 436
    :cond_13
    new-instance v0, Lce/s;

    .line 437
    .line 438
    invoke-direct {v0, v12}, Lce/s;-><init>(I)V

    .line 439
    .line 440
    .line 441
    throw v0

    .line 442
    :cond_14
    :goto_e
    if-nez v0, :cond_17

    .line 443
    .line 444
    iget v4, v10, Lce/q;->l:I

    .line 445
    .line 446
    iput v4, v1, Lce/y0;->b:I

    .line 447
    .line 448
    iget-object v4, v6, Lce/q;->y:Lce/r;

    .line 449
    .line 450
    if-eqz v4, :cond_15

    .line 451
    .line 452
    iget-object v6, v1, Lce/y0;->h:Lce/b1;

    .line 453
    .line 454
    iput-object v4, v6, Lce/b1;->t:Lce/r;

    .line 455
    .line 456
    :cond_15
    iput v5, v1, Lce/y0;->a:I
    :try_end_12
    .catch Lce/r0; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 457
    .line 458
    goto/16 :goto_5

    .line 459
    .line 460
    :goto_f
    if-nez v10, :cond_16

    .line 461
    .line 462
    :try_start_13
    iget-object v0, v1, Lce/y0;->h:Lce/b1;

    .line 463
    .line 464
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 465
    .line 466
    .line 467
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 468
    return-void

    .line 469
    :cond_16
    const/4 v4, 0x1

    .line 470
    const/16 v6, 0xa

    .line 471
    .line 472
    const/4 v8, 0x0

    .line 473
    goto/16 :goto_3

    .line 474
    .line 475
    :cond_17
    :try_start_14
    throw v0

    .line 476
    :goto_10
    throw v0
    :try_end_14
    .catch Lce/r0; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 477
    :goto_11
    :try_start_15
    invoke-virtual {v1, v4}, Lce/y0;->b(Z)V

    .line 478
    .line 479
    .line 480
    iput v3, v1, Lce/y0;->a:I

    .line 481
    .line 482
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 483
    :goto_12
    :try_start_16
    iget-object v3, v1, Lce/y0;->h:Lce/b1;

    .line 484
    .line 485
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 486
    .line 487
    .line 488
    throw v0

    .line 489
    :goto_13
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 490
    goto :goto_15

    .line 491
    :goto_14
    throw v0

    .line 492
    :goto_15
    goto :goto_14
.end method

.method public final declared-synchronized e()Lce/b1;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lce/y0;->h:Lce/b1;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lce/y0;->d:Lwd/c;

    .line 7
    .line 8
    iget v1, p0, Lce/y0;->e:I

    .line 9
    .line 10
    iget-object v2, p0, Lce/y0;->g:Ljava/net/InetAddress;

    .line 11
    .line 12
    iget v3, p0, Lce/y0;->f:I

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3}, Lce/b1;->p(Lwd/c;ILjava/net/InetAddress;I)Lce/b1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lce/y0;->h:Lce/b1;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lce/y0;->h:Lce/b1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SmbSession[accountName="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lce/y0;->i:Lce/p;

    .line 9
    .line 10
    iget-object v1, v1, Lce/p;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ",primaryDomain="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lce/y0;->i:Lce/p;

    .line 21
    .line 22
    iget-object v1, v1, Lce/p;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ",uid="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lce/y0;->b:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ",connectionState="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lce/y0;->a:I

    .line 43
    .line 44
    const-string v2, "]"

    .line 45
    .line 46
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method
