.class public final Lvd/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/DataOutput;
.implements Ljava/io/DataInput;
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final l:Lorg/slf4j/Logger;


# instance fields
.field public final a:Lvd/s;

.field public b:J

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:[B

.field public final i:Lfd/z;

.field public final j:Z

.field public k:Lvd/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lvd/x;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvd/x;->l:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lvd/s;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput v1, p0, Lvd/x;->d:I

    .line 7
    .line 8
    iput v1, p0, Lvd/x;->g:I

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    new-array v2, v2, [B

    .line 13
    .line 14
    iput-object v2, p0, Lvd/x;->h:[B

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iput-object v2, p0, Lvd/x;->i:Lfd/z;

    .line 18
    .line 19
    iput-object p1, p0, Lvd/x;->a:Lvd/s;

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p1}, Lvd/s;->A()Lvd/g0;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    const/16 v2, 0x11

    .line 26
    .line 27
    :try_start_1
    iput v2, p0, Lvd/x;->c:I

    .line 28
    .line 29
    iput v0, p0, Lvd/x;->d:I

    .line 30
    .line 31
    invoke-virtual {p0}, Lvd/x;->r()Lvd/t;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lvd/t;->M()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lvd/g0;->K()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    add-int/lit8 v2, v2, -0x46

    .line 43
    .line 44
    iput v2, p0, Lvd/x;->e:I

    .line 45
    .line 46
    invoke-virtual {p1}, Lvd/g0;->L()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-int/lit8 v2, v2, -0x46

    .line 51
    .line 52
    iput v2, p0, Lvd/x;->f:I

    .line 53
    .line 54
    const/16 v2, 0x4000

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Lvd/g0;->N(I)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const v3, 0xffb9

    .line 61
    .line 62
    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    iput-boolean v0, p0, Lvd/x;->j:Z

    .line 66
    .line 67
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lwc/a;

    .line 72
    .line 73
    iget v2, v2, Lwc/a;->I:I

    .line 74
    .line 75
    add-int/lit8 v2, v2, -0x46

    .line 76
    .line 77
    invoke-virtual {p1}, Lvd/g0;->A()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_0

    .line 82
    .line 83
    const v4, 0xffb9

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_0
    const v4, 0xffffb9

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    iput v2, p0, Lvd/x;->e:I

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catchall_0
    move-exception v2

    .line 98
    goto :goto_2

    .line 99
    :cond_1
    :goto_1
    const v2, 0x8000

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v2}, Lvd/g0;->N(I)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-virtual {p1}, Lvd/g0;->A()Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_2

    .line 113
    .line 114
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Lwc/a;

    .line 119
    .line 120
    iget v2, v2, Lwc/a;->H:I

    .line 121
    .line 122
    add-int/lit8 v2, v2, -0x46

    .line 123
    .line 124
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    iput v2, p0, Lvd/x;->f:I

    .line 129
    .line 130
    :cond_2
    const-wide/16 v2, 0x0

    .line 131
    .line 132
    iput-wide v2, p0, Lvd/x;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .line 134
    :try_start_2
    invoke-virtual {p1}, Lvd/g0;->close()V
    :try_end_2
    .catch Lvc/c; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :catch_0
    move-exception p1

    .line 139
    goto :goto_4

    .line 140
    :goto_2
    if-eqz p1, :cond_3

    .line 141
    .line 142
    :try_start_3
    invoke-virtual {p1}, Lvd/g0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :catchall_1
    move-exception p1

    .line 147
    :try_start_4
    const-class v3, Ljava/lang/Throwable;
    :try_end_4
    .catch Lvc/c; {:try_start_4 .. :try_end_4} :catch_0

    .line 148
    .line 149
    :try_start_5
    const-string v4, "addSuppressed"

    .line 150
    .line 151
    new-array v5, v0, [Ljava/lang/Class;

    .line 152
    .line 153
    aput-object v3, v5, v1

    .line 154
    .line 155
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    new-array v0, v0, [Ljava/lang/Object;

    .line 160
    .line 161
    aput-object p1, v0, v1

    .line 162
    .line 163
    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 164
    .line 165
    .line 166
    :catch_1
    :cond_3
    :goto_3
    :try_start_6
    throw v2
    :try_end_6
    .catch Lvc/c; {:try_start_6 .. :try_end_6} :catch_0

    .line 167
    :goto_4
    invoke-static {p1}, Lvd/r;->c(Lvc/c;)Lvd/r;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    throw p1
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    :try_start_0
    iget-object v2, p0, Lvd/x;->k:Lvd/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    :try_start_1
    invoke-virtual {v2}, Lvd/t;->M()V
    :try_end_1
    .catch Lvc/c; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_2
    iput-object v2, p0, Lvd/x;->k:Lvd/t;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v2

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    move-exception v2

    .line 18
    invoke-static {v2}, Lvd/r;->c(Lvc/c;)Lvd/r;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    :cond_0
    :goto_0
    :try_start_3
    iget-object v2, p0, Lvd/x;->a:Lvd/s;

    .line 24
    .line 25
    iput-wide v0, v2, Lvd/s;->b:J

    .line 26
    .line 27
    iput-wide v0, v2, Lvd/s;->d:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_1
    move-exception v0

    .line 32
    goto :goto_2

    .line 33
    :goto_1
    :try_start_4
    iget-object v3, p0, Lvd/x;->a:Lvd/s;

    .line 34
    .line 35
    iput-wide v0, v3, Lvd/s;->b:J

    .line 36
    .line 37
    iput-wide v0, v3, Lvd/s;->d:J

    .line 38
    .line 39
    throw v2

    .line 40
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 41
    throw v0
.end method

.method public final declared-synchronized r()Lvd/t;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lvd/x;->k:Lvd/t;

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
    iget-object v0, p0, Lvd/x;->k:Lvd/t;

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
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lvd/x;->a:Lvd/s;

    .line 23
    .line 24
    iget v3, p0, Lvd/x;->c:I

    .line 25
    .line 26
    iget v4, p0, Lvd/x;->d:I

    .line 27
    .line 28
    iget v6, p0, Lvd/x;->g:I

    .line 29
    .line 30
    iget-object v0, v1, Lvd/s;->g:Lvd/y;

    .line 31
    .line 32
    invoke-virtual {v0}, Lvd/y;->f()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v5, 0x7

    .line 37
    invoke-virtual/range {v1 .. v6}, Lvd/s;->M(Ljava/lang/String;IIII)Lvd/t;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lvd/t;->r()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lvd/x;->k:Lvd/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return-object v0

    .line 48
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    throw v0
.end method

.method public final read([B)I
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lvd/x;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v4, 0x0

    .line 2
    const-string v5, "addSuppressed"

    const-class v6, Ljava/lang/Throwable;

    if-gtz p3, :cond_0

    return v4

    .line 3
    :cond_0
    iget-wide v7, v1, Lvd/x;->b:J

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lvd/x;->r()Lvd/t;

    move-result-object v9
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_5

    .line 5
    :try_start_1
    iget-object v10, v9, Lvd/t;->f:Lvd/g0;

    invoke-virtual {v10}, Lvd/g0;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 6
    :try_start_2
    new-instance v11, Lfd/p;

    invoke-virtual {v10}, Lvd/g0;->J()Lvc/f;

    move-result-object v0

    move/from16 v12, p2

    invoke-direct {v11, v0, v2, v12}, Lfd/p;-><init>(Lvc/f;[BI)V

    move/from16 v13, p3

    .line 7
    :goto_0
    iget v0, v1, Lvd/x;->e:I

    if-le v13, v0, :cond_1

    move v15, v0

    goto :goto_1

    :cond_1
    move v15, v13

    .line 8
    :goto_1
    invoke-virtual {v10}, Lvd/g0;->O()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    sget-object v20, Lvd/l;->b:Lvd/l;

    if-eqz v0, :cond_3

    .line 9
    :try_start_3
    new-instance v0, Lld/a;

    invoke-virtual {v10}, Lvd/g0;->J()Lvc/f;

    move-result-object v14

    invoke-virtual {v9}, Lvd/t;->K()[B

    move-result-object v4

    invoke-direct {v0, v14, v4, v2, v12}, Lld/a;-><init>(Lvc/f;[B[BI)V

    .line 10
    iget-wide v3, v1, Lvd/x;->b:J

    .line 11
    iput-wide v3, v0, Lld/a;->D:J

    .line 12
    iput v15, v0, Lld/a;->B:I

    sub-int v3, v13, v12

    .line 13
    iput v3, v0, Lld/a;->E:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x1

    .line 14
    :try_start_4
    new-array v4, v3, [Lvd/l;

    const/4 v3, 0x0

    aput-object v20, v4, v3

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v10, v0, v3, v4}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    move-result-object v0

    .line 16
    check-cast v0, Lld/b;

    .line 17
    iget v0, v0, Lld/b;->D:I
    :try_end_4
    .catch Lvd/r; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :goto_2
    move-object v2, v0

    move-object/from16 v21, v5

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 18
    :try_start_5
    iget v3, v0, Lvd/r;->a:I

    const v4, -0x3fffffef    # -2.000004f

    if-ne v3, v4, :cond_2

    .line 19
    sget-object v3, Lvd/x;->l:Lorg/slf4j/Logger;

    const-string v4, "Reached end of file"

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    :goto_3
    move-object/from16 v21, v5

    move v4, v15

    goto :goto_7

    .line 20
    :cond_2
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 21
    :cond_3
    :try_start_6
    new-instance v0, Lfd/o;

    invoke-virtual {v10}, Lvd/g0;->J()Lvc/f;

    move-result-object v3

    invoke-virtual {v9}, Lvd/t;->J()I

    move-result v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v21, v5

    :try_start_7
    iget-wide v4, v1, Lvd/x;->b:J

    move-object v14, v0

    move/from16 p2, v15

    move-object v15, v3

    move-wide/from16 v17, v4

    move/from16 v19, p2

    invoke-direct/range {v14 .. v19}, Lfd/o;-><init>(Lvc/f;IJI)V

    .line 22
    iget-boolean v3, v1, Lvd/x;->j:Z

    if-eqz v3, :cond_4

    const v3, 0xffff

    move/from16 v4, p2

    and-int v5, v4, v3

    .line 23
    iput v5, v0, Lfd/o;->O:I

    shr-int/lit8 v5, v4, 0x10

    and-int/2addr v3, v5

    .line 24
    iput v3, v0, Lfd/o;->N:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_4
    const/4 v3, 0x1

    goto :goto_6

    :goto_5
    move-object v2, v0

    goto :goto_a

    :cond_4
    move/from16 v4, p2

    goto :goto_4

    .line 25
    :goto_6
    :try_start_8
    new-array v5, v3, [Lvd/l;

    const/4 v3, 0x0

    aput-object v20, v5, v3

    invoke-virtual {v10, v0, v11, v5}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    .line 26
    iget v0, v11, Lfd/p;->O:I
    :try_end_8
    .catch Lvc/c; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_7
    if-gtz v0, :cond_6

    .line 27
    :try_start_9
    iget-wide v2, v1, Lvd/x;->b:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    sub-long/2addr v2, v7

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    goto :goto_8

    :cond_5
    const-wide/16 v2, -0x1

    :goto_8
    long-to-int v0, v2

    .line 28
    :try_start_a
    invoke-virtual {v10}, Lvd/g0;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 29
    :try_start_b
    invoke-virtual {v9}, Lvd/t;->M()V
    :try_end_b
    .catch Lvc/c; {:try_start_b .. :try_end_b} :catch_5

    return v0

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v21

    goto :goto_d

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 30
    :cond_6
    :try_start_c
    iget-wide v14, v1, Lvd/x;->b:J

    int-to-long v2, v0

    add-long/2addr v14, v2

    iput-wide v14, v1, Lvd/x;->b:J

    sub-int/2addr v13, v0

    add-int/2addr v12, v0

    .line 31
    iget v2, v11, Lfd/p;->M:I

    add-int/2addr v2, v0

    iput v2, v11, Lfd/p;->M:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-lez v13, :cond_8

    if-eq v0, v4, :cond_7

    goto :goto_9

    :cond_7
    move-object/from16 v2, p1

    move-object/from16 v5, v21

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    :goto_9
    sub-long/2addr v14, v7

    long-to-int v0, v14

    .line 32
    :try_start_d
    invoke-virtual {v10}, Lvd/g0;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 33
    :try_start_e
    invoke-virtual {v9}, Lvd/t;->M()V
    :try_end_e
    .catch Lvc/c; {:try_start_e .. :try_end_e} :catch_5

    return v0

    :catch_1
    move-exception v0

    .line 34
    :try_start_f
    invoke-static {v0}, Lvd/r;->c(Lvc/c;)Lvd/r;

    move-result-object v0

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catchall_3
    move-exception v0

    move-object/from16 v21, v5

    goto :goto_5

    .line 35
    :goto_a
    :try_start_10
    invoke-virtual {v10}, Lvd/g0;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catch_2
    move-object/from16 v7, v21

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v3, v0

    const/4 v4, 0x1

    :try_start_11
    new-array v0, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v6, v0, v5
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    move-object/from16 v7, v21

    :try_start_12
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v3, v8, v5

    invoke-virtual {v0, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object/from16 v7, v21

    :goto_b
    move-object v2, v0

    goto :goto_d

    :catch_3
    :goto_c
    :try_start_13
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object v7, v5

    goto :goto_b

    .line 36
    :goto_d
    :try_start_14
    invoke-virtual {v9}, Lvd/t;->M()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    goto :goto_e

    :catchall_8
    move-exception v0

    move-object v3, v0

    const/4 v4, 0x1

    .line 37
    :try_start_15
    new-array v0, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v6, v0, v5

    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_4

    :catch_4
    :goto_e
    :try_start_16
    throw v2
    :try_end_16
    .catch Lvc/c; {:try_start_16 .. :try_end_16} :catch_5

    :catch_5
    move-exception v0

    .line 38
    invoke-static {v0}, Lvd/r;->c(Lvc/c;)Lvd/r;

    move-result-object v0

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method public final readBoolean()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lvd/x;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lvd/x;->h:[B

    .line 12
    .line 13
    aget-byte v0, v0, v1

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_0
    return v1

    .line 19
    :cond_1
    new-instance v0, Lvd/q;

    .line 20
    .line 21
    invoke-direct {v0}, Lvd/q;-><init>()V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final readByte()B
    .locals 3

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2, v1}, Lvd/x;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lvd/x;->h:[B

    .line 12
    .line 13
    aget-byte v0, v0, v2

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    new-instance v0, Lvd/q;

    .line 17
    .line 18
    invoke-direct {v0}, Lvd/q;-><init>()V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public final readChar()C
    .locals 3

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2, v1}, Lvd/x;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lvd/x;->h:[B

    .line 12
    .line 13
    invoke-static {v2, v0}, Lge/a;->a(I[B)S

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-char v0, v0

    .line 18
    return v0

    .line 19
    :cond_0
    new-instance v0, Lvd/q;

    .line 20
    .line 21
    invoke-direct {v0}, Lvd/q;-><init>()V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final readDouble()D
    .locals 7

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lvd/x;->read([BII)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lvd/x;->h:[B

    .line 13
    .line 14
    invoke-static {v1, v0}, Lge/a;->c(I[B)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-long v1, v1

    .line 19
    const-wide v3, 0xffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v1, v3

    .line 25
    const/16 v5, 0x20

    .line 26
    .line 27
    shl-long/2addr v1, v5

    .line 28
    const/4 v5, 0x4

    .line 29
    invoke-static {v5, v0}, Lge/a;->c(I[B)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    int-to-long v5, v0

    .line 34
    and-long/2addr v3, v5

    .line 35
    or-long/2addr v1, v3

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    return-wide v0

    .line 41
    :cond_0
    new-instance v0, Lvd/q;

    .line 42
    .line 43
    invoke-direct {v0}, Lvd/q;-><init>()V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method public final readFloat()F
    .locals 3

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2, v1}, Lvd/x;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lvd/x;->h:[B

    .line 12
    .line 13
    invoke-static {v2, v0}, Lge/a;->c(I[B)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0

    .line 22
    :cond_0
    new-instance v0, Lvd/q;

    .line 23
    .line 24
    invoke-direct {v0}, Lvd/q;-><init>()V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public final readFully([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lvd/x;->readFully([BII)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 2
    invoke-virtual {p0, p1, v1, v2}, Lvd/x;->read([BII)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    return-void

    .line 3
    :cond_1
    new-instance p1, Lvd/q;

    invoke-direct {p1}, Lvd/q;-><init>()V

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final readInt()I
    .locals 3

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2, v1}, Lvd/x;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lvd/x;->h:[B

    .line 12
    .line 13
    invoke-static {v2, v0}, Lge/a;->c(I[B)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    new-instance v0, Lvd/q;

    .line 19
    .line 20
    invoke-direct {v0}, Lvd/q;-><init>()V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, -0x1

    .line 10
    :goto_0
    if-nez v3, :cond_4

    .line 11
    .line 12
    iget-object v4, p0, Lvd/x;->h:[B

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    invoke-virtual {p0, v4, v2, v5}, Lvd/x;->read([BII)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-ne v4, v1, :cond_0

    .line 20
    .line 21
    const/4 v4, -0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v4, p0, Lvd/x;->h:[B

    .line 24
    .line 25
    aget-byte v4, v4, v2

    .line 26
    .line 27
    and-int/lit16 v4, v4, 0xff

    .line 28
    .line 29
    :goto_1
    if-eq v4, v1, :cond_3

    .line 30
    .line 31
    const/16 v6, 0xa

    .line 32
    .line 33
    if-eq v4, v6, :cond_3

    .line 34
    .line 35
    const/16 v7, 0xd

    .line 36
    .line 37
    if-eq v4, v7, :cond_1

    .line 38
    .line 39
    int-to-char v5, v4

    .line 40
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-wide v7, p0, Lvd/x;->b:J

    .line 45
    .line 46
    iget-object v3, p0, Lvd/x;->h:[B

    .line 47
    .line 48
    invoke-virtual {p0, v3, v2, v5}, Lvd/x;->read([BII)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-ne v3, v1, :cond_2

    .line 53
    .line 54
    const/4 v3, -0x1

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    iget-object v3, p0, Lvd/x;->h:[B

    .line 57
    .line 58
    aget-byte v3, v3, v2

    .line 59
    .line 60
    and-int/lit16 v3, v3, 0xff

    .line 61
    .line 62
    :goto_2
    if-eq v3, v6, :cond_3

    .line 63
    .line 64
    iput-wide v7, p0, Lvd/x;->b:J

    .line 65
    .line 66
    :cond_3
    const/4 v3, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    if-ne v4, v1, :cond_5

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_5

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    return-object v0

    .line 78
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method

.method public final readLong()J
    .locals 7

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1, v2}, Lvd/x;->read([BII)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lvd/x;->h:[B

    .line 13
    .line 14
    invoke-static {v1, v0}, Lge/a;->c(I[B)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-long v1, v1

    .line 19
    const-wide v3, 0xffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v1, v3

    .line 25
    const/16 v5, 0x20

    .line 26
    .line 27
    shl-long/2addr v1, v5

    .line 28
    const/4 v5, 0x4

    .line 29
    invoke-static {v5, v0}, Lge/a;->c(I[B)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    int-to-long v5, v0

    .line 34
    and-long/2addr v3, v5

    .line 35
    or-long/2addr v1, v3

    .line 36
    return-wide v1

    .line 37
    :cond_0
    new-instance v0, Lvd/q;

    .line 38
    .line 39
    invoke-direct {v0}, Lvd/q;-><init>()V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public final readShort()S
    .locals 3

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2, v1}, Lvd/x;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lvd/x;->h:[B

    .line 12
    .line 13
    invoke-static {v2, v0}, Lge/a;->a(I[B)S

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    new-instance v0, Lvd/q;

    .line 19
    .line 20
    invoke-direct {v0}, Lvd/q;-><init>()V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lvd/x;->readUnsignedShort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v1, v2, v0}, Lvd/x;->read([BII)I

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {v0, v1}, Lge/a;->e(I[B)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object v0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Lvd/r;

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    invoke-direct {v1, v2, v0}, Lvd/r;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 22
    .line 23
    .line 24
    throw v1
.end method

.method public final readUnsignedByte()I
    .locals 3

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2, v1}, Lvd/x;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lvd/x;->h:[B

    .line 12
    .line 13
    aget-byte v0, v0, v2

    .line 14
    .line 15
    and-int/lit16 v0, v0, 0xff

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    new-instance v0, Lvd/q;

    .line 19
    .line 20
    invoke-direct {v0}, Lvd/q;-><init>()V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final readUnsignedShort()I
    .locals 3

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2, v1}, Lvd/x;->read([BII)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lvd/x;->h:[B

    .line 12
    .line 13
    invoke-static {v2, v0}, Lge/a;->a(I[B)S

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const v1, 0xffff

    .line 18
    .line 19
    .line 20
    and-int/2addr v0, v1

    .line 21
    return v0

    .line 22
    :cond_0
    new-instance v0, Lvd/q;

    .line 23
    .line 24
    invoke-direct {v0}, Lvd/q;-><init>()V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public final skipBytes(I)I
    .locals 4

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iget-wide v0, p0, Lvd/x;->b:J

    .line 4
    .line 5
    int-to-long v2, p1

    .line 6
    add-long/2addr v0, v2

    .line 7
    iput-wide v0, p0, Lvd/x;->b:J

    .line 8
    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public final write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lvd/x;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lvd/x;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 19

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    const-string v4, "addSuppressed"

    const-class v5, Ljava/lang/Throwable;

    if-gtz p3, :cond_0

    return-void

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lvd/x;->r()Lvd/t;

    move-result-object v6
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_3

    .line 6
    :try_start_1
    iget-object v7, v6, Lvd/t;->f:Lvd/g0;

    invoke-virtual {v7}, Lvd/g0;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move/from16 v0, p2

    move/from16 v15, p3

    .line 7
    :goto_0
    :try_start_2
    iget v8, v1, Lvd/x;->f:I

    if-le v15, v8, :cond_1

    move v14, v8

    goto :goto_1

    :cond_1
    move v14, v15

    .line 8
    :goto_1
    invoke-virtual {v7}, Lvd/g0;->O()Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    sget-object v17, Lvd/l;->b:Lvd/l;

    if-eqz v8, :cond_2

    .line 9
    :try_start_3
    new-instance v8, Lld/a;

    invoke-virtual {v7}, Lvd/g0;->J()Lvc/f;

    move-result-object v9

    invoke-virtual {v6}, Lvd/t;->K()[B

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lld/a;-><init>(Lvc/f;[B)V

    .line 10
    iget-wide v9, v1, Lvd/x;->b:J

    .line 11
    iput-wide v9, v8, Lld/a;->D:J

    sub-int v9, v15, v14

    sub-int/2addr v9, v0

    .line 12
    iput v9, v8, Lld/a;->E:I

    move-object/from16 v13, p1

    .line 13
    iput-object v13, v8, Lld/a;->z:[B

    .line 14
    iput v0, v8, Lld/a;->A:I

    .line 15
    iput v14, v8, Lld/a;->B:I

    .line 16
    new-array v9, v3, [Lvd/l;

    aput-object v17, v9, v2

    const/4 v10, 0x0

    .line 17
    invoke-virtual {v7, v8, v10, v9}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    move-result-object v8

    .line 18
    check-cast v8, Lld/c;

    .line 19
    iget v8, v8, Lld/c;->D:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v8, v8

    move-object/from16 v18, v4

    move v3, v15

    goto :goto_3

    :goto_2
    move-object v2, v0

    move-object/from16 v18, v4

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object/from16 v13, p1

    .line 20
    :try_start_4
    new-instance v11, Lfd/y;

    invoke-virtual {v7}, Lvd/g0;->J()Lvc/f;

    move-result-object v9

    invoke-virtual {v6}, Lvd/t;->J()I

    move-result v10

    iget-wide v2, v1, Lvd/x;->b:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    sub-int v8, v15, v14

    sub-int v16, v8, v0

    move-object v8, v11

    move-object/from16 v18, v4

    move-object v4, v11

    move-wide v11, v2

    move/from16 v13, v16

    move v2, v14

    move-object/from16 v14, p1

    move v3, v15

    move v15, v0

    move/from16 v16, v2

    :try_start_5
    invoke-direct/range {v8 .. v16}, Lfd/y;-><init>(Lvc/f;IJI[BII)V

    .line 21
    iget-object v2, v1, Lvd/x;->i:Lfd/z;

    const/4 v8, 0x1

    new-array v9, v8, [Lvd/l;

    const/4 v8, 0x0

    aput-object v17, v9, v8

    invoke-virtual {v7, v4, v2, v9}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    .line 22
    iget-object v2, v1, Lvd/x;->i:Lfd/z;

    .line 23
    iget-wide v8, v2, Lfd/z;->L:J

    .line 24
    :goto_3
    iget-wide v10, v1, Lvd/x;->b:J

    add-long/2addr v10, v8

    iput-wide v10, v1, Lvd/x;->b:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    int-to-long v2, v3

    sub-long/2addr v2, v8

    long-to-int v15, v2

    int-to-long v2, v0

    add-long/2addr v2, v8

    long-to-int v0, v2

    if-gtz v15, :cond_3

    .line 25
    :try_start_6
    invoke-virtual {v7}, Lvd/g0;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 26
    :try_start_7
    invoke-virtual {v6}, Lvd/t;->M()V
    :try_end_7
    .catch Lvc/c; {:try_start_7 .. :try_end_7} :catch_3

    return-void

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object/from16 v8, v18

    goto :goto_8

    :cond_3
    move-object/from16 v4, v18

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    :goto_4
    move-object v2, v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_4

    .line 27
    :goto_5
    :try_start_8
    invoke-virtual {v7}, Lvd/g0;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catch_0
    move-object/from16 v8, v18

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v3, v0

    const/4 v4, 0x1

    :try_start_9
    new-array v0, v4, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v5, v0, v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object/from16 v8, v18

    :try_start_a
    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v3, v9, v7

    invoke-virtual {v0, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object/from16 v8, v18

    :goto_6
    move-object v2, v0

    goto :goto_8

    :catch_1
    :goto_7
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_6

    :catchall_7
    move-exception v0

    move-object v8, v4

    goto :goto_6

    .line 28
    :goto_8
    :try_start_c
    invoke-virtual {v6}, Lvd/t;->M()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object v3, v0

    const/4 v4, 0x1

    .line 29
    :try_start_d
    new-array v0, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v0, v6

    invoke-virtual {v5, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    :catch_2
    :goto_9
    :try_start_e
    throw v2
    :try_end_e
    .catch Lvc/c; {:try_start_e .. :try_end_e} :catch_3

    :catch_3
    move-exception v0

    .line 30
    invoke-static {v0}, Lvd/r;->c(Lvc/c;)Lvd/r;

    move-result-object v0

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method public final writeBoolean(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    int-to-byte p1, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-byte p1, v0, v1

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lvd/x;->write([BII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final writeByte(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    int-to-byte p1, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-byte p1, v0, v1

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1, p1}, Lvd/x;->write([BII)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v1, v0}, Lvd/x;->write([BII)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final writeChar(I)V
    .locals 3

    .line 1
    int-to-short p1, p1

    .line 2
    iget-object v0, p0, Lvd/x;->h:[B

    .line 3
    .line 4
    shr-int/lit8 v1, p1, 0x8

    .line 5
    .line 6
    and-int/lit16 v1, v1, 0xff

    .line 7
    .line 8
    int-to-byte v1, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-byte v1, v0, v2

    .line 11
    .line 12
    and-int/lit16 p1, p1, 0xff

    .line 13
    .line 14
    int-to-byte p1, p1

    .line 15
    const/4 v1, 0x1

    .line 16
    aput-byte p1, v0, v1

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    invoke-virtual {p0, v0, v2, p1}, Lvd/x;->write([BII)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v1, v0, 0x2

    .line 6
    .line 7
    new-array v2, v1, [B

    .line 8
    .line 9
    new-array v3, v0, [C

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-virtual {p1, v4, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    :goto_0
    if-ge p1, v0, :cond_0

    .line 18
    .line 19
    add-int/lit8 v6, v5, 0x1

    .line 20
    .line 21
    aget-char v7, v3, p1

    .line 22
    .line 23
    ushr-int/lit8 v8, v7, 0x8

    .line 24
    .line 25
    int-to-byte v8, v8

    .line 26
    aput-byte v8, v2, v5

    .line 27
    .line 28
    add-int/lit8 v5, v5, 0x2

    .line 29
    .line 30
    int-to-byte v7, v7

    .line 31
    aput-byte v7, v2, v6

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, v2, v4, v1}, Lvd/x;->write([BII)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final writeDouble(D)V
    .locals 5

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    const-wide v1, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    and-long v3, p1, v1

    .line 13
    .line 14
    long-to-int v4, v3

    .line 15
    const/4 v3, 0x4

    .line 16
    invoke-static {v4, v3, v0}, Lge/a;->f(II[B)V

    .line 17
    .line 18
    .line 19
    const/16 v3, 0x20

    .line 20
    .line 21
    shr-long/2addr p1, v3

    .line 22
    and-long/2addr p1, v1

    .line 23
    long-to-int p2, p1

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-static {p2, p1, v0}, Lge/a;->f(II[B)V

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lvd/x;->h:[B

    .line 29
    .line 30
    const/16 v0, 0x8

    .line 31
    .line 32
    invoke-virtual {p0, p2, p1, v0}, Lvd/x;->write([BII)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final writeFloat(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p1, v1, v0}, Lge/a;->f(II[B)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lvd/x;->h:[B

    .line 12
    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-virtual {p0, p1, v1, v0}, Lvd/x;->write([BII)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final writeInt(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1, v0}, Lge/a;->f(II[B)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lvd/x;->h:[B

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-virtual {p0, p1, v1, v0}, Lvd/x;->write([BII)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final writeLong(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lvd/x;->h:[B

    .line 2
    .line 3
    const-wide v1, 0xffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    and-long v3, p1, v1

    .line 9
    .line 10
    long-to-int v4, v3

    .line 11
    const/4 v3, 0x4

    .line 12
    invoke-static {v4, v3, v0}, Lge/a;->f(II[B)V

    .line 13
    .line 14
    .line 15
    const/16 v3, 0x20

    .line 16
    .line 17
    shr-long/2addr p1, v3

    .line 18
    and-long/2addr p1, v1

    .line 19
    long-to-int p2, p1

    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-static {p2, p1, v0}, Lge/a;->f(II[B)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lvd/x;->h:[B

    .line 25
    .line 26
    const/16 v0, 0x8

    .line 27
    .line 28
    invoke-virtual {p0, p2, p1, v0}, Lvd/x;->write([BII)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final writeShort(I)V
    .locals 3

    .line 1
    int-to-short p1, p1

    .line 2
    iget-object v0, p0, Lvd/x;->h:[B

    .line 3
    .line 4
    shr-int/lit8 v1, p1, 0x8

    .line 5
    .line 6
    and-int/lit16 v1, v1, 0xff

    .line 7
    .line 8
    int-to-byte v1, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-byte v1, v0, v2

    .line 11
    .line 12
    and-int/lit16 p1, p1, 0xff

    .line 13
    .line 14
    int-to-byte p1, p1

    .line 15
    const/4 v1, 0x1

    .line 16
    aput-byte p1, v0, v1

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    invoke-virtual {p0, v0, v2, p1}, Lvd/x;->write([BII)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    :goto_0
    const/16 v6, 0x7ff

    .line 13
    .line 14
    const/16 v7, 0x7f

    .line 15
    .line 16
    const/4 v8, 0x3

    .line 17
    const/4 v9, 0x2

    .line 18
    const/4 v10, 0x1

    .line 19
    if-ge v4, v2, :cond_2

    .line 20
    .line 21
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v11

    .line 25
    if-le v11, v7, :cond_1

    .line 26
    .line 27
    if-le v11, v6, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v8, 0x2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v8, 0x1

    .line 33
    :goto_1
    add-int/2addr v5, v8

    .line 34
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    new-array v2, v5, [B

    .line 38
    .line 39
    invoke-virtual {v0, v5}, Lvd/x;->writeShort(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v12, 0x0

    .line 48
    :goto_2
    if-ge v11, v5, :cond_7

    .line 49
    .line 50
    if-ge v12, v4, :cond_7

    .line 51
    .line 52
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v13

    .line 56
    if-lt v13, v10, :cond_3

    .line 57
    .line 58
    if-gt v13, v7, :cond_3

    .line 59
    .line 60
    add-int/lit8 v14, v11, 0x1

    .line 61
    .line 62
    int-to-byte v13, v13

    .line 63
    aput-byte v13, v2, v11

    .line 64
    .line 65
    move v11, v14

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    if-le v13, v6, :cond_5

    .line 68
    .line 69
    sub-int v14, v5, v11

    .line 70
    .line 71
    if-ge v14, v8, :cond_4

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_4
    add-int/lit8 v14, v11, 0x1

    .line 75
    .line 76
    shr-int/lit8 v15, v13, 0xc

    .line 77
    .line 78
    and-int/lit8 v15, v15, 0xf

    .line 79
    .line 80
    or-int/lit16 v15, v15, 0xe0

    .line 81
    .line 82
    int-to-byte v15, v15

    .line 83
    aput-byte v15, v2, v11

    .line 84
    .line 85
    add-int/lit8 v15, v11, 0x2

    .line 86
    .line 87
    shr-int/lit8 v16, v13, 0x6

    .line 88
    .line 89
    and-int/lit8 v6, v16, 0x3f

    .line 90
    .line 91
    or-int/lit16 v6, v6, 0x80

    .line 92
    .line 93
    int-to-byte v6, v6

    .line 94
    aput-byte v6, v2, v14

    .line 95
    .line 96
    add-int/lit8 v11, v11, 0x3

    .line 97
    .line 98
    and-int/lit8 v6, v13, 0x3f

    .line 99
    .line 100
    or-int/lit16 v6, v6, 0x80

    .line 101
    .line 102
    int-to-byte v6, v6

    .line 103
    aput-byte v6, v2, v15

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_5
    sub-int v6, v5, v11

    .line 107
    .line 108
    if-ge v6, v9, :cond_6

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_6
    add-int/lit8 v6, v11, 0x1

    .line 112
    .line 113
    shr-int/lit8 v14, v13, 0x6

    .line 114
    .line 115
    and-int/lit8 v14, v14, 0x1f

    .line 116
    .line 117
    or-int/lit16 v14, v14, 0xc0

    .line 118
    .line 119
    int-to-byte v14, v14

    .line 120
    aput-byte v14, v2, v11

    .line 121
    .line 122
    add-int/lit8 v11, v11, 0x2

    .line 123
    .line 124
    and-int/lit8 v13, v13, 0x3f

    .line 125
    .line 126
    or-int/lit16 v13, v13, 0x80

    .line 127
    .line 128
    int-to-byte v13, v13

    .line 129
    aput-byte v13, v2, v6

    .line 130
    .line 131
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 132
    .line 133
    const/16 v6, 0x7ff

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_7
    :goto_4
    invoke-virtual {v0, v2, v3, v5}, Lvd/x;->write([BII)V

    .line 137
    .line 138
    .line 139
    return-void
.end method
