.class public final Lw4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lw4/g;

.field public final c:Lb5/e;

.field public final d:I


# direct methods
.method public constructor <init>(ILw4/g;Lb5/e;I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_12

    .line 5
    .line 6
    :try_start_0
    iget-boolean v0, p2, Lb5/f;->a:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    .line 8
    const-string v1, "mutable instance"

    .line 9
    .line 10
    if-nez v0, :cond_11

    .line 11
    .line 12
    iget-object v0, p2, Lb5/c;->b:[Ljava/lang/Object;

    .line 13
    .line 14
    array-length v0, v0

    .line 15
    if-eqz v0, :cond_10

    .line 16
    .line 17
    add-int/lit8 v2, v0, -0x2

    .line 18
    .line 19
    :goto_0
    const/4 v3, 0x1

    .line 20
    if-ltz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p2, v2}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lw4/f;

    .line 27
    .line 28
    iget-object v4, v4, Lw4/f;->a:Lw4/n;

    .line 29
    .line 30
    iget v4, v4, Lw4/n;->e:I

    .line 31
    .line 32
    if-ne v4, v3, :cond_0

    .line 33
    .line 34
    add-int/lit8 v2, v2, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string p2, "insns["

    .line 40
    .line 41
    const-string p3, "] is a branch or can throw"

    .line 42
    .line 43
    invoke-static {p2, v2, p3}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    sub-int/2addr v0, v3

    .line 52
    invoke-virtual {p2, v0}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lw4/f;

    .line 57
    .line 58
    iget-object v0, v0, Lw4/f;->a:Lw4/n;

    .line 59
    .line 60
    iget v0, v0, Lw4/n;->e:I

    .line 61
    .line 62
    if-eq v0, v3, :cond_f

    .line 63
    .line 64
    :try_start_1
    iget-boolean v0, p3, Lb5/f;->a:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    .line 66
    if-nez v0, :cond_e

    .line 67
    .line 68
    const/4 v0, -0x1

    .line 69
    if-lt p4, v0, :cond_d

    .line 70
    .line 71
    if-ltz p4, :cond_c

    .line 72
    .line 73
    iget v1, p3, Lb5/e;->c:I

    .line 74
    .line 75
    iget-boolean v2, p3, Lb5/e;->d:Z

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    if-nez v2, :cond_4

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    :goto_1
    if-ge v2, v1, :cond_3

    .line 82
    .line 83
    iget-object v5, p3, Lb5/e;->b:[I

    .line 84
    .line 85
    aget v5, v5, v2

    .line 86
    .line 87
    if-ne v5, p4, :cond_2

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    neg-int v2, v1

    .line 94
    goto :goto_3

    .line 95
    :cond_4
    move v2, v1

    .line 96
    const/4 v5, -0x1

    .line 97
    :goto_2
    add-int/lit8 v6, v5, 0x1

    .line 98
    .line 99
    if-le v2, v6, :cond_6

    .line 100
    .line 101
    sub-int v6, v2, v5

    .line 102
    .line 103
    shr-int/2addr v6, v3

    .line 104
    add-int/2addr v6, v5

    .line 105
    iget-object v7, p3, Lb5/e;->b:[I

    .line 106
    .line 107
    aget v7, v7, v6

    .line 108
    .line 109
    if-gt p4, v7, :cond_5

    .line 110
    .line 111
    move v2, v6

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    move v5, v6

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    if-eq v2, v1, :cond_8

    .line 116
    .line 117
    iget-object v1, p3, Lb5/e;->b:[I

    .line 118
    .line 119
    aget v1, v1, v2

    .line 120
    .line 121
    if-ne p4, v1, :cond_7

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_7
    neg-int v1, v2

    .line 125
    sub-int/2addr v1, v3

    .line 126
    move v2, v1

    .line 127
    goto :goto_3

    .line 128
    :cond_8
    neg-int v1, v1

    .line 129
    add-int/lit8 v2, v1, -0x1

    .line 130
    .line 131
    :goto_3
    if-ltz v2, :cond_9

    .line 132
    .line 133
    move v0, v2

    .line 134
    :cond_9
    if-ltz v0, :cond_a

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_a
    const/4 v3, 0x0

    .line 138
    :goto_4
    if-eqz v3, :cond_b

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 142
    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v0, "primarySuccessor "

    .line 146
    .line 147
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p4, " not in successors "

    .line 154
    .line 155
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p1

    .line 169
    :cond_c
    :goto_5
    iput p1, p0, Lw4/a;->a:I

    .line 170
    .line 171
    iput-object p2, p0, Lw4/a;->b:Lw4/g;

    .line 172
    .line 173
    iput-object p3, p0, Lw4/a;->c:Lb5/e;

    .line 174
    .line 175
    iput p4, p0, Lw4/a;->d:I

    .line 176
    .line 177
    return-void

    .line 178
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 179
    .line 180
    const-string p2, "primarySuccessor < -1"

    .line 181
    .line 182
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :cond_e
    :try_start_2
    new-instance p1, Lb5/g;

    .line 187
    .line 188
    invoke-direct {p1, v1}, Lb5/g;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 193
    .line 194
    const-string p2, "successors == null"

    .line 195
    .line 196
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p1

    .line 200
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 201
    .line 202
    const-string p2, "insns does not end with a branch or throwing instruction"

    .line 203
    .line 204
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p1

    .line 208
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 209
    .line 210
    const-string p2, "insns.size() == 0"

    .line 211
    .line 212
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw p1

    .line 216
    :cond_11
    :try_start_3
    new-instance p1, Lb5/g;

    .line 217
    .line 218
    invoke-direct {p1, v1}, Lb5/g;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 222
    :catch_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 223
    .line 224
    const-string p2, "insns == null"

    .line 225
    .line 226
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw p1

    .line 230
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 231
    .line 232
    const-string p2, "label < 0"

    .line 233
    .line 234
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto :goto_7

    .line 238
    :goto_6
    throw p1

    .line 239
    :goto_7
    goto :goto_6
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lw4/a;->a:I

    .line 9
    .line 10
    invoke-static {v1}, Lqf/c;->e0(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x7d

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
