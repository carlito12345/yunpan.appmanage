.class public final Lce/j1;
.super Lce/j0;
.source "SourceFile"


# instance fields
.field public M0:I

.field public N0:I

.field public O0:[Lce/i1;

.field public t0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lce/j0;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    iput-byte v0, p0, Lce/j0;->S:B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Trans2GetDfsReferralResponse["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lce/j0;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",pathConsumed="

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lce/j1;->t0:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, ",numReferrals="

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v2, p0, Lce/j1;->M0:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ",flags="

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v2, p0, Lce/j1;->N0:I

    .line 43
    .line 44
    const-string v3, "]"

    .line 45
    .line 46
    invoke-static {v1, v2, v3}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public final v(II[B)I
    .locals 9

    .line 1
    invoke-static {p1, p3}, Lce/q;->f(I[B)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lce/j1;->t0:I

    .line 6
    .line 7
    add-int/lit8 v1, p1, 0x2

    .line 8
    .line 9
    iget v2, p0, Lce/q;->i:I

    .line 10
    .line 11
    const v3, 0x8000

    .line 12
    .line 13
    .line 14
    and-int/2addr v2, v3

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    div-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    iput v0, p0, Lce/j1;->t0:I

    .line 20
    .line 21
    :cond_0
    invoke-static {v1, p3}, Lce/q;->f(I[B)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lce/j1;->M0:I

    .line 26
    .line 27
    add-int/lit8 v0, p1, 0x4

    .line 28
    .line 29
    invoke-static {v0, p3}, Lce/q;->f(I[B)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lce/j1;->N0:I

    .line 34
    .line 35
    add-int/lit8 v0, p1, 0x8

    .line 36
    .line 37
    iget v1, p0, Lce/j1;->M0:I

    .line 38
    .line 39
    new-array v1, v1, [Lce/i1;

    .line 40
    .line 41
    iput-object v1, p0, Lce/j1;->O0:[Lce/i1;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_0
    iget v4, p0, Lce/j1;->M0:I

    .line 46
    .line 47
    if-ge v2, v4, :cond_8

    .line 48
    .line 49
    iget-object v4, p0, Lce/j1;->O0:[Lce/i1;

    .line 50
    .line 51
    new-instance v5, Lce/i1;

    .line 52
    .line 53
    invoke-direct {v5, p0}, Lce/i1;-><init>(Lce/j1;)V

    .line 54
    .line 55
    .line 56
    aput-object v5, v4, v2

    .line 57
    .line 58
    invoke-static {v0, p3}, Lce/q;->f(I[B)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    iput v4, v5, Lce/i1;->a:I

    .line 63
    .line 64
    const/4 v6, 0x1

    .line 65
    const/4 v7, 0x3

    .line 66
    if-eq v4, v7, :cond_2

    .line 67
    .line 68
    if-ne v4, v6, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 72
    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string p3, "Version "

    .line 76
    .line 77
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget p3, v5, Lce/i1;->a:I

    .line 81
    .line 82
    const-string v0, " referral not supported. Please report this to jcifs at samba dot org."

    .line 83
    .line 84
    invoke-static {p2, p3, v0}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_2
    :goto_1
    add-int/lit8 v4, v0, 0x2

    .line 93
    .line 94
    invoke-static {v4, p3}, Lce/q;->f(I[B)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    iput v4, v5, Lce/i1;->b:I

    .line 99
    .line 100
    add-int/lit8 v4, v0, 0x4

    .line 101
    .line 102
    invoke-static {v4, p3}, Lce/q;->f(I[B)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    iput v4, v5, Lce/i1;->c:I

    .line 107
    .line 108
    add-int/lit8 v4, v0, 0x6

    .line 109
    .line 110
    invoke-static {v4, p3}, Lce/q;->f(I[B)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    iput v4, v5, Lce/i1;->d:I

    .line 115
    .line 116
    add-int/lit8 v4, v0, 0x8

    .line 117
    .line 118
    iget v8, v5, Lce/i1;->a:I

    .line 119
    .line 120
    if-ne v8, v7, :cond_5

    .line 121
    .line 122
    invoke-static {v4, p3}, Lce/q;->f(I[B)I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    iput v4, v5, Lce/i1;->e:I

    .line 127
    .line 128
    add-int/lit8 v4, v0, 0xa

    .line 129
    .line 130
    invoke-static {v4, p3}, Lce/q;->f(I[B)I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    iput v4, v5, Lce/i1;->i:I

    .line 135
    .line 136
    add-int/lit8 v4, v0, 0xc

    .line 137
    .line 138
    invoke-static {v4, p3}, Lce/q;->f(I[B)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    iput v4, v5, Lce/i1;->f:I

    .line 143
    .line 144
    add-int/lit8 v4, v0, 0xe

    .line 145
    .line 146
    invoke-static {v4, p3}, Lce/q;->f(I[B)I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    iput v4, v5, Lce/i1;->g:I

    .line 151
    .line 152
    add-int/lit8 v4, v0, 0x10

    .line 153
    .line 154
    invoke-static {v4, p3}, Lce/q;->f(I[B)I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    iput v4, v5, Lce/i1;->h:I

    .line 159
    .line 160
    iget v4, v5, Lce/i1;->f:I

    .line 161
    .line 162
    add-int/2addr v4, v0

    .line 163
    iget v7, p0, Lce/q;->i:I

    .line 164
    .line 165
    and-int/2addr v7, v3

    .line 166
    if-eqz v7, :cond_3

    .line 167
    .line 168
    const/4 v7, 0x1

    .line 169
    goto :goto_2

    .line 170
    :cond_3
    const/4 v7, 0x0

    .line 171
    :goto_2
    invoke-virtual {p0, p3, v4, p2, v7}, Lce/q;->j([BIIZ)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    iput-object v4, v5, Lce/i1;->j:Ljava/lang/String;

    .line 176
    .line 177
    iget v4, v5, Lce/i1;->h:I

    .line 178
    .line 179
    if-lez v4, :cond_7

    .line 180
    .line 181
    add-int/2addr v4, v0

    .line 182
    iget v7, p0, Lce/q;->i:I

    .line 183
    .line 184
    and-int/2addr v7, v3

    .line 185
    if-eqz v7, :cond_4

    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_4
    const/4 v6, 0x0

    .line 189
    :goto_3
    invoke-virtual {p0, p3, v4, p2, v6}, Lce/q;->j([BIIZ)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    iput-object v4, v5, Lce/i1;->k:Ljava/lang/String;

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_5
    if-ne v8, v6, :cond_7

    .line 197
    .line 198
    iget v7, p0, Lce/q;->i:I

    .line 199
    .line 200
    and-int/2addr v7, v3

    .line 201
    if-eqz v7, :cond_6

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_6
    const/4 v6, 0x0

    .line 205
    :goto_4
    invoke-virtual {p0, p3, v4, p2, v6}, Lce/q;->j([BIIZ)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    iput-object v4, v5, Lce/i1;->k:Ljava/lang/String;

    .line 210
    .line 211
    :cond_7
    :goto_5
    iget v4, v5, Lce/i1;->b:I

    .line 212
    .line 213
    add-int/2addr v0, v4

    .line 214
    add-int/lit8 v2, v2, 0x1

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_8
    sub-int/2addr v0, p1

    .line 219
    return v0
.end method

.method public final w([B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method
