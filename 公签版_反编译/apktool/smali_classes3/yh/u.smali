.class public final Lyh/u;
.super Lyh/p;
.source "SourceFile"


# instance fields
.field public final a:Lyh/b;

.field public b:Lyh/q;

.field public c:Ldi/a;

.field public d:Lfi/e;

.field public e:Lei/h;

.field public final f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Z

.field public l:Ljava/io/IOException;

.field public final m:[B

.field public final n:[B


# direct methods
.method public constructor <init>(Lyh/q;Lyh/t;Lyh/b;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    move-object/from16 v12, p3

    .line 5
    .line 6
    invoke-direct {p0}, Lyh/p;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, v0, Lyh/u;->g:Z

    .line 11
    .line 12
    iput-boolean v2, v0, Lyh/u;->h:Z

    .line 13
    .line 14
    iput-boolean v2, v0, Lyh/u;->i:Z

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    iput v3, v0, Lyh/u;->j:I

    .line 18
    .line 19
    iput-boolean v3, v0, Lyh/u;->k:Z

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    iput-object v4, v0, Lyh/u;->l:Ljava/io/IOException;

    .line 23
    .line 24
    const/4 v4, 0x6

    .line 25
    new-array v4, v4, [B

    .line 26
    .line 27
    iput-object v4, v0, Lyh/u;->m:[B

    .line 28
    .line 29
    new-array v4, v2, [B

    .line 30
    .line 31
    iput-object v4, v0, Lyh/u;->n:[B

    .line 32
    .line 33
    iput-object v12, v0, Lyh/u;->a:Lyh/b;

    .line 34
    .line 35
    move-object/from16 v4, p1

    .line 36
    .line 37
    iput-object v4, v0, Lyh/u;->b:Lyh/q;

    .line 38
    .line 39
    new-instance v4, Lfi/e;

    .line 40
    .line 41
    invoke-direct {v4, v12}, Lfi/e;-><init>(Lyh/b;)V

    .line 42
    .line 43
    .line 44
    iput-object v4, v0, Lyh/u;->d:Lfi/e;

    .line 45
    .line 46
    iget v7, v1, Lyh/t;->a:I

    .line 47
    .line 48
    const/high16 v5, 0x10000

    .line 49
    .line 50
    if-le v5, v7, :cond_0

    .line 51
    .line 52
    sub-int/2addr v5, v7

    .line 53
    move v8, v5

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 v8, 0x0

    .line 56
    :goto_0
    iget v5, v1, Lyh/t;->b:I

    .line 57
    .line 58
    iget v6, v1, Lyh/t;->c:I

    .line 59
    .line 60
    iget v9, v1, Lyh/t;->d:I

    .line 61
    .line 62
    iget v3, v1, Lyh/t;->e:I

    .line 63
    .line 64
    iget v10, v1, Lyh/t;->f:I

    .line 65
    .line 66
    iget v11, v1, Lyh/t;->g:I

    .line 67
    .line 68
    iget v13, v1, Lyh/t;->h:I

    .line 69
    .line 70
    if-eq v3, v2, :cond_2

    .line 71
    .line 72
    const/4 v2, 0x2

    .line 73
    if-ne v3, v2, :cond_1

    .line 74
    .line 75
    new-instance v14, Lei/j;

    .line 76
    .line 77
    move-object v2, v14

    .line 78
    move-object v3, v4

    .line 79
    move v4, v5

    .line 80
    move v5, v6

    .line 81
    move v6, v9

    .line 82
    move v9, v10

    .line 83
    move v10, v11

    .line 84
    move v11, v13

    .line 85
    move-object/from16 v12, p3

    .line 86
    .line 87
    invoke-direct/range {v2 .. v12}, Lei/j;-><init>(Lfi/d;IIIIIIIILyh/b;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 94
    .line 95
    .line 96
    throw v1

    .line 97
    :cond_2
    new-instance v14, Lei/i;

    .line 98
    .line 99
    move-object v2, v14

    .line 100
    move-object v3, v4

    .line 101
    move v4, v5

    .line 102
    move v5, v6

    .line 103
    move v6, v9

    .line 104
    move v9, v10

    .line 105
    move v10, v11

    .line 106
    move v11, v13

    .line 107
    move-object/from16 v12, p3

    .line 108
    .line 109
    invoke-direct/range {v2 .. v12}, Lei/i;-><init>(Lfi/d;IIIIIIIILyh/b;)V

    .line 110
    .line 111
    .line 112
    :goto_1
    iput-object v14, v0, Lyh/u;->e:Lei/h;

    .line 113
    .line 114
    iget-object v2, v14, Lei/h;->n:Ldi/a;

    .line 115
    .line 116
    iput-object v2, v0, Lyh/u;->c:Ldi/a;

    .line 117
    .line 118
    iget v2, v1, Lyh/t;->d:I

    .line 119
    .line 120
    mul-int/lit8 v2, v2, 0x5

    .line 121
    .line 122
    iget v3, v1, Lyh/t;->c:I

    .line 123
    .line 124
    add-int/2addr v2, v3

    .line 125
    mul-int/lit8 v2, v2, 0x9

    .line 126
    .line 127
    iget v1, v1, Lyh/t;->b:I

    .line 128
    .line 129
    add-int/2addr v2, v1

    .line 130
    iput v2, v0, Lyh/u;->f:I

    .line 131
    .line 132
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyh/u;->l:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lyh/u;->c:Ldi/a;

    .line 6
    .line 7
    iget v1, v0, Ldi/a;->j:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    iput v1, v0, Ldi/a;->h:I

    .line 12
    .line 13
    iput-boolean v2, v0, Ldi/a;->i:Z

    .line 14
    .line 15
    invoke-virtual {v0}, Ldi/a;->h()V

    .line 16
    .line 17
    .line 18
    :goto_0
    :try_start_0
    iget v0, p0, Lyh/u;->j:I

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lyh/u;->e:Lei/h;

    .line 23
    .line 24
    invoke-virtual {v0}, Lei/h;->b()Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lyh/u;->r()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object v0, p0, Lyh/u;->b:Lyh/q;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lyh/q;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    iput-boolean v2, p0, Lyh/u;->k:Z

    .line 40
    .line 41
    iget-object v0, p0, Lyh/u;->e:Lei/h;

    .line 42
    .line 43
    iget-object v1, p0, Lyh/u;->a:Lyh/b;

    .line 44
    .line 45
    iget-object v0, v0, Lei/h;->n:Ldi/a;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ldi/a;->i(Lyh/b;)V

    .line 48
    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lyh/u;->e:Lei/h;

    .line 52
    .line 53
    iput-object v0, p0, Lyh/u;->c:Ldi/a;

    .line 54
    .line 55
    iget-object v2, p0, Lyh/u;->d:Lfi/e;

    .line 56
    .line 57
    iget-object v2, v2, Lfi/e;->q:[B

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Lyh/b;->c([B)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lyh/u;->d:Lfi/e;

    .line 63
    .line 64
    return-void

    .line 65
    :goto_1
    iput-object v0, p0, Lyh/u;->l:Ljava/io/IOException;

    .line 66
    .line 67
    throw v0

    .line 68
    :cond_1
    goto :goto_3

    .line 69
    :goto_2
    throw v0

    .line 70
    :goto_3
    goto :goto_2
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyh/u;->b:Lyh/q;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lyh/u;->k:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lyh/u;->A()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, p0, Lyh/u;->b:Lyh/q;

    .line 13
    .line 14
    invoke-virtual {v0}, Lyh/q;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_1
    move-exception v0

    .line 19
    iget-object v1, p0, Lyh/u;->l:Ljava/io/IOException;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iput-object v0, p0, Lyh/u;->l:Ljava/io/IOException;

    .line 24
    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lyh/u;->b:Lyh/q;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lyh/u;->l:Ljava/io/IOException;

    .line 29
    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    return-void

    .line 33
    :cond_3
    throw v0
.end method

.method public final flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lyh/u;->l:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lyh/u;->k:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lyh/u;->c:Ldi/a;

    .line 10
    .line 11
    iget v1, v0, Ldi/a;->j:I

    .line 12
    .line 13
    add-int/lit8 v1, v1, -0x1

    .line 14
    .line 15
    iput v1, v0, Ldi/a;->h:I

    .line 16
    .line 17
    invoke-virtual {v0}, Ldi/a;->h()V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget v0, p0, Lyh/u;->j:I

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lyh/u;->e:Lei/h;

    .line 25
    .line 26
    invoke-virtual {v0}, Lei/h;->b()Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lyh/u;->r()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v0, p0, Lyh/u;->b:Lyh/q;

    .line 36
    .line 37
    invoke-virtual {v0}, Lyh/q;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :goto_1
    iput-object v0, p0, Lyh/u;->l:Ljava/io/IOException;

    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    new-instance v0, Lyh/f0;

    .line 45
    .line 46
    const-string v1, "Stream finished or closed"

    .line 47
    .line 48
    invoke-direct {v0, v1}, Lyh/f0;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_2
    goto :goto_3

    .line 53
    :goto_2
    throw v0

    .line 54
    :goto_3
    goto :goto_2
.end method

.method public final r()V
    .locals 11

    .line 1
    iget-object v0, p0, Lyh/u;->d:Lfi/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    const/4 v2, 0x5

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v0}, Lfi/d;->t0()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    new-instance v0, Ljava/lang/Error;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_0
    iget v0, v0, Lfi/e;->r:I

    .line 23
    .line 24
    iget-object v1, p0, Lyh/u;->e:Lei/h;

    .line 25
    .line 26
    iget v2, v1, Lei/h;->A:I

    .line 27
    .line 28
    add-int/lit8 v3, v0, 0x2

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    const/4 v5, 0x1

    .line 32
    const/4 v6, 0x3

    .line 33
    iget-object v7, p0, Lyh/u;->m:[B

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    if-ge v3, v2, :cond_5

    .line 37
    .line 38
    iget-boolean v1, p0, Lyh/u;->i:Z

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-boolean v3, p0, Lyh/u;->g:Z

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    const/16 v3, 0xe0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/16 v3, 0xc0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-boolean v3, p0, Lyh/u;->h:Z

    .line 53
    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    const/16 v3, 0xa0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const/16 v3, 0x80

    .line 60
    .line 61
    :goto_1
    add-int/lit8 v9, v2, -0x1

    .line 62
    .line 63
    ushr-int/lit8 v10, v9, 0x10

    .line 64
    .line 65
    or-int/2addr v3, v10

    .line 66
    int-to-byte v3, v3

    .line 67
    aput-byte v3, v7, v8

    .line 68
    .line 69
    ushr-int/lit8 v3, v9, 0x8

    .line 70
    .line 71
    int-to-byte v3, v3

    .line 72
    aput-byte v3, v7, v5

    .line 73
    .line 74
    int-to-byte v3, v9

    .line 75
    aput-byte v3, v7, v4

    .line 76
    .line 77
    sub-int/2addr v0, v5

    .line 78
    ushr-int/lit8 v3, v0, 0x8

    .line 79
    .line 80
    int-to-byte v3, v3

    .line 81
    aput-byte v3, v7, v6

    .line 82
    .line 83
    const/4 v3, 0x4

    .line 84
    int-to-byte v0, v0

    .line 85
    aput-byte v0, v7, v3

    .line 86
    .line 87
    const/4 v0, 0x5

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    iget v1, p0, Lyh/u;->f:I

    .line 91
    .line 92
    int-to-byte v1, v1

    .line 93
    aput-byte v1, v7, v0

    .line 94
    .line 95
    iget-object v0, p0, Lyh/u;->b:Lyh/q;

    .line 96
    .line 97
    const/4 v1, 0x6

    .line 98
    invoke-virtual {v0, v7, v8, v1}, Lyh/q;->write([BII)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    iget-object v1, p0, Lyh/u;->b:Lyh/q;

    .line 103
    .line 104
    invoke-virtual {v1, v7, v8, v0}, Lyh/q;->write([BII)V

    .line 105
    .line 106
    .line 107
    :goto_2
    iget-object v0, p0, Lyh/u;->d:Lfi/e;

    .line 108
    .line 109
    iget-object v1, p0, Lyh/u;->b:Lyh/q;

    .line 110
    .line 111
    iget v3, v0, Lfi/e;->r:I

    .line 112
    .line 113
    iget-object v0, v0, Lfi/e;->q:[B

    .line 114
    .line 115
    invoke-virtual {v1, v0, v8, v3}, Lyh/q;->write([BII)V

    .line 116
    .line 117
    .line 118
    iput-boolean v8, p0, Lyh/u;->i:Z

    .line 119
    .line 120
    iput-boolean v8, p0, Lyh/u;->h:Z

    .line 121
    .line 122
    iput-boolean v8, p0, Lyh/u;->g:Z

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_5
    invoke-virtual {v1}, Lei/h;->a()V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lyh/u;->e:Lei/h;

    .line 129
    .line 130
    iget v2, v0, Lei/h;->A:I

    .line 131
    .line 132
    move v0, v2

    .line 133
    :goto_3
    if-lez v0, :cond_7

    .line 134
    .line 135
    const/high16 v1, 0x10000

    .line 136
    .line 137
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    iget-boolean v3, p0, Lyh/u;->g:Z

    .line 142
    .line 143
    if-eqz v3, :cond_6

    .line 144
    .line 145
    const/4 v3, 0x1

    .line 146
    goto :goto_4

    .line 147
    :cond_6
    const/4 v3, 0x2

    .line 148
    :goto_4
    int-to-byte v3, v3

    .line 149
    aput-byte v3, v7, v8

    .line 150
    .line 151
    add-int/lit8 v3, v1, -0x1

    .line 152
    .line 153
    ushr-int/lit8 v9, v3, 0x8

    .line 154
    .line 155
    int-to-byte v9, v9

    .line 156
    aput-byte v9, v7, v5

    .line 157
    .line 158
    int-to-byte v3, v3

    .line 159
    aput-byte v3, v7, v4

    .line 160
    .line 161
    iget-object v3, p0, Lyh/u;->b:Lyh/q;

    .line 162
    .line 163
    invoke-virtual {v3, v7, v8, v6}, Lyh/q;->write([BII)V

    .line 164
    .line 165
    .line 166
    iget-object v3, p0, Lyh/u;->c:Ldi/a;

    .line 167
    .line 168
    iget-object v9, p0, Lyh/u;->b:Lyh/q;

    .line 169
    .line 170
    iget v10, v3, Ldi/a;->g:I

    .line 171
    .line 172
    add-int/2addr v10, v5

    .line 173
    sub-int/2addr v10, v0

    .line 174
    iget-object v3, v3, Ldi/a;->e:[B

    .line 175
    .line 176
    invoke-virtual {v9, v3, v10, v1}, Lyh/q;->write([BII)V

    .line 177
    .line 178
    .line 179
    sub-int/2addr v0, v1

    .line 180
    iput-boolean v8, p0, Lyh/u;->g:Z

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_7
    iput-boolean v5, p0, Lyh/u;->h:Z

    .line 184
    .line 185
    :goto_5
    iget v0, p0, Lyh/u;->j:I

    .line 186
    .line 187
    sub-int/2addr v0, v2

    .line 188
    iput v0, p0, Lyh/u;->j:I

    .line 189
    .line 190
    iget-object v0, p0, Lyh/u;->e:Lei/h;

    .line 191
    .line 192
    iput v8, v0, Lei/h;->A:I

    .line 193
    .line 194
    iget-object v0, p0, Lyh/u;->d:Lfi/e;

    .line 195
    .line 196
    invoke-virtual {v0}, Lfi/e;->v0()V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public final write(I)V
    .locals 2

    int-to-byte p1, p1

    .line 1
    iget-object v0, p0, Lyh/u;->n:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lyh/u;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    if-ltz p2, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    if-ltz v0, :cond_4

    .line 3
    array-length v1, p1

    if-gt v0, v1, :cond_4

    .line 4
    iget-object v0, p0, Lyh/u;->l:Ljava/io/IOException;

    if-nez v0, :cond_3

    .line 5
    iget-boolean v0, p0, Lyh/u;->k:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    .line 6
    :try_start_0
    iget-object v0, p0, Lyh/u;->c:Ldi/a;

    invoke-virtual {v0, p2, p3, p1}, Ldi/a;->a(II[B)I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 7
    iget v1, p0, Lyh/u;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lyh/u;->j:I

    .line 8
    iget-object v0, p0, Lyh/u;->e:Lei/h;

    invoke-virtual {v0}, Lei/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lyh/u;->r()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    iput-object p1, p0, Lyh/u;->l:Ljava/io/IOException;

    .line 11
    throw p1

    :cond_1
    return-void

    .line 12
    :cond_2
    new-instance p1, Lyh/f0;

    const-string p2, "Stream finished or closed"

    invoke-direct {p1, p2}, Lyh/f0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_3
    throw v0

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
