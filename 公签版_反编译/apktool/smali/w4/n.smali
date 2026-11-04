.class public final Lw4/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ly4/c;

.field public final c:Ly4/e;

.field public final d:Ly4/b;

.field public final e:I

.field public final f:Z

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILy4/b;Ly4/b;)V
    .locals 8

    .line 20
    sget-object v2, Ly4/c;->p:Ly4/c;

    const/4 v7, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lw4/n;-><init>(ILy4/c;Ly4/e;Ly4/b;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILy4/c;Ly4/b;ILjava/lang/String;)V
    .locals 8

    .line 17
    sget-object v4, Ly4/b;->c:Ly4/b;

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lw4/n;-><init>(ILy4/c;Ly4/e;Ly4/b;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILy4/c;Ly4/e;Ljava/lang/String;)V
    .locals 8

    .line 18
    sget-object v4, Ly4/b;->c:Ly4/b;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lw4/n;-><init>(ILy4/c;Ly4/e;Ly4/b;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILy4/c;Ly4/e;Ly4/b;IZLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    if-eqz p4, :cond_3

    const/4 v0, 0x1

    if-lt p5, v0, :cond_2

    const/4 v0, 0x6

    if-gt p5, v0, :cond_2

    .line 2
    iget-object v1, p4, Lb5/c;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-eqz v1, :cond_1

    if-ne p5, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "exceptions / branchingness mismatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iput p1, p0, Lw4/n;->a:I

    .line 5
    iput-object p2, p0, Lw4/n;->b:Ly4/c;

    .line 6
    iput-object p3, p0, Lw4/n;->c:Ly4/e;

    .line 7
    iput-object p4, p0, Lw4/n;->d:Ly4/b;

    .line 8
    iput p5, p0, Lw4/n;->e:I

    .line 9
    iput-boolean p6, p0, Lw4/n;->f:Z

    .line 10
    iput-object p7, p0, Lw4/n;->g:Ljava/lang/String;

    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid branchingness: "

    .line 12
    invoke-static {p5, p2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "exceptions == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sources == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "result == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ILy4/c;Ly4/e;Ly4/b;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 19
    invoke-direct/range {v0 .. v7}, Lw4/n;-><init>(ILy4/c;Ly4/e;Ly4/b;IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lw4/n;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lw4/n;

    .line 12
    .line 13
    iget v1, p1, Lw4/n;->a:I

    .line 14
    .line 15
    iget v3, p0, Lw4/n;->a:I

    .line 16
    .line 17
    if-ne v3, v1, :cond_2

    .line 18
    .line 19
    iget v1, p0, Lw4/n;->e:I

    .line 20
    .line 21
    iget v3, p1, Lw4/n;->e:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lw4/n;->b:Ly4/c;

    .line 26
    .line 27
    iget-object v3, p1, Lw4/n;->b:Ly4/c;

    .line 28
    .line 29
    if-ne v1, v3, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lw4/n;->c:Ly4/e;

    .line 32
    .line 33
    iget-object v3, p1, Lw4/n;->c:Ly4/e;

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Lw4/n;->d:Ly4/b;

    .line 42
    .line 43
    iget-object p1, p1, Lw4/n;->d:Ly4/b;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Lb5/c;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lw4/n;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget v2, p0, Lw4/n;->e:I

    .line 8
    .line 9
    add-int/2addr v0, v2

    .line 10
    mul-int/lit8 v0, v0, 0x1f

    .line 11
    .line 12
    iget-object v2, p0, Lw4/n;->b:Ly4/c;

    .line 13
    .line 14
    iget-object v2, v2, Ly4/c;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/digest/a;->c(IILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v2, p0, Lw4/n;->c:Ly4/e;

    .line 21
    .line 22
    check-cast v2, Lb5/c;

    .line 23
    .line 24
    iget-object v2, v2, Lb5/c;->b:[Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-int/2addr v2, v0

    .line 31
    mul-int/lit8 v2, v2, 0x1f

    .line 32
    .line 33
    iget-object v0, p0, Lw4/n;->d:Ly4/b;

    .line 34
    .line 35
    iget-object v0, v0, Lb5/c;->b:[Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/2addr v0, v2

    .line 42
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x28

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Rop{"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lw4/n;->a:I

    .line 14
    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    :pswitch_0
    invoke-static {v1}, Lqf/c;->d0(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "unknown-"

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :pswitch_1
    const-string v1, "invoke-custom"

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :pswitch_2
    const-string v1, "invoke-polymorphic"

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :pswitch_3
    const-string v1, "fill-array-data"

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :pswitch_4
    const-string v1, "move-result-pseudo"

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :pswitch_5
    const-string v1, "move-result"

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :pswitch_6
    const-string v1, "invoke-interface"

    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :pswitch_7
    const-string v1, "invoke-direct"

    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :pswitch_8
    const-string v1, "invoke-super"

    .line 59
    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :pswitch_9
    const-string v1, "invoke-virtual"

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :pswitch_a
    const-string v1, "invoke-static"

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :pswitch_b
    const-string v1, "put-static"

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :pswitch_c
    const-string v1, "put-field"

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :pswitch_d
    const-string v1, "get-static"

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :pswitch_e
    const-string v1, "get-field"

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :pswitch_f
    const-string v1, "instance-of"

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :pswitch_10
    const-string v1, "check-cast"

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :pswitch_11
    const-string v1, "filled-new-array"

    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :pswitch_12
    const-string v1, "new-array"

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :pswitch_13
    const-string v1, "new-instance"

    .line 103
    .line 104
    goto/16 :goto_0

    .line 105
    .line 106
    :pswitch_14
    const-string v1, "aput"

    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :pswitch_15
    const-string v1, "aget"

    .line 111
    .line 112
    goto/16 :goto_0

    .line 113
    .line 114
    :pswitch_16
    const-string v1, "monitor-exit"

    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :pswitch_17
    const-string v1, "monitor-enter"

    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :pswitch_18
    const-string v1, "throw"

    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :pswitch_19
    const-string v1, "array-length"

    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :pswitch_1a
    const-string v1, "return"

    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :pswitch_1b
    const-string v1, "to-short"

    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :pswitch_1c
    const-string v1, "to-char"

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :pswitch_1d
    const-string v1, "to-byte"

    .line 143
    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :pswitch_1e
    const-string v1, "conv"

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :pswitch_1f
    const-string v1, "cmpg"

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :pswitch_20
    const-string v1, "cmpl"

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :pswitch_21
    const-string v1, "not"

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :pswitch_22
    const-string v1, "ushr"

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :pswitch_23
    const-string v1, "shr"

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :pswitch_24
    const-string v1, "shl"

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :pswitch_25
    const-string v1, "xor"

    .line 171
    .line 172
    goto :goto_0

    .line 173
    :pswitch_26
    const-string v1, "or"

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :pswitch_27
    const-string v1, "and"

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :pswitch_28
    const-string v1, "neg"

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :pswitch_29
    const-string v1, "rem"

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :pswitch_2a
    const-string v1, "div"

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :pswitch_2b
    const-string v1, "mul"

    .line 189
    .line 190
    goto :goto_0

    .line 191
    :pswitch_2c
    const-string v1, "sub"

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :pswitch_2d
    const-string v1, "add"

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :pswitch_2e
    const-string v1, "switch"

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :pswitch_2f
    const-string v1, "if-gt"

    .line 201
    .line 202
    goto :goto_0

    .line 203
    :pswitch_30
    const-string v1, "if-le"

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :pswitch_31
    const-string v1, "if-ge"

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :pswitch_32
    const-string v1, "if-lt"

    .line 210
    .line 211
    goto :goto_0

    .line 212
    :pswitch_33
    const-string v1, "if-ne"

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :pswitch_34
    const-string v1, "if-eq"

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :pswitch_35
    const-string v1, "goto"

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :pswitch_36
    const-string v1, "const"

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :pswitch_37
    const-string v1, "move-exception"

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :pswitch_38
    const-string v1, "move-param"

    .line 228
    .line 229
    goto :goto_0

    .line 230
    :pswitch_39
    const-string v1, "move"

    .line 231
    .line 232
    goto :goto_0

    .line 233
    :pswitch_3a
    const-string v1, "nop"

    .line 234
    .line 235
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    sget-object v1, Ly4/c;->p:Ly4/c;

    .line 239
    .line 240
    const-string v2, " ."

    .line 241
    .line 242
    const-string v3, " "

    .line 243
    .line 244
    iget-object v4, p0, Lw4/n;->b:Ly4/c;

    .line 245
    .line 246
    if-eq v4, v1, :cond_0

    .line 247
    .line 248
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    goto :goto_1

    .line 255
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    :goto_1
    const-string v1, " <-"

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    iget-object v1, p0, Lw4/n;->c:Ly4/e;

    .line 264
    .line 265
    move-object v4, v1

    .line 266
    check-cast v4, Lb5/c;

    .line 267
    .line 268
    iget-object v4, v4, Lb5/c;->b:[Ljava/lang/Object;

    .line 269
    .line 270
    array-length v4, v4

    .line 271
    const/16 v5, 0x20

    .line 272
    .line 273
    const/4 v6, 0x0

    .line 274
    if-nez v4, :cond_1

    .line 275
    .line 276
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_1
    const/4 v2, 0x0

    .line 281
    :goto_2
    if-ge v2, v4, :cond_2

    .line 282
    .line 283
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-interface {v1, v2}, Ly4/e;->b(I)Ly4/c;

    .line 287
    .line 288
    .line 289
    move-result-object v7

    .line 290
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    add-int/lit8 v2, v2, 0x1

    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_2
    :goto_3
    iget-boolean v1, p0, Lw4/n;->f:Z

    .line 297
    .line 298
    if-eqz v1, :cond_3

    .line 299
    .line 300
    const-string v1, " call"

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    :cond_3
    iget-object v1, p0, Lw4/n;->d:Ly4/b;

    .line 306
    .line 307
    iget-object v2, v1, Lb5/c;->b:[Ljava/lang/Object;

    .line 308
    .line 309
    array-length v2, v2

    .line 310
    if-eqz v2, :cond_5

    .line 311
    .line 312
    const-string v3, " throws"

    .line 313
    .line 314
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    :goto_4
    if-ge v6, v2, :cond_b

    .line 318
    .line 319
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v6}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    check-cast v3, Ly4/c;

    .line 327
    .line 328
    sget-object v4, Ly4/c;->x:Ly4/c;

    .line 329
    .line 330
    if-ne v3, v4, :cond_4

    .line 331
    .line 332
    const-string v3, "<any>"

    .line 333
    .line 334
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    goto :goto_5

    .line 338
    :cond_4
    invoke-virtual {v1, v6}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    check-cast v3, Ly4/c;

    .line 343
    .line 344
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 348
    .line 349
    goto :goto_4

    .line 350
    :cond_5
    const/4 v1, 0x1

    .line 351
    iget v2, p0, Lw4/n;->e:I

    .line 352
    .line 353
    if-eq v2, v1, :cond_a

    .line 354
    .line 355
    const/4 v1, 0x2

    .line 356
    if-eq v2, v1, :cond_9

    .line 357
    .line 358
    const/4 v1, 0x3

    .line 359
    if-eq v2, v1, :cond_8

    .line 360
    .line 361
    const/4 v1, 0x4

    .line 362
    if-eq v2, v1, :cond_7

    .line 363
    .line 364
    const/4 v1, 0x5

    .line 365
    if-eq v2, v1, :cond_6

    .line 366
    .line 367
    invoke-static {v2}, Lqf/c;->d0(I)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v1

    .line 371
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    goto :goto_6

    .line 379
    :cond_6
    const-string v1, " switches"

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    goto :goto_6

    .line 385
    :cond_7
    const-string v1, " ifs"

    .line 386
    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_8
    const-string v1, " gotos"

    .line 392
    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    goto :goto_6

    .line 397
    :cond_9
    const-string v1, " returns"

    .line 398
    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    goto :goto_6

    .line 403
    :cond_a
    const-string v1, " flows"

    .line 404
    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    :cond_b
    :goto_6
    const/16 v1, 0x7d

    .line 409
    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    return-object v0

    .line 418
    nop

    .line 419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
