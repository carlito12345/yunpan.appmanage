.class public final Luh/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luh/e;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Luh/g;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    sget-object p1, Luh/m;->f:Ls5/c;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroidx/room/s;Ljava/lang/StringBuilder;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v1, Luh/g;->a:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v3, Luh/m;->f:Ls5/c;

    .line 13
    .line 14
    iget-object v4, v0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v4, Lwh/k;

    .line 17
    .line 18
    invoke-interface {v4, v3}, Lwh/k;->c(Lwh/o;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    iget v0, v0, Landroidx/room/s;->b:I

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lsh/a;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "Unable to extract value: "

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-direct {v0, v2}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    :goto_0
    check-cast v3, Lsh/o;

    .line 54
    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v3}, Lsh/o;->m()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    :goto_1
    return v0

    .line 68
    :pswitch_0
    sget-object v3, Lwh/a;->F:Lwh/a;

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Landroidx/room/s;->m(Lwh/m;)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const-wide/16 v4, 0x0

    .line 75
    .line 76
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    sget-object v7, Lwh/a;->c:Lwh/a;

    .line 81
    .line 82
    iget-object v0, v0, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lwh/k;

    .line 85
    .line 86
    invoke-interface {v0, v7}, Lwh/k;->d(Lwh/m;)Z

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    if-eqz v8, :cond_3

    .line 91
    .line 92
    invoke-interface {v0, v7}, Lwh/k;->b(Lwh/m;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v8

    .line 96
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    :cond_3
    const/4 v0, 0x0

    .line 101
    if-nez v3, :cond_4

    .line 102
    .line 103
    goto/16 :goto_4

    .line 104
    .line 105
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide v8

    .line 109
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 110
    .line 111
    .line 112
    move-result-wide v10

    .line 113
    iget-object v3, v7, Lwh/a;->b:Lwh/r;

    .line 114
    .line 115
    invoke-virtual {v3, v10, v11, v7}, Lwh/r;->a(JLwh/m;)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    const-wide v6, -0xe79747c00L

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    const-string v10, ":00"

    .line 125
    .line 126
    const-wide/16 v11, 0x1

    .line 127
    .line 128
    const-wide v13, 0xe79747c00L

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    const-wide v4, 0x497968bd80L

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    const/4 v15, 0x1

    .line 139
    cmp-long v16, v8, v6

    .line 140
    .line 141
    if-ltz v16, :cond_6

    .line 142
    .line 143
    const-wide v6, 0x3afff44180L

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    sub-long/2addr v8, v6

    .line 149
    invoke-static {v8, v9, v4, v5}, Lif/a;->C(JJ)J

    .line 150
    .line 151
    .line 152
    move-result-wide v6

    .line 153
    add-long/2addr v6, v11

    .line 154
    rem-long/2addr v8, v4

    .line 155
    add-long/2addr v8, v4

    .line 156
    rem-long/2addr v8, v4

    .line 157
    sub-long/2addr v8, v13

    .line 158
    sget-object v4, Lsh/p;->e:Lsh/p;

    .line 159
    .line 160
    invoke-static {v8, v9, v0, v4}, Lsh/f;->r(JILsh/p;)Lsh/f;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-wide/16 v4, 0x0

    .line 165
    .line 166
    cmp-long v8, v6, v4

    .line 167
    .line 168
    if-lez v8, :cond_5

    .line 169
    .line 170
    const/16 v4, 0x2b

    .line 171
    .line 172
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v0, v0, Lsh/f;->b:Lsh/g;

    .line 182
    .line 183
    iget-byte v0, v0, Lsh/g;->c:B

    .line 184
    .line 185
    if-nez v0, :cond_a

    .line 186
    .line 187
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_6
    add-long/2addr v8, v13

    .line 192
    div-long v6, v8, v4

    .line 193
    .line 194
    rem-long/2addr v8, v4

    .line 195
    sub-long v4, v8, v13

    .line 196
    .line 197
    sget-object v13, Lsh/p;->e:Lsh/p;

    .line 198
    .line 199
    invoke-static {v4, v5, v0, v13}, Lsh/f;->r(JILsh/p;)Lsh/f;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-object v5, v0, Lsh/f;->b:Lsh/g;

    .line 211
    .line 212
    iget-byte v5, v5, Lsh/g;->c:B

    .line 213
    .line 214
    if-nez v5, :cond_7

    .line 215
    .line 216
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    :cond_7
    const-wide/16 v13, 0x0

    .line 220
    .line 221
    cmp-long v5, v6, v13

    .line 222
    .line 223
    if-gez v5, :cond_a

    .line 224
    .line 225
    iget-object v0, v0, Lsh/f;->a:Lsh/e;

    .line 226
    .line 227
    iget v0, v0, Lsh/e;->a:I

    .line 228
    .line 229
    const/16 v5, -0x2710

    .line 230
    .line 231
    if-ne v0, v5, :cond_8

    .line 232
    .line 233
    add-int/lit8 v0, v4, 0x2

    .line 234
    .line 235
    sub-long/2addr v6, v11

    .line 236
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-virtual {v2, v4, v0, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_8
    const-wide/16 v10, 0x0

    .line 245
    .line 246
    cmp-long v0, v8, v10

    .line 247
    .line 248
    if-nez v0, :cond_9

    .line 249
    .line 250
    invoke-virtual {v2, v4, v6, v7}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_9
    add-int/2addr v4, v15

    .line 255
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    .line 256
    .line 257
    .line 258
    move-result-wide v5

    .line 259
    invoke-virtual {v2, v4, v5, v6}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    :cond_a
    :goto_2
    if-eqz v3, :cond_d

    .line 263
    .line 264
    const/16 v0, 0x2e

    .line 265
    .line 266
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const v0, 0xf4240

    .line 270
    .line 271
    .line 272
    rem-int v4, v3, v0

    .line 273
    .line 274
    if-nez v4, :cond_b

    .line 275
    .line 276
    div-int/2addr v3, v0

    .line 277
    add-int/lit16 v3, v3, 0x3e8

    .line 278
    .line 279
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    goto :goto_3

    .line 291
    :cond_b
    rem-int/lit16 v4, v3, 0x3e8

    .line 292
    .line 293
    if-nez v4, :cond_c

    .line 294
    .line 295
    div-int/lit16 v3, v3, 0x3e8

    .line 296
    .line 297
    add-int/2addr v3, v0

    .line 298
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_c
    const v0, 0x3b9aca00

    .line 311
    .line 312
    .line 313
    add-int/2addr v3, v0

    .line 314
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    :cond_d
    :goto_3
    const/16 v0, 0x5a

    .line 326
    .line 327
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const/4 v0, 0x1

    .line 331
    :goto_4
    return v0

    .line 332
    nop

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Luh/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "ZoneRegionId()"

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    const-string v0, "Instant()"

    .line 10
    .line 11
    return-object v0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
