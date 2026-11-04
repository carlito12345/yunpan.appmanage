.class public final synthetic Lh2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh2/k;
.implements Lec/d;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lh2/n;Lh2/i;Z[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lh2/d;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lh2/d;->a:Z

    iput-object p4, p0, Lh2/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2/d;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lh2/d;->a:Z

    iput-object p3, p0, Lh2/d;->c:Ljava/lang/Object;

    iput-object p4, p0, Lh2/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lua/x7;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lh2/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Lh2/d;->d:Ljava/lang/Object;

    iput-boolean p4, p0, Lh2/d;->a:Z

    return-void
.end method


# virtual methods
.method public d(ILr1/r0;[I)Lu7/y0;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lh2/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lh2/n;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v11, Lh2/c;

    .line 11
    .line 12
    iget-object v2, v0, Lh2/d;->c:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v12, v2

    .line 15
    check-cast v12, Lh2/i;

    .line 16
    .line 17
    invoke-direct {v11, v1, v12}, Lh2/c;-><init>(Lh2/n;Lh2/i;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lh2/d;->d:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, [I

    .line 23
    .line 24
    aget v1, v1, p1

    .line 25
    .line 26
    sget-object v2, Lu7/g0;->b:Lu7/e0;

    .line 27
    .line 28
    const-string v2, "initialCapacity"

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    invoke-static {v3, v2}, Lu7/q;->c(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-array v2, v3, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    move-object/from16 v10, p2

    .line 38
    .line 39
    move-object v13, v2

    .line 40
    const/4 v14, 0x0

    .line 41
    const/4 v15, 0x0

    .line 42
    :goto_0
    iget v2, v10, Lr1/r0;->a:I

    .line 43
    .line 44
    if-ge v14, v2, :cond_1

    .line 45
    .line 46
    new-instance v16, Lh2/e;

    .line 47
    .line 48
    aget v7, p3, v14

    .line 49
    .line 50
    iget-boolean v8, v0, Lh2/d;->a:Z

    .line 51
    .line 52
    move-object/from16 v2, v16

    .line 53
    .line 54
    move/from16 v3, p1

    .line 55
    .line 56
    move-object/from16 v4, p2

    .line 57
    .line 58
    move v5, v14

    .line 59
    move-object v6, v12

    .line 60
    move-object v9, v11

    .line 61
    move v10, v1

    .line 62
    invoke-direct/range {v2 .. v10}, Lh2/e;-><init>(ILr1/r0;ILh2/i;IZLh2/c;I)V

    .line 63
    .line 64
    .line 65
    array-length v2, v13

    .line 66
    add-int/lit8 v3, v15, 0x1

    .line 67
    .line 68
    invoke-static {v2, v3}, Lu7/a0;->f(II)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    array-length v4, v13

    .line 73
    if-gt v2, v4, :cond_0

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    invoke-static {v13, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    move-object v13, v2

    .line 81
    :goto_1
    aput-object v16, v13, v15

    .line 82
    .line 83
    add-int/lit8 v14, v14, 0x1

    .line 84
    .line 85
    move-object/from16 v10, p2

    .line 86
    .line 87
    move v15, v3

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-static {v15, v13}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    return-object v1
.end method

.method public g(Lmc/b;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lh2/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    move-object v2, v1

    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const-string v4, "/%\'"

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lx9/w3;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v5, "SELECT * FROM fileList WHERE (path LIKE \'"

    .line 35
    .line 36
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 40
    .line 41
    :goto_1
    invoke-static {v3, v4, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string v5, " or path LIKE \'"

    .line 47
    .line 48
    invoke-static {v2, v5}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-string v0, ")"

    .line 56
    .line 57
    invoke-static {v2, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-boolean v3, p0, Lh2/d;->a:Z

    .line 62
    .line 63
    const-string v5, " and isDir=0"

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 68
    .line 69
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 70
    .line 71
    iget-boolean v7, v6, Lcom/yunpan/appmanage/util/k;->U:Z

    .line 72
    .line 73
    if-eqz v7, :cond_3

    .line 74
    .line 75
    iget-boolean v8, v6, Lcom/yunpan/appmanage/util/k;->V:Z

    .line 76
    .line 77
    if-nez v8, :cond_3

    .line 78
    .line 79
    :cond_2
    :goto_2
    invoke-static {v2, v5}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    if-nez v7, :cond_4

    .line 85
    .line 86
    iget-boolean v5, v6, Lcom/yunpan/appmanage/util/k;->V:Z

    .line 87
    .line 88
    if-eqz v5, :cond_4

    .line 89
    .line 90
    const-string v5, " and isDir=1"

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    :goto_3
    sget-object v5, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 94
    .line 95
    iget-boolean v6, v5, Lcom/yunpan/appmanage/util/w;->u0:Z

    .line 96
    .line 97
    if-nez v6, :cond_5

    .line 98
    .line 99
    const-string v6, " and path NOT LIKE \'%/.%\'"

    .line 100
    .line 101
    invoke-static {v2, v6}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    :cond_5
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 106
    .line 107
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 108
    .line 109
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 110
    .line 111
    iget-boolean v8, v7, Lcom/yunpan/appmanage/util/k;->K:Z

    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-boolean v6, v7, Lcom/yunpan/appmanage/util/k;->K:Z

    .line 117
    .line 118
    if-eqz v6, :cond_7

    .line 119
    .line 120
    iget-boolean v5, v5, Lcom/yunpan/appmanage/util/w;->v0:Z

    .line 121
    .line 122
    if-nez v5, :cond_7

    .line 123
    .line 124
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .line 126
    const/16 v6, 0x1e

    .line 127
    .line 128
    const-string v8, " and path NOT LIKE \'%/"

    .line 129
    .line 130
    if-lt v5, v6, :cond_6

    .line 131
    .line 132
    invoke-static {v2, v8}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iget-object v5, v7, Lcom/yunpan/appmanage/util/k;->P:Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v5, v4, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    goto :goto_4

    .line 143
    :cond_6
    invoke-static {v2, v8}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    iget-object v4, v7, Lcom/yunpan/appmanage/util/k;->P:Ljava/lang/String;

    .line 148
    .line 149
    const-string v5, "/data/%\'"

    .line 150
    .line 151
    invoke-static {v4, v5, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    :cond_7
    :goto_4
    iget-object v4, p0, Lh2/d;->c:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v4, Ljava/lang/String;

    .line 158
    .line 159
    const-string v5, "\u4e24\u5929\u5185"

    .line 160
    .line 161
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-eqz v5, :cond_8

    .line 166
    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 168
    .line 169
    .line 170
    move-result-wide v0

    .line 171
    const-wide/32 v4, 0xa4cb800

    .line 172
    .line 173
    .line 174
    sub-long/2addr v0, v4

    .line 175
    const-string v4, " and lastModified >= "

    .line 176
    .line 177
    invoke-static {v0, v1, v4}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    goto/16 :goto_7

    .line 182
    .line 183
    :cond_8
    const-string v5, ">10M"

    .line 184
    .line 185
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_9

    .line 190
    .line 191
    const-string v1, " and size >= 10485760"

    .line 192
    .line 193
    goto/16 :goto_7

    .line 194
    .line 195
    :cond_9
    const-string v5, ">100M"

    .line 196
    .line 197
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_a

    .line 202
    .line 203
    const-string v1, " and size >= 104857600"

    .line 204
    .line 205
    goto/16 :goto_7

    .line 206
    .line 207
    :cond_a
    const-string v5, "\'"

    .line 208
    .line 209
    if-eqz v3, :cond_c

    .line 210
    .line 211
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_17

    .line 216
    .line 217
    const-string v0, "%"

    .line 218
    .line 219
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_b

    .line 224
    .line 225
    const-string v0, " and name LIKE \'"

    .line 226
    .line 227
    invoke-static {v0, v4, v5}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    goto/16 :goto_7

    .line 232
    .line 233
    :cond_b
    const-string v0, " and name LIKE \'%"

    .line 234
    .line 235
    const-string v1, "%\'"

    .line 236
    .line 237
    invoke-static {v0, v4, v1}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    goto/16 :goto_7

    .line 242
    .line 243
    :cond_c
    const-string v6, "\u5b89\u88c5\u5305"

    .line 244
    .line 245
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    const-string v8, "\u56fe\u7247"

    .line 250
    .line 251
    if-eqz v6, :cond_d

    .line 252
    .line 253
    iget-object v6, v7, Lcom/yunpan/appmanage/util/k;->l0:Ljava/util/ArrayList;

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_d
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    if-eqz v6, :cond_e

    .line 261
    .line 262
    iget-object v6, v7, Lcom/yunpan/appmanage/util/k;->n0:Ljava/util/ArrayList;

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_e
    const-string v6, "\u89c6\u9891"

    .line 266
    .line 267
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v6

    .line 271
    if-eqz v6, :cond_f

    .line 272
    .line 273
    iget-object v6, v7, Lcom/yunpan/appmanage/util/k;->p0:Ljava/util/ArrayList;

    .line 274
    .line 275
    goto :goto_5

    .line 276
    :cond_f
    const-string v6, "\u97f3\u4e50"

    .line 277
    .line 278
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    if-eqz v6, :cond_10

    .line 283
    .line 284
    iget-object v6, v7, Lcom/yunpan/appmanage/util/k;->q0:Ljava/util/ArrayList;

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_10
    const-string v6, "\u6587\u6863"

    .line 288
    .line 289
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    if-eqz v6, :cond_11

    .line 294
    .line 295
    iget-object v6, v7, Lcom/yunpan/appmanage/util/k;->o0:Ljava/util/ArrayList;

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_11
    const-string v6, "\u538b\u7f29\u5305"

    .line 299
    .line 300
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v6

    .line 304
    if-eqz v6, :cond_12

    .line 305
    .line 306
    iget-object v6, v7, Lcom/yunpan/appmanage/util/k;->m0:Ljava/util/ArrayList;

    .line 307
    .line 308
    goto :goto_5

    .line 309
    :cond_12
    const/4 v6, 0x0

    .line 310
    :goto_5
    if-eqz v6, :cond_17

    .line 311
    .line 312
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    if-nez v7, :cond_17

    .line 317
    .line 318
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 319
    .line 320
    .line 321
    move-result-object v6

    .line 322
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 323
    .line 324
    .line 325
    move-result v7

    .line 326
    if-eqz v7, :cond_15

    .line 327
    .line 328
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    check-cast v7, Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 335
    .line 336
    .line 337
    move-result v9

    .line 338
    if-eqz v9, :cond_13

    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 342
    .line 343
    .line 344
    move-result v9

    .line 345
    if-eqz v9, :cond_14

    .line 346
    .line 347
    const-string v1, " and (LOWER(name) LIKE \'%."

    .line 348
    .line 349
    invoke-static {v1, v7, v5}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    goto :goto_6

    .line 354
    :cond_14
    new-instance v9, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v1, " OR LOWER(name) LIKE \'%."

    .line 363
    .line 364
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    goto :goto_6

    .line 378
    :cond_15
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 379
    .line 380
    .line 381
    move-result v5

    .line 382
    if-nez v5, :cond_16

    .line 383
    .line 384
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    move-object v1, v0

    .line 389
    :cond_16
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 390
    .line 391
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->w0:Z

    .line 392
    .line 393
    if-eqz v0, :cond_17

    .line 394
    .line 395
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-eqz v0, :cond_17

    .line 400
    .line 401
    const-string v0, " and size >= 81920"

    .line 402
    .line 403
    invoke-static {v1, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    :cond_17
    :goto_7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-nez v0, :cond_18

    .line 412
    .line 413
    invoke-static {v2, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    :cond_18
    const-string v0, "lastModified DESC"

    .line 418
    .line 419
    const-string v1, "name"

    .line 420
    .line 421
    if-eqz v3, :cond_1a

    .line 422
    .line 423
    const-string v3, " ORDER BY CASE WHEN isDir = 1 THEN 0 ELSE 1 END, "

    .line 424
    .line 425
    invoke-static {v2, v3}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 430
    .line 431
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/w;->t0:Z

    .line 432
    .line 433
    if-eqz v3, :cond_19

    .line 434
    .line 435
    move-object v0, v1

    .line 436
    :cond_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    goto :goto_8

    .line 444
    :cond_1a
    const-string v3, " ORDER BY "

    .line 445
    .line 446
    invoke-static {v2, v3}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    sget-object v3, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 451
    .line 452
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/w;->t0:Z

    .line 453
    .line 454
    if-eqz v3, :cond_1b

    .line 455
    .line 456
    move-object v0, v1

    .line 457
    :cond_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    :goto_8
    const/4 v1, 0x0

    .line 465
    new-array v1, v1, [Ljava/lang/Object;

    .line 466
    .line 467
    new-instance v2, La2/g1;

    .line 468
    .line 469
    invoke-direct {v2, v0, v1}, La2/g1;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getFileInfoDao()Lcom/yunpan/appmanage/db/FileInfoDao;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-interface {v0, v2}, Lcom/yunpan/appmanage/db/FileInfoDao;->sqlQuery(Lc4/d;)Ljava/util/List;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    if-eqz v0, :cond_1c

    .line 485
    .line 486
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    if-nez v1, :cond_1c

    .line 491
    .line 492
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    if-eqz v1, :cond_1c

    .line 501
    .line 502
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    check-cast v1, Lcom/yunpan/appmanage/db/FileInfo;

    .line 507
    .line 508
    new-instance v2, Lx9/w3;

    .line 509
    .line 510
    invoke-direct {v2, v1}, Lx9/w3;-><init>(Lcom/yunpan/appmanage/db/FileInfo;)V

    .line 511
    .line 512
    .line 513
    iget-object v1, p0, Lh2/d;->d:Ljava/lang/Object;

    .line 514
    .line 515
    check-cast v1, Ljava/util/ArrayList;

    .line 516
    .line 517
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    goto :goto_9

    .line 521
    :cond_1c
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 522
    .line 523
    .line 524
    return-void
.end method
