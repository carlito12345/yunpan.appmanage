.class public abstract Lce/a;
.super Lce/q;
.source "SourceFile"


# instance fields
.field public C:B

.field public D:I

.field public E:Lce/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lce/q;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput-byte v0, p0, Lce/a;->C:B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lce/a;->D:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lce/a;->E:Lce/q;

    return-void
.end method

.method public constructor <init>(Lce/q;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lce/q;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lce/a;->C:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lce/a;->D:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lce/a;->E:Lce/q;

    if-eqz p1, :cond_0

    .line 9
    iput-object p1, p0, Lce/a;->E:Lce/q;

    .line 10
    iget-byte p1, p1, Lce/q;->c:B

    iput-byte p1, p0, Lce/a;->C:B

    :cond_0
    return-void
.end method


# virtual methods
.method public final b([B)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lce/q;->e:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lce/q;->e([B)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x24

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lce/a;->w(I[B)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    add-int/lit8 p1, p1, 0x20

    .line 14
    .line 15
    iput p1, p0, Lce/q;->f:I

    .line 16
    .line 17
    return-void
.end method

.method public final c([B)I
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lce/q;->e:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lce/q;->p([B)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x24

    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Lce/a;->x(I[B)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v4, v0, 0x20

    .line 14
    .line 15
    iput v4, p0, Lce/q;->f:I

    .line 16
    .line 17
    iget-object v1, p0, Lce/q;->y:Lce/r;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget v3, p0, Lce/q;->e:I

    .line 22
    .line 23
    iget-object v6, p0, Lce/q;->z:Lce/q;

    .line 24
    .line 25
    move-object v2, p1

    .line 26
    move-object v5, p0

    .line 27
    invoke-virtual/range {v1 .. v6}, Lce/r;->a([BIILce/q;Lce/q;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget p1, p0, Lce/q;->f:I

    .line 31
    .line 32
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lce/q;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ",andxCommand=0x"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-byte v2, p0, Lce/a;->C:B

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    const-string v4, ",andxOffset="

    .line 24
    .line 25
    invoke-static {v2, v3, v4, v1}, Landroid/support/v4/media/session/a;->y(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 26
    .line 27
    .line 28
    iget v2, p0, Lce/a;->D:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method

.method public v(B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final w(I[B)I
    .locals 6

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    aget-byte v1, p2, p1

    .line 4
    .line 5
    iput v1, p0, Lce/q;->n:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x2

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    aget-byte v1, p2, v0

    .line 12
    .line 13
    iput-byte v1, p0, Lce/a;->C:B

    .line 14
    .line 15
    add-int/lit8 v1, p1, 0x3

    .line 16
    .line 17
    invoke-static {v1, p2}, Lce/q;->f(I[B)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, p0, Lce/a;->D:I

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iput-byte v2, p0, Lce/a;->C:B

    .line 26
    .line 27
    :cond_0
    iget v1, p0, Lce/q;->n:I

    .line 28
    .line 29
    if-le v1, v3, :cond_1

    .line 30
    .line 31
    add-int/lit8 v1, p1, 0x5

    .line 32
    .line 33
    invoke-virtual {p0, v1, p2}, Lce/q;->i(I[B)I

    .line 34
    .line 35
    .line 36
    iget-byte v1, p0, Lce/q;->c:B

    .line 37
    .line 38
    const/16 v4, -0x5e

    .line 39
    .line 40
    if-ne v1, v4, :cond_1

    .line 41
    .line 42
    move-object v1, p0

    .line 43
    check-cast v1, Lce/y;

    .line 44
    .line 45
    iget-boolean v1, v1, Lce/y;->V:Z

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget v1, p0, Lce/q;->n:I

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x8

    .line 52
    .line 53
    iput v1, p0, Lce/q;->n:I

    .line 54
    .line 55
    :cond_1
    iget v1, p0, Lce/q;->n:I

    .line 56
    .line 57
    mul-int/lit8 v1, v1, 0x2

    .line 58
    .line 59
    add-int/2addr v0, v1

    .line 60
    :cond_2
    invoke-static {v0, p2}, Lce/q;->f(I[B)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iput v1, p0, Lce/q;->p:I

    .line 65
    .line 66
    add-int/2addr v0, v3

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0, v0, p2}, Lce/q;->d(I[B)I

    .line 70
    .line 71
    .line 72
    iget v1, p0, Lce/q;->p:I

    .line 73
    .line 74
    add-int/2addr v0, v1

    .line 75
    :cond_3
    iget v1, p0, Lce/q;->h:I

    .line 76
    .line 77
    if-nez v1, :cond_9

    .line 78
    .line 79
    iget-byte v4, p0, Lce/a;->C:B

    .line 80
    .line 81
    if-ne v4, v2, :cond_4

    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :cond_4
    iget-object v0, p0, Lce/a;->E:Lce/q;

    .line 86
    .line 87
    if-eqz v0, :cond_8

    .line 88
    .line 89
    iget v2, p0, Lce/q;->e:I

    .line 90
    .line 91
    iget v5, p0, Lce/a;->D:I

    .line 92
    .line 93
    add-int/2addr v5, v2

    .line 94
    iput v2, v0, Lce/q;->e:I

    .line 95
    .line 96
    iput-byte v4, v0, Lce/q;->c:B

    .line 97
    .line 98
    iput v1, v0, Lce/q;->h:I

    .line 99
    .line 100
    iget-byte v1, p0, Lce/q;->d:B

    .line 101
    .line 102
    iput-byte v1, v0, Lce/q;->d:B

    .line 103
    .line 104
    iget v1, p0, Lce/q;->i:I

    .line 105
    .line 106
    iput v1, v0, Lce/q;->i:I

    .line 107
    .line 108
    iget v1, p0, Lce/q;->j:I

    .line 109
    .line 110
    iput v1, v0, Lce/q;->j:I

    .line 111
    .line 112
    iget v1, p0, Lce/q;->k:I

    .line 113
    .line 114
    iput v1, v0, Lce/q;->k:I

    .line 115
    .line 116
    iget v1, p0, Lce/q;->l:I

    .line 117
    .line 118
    iput v1, v0, Lce/q;->l:I

    .line 119
    .line 120
    iget v1, p0, Lce/q;->m:I

    .line 121
    .line 122
    iput v1, v0, Lce/q;->m:I

    .line 123
    .line 124
    iget-boolean v1, p0, Lce/q;->q:Z

    .line 125
    .line 126
    iput-boolean v1, v0, Lce/q;->q:Z

    .line 127
    .line 128
    instance-of v1, v0, Lce/a;

    .line 129
    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    check-cast v0, Lce/a;

    .line 133
    .line 134
    invoke-virtual {v0, v5, p2}, Lce/a;->w(I[B)I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    add-int/2addr p2, v5

    .line 139
    move v0, p2

    .line 140
    goto :goto_0

    .line 141
    :cond_5
    add-int/lit8 v1, v5, 0x1

    .line 142
    .line 143
    iget v2, v0, Lce/q;->n:I

    .line 144
    .line 145
    and-int/lit16 v4, v2, 0xff

    .line 146
    .line 147
    int-to-byte v4, v4

    .line 148
    aput-byte v4, p2, v5

    .line 149
    .line 150
    if-eqz v2, :cond_6

    .line 151
    .line 152
    if-le v2, v3, :cond_6

    .line 153
    .line 154
    invoke-virtual {v0, v1, p2}, Lce/q;->i(I[B)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    add-int/2addr v1, v0

    .line 159
    :cond_6
    iget-object v0, p0, Lce/a;->E:Lce/q;

    .line 160
    .line 161
    invoke-static {v1, p2}, Lce/q;->f(I[B)I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    iput v2, v0, Lce/q;->p:I

    .line 166
    .line 167
    add-int/2addr v1, v3

    .line 168
    iget-object v0, p0, Lce/a;->E:Lce/q;

    .line 169
    .line 170
    iget v2, v0, Lce/q;->p:I

    .line 171
    .line 172
    if-eqz v2, :cond_7

    .line 173
    .line 174
    invoke-virtual {v0, v1, p2}, Lce/q;->d(I[B)I

    .line 175
    .line 176
    .line 177
    iget-object p2, p0, Lce/a;->E:Lce/q;

    .line 178
    .line 179
    iget p2, p2, Lce/q;->p:I

    .line 180
    .line 181
    add-int/2addr v1, p2

    .line 182
    :cond_7
    move v0, v1

    .line 183
    :goto_0
    iget-object p2, p0, Lce/a;->E:Lce/q;

    .line 184
    .line 185
    const/4 v1, 0x1

    .line 186
    iput-boolean v1, p2, Lce/q;->r:Z

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_8
    iput-byte v2, p0, Lce/a;->C:B

    .line 190
    .line 191
    new-instance p1, Ljava/lang/RuntimeException;

    .line 192
    .line 193
    const-string p2, "no andx command supplied with response"

    .line 194
    .line 195
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p1

    .line 199
    :cond_9
    :goto_1
    iput-byte v2, p0, Lce/a;->C:B

    .line 200
    .line 201
    const/4 p2, 0x0

    .line 202
    iput-object p2, p0, Lce/a;->E:Lce/q;

    .line 203
    .line 204
    :goto_2
    sub-int/2addr v0, p1

    .line 205
    return v0
.end method

.method public final x(I[B)I
    .locals 6

    .line 1
    add-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    add-int/lit8 v1, p1, 0x5

    .line 4
    .line 5
    invoke-virtual {p0, v1, p2}, Lce/q;->t(I[B)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v2, v1, 0x4

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x5

    .line 12
    .line 13
    add-int/2addr v1, p1

    .line 14
    div-int/lit8 v2, v2, 0x2

    .line 15
    .line 16
    iput v2, p0, Lce/q;->n:I

    .line 17
    .line 18
    and-int/lit16 v2, v2, 0xff

    .line 19
    .line 20
    int-to-byte v2, v2

    .line 21
    aput-byte v2, p2, p1

    .line 22
    .line 23
    add-int/lit8 v2, v1, 0x2

    .line 24
    .line 25
    invoke-virtual {p0, v2, p2}, Lce/q;->o(I[B)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iput v3, p0, Lce/q;->p:I

    .line 30
    .line 31
    add-int/lit8 v4, v1, 0x1

    .line 32
    .line 33
    and-int/lit16 v5, v3, 0xff

    .line 34
    .line 35
    int-to-byte v5, v5

    .line 36
    aput-byte v5, p2, v1

    .line 37
    .line 38
    shr-int/lit8 v1, v3, 0x8

    .line 39
    .line 40
    and-int/lit16 v1, v1, 0xff

    .line 41
    .line 42
    int-to-byte v1, v1

    .line 43
    aput-byte v1, p2, v4

    .line 44
    .line 45
    add-int/2addr v2, v3

    .line 46
    iget-object v1, p0, Lce/a;->E:Lce/q;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    sget-boolean v4, Lce/q0;->l0:Z

    .line 52
    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    iget v4, p0, Lce/q;->g:I

    .line 56
    .line 57
    iget-byte v1, v1, Lce/q;->c:B

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Lce/a;->v(B)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-lt v4, v1, :cond_0

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    iget-object v1, p0, Lce/a;->E:Lce/q;

    .line 67
    .line 68
    iget v4, p0, Lce/q;->g:I

    .line 69
    .line 70
    add-int/lit8 v4, v4, 0x1

    .line 71
    .line 72
    iput v4, v1, Lce/q;->g:I

    .line 73
    .line 74
    add-int/lit8 v1, p1, 0x1

    .line 75
    .line 76
    iget-byte v4, p0, Lce/a;->C:B

    .line 77
    .line 78
    aput-byte v4, p2, v1

    .line 79
    .line 80
    add-int/lit8 v1, p1, 0x2

    .line 81
    .line 82
    aput-byte v3, p2, v1

    .line 83
    .line 84
    iget v1, p0, Lce/q;->e:I

    .line 85
    .line 86
    sub-int v1, v2, v1

    .line 87
    .line 88
    iput v1, p0, Lce/a;->D:I

    .line 89
    .line 90
    int-to-long v3, v1

    .line 91
    invoke-static {v3, v4, p2, v0}, Lce/q;->q(J[BI)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lce/a;->E:Lce/q;

    .line 95
    .line 96
    iget-boolean v1, p0, Lce/q;->q:Z

    .line 97
    .line 98
    iput-boolean v1, v0, Lce/q;->q:Z

    .line 99
    .line 100
    instance-of v1, v0, Lce/a;

    .line 101
    .line 102
    if-eqz v1, :cond_1

    .line 103
    .line 104
    iget v1, p0, Lce/q;->l:I

    .line 105
    .line 106
    iput v1, v0, Lce/q;->l:I

    .line 107
    .line 108
    check-cast v0, Lce/a;

    .line 109
    .line 110
    invoke-virtual {v0, v2, p2}, Lce/a;->x(I[B)I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    add-int/2addr p2, v2

    .line 115
    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v0, v2, p2}, Lce/q;->t(I[B)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    iput v1, v0, Lce/q;->n:I

    .line 121
    .line 122
    iget-object v0, p0, Lce/a;->E:Lce/q;

    .line 123
    .line 124
    iget v1, v0, Lce/q;->n:I

    .line 125
    .line 126
    add-int/lit8 v3, v1, 0x1

    .line 127
    .line 128
    add-int/2addr v3, v2

    .line 129
    div-int/lit8 v1, v1, 0x2

    .line 130
    .line 131
    iput v1, v0, Lce/q;->n:I

    .line 132
    .line 133
    and-int/lit16 v1, v1, 0xff

    .line 134
    .line 135
    int-to-byte v1, v1

    .line 136
    aput-byte v1, p2, v2

    .line 137
    .line 138
    add-int/lit8 v1, v3, 0x2

    .line 139
    .line 140
    invoke-virtual {v0, v1, p2}, Lce/q;->o(I[B)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    iput v2, v0, Lce/q;->p:I

    .line 145
    .line 146
    add-int/lit8 v0, v3, 0x1

    .line 147
    .line 148
    iget-object v2, p0, Lce/a;->E:Lce/q;

    .line 149
    .line 150
    iget v2, v2, Lce/q;->p:I

    .line 151
    .line 152
    and-int/lit16 v4, v2, 0xff

    .line 153
    .line 154
    int-to-byte v4, v4

    .line 155
    aput-byte v4, p2, v3

    .line 156
    .line 157
    shr-int/lit8 v3, v2, 0x8

    .line 158
    .line 159
    and-int/lit16 v3, v3, 0xff

    .line 160
    .line 161
    int-to-byte v3, v3

    .line 162
    aput-byte v3, p2, v0

    .line 163
    .line 164
    add-int p2, v1, v2

    .line 165
    .line 166
    :goto_0
    sub-int/2addr p2, p1

    .line 167
    return p2

    .line 168
    :cond_2
    :goto_1
    const/4 v1, -0x1

    .line 169
    iput-byte v1, p0, Lce/a;->C:B

    .line 170
    .line 171
    const/4 v4, 0x0

    .line 172
    iput-object v4, p0, Lce/a;->E:Lce/q;

    .line 173
    .line 174
    add-int/lit8 v4, p1, 0x1

    .line 175
    .line 176
    aput-byte v1, p2, v4

    .line 177
    .line 178
    add-int/lit8 v1, p1, 0x2

    .line 179
    .line 180
    aput-byte v3, p2, v1

    .line 181
    .line 182
    const/16 v1, -0x22

    .line 183
    .line 184
    aput-byte v1, p2, v0

    .line 185
    .line 186
    add-int/lit8 v0, p1, 0x4

    .line 187
    .line 188
    aput-byte v1, p2, v0

    .line 189
    .line 190
    sub-int/2addr v2, p1

    .line 191
    return v2
.end method
