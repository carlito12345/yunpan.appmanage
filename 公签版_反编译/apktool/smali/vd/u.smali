.class public Lvd/u;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field public static final m:Lorg/slf4j/Logger;


# instance fields
.field public a:Lvd/t;

.field public b:J

.field public c:I

.field public d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public h:[B

.field public final i:Lvd/s;

.field public j:Z

.field public final k:Z

.field public final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lvd/u;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvd/u;->m:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lvd/s;Z)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    iput-object v1, p0, Lvd/u;->h:[B

    .line 8
    .line 9
    iput-object p1, p0, Lvd/u;->i:Lvd/s;

    .line 10
    .line 11
    iput-boolean p2, p0, Lvd/u;->k:Z

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    iput p2, p0, Lvd/u;->e:I

    .line 15
    .line 16
    iput v0, p0, Lvd/u;->f:I

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    iput v1, p0, Lvd/u;->g:I

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p1}, Lvd/s;->A()Lvd/g0;

    .line 22
    .line 23
    .line 24
    move-result-object v1
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    invoke-virtual {v1}, Lvd/g0;->O()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput-boolean v2, p0, Lvd/u;->l:Z

    .line 30
    .line 31
    invoke-virtual {p1}, Lvd/s;->J()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/16 v2, 0x10

    .line 36
    .line 37
    if-eq p1, v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lvd/u;->r()Lvd/t;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Lvd/t;->M()V

    .line 46
    .line 47
    .line 48
    :cond_0
    iput p2, p0, Lvd/u;->e:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lvd/u;->A(Lvd/g0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    :try_start_2
    invoke-virtual {v1}, Lvd/g0;->close()V
    :try_end_2
    .catch Lvc/c; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catch_0
    move-exception p1

    .line 61
    goto :goto_3

    .line 62
    :goto_1
    if-eqz v1, :cond_2

    .line 63
    .line 64
    :try_start_3
    invoke-virtual {v1}, Lvd/g0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception v1

    .line 69
    :try_start_4
    const-class v2, Ljava/lang/Throwable;
    :try_end_4
    .catch Lvc/c; {:try_start_4 .. :try_end_4} :catch_0

    .line 70
    .line 71
    :try_start_5
    const-string v3, "addSuppressed"

    .line 72
    .line 73
    new-array v4, v0, [Ljava/lang/Class;

    .line 74
    .line 75
    aput-object v2, v4, p2

    .line 76
    .line 77
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    .line 83
    aput-object v1, v0, p2

    .line 84
    .line 85
    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 86
    .line 87
    .line 88
    :catch_1
    :cond_2
    :goto_2
    :try_start_6
    throw p1
    :try_end_6
    .catch Lvc/c; {:try_start_6 .. :try_end_6} :catch_0

    .line 89
    :goto_3
    invoke-static {p1}, Lvd/r;->c(Lvc/c;)Lvd/r;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    throw p1
.end method

.method public static K(Lvd/r;)Ljava/io/IOException;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lhe/f;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object p0, v0

    .line 10
    check-cast p0, Lhe/f;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    instance-of v1, v0, Ljava/lang/InterruptedException;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    new-instance p0, Ljava/io/InterruptedIOException;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 30
    .line 31
    .line 32
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final A(Lvd/g0;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, Lvd/u;->l:Z

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lvd/g0;->K()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lvd/u;->c:I

    .line 12
    .line 13
    invoke-virtual {p1}, Lvd/g0;->K()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lvd/u;->d:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p1}, Lvd/g0;->K()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    add-int/lit8 v2, v2, -0x46

    .line 25
    .line 26
    const-string v3, "addSuppressed"

    .line 27
    .line 28
    const-class v4, Ljava/lang/Throwable;

    .line 29
    .line 30
    iget-object v5, p1, Lvd/g0;->b:Lvd/e0;

    .line 31
    .line 32
    invoke-virtual {v5}, Lvd/e0;->i()Lvd/z;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    :try_start_0
    iget-object v6, v5, Lvd/z;->d:Lvd/b0;

    .line 37
    .line 38
    invoke-virtual {v6}, Lvd/b0;->b0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 39
    .line 40
    .line 41
    :try_start_1
    invoke-virtual {v6}, Lvd/b0;->l0()Lad/k;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-interface {v7}, Lad/k;->N()I

    .line 46
    .line 47
    .line 48
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    invoke-virtual {v6}, Lhe/e;->Y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Lvd/z;->O()V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v7, v7, -0x46

    .line 56
    .line 57
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, p0, Lvd/u;->c:I

    .line 62
    .line 63
    const/16 v0, 0x4000

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lvd/g0;->N(I)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    sget-object v2, Lvd/u;->m:Lorg/slf4j/Logger;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iput-boolean v1, p0, Lvd/u;->j:Z

    .line 74
    .line 75
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lwc/a;

    .line 80
    .line 81
    iget v0, v0, Lwc/a;->I:I

    .line 82
    .line 83
    add-int/lit8 v0, v0, -0x46

    .line 84
    .line 85
    invoke-virtual {p1}, Lvd/g0;->A()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_1

    .line 90
    .line 91
    const p1, 0xffb9

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    const p1, 0xffffb9

    .line 96
    .line 97
    .line 98
    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iput p1, p0, Lvd/u;->d:I

    .line 103
    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v0, "Enabling LARGE_READX with "

    .line 107
    .line 108
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget v0, p0, Lvd/u;->d:I

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const-string p1, "LARGE_READX disabled"

    .line 125
    .line 126
    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget p1, p0, Lvd/u;->c:I

    .line 130
    .line 131
    iput p1, p0, Lvd/u;->d:I

    .line 132
    .line 133
    :goto_1
    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-eqz p1, :cond_3

    .line 138
    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v0, "Negotiated file read size is "

    .line 142
    .line 143
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget v0, p0, Lvd/u;->d:I

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    return-void

    .line 159
    :catchall_0
    move-exception p1

    .line 160
    :try_start_3
    invoke-virtual {v6}, Lhe/e;->Y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :catchall_1
    move-exception v2

    .line 165
    :try_start_4
    new-array v6, v1, [Ljava/lang/Class;

    .line 166
    .line 167
    aput-object v4, v6, v0

    .line 168
    .line 169
    invoke-virtual {v4, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    new-array v7, v1, [Ljava/lang/Object;

    .line 174
    .line 175
    aput-object v2, v7, v0

    .line 176
    .line 177
    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 178
    .line 179
    .line 180
    :catch_0
    :goto_2
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 181
    :catchall_2
    move-exception p1

    .line 182
    if-eqz v5, :cond_4

    .line 183
    .line 184
    :try_start_6
    invoke-virtual {v5}, Lvd/z;->O()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :catchall_3
    move-exception v2

    .line 189
    :try_start_7
    new-array v5, v1, [Ljava/lang/Class;

    .line 190
    .line 191
    aput-object v4, v5, v0

    .line 192
    .line 193
    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    new-array v1, v1, [Ljava/lang/Object;

    .line 198
    .line 199
    aput-object v2, v1, v0

    .line 200
    .line 201
    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 202
    .line 203
    .line 204
    :catch_1
    :cond_4
    :goto_3
    throw p1
.end method

.method public final J(II[B)I
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v7, "addSuppressed"

    .line 12
    .line 13
    const-class v8, Ljava/lang/Throwable;

    .line 14
    .line 15
    sget-object v9, Lvd/u;->m:Lorg/slf4j/Logger;

    .line 16
    .line 17
    const-string v10, "read: fid="

    .line 18
    .line 19
    if-gtz v2, :cond_0

    .line 20
    .line 21
    return v6

    .line 22
    :cond_0
    iget-wide v11, v1, Lvd/u;->b:J

    .line 23
    .line 24
    iget-object v13, v1, Lvd/u;->h:[B

    .line 25
    .line 26
    if-eqz v13, :cond_12

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Lvd/u;->r()Lvd/t;

    .line 29
    .line 30
    .line 31
    move-result-object v13

    .line 32
    :try_start_0
    iget-object v14, v13, Lvd/t;->f:Lvd/g0;

    .line 33
    .line 34
    invoke-virtual {v14}, Lvd/g0;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 35
    .line 36
    .line 37
    :try_start_1
    invoke-interface {v9}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 41
    if-eqz v15, :cond_1

    .line 42
    .line 43
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v10, ",off="

    .line 52
    .line 53
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v10, ",len="

    .line 60
    .line 61
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    move-object v2, v0

    .line 77
    move-object/from16 v22, v7

    .line 78
    .line 79
    move-object/from16 v23, v8

    .line 80
    .line 81
    goto/16 :goto_11

    .line 82
    .line 83
    :cond_1
    :goto_0
    :try_start_3
    new-instance v10, Lfd/p;

    .line 84
    .line 85
    invoke-virtual {v14}, Lvd/g0;->J()Lvc/f;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    invoke-direct {v10, v15, v3, v0}, Lfd/p;-><init>(Lvc/f;[BI)V

    .line 90
    .line 91
    .line 92
    iget-object v15, v1, Lvd/u;->i:Lvd/s;

    .line 93
    .line 94
    invoke-virtual {v15}, Lvd/s;->J()I

    .line 95
    .line 96
    .line 97
    move-result v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 98
    if-ne v15, v5, :cond_2

    .line 99
    .line 100
    :try_start_4
    iget v6, v1, Lvd/u;->d:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    :try_start_5
    iget v6, v1, Lvd/u;->c:I

    .line 104
    .line 105
    :goto_1
    move v5, v2

    .line 106
    move v2, v0

    .line 107
    :goto_2
    if-le v5, v6, :cond_3

    .line 108
    .line 109
    move v4, v6

    .line 110
    goto :goto_3

    .line 111
    :cond_3
    move v4, v5

    .line 112
    :goto_3
    invoke-interface {v9}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 121
    .line 122
    .line 123
    move-object/from16 v22, v7

    .line 124
    .line 125
    :try_start_6
    const-string v7, "read: len="

    .line 126
    .line 127
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v7, ",r="

    .line 134
    .line 135
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v7, ",fp="

    .line 142
    .line 143
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 144
    .line 145
    .line 146
    move-object/from16 v23, v8

    .line 147
    .line 148
    :try_start_7
    iget-wide v7, v1, Lvd/u;->b:J

    .line 149
    .line 150
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v7, ",b.length="

    .line 154
    .line 155
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    array-length v7, v3

    .line 159
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-interface {v9, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 167
    .line 168
    .line 169
    goto :goto_6

    .line 170
    :catchall_1
    move-exception v0

    .line 171
    :goto_4
    move-object v2, v0

    .line 172
    goto/16 :goto_11

    .line 173
    .line 174
    :catchall_2
    move-exception v0

    .line 175
    :goto_5
    move-object/from16 v23, v8

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :catchall_3
    move-exception v0

    .line 179
    move-object/from16 v22, v7

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_4
    move-object/from16 v22, v7

    .line 183
    .line 184
    move-object/from16 v23, v8

    .line 185
    .line 186
    :goto_6
    :try_start_8
    invoke-virtual {v14}, Lvd/g0;->O()Z

    .line 187
    .line 188
    .line 189
    move-result v0
    :try_end_8
    .catch Lvd/r; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 190
    sget-object v8, Lvd/l;->b:Lvd/l;

    .line 191
    .line 192
    const-wide/16 v24, -0x1

    .line 193
    .line 194
    const-wide/16 v26, 0x0

    .line 195
    .line 196
    if-eqz v0, :cond_9

    .line 197
    .line 198
    :try_start_9
    new-instance v0, Lld/a;

    .line 199
    .line 200
    invoke-virtual {v14}, Lvd/g0;->J()Lvc/f;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    move/from16 v28, v6

    .line 205
    .line 206
    invoke-virtual {v13}, Lvd/t;->K()[B

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    invoke-direct {v0, v7, v6, v3, v2}, Lld/a;-><init>(Lvc/f;[B[BI)V

    .line 211
    .line 212
    .line 213
    const/16 v6, 0x10

    .line 214
    .line 215
    if-ne v15, v6, :cond_5

    .line 216
    .line 217
    move-wide/from16 v6, v26

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_5
    iget-wide v6, v1, Lvd/u;->b:J

    .line 221
    .line 222
    :goto_7
    iput-wide v6, v0, Lld/a;->D:J

    .line 223
    .line 224
    iput v4, v0, Lld/a;->B:I

    .line 225
    .line 226
    sub-int v6, v5, v4

    .line 227
    .line 228
    iput v6, v0, Lld/a;->E:I
    :try_end_9
    .catch Lvd/r; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 229
    .line 230
    const/4 v6, 0x1

    .line 231
    :try_start_a
    new-array v7, v6, [Lvd/l;

    .line 232
    .line 233
    const/4 v6, 0x0

    .line 234
    aput-object v8, v7, v6

    .line 235
    .line 236
    const/4 v6, 0x0

    .line 237
    invoke-virtual {v14, v0, v6, v7}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    check-cast v0, Lld/b;

    .line 242
    .line 243
    iget v0, v0, Lld/b;->D:I
    :try_end_a
    .catch Lvd/r; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 244
    .line 245
    goto :goto_8

    .line 246
    :catch_0
    move-exception v0

    .line 247
    :try_start_b
    iget v6, v0, Lvd/r;->a:I

    .line 248
    .line 249
    const v7, -0x3fffffef    # -2.000004f

    .line 250
    .line 251
    .line 252
    if-ne v6, v7, :cond_8

    .line 253
    .line 254
    const-string v6, "Reached end of file"

    .line 255
    .line 256
    invoke-interface {v9, v6, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .line 258
    .line 259
    const/4 v0, -0x1

    .line 260
    :goto_8
    if-gtz v0, :cond_7

    .line 261
    .line 262
    iget-wide v2, v1, Lvd/u;->b:J
    :try_end_b
    .catch Lvd/r; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 263
    .line 264
    sub-long/2addr v2, v11

    .line 265
    cmp-long v0, v2, v26

    .line 266
    .line 267
    if-lez v0, :cond_6

    .line 268
    .line 269
    goto :goto_9

    .line 270
    :cond_6
    move-wide/from16 v2, v24

    .line 271
    .line 272
    :goto_9
    long-to-int v0, v2

    .line 273
    :try_start_c
    invoke-virtual {v14}, Lvd/g0;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 274
    .line 275
    .line 276
    invoke-virtual {v13}, Lvd/t;->M()V

    .line 277
    .line 278
    .line 279
    return v0

    .line 280
    :catchall_4
    move-exception v0

    .line 281
    move-object v2, v0

    .line 282
    move-object/from16 v7, v22

    .line 283
    .line 284
    move-object/from16 v6, v23

    .line 285
    .line 286
    goto/16 :goto_14

    .line 287
    .line 288
    :catch_1
    move-exception v0

    .line 289
    const/16 v2, 0x10

    .line 290
    .line 291
    goto/16 :goto_10

    .line 292
    .line 293
    :cond_7
    :try_start_d
    iget-wide v6, v1, Lvd/u;->b:J

    .line 294
    .line 295
    move-object/from16 v29, v9

    .line 296
    .line 297
    int-to-long v8, v0

    .line 298
    add-long/2addr v6, v8

    .line 299
    iput-wide v6, v1, Lvd/u;->b:J

    .line 300
    .line 301
    add-int/2addr v2, v0

    .line 302
    sub-int/2addr v5, v0

    .line 303
    :goto_a
    move/from16 v6, v28

    .line 304
    .line 305
    goto :goto_e

    .line 306
    :cond_8
    throw v0

    .line 307
    :cond_9
    move/from16 v28, v6

    .line 308
    .line 309
    move-object/from16 v29, v9

    .line 310
    .line 311
    new-instance v0, Lfd/o;

    .line 312
    .line 313
    invoke-virtual {v14}, Lvd/g0;->J()Lvc/f;

    .line 314
    .line 315
    .line 316
    move-result-object v17

    .line 317
    invoke-virtual {v13}, Lvd/t;->J()I

    .line 318
    .line 319
    .line 320
    move-result v18

    .line 321
    iget-wide v6, v1, Lvd/u;->b:J

    .line 322
    .line 323
    move-object/from16 v16, v0

    .line 324
    .line 325
    move-wide/from16 v19, v6

    .line 326
    .line 327
    move/from16 v21, v4

    .line 328
    .line 329
    invoke-direct/range {v16 .. v21}, Lfd/o;-><init>(Lvc/f;IJI)V

    .line 330
    .line 331
    .line 332
    const/16 v6, 0x10

    .line 333
    .line 334
    if-ne v15, v6, :cond_b

    .line 335
    .line 336
    const/16 v6, 0x400

    .line 337
    .line 338
    iput v6, v0, Lfd/o;->P:I

    .line 339
    .line 340
    iput v6, v0, Lfd/o;->O:I

    .line 341
    .line 342
    iput v6, v0, Lfd/o;->R:I

    .line 343
    .line 344
    :cond_a
    :goto_b
    const/4 v6, 0x1

    .line 345
    goto :goto_c

    .line 346
    :cond_b
    iget-boolean v6, v1, Lvd/u;->j:Z

    .line 347
    .line 348
    if-eqz v6, :cond_a

    .line 349
    .line 350
    const v6, 0xffff

    .line 351
    .line 352
    .line 353
    and-int v7, v4, v6

    .line 354
    .line 355
    iput v7, v0, Lfd/o;->O:I

    .line 356
    .line 357
    const/16 v7, 0x10

    .line 358
    .line 359
    shr-int/lit8 v9, v4, 0x10

    .line 360
    .line 361
    and-int/2addr v6, v9

    .line 362
    iput v6, v0, Lfd/o;->N:I

    .line 363
    .line 364
    goto :goto_b

    .line 365
    :goto_c
    new-array v7, v6, [Lvd/l;

    .line 366
    .line 367
    const/4 v6, 0x0

    .line 368
    aput-object v8, v7, v6

    .line 369
    .line 370
    invoke-virtual {v14, v0, v10, v7}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    .line 371
    .line 372
    .line 373
    iget v0, v10, Lfd/p;->O:I
    :try_end_d
    .catch Lvd/r; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 374
    .line 375
    if-gtz v0, :cond_d

    .line 376
    .line 377
    :try_start_e
    iget-wide v2, v1, Lvd/u;->b:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 378
    .line 379
    sub-long/2addr v2, v11

    .line 380
    cmp-long v0, v2, v26

    .line 381
    .line 382
    if-lez v0, :cond_c

    .line 383
    .line 384
    goto :goto_d

    .line 385
    :cond_c
    move-wide/from16 v2, v24

    .line 386
    .line 387
    :goto_d
    long-to-int v0, v2

    .line 388
    :try_start_f
    invoke-virtual {v14}, Lvd/g0;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 389
    .line 390
    .line 391
    invoke-virtual {v13}, Lvd/t;->M()V

    .line 392
    .line 393
    .line 394
    return v0

    .line 395
    :cond_d
    :try_start_10
    iget-wide v6, v1, Lvd/u;->b:J

    .line 396
    .line 397
    int-to-long v8, v0

    .line 398
    add-long/2addr v6, v8

    .line 399
    iput-wide v6, v1, Lvd/u;->b:J

    .line 400
    .line 401
    sub-int/2addr v5, v0

    .line 402
    iget v6, v10, Lfd/p;->M:I

    .line 403
    .line 404
    add-int/2addr v6, v0

    .line 405
    iput v6, v10, Lfd/p;->M:I

    .line 406
    .line 407
    goto :goto_a

    .line 408
    :goto_e
    if-le v5, v6, :cond_f

    .line 409
    .line 410
    if-eq v0, v4, :cond_e

    .line 411
    .line 412
    goto :goto_f

    .line 413
    :cond_e
    move-object/from16 v7, v22

    .line 414
    .line 415
    move-object/from16 v8, v23

    .line 416
    .line 417
    move-object/from16 v9, v29

    .line 418
    .line 419
    goto/16 :goto_2

    .line 420
    .line 421
    :cond_f
    :goto_f
    iget-wide v2, v1, Lvd/u;->b:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 422
    .line 423
    sub-long/2addr v2, v11

    .line 424
    long-to-int v0, v2

    .line 425
    :try_start_11
    invoke-virtual {v14}, Lvd/g0;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 426
    .line 427
    .line 428
    invoke-virtual {v13}, Lvd/t;->M()V

    .line 429
    .line 430
    .line 431
    return v0

    .line 432
    :goto_10
    if-ne v15, v2, :cond_10

    .line 433
    .line 434
    :try_start_12
    iget v2, v0, Lvd/r;->a:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 435
    .line 436
    const v3, -0x3ffffeb5    # -2.000079f

    .line 437
    .line 438
    .line 439
    if-ne v2, v3, :cond_10

    .line 440
    .line 441
    :try_start_13
    invoke-virtual {v14}, Lvd/g0;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 442
    .line 443
    .line 444
    invoke-virtual {v13}, Lvd/t;->M()V

    .line 445
    .line 446
    .line 447
    const/4 v2, -0x1

    .line 448
    return v2

    .line 449
    :cond_10
    :try_start_14
    invoke-static {v0}, Lvd/u;->K(Lvd/r;)Ljava/io/IOException;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 454
    :goto_11
    :try_start_15
    invoke-virtual {v14}, Lvd/g0;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 455
    .line 456
    .line 457
    :catch_2
    move-object/from16 v7, v22

    .line 458
    .line 459
    move-object/from16 v6, v23

    .line 460
    .line 461
    goto :goto_13

    .line 462
    :catchall_5
    move-exception v0

    .line 463
    move-object v3, v0

    .line 464
    const/4 v4, 0x1

    .line 465
    :try_start_16
    new-array v0, v4, [Ljava/lang/Class;

    .line 466
    .line 467
    const/4 v5, 0x0

    .line 468
    aput-object v23, v0, v5
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 469
    .line 470
    move-object/from16 v7, v22

    .line 471
    .line 472
    move-object/from16 v6, v23

    .line 473
    .line 474
    :try_start_17
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    new-array v8, v4, [Ljava/lang/Object;

    .line 479
    .line 480
    aput-object v3, v8, v5

    .line 481
    .line 482
    invoke-virtual {v0, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 483
    .line 484
    .line 485
    goto :goto_13

    .line 486
    :catchall_6
    move-exception v0

    .line 487
    move-object/from16 v7, v22

    .line 488
    .line 489
    move-object/from16 v6, v23

    .line 490
    .line 491
    :goto_12
    move-object v2, v0

    .line 492
    goto :goto_14

    .line 493
    :catch_3
    :goto_13
    :try_start_18
    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 494
    :catchall_7
    move-exception v0

    .line 495
    goto :goto_12

    .line 496
    :catchall_8
    move-exception v0

    .line 497
    move-object v6, v8

    .line 498
    goto :goto_12

    .line 499
    :goto_14
    if-eqz v13, :cond_11

    .line 500
    .line 501
    :try_start_19
    invoke-virtual {v13}, Lvd/t;->M()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    .line 502
    .line 503
    .line 504
    goto :goto_15

    .line 505
    :catchall_9
    move-exception v0

    .line 506
    move-object v3, v0

    .line 507
    const/4 v4, 0x1

    .line 508
    :try_start_1a
    new-array v0, v4, [Ljava/lang/Class;

    .line 509
    .line 510
    const/4 v5, 0x0

    .line 511
    aput-object v6, v0, v5

    .line 512
    .line 513
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    new-array v4, v4, [Ljava/lang/Object;

    .line 518
    .line 519
    aput-object v3, v4, v5

    .line 520
    .line 521
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4

    .line 522
    .line 523
    .line 524
    :catch_4
    :cond_11
    :goto_15
    throw v2

    .line 525
    :cond_12
    new-instance v0, Ljava/io/IOException;

    .line 526
    .line 527
    const-string v2, "Bad file descriptor"

    .line 528
    .line 529
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    goto :goto_17

    .line 533
    :goto_16
    throw v0

    .line 534
    :goto_17
    goto :goto_16
.end method

.method public available()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lvd/u;->i:Lvd/s;

    .line 2
    .line 3
    iget-boolean v1, p0, Lvd/u;->k:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lvd/u;->a:Lvd/t;

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    invoke-virtual {v3}, Lvd/t;->M()V
    :try_end_0
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-object v2, p0, Lvd/u;->h:[B

    .line 14
    .line 15
    iput-object v2, p0, Lvd/u;->a:Lvd/t;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lvd/s;->close()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void

    .line 23
    :catchall_0
    move-exception v3

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v3

    .line 26
    :try_start_1
    invoke-static {v3}, Lvd/u;->K(Lvd/r;)Ljava/io/IOException;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :goto_0
    iput-object v2, p0, Lvd/u;->h:[B

    .line 32
    .line 33
    iput-object v2, p0, Lvd/u;->a:Lvd/t;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lvd/s;->close()V

    .line 38
    .line 39
    .line 40
    :cond_2
    throw v3
.end method

.method public declared-synchronized r()Lvd/t;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lvd/u;->a:Lvd/t;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lvd/t;->L()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lvd/u;->a:Lvd/t;

    .line 14
    .line 15
    invoke-virtual {v0}, Lvd/t;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lvd/u;->i:Lvd/s;

    .line 23
    .line 24
    instance-of v0, v1, Lvd/w;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    move-object v0, v1

    .line 29
    check-cast v0, Lvd/w;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget v5, p0, Lvd/u;->g:I

    .line 35
    .line 36
    iget-object v0, v1, Lvd/s;->g:Lvd/y;

    .line 37
    .line 38
    invoke-virtual {v0}, Lvd/y;->f()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    const/16 v3, 0x20

    .line 45
    .line 46
    invoke-virtual/range {v1 .. v6}, Lvd/s;->M(Ljava/lang/String;IIII)Lvd/t;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lvd/u;->a:Lvd/t;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget v3, p0, Lvd/u;->e:I

    .line 54
    .line 55
    iget v4, p0, Lvd/u;->f:I

    .line 56
    .line 57
    iget v5, p0, Lvd/u;->g:I

    .line 58
    .line 59
    iget-object v0, v1, Lvd/s;->g:Lvd/y;

    .line 60
    .line 61
    invoke-virtual {v0}, Lvd/y;->f()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const/4 v6, 0x0

    .line 66
    invoke-virtual/range {v1 .. v6}, Lvd/s;->M(Ljava/lang/String;IIII)Lvd/t;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lvd/t;->r()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lvd/u;->a:Lvd/t;

    .line 74
    .line 75
    :goto_1
    iget-object v0, p0, Lvd/u;->a:Lvd/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return-object v0

    .line 79
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    throw v0
.end method

.method public final read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lvd/u;->h:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0, v1, v2, v0}, Lvd/u;->J(II[B)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v0, p0, Lvd/u;->h:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([B)I
    .locals 2

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v0, p1}, Lvd/u;->J(II[B)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 0

    .line 6
    invoke-virtual {p0, p2, p3, p1}, Lvd/u;->J(II[B)I

    move-result p1

    return p1
.end method

.method public final skip(J)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lvd/u;->b:J

    .line 8
    .line 9
    add-long/2addr v0, p1

    .line 10
    iput-wide v0, p0, Lvd/u;->b:J

    .line 11
    .line 12
    return-wide p1

    .line 13
    :cond_0
    return-wide v0
.end method
