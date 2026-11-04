.class public final Leh/f;
.super Leh/b;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public constructor <init>(Ldh/f;I)V
    .locals 0

    .line 1
    iput p2, p0, Leh/f;->e:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p2, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s+((folder\\s+)|((\\d+)\\s+(\\d+)\\s+))(\\d+)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"

    .line 7
    .line 8
    invoke-direct {p0, p2}, Leh/b;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Leh/b;->a(Ldh/f;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    const-string p2, "(\\S+)\\s+(?:(\\d+)\\s+)?(?:(\\S+)\\s+(\\S+)\\s+)?(\\*STMF|\\*DIR|\\*FILE|\\*MEM)\\s+((\\S+\\s*)+)?"

    .line 16
    .line 17
    invoke-direct {p0, p2}, Leh/b;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Leh/b;->a(Ldh/f;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    const-string p2, "\\s*([0-9]+)\\s*(\\s+|[A-Z]+)\\s*(DIR|\\s+)\\s*(\\S+)\\s+(\\S+)\\s+(\\S.*)"

    .line 25
    .line 26
    invoke-direct {p0, p2}, Leh/b;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Leh/b;->a(Ldh/f;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_2
    const-string p2, "(d|-){1}\\s+\\[([-A-Z]+)\\]\\s+(\\S+)\\s+(\\d+)\\s+(\\S+\\s+\\S+\\s+((\\d+:\\d+)|(\\d{4})))\\s+(.*)"

    .line 34
    .line 35
    invoke-direct {p0, p2}, Leh/b;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Leh/b;->a(Ldh/f;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ldh/g;
    .locals 14

    .line 1
    iget v0, p0, Leh/f;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ldh/g;

    .line 7
    .line 8
    invoke-direct {v0}, Ldh/g;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, v0, Ldh/g;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Leh/b;->h(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p1, :cond_3

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-virtual {p0, p1}, Leh/b;->g(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-virtual {p0, v2}, Leh/b;->g(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x3

    .line 30
    invoke-virtual {p0, v3}, Leh/b;->g(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v4}, Leh/f;->i(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, 0x4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0, v5}, Leh/b;->g(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v4}, Leh/f;->i(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v4, ""

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v3}, Leh/b;->g(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v6, " "

    .line 68
    .line 69
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v5}, Leh/b;->g(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    :goto_1
    const/4 v5, 0x5

    .line 84
    invoke-virtual {p0, v5}, Leh/b;->g(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    const/4 v6, 0x6

    .line 89
    invoke-virtual {p0, v6}, Leh/b;->g(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    :try_start_0
    iget-object v7, p0, Leh/b;->d:Leh/d;

    .line 94
    .line 95
    invoke-virtual {v7, v4}, Leh/d;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    iput-object v7, v0, Ldh/g;->e:Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_0
    nop

    .line 103
    :goto_2
    const-string v7, "*STMF"

    .line 104
    .line 105
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    const/16 v8, 0x2f

    .line 110
    .line 111
    const/4 v9, 0x0

    .line 112
    if-eqz v7, :cond_4

    .line 113
    .line 114
    invoke-static {v2}, Leh/f;->i(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_3

    .line 119
    .line 120
    invoke-static {v6}, Leh/f;->i(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_2

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_2
    const/4 v1, 0x1

    .line 128
    :goto_3
    const/4 v3, 0x0

    .line 129
    goto :goto_6

    .line 130
    :cond_3
    :goto_4
    move-object v0, v1

    .line 131
    goto/16 :goto_8

    .line 132
    .line 133
    :cond_4
    const-string v7, "*DIR"

    .line 134
    .line 135
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v7, :cond_6

    .line 140
    .line 141
    invoke-static {v2}, Leh/f;->i(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-nez v3, :cond_3

    .line 146
    .line 147
    invoke-static {v6}, Leh/f;->i(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_5

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_5
    const/4 v1, 0x1

    .line 155
    const/4 v3, 0x1

    .line 156
    goto :goto_6

    .line 157
    :cond_6
    const-string v7, "*FILE"

    .line 158
    .line 159
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-eqz v7, :cond_8

    .line 164
    .line 165
    if-eqz v6, :cond_3

    .line 166
    .line 167
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 168
    .line 169
    invoke-virtual {v6, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    const-string v4, ".SAVF"

    .line 174
    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-nez v3, :cond_7

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_7
    :goto_5
    const/4 v1, 0x0

    .line 183
    goto :goto_3

    .line 184
    :cond_8
    const-string v7, "*MEM"

    .line 185
    .line 186
    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    if-eqz v5, :cond_b

    .line 191
    .line 192
    invoke-static {v6}, Leh/f;->i(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_9

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_9
    invoke-static {v2}, Leh/f;->i(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-eqz v3, :cond_3

    .line 204
    .line 205
    invoke-static {v4}, Leh/f;->i(Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-nez v3, :cond_a

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_a
    sget-char v1, Ljava/io/File;->separatorChar:C

    .line 213
    .line 214
    invoke-virtual {v6, v8, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    goto :goto_5

    .line 219
    :cond_b
    const/4 v1, 0x1

    .line 220
    :goto_6
    iput v3, v0, Ldh/g;->a:I

    .line 221
    .line 222
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 223
    .line 224
    .line 225
    move-result-wide v2

    .line 226
    iput-wide v2, v0, Ldh/g;->b:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :catch_1
    nop

    .line 230
    :goto_7
    const-string v2, "/"

    .line 231
    .line 232
    invoke-virtual {v6, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_c

    .line 237
    .line 238
    invoke-static {p1, v9, v6}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    :cond_c
    if-eqz v1, :cond_d

    .line 243
    .line 244
    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    const/4 v2, -0x1

    .line 249
    if-le v1, v2, :cond_d

    .line 250
    .line 251
    add-int/2addr v1, p1

    .line 252
    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    :cond_d
    iput-object v6, v0, Ldh/g;->d:Ljava/lang/String;

    .line 257
    .line 258
    :goto_8
    return-object v0

    .line 259
    :pswitch_0
    new-instance v0, Ldh/g;

    .line 260
    .line 261
    invoke-direct {v0}, Ldh/g;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, p1}, Leh/b;->h(Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-eqz p1, :cond_10

    .line 269
    .line 270
    const/4 p1, 0x1

    .line 271
    invoke-virtual {p0, p1}, Leh/b;->g(I)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    const/4 v2, 0x2

    .line 276
    invoke-virtual {p0, v2}, Leh/b;->g(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    const/4 v3, 0x3

    .line 281
    invoke-virtual {p0, v3}, Leh/b;->g(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    new-instance v4, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    const/4 v5, 0x4

    .line 291
    invoke-virtual {p0, v5}, Leh/b;->g(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v5, " "

    .line 299
    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const/4 v5, 0x5

    .line 304
    invoke-virtual {p0, v5}, Leh/b;->g(I)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    const/4 v5, 0x6

    .line 316
    invoke-virtual {p0, v5}, Leh/b;->g(I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    :try_start_2
    iget-object v6, p0, Leh/b;->d:Leh/d;

    .line 321
    .line 322
    invoke-virtual {v6, v4}, Leh/d;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    iput-object v4, v0, Ldh/g;->e:Ljava/util/Calendar;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 327
    .line 328
    goto :goto_9

    .line 329
    :catch_2
    nop

    .line 330
    :goto_9
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    const-string v4, "DIR"

    .line 335
    .line 336
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v3

    .line 340
    if-nez v3, :cond_f

    .line 341
    .line 342
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v2

    .line 350
    if-eqz v2, :cond_e

    .line 351
    .line 352
    goto :goto_a

    .line 353
    :cond_e
    const/4 p1, 0x0

    .line 354
    iput p1, v0, Ldh/g;->a:I

    .line 355
    .line 356
    goto :goto_b

    .line 357
    :cond_f
    :goto_a
    iput p1, v0, Ldh/g;->a:I

    .line 358
    .line 359
    :goto_b
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    iput-object p1, v0, Ldh/g;->d:Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 370
    .line 371
    .line 372
    move-result-wide v1

    .line 373
    iput-wide v1, v0, Ldh/g;->b:J

    .line 374
    .line 375
    goto :goto_c

    .line 376
    :cond_10
    const/4 v0, 0x0

    .line 377
    :goto_c
    return-object v0

    .line 378
    :pswitch_1
    new-instance v0, Ldh/g;

    .line 379
    .line 380
    invoke-direct {v0}, Ldh/g;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0, p1}, Leh/b;->h(Ljava/lang/String;)Z

    .line 384
    .line 385
    .line 386
    move-result p1

    .line 387
    if-eqz p1, :cond_13

    .line 388
    .line 389
    const/4 p1, 0x1

    .line 390
    invoke-virtual {p0, p1}, Leh/b;->g(I)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    const/4 v2, 0x2

    .line 395
    invoke-virtual {p0, v2}, Leh/b;->g(I)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    const/4 v3, 0x3

    .line 400
    invoke-virtual {p0, v3}, Leh/b;->g(I)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    const/4 v3, 0x4

    .line 404
    invoke-virtual {p0, v3}, Leh/b;->g(I)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    const/4 v4, 0x5

    .line 409
    invoke-virtual {p0, v4}, Leh/b;->g(I)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    const/16 v5, 0x9

    .line 414
    .line 415
    invoke-virtual {p0, v5}, Leh/b;->g(I)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    :try_start_3
    iget-object v6, p0, Leh/b;->d:Leh/d;

    .line 420
    .line 421
    invoke-virtual {v6, v4}, Leh/d;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 422
    .line 423
    .line 424
    move-result-object v4

    .line 425
    iput-object v4, v0, Ldh/g;->e:Ljava/util/Calendar;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_3

    .line 426
    .line 427
    goto :goto_d

    .line 428
    :catch_3
    nop

    .line 429
    :goto_d
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    const-string v4, "d"

    .line 434
    .line 435
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    const/4 v4, 0x0

    .line 440
    if-eqz v1, :cond_11

    .line 441
    .line 442
    iput p1, v0, Ldh/g;->a:I

    .line 443
    .line 444
    goto :goto_e

    .line 445
    :cond_11
    iput v4, v0, Ldh/g;->a:I

    .line 446
    .line 447
    :goto_e
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    iput-object v1, v0, Ldh/g;->d:Ljava/lang/String;

    .line 452
    .line 453
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 458
    .line 459
    .line 460
    move-result-wide v5

    .line 461
    iput-wide v5, v0, Ldh/g;->b:J

    .line 462
    .line 463
    const/16 v1, 0x52

    .line 464
    .line 465
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    const/4 v3, -0x1

    .line 470
    if-eq v1, v3, :cond_12

    .line 471
    .line 472
    invoke-virtual {v0, v4, v4, p1}, Ldh/g;->b(IIZ)V

    .line 473
    .line 474
    .line 475
    :cond_12
    const/16 v1, 0x57

    .line 476
    .line 477
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    .line 478
    .line 479
    .line 480
    move-result v1

    .line 481
    if-eq v1, v3, :cond_14

    .line 482
    .line 483
    invoke-virtual {v0, v4, p1, p1}, Ldh/g;->b(IIZ)V

    .line 484
    .line 485
    .line 486
    goto :goto_f

    .line 487
    :cond_13
    const/4 v0, 0x0

    .line 488
    :cond_14
    :goto_f
    return-object v0

    .line 489
    :pswitch_2
    new-instance v0, Ldh/g;

    .line 490
    .line 491
    invoke-direct {v0}, Ldh/g;-><init>()V

    .line 492
    .line 493
    .line 494
    iput-object p1, v0, Ldh/g;->c:Ljava/lang/String;

    .line 495
    .line 496
    invoke-virtual {p0, p1}, Leh/b;->h(Ljava/lang/String;)Z

    .line 497
    .line 498
    .line 499
    move-result p1

    .line 500
    if-eqz p1, :cond_1d

    .line 501
    .line 502
    const/4 p1, 0x1

    .line 503
    invoke-virtual {p0, p1}, Leh/b;->g(I)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    const/16 v2, 0x14

    .line 508
    .line 509
    invoke-virtual {p0, v2}, Leh/b;->g(I)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    new-instance v3, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    .line 517
    .line 518
    const/16 v4, 0x15

    .line 519
    .line 520
    invoke-virtual {p0, v4}, Leh/b;->g(I)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v4

    .line 524
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    const-string v4, " "

    .line 528
    .line 529
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    const/16 v4, 0x16

    .line 533
    .line 534
    invoke-virtual {p0, v4}, Leh/b;->g(I)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    const/16 v4, 0x17

    .line 546
    .line 547
    invoke-virtual {p0, v4}, Leh/b;->g(I)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v4

    .line 551
    const/16 v5, 0x18

    .line 552
    .line 553
    invoke-virtual {p0, v5}, Leh/b;->g(I)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    :try_start_4
    iget-object v6, p0, Leh/b;->d:Leh/d;

    .line 558
    .line 559
    invoke-virtual {v6, v3}, Leh/d;->d(Ljava/lang/String;)Ljava/util/Calendar;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    iput-object v3, v0, Ldh/g;->e:Ljava/util/Calendar;
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_4

    .line 564
    .line 565
    :catch_4
    const/4 v3, 0x0

    .line 566
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 567
    .line 568
    .line 569
    move-result v1

    .line 570
    const/4 v6, 0x2

    .line 571
    const/16 v7, 0x2d

    .line 572
    .line 573
    const/4 v8, 0x3

    .line 574
    if-eq v1, v7, :cond_16

    .line 575
    .line 576
    const/16 v7, 0x6c

    .line 577
    .line 578
    if-eq v1, v7, :cond_15

    .line 579
    .line 580
    packed-switch v1, :pswitch_data_1

    .line 581
    .line 582
    .line 583
    const/4 v1, 0x3

    .line 584
    :goto_10
    const/4 v7, 0x0

    .line 585
    goto :goto_11

    .line 586
    :cond_15
    :pswitch_3
    const/4 v1, 0x2

    .line 587
    goto :goto_10

    .line 588
    :pswitch_4
    const/4 v1, 0x1

    .line 589
    goto :goto_10

    .line 590
    :pswitch_5
    const/4 v1, 0x0

    .line 591
    const/4 v7, 0x1

    .line 592
    goto :goto_11

    .line 593
    :cond_16
    :pswitch_6
    const/4 v1, 0x0

    .line 594
    goto :goto_10

    .line 595
    :goto_11
    iput v1, v0, Ldh/g;->a:I

    .line 596
    .line 597
    const/4 v9, 0x4

    .line 598
    const/4 v10, 0x0

    .line 599
    const/4 v11, 0x4

    .line 600
    :goto_12
    if-ge v10, v8, :cond_18

    .line 601
    .line 602
    invoke-virtual {p0, v11}, Leh/b;->g(I)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v12

    .line 606
    const-string v13, "-"

    .line 607
    .line 608
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v12

    .line 612
    xor-int/2addr v12, p1

    .line 613
    invoke-virtual {v0, v10, v3, v12}, Ldh/g;->b(IIZ)V

    .line 614
    .line 615
    .line 616
    add-int/lit8 v12, v11, 0x1

    .line 617
    .line 618
    invoke-virtual {p0, v12}, Leh/b;->g(I)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v12

    .line 622
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v12

    .line 626
    xor-int/2addr v12, p1

    .line 627
    invoke-virtual {v0, v10, p1, v12}, Ldh/g;->b(IIZ)V

    .line 628
    .line 629
    .line 630
    add-int/lit8 v12, v11, 0x2

    .line 631
    .line 632
    invoke-virtual {p0, v12}, Leh/b;->g(I)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v12

    .line 636
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v13

    .line 640
    if-nez v13, :cond_17

    .line 641
    .line 642
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    .line 643
    .line 644
    .line 645
    move-result v12

    .line 646
    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    .line 647
    .line 648
    .line 649
    move-result v12

    .line 650
    if-nez v12, :cond_17

    .line 651
    .line 652
    const/4 v12, 0x1

    .line 653
    goto :goto_13

    .line 654
    :cond_17
    const/4 v12, 0x0

    .line 655
    :goto_13
    invoke-virtual {v0, v10, v6, v12}, Ldh/g;->b(IIZ)V

    .line 656
    .line 657
    .line 658
    add-int/lit8 v10, v10, 0x1

    .line 659
    .line 660
    add-int/lit8 v11, v11, 0x4

    .line 661
    .line 662
    goto :goto_12

    .line 663
    :cond_18
    if-nez v7, :cond_19

    .line 664
    .line 665
    :try_start_5
    const-string p1, "0"

    .line 666
    .line 667
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 668
    .line 669
    .line 670
    :catch_5
    :cond_19
    :try_start_6
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 671
    .line 672
    .line 673
    move-result-wide v7

    .line 674
    iput-wide v7, v0, Ldh/g;->b:J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 675
    .line 676
    goto :goto_14

    .line 677
    :catch_6
    nop

    .line 678
    :goto_14
    if-nez v5, :cond_1a

    .line 679
    .line 680
    iput-object v4, v0, Ldh/g;->d:Ljava/lang/String;

    .line 681
    .line 682
    goto :goto_15

    .line 683
    :cond_1a
    invoke-static {v4, v5}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object p1

    .line 687
    if-ne v1, v6, :cond_1c

    .line 688
    .line 689
    const-string v1, " -> "

    .line 690
    .line 691
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 692
    .line 693
    .line 694
    move-result v1

    .line 695
    const/4 v2, -0x1

    .line 696
    if-ne v1, v2, :cond_1b

    .line 697
    .line 698
    iput-object p1, v0, Ldh/g;->d:Ljava/lang/String;

    .line 699
    .line 700
    goto :goto_15

    .line 701
    :cond_1b
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    iput-object v2, v0, Ldh/g;->d:Ljava/lang/String;

    .line 706
    .line 707
    add-int/2addr v1, v9

    .line 708
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    goto :goto_15

    .line 712
    :cond_1c
    iput-object p1, v0, Ldh/g;->d:Ljava/lang/String;

    .line 713
    .line 714
    goto :goto_15

    .line 715
    :cond_1d
    const/4 v0, 0x0

    .line 716
    :goto_15
    return-object v0

    .line 717
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    :pswitch_data_1
    .packed-switch 0x62
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public final f()Ldh/f;
    .locals 4

    .line 1
    iget v0, p0, Leh/f;->e:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ldh/f;

    .line 7
    .line 8
    const-string v1, "yy/MM/dd HH:mm:ss"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, "OS/400"

    .line 12
    .line 13
    invoke-direct {v0, v3, v1, v2}, Ldh/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Ldh/f;

    .line 18
    .line 19
    const-string v1, "MM-dd-yy HH:mm"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const-string v3, "OS/2"

    .line 23
    .line 24
    invoke-direct {v0, v3, v1, v2}, Ldh/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_1
    new-instance v0, Ldh/f;

    .line 29
    .line 30
    const-string v1, "MMM dd yyyy"

    .line 31
    .line 32
    const-string v2, "MMM dd HH:mm"

    .line 33
    .line 34
    const-string v3, "NETWARE"

    .line 35
    .line 36
    invoke-direct {v0, v3, v1, v2}, Ldh/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :pswitch_2
    new-instance v0, Ldh/f;

    .line 41
    .line 42
    const-string v1, "MMM d yyyy"

    .line 43
    .line 44
    const-string v2, "MMM d HH:mm"

    .line 45
    .line 46
    const-string v3, "UNIX"

    .line 47
    .line 48
    invoke-direct {v0, v3, v1, v2}, Ldh/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
