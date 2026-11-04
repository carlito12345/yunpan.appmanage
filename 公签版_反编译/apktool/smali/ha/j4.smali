.class public final Lha/j4;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Landroidx/recyclerview/widget/RecyclerView;

.field public h:Lx9/t0;

.field public i:Ljava/util/ArrayList;

.field public final j:Lua/u0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lua/u0;)V
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
    iput-object p3, p0, Lha/j4;->j:Lua/u0;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 13
    .line 14
    const v2, 0x7f0801d0

    .line 15
    .line 16
    .line 17
    const-string v3, "\u8bf7\u9009\u62e9\u529f\u80fd"

    .line 18
    .line 19
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 26
    .line 27
    const-string v1, "\u5ef6\u65f6"

    .line 28
    .line 29
    const/16 v2, 0x64

    .line 30
    .line 31
    invoke-static {v1, v2, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 35
    .line 36
    const-string v1, "\u663e\u793a\u63d0\u793a"

    .line 37
    .line 38
    const/16 v2, 0x65

    .line 39
    .line 40
    invoke-static {v1, v2, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 44
    .line 45
    const-string v1, "\u8fd4\u56de\u9ed8\u8ba4\u684c\u9762"

    .line 46
    .line 47
    const/16 v2, 0x67

    .line 48
    .line 49
    invoke-static {v1, v2, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 53
    .line 54
    const-string v1, "\u6253\u5f00\u5e94\u7528"

    .line 55
    .line 56
    const/16 v2, 0x6e

    .line 57
    .line 58
    invoke-static {v1, v2, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 62
    .line 63
    const-string v1, "\u6253\u5f00\u5e94\u7528(\u7279\u6b8a1)"

    .line 64
    .line 65
    const/16 v2, 0x71

    .line 66
    .line 67
    invoke-static {v1, v2, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 71
    .line 72
    const-string v1, "\u6253\u5f00\u5e94\u7528(\u7279\u6b8a2)"

    .line 73
    .line 74
    const/16 v2, 0x72

    .line 75
    .line 76
    invoke-static {v1, v2, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 80
    .line 81
    const-string v1, "\u64ad\u653e\u97f3\u9891"

    .line 82
    .line 83
    const/16 v2, 0x68

    .line 84
    .line 85
    invoke-static {v1, v2, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 89
    .line 90
    const-string v1, "\u64ad\u653e\u89c6\u9891"

    .line 91
    .line 92
    const/16 v2, 0x69

    .line 93
    .line 94
    invoke-static {v1, v2, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 98
    .line 99
    const-string v1, "\u6253\u5f00\u9875\u9762"

    .line 100
    .line 101
    const/16 v2, 0x6f

    .line 102
    .line 103
    invoke-static {v1, v2, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 107
    .line 108
    new-instance v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 109
    .line 110
    const-string v2, "\u6253\u5f00\u670d\u52a1"

    .line 111
    .line 112
    const/16 v3, 0x70

    .line 113
    .line 114
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    new-instance p1, Landroid/content/Intent;

    .line 121
    .line 122
    const-string v1, "android.settings.SETTINGS"

    .line 123
    .line 124
    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 128
    .line 129
    invoke-static {v1, p1}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_0

    .line 134
    .line 135
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 136
    .line 137
    const-string v2, "\u6253\u5f00\u539f\u751f\u8bbe\u7f6e"

    .line 138
    .line 139
    const/16 v3, 0xc8

    .line 140
    .line 141
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 142
    .line 143
    .line 144
    :cond_0
    new-instance p1, Landroid/content/Intent;

    .line 145
    .line 146
    const-string v2, "android.settings.WIFI_SETTINGS"

    .line 147
    .line 148
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v1, p1}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_1

    .line 156
    .line 157
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 158
    .line 159
    const-string v2, "\u6253\u5f00\u8bbe\u7f6e(wifi)"

    .line 160
    .line 161
    const/16 v3, 0xc9

    .line 162
    .line 163
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 164
    .line 165
    .line 166
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 167
    .line 168
    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    .line 169
    .line 170
    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v1, p1}, Lif/a;->d0(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_2

    .line 178
    .line 179
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 180
    .line 181
    const-string v2, "\u6253\u5f00\u8bbe\u7f6e(\u84dd\u7259)"

    .line 182
    .line 183
    const/16 v3, 0xca

    .line 184
    .line 185
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 186
    .line 187
    .line 188
    :cond_2
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 189
    .line 190
    const-string v2, "\u539f\u751f\u529f\u80fd\u5f00\u5173(\u6ce8\uff1a\u5f88\u591a\u8f66\u673a\u4e0d\u652f\u6301\u539f\u751f)"

    .line 191
    .line 192
    invoke-static {v2, p1}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 196
    .line 197
    const-string v2, "\u672c\u673a\u70ed\u70b9(\u5f00)"

    .line 198
    .line 199
    const/16 v3, 0x140

    .line 200
    .line 201
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 205
    .line 206
    const-string v2, "\u672c\u673a\u70ed\u70b9(\u5173)"

    .line 207
    .line 208
    const/16 v3, 0x141

    .line 209
    .line 210
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 214
    .line 215
    const-string v2, "\u84dd\u7259(\u5f00)"

    .line 216
    .line 217
    const/16 v3, 0x136

    .line 218
    .line 219
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 223
    .line 224
    const-string v2, "\u84dd\u7259(\u5173)"

    .line 225
    .line 226
    const/16 v3, 0x137

    .line 227
    .line 228
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 232
    .line 233
    const-string v2, "wifi(\u5f00)"

    .line 234
    .line 235
    const/16 v3, 0x12c

    .line 236
    .line 237
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 241
    .line 242
    const-string v2, "wifi(\u5173)"

    .line 243
    .line 244
    const/16 v3, 0x12d

    .line 245
    .line 246
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 250
    .line 251
    const-string v2, "\u6267\u884c\u547d\u4ee4\u884c"

    .line 252
    .line 253
    invoke-static {v2, p1}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 257
    .line 258
    const-string v2, "\u6267\u884c\u547d\u4ee4(\u672c\u673a)"

    .line 259
    .line 260
    const/16 v3, 0x1f4

    .line 261
    .line 262
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 263
    .line 264
    .line 265
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 266
    .line 267
    const-string v2, "\u6267\u884c\u547d\u4ee4(ADB)"

    .line 268
    .line 269
    const/16 v3, 0x1f5

    .line 270
    .line 271
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 275
    .line 276
    const-string v2, "\u6fc0\u6d3bShizuku"

    .line 277
    .line 278
    const/16 v3, 0x1f6

    .line 279
    .line 280
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 281
    .line 282
    .line 283
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 284
    .line 285
    const-string v2, "\u6267\u884c\u547d\u4ee4\u5e76\u663e\u793a\u7ed3\u679c(\u672c\u673a)"

    .line 286
    .line 287
    const/16 v3, 0x1f7

    .line 288
    .line 289
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 290
    .line 291
    .line 292
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 293
    .line 294
    const-string v2, "\u6267\u884c\u547d\u4ee4\u5e76\u663e\u793a\u7ed3\u679c(ADB)"

    .line 295
    .line 296
    const/16 v3, 0x1f8

    .line 297
    .line 298
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 299
    .line 300
    .line 301
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 302
    .line 303
    const/16 v2, 0x1e

    .line 304
    .line 305
    if-lt p1, v2, :cond_3

    .line 306
    .line 307
    iget-object v3, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 308
    .line 309
    const-string v4, "\u5339\u914d\u7801adb\u8f6c5555"

    .line 310
    .line 311
    const/16 v5, 0x195

    .line 312
    .line 313
    invoke-static {v4, v5, v3}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 314
    .line 315
    .line 316
    :cond_3
    iget-object v3, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 317
    .line 318
    const-string v4, "\u7279\u6b8a\u529f\u80fd"

    .line 319
    .line 320
    invoke-static {v4, v3}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 321
    .line 322
    .line 323
    iget-object v3, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 324
    .line 325
    const-string v4, "\u5f00\u542f\u4e34\u65f6\u65e0\u7ebfadb(\u65b9\u6cd5\u4e00)"

    .line 326
    .line 327
    const/16 v5, 0x191

    .line 328
    .line 329
    invoke-static {v4, v5, v3}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 330
    .line 331
    .line 332
    iget-object v3, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 333
    .line 334
    const-string v4, "\u5f00\u542f\u4e34\u65f6\u65e0\u7ebfadb(\u65b9\u6cd5\u4e8c)"

    .line 335
    .line 336
    const/16 v5, 0x19b

    .line 337
    .line 338
    invoke-static {v4, v5, v3}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 339
    .line 340
    .line 341
    if-lt p1, v2, :cond_4

    .line 342
    .line 343
    iget-object v3, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 344
    .line 345
    const-string v4, "\u5f00\u542f\u65e0\u7ebf\u8c03\u8bd5(\u5339\u914d\u7801)"

    .line 346
    .line 347
    const/16 v5, 0x192

    .line 348
    .line 349
    invoke-static {v4, v5, v3}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 350
    .line 351
    .line 352
    :cond_4
    iget-object v3, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 353
    .line 354
    const-string v4, "\u5f00\u542fusb\u8c03\u8bd5(\u539f\u751f\u7cfb\u7edf)"

    .line 355
    .line 356
    const/16 v5, 0x194

    .line 357
    .line 358
    invoke-static {v4, v5, v3}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 359
    .line 360
    .line 361
    iget-object v3, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 362
    .line 363
    const-string v4, "settings put"

    .line 364
    .line 365
    const/16 v5, 0x258

    .line 366
    .line 367
    invoke-static {v4, v5, v3}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 368
    .line 369
    .line 370
    const/16 v3, 0x13

    .line 371
    .line 372
    if-lt p1, v3, :cond_5

    .line 373
    .line 374
    if-gt p1, v2, :cond_5

    .line 375
    .line 376
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 377
    .line 378
    const-string v2, "\u6062\u590d\u8f66\u673a\u5e94\u7528\u6c89\u6d78"

    .line 379
    .line 380
    const/16 v3, 0x259

    .line 381
    .line 382
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 383
    .line 384
    .line 385
    :cond_5
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    const-string v2, "com.leapmotor.system"

    .line 390
    .line 391
    const/4 v3, 0x0

    .line 392
    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 393
    .line 394
    .line 395
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 396
    .line 397
    new-instance v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 398
    .line 399
    const-string v3, "\u96f6\u8dd1\u8f66\u673a\u81ea\u52a8\u5f00\u542fadb"

    .line 400
    .line 401
    const/16 v4, 0x196

    .line 402
    .line 403
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .line 408
    .line 409
    goto :goto_0

    .line 410
    :catch_0
    nop

    .line 411
    :goto_0
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 412
    .line 413
    new-instance v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 414
    .line 415
    const-string v3, "\u7b49\u5f85\u7cfb\u7edf\u5f00\u673a\u5b8c\u6210\u518d\u7ee7\u7eed"

    .line 416
    .line 417
    const/16 v4, 0x19c

    .line 418
    .line 419
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    invoke-static {v1}, Lcom/yunpan/appmanage/carsdk/e;->e(Landroid/content/Context;)Z

    .line 426
    .line 427
    .line 428
    move-result p1

    .line 429
    if-eqz p1, :cond_6

    .line 430
    .line 431
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 432
    .line 433
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 434
    .line 435
    iget-boolean p1, p1, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 436
    .line 437
    if-eqz p1, :cond_6

    .line 438
    .line 439
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 440
    .line 441
    const-string v2, "\u5e7f\u6c7d\u4e13\u7528\u529f\u80fd(\u57c3\u5b89Y)"

    .line 442
    .line 443
    invoke-static {v2, p1}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 444
    .line 445
    .line 446
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 447
    .line 448
    const-string v2, "\u68c0\u6d4b\u5927\u706f\u72b6\u6001\u540c\u6b65\u4e3b\u9898(\u5e7f\u6c7d)"

    .line 449
    .line 450
    const/16 v3, 0x197

    .line 451
    .line 452
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 453
    .line 454
    .line 455
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 456
    .line 457
    const-string v2, "\u7cfb\u7edf\u4e3b\u9898\u6539\u4e3a\u81ea\u52a8\u6a21\u5f0f(\u5e7f\u6c7d)"

    .line 458
    .line 459
    const/16 v3, 0x198

    .line 460
    .line 461
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 462
    .line 463
    .line 464
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 465
    .line 466
    const-string v2, "\u5173\u95ed\u884c\u4eba\u63d0\u793a\u97f3(\u5e7f\u6c7d)"

    .line 467
    .line 468
    const/16 v3, 0x19a

    .line 469
    .line 470
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 471
    .line 472
    .line 473
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 474
    .line 475
    const-string v2, "\u5173\u95ed\u65e5\u95f4\u884c\u8f66\u706f(\u5e7f\u6c7d)"

    .line 476
    .line 477
    const/16 v3, 0x199

    .line 478
    .line 479
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 480
    .line 481
    .line 482
    :cond_6
    invoke-static {v1}, Lpa/e;->b(Landroid/content/Context;)Z

    .line 483
    .line 484
    .line 485
    move-result p1

    .line 486
    if-eqz p1, :cond_7

    .line 487
    .line 488
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 489
    .line 490
    const-string v2, "\u65e5\u4ea7\u8f66\u673aS02"

    .line 491
    .line 492
    invoke-static {v2, p1}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 493
    .line 494
    .line 495
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 496
    .line 497
    const-string v2, "\u5f00\u542fusb\u8c03\u8bd5(\u4e0d\u9700\u8981)"

    .line 498
    .line 499
    const/16 v3, 0x190

    .line 500
    .line 501
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 502
    .line 503
    .line 504
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 505
    .line 506
    const-string v2, "\u84dd\u7259(\u5f00\u542f)"

    .line 507
    .line 508
    const/16 v3, 0x2bc

    .line 509
    .line 510
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 511
    .line 512
    .line 513
    :cond_7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 514
    .line 515
    const/16 v2, 0x1c

    .line 516
    .line 517
    if-lt p1, v2, :cond_8

    .line 518
    .line 519
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 520
    .line 521
    const-string v2, "\u529f\u80fd\u6d4b\u8bd5\uff08\u8bbe\u7f6e\u9ed8\u8ba4\u684c\u9762\uff09\n\u53ea\u662f\u8bbe\u7f6e\uff0c\u5982\u679c\u9700\u8981\u6253\u5f00\uff0c\u8bf7\u5728\u540e\u9762\u518d\u6dfb\u52a0\u4e00\u4e2a\u4efb\u52a1\u6253\u5f00\u5e94\u7528"

    .line 522
    .line 523
    invoke-static {v2, p1}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 524
    .line 525
    .line 526
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 527
    .line 528
    const-string v2, "\u8bbe\u7f6e\u9ed8\u8ba4\u684c\u9762(\u516c\u7b7e/root)"

    .line 529
    .line 530
    const/16 v3, 0x3e8

    .line 531
    .line 532
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 533
    .line 534
    .line 535
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 536
    .line 537
    const-string v2, "\u8bbe\u7f6e\u9ed8\u8ba4\u684c\u9762(adb)"

    .line 538
    .line 539
    const/16 v3, 0x3e9

    .line 540
    .line 541
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 542
    .line 543
    .line 544
    :cond_8
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 545
    .line 546
    const-string v2, "\u529f\u80fd\u6d4b\u8bd5\uff08\u8bf7\u52ff\u4f7f\u7528\uff09"

    .line 547
    .line 548
    invoke-static {v2, p1}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 549
    .line 550
    .line 551
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 552
    .line 553
    new-instance v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 554
    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    .line 556
    .line 557
    const-string v4, "\u5f3a\u5236\u5173\u95ed"

    .line 558
    .line 559
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    const v4, 0x7f13016f

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v4

    .line 569
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    const/16 v4, 0x44c

    .line 577
    .line 578
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 585
    .line 586
    const-string v2, "\u5f3a\u5236\u5173\u95ed\u81ea\u52a8\u5316"

    .line 587
    .line 588
    const/16 v3, 0x44d

    .line 589
    .line 590
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 591
    .line 592
    .line 593
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 594
    .line 595
    const-string v2, "\u529f\u80fd\u6d4b\u8bd5\n\u4fee\u6539\u7cfb\u7edf\u65f6\u95f4\u9700root\u6743\u9650\uff0c\u591a\u6570\u7cfb\u7edf\u662f\u65e0\u6743\u9650\u4fee\u6539\u7684\n\u6ce8\uff1a\u5982\u679c\u4f60\u7cfb\u7edf\u65f6\u95f4\u6b63\u5e38\uff0c\u8bf7\u4e0d\u8981\u7528\u6b64\u529f\u80fd"

    .line 596
    .line 597
    invoke-static {v2, p1}, Lg/b;->v(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 598
    .line 599
    .line 600
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 601
    .line 602
    const-string v2, "\u540c\u6b65\u65f6\u95f4\u65e5\u671f(NTP)"

    .line 603
    .line 604
    const/16 v3, 0x15c

    .line 605
    .line 606
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 607
    .line 608
    .line 609
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 610
    .line 611
    const-string v2, "\u4fee\u6539\u65f6\u95f4\u65e5\u671f(GPS)"

    .line 612
    .line 613
    const/16 v3, 0x15b

    .line 614
    .line 615
    invoke-static {v2, v3, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 616
    .line 617
    .line 618
    iget-object p1, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 619
    .line 620
    new-instance v2, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 621
    .line 622
    const-string v3, "\u4fee\u6539\u65f6\u95f4\u65e5\u671f(HTTP)"

    .line 623
    .line 624
    const/16 v4, 0x15d

    .line 625
    .line 626
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    new-instance p1, Lx9/t0;

    .line 633
    .line 634
    invoke-direct {p1, v0}, Lx9/t0;-><init>(I)V

    .line 635
    .line 636
    .line 637
    iput-object p1, p0, Lha/j4;->h:Lx9/t0;

    .line 638
    .line 639
    iget-object v2, p0, Lha/j4;->i:Ljava/util/ArrayList;

    .line 640
    .line 641
    invoke-virtual {p1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 642
    .line 643
    .line 644
    const p1, 0x7f0b04f1

    .line 645
    .line 646
    .line 647
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 648
    .line 649
    .line 650
    move-result-object p1

    .line 651
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 652
    .line 653
    iput-object p1, p0, Lha/j4;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 654
    .line 655
    new-instance v2, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;

    .line 656
    .line 657
    invoke-direct {v2, v1, v0}, Lcom/chad/library/adapter4/layoutmanager/QuickGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 658
    .line 659
    .line 660
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 661
    .line 662
    .line 663
    iget-object p1, p0, Lha/j4;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 664
    .line 665
    iget-object v0, p0, Lha/j4;->h:Lx9/t0;

    .line 666
    .line 667
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 668
    .line 669
    .line 670
    iget-object p1, p0, Lha/j4;->h:Lx9/t0;

    .line 671
    .line 672
    new-instance v0, La1/d;

    .line 673
    .line 674
    const/16 v1, 0x10

    .line 675
    .line 676
    invoke-direct {v0, v1, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 677
    .line 678
    .line 679
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 680
    .line 681
    return-void
.end method
