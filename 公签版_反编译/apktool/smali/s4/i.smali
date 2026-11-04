.class public final Ls4/i;
.super Lb5/c;
.source "SourceFile"


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb5/c;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ls4/i;->c:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final g()I
    .locals 2

    .line 1
    iget-object v0, p0, Lb5/c;->b:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return v0

    .line 8
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ls4/h;

    .line 15
    .line 16
    invoke-virtual {v0}, Ls4/h;->e()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0}, Ls4/h;->b()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public final h(Lb5/b;)V
    .locals 14

    .line 1
    iget v0, p1, Lb5/b;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lb5/c;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    invoke-virtual {p1}, Lb5/b;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v2, :cond_7

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_7

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Ls4/h;

    .line 21
    .line 22
    invoke-virtual {v4}, Ls4/h;->b()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    mul-int/lit8 v5, v5, 0x2

    .line 27
    .line 28
    const-string v6, ""

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    if-nez v5, :cond_0

    .line 32
    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_0
    iget v8, p1, Lb5/b;->f:I

    .line 36
    .line 37
    mul-int/lit8 v9, v8, 0x2

    .line 38
    .line 39
    add-int/lit8 v9, v9, 0x8

    .line 40
    .line 41
    div-int/lit8 v8, v8, 0x2

    .line 42
    .line 43
    add-int/2addr v8, v9

    .line 44
    iget v9, p1, Lb5/b;->e:I

    .line 45
    .line 46
    sub-int/2addr v9, v8

    .line 47
    invoke-virtual {v4}, Ls4/h;->g()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    if-nez v8, :cond_1

    .line 52
    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v10, "  "

    .line 58
    .line 59
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ls4/h;->f()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v4, ": "

    .line 70
    .line 71
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-nez v9, :cond_2

    .line 83
    .line 84
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    sub-int/2addr v9, v7

    .line 90
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    new-instance v12, Ljava/io/StringWriter;

    .line 99
    .line 100
    add-int/2addr v10, v11

    .line 101
    mul-int/lit8 v10, v10, 0x3

    .line 102
    .line 103
    invoke-direct {v12, v10}, Ljava/io/StringWriter;-><init>(I)V

    .line 104
    .line 105
    .line 106
    new-instance v10, Lb5/i;

    .line 107
    .line 108
    invoke-direct {v10, v12, v7, v9, v6}, Lb5/i;-><init>(Ljava/io/StringWriter;IILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :try_start_0
    iget-object v7, v10, Lb5/i;->e:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v7, Lb5/d;

    .line 114
    .line 115
    invoke-virtual {v7, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v4, v10, Lb5/i;->f:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v4, Lb5/d;

    .line 121
    .line 122
    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .line 124
    .line 125
    iget-object v4, v10, Lb5/i;->d:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v4, Ljava/lang/StringBuffer;

    .line 128
    .line 129
    iget-object v7, v10, Lb5/i;->c:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v7, Ljava/lang/StringBuffer;

    .line 132
    .line 133
    iget-object v8, v10, Lb5/i;->f:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v8, Lb5/d;

    .line 136
    .line 137
    iget-object v9, v10, Lb5/i;->e:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v9, Lb5/d;

    .line 140
    .line 141
    :try_start_1
    invoke-static {v7, v9}, Lb5/i;->b(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v4, v8}, Lb5/i;->b(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v10}, Lb5/i;->k()V

    .line 148
    .line 149
    .line 150
    invoke-static {v7, v9}, Lb5/i;->b(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    .line 151
    .line 152
    .line 153
    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    const/16 v13, 0xa

    .line 158
    .line 159
    if-eqz v11, :cond_3

    .line 160
    .line 161
    invoke-virtual {v8, v13}, Lb5/d;->write(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v10}, Lb5/i;->k()V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_3
    invoke-static {v4, v8}, Lb5/i;->b(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    .line 169
    .line 170
    .line 171
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_4

    .line 176
    .line 177
    invoke-virtual {v9, v13}, Lb5/d;->write(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v10}, Lb5/i;->k()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_4
    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    :goto_4
    if-eqz v7, :cond_5

    .line 189
    .line 190
    invoke-virtual {p1, v5, v7}, Lb5/b;->b(ILjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_5
    if-eqz v5, :cond_6

    .line 195
    .line 196
    invoke-virtual {p1, v5, v6}, Lb5/b;->b(ILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :catch_0
    move-exception p1

    .line 204
    new-instance v0, Ljava/lang/RuntimeException;

    .line 205
    .line 206
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    throw v0

    .line 210
    :catch_1
    move-exception p1

    .line 211
    new-instance v0, Ljava/lang/RuntimeException;

    .line 212
    .line 213
    const-string v1, "shouldn\'t happen"

    .line 214
    .line 215
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    .line 217
    .line 218
    throw v0

    .line 219
    :cond_7
    :goto_6
    if-ge v3, v1, :cond_8

    .line 220
    .line 221
    invoke-virtual {p0, v3}, Lb5/c;->d(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Ls4/h;

    .line 226
    .line 227
    :try_start_2
    invoke-virtual {v2, p1}, Ls4/h;->l(Lb5/b;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 228
    .line 229
    .line 230
    add-int/lit8 v3, v3, 0x1

    .line 231
    .line 232
    goto :goto_6

    .line 233
    :catch_2
    move-exception p1

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v1, "...while writing "

    .line 237
    .line 238
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-static {p1, v0}, Lp4/a;->a(Ljava/lang/Exception;Ljava/lang/String;)Lp4/a;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    throw p1

    .line 253
    :cond_8
    iget p1, p1, Lb5/b;->c:I

    .line 254
    .line 255
    sub-int/2addr p1, v0

    .line 256
    div-int/lit8 p1, p1, 0x2

    .line 257
    .line 258
    invoke-virtual {p0}, Ls4/i;->g()I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-ne p1, v0, :cond_9

    .line 263
    .line 264
    return-void

    .line 265
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    .line 266
    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v2, "write length mismatch; expected "

    .line 270
    .line 271
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Ls4/i;->g()I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v2, " but actually wrote "

    .line 282
    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto :goto_8

    .line 297
    :goto_7
    throw v0

    .line 298
    :goto_8
    goto :goto_7
.end method
