.class public final Lha/t9;
.super Lha/a4;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# instance fields
.field public final g:Z

.field public h:Landroidx/recyclerview/widget/RecyclerView;

.field public i:Lx9/t0;

.field public j:Ljava/util/ArrayList;

.field public final k:Lf2/e0;

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;ZLf2/e0;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00ce

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lha/t9;->l:Z

    .line 9
    .line 10
    iput-boolean p3, p0, Lha/t9;->g:Z

    .line 11
    .line 12
    iput-object p4, p0, Lha/t9;->k:Lf2/e0;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    iget-object v2, v0, Lha/a4;->b:Landroid/content/Context;

    .line 9
    .line 10
    const/16 v3, 0x12

    .line 11
    .line 12
    if-lt v1, v3, :cond_0

    .line 13
    .line 14
    const-class v4, Lcom/yunpan/appmanage/service/StartService;

    .line 15
    .line 16
    invoke-static {v2, v4}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    iput-boolean v4, v0, Lha/t9;->l:Z

    .line 21
    .line 22
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 30
    .line 31
    const v6, 0x7f0801d0

    .line 32
    .line 33
    .line 34
    const-string v7, "\u8bf7\u9009\u62e9\u529f\u80fd"

    .line 35
    .line 36
    invoke-direct {v5, v6, v7}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 43
    .line 44
    const-string v5, "\u65e0\u64cd\u4f5c"

    .line 45
    .line 46
    const/16 v6, 0x258

    .line 47
    .line 48
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 49
    .line 50
    .line 51
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 52
    .line 53
    const-string v5, "\u5ef6\u65f6"

    .line 54
    .line 55
    const/16 v6, 0x25b

    .line 56
    .line 57
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 58
    .line 59
    .line 60
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 61
    .line 62
    new-instance v5, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 63
    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v7, "\u6253\u5f00"

    .line 67
    .line 68
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    iget-object v8, v8, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const/16 v8, 0x33

    .line 85
    .line 86
    invoke-direct {v5, v6, v8}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 93
    .line 94
    const-string v5, "\u663e\u793a\u63d0\u793a"

    .line 95
    .line 96
    const/16 v6, 0x259

    .line 97
    .line 98
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 99
    .line 100
    .line 101
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 102
    .line 103
    const-string v5, "\u663e\u793a\u63d0\u793a(\u5927)"

    .line 104
    .line 105
    const/16 v6, 0x25a

    .line 106
    .line 107
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 108
    .line 109
    .line 110
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 111
    .line 112
    const-string v5, "\u663e\u793a\u63d0\u793a(\u81ea\u5b9a\u4e49)"

    .line 113
    .line 114
    const/16 v6, 0x25f

    .line 115
    .line 116
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 117
    .line 118
    .line 119
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 120
    .line 121
    const-string v5, "\u5bfc\u822a\u952e"

    .line 122
    .line 123
    invoke-static {v5, v4}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 124
    .line 125
    .line 126
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 127
    .line 128
    const-string v5, "\u8fd4\u56de\u952e"

    .line 129
    .line 130
    const/4 v6, 0x6

    .line 131
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 132
    .line 133
    .line 134
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 135
    .line 136
    const-string v5, "HOME\u952e"

    .line 137
    .line 138
    const/4 v6, 0x5

    .line 139
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 140
    .line 141
    .line 142
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 143
    .line 144
    const-string v5, "\u6700\u8fd1\u4efb\u52a1\u952e"

    .line 145
    .line 146
    const/4 v6, 0x7

    .line 147
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 148
    .line 149
    .line 150
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 151
    .line 152
    const-string v5, "\u8fd4\u56de\u4e0a\u4e2a\u5e94\u7528(\u4efb\u52a1\u952e)"

    .line 153
    .line 154
    const/16 v6, 0x8

    .line 155
    .line 156
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 157
    .line 158
    .line 159
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 160
    .line 161
    const-string v5, "\u8fd4\u56de\u4e0a\u4e2a\u5e94\u7528(\u901a\u7528)"

    .line 162
    .line 163
    const/16 v6, 0x32

    .line 164
    .line 165
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 166
    .line 167
    .line 168
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 169
    .line 170
    const-string v5, "\u60ac\u6d6e\u6309\u94ae(\u9501\u5b9a/\u89e3\u9501)"

    .line 171
    .line 172
    const/16 v6, 0x282

    .line 173
    .line 174
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 175
    .line 176
    .line 177
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 178
    .line 179
    const-string v5, "\u5e94\u7528\u5207\u6362(\u666e\u901a)"

    .line 180
    .line 181
    const/16 v6, 0x1a4

    .line 182
    .line 183
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 184
    .line 185
    .line 186
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 187
    .line 188
    const-string v5, "\u5e94\u7528\u5207\u6362(\u6307\u5b9a)"

    .line 189
    .line 190
    const/16 v6, 0x1a5

    .line 191
    .line 192
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 193
    .line 194
    .line 195
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 196
    .line 197
    const-string v5, "\u5224\u65ad(\u5f53\u524d\u5e94\u7528)"

    .line 198
    .line 199
    const/16 v6, 0x1ea

    .line 200
    .line 201
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 202
    .line 203
    .line 204
    const/16 v4, 0x1e

    .line 205
    .line 206
    const/16 v8, 0x14

    .line 207
    .line 208
    if-lt v1, v8, :cond_1

    .line 209
    .line 210
    if-ge v1, v4, :cond_1

    .line 211
    .line 212
    iget-object v9, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 213
    .line 214
    const-string v10, "\u5168\u5c4f\u6c89\u6d78(\u5207\u6362)"

    .line 215
    .line 216
    const/16 v11, 0x140

    .line 217
    .line 218
    invoke-static {v10, v11, v9}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 219
    .line 220
    .line 221
    :cond_1
    const/16 v9, 0x1c

    .line 222
    .line 223
    if-lt v1, v9, :cond_2

    .line 224
    .line 225
    iget-object v10, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 226
    .line 227
    const-string v11, "\u622a\u56fe"

    .line 228
    .line 229
    const/16 v12, 0x25c

    .line 230
    .line 231
    invoke-static {v11, v12, v10}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 232
    .line 233
    .line 234
    :cond_2
    const-string v10, "\u6a21\u62df\u70b9\u51fb"

    .line 235
    .line 236
    const/16 v11, 0x18

    .line 237
    .line 238
    if-lt v1, v11, :cond_3

    .line 239
    .line 240
    iget-object v12, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 241
    .line 242
    const-string v13, "\u6a21\u62df\u624b\u52bf"

    .line 243
    .line 244
    const/16 v14, 0x25d

    .line 245
    .line 246
    invoke-static {v13, v14, v12}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 247
    .line 248
    .line 249
    iget-object v12, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 250
    .line 251
    const/16 v13, 0x25e

    .line 252
    .line 253
    invoke-static {v10, v13, v12}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 254
    .line 255
    .line 256
    :cond_3
    const/16 v12, 0x15

    .line 257
    .line 258
    if-lt v1, v12, :cond_4

    .line 259
    .line 260
    iget-object v13, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 261
    .line 262
    const-string v14, "\u5f39\u51fa\u7535\u6e90\u83dc\u5355"

    .line 263
    .line 264
    const/16 v15, 0x266

    .line 265
    .line 266
    invoke-static {v14, v15, v13}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 267
    .line 268
    .line 269
    :cond_4
    iget-object v13, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 270
    .line 271
    const-string v14, "\u5b89\u5353\u539f\u751f\u7cfb\u7edf\u529f\u80fd"

    .line 272
    .line 273
    invoke-static {v14, v13}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 274
    .line 275
    .line 276
    iget-object v13, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 277
    .line 278
    const-string v14, "\u6253\u5f00\u5e94\u7528"

    .line 279
    .line 280
    const/4 v15, 0x1

    .line 281
    invoke-static {v14, v15, v13}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 282
    .line 283
    .line 284
    iget-object v13, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 285
    .line 286
    const-string v14, "\u6253\u5f00\u5e94\u7528(\u7279\u6b8a1)"

    .line 287
    .line 288
    const/16 v6, 0x36

    .line 289
    .line 290
    invoke-static {v14, v6, v13}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 291
    .line 292
    .line 293
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 294
    .line 295
    const-string v13, "\u6253\u5f00\u5e94\u7528(\u7279\u6b8a2)"

    .line 296
    .line 297
    const/16 v14, 0x37

    .line 298
    .line 299
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 300
    .line 301
    .line 302
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 303
    .line 304
    const-string v13, "send Intent"

    .line 305
    .line 306
    const/4 v14, 0x3

    .line 307
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 308
    .line 309
    .line 310
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 311
    .line 312
    new-instance v13, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 313
    .line 314
    const-string v14, "\u6253\u5f00\u754c\u9762"

    .line 315
    .line 316
    invoke-direct {v13, v14, v15}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    new-instance v6, Landroid/content/Intent;

    .line 323
    .line 324
    const-string v13, "android.settings.SETTINGS"

    .line 325
    .line 326
    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v2, v6}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    if-eqz v6, :cond_5

    .line 334
    .line 335
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 336
    .line 337
    const-string v14, "\u6253\u5f00\u539f\u751f\u8bbe\u7f6e"

    .line 338
    .line 339
    const/16 v15, 0x262

    .line 340
    .line 341
    invoke-static {v14, v15, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 342
    .line 343
    .line 344
    :cond_5
    new-instance v6, Landroid/content/Intent;

    .line 345
    .line 346
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 347
    .line 348
    .line 349
    const-string v14, "com.android.tv.settings.MainSettings"

    .line 350
    .line 351
    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    invoke-static {v2, v6}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    if-eqz v6, :cond_6

    .line 360
    .line 361
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 362
    .line 363
    const-string v13, "\u6253\u5f00\u7535\u89c6\u8bbe\u7f6e"

    .line 364
    .line 365
    const/16 v14, 0x263

    .line 366
    .line 367
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 368
    .line 369
    .line 370
    :cond_6
    new-instance v6, Landroid/content/Intent;

    .line 371
    .line 372
    const-string v13, "android.settings.WIFI_SETTINGS"

    .line 373
    .line 374
    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-static {v2, v6}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 378
    .line 379
    .line 380
    move-result v6

    .line 381
    if-eqz v6, :cond_7

    .line 382
    .line 383
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 384
    .line 385
    const-string v13, "\u6253\u5f00\u8bbe\u7f6e(wifi)"

    .line 386
    .line 387
    const/16 v14, 0x264

    .line 388
    .line 389
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 390
    .line 391
    .line 392
    :cond_7
    new-instance v6, Landroid/content/Intent;

    .line 393
    .line 394
    const-string v13, "android.settings.BLUETOOTH_SETTINGS"

    .line 395
    .line 396
    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-static {v2, v6}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    if-eqz v6, :cond_8

    .line 404
    .line 405
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 406
    .line 407
    const-string v13, "\u6253\u5f00\u8bbe\u7f6e(\u84dd\u7259)"

    .line 408
    .line 409
    const/16 v14, 0x265

    .line 410
    .line 411
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 412
    .line 413
    .line 414
    :cond_8
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 415
    .line 416
    const-string v13, "\u5f39\u51fa\u5feb\u6377\u8bbe\u7f6e"

    .line 417
    .line 418
    const/16 v14, 0x2d

    .line 419
    .line 420
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 421
    .line 422
    .line 423
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 424
    .line 425
    const-string v13, "\u5f39\u51fa\u901a\u77e5\u680f"

    .line 426
    .line 427
    const/16 v14, 0x2c

    .line 428
    .line 429
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 430
    .line 431
    .line 432
    if-lt v1, v12, :cond_9

    .line 433
    .line 434
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 435
    .line 436
    const-string v13, "\u6e05\u9664\u6240\u6709\u901a\u77e5"

    .line 437
    .line 438
    const/16 v14, 0x2e

    .line 439
    .line 440
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 441
    .line 442
    .line 443
    :cond_9
    if-lt v1, v9, :cond_a

    .line 444
    .line 445
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 446
    .line 447
    const-string v13, "\u63a5\u542c(\u672c\u673a\u901a\u8bdd)"

    .line 448
    .line 449
    const/16 v14, 0x2a

    .line 450
    .line 451
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 452
    .line 453
    .line 454
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 455
    .line 456
    const-string v13, "\u7ed3\u675f(\u672c\u673a\u901a\u8bdd)"

    .line 457
    .line 458
    const/16 v14, 0x2b

    .line 459
    .line 460
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 461
    .line 462
    .line 463
    :cond_a
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 464
    .line 465
    const-string v13, "----------"

    .line 466
    .line 467
    invoke-static {v13, v6}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 468
    .line 469
    .line 470
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 471
    .line 472
    const-string v13, "\u8bbe\u7f6e\u5c4f\u5e55\u4eae\u5ea6"

    .line 473
    .line 474
    const/16 v14, 0x26e

    .line 475
    .line 476
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 477
    .line 478
    .line 479
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 480
    .line 481
    const-string v13, "\u589e\u52a0\u5c4f\u5e55\u4eae\u5ea6"

    .line 482
    .line 483
    const/16 v14, 0x26c

    .line 484
    .line 485
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 486
    .line 487
    .line 488
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 489
    .line 490
    const-string v13, "\u51cf\u5c11\u5c4f\u5e55\u4eae\u5ea6"

    .line 491
    .line 492
    const/16 v14, 0x26d

    .line 493
    .line 494
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 495
    .line 496
    .line 497
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 498
    .line 499
    const-string v13, "\u9009\u62e9\u8f93\u5165\u6cd5"

    .line 500
    .line 501
    const/16 v14, 0x2f

    .line 502
    .line 503
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 504
    .line 505
    .line 506
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 507
    .line 508
    const-string v13, "\u5207\u6362\u8f93\u5165\u6cd5"

    .line 509
    .line 510
    const/16 v14, 0x30

    .line 511
    .line 512
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 513
    .line 514
    .line 515
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 516
    .line 517
    const-string v13, "\u8bbe\u7f6e\u8f93\u5165\u6cd5"

    .line 518
    .line 519
    const/16 v14, 0x31

    .line 520
    .line 521
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 522
    .line 523
    .line 524
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 525
    .line 526
    const-string v13, "\u97f3\u9891\u76f8\u5173\u529f\u80fd"

    .line 527
    .line 528
    invoke-static {v13, v6}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 529
    .line 530
    .line 531
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 532
    .line 533
    const-string v13, "\u9759\u97f3(\u5f00/\u5173)"

    .line 534
    .line 535
    const/16 v14, 0xf

    .line 536
    .line 537
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 538
    .line 539
    .line 540
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 541
    .line 542
    const-string v13, "\u9759\u97f3(\u5f00/\u5173)-\u6d4b\u8bd5"

    .line 543
    .line 544
    const/16 v14, 0x19b

    .line 545
    .line 546
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 547
    .line 548
    .line 549
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 550
    .line 551
    const-string v13, "\u8d85\u7ea7\u9759\u97f3(\u5f00/\u5173)"

    .line 552
    .line 553
    const/16 v14, 0x19c

    .line 554
    .line 555
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 556
    .line 557
    .line 558
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 559
    .line 560
    const-string v13, "\u8bbe\u7f6e\u97f3\u91cf(\u539f\u751f)"

    .line 561
    .line 562
    const/16 v14, 0x276

    .line 563
    .line 564
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 565
    .line 566
    .line 567
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 568
    .line 569
    const-string v13, "\u589e\u5927\u97f3\u91cf"

    .line 570
    .line 571
    const/16 v14, 0x277

    .line 572
    .line 573
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 574
    .line 575
    .line 576
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 577
    .line 578
    const-string v13, "\u51cf\u5c0f\u97f3\u91cf"

    .line 579
    .line 580
    const/16 v14, 0x278

    .line 581
    .line 582
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 583
    .line 584
    .line 585
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 586
    .line 587
    const-string v13, "\u64ad\u653e\u97f3\u9891"

    .line 588
    .line 589
    const/16 v14, 0x19a

    .line 590
    .line 591
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 592
    .line 593
    .line 594
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 595
    .line 596
    const-string v13, "\u64ad\u653e\u97f3\u9891(\u968f\u673a)"

    .line 597
    .line 598
    const/16 v14, 0x19d

    .line 599
    .line 600
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 601
    .line 602
    .line 603
    if-lt v1, v12, :cond_b

    .line 604
    .line 605
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 606
    .line 607
    const-string v13, "TTS\u64ad\u62a5"

    .line 608
    .line 609
    const/16 v14, 0x1a0

    .line 610
    .line 611
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 612
    .line 613
    .line 614
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 615
    .line 616
    const-string v13, "\u558a\u9ea6(\u5f00/\u5173)"

    .line 617
    .line 618
    const/16 v14, 0x1a1

    .line 619
    .line 620
    invoke-static {v13, v14, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 621
    .line 622
    .line 623
    :cond_b
    const/16 v6, 0x1a

    .line 624
    .line 625
    if-lt v1, v6, :cond_c

    .line 626
    .line 627
    invoke-static {}, Lcom/yunpan/appmanage/carsdk/k0;->b()Lcom/yunpan/appmanage/carsdk/k0;

    .line 628
    .line 629
    .line 630
    move-result-object v13

    .line 631
    iget-object v13, v13, Lcom/yunpan/appmanage/carsdk/k0;->d:Ljava/lang/Object;

    .line 632
    .line 633
    if-eqz v13, :cond_c

    .line 634
    .line 635
    iget-object v13, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 636
    .line 637
    const-string v14, "\u97f3\u91cf(Car)"

    .line 638
    .line 639
    const/16 v15, 0x279

    .line 640
    .line 641
    invoke-static {v14, v15, v13}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 642
    .line 643
    .line 644
    :cond_c
    if-lt v1, v12, :cond_d

    .line 645
    .line 646
    iget-object v13, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 647
    .line 648
    const-string v14, "\u64ad\u653e\u89c6\u9891"

    .line 649
    .line 650
    const/16 v15, 0x1a2

    .line 651
    .line 652
    invoke-static {v14, v15, v13}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 653
    .line 654
    .line 655
    :cond_d
    iget-object v13, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 656
    .line 657
    const-string v14, "\u65e5\u591c\u6a21\u5f0f\u5207\u6362-\u529f\u80fd\u6d4b\u8bd5\uff0c\u4e0d\u4e00\u5b9a\u9002\u5408\u60a8\u7684\u8f66\u673a"

    .line 658
    .line 659
    invoke-static {v14, v13}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 660
    .line 661
    .line 662
    iget-object v13, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 663
    .line 664
    const-string v14, "\u65e5\u591c\u6a21\u5f0f(\u539f\u751f)"

    .line 665
    .line 666
    const/16 v15, 0x19e

    .line 667
    .line 668
    invoke-static {v14, v15, v13}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 669
    .line 670
    .line 671
    iget-object v13, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 672
    .line 673
    new-instance v14, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 674
    .line 675
    const-string v15, "\u65e5\u591c\u6a21\u5f0f(\u6d4b\u8bd5)"

    .line 676
    .line 677
    const/16 v4, 0x19f

    .line 678
    .line 679
    invoke-direct {v14, v15, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    .line 684
    .line 685
    invoke-static {v2}, Lcom/yunpan/appmanage/carsdk/h0;->c(Landroid/content/Context;)Z

    .line 686
    .line 687
    .line 688
    move-result v4

    .line 689
    if-eqz v4, :cond_e

    .line 690
    .line 691
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 692
    .line 693
    const-string v13, "\u6377\u9014\u8f66\u673a\u4e13\u7528\u529f\u80fd"

    .line 694
    .line 695
    invoke-static {v13, v4}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 696
    .line 697
    .line 698
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 699
    .line 700
    const-string v13, "\u5916\u540e\u89c6\u955c"

    .line 701
    .line 702
    const/16 v14, 0x157c

    .line 703
    .line 704
    invoke-static {v13, v14, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 705
    .line 706
    .line 707
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 708
    .line 709
    const-string v13, "\u7535\u5c3e\u95e8"

    .line 710
    .line 711
    const/16 v14, 0x157d

    .line 712
    .line 713
    invoke-static {v13, v14, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 714
    .line 715
    .line 716
    :cond_e
    invoke-static {v2}, Lcom/yunpan/appmanage/carsdk/x;->h(Landroid/content/Context;)Z

    .line 717
    .line 718
    .line 719
    move-result v4

    .line 720
    if-eqz v4, :cond_f

    .line 721
    .line 722
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 723
    .line 724
    const-string v13, "\u661f\u613f\u8f66\u673a\u4e13\u7528\u529f\u80fd"

    .line 725
    .line 726
    invoke-static {v13, v4}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 727
    .line 728
    .line 729
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 730
    .line 731
    const-string v13, "\u6253\u5f00360"

    .line 732
    .line 733
    const/16 v14, 0x1770

    .line 734
    .line 735
    invoke-static {v13, v14, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 736
    .line 737
    .line 738
    :cond_f
    iget-boolean v4, v0, Lha/t9;->g:Z

    .line 739
    .line 740
    if-eqz v4, :cond_10

    .line 741
    .line 742
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 743
    .line 744
    const-string v13, "\u539f\u751f\u6309\u952e\u6620\u5c04\u72ec\u6709\u529f\u80fd"

    .line 745
    .line 746
    invoke-static {v13, v4}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 747
    .line 748
    .line 749
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 750
    .line 751
    const-string v13, "\u6309\u952e\u9762\u677f(\u81ea\u5b9a\u4e49)"

    .line 752
    .line 753
    const/16 v14, 0xfa0

    .line 754
    .line 755
    invoke-static {v13, v14, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 756
    .line 757
    .line 758
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 759
    .line 760
    const-string v13, "\u6a21\u62df\u5149\u6807(\u9065\u63a7\u5668)"

    .line 761
    .line 762
    const/16 v14, 0xfa1

    .line 763
    .line 764
    invoke-static {v13, v14, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 765
    .line 766
    .line 767
    :cond_10
    const-string v4, "\u672c\u673a\u70ed\u70b9(\u5f00/\u5173)"

    .line 768
    .line 769
    const-string v13, "wifi(\u5f00/\u5173)"

    .line 770
    .line 771
    const-string v14, "\u84dd\u7259(\u5f00/\u5173)"

    .line 772
    .line 773
    const/4 v15, 0x0

    .line 774
    if-lt v1, v9, :cond_11

    .line 775
    .line 776
    :try_start_0
    invoke-static {}, Lcom/yunpan/appmanage/base/AppStart;->b()Lcom/yunpan/appmanage/base/AppStart;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    iget-object v1, v1, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 781
    .line 782
    const-string v6, "com.hsae.core"

    .line 783
    .line 784
    invoke-virtual {v1, v6, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 785
    .line 786
    .line 787
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 788
    .line 789
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 790
    .line 791
    const-string v15, "\u65e5\u4ea7\u8f66\u673a\u4e13\u7528\u529f\u80fd"

    .line 792
    .line 793
    invoke-direct {v6, v15}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;)V

    .line 794
    .line 795
    .line 796
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    .line 798
    .line 799
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 800
    .line 801
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 802
    .line 803
    const/16 v15, 0x7d2

    .line 804
    .line 805
    invoke-direct {v6, v14, v15}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 812
    .line 813
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 814
    .line 815
    const/16 v15, 0x7d3

    .line 816
    .line 817
    invoke-direct {v6, v13, v15}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 818
    .line 819
    .line 820
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    .line 822
    .line 823
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 824
    .line 825
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 826
    .line 827
    const/16 v15, 0x7d4

    .line 828
    .line 829
    invoke-direct {v6, v4, v15}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    .line 834
    .line 835
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 836
    .line 837
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 838
    .line 839
    const-string v15, "\u667a\u80fd\u91cd\u5f00\u84dd\u7259\u548cWIFI"

    .line 840
    .line 841
    const/16 v9, 0x7da

    .line 842
    .line 843
    invoke-direct {v6, v15, v9}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    .line 848
    .line 849
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 850
    .line 851
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 852
    .line 853
    const-string v9, "\u667a\u80fd\u91cd\u542f\u84dd\u7259\u5e76\u641c\u5bfb"

    .line 854
    .line 855
    const/16 v15, 0x7d5

    .line 856
    .line 857
    invoke-direct {v6, v9, v15}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 858
    .line 859
    .line 860
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 864
    .line 865
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 866
    .line 867
    const-string v9, "\u667a\u80fd\u91cd\u542fWIFI\u5e76\u641c\u5bfb"

    .line 868
    .line 869
    const/16 v15, 0x7d6

    .line 870
    .line 871
    invoke-direct {v6, v9, v15}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    .line 876
    .line 877
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 878
    .line 879
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 880
    .line 881
    const-string v9, "\u9759\u97f3"

    .line 882
    .line 883
    const/16 v15, 0x7dc

    .line 884
    .line 885
    invoke-direct {v6, v9, v15}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 886
    .line 887
    .line 888
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    .line 890
    .line 891
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 892
    .line 893
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 894
    .line 895
    const-string v9, "\u53d6\u6d88\u9759\u97f3"

    .line 896
    .line 897
    const/16 v15, 0x7dd

    .line 898
    .line 899
    invoke-direct {v6, v9, v15}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    .line 904
    .line 905
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 906
    .line 907
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 908
    .line 909
    const-string v9, "\u6253\u5f00\u64ad\u653e\u6e90"

    .line 910
    .line 911
    const/16 v15, 0x7d0

    .line 912
    .line 913
    invoke-direct {v6, v9, v15}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 914
    .line 915
    .line 916
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 917
    .line 918
    .line 919
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 920
    .line 921
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 922
    .line 923
    const-string v9, "\u6253\u5f00360\u5f71\u50cf(\u6309\u952e)"

    .line 924
    .line 925
    const/16 v15, 0x7de

    .line 926
    .line 927
    invoke-direct {v6, v9, v15}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 928
    .line 929
    .line 930
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    .line 932
    .line 933
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 934
    .line 935
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 936
    .line 937
    const-string v9, "\u6253\u5f00360\u5f71\u50cf(SDK)"

    .line 938
    .line 939
    const/16 v15, 0x7df

    .line 940
    .line 941
    invoke-direct {v6, v9, v15}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 942
    .line 943
    .line 944
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    .line 946
    .line 947
    goto :goto_0

    .line 948
    :catch_0
    nop

    .line 949
    :cond_11
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 950
    .line 951
    if-lt v1, v11, :cond_12

    .line 952
    .line 953
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 954
    .line 955
    const-string v9, "\u5206\u5c4f\u3001\u5c0f\u7a97\u53e3\uff08\u6027\u80fd\u5dee\u7684\u8bdd\u4e0d\u8981\u7528\uff0c\u4ec5\u7528\u4e8e\u5a31\u4e50\uff09"

    .line 956
    .line 957
    invoke-static {v9, v6}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 958
    .line 959
    .line 960
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 961
    .line 962
    const-string v9, "\u5206\u5c4f\u6a21\u5f0f\u5207\u6362"

    .line 963
    .line 964
    const/16 v15, 0x28

    .line 965
    .line 966
    invoke-static {v9, v15, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 967
    .line 968
    .line 969
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 970
    .line 971
    const-string v9, "\u5206\u5c4f\u6a21\u5f0f\u6253\u5f00\u5e94\u7528"

    .line 972
    .line 973
    const/16 v15, 0x280

    .line 974
    .line 975
    invoke-static {v9, v15, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 976
    .line 977
    .line 978
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 979
    .line 980
    const-string v9, "\u5c0f\u7a97\u53e3\u6a21\u5f0f\u6253\u5f00\u5e94\u7528"

    .line 981
    .line 982
    const/16 v15, 0x281

    .line 983
    .line 984
    invoke-static {v9, v15, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 985
    .line 986
    .line 987
    :cond_12
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 988
    .line 989
    const-string v9, "\u9ad8\u5fb7\u5730\u56fe\u8f66\u673a\u7248-\u8054\u52a8\u529f\u80fd"

    .line 990
    .line 991
    invoke-static {v9, v6}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 992
    .line 993
    .line 994
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 995
    .line 996
    const-string v9, "\u9ad8\u5fb7\u5207\u6362\u5230\u767d\u663c"

    .line 997
    .line 998
    const/16 v15, 0x3d

    .line 999
    .line 1000
    invoke-static {v9, v15, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1001
    .line 1002
    .line 1003
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1004
    .line 1005
    const-string v9, "\u9ad8\u5fb7\u5207\u6362\u5230\u9ed1\u591c"

    .line 1006
    .line 1007
    const/16 v15, 0x3e

    .line 1008
    .line 1009
    invoke-static {v9, v15, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1010
    .line 1011
    .line 1012
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1013
    .line 1014
    const-string v9, "\u9ad8\u5fb7\u5207\u6362\u5230\u81ea\u52a8"

    .line 1015
    .line 1016
    const/16 v15, 0x3f

    .line 1017
    .line 1018
    invoke-static {v9, v15, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1019
    .line 1020
    .line 1021
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1022
    .line 1023
    const-string v9, "\u9ad8\u5fb7\u5207\u6362(\u767d\u663c/\u591c\u95f4)"

    .line 1024
    .line 1025
    const/16 v15, 0x45

    .line 1026
    .line 1027
    invoke-static {v9, v15, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1028
    .line 1029
    .line 1030
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1031
    .line 1032
    const-string v9, "\u540c\u6b65\u7cfb\u7edf\u4e3b\u9898\u7ed9\u9ad8\u5fb7"

    .line 1033
    .line 1034
    const/16 v15, 0x40

    .line 1035
    .line 1036
    invoke-static {v9, v15, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1037
    .line 1038
    .line 1039
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1040
    .line 1041
    const-string v9, "\u6253\u5f00\u6536\u85cf\u5939(\u9ad8\u5fb7)"

    .line 1042
    .line 1043
    const/16 v15, 0x44

    .line 1044
    .line 1045
    invoke-static {v9, v15, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1046
    .line 1047
    .line 1048
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1049
    .line 1050
    const-string v9, "\u6700\u5c0f\u5316(\u9ad8\u5fb7)"

    .line 1051
    .line 1052
    const/16 v15, 0x41

    .line 1053
    .line 1054
    invoke-static {v9, v15, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1055
    .line 1056
    .line 1057
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1058
    .line 1059
    const-string v9, "\u8fdb\u5165\u4e3b\u56fe(\u9ad8\u5fb7)"

    .line 1060
    .line 1061
    const/16 v15, 0x42

    .line 1062
    .line 1063
    invoke-static {v9, v15, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1064
    .line 1065
    .line 1066
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1067
    .line 1068
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 1069
    .line 1070
    const-string v15, "\u5173\u95ed\u5730\u56fe(\u9ad8\u5fb7)"

    .line 1071
    .line 1072
    const/16 v11, 0x43

    .line 1073
    .line 1074
    invoke-direct {v9, v15, v11}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    .line 1079
    .line 1080
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v6

    .line 1084
    iget-boolean v6, v6, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 1085
    .line 1086
    if-eqz v6, :cond_13

    .line 1087
    .line 1088
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1089
    .line 1090
    const-string v9, "\u767e\u5ea6\u5730\u56fe\u8f66\u673a\u7248-\u8054\u52a8\u529f\u80fd\uff08\u4ec5\u652f\u6301\u767e\u5ea6\u5b98\u65b9\u7248\uff09"

    .line 1091
    .line 1092
    invoke-static {v9, v6}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1093
    .line 1094
    .line 1095
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1096
    .line 1097
    const-string v9, "\u767e\u5ea6-\u5207\u6362\u4e3a\u81ea\u52a8"

    .line 1098
    .line 1099
    const/16 v11, 0x1964

    .line 1100
    .line 1101
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1102
    .line 1103
    .line 1104
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1105
    .line 1106
    const-string v9, "\u767e\u5ea6-\u5207\u6362\u4e3a\u767d\u5929"

    .line 1107
    .line 1108
    const/16 v11, 0x1965

    .line 1109
    .line 1110
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1111
    .line 1112
    .line 1113
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1114
    .line 1115
    const-string v9, "\u767e\u5ea6-\u5207\u6362\u4e3a\u9ed1\u591c"

    .line 1116
    .line 1117
    const/16 v11, 0x1966

    .line 1118
    .line 1119
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1120
    .line 1121
    .line 1122
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1123
    .line 1124
    const-string v9, "\u767e\u5ea6-\u6700\u5c0f\u5316"

    .line 1125
    .line 1126
    const/16 v11, 0x1967

    .line 1127
    .line 1128
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1129
    .line 1130
    .line 1131
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1132
    .line 1133
    const-string v9, "\u767e\u5ea6-\u9000\u51fa\u5bfc\u822a"

    .line 1134
    .line 1135
    const/16 v11, 0x1969

    .line 1136
    .line 1137
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1138
    .line 1139
    .line 1140
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1141
    .line 1142
    const-string v9, "\u767e\u5ea6-\u5173\u95ed\u5730\u56fe"

    .line 1143
    .line 1144
    const/16 v11, 0x1968

    .line 1145
    .line 1146
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1147
    .line 1148
    .line 1149
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1150
    .line 1151
    const-string v9, "\u767e\u5ea6-\u6253\u5f00\u6536\u85cf\u5939"

    .line 1152
    .line 1153
    const/16 v11, 0x196a

    .line 1154
    .line 1155
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1156
    .line 1157
    .line 1158
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1159
    .line 1160
    const-string v9, "\u767e\u5ea6-\u653e\u5927"

    .line 1161
    .line 1162
    const/16 v11, 0x196b

    .line 1163
    .line 1164
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1165
    .line 1166
    .line 1167
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1168
    .line 1169
    const-string v9, "\u767e\u5ea6-\u7f29\u5c0f"

    .line 1170
    .line 1171
    const/16 v11, 0x196c

    .line 1172
    .line 1173
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1174
    .line 1175
    .line 1176
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1177
    .line 1178
    const-string v9, "\u767e\u5ea6-\u6253\u5f00\u5730\u56fe"

    .line 1179
    .line 1180
    const/16 v11, 0x196d

    .line 1181
    .line 1182
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1183
    .line 1184
    .line 1185
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1186
    .line 1187
    const-string v9, "\u767e\u5ea6-\u6253\u5f00\u8def\u51b5"

    .line 1188
    .line 1189
    const/16 v11, 0x196e

    .line 1190
    .line 1191
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1192
    .line 1193
    .line 1194
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1195
    .line 1196
    const-string v9, "\u767e\u5ea6-\u5173\u95ed\u8def\u51b5"

    .line 1197
    .line 1198
    const/16 v11, 0x196f

    .line 1199
    .line 1200
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1201
    .line 1202
    .line 1203
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1204
    .line 1205
    const-string v9, "\u767e\u5ea6-\u56de\u5bb6"

    .line 1206
    .line 1207
    const/16 v11, 0x1970

    .line 1208
    .line 1209
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1210
    .line 1211
    .line 1212
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1213
    .line 1214
    const-string v9, "\u767e\u5ea6-\u53bb\u516c\u53f8"

    .line 1215
    .line 1216
    const/16 v11, 0x1971

    .line 1217
    .line 1218
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1219
    .line 1220
    .line 1221
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1222
    .line 1223
    const-string v9, "\u767e\u5ea6-\u767d\u5929/\u9ed1\u591c"

    .line 1224
    .line 1225
    const/16 v11, 0x1972

    .line 1226
    .line 1227
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1228
    .line 1229
    .line 1230
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1231
    .line 1232
    const-string v9, "\u767e\u5ea6-\u7ee7\u7eed\u4e0a\u6b21\u5bfc\u822a"

    .line 1233
    .line 1234
    const/16 v11, 0x1973

    .line 1235
    .line 1236
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1237
    .line 1238
    .line 1239
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1240
    .line 1241
    const-string v9, "\u767e\u5ea6-\u8fdb\u5165\u5de1\u822a"

    .line 1242
    .line 1243
    const/16 v11, 0x1974

    .line 1244
    .line 1245
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1246
    .line 1247
    .line 1248
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1249
    .line 1250
    const-string v9, "\u767e\u5ea6-\u9000\u51fa\u5de1\u822a"

    .line 1251
    .line 1252
    const/16 v11, 0x1975

    .line 1253
    .line 1254
    invoke-static {v9, v11, v6}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1255
    .line 1256
    .line 1257
    :cond_13
    iget-object v6, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1258
    .line 1259
    const-string v9, "\u539f\u751f\u7cfb\u7edf\u5f00\u5173(\u6ce8\uff1a\u5f88\u591a\u8f66\u673a\u4e0d\u652f\u6301\u539f\u751f)"

    .line 1260
    .line 1261
    invoke-static {v9, v6}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1262
    .line 1263
    .line 1264
    const/16 v6, 0x24

    .line 1265
    .line 1266
    if-ge v1, v6, :cond_14

    .line 1267
    .line 1268
    iget-object v9, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1269
    .line 1270
    const/16 v11, 0x20a

    .line 1271
    .line 1272
    invoke-static {v4, v11, v9}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1273
    .line 1274
    .line 1275
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1276
    .line 1277
    const-string v9, "\u672c\u673a\u70ed\u70b9(\u5f00)"

    .line 1278
    .line 1279
    const/16 v11, 0x208

    .line 1280
    .line 1281
    invoke-static {v9, v11, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1282
    .line 1283
    .line 1284
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1285
    .line 1286
    const-string v9, "\u672c\u673a\u70ed\u70b9(\u5173)"

    .line 1287
    .line 1288
    const/16 v11, 0x209

    .line 1289
    .line 1290
    invoke-static {v9, v11, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1291
    .line 1292
    .line 1293
    :cond_14
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1294
    .line 1295
    const/16 v9, 0x200

    .line 1296
    .line 1297
    invoke-static {v14, v9, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1298
    .line 1299
    .line 1300
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1301
    .line 1302
    const-string v9, "\u84dd\u7259(\u5f00)"

    .line 1303
    .line 1304
    const/16 v11, 0x1fe

    .line 1305
    .line 1306
    invoke-static {v9, v11, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1307
    .line 1308
    .line 1309
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1310
    .line 1311
    const-string v9, "\u84dd\u7259(\u5173)"

    .line 1312
    .line 1313
    const/16 v11, 0x1ff

    .line 1314
    .line 1315
    invoke-static {v9, v11, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1316
    .line 1317
    .line 1318
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1319
    .line 1320
    const/16 v9, 0x1f6

    .line 1321
    .line 1322
    invoke-static {v13, v9, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1323
    .line 1324
    .line 1325
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1326
    .line 1327
    const-string v9, "wifi(\u5f00)"

    .line 1328
    .line 1329
    const/16 v11, 0x1f4

    .line 1330
    .line 1331
    invoke-static {v9, v11, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1332
    .line 1333
    .line 1334
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1335
    .line 1336
    const-string v9, "wifi(\u5173)"

    .line 1337
    .line 1338
    const/16 v11, 0x1f5

    .line 1339
    .line 1340
    invoke-static {v9, v11, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1341
    .line 1342
    .line 1343
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1344
    .line 1345
    const-string v9, "\u6ca1\u8fdewifi\u65f6\u91cd\u5f00wifi"

    .line 1346
    .line 1347
    const/16 v11, 0x1f7

    .line 1348
    .line 1349
    invoke-static {v9, v11, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1350
    .line 1351
    .line 1352
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1353
    .line 1354
    const-string v9, "\u6ca1\u8fde\u84dd\u7259\u65f6\u91cd\u5f00\u84dd\u7259"

    .line 1355
    .line 1356
    const/16 v11, 0x201

    .line 1357
    .line 1358
    invoke-static {v9, v11, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1359
    .line 1360
    .line 1361
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1362
    .line 1363
    const-string v9, "\u6ca1\u8fde\u65f6\u91cd\u5f00(wifi|\u84dd\u7259)"

    .line 1364
    .line 1365
    const/16 v11, 0x202

    .line 1366
    .line 1367
    invoke-static {v9, v11, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1368
    .line 1369
    .line 1370
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1371
    .line 1372
    const-string v9, "\u6267\u884c\u547d\u4ee4\u884c\n\u6267\u884c\u547d\u4ee4(\u672c\u673a)\uff1a\u9002\u5408\u5df2root\u3001\u516c\u7b7e\u7cfb\u7edf \u6216\u8005 \u65e0\u9700\u6743\u9650\u7684\u547d\u4ee4\n\u6ce8\uff1a\u5982\u679c\u662fadb\u7684\u8bdd\uff0c\u8bf7\u5728\u5f00\u673a\u4efb\u52a1\u4e2d\u6dfb\u52a0\u4e00\u4e2a\u4efb\u52a1\uff1a\u6267\u884c\u547d\u4ee4(adb) (\u968f\u4fbf\u4e00\u6761\u547d\u4ee4\uff0c\u5982\uff1aid)"

    .line 1373
    .line 1374
    invoke-static {v9, v4}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1375
    .line 1376
    .line 1377
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1378
    .line 1379
    const-string v9, "\u6267\u884c\u547d\u4ee4(\u672c\u673a)"

    .line 1380
    .line 1381
    const/16 v11, 0x46

    .line 1382
    .line 1383
    invoke-static {v9, v11, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1384
    .line 1385
    .line 1386
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1387
    .line 1388
    const-string v9, "\u6267\u884c\u547d\u4ee4(ADB)"

    .line 1389
    .line 1390
    const/16 v11, 0x47

    .line 1391
    .line 1392
    invoke-static {v9, v11, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1393
    .line 1394
    .line 1395
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1396
    .line 1397
    const-string v9, "\u6267\u884c\u547d\u4ee4\u5e76\u663e\u793a\u7ed3\u679c(ADB)"

    .line 1398
    .line 1399
    const/16 v13, 0x48

    .line 1400
    .line 1401
    invoke-static {v9, v13, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1402
    .line 1403
    .line 1404
    if-lt v1, v12, :cond_16

    .line 1405
    .line 1406
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1407
    .line 1408
    const-string v9, "\u591a\u5a92\u4f53\u64cd\u4f5c(\u901a\u7528\u6a21\u5f0f)"

    .line 1409
    .line 1410
    invoke-static {v9, v4}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1411
    .line 1412
    .line 1413
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1414
    .line 1415
    const-string v9, "\u4e0b\u4e00\u9996(\u901a\u7528)"

    .line 1416
    .line 1417
    const/16 v14, 0x11

    .line 1418
    .line 1419
    invoke-static {v9, v14, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1420
    .line 1421
    .line 1422
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1423
    .line 1424
    const-string v9, "\u4e0a\u4e00\u9996(\u901a\u7528)"

    .line 1425
    .line 1426
    invoke-static {v9, v3, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1427
    .line 1428
    .line 1429
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1430
    .line 1431
    const-string v9, "\u505c\u6b62\u64ad\u653e(\u901a\u7528)"

    .line 1432
    .line 1433
    const/16 v14, 0x13

    .line 1434
    .line 1435
    invoke-static {v9, v14, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1436
    .line 1437
    .line 1438
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1439
    .line 1440
    const-string v9, "\u64ad\u653e/\u6682\u505c(\u901a\u7528)"

    .line 1441
    .line 1442
    const/16 v14, 0x10

    .line 1443
    .line 1444
    invoke-static {v9, v14, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1445
    .line 1446
    .line 1447
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1448
    .line 1449
    const-string v9, "\u64ad\u653e(\u901a\u7528)"

    .line 1450
    .line 1451
    const/16 v14, 0x190

    .line 1452
    .line 1453
    invoke-static {v9, v14, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1454
    .line 1455
    .line 1456
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1457
    .line 1458
    const-string v9, "\u6682\u505c(\u901a\u7528)"

    .line 1459
    .line 1460
    const/16 v14, 0x191

    .line 1461
    .line 1462
    invoke-static {v9, v14, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1463
    .line 1464
    .line 1465
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1466
    .line 1467
    const-string v9, "\u64ad\u653e/\u6682\u505c(\u901a\u75282)"

    .line 1468
    .line 1469
    const/16 v14, 0x1b0

    .line 1470
    .line 1471
    invoke-static {v9, v14, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1472
    .line 1473
    .line 1474
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1475
    .line 1476
    const-string v9, "\u5feb\u8fdb\u4e00\u6b21(\u901a\u7528)"

    .line 1477
    .line 1478
    const/16 v14, 0x1ae

    .line 1479
    .line 1480
    invoke-static {v9, v14, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1481
    .line 1482
    .line 1483
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1484
    .line 1485
    const-string v9, "\u5feb\u9000\u4e00\u6b21(\u901a\u7528)"

    .line 1486
    .line 1487
    const/16 v14, 0x1af

    .line 1488
    .line 1489
    invoke-static {v9, v14, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1490
    .line 1491
    .line 1492
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1493
    .line 1494
    new-instance v9, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 1495
    .line 1496
    iget-boolean v14, v0, Lha/t9;->l:Z

    .line 1497
    .line 1498
    if-eqz v14, :cond_15

    .line 1499
    .line 1500
    const-string v14, ""

    .line 1501
    .line 1502
    goto :goto_1

    .line 1503
    :cond_15
    const-string v14, "  \u6b64\u529f\u80fd\u4e0d\u9002\u5408\u60a8\u7684\u7cfb\u7edf"

    .line 1504
    .line 1505
    :goto_1
    const-string v15, "\u591a\u5a92\u4f53\u64cd\u4f5c(\u901a\u77e5\u6a21\u5f0f)"

    .line 1506
    .line 1507
    invoke-virtual {v15, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v14

    .line 1511
    invoke-direct {v9, v14}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;)V

    .line 1512
    .line 1513
    .line 1514
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    .line 1516
    .line 1517
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1518
    .line 1519
    const-string v9, "\u4e0b\u4e00\u9996(\u901a\u77e5)"

    .line 1520
    .line 1521
    invoke-static {v9, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1522
    .line 1523
    .line 1524
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1525
    .line 1526
    const-string v8, "\u4e0a\u4e00\u9996(\u901a\u77e5)"

    .line 1527
    .line 1528
    invoke-static {v8, v12, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1529
    .line 1530
    .line 1531
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1532
    .line 1533
    const-string v8, "\u64ad\u653e/\u6682\u505c(\u901a\u77e5)"

    .line 1534
    .line 1535
    const/16 v9, 0x18

    .line 1536
    .line 1537
    invoke-static {v8, v9, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1538
    .line 1539
    .line 1540
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1541
    .line 1542
    const-string v8, "\u4e0b\u4e00\u9996-\u6307\u5b9aAPP(\u901a\u77e5)"

    .line 1543
    .line 1544
    const/16 v9, 0x16

    .line 1545
    .line 1546
    invoke-static {v8, v9, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1547
    .line 1548
    .line 1549
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1550
    .line 1551
    const-string v8, "\u4e0a\u4e00\u9996-\u6307\u5b9aAPP(\u901a\u77e5)"

    .line 1552
    .line 1553
    const/16 v9, 0x17

    .line 1554
    .line 1555
    invoke-static {v8, v9, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1556
    .line 1557
    .line 1558
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1559
    .line 1560
    const-string v8, "\u64ad\u653e/\u6682\u505c-\u6307\u5b9a(\u901a\u77e5)"

    .line 1561
    .line 1562
    const/16 v9, 0x23

    .line 1563
    .line 1564
    invoke-static {v8, v9, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1565
    .line 1566
    .line 1567
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1568
    .line 1569
    const-string v8, "\u505c\u6b62\u64ad\u653e(\u901a\u77e5)"

    .line 1570
    .line 1571
    const/16 v9, 0x19

    .line 1572
    .line 1573
    invoke-static {v8, v9, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1574
    .line 1575
    .line 1576
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1577
    .line 1578
    const-string v8, "\u64ad\u653e(\u901a\u77e5)"

    .line 1579
    .line 1580
    const/16 v9, 0x192

    .line 1581
    .line 1582
    invoke-static {v8, v9, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1583
    .line 1584
    .line 1585
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1586
    .line 1587
    const-string v8, "\u6682\u505c(\u901a\u77e5)"

    .line 1588
    .line 1589
    const/16 v9, 0x193

    .line 1590
    .line 1591
    invoke-static {v8, v9, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1592
    .line 1593
    .line 1594
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1595
    .line 1596
    const-string v8, "\u6253\u5f00\u6b63\u5728\u64ad\u653e\u7684\u5e94\u7528(\u901a\u77e5)"

    .line 1597
    .line 1598
    const/16 v9, 0x195

    .line 1599
    .line 1600
    invoke-static {v8, v9, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1601
    .line 1602
    .line 1603
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1604
    .line 1605
    const-string v8, "\u5feb\u8fdb\u4e00\u6b21(\u901a\u77e5)"

    .line 1606
    .line 1607
    const/16 v9, 0x1b8

    .line 1608
    .line 1609
    invoke-static {v8, v9, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1610
    .line 1611
    .line 1612
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1613
    .line 1614
    const-string v8, "\u5feb\u9000\u4e00\u6b21(\u901a\u77e5)"

    .line 1615
    .line 1616
    const/16 v9, 0x1b9

    .line 1617
    .line 1618
    invoke-static {v8, v9, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1619
    .line 1620
    .line 1621
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1622
    .line 1623
    const-string v8, "\u524d\u8fdb10\u79d2(\u901a\u77e5)"

    .line 1624
    .line 1625
    const/16 v9, 0x1ba

    .line 1626
    .line 1627
    invoke-static {v8, v9, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1628
    .line 1629
    .line 1630
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1631
    .line 1632
    const-string v8, "\u56de\u900010\u79d2(\u901a\u77e5)"

    .line 1633
    .line 1634
    const/16 v9, 0x1bb

    .line 1635
    .line 1636
    invoke-static {v8, v9, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1637
    .line 1638
    .line 1639
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1640
    .line 1641
    const-string v8, "\u524d\u8fdb20\u79d2(\u901a\u77e5)"

    .line 1642
    .line 1643
    const/16 v9, 0x1bc

    .line 1644
    .line 1645
    invoke-static {v8, v9, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1646
    .line 1647
    .line 1648
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1649
    .line 1650
    const/16 v8, 0x1bd

    .line 1651
    .line 1652
    const-string v9, "\u4e0b\u4e00\u9996(\u64ad\u653e\u4e2d\u7684app)"

    .line 1653
    .line 1654
    invoke-static {v9, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1655
    .line 1656
    .line 1657
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1658
    .line 1659
    const/16 v8, 0x1be

    .line 1660
    .line 1661
    const-string v14, "\u4e0a\u4e00\u9996(\u64ad\u653e\u4e2d\u7684app)"

    .line 1662
    .line 1663
    invoke-static {v14, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1664
    .line 1665
    .line 1666
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1667
    .line 1668
    new-instance v8, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 1669
    .line 1670
    const-string v15, "\u901a\u77e5\u6a21\u5f0f-\u6392\u9664\u6307\u5b9aAPP"

    .line 1671
    .line 1672
    const/16 v12, 0x196

    .line 1673
    .line 1674
    invoke-direct {v8, v15, v12}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 1675
    .line 1676
    .line 1677
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    .line 1679
    .line 1680
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v4

    .line 1684
    iget-boolean v4, v4, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 1685
    .line 1686
    if-eqz v4, :cond_16

    .line 1687
    .line 1688
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1689
    .line 1690
    const-string v8, "\u591a\u5a92\u4f53\u64cd\u4f5c(\u516c\u7b7e\u6a21\u5f0f) \u6b64\u6a21\u5f0f\u4ec5\u9002\u7528\u516c\u7b7e\u7cfb\u7edf"

    .line 1691
    .line 1692
    invoke-static {v8, v4}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1693
    .line 1694
    .line 1695
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1696
    .line 1697
    const-string v8, "\u4e0b\u4e00\u9996(\u516c\u7b7e)"

    .line 1698
    .line 1699
    const/16 v12, 0x1c

    .line 1700
    .line 1701
    invoke-static {v8, v12, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1702
    .line 1703
    .line 1704
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1705
    .line 1706
    const-string v8, "\u4e0a\u4e00\u9996(\u516c\u7b7e)"

    .line 1707
    .line 1708
    const/16 v12, 0x1d

    .line 1709
    .line 1710
    invoke-static {v8, v12, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1711
    .line 1712
    .line 1713
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1714
    .line 1715
    const-string v8, "\u64ad\u653e/\u6682\u505c(\u516c\u7b7e)"

    .line 1716
    .line 1717
    const/16 v12, 0x1a

    .line 1718
    .line 1719
    invoke-static {v8, v12, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1720
    .line 1721
    .line 1722
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1723
    .line 1724
    const-string v8, "\u4e0b\u4e00\u9996-\u6307\u5b9aAPP(\u516c\u7b7e)"

    .line 1725
    .line 1726
    const/16 v12, 0x1e

    .line 1727
    .line 1728
    invoke-static {v8, v12, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1729
    .line 1730
    .line 1731
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1732
    .line 1733
    const-string v8, "\u4e0a\u4e00\u9996-\u6307\u5b9aAPP(\u516c\u7b7e)"

    .line 1734
    .line 1735
    const/16 v12, 0x1f

    .line 1736
    .line 1737
    invoke-static {v8, v12, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1738
    .line 1739
    .line 1740
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1741
    .line 1742
    const-string v8, "\u64ad\u653e/\u6682\u505c-\u6307\u5b9a(\u516c\u7b7e)"

    .line 1743
    .line 1744
    const/16 v12, 0x22

    .line 1745
    .line 1746
    invoke-static {v8, v12, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1747
    .line 1748
    .line 1749
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1750
    .line 1751
    const-string v8, "\u505c\u6b62\u64ad\u653e(\u516c\u7b7e)"

    .line 1752
    .line 1753
    const/16 v12, 0x1b

    .line 1754
    .line 1755
    invoke-static {v8, v12, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1756
    .line 1757
    .line 1758
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1759
    .line 1760
    const-string v8, "\u64ad\u653e(\u516c\u7b7e)"

    .line 1761
    .line 1762
    invoke-static {v8, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1763
    .line 1764
    .line 1765
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1766
    .line 1767
    const-string v6, "\u6682\u505c(\u516c\u7b7e)"

    .line 1768
    .line 1769
    const/16 v8, 0x194

    .line 1770
    .line 1771
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1772
    .line 1773
    .line 1774
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1775
    .line 1776
    const-string v6, "\u6253\u5f00\u6b63\u5728\u64ad\u653e\u7684\u5e94\u7528(\u516c\u7b7e)"

    .line 1777
    .line 1778
    const/16 v8, 0x198

    .line 1779
    .line 1780
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1781
    .line 1782
    .line 1783
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1784
    .line 1785
    const-string v6, "\u5feb\u8fdb\u4e00\u6b21(\u516c\u7b7e)"

    .line 1786
    .line 1787
    const/16 v8, 0x1c2

    .line 1788
    .line 1789
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1790
    .line 1791
    .line 1792
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1793
    .line 1794
    const-string v6, "\u5feb\u9000\u4e00\u6b21\u516c\u7b7e)"

    .line 1795
    .line 1796
    const/16 v8, 0x1c3

    .line 1797
    .line 1798
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1799
    .line 1800
    .line 1801
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1802
    .line 1803
    const-string v6, "\u524d\u8fdb10\u79d2(\u516c\u7b7e)"

    .line 1804
    .line 1805
    const/16 v8, 0x1c4

    .line 1806
    .line 1807
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1808
    .line 1809
    .line 1810
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1811
    .line 1812
    const-string v6, "\u56de\u900010\u79d2(\u516c\u7b7e)"

    .line 1813
    .line 1814
    const/16 v8, 0x1c5

    .line 1815
    .line 1816
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1817
    .line 1818
    .line 1819
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1820
    .line 1821
    const-string v6, "\u524d\u8fdb20\u79d2(\u516c\u7b7e)"

    .line 1822
    .line 1823
    const/16 v8, 0x1c6

    .line 1824
    .line 1825
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1826
    .line 1827
    .line 1828
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1829
    .line 1830
    const/16 v6, 0x1c7

    .line 1831
    .line 1832
    invoke-static {v9, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1833
    .line 1834
    .line 1835
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1836
    .line 1837
    const/16 v6, 0x1c8

    .line 1838
    .line 1839
    invoke-static {v14, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1840
    .line 1841
    .line 1842
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1843
    .line 1844
    const-string v6, "\u516c\u7b7e\u6a21\u5f0f-\u6392\u9664\u6307\u5b9aAPP"

    .line 1845
    .line 1846
    const/16 v8, 0x197

    .line 1847
    .line 1848
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1849
    .line 1850
    .line 1851
    :cond_16
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v4

    .line 1855
    iget-boolean v4, v4, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 1856
    .line 1857
    if-eqz v4, :cond_17

    .line 1858
    .line 1859
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1860
    .line 1861
    const-string v6, "\u516c\u7b7e\u7cfb\u7edf\u529f\u80fd\uff1aAPI \uff08\u6bd4shell\u5feb\uff09"

    .line 1862
    .line 1863
    invoke-static {v6, v4}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1864
    .line 1865
    .line 1866
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1867
    .line 1868
    const-string v6, "\u6a21\u62df\u6309\u952e(\u516c\u7b7e)"

    .line 1869
    .line 1870
    const/16 v8, 0x326

    .line 1871
    .line 1872
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1873
    .line 1874
    .line 1875
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1876
    .line 1877
    const-string v6, "\u6a21\u62df\u70b9\u51fb(\u516c\u7b7e)"

    .line 1878
    .line 1879
    const/16 v8, 0x327

    .line 1880
    .line 1881
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1882
    .line 1883
    .line 1884
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1885
    .line 1886
    const-string v6, "\u6a21\u62df\u9f20\u6807(\u516c\u7b7e)"

    .line 1887
    .line 1888
    const/16 v8, 0x328

    .line 1889
    .line 1890
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1891
    .line 1892
    .line 1893
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1894
    .line 1895
    const-string v6, "\u6309 \u4e0b\u4e00\u9996"

    .line 1896
    .line 1897
    const/16 v8, 0x323

    .line 1898
    .line 1899
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1900
    .line 1901
    .line 1902
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1903
    .line 1904
    const-string v6, "\u6309 \u4e0a\u4e00\u9996"

    .line 1905
    .line 1906
    const/16 v8, 0x324

    .line 1907
    .line 1908
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1909
    .line 1910
    .line 1911
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1912
    .line 1913
    const-string v6, "\u6309 \u9759\u97f3\u952e"

    .line 1914
    .line 1915
    const/16 v8, 0x325

    .line 1916
    .line 1917
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1918
    .line 1919
    .line 1920
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1921
    .line 1922
    const-string v6, "\u64ad\u653e/\u6682\u505c(api1)"

    .line 1923
    .line 1924
    const/16 v8, 0x32a

    .line 1925
    .line 1926
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1927
    .line 1928
    .line 1929
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1930
    .line 1931
    const-string v6, "\u64ad\u653e/\u6682\u505c(api2)"

    .line 1932
    .line 1933
    const/16 v8, 0x32b

    .line 1934
    .line 1935
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1936
    .line 1937
    .line 1938
    :cond_17
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v4

    .line 1942
    iget-boolean v4, v4, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 1943
    .line 1944
    if-nez v4, :cond_18

    .line 1945
    .line 1946
    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    .line 1947
    .line 1948
    .line 1949
    move-result-object v4

    .line 1950
    invoke-virtual {v4}, Lfa/h0;->f()Z

    .line 1951
    .line 1952
    .line 1953
    move-result v4

    .line 1954
    if-eqz v4, :cond_19

    .line 1955
    .line 1956
    :cond_18
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1957
    .line 1958
    const-string v6, "\u6a21\u62df\u6309\u952e(shell)"

    .line 1959
    .line 1960
    invoke-static {v6, v4}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1961
    .line 1962
    .line 1963
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1964
    .line 1965
    const/16 v8, 0x50

    .line 1966
    .line 1967
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1968
    .line 1969
    .line 1970
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1971
    .line 1972
    const-string v6, "\u4e0b\u4e00\u9996(shell)"

    .line 1973
    .line 1974
    const/16 v8, 0x65

    .line 1975
    .line 1976
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1977
    .line 1978
    .line 1979
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1980
    .line 1981
    const-string v6, "\u4e0a\u4e00\u9996(shell)"

    .line 1982
    .line 1983
    const/16 v8, 0x66

    .line 1984
    .line 1985
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1986
    .line 1987
    .line 1988
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1989
    .line 1990
    const-string v6, "\u9759\u97f3\u952e(shell)"

    .line 1991
    .line 1992
    const/16 v8, 0x68

    .line 1993
    .line 1994
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 1995
    .line 1996
    .line 1997
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 1998
    .line 1999
    const-string v6, "\u64ad\u653e/\u6682\u505c(shell)"

    .line 2000
    .line 2001
    const/16 v8, 0x64

    .line 2002
    .line 2003
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2004
    .line 2005
    .line 2006
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2007
    .line 2008
    const-string v6, "\u64ad\u653e/\u6682\u505c(shell)2"

    .line 2009
    .line 2010
    const/16 v8, 0x1cc

    .line 2011
    .line 2012
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2013
    .line 2014
    .line 2015
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2016
    .line 2017
    const-string v6, "\u505c\u6b62\u64ad\u653e(shell)"

    .line 2018
    .line 2019
    const/16 v8, 0x67

    .line 2020
    .line 2021
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2022
    .line 2023
    .line 2024
    :cond_19
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 2025
    .line 2026
    .line 2027
    move-result-object v4

    .line 2028
    iget-boolean v4, v4, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 2029
    .line 2030
    if-nez v4, :cond_1a

    .line 2031
    .line 2032
    invoke-static {}, Lfa/h0;->c()Lfa/h0;

    .line 2033
    .line 2034
    .line 2035
    move-result-object v4

    .line 2036
    invoke-virtual {v4}, Lfa/h0;->f()Z

    .line 2037
    .line 2038
    .line 2039
    move-result v4

    .line 2040
    if-eqz v4, :cond_1b

    .line 2041
    .line 2042
    :cond_1a
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2043
    .line 2044
    const-string v6, "\u4ee5\u4e0b\u529f\u80fd\u4ec5\u9002\u5408\u516c\u7b7e\u7cfb\u7edf\u6216\u5df2root\u7cfb\u7edf\u4f7f\u7528"

    .line 2045
    .line 2046
    invoke-static {v6, v4}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2047
    .line 2048
    .line 2049
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2050
    .line 2051
    const-string v6, "\u5185\u5b58\u6e05\u7406(\u6781\u901f\u6a21\u5f0f)"

    .line 2052
    .line 2053
    const/16 v8, 0x12c

    .line 2054
    .line 2055
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2056
    .line 2057
    .line 2058
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2059
    .line 2060
    const-string v6, "\u5185\u5b58\u6e05\u7406(\u7a97\u53e3\u6a21\u5f0f)"

    .line 2061
    .line 2062
    const/16 v8, 0x12d

    .line 2063
    .line 2064
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2065
    .line 2066
    .line 2067
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2068
    .line 2069
    const-string v6, "\u5185\u5b58\u6e05\u7406(\u8f66\u673a\u6a21\u5f0f)"

    .line 2070
    .line 2071
    const/16 v8, 0x12e

    .line 2072
    .line 2073
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2074
    .line 2075
    .line 2076
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2077
    .line 2078
    const-string v6, "\u7a97\u53e3\u5207\u6362(\u4e3b\u5c4f)"

    .line 2079
    .line 2080
    const/16 v8, 0x5a

    .line 2081
    .line 2082
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2083
    .line 2084
    .line 2085
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2086
    .line 2087
    const-string v6, "\u5e94\u7528\u5207\u6362(\u4e3b\u5c4f)"

    .line 2088
    .line 2089
    const/16 v8, 0x5c

    .line 2090
    .line 2091
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2092
    .line 2093
    .line 2094
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2095
    .line 2096
    const-string v6, "\u7a97\u53e3\u5207\u6362(\u526f\u5c4f)"

    .line 2097
    .line 2098
    const/16 v8, 0x5b

    .line 2099
    .line 2100
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2101
    .line 2102
    .line 2103
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2104
    .line 2105
    const/16 v6, 0x4b

    .line 2106
    .line 2107
    invoke-static {v10, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2108
    .line 2109
    .line 2110
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2111
    .line 2112
    const-string v6, "\u5f3a\u5236\u5173\u95ed\u5e94\u7528"

    .line 2113
    .line 2114
    const/16 v8, 0x49

    .line 2115
    .line 2116
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2117
    .line 2118
    .line 2119
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2120
    .line 2121
    const-string v6, "\u5f3a\u5236\u5173\u95ed\u5f53\u524d\u5e94\u7528"

    .line 2122
    .line 2123
    const/16 v8, 0x4a

    .line 2124
    .line 2125
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2126
    .line 2127
    .line 2128
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2129
    .line 2130
    const-string v6, "\u622a\u5c4f"

    .line 2131
    .line 2132
    const/16 v8, 0x4c

    .line 2133
    .line 2134
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2135
    .line 2136
    .line 2137
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2138
    .line 2139
    const-string v6, "\u8fd4\u56de\u4e3b\u9875(\u684c\u9762)"

    .line 2140
    .line 2141
    const/16 v8, 0x35

    .line 2142
    .line 2143
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2144
    .line 2145
    .line 2146
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2147
    .line 2148
    new-instance v6, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 2149
    .line 2150
    new-instance v8, Ljava/lang/StringBuilder;

    .line 2151
    .line 2152
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2153
    .line 2154
    .line 2155
    invoke-static {}, Lcom/yunpan/appmanage/util/k;->f()Lcom/yunpan/appmanage/util/k;

    .line 2156
    .line 2157
    .line 2158
    move-result-object v7

    .line 2159
    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 2160
    .line 2161
    const-string v9, "(task)"

    .line 2162
    .line 2163
    invoke-static {v7, v9, v8}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v7

    .line 2167
    const/16 v8, 0x34

    .line 2168
    .line 2169
    invoke-direct {v6, v7, v8}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 2170
    .line 2171
    .line 2172
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2173
    .line 2174
    .line 2175
    :cond_1b
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2176
    .line 2177
    const-string v6, "\u8fd9\u4e9b\u529f\u80fd\u9002\u5408\u5df2root \u6216 \u80fd\u8fde\u63a5adb \u7684\u7cfb\u7edf\u4f7f\u7528\n\u6ce8\uff1a\u5982\u679c\u662fadb\u7684\u8bdd\uff0c\u8bf7\u5728\u5f00\u673a\u4efb\u52a1\u4e2d\u6dfb\u52a0\u4e00\u4e2a\u4efb\u52a1\uff1a\u6267\u884c\u547d\u4ee4(adb) (\u968f\u4fbf\u4e00\u6761\u547d\u4ee4\uff0c\u5982\uff1aid)"

    .line 2178
    .line 2179
    invoke-static {v6, v4}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2180
    .line 2181
    .line 2182
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2183
    .line 2184
    const-string v6, "Q-\u6267\u884c\u547d\u4ee4"

    .line 2185
    .line 2186
    invoke-static {v6, v11, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2187
    .line 2188
    .line 2189
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2190
    .line 2191
    const-string v6, "Q-\u6267\u884c\u547d\u4ee4\u5e76\u663e\u793a\u7ed3\u679c"

    .line 2192
    .line 2193
    invoke-static {v6, v13, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2194
    .line 2195
    .line 2196
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2197
    .line 2198
    const-string v6, "Q-\u5185\u5b58\u6e05\u7406"

    .line 2199
    .line 2200
    const/16 v7, 0xbc1

    .line 2201
    .line 2202
    invoke-static {v6, v7, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2203
    .line 2204
    .line 2205
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2206
    .line 2207
    const-string v6, "Q-\u6a21\u62df\u6309\u952e"

    .line 2208
    .line 2209
    const/16 v8, 0xbb8

    .line 2210
    .line 2211
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2212
    .line 2213
    .line 2214
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2215
    .line 2216
    const-string v6, "Q-\u6a21\u62df\u70b9\u51fb"

    .line 2217
    .line 2218
    const/16 v8, 0xbb9

    .line 2219
    .line 2220
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2221
    .line 2222
    .line 2223
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2224
    .line 2225
    const-string v6, "Q-\u6a21\u62df\u9f20\u6807"

    .line 2226
    .line 2227
    const/16 v8, 0xbc2

    .line 2228
    .line 2229
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2230
    .line 2231
    .line 2232
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2233
    .line 2234
    const-string v6, "Q-\u5f3a\u5236\u5173\u95ed\u5e94\u7528"

    .line 2235
    .line 2236
    const/16 v8, 0xbba

    .line 2237
    .line 2238
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2239
    .line 2240
    .line 2241
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2242
    .line 2243
    const-string v6, "Q-\u5f3a\u5236\u5173\u95ed\u5f53\u524d\u5e94\u7528"

    .line 2244
    .line 2245
    const/16 v8, 0xbbb

    .line 2246
    .line 2247
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2248
    .line 2249
    .line 2250
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2251
    .line 2252
    const-string v6, "Q-\u622a\u5c4f"

    .line 2253
    .line 2254
    const/16 v8, 0xbbd

    .line 2255
    .line 2256
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2257
    .line 2258
    .line 2259
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2260
    .line 2261
    const-string v6, "Q-\u64ad\u653e/\u6682\u505c-2"

    .line 2262
    .line 2263
    const/16 v8, 0xbc3

    .line 2264
    .line 2265
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2266
    .line 2267
    .line 2268
    const/16 v4, 0x1a

    .line 2269
    .line 2270
    if-lt v1, v4, :cond_1c

    .line 2271
    .line 2272
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2273
    .line 2274
    const-string v6, "Q-\u5e94\u7528\u5207\u6362"

    .line 2275
    .line 2276
    const/16 v8, 0xbbc

    .line 2277
    .line 2278
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2279
    .line 2280
    .line 2281
    :cond_1c
    invoke-static {}, Lfa/o0;->a()Lfa/o0;

    .line 2282
    .line 2283
    .line 2284
    move-result-object v4

    .line 2285
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2286
    .line 2287
    .line 2288
    invoke-static {}, Lfa/o0;->f()Z

    .line 2289
    .line 2290
    .line 2291
    move-result v4

    .line 2292
    if-nez v4, :cond_1d

    .line 2293
    .line 2294
    const/16 v4, 0x18

    .line 2295
    .line 2296
    if-lt v1, v4, :cond_1e

    .line 2297
    .line 2298
    :cond_1d
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2299
    .line 2300
    const-string v6, "\u8fd9\u4e9b\u529f\u80fd\u4ec5\u9002\u5408\u5df2\u5b89\u88c5\u5e76\u6fc0\u6d3bshizuku\u7684\u7cfb\u7edf \u4f7f\u7528"

    .line 2301
    .line 2302
    invoke-static {v6, v4}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2303
    .line 2304
    .line 2305
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2306
    .line 2307
    const-string v6, "S-\u6a21\u62df\u6309\u952e"

    .line 2308
    .line 2309
    const/16 v8, 0x399

    .line 2310
    .line 2311
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2312
    .line 2313
    .line 2314
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2315
    .line 2316
    const-string v6, "S-\u6a21\u62df\u70b9\u51fb"

    .line 2317
    .line 2318
    const/16 v8, 0x39a

    .line 2319
    .line 2320
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2321
    .line 2322
    .line 2323
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2324
    .line 2325
    const-string v6, "S-\u6a21\u62df\u9f20\u6807"

    .line 2326
    .line 2327
    const/16 v8, 0x39b

    .line 2328
    .line 2329
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2330
    .line 2331
    .line 2332
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2333
    .line 2334
    const-string v6, "S-\u6267\u884c\u547d\u4ee4"

    .line 2335
    .line 2336
    const/16 v8, 0x398

    .line 2337
    .line 2338
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2339
    .line 2340
    .line 2341
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2342
    .line 2343
    const-string v6, "S-\u5f3a\u5236\u5173\u95ed\u5e94\u7528"

    .line 2344
    .line 2345
    const/16 v8, 0x3ae

    .line 2346
    .line 2347
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2348
    .line 2349
    .line 2350
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2351
    .line 2352
    const-string v6, "S-\u5f3a\u5236\u5173\u95ed\u5f53\u524d\u5e94\u7528"

    .line 2353
    .line 2354
    const/16 v8, 0x3af

    .line 2355
    .line 2356
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2357
    .line 2358
    .line 2359
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2360
    .line 2361
    const-string v6, "S-\u6267\u884c\u547d\u4ee4\u5e76\u663e\u793a\u7ed3\u679c"

    .line 2362
    .line 2363
    const/16 v8, 0x39c

    .line 2364
    .line 2365
    invoke-static {v6, v8, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2366
    .line 2367
    .line 2368
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2369
    .line 2370
    const-string v6, "S-\u5185\u5b58\u6e05\u7406"

    .line 2371
    .line 2372
    invoke-static {v6, v7, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2373
    .line 2374
    .line 2375
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2376
    .line 2377
    const-string v6, "S-\u622a\u5c4f"

    .line 2378
    .line 2379
    const/16 v7, 0x3b0

    .line 2380
    .line 2381
    invoke-static {v6, v7, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2382
    .line 2383
    .line 2384
    const/16 v4, 0x1a

    .line 2385
    .line 2386
    if-lt v1, v4, :cond_1e

    .line 2387
    .line 2388
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2389
    .line 2390
    const-string v6, "S-\u5e94\u7528\u5207\u6362"

    .line 2391
    .line 2392
    const/16 v7, 0x3ac

    .line 2393
    .line 2394
    invoke-static {v6, v7, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2395
    .line 2396
    .line 2397
    :cond_1e
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2398
    .line 2399
    const-string v6, "\u9759\u9ed8\u542f\u52a8"

    .line 2400
    .line 2401
    invoke-static {v6, v4}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2402
    .line 2403
    .line 2404
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2405
    .line 2406
    const-string v6, "\u9759\u9ed8\u542f\u52a8(QQ\u97f3\u4e50\u8f66\u673a\u7248)"

    .line 2407
    .line 2408
    const/16 v7, 0x1f42

    .line 2409
    .line 2410
    invoke-static {v6, v7, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2411
    .line 2412
    .line 2413
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2414
    .line 2415
    const-string v6, "\u5173\u95ed(QQ\u97f3\u4e50\u8f66\u673a\u7248)"

    .line 2416
    .line 2417
    const/16 v7, 0x1f4a

    .line 2418
    .line 2419
    invoke-static {v6, v7, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2420
    .line 2421
    .line 2422
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2423
    .line 2424
    const-string v6, "\u9644\u52a0\u6761\u4ef6\uff0c\u4e8c\u7ea7\u5224\u65ad"

    .line 2425
    .line 2426
    invoke-static {v6, v4}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2427
    .line 2428
    .line 2429
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2430
    .line 2431
    const/16 v6, 0x1ea

    .line 2432
    .line 2433
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2434
    .line 2435
    .line 2436
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2437
    .line 2438
    const-string v5, "\u5224\u65ad(\u5149\u7167\u4eae\u5ea6)"

    .line 2439
    .line 2440
    const/16 v6, 0x1b58

    .line 2441
    .line 2442
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2443
    .line 2444
    .line 2445
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2446
    .line 2447
    const-string v5, "\u5224\u65ad(\u5c4f\u5e55\u4eae\u5ea6)"

    .line 2448
    .line 2449
    const/16 v6, 0x1b59

    .line 2450
    .line 2451
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2452
    .line 2453
    .line 2454
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2455
    .line 2456
    const-string v5, "\u5f00\u53d1\u8005\u5de5\u5177"

    .line 2457
    .line 2458
    invoke-static {v5, v4}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2459
    .line 2460
    .line 2461
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2462
    .line 2463
    const-string v5, "\u83b7\u53d6\u7a97\u53e3\u8282\u70b9(\u4fdd\u5b58)"

    .line 2464
    .line 2465
    const/16 v6, 0x2bc

    .line 2466
    .line 2467
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2468
    .line 2469
    .line 2470
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2471
    .line 2472
    const-string v5, "\u83b7\u53d6\u7a97\u53e3\u8282\u70b9(\u663e\u793a)"

    .line 2473
    .line 2474
    const/16 v6, 0x2bd

    .line 2475
    .line 2476
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2477
    .line 2478
    .line 2479
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2480
    .line 2481
    const-string v5, "settings put"

    .line 2482
    .line 2483
    const/16 v6, 0x2ee

    .line 2484
    .line 2485
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2486
    .line 2487
    .line 2488
    iget-object v4, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2489
    .line 2490
    const-string v5, "\u70b9\u51fb(\u641c\u5173\u952e\u5b57\u5e76\u70b9\u51fb)"

    .line 2491
    .line 2492
    const/16 v6, 0x2bf

    .line 2493
    .line 2494
    invoke-static {v5, v6, v4}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2495
    .line 2496
    .line 2497
    if-lt v1, v3, :cond_1f

    .line 2498
    .line 2499
    iget-object v3, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2500
    .line 2501
    const-string v4, "\u70b9\u51fb(\u641c\u8282\u70b9ID\u5e76\u70b9\u51fb)"

    .line 2502
    .line 2503
    const/16 v5, 0x2c0

    .line 2504
    .line 2505
    invoke-static {v4, v5, v3}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2506
    .line 2507
    .line 2508
    :cond_1f
    iget-object v3, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2509
    .line 2510
    const-string v4, "settings switch"

    .line 2511
    .line 2512
    const/16 v5, 0x2ef

    .line 2513
    .line 2514
    invoke-static {v4, v5, v3}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2515
    .line 2516
    .line 2517
    const/16 v3, 0x15

    .line 2518
    .line 2519
    if-lt v1, v3, :cond_20

    .line 2520
    .line 2521
    iget-object v3, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2522
    .line 2523
    const-string v4, "\u83b7\u53d6\u5df2\u6253\u5f00\u7684\u64ad\u653e\u5668(\u6d4b\u8bd5\u7528)"

    .line 2524
    .line 2525
    const/16 v5, 0x2f0

    .line 2526
    .line 2527
    invoke-static {v4, v5, v3}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2528
    .line 2529
    .line 2530
    iget-object v3, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2531
    .line 2532
    const-string v4, "\u91cd\u65b0\u8bc6\u522b\u97f3\u4e50\u64ad\u653e\u5668(\u6d4b\u8bd5\u7528)"

    .line 2533
    .line 2534
    const/16 v5, 0x2f3

    .line 2535
    .line 2536
    invoke-static {v4, v5, v3}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2537
    .line 2538
    .line 2539
    :cond_20
    iget-object v3, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2540
    .line 2541
    const-string v4, "\u83b7\u53d6\u70b9\u51fb\u5750\u6807(\u60ac\u6d6e\u7a97)"

    .line 2542
    .line 2543
    const/16 v5, 0x2c1

    .line 2544
    .line 2545
    invoke-static {v4, v5, v3}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2546
    .line 2547
    .line 2548
    iget-object v3, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2549
    .line 2550
    const-string v4, "\u5199\u5165\u7cfb\u7edf\u65e5\u5fd7"

    .line 2551
    .line 2552
    const/16 v5, 0x2f1

    .line 2553
    .line 2554
    invoke-static {v4, v5, v3}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2555
    .line 2556
    .line 2557
    iget-object v3, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2558
    .line 2559
    const-string v4, "\u505c\u6b62\u81ea\u52a8\u5316"

    .line 2560
    .line 2561
    const/16 v5, 0x2f2

    .line 2562
    .line 2563
    invoke-static {v4, v5, v3}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2564
    .line 2565
    .line 2566
    const/16 v3, 0x15

    .line 2567
    .line 2568
    if-lt v1, v3, :cond_21

    .line 2569
    .line 2570
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2571
    .line 2572
    const-string v3, "\u83b7\u53d6\u5f53\u524d\u6240\u6709\u7a97\u53e3"

    .line 2573
    .line 2574
    const/16 v4, 0x2c2

    .line 2575
    .line 2576
    invoke-static {v3, v4, v1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2577
    .line 2578
    .line 2579
    :cond_21
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2580
    .line 2581
    const-string v3, "\u4ee5\u4e0b\u529f\u80fd\u89c4\u5212\u4e2d"

    .line 2582
    .line 2583
    invoke-static {v3, v1}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2584
    .line 2585
    .line 2586
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2587
    .line 2588
    const-string v3, "\u5e94\u7528\u5217\u8868(\u5168\u5c4f)"

    .line 2589
    .line 2590
    const/16 v4, -0xa

    .line 2591
    .line 2592
    invoke-static {v3, v4, v1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2593
    .line 2594
    .line 2595
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2596
    .line 2597
    const-string v3, "\u5e94\u7528\u5217\u8868(\u7535\u89c6)"

    .line 2598
    .line 2599
    invoke-static {v3, v4, v1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2600
    .line 2601
    .line 2602
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2603
    .line 2604
    const-string v3, "\u5e94\u7528\u5217\u8868(\u5355\u8868)"

    .line 2605
    .line 2606
    invoke-static {v3, v4, v1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2607
    .line 2608
    .line 2609
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2610
    .line 2611
    const-string v3, "\u5e94\u7528\u5217\u8868(\u7ffb\u9875)"

    .line 2612
    .line 2613
    invoke-static {v3, v4, v1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2614
    .line 2615
    .line 2616
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2617
    .line 2618
    const-string v3, "\u5e94\u7528\u5217\u8868(\u4fa7\u8fb9)"

    .line 2619
    .line 2620
    invoke-static {v3, v4, v1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 2621
    .line 2622
    .line 2623
    iget-object v1, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2624
    .line 2625
    new-instance v3, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 2626
    .line 2627
    const-string v5, "\u5e94\u7528\u5217\u8868(\u73af\u7ed5\u60ac\u6d6e\u6309\u94ae)"

    .line 2628
    .line 2629
    invoke-direct {v3, v5, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 2630
    .line 2631
    .line 2632
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2633
    .line 2634
    .line 2635
    new-instance v1, Lx9/t0;

    .line 2636
    .line 2637
    const/4 v3, 0x3

    .line 2638
    invoke-direct {v1, v3}, Lx9/t0;-><init>(I)V

    .line 2639
    .line 2640
    .line 2641
    iput-object v1, v0, Lha/t9;->i:Lx9/t0;

    .line 2642
    .line 2643
    iget-object v3, v0, Lha/t9;->j:Ljava/util/ArrayList;

    .line 2644
    .line 2645
    invoke-virtual {v1, v3}, Lc6/g;->E(Ljava/util/List;)V

    .line 2646
    .line 2647
    .line 2648
    const v1, 0x7f0b04f1

    .line 2649
    .line 2650
    .line 2651
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 2652
    .line 2653
    .line 2654
    move-result-object v1

    .line 2655
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 2656
    .line 2657
    iput-object v1, v0, Lha/t9;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2658
    .line 2659
    new-instance v3, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;

    .line 2660
    .line 2661
    const/4 v4, 0x3

    .line 2662
    invoke-direct {v3, v2, v4}, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 2663
    .line 2664
    .line 2665
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2666
    .line 2667
    .line 2668
    iget-object v1, v0, Lha/t9;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2669
    .line 2670
    const/4 v2, 0x0

    .line 2671
    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollBarFadeDuration(I)V

    .line 2672
    .line 2673
    .line 2674
    iget-object v1, v0, Lha/t9;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2675
    .line 2676
    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollBarDefaultDelayBeforeFade(I)V

    .line 2677
    .line 2678
    .line 2679
    iget-object v1, v0, Lha/t9;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 2680
    .line 2681
    iget-object v2, v0, Lha/t9;->i:Lx9/t0;

    .line 2682
    .line 2683
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 2684
    .line 2685
    .line 2686
    iget-object v1, v0, Lha/t9;->i:Lx9/t0;

    .line 2687
    .line 2688
    new-instance v2, Lha/p7;

    .line 2689
    .line 2690
    const/4 v3, 0x3

    .line 2691
    invoke-direct {v2, v3, v0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 2692
    .line 2693
    .line 2694
    iput-object v2, v1, Lc6/g;->e:Lc6/e;

    .line 2695
    .line 2696
    return-void
.end method
