.class public abstract Lce/i0;
.super Lce/q;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field public static final t0:I


# instance fields
.field public C:I

.field public D:I

.field public E:Z

.field public F:Z

.field public G:I

.field public H:I

.field public I:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public R:I

.field public S:I

.field public T:I

.field public V:I

.field public X:B

.field public Y:Ljava/lang/String;

.field public Z:I

.field public h0:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "jcifs.smb1.smb.client.transaction_buf_size"

    .line 2
    .line 3
    const v1, 0xffff

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v0}, Lwd/a;->c(ILjava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit16 v0, v0, -0x200

    .line 11
    .line 12
    sput v0, Lce/i0;->t0:I

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lce/q;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lce/i0;->C:I

    .line 6
    .line 7
    iput v0, p0, Lce/i0;->D:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lce/i0;->E:Z

    .line 11
    .line 12
    iput-boolean v1, p0, Lce/i0;->F:Z

    .line 13
    .line 14
    sget v2, Lce/i0;->t0:I

    .line 15
    .line 16
    iput v2, p0, Lce/i0;->S:I

    .line 17
    .line 18
    iput v0, p0, Lce/i0;->T:I

    .line 19
    .line 20
    iput v1, p0, Lce/i0;->V:I

    .line 21
    .line 22
    const-string v0, ""

    .line 23
    .line 24
    iput-object v0, p0, Lce/i0;->Y:Ljava/lang/String;

    .line 25
    .line 26
    const/16 v0, 0x400

    .line 27
    .line 28
    iput v0, p0, Lce/i0;->R:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final d(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final hasMoreElements()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lce/i0;->E:Z

    .line 2
    .line 3
    return v0
.end method

.method public final i(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final m()V
    .locals 1

    .line 1
    invoke-super {p0}, Lce/q;->m()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lce/i0;->E:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lce/i0;->F:Z

    .line 8
    .line 9
    return-void
.end method

.method public final nextElement()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lce/i0;->F:Z

    .line 2
    .line 3
    const/16 v1, -0x60

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iput-boolean v2, p0, Lce/i0;->F:Z

    .line 9
    .line 10
    iget v0, p0, Lce/i0;->V:I

    .line 11
    .line 12
    mul-int/lit8 v0, v0, 0x2

    .line 13
    .line 14
    add-int/lit8 v3, v0, 0x3f

    .line 15
    .line 16
    iput v3, p0, Lce/i0;->I:I

    .line 17
    .line 18
    iget-byte v4, p0, Lce/q;->c:B

    .line 19
    .line 20
    if-eq v4, v1, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x25

    .line 23
    .line 24
    if-ne v4, v0, :cond_2

    .line 25
    .line 26
    iget-byte v0, p0, Lce/q;->d:B

    .line 27
    .line 28
    const/16 v1, 0x80

    .line 29
    .line 30
    and-int/2addr v0, v1

    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lce/i0;->Y:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p0, v3, v0}, Lce/q;->n(ILjava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/2addr v0, v3

    .line 41
    iput v0, p0, Lce/i0;->I:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-ne v4, v1, :cond_2

    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x41

    .line 47
    .line 48
    iput v0, p0, Lce/i0;->I:I

    .line 49
    .line 50
    :cond_2
    :goto_0
    iget v0, p0, Lce/i0;->I:I

    .line 51
    .line 52
    rem-int/lit8 v1, v0, 0x2

    .line 53
    .line 54
    iput v1, p0, Lce/i0;->C:I

    .line 55
    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    rsub-int/lit8 v1, v1, 0x2

    .line 61
    .line 62
    :goto_1
    iput v1, p0, Lce/i0;->C:I

    .line 63
    .line 64
    add-int/2addr v0, v1

    .line 65
    iput v0, p0, Lce/i0;->I:I

    .line 66
    .line 67
    iget-object v0, p0, Lce/i0;->h0:[B

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lce/i0;->w([B)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lce/i0;->O:I

    .line 74
    .line 75
    iput v0, p0, Lce/i0;->G:I

    .line 76
    .line 77
    iget v1, p0, Lce/i0;->Z:I

    .line 78
    .line 79
    iget v3, p0, Lce/i0;->I:I

    .line 80
    .line 81
    sub-int/2addr v1, v3

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lce/i0;->H:I

    .line 87
    .line 88
    sub-int/2addr v1, v0

    .line 89
    iget v3, p0, Lce/i0;->I:I

    .line 90
    .line 91
    add-int/2addr v3, v0

    .line 92
    iput v3, p0, Lce/i0;->M:I

    .line 93
    .line 94
    rem-int/lit8 v0, v3, 0x2

    .line 95
    .line 96
    iput v0, p0, Lce/i0;->D:I

    .line 97
    .line 98
    if-nez v0, :cond_4

    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    rsub-int/lit8 v0, v0, 0x2

    .line 103
    .line 104
    :goto_2
    iput v0, p0, Lce/i0;->D:I

    .line 105
    .line 106
    add-int/2addr v3, v0

    .line 107
    iput v3, p0, Lce/i0;->M:I

    .line 108
    .line 109
    iget-object v0, p0, Lce/i0;->h0:[B

    .line 110
    .line 111
    iget v3, p0, Lce/i0;->G:I

    .line 112
    .line 113
    invoke-virtual {p0, v3, v0}, Lce/i0;->v(I[B)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iput v0, p0, Lce/i0;->P:I

    .line 118
    .line 119
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iput v0, p0, Lce/i0;->L:I

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_5
    iget-byte v0, p0, Lce/q;->c:B

    .line 127
    .line 128
    if-eq v0, v1, :cond_6

    .line 129
    .line 130
    const/16 v0, 0x26

    .line 131
    .line 132
    iput-byte v0, p0, Lce/q;->c:B

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_6
    const/16 v0, -0x5f

    .line 136
    .line 137
    iput-byte v0, p0, Lce/q;->c:B

    .line 138
    .line 139
    :goto_3
    const/16 v0, 0x33

    .line 140
    .line 141
    iput v0, p0, Lce/i0;->I:I

    .line 142
    .line 143
    iget v0, p0, Lce/i0;->O:I

    .line 144
    .line 145
    iget v1, p0, Lce/i0;->K:I

    .line 146
    .line 147
    sub-int v3, v0, v1

    .line 148
    .line 149
    if-lez v3, :cond_7

    .line 150
    .line 151
    const/4 v3, 0x1

    .line 152
    iput v3, p0, Lce/i0;->C:I

    .line 153
    .line 154
    const/16 v3, 0x34

    .line 155
    .line 156
    iput v3, p0, Lce/i0;->I:I

    .line 157
    .line 158
    :cond_7
    iget v3, p0, Lce/i0;->H:I

    .line 159
    .line 160
    add-int/2addr v1, v3

    .line 161
    iput v1, p0, Lce/i0;->K:I

    .line 162
    .line 163
    iget v3, p0, Lce/i0;->Z:I

    .line 164
    .line 165
    iget v4, p0, Lce/i0;->I:I

    .line 166
    .line 167
    sub-int/2addr v3, v4

    .line 168
    iget v4, p0, Lce/i0;->C:I

    .line 169
    .line 170
    sub-int/2addr v3, v4

    .line 171
    sub-int/2addr v0, v1

    .line 172
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    iput v0, p0, Lce/i0;->H:I

    .line 177
    .line 178
    sub-int/2addr v3, v0

    .line 179
    iget v1, p0, Lce/i0;->I:I

    .line 180
    .line 181
    add-int/2addr v1, v0

    .line 182
    iput v1, p0, Lce/i0;->M:I

    .line 183
    .line 184
    rem-int/lit8 v0, v1, 0x2

    .line 185
    .line 186
    iput v0, p0, Lce/i0;->D:I

    .line 187
    .line 188
    if-nez v0, :cond_8

    .line 189
    .line 190
    const/4 v0, 0x0

    .line 191
    goto :goto_4

    .line 192
    :cond_8
    rsub-int/lit8 v0, v0, 0x2

    .line 193
    .line 194
    :goto_4
    iput v0, p0, Lce/i0;->D:I

    .line 195
    .line 196
    add-int/2addr v1, v0

    .line 197
    iput v1, p0, Lce/i0;->M:I

    .line 198
    .line 199
    iget v1, p0, Lce/i0;->N:I

    .line 200
    .line 201
    iget v4, p0, Lce/i0;->L:I

    .line 202
    .line 203
    add-int/2addr v1, v4

    .line 204
    iput v1, p0, Lce/i0;->N:I

    .line 205
    .line 206
    sub-int/2addr v3, v0

    .line 207
    iget v0, p0, Lce/i0;->P:I

    .line 208
    .line 209
    sub-int/2addr v0, v1

    .line 210
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    iput v0, p0, Lce/i0;->L:I

    .line 215
    .line 216
    :goto_5
    iget v0, p0, Lce/i0;->K:I

    .line 217
    .line 218
    iget v1, p0, Lce/i0;->H:I

    .line 219
    .line 220
    add-int/2addr v0, v1

    .line 221
    iget v1, p0, Lce/i0;->O:I

    .line 222
    .line 223
    if-lt v0, v1, :cond_9

    .line 224
    .line 225
    iget v0, p0, Lce/i0;->N:I

    .line 226
    .line 227
    iget v1, p0, Lce/i0;->L:I

    .line 228
    .line 229
    add-int/2addr v0, v1

    .line 230
    iget v1, p0, Lce/i0;->P:I

    .line 231
    .line 232
    if-lt v0, v1, :cond_9

    .line 233
    .line 234
    iput-boolean v2, p0, Lce/i0;->E:Z

    .line 235
    .line 236
    :cond_9
    return-object p0
.end method

.method public final o(I[B)I
    .locals 4

    .line 1
    iget v0, p0, Lce/i0;->C:I

    .line 2
    .line 3
    iget-byte v1, p0, Lce/q;->c:B

    .line 4
    .line 5
    const/16 v2, 0x25

    .line 6
    .line 7
    if-ne v1, v2, :cond_1

    .line 8
    .line 9
    iget-byte v1, p0, Lce/q;->d:B

    .line 10
    .line 11
    const/16 v2, 0x80

    .line 12
    .line 13
    and-int/2addr v1, v2

    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lce/i0;->Y:Ljava/lang/String;

    .line 18
    .line 19
    iget-boolean v2, p0, Lce/q;->q:Z

    .line 20
    .line 21
    invoke-virtual {p0, v1, p2, p1, v2}, Lce/q;->u(Ljava/lang/String;[BIZ)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/2addr v1, p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    move v1, p1

    .line 28
    :goto_1
    iget v2, p0, Lce/i0;->H:I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-lez v2, :cond_3

    .line 32
    .line 33
    :goto_2
    add-int/lit8 v2, v0, -0x1

    .line 34
    .line 35
    if-lez v0, :cond_2

    .line 36
    .line 37
    add-int/lit8 v0, v1, 0x1

    .line 38
    .line 39
    aput-byte v3, p2, v1

    .line 40
    .line 41
    move v1, v0

    .line 42
    move v0, v2

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object v0, p0, Lce/i0;->h0:[B

    .line 45
    .line 46
    iget v2, p0, Lce/i0;->H:I

    .line 47
    .line 48
    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lce/i0;->H:I

    .line 52
    .line 53
    add-int/2addr v1, v0

    .line 54
    :cond_3
    iget v0, p0, Lce/i0;->L:I

    .line 55
    .line 56
    if-lez v0, :cond_5

    .line 57
    .line 58
    iget v0, p0, Lce/i0;->D:I

    .line 59
    .line 60
    :goto_3
    add-int/lit8 v2, v0, -0x1

    .line 61
    .line 62
    if-lez v0, :cond_4

    .line 63
    .line 64
    add-int/lit8 v0, v1, 0x1

    .line 65
    .line 66
    aput-byte v3, p2, v1

    .line 67
    .line 68
    move v1, v0

    .line 69
    move v0, v2

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    iget-object v0, p0, Lce/i0;->h0:[B

    .line 72
    .line 73
    iget v2, p0, Lce/i0;->G:I

    .line 74
    .line 75
    iget v3, p0, Lce/i0;->L:I

    .line 76
    .line 77
    invoke-static {v0, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    .line 79
    .line 80
    iget p2, p0, Lce/i0;->G:I

    .line 81
    .line 82
    iget v0, p0, Lce/i0;->L:I

    .line 83
    .line 84
    add-int/2addr p2, v0

    .line 85
    iput p2, p0, Lce/i0;->G:I

    .line 86
    .line 87
    add-int/2addr v1, v0

    .line 88
    :cond_5
    sub-int/2addr v1, p1

    .line 89
    return v1
.end method

.method public final t(I[B)I
    .locals 6

    .line 1
    iget v0, p0, Lce/i0;->O:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1, p2, p1}, Lce/q;->q(J[BI)V

    .line 5
    .line 6
    .line 7
    add-int/lit8 v0, p1, 0x2

    .line 8
    .line 9
    iget v1, p0, Lce/i0;->P:I

    .line 10
    .line 11
    int-to-long v1, v1

    .line 12
    invoke-static {v1, v2, p2, v0}, Lce/q;->q(J[BI)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v0, p1, 0x4

    .line 16
    .line 17
    iget-byte v1, p0, Lce/q;->c:B

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const/16 v3, 0x26

    .line 21
    .line 22
    if-eq v1, v3, :cond_0

    .line 23
    .line 24
    iget v1, p0, Lce/i0;->R:I

    .line 25
    .line 26
    int-to-long v4, v1

    .line 27
    invoke-static {v4, v5, p2, v0}, Lce/q;->q(J[BI)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v0, p1, 0x6

    .line 31
    .line 32
    iget v1, p0, Lce/i0;->S:I

    .line 33
    .line 34
    int-to-long v4, v1

    .line 35
    invoke-static {v4, v5, p2, v0}, Lce/q;->q(J[BI)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, p1, 0x8

    .line 39
    .line 40
    add-int/lit8 v1, p1, 0x9

    .line 41
    .line 42
    aput-byte v2, p2, v0

    .line 43
    .line 44
    add-int/lit8 v0, p1, 0xa

    .line 45
    .line 46
    aput-byte v2, p2, v1

    .line 47
    .line 48
    int-to-long v4, v2

    .line 49
    invoke-static {v4, v5, p2, v0}, Lce/q;->q(J[BI)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v0, p1, 0xc

    .line 53
    .line 54
    iget v1, p0, Lce/i0;->T:I

    .line 55
    .line 56
    int-to-long v4, v1

    .line 57
    invoke-static {v4, v5, p2, v0}, Lce/q;->r(J[BI)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v0, p1, 0x10

    .line 61
    .line 62
    add-int/lit8 v1, p1, 0x11

    .line 63
    .line 64
    aput-byte v2, p2, v0

    .line 65
    .line 66
    add-int/lit8 v0, p1, 0x12

    .line 67
    .line 68
    aput-byte v2, p2, v1

    .line 69
    .line 70
    :cond_0
    iget v1, p0, Lce/i0;->H:I

    .line 71
    .line 72
    int-to-long v4, v1

    .line 73
    invoke-static {v4, v5, p2, v0}, Lce/q;->q(J[BI)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v1, v0, 0x2

    .line 77
    .line 78
    iget v4, p0, Lce/i0;->I:I

    .line 79
    .line 80
    int-to-long v4, v4

    .line 81
    invoke-static {v4, v5, p2, v1}, Lce/q;->q(J[BI)V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v1, v0, 0x4

    .line 85
    .line 86
    iget-byte v4, p0, Lce/q;->c:B

    .line 87
    .line 88
    if-ne v4, v3, :cond_1

    .line 89
    .line 90
    iget v4, p0, Lce/i0;->K:I

    .line 91
    .line 92
    int-to-long v4, v4

    .line 93
    invoke-static {v4, v5, p2, v1}, Lce/q;->q(J[BI)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v1, v0, 0x6

    .line 97
    .line 98
    :cond_1
    iget v0, p0, Lce/i0;->L:I

    .line 99
    .line 100
    int-to-long v4, v0

    .line 101
    invoke-static {v4, v5, p2, v1}, Lce/q;->q(J[BI)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v0, v1, 0x2

    .line 105
    .line 106
    iget v4, p0, Lce/i0;->L:I

    .line 107
    .line 108
    if-nez v4, :cond_2

    .line 109
    .line 110
    const/4 v4, 0x0

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    iget v4, p0, Lce/i0;->M:I

    .line 113
    .line 114
    :goto_0
    int-to-long v4, v4

    .line 115
    invoke-static {v4, v5, p2, v0}, Lce/q;->q(J[BI)V

    .line 116
    .line 117
    .line 118
    add-int/lit8 v0, v1, 0x4

    .line 119
    .line 120
    iget-byte v4, p0, Lce/q;->c:B

    .line 121
    .line 122
    if-ne v4, v3, :cond_3

    .line 123
    .line 124
    iget v2, p0, Lce/i0;->N:I

    .line 125
    .line 126
    int-to-long v2, v2

    .line 127
    invoke-static {v2, v3, p2, v0}, Lce/q;->q(J[BI)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v1, v1, 0x6

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    add-int/lit8 v3, v1, 0x5

    .line 134
    .line 135
    iget v4, p0, Lce/i0;->V:I

    .line 136
    .line 137
    int-to-byte v4, v4

    .line 138
    aput-byte v4, p2, v0

    .line 139
    .line 140
    add-int/lit8 v1, v1, 0x6

    .line 141
    .line 142
    aput-byte v2, p2, v3

    .line 143
    .line 144
    invoke-virtual {p0, v1, p2}, Lce/i0;->x(I[B)I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    add-int/2addr v1, p2

    .line 149
    :goto_1
    sub-int/2addr v1, p1

    .line 150
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

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
    const-string v2, ",totalParameterCount="

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v2, p0, Lce/i0;->O:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ",totalDataCount="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lce/i0;->P:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ",maxParameterCount="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v2, p0, Lce/i0;->R:I

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, ",maxDataCount="

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v2, p0, Lce/i0;->S:I

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, ",maxSetupCount=0,flags=0x"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    const/4 v3, 0x2

    .line 62
    invoke-static {v2, v3}, Lde/c;->c(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, ",timeout="

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v2, p0, Lce/i0;->T:I

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, ",parameterCount="

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget v2, p0, Lce/i0;->H:I

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, ",parameterOffset="

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget v2, p0, Lce/i0;->I:I

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, ",parameterDisplacement="

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget v2, p0, Lce/i0;->K:I

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v2, ",dataCount="

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget v2, p0, Lce/i0;->L:I

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v2, ",dataOffset="

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget v2, p0, Lce/i0;->M:I

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v2, ",dataDisplacement="

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget v2, p0, Lce/i0;->N:I

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, ",setupCount="

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget v2, p0, Lce/i0;->V:I

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, ",pad="

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget v2, p0, Lce/i0;->C:I

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v2, ",pad1="

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget v2, p0, Lce/i0;->D:I

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-object v0
.end method

.method public abstract v(I[B)I
.end method

.method public abstract w([B)I
.end method

.method public abstract x(I[B)I
.end method
