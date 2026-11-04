.class public abstract Led/a;
.super Led/c;
.source "SourceFile"


# static fields
.field public static final K:Lorg/slf4j/Logger;


# instance fields
.field public G:B

.field public H:I

.field public I:Led/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Led/a;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Led/a;->K:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lvc/f;BLed/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Led/c;-><init>(Lvc/f;BLjava/lang/String;)V

    const/4 p1, -0x1

    .line 12
    iput-byte p1, p0, Led/a;->G:B

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Led/a;->H:I

    .line 14
    iput-object p3, p0, Led/a;->I:Led/c;

    if-eqz p3, :cond_0

    .line 15
    iget-byte p1, p3, Led/c;->a:B

    int-to-byte p1, p1

    .line 16
    iput-byte p1, p0, Led/a;->G:B

    :cond_0
    return-void
.end method

.method public constructor <init>(Lvc/f;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Led/c;-><init>(Lvc/f;BLjava/lang/String;)V

    const/4 p1, -0x1

    .line 2
    iput-byte p1, p0, Led/a;->G:B

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Led/a;->H:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Led/a;->I:Led/c;

    return-void
.end method

.method public constructor <init>(Lvc/f;Led/c;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Led/c;-><init>(Lvc/f;)V

    const/4 p1, -0x1

    .line 6
    iput-byte p1, p0, Led/a;->G:B

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Led/a;->H:I

    .line 8
    iput-object p2, p0, Led/a;->I:Led/c;

    if-eqz p2, :cond_0

    .line 9
    iget-byte p1, p2, Led/c;->a:B

    int-to-byte p1, p1

    .line 10
    iput-byte p1, p0, Led/a;->G:B

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(I[B)I
    .locals 8

    .line 1
    iput p1, p0, Led/c;->c:I

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Led/c;->p0(I[B)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 v0, p1, 0x20

    .line 7
    .line 8
    invoke-virtual {p0, v0, p2}, Led/a;->u0(I[B)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v1, v0

    .line 13
    sub-int v5, v1, p1

    .line 14
    .line 15
    iput v5, p0, Led/c;->d:I

    .line 16
    .line 17
    iget-object v2, p0, Led/c;->v:Led/b;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iget v4, p0, Led/c;->c:I

    .line 22
    .line 23
    invoke-virtual {p0}, Led/c;->g0()Led/c;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    move-object v3, p2

    .line 28
    move-object v6, p0

    .line 29
    invoke-virtual/range {v2 .. v7}, Led/b;->b([BIILad/b;Lad/b;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget p1, p0, Led/c;->d:I

    .line 33
    .line 34
    return p1
.end method

.method public final decode([B)I
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Led/c;->c:I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Led/c;->j0([B)V

    .line 5
    .line 6
    .line 7
    const/16 v1, 0x24

    .line 8
    .line 9
    invoke-virtual {p0, v1, p1}, Led/a;->t0(I[B)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, 0x20

    .line 14
    .line 15
    iput v1, p0, Led/c;->d:I

    .line 16
    .line 17
    iget-boolean v2, p0, Led/c;->B:Z

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    new-array v2, v1, [B

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Led/c;->n0(II[B)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    new-instance p1, Lad/g;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "Signature verification failed for "

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p1, v0}, Lad/g;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public final getNext()Lad/c;
    .locals 1

    .line 1
    iget-object v0, p0, Led/a;->I:Led/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lad/c;
    .locals 1

    .line 1
    iget-object v0, p0, Led/a;->I:Led/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public s0(Lvc/f;B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final t()Lad/d;
    .locals 1

    .line 1
    iget-object v0, p0, Led/a;->I:Led/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t0(I[B)I
    .locals 7

    .line 1
    add-int/lit8 v0, p1, 0x1

    .line 2
    .line 3
    aget-byte v1, p2, p1

    .line 4
    .line 5
    iput v1, p0, Led/c;->k:I

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
    iput-byte v1, p0, Led/a;->G:B

    .line 14
    .line 15
    add-int/lit8 v1, p1, 0x3

    .line 16
    .line 17
    invoke-static {v1, p2}, Lrd/a;->a(I[B)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, p0, Led/a;->H:I

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iput-byte v2, p0, Led/a;->G:B

    .line 26
    .line 27
    :cond_0
    iget v1, p0, Led/c;->k:I

    .line 28
    .line 29
    if-le v1, v3, :cond_1

    .line 30
    .line 31
    add-int/lit8 v1, p1, 0x5

    .line 32
    .line 33
    invoke-virtual {p0, v1, p2}, Led/c;->k0(I[B)I

    .line 34
    .line 35
    .line 36
    iget-byte v1, p0, Led/c;->a:B

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
    check-cast v1, Lfd/h;

    .line 44
    .line 45
    :cond_1
    iget v1, p0, Led/c;->k:I

    .line 46
    .line 47
    mul-int/lit8 v1, v1, 0x2

    .line 48
    .line 49
    add-int/2addr v0, v1

    .line 50
    :cond_2
    invoke-static {v0, p2}, Lrd/a;->a(I[B)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iput v1, p0, Led/c;->l:I

    .line 55
    .line 56
    add-int/2addr v0, v3

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0, v0, p2}, Led/c;->i0(I[B)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget v4, p0, Led/c;->l:I

    .line 64
    .line 65
    if-eq v1, v4, :cond_3

    .line 66
    .line 67
    sget-object v4, Led/a;->K:Lorg/slf4j/Logger;

    .line 68
    .line 69
    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_3

    .line 74
    .line 75
    const-string v5, "Short read, have "

    .line 76
    .line 77
    const-string v6, ", want "

    .line 78
    .line 79
    invoke-static {v5, v1, v6}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget v5, p0, Led/c;->l:I

    .line 84
    .line 85
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-interface {v4, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    iget v1, p0, Led/c;->l:I

    .line 96
    .line 97
    add-int/2addr v0, v1

    .line 98
    :cond_4
    iget v1, p0, Led/c;->f:I

    .line 99
    .line 100
    if-nez v1, :cond_a

    .line 101
    .line 102
    iget-byte v4, p0, Led/a;->G:B

    .line 103
    .line 104
    if-ne v4, v2, :cond_5

    .line 105
    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :cond_5
    iget-object v0, p0, Led/a;->I:Led/c;

    .line 109
    .line 110
    if-eqz v0, :cond_9

    .line 111
    .line 112
    iget v2, p0, Led/c;->c:I

    .line 113
    .line 114
    iget v5, p0, Led/a;->H:I

    .line 115
    .line 116
    add-int/2addr v5, v2

    .line 117
    iput v2, v0, Led/c;->c:I

    .line 118
    .line 119
    int-to-byte v2, v4

    .line 120
    iput-byte v2, v0, Led/c;->a:B

    .line 121
    .line 122
    iput v1, v0, Led/c;->f:I

    .line 123
    .line 124
    iget-byte v1, p0, Led/c;->b:B

    .line 125
    .line 126
    iput-byte v1, v0, Led/c;->b:B

    .line 127
    .line 128
    iget v1, p0, Led/c;->g:I

    .line 129
    .line 130
    iput v1, v0, Led/c;->g:I

    .line 131
    .line 132
    iget v1, p0, Led/c;->m:I

    .line 133
    .line 134
    iput v1, v0, Led/c;->m:I

    .line 135
    .line 136
    iget v1, p0, Led/c;->h:I

    .line 137
    .line 138
    iput v1, v0, Led/c;->h:I

    .line 139
    .line 140
    iget v1, p0, Led/c;->i:I

    .line 141
    .line 142
    iput v1, v0, Led/c;->i:I

    .line 143
    .line 144
    iget v1, p0, Led/c;->j:I

    .line 145
    .line 146
    int-to-long v1, v1

    .line 147
    long-to-int v2, v1

    .line 148
    iput v2, v0, Led/c;->j:I

    .line 149
    .line 150
    iget-boolean v1, p0, Led/c;->n:Z

    .line 151
    .line 152
    iput-boolean v1, v0, Led/c;->n:Z

    .line 153
    .line 154
    instance-of v1, v0, Led/a;

    .line 155
    .line 156
    if-eqz v1, :cond_6

    .line 157
    .line 158
    check-cast v0, Led/a;

    .line 159
    .line 160
    invoke-virtual {v0, v5, p2}, Led/a;->t0(I[B)I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    add-int/2addr p2, v5

    .line 165
    move v0, p2

    .line 166
    goto :goto_0

    .line 167
    :cond_6
    add-int/lit8 v1, v5, 0x1

    .line 168
    .line 169
    iget v2, v0, Led/c;->k:I

    .line 170
    .line 171
    and-int/lit16 v4, v2, 0xff

    .line 172
    .line 173
    int-to-byte v4, v4

    .line 174
    aput-byte v4, p2, v5

    .line 175
    .line 176
    if-eqz v2, :cond_7

    .line 177
    .line 178
    if-le v2, v3, :cond_7

    .line 179
    .line 180
    invoke-virtual {v0, v1, p2}, Led/c;->k0(I[B)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    add-int/2addr v1, v0

    .line 185
    :cond_7
    iget-object v0, p0, Led/a;->I:Led/c;

    .line 186
    .line 187
    invoke-static {v1, p2}, Lrd/a;->a(I[B)I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    iput v2, v0, Led/c;->l:I

    .line 192
    .line 193
    add-int/2addr v1, v3

    .line 194
    iget-object v0, p0, Led/a;->I:Led/c;

    .line 195
    .line 196
    iget v2, v0, Led/c;->l:I

    .line 197
    .line 198
    if-eqz v2, :cond_8

    .line 199
    .line 200
    invoke-virtual {v0, v1, p2}, Led/c;->i0(I[B)I

    .line 201
    .line 202
    .line 203
    iget-object p2, p0, Led/a;->I:Led/c;

    .line 204
    .line 205
    iget p2, p2, Led/c;->l:I

    .line 206
    .line 207
    add-int/2addr v1, p2

    .line 208
    :cond_8
    move v0, v1

    .line 209
    :goto_0
    iget-object p2, p0, Led/a;->I:Led/c;

    .line 210
    .line 211
    invoke-virtual {p2}, Led/c;->C()V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_9
    iput-byte v2, p0, Led/a;->G:B

    .line 216
    .line 217
    new-instance p1, Landroidx/fragment/app/b0;

    .line 218
    .line 219
    const-string p2, "no andx command supplied with response"

    .line 220
    .line 221
    const/16 v0, 0xa

    .line 222
    .line 223
    invoke-direct {p1, p2, v0}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    throw p1

    .line 227
    :cond_a
    :goto_1
    iput-byte v2, p0, Led/a;->G:B

    .line 228
    .line 229
    const/4 p2, 0x0

    .line 230
    iput-object p2, p0, Led/a;->I:Led/c;

    .line 231
    .line 232
    :goto_2
    sub-int/2addr v0, p1

    .line 233
    return v0
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
    invoke-super {p0}, Led/c;->toString()Ljava/lang/String;

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
    iget-byte v2, p0, Led/a;->G:B

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    const-string v4, ",andxOffset="

    .line 24
    .line 25
    invoke-static {v2, v3, v4, v1}, Landroid/support/v4/media/session/a;->E(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    .line 26
    .line 27
    .line 28
    iget v2, p0, Led/a;->H:I

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

.method public final u0(I[B)I
    .locals 6

    .line 1
    add-int/lit8 v0, p1, 0x3

    .line 2
    .line 3
    add-int/lit8 v1, p1, 0x5

    .line 4
    .line 5
    invoke-virtual {p0, v1, p2}, Led/c;->q0(I[B)I

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
    iput v2, p0, Led/c;->k:I

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
    invoke-virtual {p0, v2, p2}, Led/c;->o0(I[B)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput v2, p0, Led/c;->l:I

    .line 30
    .line 31
    add-int/lit8 v3, v1, 0x1

    .line 32
    .line 33
    and-int/lit16 v4, v2, 0xff

    .line 34
    .line 35
    int-to-byte v4, v4

    .line 36
    aput-byte v4, p2, v1

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x2

    .line 39
    .line 40
    shr-int/lit8 v4, v2, 0x8

    .line 41
    .line 42
    and-int/lit16 v4, v4, 0xff

    .line 43
    .line 44
    int-to-byte v4, v4

    .line 45
    aput-byte v4, p2, v3

    .line 46
    .line 47
    add-int/2addr v1, v2

    .line 48
    iget-object v2, p0, Led/a;->I:Led/c;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    iget-object v4, p0, Led/c;->x:Lvc/f;

    .line 54
    .line 55
    move-object v5, v4

    .line 56
    check-cast v5, Lwc/a;

    .line 57
    .line 58
    iget-boolean v5, v5, Lwc/a;->d:Z

    .line 59
    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    iget v5, p0, Led/c;->e:I

    .line 63
    .line 64
    iget-byte v2, v2, Led/c;->a:B

    .line 65
    .line 66
    int-to-byte v2, v2

    .line 67
    invoke-virtual {p0, v4, v2}, Led/a;->s0(Lvc/f;B)I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-lt v5, v2, :cond_0

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    iget-object v2, p0, Led/a;->I:Led/c;

    .line 75
    .line 76
    iget v4, p0, Led/c;->e:I

    .line 77
    .line 78
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    iput v4, v2, Led/c;->e:I

    .line 81
    .line 82
    add-int/lit8 v2, p1, 0x1

    .line 83
    .line 84
    iget-byte v4, p0, Led/a;->G:B

    .line 85
    .line 86
    aput-byte v4, p2, v2

    .line 87
    .line 88
    add-int/lit8 v2, p1, 0x2

    .line 89
    .line 90
    aput-byte v3, p2, v2

    .line 91
    .line 92
    iget v2, p0, Led/c;->c:I

    .line 93
    .line 94
    sub-int v2, v1, v2

    .line 95
    .line 96
    iput v2, p0, Led/a;->H:I

    .line 97
    .line 98
    int-to-long v2, v2

    .line 99
    invoke-static {v2, v3, p2, v0}, Lrd/a;->e(J[BI)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Led/a;->I:Led/c;

    .line 103
    .line 104
    iget-boolean v2, p0, Led/c;->n:Z

    .line 105
    .line 106
    iput-boolean v2, v0, Led/c;->n:Z

    .line 107
    .line 108
    instance-of v2, v0, Led/a;

    .line 109
    .line 110
    if-eqz v2, :cond_1

    .line 111
    .line 112
    iget v2, p0, Led/c;->i:I

    .line 113
    .line 114
    iput v2, v0, Led/c;->i:I

    .line 115
    .line 116
    check-cast v0, Led/a;

    .line 117
    .line 118
    invoke-virtual {v0, v1, p2}, Led/a;->u0(I[B)I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    add-int/2addr p2, v1

    .line 123
    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v0, v1, p2}, Led/c;->q0(I[B)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    iput v2, v0, Led/c;->k:I

    .line 129
    .line 130
    iget-object v0, p0, Led/a;->I:Led/c;

    .line 131
    .line 132
    iget v2, v0, Led/c;->k:I

    .line 133
    .line 134
    add-int/lit8 v3, v2, 0x1

    .line 135
    .line 136
    add-int/2addr v3, v1

    .line 137
    div-int/lit8 v2, v2, 0x2

    .line 138
    .line 139
    iput v2, v0, Led/c;->k:I

    .line 140
    .line 141
    and-int/lit16 v2, v2, 0xff

    .line 142
    .line 143
    int-to-byte v2, v2

    .line 144
    aput-byte v2, p2, v1

    .line 145
    .line 146
    add-int/lit8 v1, v3, 0x2

    .line 147
    .line 148
    invoke-virtual {v0, v1, p2}, Led/c;->o0(I[B)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    iput v1, v0, Led/c;->l:I

    .line 153
    .line 154
    add-int/lit8 v0, v3, 0x1

    .line 155
    .line 156
    iget-object v1, p0, Led/a;->I:Led/c;

    .line 157
    .line 158
    iget v1, v1, Led/c;->l:I

    .line 159
    .line 160
    and-int/lit16 v2, v1, 0xff

    .line 161
    .line 162
    int-to-byte v2, v2

    .line 163
    aput-byte v2, p2, v3

    .line 164
    .line 165
    add-int/lit8 v3, v3, 0x2

    .line 166
    .line 167
    shr-int/lit8 v2, v1, 0x8

    .line 168
    .line 169
    and-int/lit16 v2, v2, 0xff

    .line 170
    .line 171
    int-to-byte v2, v2

    .line 172
    aput-byte v2, p2, v0

    .line 173
    .line 174
    add-int p2, v3, v1

    .line 175
    .line 176
    :goto_0
    sub-int/2addr p2, p1

    .line 177
    return p2

    .line 178
    :cond_2
    :goto_1
    const/4 v2, -0x1

    .line 179
    iput-byte v2, p0, Led/a;->G:B

    .line 180
    .line 181
    const/4 v4, 0x0

    .line 182
    iput-object v4, p0, Led/a;->I:Led/c;

    .line 183
    .line 184
    add-int/lit8 v4, p1, 0x1

    .line 185
    .line 186
    aput-byte v2, p2, v4

    .line 187
    .line 188
    add-int/lit8 v2, p1, 0x2

    .line 189
    .line 190
    aput-byte v3, p2, v2

    .line 191
    .line 192
    const/16 v2, -0x22

    .line 193
    .line 194
    aput-byte v2, p2, v0

    .line 195
    .line 196
    add-int/lit8 v0, p1, 0x4

    .line 197
    .line 198
    aput-byte v2, p2, v0

    .line 199
    .line 200
    sub-int/2addr v1, p1

    .line 201
    return v1
.end method

.method public final w()Led/c;
    .locals 1

    .line 1
    iget-object v0, p0, Led/a;->I:Led/c;

    .line 2
    .line 3
    return-object v0
.end method
