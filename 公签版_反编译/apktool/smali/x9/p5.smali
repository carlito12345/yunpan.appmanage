.class public final Lx9/p5;
.super Lc6/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc6/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static F(J)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-wide/16 v2, 0x400

    .line 4
    .line 5
    cmp-long v4, p0, v2

    .line 6
    .line 7
    if-gez v4, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, " KB"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    const-wide/32 v2, 0x100000

    .line 28
    .line 29
    .line 30
    const-string v4, "%.2f"

    .line 31
    .line 32
    cmp-long v5, p0, v2

    .line 33
    .line 34
    if-gez v5, :cond_1

    .line 35
    .line 36
    long-to-double p0, p0

    .line 37
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 38
    .line 39
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 40
    .line 41
    .line 42
    div-double/2addr p0, v2

    .line 43
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-array p1, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object p0, p1, v0

    .line 50
    .line 51
    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string p1, " MB"

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_1
    const-wide/32 v2, 0x40000000

    .line 63
    .line 64
    .line 65
    cmp-long v5, p0, v2

    .line 66
    .line 67
    if-gez v5, :cond_2

    .line 68
    .line 69
    long-to-double p0, p0

    .line 70
    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    .line 71
    .line 72
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 73
    .line 74
    .line 75
    div-double/2addr p0, v2

    .line 76
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    new-array p1, v1, [Ljava/lang/Object;

    .line 81
    .line 82
    aput-object p0, p1, v0

    .line 83
    .line 84
    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string p1, " GB"

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :cond_2
    const-wide/16 v2, 0x0

    .line 96
    .line 97
    cmp-long v5, p0, v2

    .line 98
    .line 99
    if-gez v5, :cond_3

    .line 100
    .line 101
    long-to-double p0, p0

    .line 102
    const-wide/high16 v2, 0x41d0000000000000L    # 1.073741824E9

    .line 103
    .line 104
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 105
    .line 106
    .line 107
    div-double/2addr p0, v2

    .line 108
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    new-array p1, v1, [Ljava/lang/Object;

    .line 113
    .line 114
    aput-object p0, p1, v0

    .line 115
    .line 116
    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    const-string p1, " TB"

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :cond_3
    long-to-double p0, p0

    .line 128
    const-wide/high16 v2, 0x4270000000000000L    # 1.099511627776E12

    .line 129
    .line 130
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 131
    .line 132
    .line 133
    div-double/2addr p0, v2

    .line 134
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    new-array p1, v1, [Ljava/lang/Object;

    .line 139
    .line 140
    aput-object p0, p1, v0

    .line 141
    .line 142
    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    const-string p1, " PB"

    .line 147
    .line 148
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0
.end method


# virtual methods
.method public final B(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    new-instance p1, Lh6/a;

    .line 2
    .line 3
    const p3, 0x7f0e017e

    .line 4
    .line 5
    .line 6
    invoke-direct {p1, p3, p2}, Lh6/a;-><init>(ILandroid/view/ViewGroup;)V

    .line 7
    .line 8
    .line 9
    return-object p1
.end method

.method public final z(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lh6/a;

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    check-cast v1, Lx9/b6;

    .line 8
    .line 9
    iget-object v2, v1, Lx9/b6;->b:Landroidx/emoji2/text/q;

    .line 10
    .line 11
    const-string v3, "    "

    .line 12
    .line 13
    const-string v4, "\u5927\u5c0f\uff1a"

    .line 14
    .line 15
    const v5, 0x7f0801d0

    .line 16
    .line 17
    .line 18
    const v6, 0x7f080132

    .line 19
    .line 20
    .line 21
    const v7, 0x7f0b0427

    .line 22
    .line 23
    .line 24
    const v8, 0x7f0b0523

    .line 25
    .line 26
    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v10, 0x1

    .line 29
    const v11, 0x7f0b04b5

    .line 30
    .line 31
    .line 32
    const v12, 0x7f0b05b8

    .line 33
    .line 34
    .line 35
    const-string v13, ""

    .line 36
    .line 37
    if-eqz v2, :cond_7

    .line 38
    .line 39
    iget-object v2, v2, Landroidx/emoji2/text/q;->d:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v2}, Lif/a;->k0(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v14

    .line 47
    iget-object v1, v1, Lx9/b6;->b:Landroidx/emoji2/text/q;

    .line 48
    .line 49
    if-eqz v14, :cond_0

    .line 50
    .line 51
    new-instance v14, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v15, "."

    .line 57
    .line 58
    invoke-virtual {v2, v15}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v15

    .line 62
    invoke-virtual {v2, v9, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, ".apk"

    .line 70
    .line 71
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iput-object v2, v1, Landroidx/emoji2/text/q;->d:Ljava/lang/Object;

    .line 79
    .line 80
    :cond_0
    invoke-virtual {v0, v8, v2}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    iget-object v14, v1, Landroidx/emoji2/text/q;->e:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v14, Ljava/lang/String;

    .line 86
    .line 87
    if-nez v14, :cond_1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const-string v13, "T"

    .line 91
    .line 92
    const-string v15, " "

    .line 93
    .line 94
    invoke-virtual {v14, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v14

    .line 102
    const/16 v15, 0x13

    .line 103
    .line 104
    if-le v14, v15, :cond_2

    .line 105
    .line 106
    invoke-virtual {v13, v9, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    :cond_2
    :goto_0
    invoke-virtual {v0, v12, v10}, Lh6/a;->d(IZ)V

    .line 111
    .line 112
    .line 113
    iget v14, v1, Landroidx/emoji2/text/q;->b:I

    .line 114
    .line 115
    if-nez v14, :cond_4

    .line 116
    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget v1, v1, Landroidx/emoji2/text/q;->c:I

    .line 123
    .line 124
    int-to-double v14, v1

    .line 125
    invoke-static {v14, v15}, Lif/a;->D0(D)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v0, v12, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    move-object v13, v2

    .line 146
    :cond_3
    :goto_1
    const v1, 0x7f0b0523

    .line 147
    .line 148
    .line 149
    goto/16 :goto_11

    .line 150
    .line 151
    :cond_4
    invoke-virtual {v0, v12, v13}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    const/4 v1, 0x3

    .line 155
    if-ne v14, v1, :cond_5

    .line 156
    .line 157
    const v1, 0x7f0802dc

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v11, v1}, Lh6/a;->b(II)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_5
    if-ne v14, v10, :cond_6

    .line 165
    .line 166
    const v5, 0x7f080132

    .line 167
    .line 168
    .line 169
    :cond_6
    invoke-virtual {v0, v11, v5}, Lh6/a;->b(II)V

    .line 170
    .line 171
    .line 172
    :goto_2
    invoke-virtual {v0, v7, v9}, Lh6/a;->d(IZ)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_12

    .line 176
    .line 177
    :cond_7
    iget-object v2, v1, Lx9/b6;->a:Lba/i;

    .line 178
    .line 179
    const v14, 0x7f080246

    .line 180
    .line 181
    .line 182
    if-eqz v2, :cond_b

    .line 183
    .line 184
    iget-object v1, v2, Lba/i;->a:Ljava/lang/Object;

    .line 185
    .line 186
    move-object v13, v1

    .line 187
    check-cast v13, Ljava/lang/String;

    .line 188
    .line 189
    iget-object v1, v2, Lba/i;->f:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v1, Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_9

    .line 198
    .line 199
    invoke-virtual {v0, v8, v13}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    const-string v1, "  \u8fd4\u56de\u4e0a\u7ea7\u76ee\u5f55"

    .line 203
    .line 204
    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_8

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_8
    const v5, 0x7f080132

    .line 212
    .line 213
    .line 214
    :goto_3
    invoke-virtual {v0, v11, v5}, Lh6/a;->b(II)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v12, v9}, Lh6/a;->d(IZ)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v7, v9}, Lh6/a;->d(IZ)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_12

    .line 224
    .line 225
    :cond_9
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    const-string v5, "\u52a0\u8f7d\u66f4\u591a"

    .line 230
    .line 231
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_a

    .line 236
    .line 237
    invoke-virtual {v0, v8, v13}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v11, v14}, Lh6/a;->b(II)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v12, v9}, Lh6/a;->d(IZ)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v7, v9}, Lh6/a;->d(IZ)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_12

    .line 250
    .line 251
    :cond_a
    invoke-virtual {v0, v12, v10}, Lh6/a;->d(IZ)V

    .line 252
    .line 253
    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object v4, v2, Lba/i;->b:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v4, Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    iget-object v2, v2, Lba/i;->c:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v2, Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v0, v12, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_1

    .line 284
    .line 285
    :cond_b
    iget-object v2, v1, Lx9/b6;->c:Lba/j;

    .line 286
    .line 287
    const-string v3, "     "

    .line 288
    .line 289
    const-string v15, "   \u52a0\u8f7d\u66f4\u591a"

    .line 290
    .line 291
    const-string v7, "    \u8fd4\u56de\u4e0a\u7ea7\u76ee\u5f55"

    .line 292
    .line 293
    if-eqz v2, :cond_f

    .line 294
    .line 295
    iget-wide v8, v2, Lba/j;->a:J

    .line 296
    .line 297
    const-wide/16 v16, 0x0

    .line 298
    .line 299
    cmp-long v1, v8, v16

    .line 300
    .line 301
    if-lez v1, :cond_c

    .line 302
    .line 303
    iget-object v13, v2, Lba/j;->b:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v0, v12, v10}, Lh6/a;->d(IZ)V

    .line 306
    .line 307
    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    iget-object v4, v2, Lba/j;->d:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    iget-wide v2, v2, Lba/j;->c:J

    .line 322
    .line 323
    invoke-static {v2, v3}, Lx9/p5;->F(J)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-virtual {v0, v12, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_1

    .line 338
    .line 339
    :cond_c
    iget-object v1, v2, Lba/j;->g:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    if-eqz v3, :cond_d

    .line 346
    .line 347
    invoke-virtual {v0, v11, v5}, Lh6/a;->b(II)V

    .line 348
    .line 349
    .line 350
    :goto_4
    const v3, 0x7f0b0523

    .line 351
    .line 352
    .line 353
    goto :goto_5

    .line 354
    :cond_d
    invoke-virtual {v1, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    if-eqz v3, :cond_e

    .line 359
    .line 360
    invoke-virtual {v0, v11, v14}, Lh6/a;->b(II)V

    .line 361
    .line 362
    .line 363
    goto :goto_4

    .line 364
    :cond_e
    invoke-virtual {v0, v11, v6}, Lh6/a;->b(II)V

    .line 365
    .line 366
    .line 367
    goto :goto_4

    .line 368
    :goto_5
    invoke-virtual {v0, v3, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v12, v10}, Lh6/a;->d(IZ)V

    .line 372
    .line 373
    .line 374
    iget-object v1, v2, Lba/j;->d:Ljava/lang/String;

    .line 375
    .line 376
    invoke-virtual {v0, v12, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 377
    .line 378
    .line 379
    const v1, 0x7f0b0427

    .line 380
    .line 381
    .line 382
    const/4 v2, 0x0

    .line 383
    invoke-virtual {v0, v1, v2}, Lh6/a;->d(IZ)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_12

    .line 387
    .line 388
    :cond_f
    iget-object v2, v1, Lx9/b6;->e:Lba/s;

    .line 389
    .line 390
    if-eqz v2, :cond_13

    .line 391
    .line 392
    iget v1, v2, Lba/s;->f:I

    .line 393
    .line 394
    iget-object v4, v2, Lba/s;->a:Ljava/lang/String;

    .line 395
    .line 396
    if-ne v1, v10, :cond_10

    .line 397
    .line 398
    invoke-virtual {v0, v12, v10}, Lh6/a;->d(IZ)V

    .line 399
    .line 400
    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    iget-wide v3, v2, Lba/s;->c:J

    .line 413
    .line 414
    invoke-static {v3, v4}, Lx9/p5;->F(J)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v0, v12, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 426
    .line 427
    .line 428
    iget-object v1, v2, Lba/s;->i:Ljava/io/Serializable;

    .line 429
    .line 430
    move-object v13, v1

    .line 431
    check-cast v13, Ljava/lang/String;

    .line 432
    .line 433
    goto/16 :goto_1

    .line 434
    .line 435
    :cond_10
    iget-object v1, v2, Lba/s;->h:Ljava/io/Serializable;

    .line 436
    .line 437
    check-cast v1, Ljava/lang/String;

    .line 438
    .line 439
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    if-eqz v2, :cond_11

    .line 444
    .line 445
    invoke-virtual {v0, v11, v5}, Lh6/a;->b(II)V

    .line 446
    .line 447
    .line 448
    :goto_6
    const v2, 0x7f0b0523

    .line 449
    .line 450
    .line 451
    goto :goto_7

    .line 452
    :cond_11
    invoke-virtual {v1, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-eqz v2, :cond_12

    .line 457
    .line 458
    invoke-virtual {v0, v11, v14}, Lh6/a;->b(II)V

    .line 459
    .line 460
    .line 461
    goto :goto_6

    .line 462
    :cond_12
    invoke-virtual {v0, v11, v6}, Lh6/a;->b(II)V

    .line 463
    .line 464
    .line 465
    goto :goto_6

    .line 466
    :goto_7
    invoke-virtual {v0, v2, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v12, v10}, Lh6/a;->d(IZ)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v12, v4}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 473
    .line 474
    .line 475
    const v1, 0x7f0b0427

    .line 476
    .line 477
    .line 478
    const/4 v2, 0x0

    .line 479
    invoke-virtual {v0, v1, v2}, Lh6/a;->d(IZ)V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_12

    .line 483
    .line 484
    :cond_13
    iget-object v2, v1, Lx9/b6;->j:Lba/g;

    .line 485
    .line 486
    if-eqz v2, :cond_17

    .line 487
    .line 488
    iget-boolean v1, v2, Lba/g;->d:Z

    .line 489
    .line 490
    iget-object v4, v2, Lba/g;->c:Ljava/lang/String;

    .line 491
    .line 492
    iget-object v13, v2, Lba/g;->b:Ljava/lang/String;

    .line 493
    .line 494
    if-nez v1, :cond_14

    .line 495
    .line 496
    invoke-virtual {v0, v12, v10}, Lh6/a;->d(IZ)V

    .line 497
    .line 498
    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    iget-wide v2, v2, Lba/g;->e:J

    .line 511
    .line 512
    long-to-double v2, v2

    .line 513
    invoke-static {v2, v3}, Lif/a;->D0(D)Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-virtual {v0, v12, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 525
    .line 526
    .line 527
    goto/16 :goto_1

    .line 528
    .line 529
    :cond_14
    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 530
    .line 531
    .line 532
    move-result v1

    .line 533
    if-eqz v1, :cond_15

    .line 534
    .line 535
    invoke-virtual {v0, v11, v5}, Lh6/a;->b(II)V

    .line 536
    .line 537
    .line 538
    :goto_8
    const v1, 0x7f0b0523

    .line 539
    .line 540
    .line 541
    goto :goto_9

    .line 542
    :cond_15
    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    if-eqz v1, :cond_16

    .line 547
    .line 548
    invoke-virtual {v0, v11, v14}, Lh6/a;->b(II)V

    .line 549
    .line 550
    .line 551
    goto :goto_8

    .line 552
    :cond_16
    invoke-virtual {v0, v11, v6}, Lh6/a;->b(II)V

    .line 553
    .line 554
    .line 555
    goto :goto_8

    .line 556
    :goto_9
    invoke-virtual {v0, v1, v13}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0, v12, v10}, Lh6/a;->d(IZ)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0, v12, v4}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 563
    .line 564
    .line 565
    const v1, 0x7f0b0427

    .line 566
    .line 567
    .line 568
    const/4 v2, 0x0

    .line 569
    invoke-virtual {v0, v1, v2}, Lh6/a;->d(IZ)V

    .line 570
    .line 571
    .line 572
    goto/16 :goto_12

    .line 573
    .line 574
    :cond_17
    iget-object v2, v1, Lx9/b6;->f:Lba/l;

    .line 575
    .line 576
    if-eqz v2, :cond_1b

    .line 577
    .line 578
    iget-wide v3, v2, Lba/l;->b:J

    .line 579
    .line 580
    iget-object v13, v2, Lba/l;->a:Ljava/lang/String;

    .line 581
    .line 582
    const-wide/16 v8, -0x1

    .line 583
    .line 584
    cmp-long v1, v3, v8

    .line 585
    .line 586
    if-eqz v1, :cond_18

    .line 587
    .line 588
    invoke-virtual {v0, v12, v10}, Lh6/a;->d(IZ)V

    .line 589
    .line 590
    .line 591
    iget-wide v1, v2, Lba/l;->b:J

    .line 592
    .line 593
    long-to-double v1, v1

    .line 594
    invoke-static {v1, v2}, Lif/a;->D0(D)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    invoke-virtual {v0, v12, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 599
    .line 600
    .line 601
    goto/16 :goto_1

    .line 602
    .line 603
    :cond_18
    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    if-eqz v1, :cond_19

    .line 608
    .line 609
    invoke-virtual {v0, v11, v5}, Lh6/a;->b(II)V

    .line 610
    .line 611
    .line 612
    :goto_a
    const v1, 0x7f0b0523

    .line 613
    .line 614
    .line 615
    goto :goto_b

    .line 616
    :cond_19
    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    if-eqz v1, :cond_1a

    .line 621
    .line 622
    invoke-virtual {v0, v11, v14}, Lh6/a;->b(II)V

    .line 623
    .line 624
    .line 625
    goto :goto_a

    .line 626
    :cond_1a
    invoke-virtual {v0, v11, v6}, Lh6/a;->b(II)V

    .line 627
    .line 628
    .line 629
    goto :goto_a

    .line 630
    :goto_b
    invoke-virtual {v0, v1, v13}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 631
    .line 632
    .line 633
    const/4 v1, 0x0

    .line 634
    invoke-virtual {v0, v12, v1}, Lh6/a;->d(IZ)V

    .line 635
    .line 636
    .line 637
    const v2, 0x7f0b0427

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0, v2, v1}, Lh6/a;->d(IZ)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_12

    .line 644
    .line 645
    :cond_1b
    iget-object v2, v1, Lx9/b6;->i:Lba/n;

    .line 646
    .line 647
    if-eqz v2, :cond_1f

    .line 648
    .line 649
    iget-boolean v1, v2, Lba/n;->a:Z

    .line 650
    .line 651
    if-nez v1, :cond_1c

    .line 652
    .line 653
    iget-object v1, v2, Lba/n;->d:Ljava/lang/Object;

    .line 654
    .line 655
    move-object v13, v1

    .line 656
    check-cast v13, Ljava/lang/String;

    .line 657
    .line 658
    invoke-virtual {v0, v12, v10}, Lh6/a;->d(IZ)V

    .line 659
    .line 660
    .line 661
    iget-object v1, v2, Lba/n;->e:Ljava/lang/Object;

    .line 662
    .line 663
    check-cast v1, Ljava/lang/String;

    .line 664
    .line 665
    invoke-virtual {v0, v12, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 666
    .line 667
    .line 668
    goto/16 :goto_1

    .line 669
    .line 670
    :cond_1c
    iget-object v1, v2, Lba/n;->d:Ljava/lang/Object;

    .line 671
    .line 672
    check-cast v1, Ljava/lang/String;

    .line 673
    .line 674
    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 675
    .line 676
    .line 677
    move-result v3

    .line 678
    if-eqz v3, :cond_1d

    .line 679
    .line 680
    invoke-virtual {v0, v11, v5}, Lh6/a;->b(II)V

    .line 681
    .line 682
    .line 683
    :goto_c
    const v3, 0x7f0b0523

    .line 684
    .line 685
    .line 686
    goto :goto_d

    .line 687
    :cond_1d
    invoke-virtual {v1, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 688
    .line 689
    .line 690
    move-result v3

    .line 691
    if-eqz v3, :cond_1e

    .line 692
    .line 693
    invoke-virtual {v0, v11, v14}, Lh6/a;->b(II)V

    .line 694
    .line 695
    .line 696
    goto :goto_c

    .line 697
    :cond_1e
    invoke-virtual {v0, v11, v6}, Lh6/a;->b(II)V

    .line 698
    .line 699
    .line 700
    goto :goto_c

    .line 701
    :goto_d
    invoke-virtual {v0, v3, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v0, v12, v10}, Lh6/a;->d(IZ)V

    .line 705
    .line 706
    .line 707
    iget-object v1, v2, Lba/n;->e:Ljava/lang/Object;

    .line 708
    .line 709
    check-cast v1, Ljava/lang/String;

    .line 710
    .line 711
    invoke-virtual {v0, v12, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 712
    .line 713
    .line 714
    const v1, 0x7f0b0427

    .line 715
    .line 716
    .line 717
    const/4 v2, 0x0

    .line 718
    invoke-virtual {v0, v1, v2}, Lh6/a;->d(IZ)V

    .line 719
    .line 720
    .line 721
    goto/16 :goto_12

    .line 722
    .line 723
    :cond_1f
    iget-object v2, v1, Lx9/b6;->g:Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 724
    .line 725
    if-eqz v2, :cond_22

    .line 726
    .line 727
    iget-object v13, v2, Lcom/yunpan/appmanage/bean/NameValueBean;->name:Ljava/lang/String;

    .line 728
    .line 729
    iget-object v1, v2, Lcom/yunpan/appmanage/bean/NameValueBean;->value2:Ljava/lang/String;

    .line 730
    .line 731
    if-eqz v1, :cond_20

    .line 732
    .line 733
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 734
    .line 735
    .line 736
    move-result v1

    .line 737
    if-eqz v1, :cond_21

    .line 738
    .line 739
    :cond_20
    const/4 v1, 0x0

    .line 740
    goto :goto_e

    .line 741
    :cond_21
    invoke-virtual {v0, v12, v10}, Lh6/a;->d(IZ)V

    .line 742
    .line 743
    .line 744
    iget-object v1, v2, Lcom/yunpan/appmanage/bean/NameValueBean;->value2:Ljava/lang/String;

    .line 745
    .line 746
    invoke-virtual {v0, v12, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 747
    .line 748
    .line 749
    goto/16 :goto_1

    .line 750
    .line 751
    :goto_e
    invoke-virtual {v0, v12, v1}, Lh6/a;->d(IZ)V

    .line 752
    .line 753
    .line 754
    goto/16 :goto_1

    .line 755
    .line 756
    :cond_22
    iget-object v1, v1, Lx9/b6;->h:Lba/k;

    .line 757
    .line 758
    if-eqz v1, :cond_3

    .line 759
    .line 760
    iget-object v13, v1, Lba/k;->a:Ljava/lang/String;

    .line 761
    .line 762
    iget-boolean v2, v1, Lba/k;->d:Z

    .line 763
    .line 764
    if-eqz v2, :cond_25

    .line 765
    .line 766
    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 767
    .line 768
    .line 769
    move-result v2

    .line 770
    if-eqz v2, :cond_23

    .line 771
    .line 772
    invoke-virtual {v0, v11, v5}, Lh6/a;->b(II)V

    .line 773
    .line 774
    .line 775
    :goto_f
    const v2, 0x7f0b0523

    .line 776
    .line 777
    .line 778
    goto :goto_10

    .line 779
    :cond_23
    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 780
    .line 781
    .line 782
    move-result v2

    .line 783
    if-eqz v2, :cond_24

    .line 784
    .line 785
    invoke-virtual {v0, v11, v14}, Lh6/a;->b(II)V

    .line 786
    .line 787
    .line 788
    goto :goto_f

    .line 789
    :cond_24
    invoke-virtual {v0, v11, v6}, Lh6/a;->b(II)V

    .line 790
    .line 791
    .line 792
    goto :goto_f

    .line 793
    :goto_10
    invoke-virtual {v0, v2, v13}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {v0, v12, v10}, Lh6/a;->d(IZ)V

    .line 797
    .line 798
    .line 799
    iget-object v1, v1, Lba/k;->b:Ljava/lang/String;

    .line 800
    .line 801
    invoke-virtual {v0, v12, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 802
    .line 803
    .line 804
    const v1, 0x7f0b0427

    .line 805
    .line 806
    .line 807
    const/4 v2, 0x0

    .line 808
    invoke-virtual {v0, v1, v2}, Lh6/a;->d(IZ)V

    .line 809
    .line 810
    .line 811
    goto/16 :goto_12

    .line 812
    .line 813
    :cond_25
    invoke-virtual {v0, v12, v10}, Lh6/a;->d(IZ)V

    .line 814
    .line 815
    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    .line 817
    .line 818
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    iget-wide v3, v1, Lba/k;->c:J

    .line 822
    .line 823
    long-to-double v3, v3

    .line 824
    invoke-static {v3, v4}, Lif/a;->D0(D)Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .line 830
    .line 831
    const-string v3, "  "

    .line 832
    .line 833
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    iget-object v1, v1, Lba/k;->b:Ljava/lang/String;

    .line 837
    .line 838
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    invoke-virtual {v0, v12, v1}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 846
    .line 847
    .line 848
    goto/16 :goto_1

    .line 849
    .line 850
    :goto_11
    invoke-virtual {v0, v1, v13}, Lh6/a;->c(ILjava/lang/CharSequence;)V

    .line 851
    .line 852
    .line 853
    const v1, 0x7f0b0427

    .line 854
    .line 855
    .line 856
    invoke-virtual {v0, v1, v10}, Lh6/a;->d(IZ)V

    .line 857
    .line 858
    .line 859
    invoke-static {v13}, Lif/a;->X(Ljava/lang/String;)Z

    .line 860
    .line 861
    .line 862
    move-result v1

    .line 863
    if-eqz v1, :cond_26

    .line 864
    .line 865
    const v1, 0x7f08021e

    .line 866
    .line 867
    .line 868
    invoke-virtual {v0, v11, v1}, Lh6/a;->b(II)V

    .line 869
    .line 870
    .line 871
    goto :goto_12

    .line 872
    :cond_26
    invoke-static {v13}, Lif/a;->c0(Ljava/lang/String;)Z

    .line 873
    .line 874
    .line 875
    move-result v1

    .line 876
    if-eqz v1, :cond_27

    .line 877
    .line 878
    const v1, 0x7f08020f

    .line 879
    .line 880
    .line 881
    invoke-virtual {v0, v11, v1}, Lh6/a;->b(II)V

    .line 882
    .line 883
    .line 884
    goto :goto_12

    .line 885
    :cond_27
    invoke-static {v13}, Lif/a;->f0(Ljava/lang/String;)Z

    .line 886
    .line 887
    .line 888
    move-result v1

    .line 889
    if-eqz v1, :cond_28

    .line 890
    .line 891
    const v1, 0x7f08029b

    .line 892
    .line 893
    .line 894
    invoke-virtual {v0, v11, v1}, Lh6/a;->b(II)V

    .line 895
    .line 896
    .line 897
    goto :goto_12

    .line 898
    :cond_28
    invoke-static {v13}, Lif/a;->j0(Ljava/lang/String;)Z

    .line 899
    .line 900
    .line 901
    move-result v1

    .line 902
    if-eqz v1, :cond_29

    .line 903
    .line 904
    const v1, 0x7f0802e5

    .line 905
    .line 906
    .line 907
    invoke-virtual {v0, v11, v1}, Lh6/a;->b(II)V

    .line 908
    .line 909
    .line 910
    goto :goto_12

    .line 911
    :cond_29
    invoke-static {v13}, Lza/g;->g(Ljava/lang/String;)Z

    .line 912
    .line 913
    .line 914
    move-result v1

    .line 915
    if-eqz v1, :cond_2a

    .line 916
    .line 917
    const v1, 0x7f0802b7

    .line 918
    .line 919
    .line 920
    invoke-virtual {v0, v11, v1}, Lh6/a;->b(II)V

    .line 921
    .line 922
    .line 923
    goto :goto_12

    .line 924
    :cond_2a
    const v1, 0x7f08025c

    .line 925
    .line 926
    .line 927
    invoke-virtual {v0, v11, v1}, Lh6/a;->b(II)V

    .line 928
    .line 929
    .line 930
    :goto_12
    return-void
.end method
