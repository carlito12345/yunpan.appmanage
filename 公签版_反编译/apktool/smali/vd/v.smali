.class public Lvd/v;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field public static final q:Lorg/slf4j/Logger;


# instance fields
.field public final a:Lvd/s;

.field public b:Z

.field public c:I

.field public final d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:[B

.field public i:Lfd/y;

.field public j:Lfd/z;

.field public k:Lfd/x;

.field public l:Lfd/a0;

.field public m:Lvd/t;

.field public final n:I

.field public final p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lvd/v;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvd/v;->q:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lvd/s;)V
    .locals 8

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
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 8
    .line 9
    .line 10
    new-array v4, v1, [B

    .line 11
    .line 12
    iput-object v4, p0, Lvd/v;->h:[B

    .line 13
    .line 14
    iput-object p1, p0, Lvd/v;->a:Lvd/s;

    .line 15
    .line 16
    const/16 v4, 0x52

    .line 17
    .line 18
    iput v4, p0, Lvd/v;->c:I

    .line 19
    .line 20
    const/4 v4, 0x7

    .line 21
    iput v4, p0, Lvd/v;->n:I

    .line 22
    .line 23
    const/4 v4, 0x2

    .line 24
    iput v4, p0, Lvd/v;->d:I

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p1}, Lvd/s;->A()Lvd/g0;

    .line 27
    .line 28
    .line 29
    move-result-object p1
    :try_end_0
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    invoke-virtual {p1}, Lvd/g0;->O()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    iput-boolean v4, p0, Lvd/v;->p:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Lvd/v;->r()Lvd/t;

    .line 37
    .line 38
    .line 39
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 40
    :try_start_2
    invoke-virtual {p0, p1}, Lvd/v;->A(Lvd/g0;)V

    .line 41
    .line 42
    .line 43
    if-eqz v4, :cond_0

    .line 44
    .line 45
    new-instance v4, Lkd/c;

    .line 46
    .line 47
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v5}, Lvd/t;->K()[B

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-direct {v4, v6, v7}, Lkd/c;-><init>(Lvc/f;[B)V

    .line 56
    .line 57
    .line 58
    new-instance v6, Ldd/c;

    .line 59
    .line 60
    invoke-direct {v6, v0}, Ldd/c;-><init>(I)V

    .line 61
    .line 62
    .line 63
    iput-byte v1, v4, Lkd/c;->z:B

    .line 64
    .line 65
    const/16 v7, 0x14

    .line 66
    .line 67
    iput-byte v7, v4, Lkd/c;->A:B

    .line 68
    .line 69
    iput-object v6, v4, Lkd/c;->B:Ldd/c;

    .line 70
    .line 71
    new-array v6, v1, [Lvd/l;

    .line 72
    .line 73
    sget-object v7, Lvd/l;->b:Lvd/l;

    .line 74
    .line 75
    aput-object v7, v6, v0

    .line 76
    .line 77
    const/4 v7, 0x0

    .line 78
    invoke-virtual {p1, v4, v7, v6}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v4

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Lvd/t;->M()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 85
    .line 86
    .line 87
    :try_start_4
    invoke-virtual {p1}, Lvd/g0;->close()V
    :try_end_4
    .catch Lvc/c; {:try_start_4 .. :try_end_4} :catch_0

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :catch_0
    move-exception p1

    .line 92
    goto :goto_4

    .line 93
    :goto_1
    :try_start_5
    invoke-virtual {v5}, Lvd/t;->M()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catchall_1
    move-exception v5

    .line 98
    :try_start_6
    new-array v6, v1, [Ljava/lang/Class;

    .line 99
    .line 100
    aput-object v3, v6, v0

    .line 101
    .line 102
    invoke-virtual {v3, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    new-array v7, v1, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object v5, v7, v0

    .line 109
    .line 110
    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 111
    .line 112
    .line 113
    :catch_1
    :goto_2
    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 114
    :catchall_2
    move-exception v4

    .line 115
    if-eqz p1, :cond_1

    .line 116
    .line 117
    :try_start_8
    invoke-virtual {p1}, Lvd/g0;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :catchall_3
    move-exception p1

    .line 122
    :try_start_9
    new-array v5, v1, [Ljava/lang/Class;

    .line 123
    .line 124
    aput-object v3, v5, v0

    .line 125
    .line 126
    invoke-virtual {v3, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    new-array v1, v1, [Ljava/lang/Object;

    .line 131
    .line 132
    aput-object p1, v1, v0

    .line 133
    .line 134
    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 135
    .line 136
    .line 137
    :catch_2
    :cond_1
    :goto_3
    :try_start_a
    throw v4
    :try_end_a
    .catch Lvc/c; {:try_start_a .. :try_end_a} :catch_0

    .line 138
    :goto_4
    invoke-static {p1}, Lvd/r;->c(Lvc/c;)Lvd/r;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    throw p1
.end method


# virtual methods
.method public final A(Lvd/g0;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lvd/g0;->L()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lvd/v;->p:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iput v0, p0, Lvd/v;->e:I

    .line 10
    .line 11
    iput v0, p0, Lvd/v;->f:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget v1, p0, Lvd/v;->c:I

    .line 15
    .line 16
    and-int/lit8 v1, v1, -0x51

    .line 17
    .line 18
    iput v1, p0, Lvd/v;->c:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x46

    .line 21
    .line 22
    iput v0, p0, Lvd/v;->e:I

    .line 23
    .line 24
    const/16 v0, 0x10

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lvd/g0;->N(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput-boolean v0, p0, Lvd/v;->b:Z

    .line 31
    .line 32
    sget-object v1, Lvd/v;->q:Lorg/slf4j/Logger;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    const-string v0, "No support for NT SMBs"

    .line 37
    .line 38
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    const v0, 0x8000

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lvd/g0;->N(I)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Lvd/g0;->A()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lwc/a;

    .line 61
    .line 62
    iget v0, v0, Lwc/a;->H:I

    .line 63
    .line 64
    add-int/lit8 v0, v0, -0x46

    .line 65
    .line 66
    const v2, 0xffb9

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lvd/v;->f:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const-string v0, "No support or SMB signing is enabled, not enabling large writes"

    .line 77
    .line 78
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget v0, p0, Lvd/v;->e:I

    .line 82
    .line 83
    iput v0, p0, Lvd/v;->f:I

    .line 84
    .line 85
    :goto_0
    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v2, "Negotiated file write size is "

    .line 94
    .line 95
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget v2, p0, Lvd/v;->f:I

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_3
    iget-boolean v0, p0, Lvd/v;->b:Z

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    new-instance v0, Lfd/y;

    .line 115
    .line 116
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v0, v1}, Lfd/y;-><init>(Lvc/f;)V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lvd/v;->i:Lfd/y;

    .line 124
    .line 125
    new-instance v0, Lfd/z;

    .line 126
    .line 127
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-direct {v0, p1}, Lfd/z;-><init>(Lvc/f;)V

    .line 132
    .line 133
    .line 134
    iput-object v0, p0, Lvd/v;->j:Lfd/z;

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    new-instance v0, Lfd/x;

    .line 138
    .line 139
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-direct {v0, v1}, Lfd/x;-><init>(Lvc/f;)V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lvd/v;->k:Lfd/x;

    .line 147
    .line 148
    new-instance v0, Lfd/a0;

    .line 149
    .line 150
    invoke-virtual {p1}, Lvd/g0;->J()Lvc/f;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {v0, p1}, Lfd/a0;-><init>(Lvc/f;)V

    .line 155
    .line 156
    .line 157
    iput-object v0, p0, Lvd/v;->l:Lfd/a0;

    .line 158
    .line 159
    :goto_1
    return-void
.end method

.method public final J(III[B)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const/4 v7, 0x1

    .line 8
    const-string v8, "addSuppressed"

    .line 9
    .line 10
    const-class v9, Ljava/lang/Throwable;

    .line 11
    .line 12
    sget-object v10, Lvd/v;->q:Lorg/slf4j/Logger;

    .line 13
    .line 14
    const-string v11, "write: fid="

    .line 15
    .line 16
    if-gtz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v12, v1, Lvd/v;->h:[B

    .line 20
    .line 21
    if-eqz v12, :cond_b

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Lvd/v;->r()Lvd/t;

    .line 24
    .line 25
    .line 26
    move-result-object v12

    .line 27
    :try_start_0
    iget-object v13, v12, Lvd/t;->f:Lvd/g0;

    .line 28
    .line 29
    invoke-virtual {v13}, Lvd/g0;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_1
    invoke-interface {v10}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v14

    .line 36
    if-eqz v14, :cond_1

    .line 37
    .line 38
    new-instance v14, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v11, ",off="

    .line 47
    .line 48
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move/from16 v11, p1

    .line 52
    .line 53
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v15, ",len="

    .line 57
    .line 58
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v15, ",fp="

    .line 65
    .line 66
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-wide v3, v1, Lvd/v;->g:J

    .line 70
    .line 71
    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v10, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    move-object v2, v0

    .line 84
    goto/16 :goto_8

    .line 85
    .line 86
    :cond_1
    move/from16 v11, p1

    .line 87
    .line 88
    :goto_0
    iget-object v3, v1, Lvd/v;->a:Lvd/s;

    .line 89
    .line 90
    invoke-virtual {v3}, Lvd/s;->J()I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-ne v3, v7, :cond_2

    .line 95
    .line 96
    iget v3, v1, Lvd/v;->f:I

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    iget v3, v1, Lvd/v;->e:I

    .line 100
    .line 101
    :goto_1
    if-le v0, v3, :cond_3

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    move v3, v0

    .line 105
    :goto_2
    iget-boolean v4, v1, Lvd/v;->p:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    sget-object v14, Lvd/l;->b:Lvd/l;

    .line 108
    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    :try_start_2
    new-instance v4, Lld/a;

    .line 112
    .line 113
    invoke-virtual {v13}, Lvd/g0;->J()Lvc/f;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v12}, Lvd/t;->K()[B

    .line 118
    .line 119
    .line 120
    move-result-object v15

    .line 121
    invoke-direct {v4, v5, v15}, Lld/a;-><init>(Lvc/f;[B)V

    .line 122
    .line 123
    .line 124
    iget-wide v6, v1, Lvd/v;->g:J

    .line 125
    .line 126
    iput-wide v6, v4, Lld/a;->D:J

    .line 127
    .line 128
    iput-object v2, v4, Lld/a;->z:[B

    .line 129
    .line 130
    iput v11, v4, Lld/a;->A:I

    .line 131
    .line 132
    iput v3, v4, Lld/a;->B:I

    .line 133
    .line 134
    const/4 v3, 0x1

    .line 135
    new-array v6, v3, [Lvd/l;

    .line 136
    .line 137
    const/4 v3, 0x0

    .line 138
    aput-object v14, v6, v3

    .line 139
    .line 140
    const/4 v3, 0x0

    .line 141
    invoke-virtual {v13, v4, v3, v6}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Lld/c;

    .line 146
    .line 147
    iget v3, v3, Lld/c;->D:I

    .line 148
    .line 149
    int-to-long v3, v3

    .line 150
    iget-wide v6, v1, Lvd/v;->g:J

    .line 151
    .line 152
    add-long/2addr v6, v3

    .line 153
    iput-wide v6, v1, Lvd/v;->g:J

    .line 154
    .line 155
    :goto_3
    int-to-long v6, v0

    .line 156
    sub-long/2addr v6, v3

    .line 157
    long-to-int v0, v6

    .line 158
    int-to-long v6, v11

    .line 159
    add-long/2addr v6, v3

    .line 160
    long-to-int v3, v6

    .line 161
    const/4 v11, 0x4

    .line 162
    const/4 v14, 0x3

    .line 163
    const/16 v16, 0x2

    .line 164
    .line 165
    goto/16 :goto_7

    .line 166
    .line 167
    :cond_4
    iget-boolean v4, v1, Lvd/v;->b:Z

    .line 168
    .line 169
    if-eqz v4, :cond_6

    .line 170
    .line 171
    iget-object v4, v1, Lvd/v;->i:Lfd/y;

    .line 172
    .line 173
    invoke-virtual {v12}, Lvd/t;->J()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    move v7, v6

    .line 178
    iget-wide v5, v1, Lvd/v;->g:J

    .line 179
    .line 180
    sub-int v15, v0, v3

    .line 181
    .line 182
    iput v7, v4, Lfd/y;->L:I

    .line 183
    .line 184
    iput-wide v5, v4, Lfd/y;->S:J

    .line 185
    .line 186
    iput v15, v4, Lfd/y;->M:I

    .line 187
    .line 188
    iput-object v2, v4, Lfd/y;->R:[B

    .line 189
    .line 190
    iput v11, v4, Lfd/y;->P:I

    .line 191
    .line 192
    iput v3, v4, Lfd/y;->N:I

    .line 193
    .line 194
    const/4 v5, 0x0

    .line 195
    iput-object v5, v4, Led/c;->v:Led/b;

    .line 196
    .line 197
    const/4 v4, 0x1

    .line 198
    and-int/lit8 v5, p3, 0x1

    .line 199
    .line 200
    if-eqz v5, :cond_5

    .line 201
    .line 202
    iget-object v4, v1, Lvd/v;->i:Lfd/y;

    .line 203
    .line 204
    invoke-virtual {v12}, Lvd/t;->J()I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    iget-wide v6, v1, Lvd/v;->g:J

    .line 209
    .line 210
    iput v5, v4, Lfd/y;->L:I

    .line 211
    .line 212
    iput-wide v6, v4, Lfd/y;->S:J

    .line 213
    .line 214
    iput v0, v4, Lfd/y;->M:I

    .line 215
    .line 216
    iput-object v2, v4, Lfd/y;->R:[B

    .line 217
    .line 218
    iput v11, v4, Lfd/y;->P:I

    .line 219
    .line 220
    iput v3, v4, Lfd/y;->N:I

    .line 221
    .line 222
    const/4 v3, 0x0

    .line 223
    iput-object v3, v4, Led/c;->v:Led/b;

    .line 224
    .line 225
    iget-object v3, v1, Lvd/v;->i:Lfd/y;

    .line 226
    .line 227
    const/16 v4, 0x8

    .line 228
    .line 229
    iput v4, v3, Lfd/y;->V:I

    .line 230
    .line 231
    const/4 v4, 0x0

    .line 232
    goto :goto_4

    .line 233
    :cond_5
    iget-object v3, v1, Lvd/v;->i:Lfd/y;

    .line 234
    .line 235
    const/4 v4, 0x0

    .line 236
    iput v4, v3, Lfd/y;->V:I

    .line 237
    .line 238
    :goto_4
    iget-object v3, v1, Lvd/v;->i:Lfd/y;

    .line 239
    .line 240
    iget-object v6, v1, Lvd/v;->j:Lfd/z;

    .line 241
    .line 242
    const/4 v5, 0x1

    .line 243
    new-array v7, v5, [Lvd/l;

    .line 244
    .line 245
    aput-object v14, v7, v4

    .line 246
    .line 247
    invoke-virtual {v13, v3, v6, v7}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    .line 248
    .line 249
    .line 250
    iget-object v3, v1, Lvd/v;->j:Lfd/z;

    .line 251
    .line 252
    iget-wide v3, v3, Lfd/z;->L:J

    .line 253
    .line 254
    iget-wide v6, v1, Lvd/v;->g:J

    .line 255
    .line 256
    add-long/2addr v6, v3

    .line 257
    iput-wide v6, v1, Lvd/v;->g:J

    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_6
    invoke-interface {v10}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 261
    .line 262
    .line 263
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    const-string v6, "Wrote at %d remain %d off %d len %d"

    .line 265
    .line 266
    if-eqz v4, :cond_7

    .line 267
    .line 268
    move-object/from16 p2, v6

    .line 269
    .line 270
    :try_start_3
    iget-wide v5, v1, Lvd/v;->g:J

    .line 271
    .line 272
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    sub-int v6, v0, v3

    .line 277
    .line 278
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    .line 288
    .line 289
    move-result-object v14

    .line 290
    const/4 v4, 0x4

    .line 291
    new-array v15, v4, [Ljava/lang/Object;

    .line 292
    .line 293
    const/4 v4, 0x0

    .line 294
    aput-object v5, v15, v4

    .line 295
    .line 296
    const/4 v4, 0x1

    .line 297
    aput-object v6, v15, v4

    .line 298
    .line 299
    const/4 v6, 0x2

    .line 300
    aput-object v7, v15, v6

    .line 301
    .line 302
    const/4 v6, 0x3

    .line 303
    aput-object v14, v15, v6

    .line 304
    .line 305
    move-object/from16 v7, p2

    .line 306
    .line 307
    invoke-static {v7, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v14

    .line 311
    invoke-interface {v10, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_7
    move-object v7, v6

    .line 316
    :goto_5
    iget-object v14, v1, Lvd/v;->k:Lfd/x;

    .line 317
    .line 318
    invoke-virtual {v12}, Lvd/t;->J()I

    .line 319
    .line 320
    .line 321
    move-result v15

    .line 322
    iget-wide v4, v1, Lvd/v;->g:J

    .line 323
    .line 324
    sub-int v6, v0, v3

    .line 325
    .line 326
    iput v15, v14, Lfd/x;->G:I

    .line 327
    .line 328
    const-wide v18, 0xffffffffL

    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    and-long v4, v4, v18

    .line 334
    .line 335
    long-to-int v5, v4

    .line 336
    iput v5, v14, Lfd/x;->I:I

    .line 337
    .line 338
    iput v6, v14, Lfd/x;->K:I

    .line 339
    .line 340
    iput-object v2, v14, Lfd/x;->M:[B

    .line 341
    .line 342
    iput v11, v14, Lfd/x;->L:I

    .line 343
    .line 344
    iput v3, v14, Lfd/x;->H:I

    .line 345
    .line 346
    const/4 v4, 0x0

    .line 347
    iput-object v4, v14, Led/c;->v:Led/b;

    .line 348
    .line 349
    iget-object v4, v1, Lvd/v;->k:Lfd/x;

    .line 350
    .line 351
    iget-object v6, v1, Lvd/v;->l:Lfd/a0;

    .line 352
    .line 353
    const/4 v5, 0x0

    .line 354
    new-array v14, v5, [Lvd/l;

    .line 355
    .line 356
    invoke-virtual {v13, v4, v6, v14}, Lvd/g0;->Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;

    .line 357
    .line 358
    .line 359
    iget-object v4, v1, Lvd/v;->l:Lfd/a0;

    .line 360
    .line 361
    iget-wide v14, v4, Lfd/a0;->G:J

    .line 362
    .line 363
    iget-wide v5, v1, Lvd/v;->g:J

    .line 364
    .line 365
    add-long/2addr v5, v14

    .line 366
    iput-wide v5, v1, Lvd/v;->g:J

    .line 367
    .line 368
    int-to-long v5, v0

    .line 369
    sub-long/2addr v5, v14

    .line 370
    long-to-int v0, v5

    .line 371
    int-to-long v5, v11

    .line 372
    add-long/2addr v5, v14

    .line 373
    long-to-int v6, v5

    .line 374
    invoke-interface {v10}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    if-eqz v5, :cond_8

    .line 379
    .line 380
    iget-wide v14, v1, Lvd/v;->g:J

    .line 381
    .line 382
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    sub-int v11, v0, v3

    .line 387
    .line 388
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 389
    .line 390
    .line 391
    move-result-object v11

    .line 392
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    .line 394
    .line 395
    move-result-object v14

    .line 396
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    const/4 v15, 0x4

    .line 401
    new-array v4, v15, [Ljava/lang/Object;

    .line 402
    .line 403
    const/16 v17, 0x0

    .line 404
    .line 405
    aput-object v5, v4, v17

    .line 406
    .line 407
    const/16 v17, 0x1

    .line 408
    .line 409
    aput-object v11, v4, v17

    .line 410
    .line 411
    const/4 v11, 0x4

    .line 412
    const/16 v16, 0x2

    .line 413
    .line 414
    aput-object v14, v4, v16

    .line 415
    .line 416
    const/4 v14, 0x3

    .line 417
    aput-object v3, v4, v14

    .line 418
    .line 419
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    invoke-interface {v10, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 424
    .line 425
    .line 426
    goto :goto_6

    .line 427
    :cond_8
    const/4 v11, 0x4

    .line 428
    const/4 v14, 0x3

    .line 429
    const/16 v16, 0x2

    .line 430
    .line 431
    :goto_6
    move v3, v6

    .line 432
    :goto_7
    if-gtz v0, :cond_9

    .line 433
    .line 434
    :try_start_4
    invoke-virtual {v13}, Lvd/g0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 435
    .line 436
    .line 437
    invoke-virtual {v12}, Lvd/t;->M()V

    .line 438
    .line 439
    .line 440
    return-void

    .line 441
    :catchall_1
    move-exception v0

    .line 442
    move-object v2, v0

    .line 443
    goto :goto_a

    .line 444
    :cond_9
    move v11, v3

    .line 445
    const/4 v7, 0x1

    .line 446
    goto/16 :goto_0

    .line 447
    .line 448
    :goto_8
    :try_start_5
    invoke-virtual {v13}, Lvd/g0;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 449
    .line 450
    .line 451
    goto :goto_9

    .line 452
    :catchall_2
    move-exception v0

    .line 453
    move-object v3, v0

    .line 454
    const/4 v4, 0x1

    .line 455
    :try_start_6
    new-array v0, v4, [Ljava/lang/Class;

    .line 456
    .line 457
    const/4 v5, 0x0

    .line 458
    aput-object v9, v0, v5

    .line 459
    .line 460
    invoke-virtual {v9, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    new-array v6, v4, [Ljava/lang/Object;

    .line 465
    .line 466
    aput-object v3, v6, v5

    .line 467
    .line 468
    invoke-virtual {v0, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 469
    .line 470
    .line 471
    :catch_0
    :goto_9
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 472
    :goto_a
    if-eqz v12, :cond_a

    .line 473
    .line 474
    :try_start_8
    invoke-virtual {v12}, Lvd/t;->M()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 475
    .line 476
    .line 477
    goto :goto_b

    .line 478
    :catchall_3
    move-exception v0

    .line 479
    move-object v3, v0

    .line 480
    const/4 v4, 0x1

    .line 481
    :try_start_9
    new-array v0, v4, [Ljava/lang/Class;

    .line 482
    .line 483
    const/4 v5, 0x0

    .line 484
    aput-object v9, v0, v5

    .line 485
    .line 486
    invoke-virtual {v9, v8, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    new-array v4, v4, [Ljava/lang/Object;

    .line 491
    .line 492
    aput-object v3, v4, v5

    .line 493
    .line 494
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 495
    .line 496
    .line 497
    :catch_1
    :cond_a
    :goto_b
    throw v2

    .line 498
    :cond_b
    new-instance v0, Ljava/io/IOException;

    .line 499
    .line 500
    const-string v2, "Bad file descriptor"

    .line 501
    .line 502
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    goto :goto_d

    .line 506
    :goto_c
    throw v0

    .line 507
    :goto_d
    goto :goto_c
.end method

.method public close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lvd/v;->a:Lvd/s;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    iget-object v4, p0, Lvd/v;->m:Lvd/t;

    .line 7
    .line 8
    invoke-virtual {v4}, Lvd/t;->L()Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    iget-object v4, p0, Lvd/v;->m:Lvd/t;

    .line 15
    .line 16
    invoke-virtual {v4}, Lvd/t;->M()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v4

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iput-wide v1, v0, Lvd/s;->b:J

    .line 23
    .line 24
    iput-wide v1, v0, Lvd/s;->d:J

    .line 25
    .line 26
    iput-object v3, p0, Lvd/v;->h:[B

    .line 27
    .line 28
    return-void

    .line 29
    :goto_1
    iput-wide v1, v0, Lvd/s;->b:J

    .line 30
    .line 31
    iput-wide v1, v0, Lvd/s;->d:J

    .line 32
    .line 33
    iput-object v3, p0, Lvd/v;->h:[B

    .line 34
    .line 35
    throw v4
.end method

.method public declared-synchronized r()Lvd/t;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lvd/v;->m:Lvd/t;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lvd/t;->L()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lvd/v;->a:Lvd/s;

    .line 18
    .line 19
    iget v3, p0, Lvd/v;->c:I

    .line 20
    .line 21
    iget v4, p0, Lvd/v;->d:I

    .line 22
    .line 23
    iget v5, p0, Lvd/v;->n:I

    .line 24
    .line 25
    iget-object v0, v1, Lvd/s;->g:Lvd/y;

    .line 26
    .line 27
    invoke-virtual {v0}, Lvd/y;->f()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v6, 0x0

    .line 32
    invoke-virtual/range {v1 .. v6}, Lvd/s;->M(Ljava/lang/String;IIII)Lvd/t;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lvd/t;->r()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lvd/v;->m:Lvd/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :try_start_1
    sget-object v0, Lvd/v;->q:Lorg/slf4j/Logger;

    .line 46
    .line 47
    const-string v1, "File already open"

    .line 48
    .line 49
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lvd/v;->m:Lvd/t;

    .line 53
    .line 54
    invoke-virtual {v0}, Lvd/t;->r()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    monitor-exit p0

    .line 58
    return-object v0

    .line 59
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    throw v0
.end method

.method public final write(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvd/v;->h:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v1, p1, v1, v0}, Lvd/v;->J(III[B)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0, v1, p1}, Lvd/v;->J(III[B)V

    return-void
.end method

.method public final write([BII)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p2, p3, v0, p1}, Lvd/v;->J(III[B)V

    return-void
.end method
