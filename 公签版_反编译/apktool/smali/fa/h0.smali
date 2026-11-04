.class public final Lfa/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Lgh/a;

.field public f:J

.field public final g:Lfa/f0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lfa/h0;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lfa/h0;->b:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lfa/h0;->d:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lfa/h0;->e:Lgh/a;

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lfa/h0;->f:J

    .line 17
    .line 18
    new-instance v0, Lfa/f0;

    .line 19
    .line 20
    invoke-direct {v0}, Lfa/f0;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lfa/h0;->g:Lfa/f0;

    .line 24
    .line 25
    return-void
.end method

.method public static a()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 4
    .line 5
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 6
    .line 7
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 8
    .line 9
    if-nez v3, :cond_c

    .line 10
    .line 11
    iget-object v3, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 12
    .line 13
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteSettingsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v3, v4}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    const-string v3, "WRITE_SETTINGS"

    .line 24
    .line 25
    invoke-static {v3}, Lfa/h0;->i(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    .line 29
    .line 30
    invoke-static {v3}, Lfa/h0;->j(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v3, "android.permission.DUMP"

    .line 34
    .line 35
    invoke-static {v3}, Lfa/h0;->j(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v3, "android.permission.READ_LOGS"

    .line 39
    .line 40
    invoke-static {v3}, Lfa/h0;->j(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 v4, 0x17

    .line 46
    .line 47
    if-lt v3, v4, :cond_4

    .line 48
    .line 49
    iget-object v4, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 50
    .line 51
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getPackageUsageStatsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v4, v5}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_1

    .line 60
    .line 61
    const-string v4, "android.permission.PACKAGE_USAGE_STATS"

    .line 62
    .line 63
    invoke-static {v4}, Lfa/h0;->j(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v4, "GET_USAGE_STATS"

    .line 67
    .line 68
    invoke-static {v4}, Lfa/h0;->i(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v4, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 72
    .line 73
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAnswerPhoneCallsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v4, v5}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_2

    .line 82
    .line 83
    const-string v4, "ANSWER_PHONE_CALLS"

    .line 84
    .line 85
    invoke-static {v4}, Lfa/h0;->i(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    const-string v4, "android.permission.GET_APP_OPS_STATS"

    .line 89
    .line 90
    invoke-static {v4}, Lfa/h0;->j(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v4, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 94
    .line 95
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getReadExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteExternalStoragePermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    const/4 v7, 0x2

    .line 104
    new-array v7, v7, [Lcom/hjq/permissions/permission/base/IPermission;

    .line 105
    .line 106
    aput-object v5, v7, v1

    .line 107
    .line 108
    aput-object v6, v7, v0

    .line 109
    .line 110
    invoke-static {v4, v7}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermissions(Landroid/content/Context;[Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-nez v4, :cond_3

    .line 115
    .line 116
    const-string v4, "READ_EXTERNAL_STORAGE"

    .line 117
    .line 118
    invoke-static {v4}, Lfa/h0;->i(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string v4, "WRITE_EXTERNAL_STORAGE"

    .line 122
    .line 123
    invoke-static {v4}, Lfa/h0;->i(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    iget-object v4, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 127
    .line 128
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-static {v4, v5}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-nez v4, :cond_4

    .line 137
    .line 138
    const-string v4, "SYSTEM_ALERT_WINDOW"

    .line 139
    .line 140
    invoke-static {v4}, Lfa/h0;->i(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 144
    .line 145
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getRequestInstallPackagesPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-static {v2, v4}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-nez v2, :cond_6

    .line 154
    .line 155
    const/16 v2, 0x1e

    .line 156
    .line 157
    if-ne v3, v2, :cond_5

    .line 158
    .line 159
    const-string v2, "\u81ea\u52a8\u6388\u6743\u4e2d\uff0c\u5982\u679c\u95ea\u9000\u8bf7\u91cd\u65b0\u6253\u5f00"

    .line 160
    .line 161
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    const-wide/16 v2, 0x9fb

    .line 165
    .line 166
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    .line 169
    :catch_0
    :cond_5
    const-string v2, "REQUEST_INSTALL_PACKAGES"

    .line 170
    .line 171
    invoke-static {v2}, Lfa/h0;->i(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 175
    .line 176
    const/16 v3, 0x12

    .line 177
    .line 178
    if-lt v2, v3, :cond_c

    .line 179
    .line 180
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 181
    .line 182
    iget-object v3, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 183
    .line 184
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    const-string v4, "enabled_notification_listeners"

    .line 189
    .line 190
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    const-string v5, ""

    .line 195
    .line 196
    if-eqz v3, :cond_7

    .line 197
    .line 198
    const-string v6, "null"

    .line 199
    .line 200
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_8

    .line 205
    .line 206
    :cond_7
    move-object v3, v5

    .line 207
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    iget-object v7, v2, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 213
    .line 214
    const-string v8, "/"

    .line 215
    .line 216
    invoke-static {v6, v7, v8, v3}, Landroid/support/v4/media/session/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-nez v6, :cond_c

    .line 221
    .line 222
    const-string v6, ":"

    .line 223
    .line 224
    invoke-static {v3, v6}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    iget-object v7, v2, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-class v7, Lcom/yunpan/appmanage/service/StartService;

    .line 237
    .line 238
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    const-string v7, "::"

    .line 250
    .line 251
    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    if-eqz v7, :cond_9

    .line 260
    .line 261
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    :cond_9
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    if-eqz v6, :cond_a

    .line 270
    .line 271
    invoke-static {v0, v1, v3}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    :cond_a
    iget-object v6, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 276
    .line 277
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-static {v6, v4, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    iget-object v3, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 285
    .line 286
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    const-string v4, "notification_enabled"

    .line 291
    .line 292
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 293
    .line 294
    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    const-string v4, "cmd notification allow_listener"

    .line 298
    .line 299
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iget v4, v2, Lcom/yunpan/appmanage/util/k;->n:I

    .line 303
    .line 304
    if-nez v4, :cond_b

    .line 305
    .line 306
    goto :goto_0

    .line 307
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v5, " --user "

    .line 310
    .line 311
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    iget v5, v2, Lcom/yunpan/appmanage/util/k;->n:I

    .line 315
    .line 316
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v4, " "

    .line 327
    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 332
    .line 333
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-class v2, Lcom/yunpan/appmanage/service/StartService;

    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    new-array v3, v0, [Ljava/lang/String;

    .line 353
    .line 354
    aput-object v2, v3, v1

    .line 355
    .line 356
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 361
    .line 362
    .line 363
    :cond_c
    new-array v2, v0, [Ljava/lang/String;

    .line 364
    .line 365
    const-string v3, "settings put global install_non_market_apps 1"

    .line 366
    .line 367
    aput-object v3, v2, v1

    .line 368
    .line 369
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    const/4 v3, 0x0

    .line 374
    invoke-virtual {v2, v3}, Ls1/g;->e0(Lua/i6;)V

    .line 375
    .line 376
    .line 377
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 378
    .line 379
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->K:Z

    .line 380
    .line 381
    if-eqz v2, :cond_e

    .line 382
    .line 383
    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    .line 384
    .line 385
    const-string v4, "getprop sys.jsbd.apk_verify"

    .line 386
    .line 387
    aput-object v4, v2, v1

    .line 388
    .line 389
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {v2}, Landroidx/room/s;->k()Ljava/util/List;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    const-string v4, "1"

    .line 406
    .line 407
    if-ne v2, v4, :cond_d

    .line 408
    .line 409
    goto :goto_1

    .line 410
    :cond_d
    new-instance v2, Ljava/lang/Exception;

    .line 411
    .line 412
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 413
    .line 414
    .line 415
    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    :catch_1
    new-array v0, v0, [Ljava/lang/String;

    .line 417
    .line 418
    const-string v2, "setprop sys.jsbd.apk_verify 1"

    .line 419
    .line 420
    aput-object v2, v0, v1

    .line 421
    .line 422
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-virtual {v0, v3}, Ls1/g;->e0(Lua/i6;)V

    .line 427
    .line 428
    .line 429
    :cond_e
    :goto_1
    return-void
.end method

.method public static b()Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "id"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0}, Landroidx/room/s;->j()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "uid=0(root"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    return v0
.end method

.method public static c()Lfa/h0;
    .locals 1

    .line 1
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 7
    .line 8
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 9
    .line 10
    iget-boolean v2, v1, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 11
    .line 12
    const-string v3, ""

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const-string v2, "cmd "

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v2, v3

    .line 20
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "appops set"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v2, v1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, " --user "

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v1, v1, Lcom/yunpan/appmanage/util/k;->n:I

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, " "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p0, " allow"

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const/4 v0, 0x1

    .line 82
    new-array v0, v0, [Ljava/lang/String;

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    aput-object p0, v0, v1

    .line 86
    .line 87
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0}, Ls1/g;->e0(Lua/i6;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 4
    .line 5
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 6
    .line 7
    iget v3, v2, Lcom/yunpan/appmanage/util/k;->n:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v5, " "

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "pm grant "

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-array v1, v1, [Ljava/lang/String;

    .line 41
    .line 42
    aput-object p0, v1, v0

    .line 43
    .line 44
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0, v4}, Ls1/g;->e0(Lua/i6;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v6, "pm grant --user "

    .line 55
    .line 56
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget v2, v2, Lcom/yunpan/appmanage/util/k;->n:I

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-array v1, v1, [Ljava/lang/String;

    .line 87
    .line 88
    aput-object p0, v1, v0

    .line 89
    .line 90
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0, v4}, Ls1/g;->e0(Lua/i6;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lfa/h0;->c:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x4

    .line 30
    if-ge v1, v2, :cond_1

    .line 31
    .line 32
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-lez v1, :cond_1

    .line 59
    .line 60
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iput-object v1, p0, Lfa/h0;->c:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_1

    .line 93
    .line 94
    iget-object v0, p0, Lfa/h0;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    return-object v0

    .line 97
    :catch_0
    nop

    .line 98
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    const/16 v2, 0x13

    .line 101
    .line 102
    if-lt v1, v2, :cond_3

    .line 103
    .line 104
    sget-object v1, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 105
    .line 106
    invoke-static {}, Lv9/c;->a()Lv9/i;

    .line 107
    .line 108
    .line 109
    const/4 v1, 0x1

    .line 110
    new-array v1, v1, [Ljava/lang/String;

    .line 111
    .line 112
    const-string v2, "ls -l /sdcard"

    .line 113
    .line 114
    aput-object v2, v1, v0

    .line 115
    .line 116
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroidx/room/s;->k()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v1}, Landroidx/room/s;->q()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_3

    .line 137
    .line 138
    const-string v1, "storage/"

    .line 139
    .line 140
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_3

    .line 145
    .line 146
    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    iput-object v1, p0, Lfa/h0;->c:Ljava/lang/String;

    .line 155
    .line 156
    const-string v2, "]"

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_2

    .line 163
    .line 164
    iget-object v1, p0, Lfa/h0;->c:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iput-object v0, p0, Lfa/h0;->c:Ljava/lang/String;

    .line 175
    .line 176
    :cond_2
    iget-object v0, p0, Lfa/h0;->c:Ljava/lang/String;

    .line 177
    .line 178
    const-string v1, "/"

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-nez v0, :cond_3

    .line 185
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lfa/h0;->c:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iput-object v0, p0, Lfa/h0;->c:Ljava/lang/String;

    .line 201
    .line 202
    :cond_3
    iget-object v0, p0, Lfa/h0;->c:Ljava/lang/String;

    .line 203
    .line 204
    if-nez v0, :cond_5

    .line 205
    .line 206
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    const-string v1, "mounted"

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_4

    .line 217
    .line 218
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iput-object v0, p0, Lfa/h0;->c:Ljava/lang/String;

    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_4
    const-string v0, ""

    .line 230
    .line 231
    iput-object v0, p0, Lfa/h0;->c:Ljava/lang/String;

    .line 232
    .line 233
    :cond_5
    :goto_0
    iget-object v0, p0, Lfa/h0;->c:Ljava/lang/String;

    .line 234
    .line 235
    return-object v0
.end method

.method public final e()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lfa/a;->a:Lfa/b;

    .line 4
    .line 5
    const-wide/16 v3, 0x32

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    :try_start_0
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 9
    .line 10
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 11
    .line 12
    invoke-static {}, Lif/a;->T()I

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    iput v7, v6, Lcom/yunpan/appmanage/util/k;->n:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    const-string v8, "/data/media/"

    .line 19
    .line 20
    if-lez v7, :cond_0

    .line 21
    .line 22
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v9, v6, Lcom/yunpan/appmanage/util/k;->n:I

    .line 28
    .line 29
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    iput-object v7, v6, Lcom/yunpan/appmanage/util/k;->o:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v6

    .line 40
    goto/16 :goto_9

    .line 41
    .line 42
    :cond_0
    :goto_0
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 43
    .line 44
    iget v7, v6, Lcom/yunpan/appmanage/util/w;->u:I

    .line 45
    .line 46
    const/4 v9, -0x1

    .line 47
    if-ne v7, v9, :cond_4

    .line 48
    .line 49
    new-array v7, v1, [Ljava/lang/String;

    .line 50
    .line 51
    const-string v9, "stat -c \'%n\' \'/mnt/\'*"

    .line 52
    .line 53
    aput-object v9, v7, v0

    .line 54
    .line 55
    invoke-static {v7}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v7}, Lv9/e;->l0()Landroidx/room/s;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    new-instance v9, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7}, Landroidx/room/s;->k()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7}, Landroidx/room/s;->j()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    const-string v10, "invalid option"

    .line 91
    .line 92
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    const-string v11, "mReadDirMode"

    .line 97
    .line 98
    if-nez v10, :cond_3

    .line 99
    .line 100
    :try_start_2
    const-string v10, "nut found"

    .line 101
    .line 102
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v10

    .line 106
    if-nez v10, :cond_3

    .line 107
    .line 108
    const-string v10, "/"

    .line 109
    .line 110
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-nez v9, :cond_1

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_1
    invoke-virtual {v7}, Landroidx/room/s;->k()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    const/4 v9, 0x5

    .line 126
    if-le v7, v9, :cond_2

    .line 127
    .line 128
    const/4 v7, 0x1

    .line 129
    goto :goto_1

    .line 130
    :cond_2
    const/4 v7, 0x0

    .line 131
    :goto_1
    iput v7, v6, Lcom/yunpan/appmanage/util/w;->u:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    .line 133
    :try_start_3
    iget-object v9, v6, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 134
    .line 135
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {v9, v11, v7}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 140
    .line 141
    .line 142
    :catch_1
    :try_start_4
    invoke-virtual {v6}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_3
    :goto_2
    iput v0, v6, Lcom/yunpan/appmanage/util/w;->u:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 147
    .line 148
    :try_start_5
    iget-object v7, v6, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 149
    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    invoke-virtual {v7, v11, v9}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 155
    .line 156
    .line 157
    :catch_2
    :try_start_6
    invoke-virtual {v6}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 158
    .line 159
    .line 160
    :cond_4
    :goto_3
    invoke-virtual {v2}, Lfa/b;->g()V

    .line 161
    .line 162
    .line 163
    new-array v7, v1, [Ljava/lang/String;

    .line 164
    .line 165
    const-string v9, "setprop persist.sv.enable_adb_install 1"

    .line 166
    .line 167
    aput-object v9, v7, v0

    .line 168
    .line 169
    invoke-static {v7}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-virtual {v7}, Lv9/e;->l0()Landroidx/room/s;

    .line 174
    .line 175
    .line 176
    iget-boolean v6, v6, Lcom/yunpan/appmanage/util/w;->K:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 177
    .line 178
    if-eqz v6, :cond_6

    .line 179
    .line 180
    :try_start_7
    new-array v6, v1, [Ljava/lang/String;

    .line 181
    .line 182
    const-string v7, "getprop sys.jsbd.apk_verify"

    .line 183
    .line 184
    aput-object v7, v6, v0

    .line 185
    .line 186
    invoke-static {v6}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-virtual {v6}, Lv9/e;->l0()Landroidx/room/s;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v6}, Landroidx/room/s;->k()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    check-cast v6, Ljava/lang/String;

    .line 203
    .line 204
    const-string v7, "1"

    .line 205
    .line 206
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eqz v6, :cond_5

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_5
    new-instance v6, Ljava/lang/Exception;

    .line 214
    .line 215
    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    .line 216
    .line 217
    .line 218
    throw v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 219
    :catch_3
    :try_start_8
    new-array v6, v1, [Ljava/lang/String;

    .line 220
    .line 221
    const-string v7, "setprop sys.jsbd.apk_verify 1"

    .line 222
    .line 223
    aput-object v7, v6, v0

    .line 224
    .line 225
    invoke-static {v6}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {v6, v5}, Ls1/g;->e0(Lua/i6;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 230
    .line 231
    .line 232
    :cond_6
    :goto_4
    :try_start_9
    new-array v6, v1, [Ljava/lang/String;

    .line 233
    .line 234
    const-string v7, "getprop | grep vecentek"

    .line 235
    .line 236
    aput-object v7, v6, v0

    .line 237
    .line 238
    invoke-static {v6}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v6}, Lv9/e;->l0()Landroidx/room/s;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v6}, Landroidx/room/s;->k()Ljava/util/List;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 251
    .line 252
    .line 253
    move-result v6

    .line 254
    if-nez v6, :cond_7

    .line 255
    .line 256
    new-array v6, v1, [Ljava/lang/String;

    .line 257
    .line 258
    const-string v7, "setprop vecentek.model 1"

    .line 259
    .line 260
    aput-object v7, v6, v0

    .line 261
    .line 262
    invoke-static {v6}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-virtual {v6, v5}, Ls1/g;->e0(Lua/i6;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 267
    .line 268
    .line 269
    :catch_4
    :cond_7
    :try_start_a
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 270
    .line 271
    iget-boolean v7, v6, Lcom/yunpan/appmanage/util/w;->a0:Z

    .line 272
    .line 273
    if-nez v7, :cond_13

    .line 274
    .line 275
    iget-object v6, v6, Lcom/yunpan/appmanage/util/w;->b0:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 276
    .line 277
    :try_start_b
    new-instance v7, Ljava/io/File;

    .line 278
    .line 279
    const-string v9, "/system/bin/su"

    .line 280
    .line 281
    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    if-nez v7, :cond_a

    .line 289
    .line 290
    new-instance v7, Ljava/io/File;

    .line 291
    .line 292
    const-string v9, "/system/xbin/su"

    .line 293
    .line 294
    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 298
    .line 299
    .line 300
    move-result v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 301
    if-eqz v7, :cond_8

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :catch_5
    :cond_8
    :try_start_c
    new-instance v7, Ljava/io/File;

    .line 305
    .line 306
    const-string v9, "/system/bin/tclsu"

    .line 307
    .line 308
    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    if-nez v7, :cond_9

    .line 316
    .line 317
    new-instance v7, Ljava/io/File;

    .line 318
    .line 319
    const-string v9, "/system/xbin/tclsu"

    .line 320
    .line 321
    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 325
    .line 326
    .line 327
    move-result v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 328
    if-eqz v7, :cond_a

    .line 329
    .line 330
    :cond_9
    :try_start_d
    const-string v6, "tclsu"

    .line 331
    .line 332
    :catch_6
    :cond_a
    :goto_5
    const-string v7, "/system/bin/su_guanjia"

    .line 333
    .line 334
    invoke-static {v7}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result v7

    .line 338
    if-eqz v7, :cond_b

    .line 339
    .line 340
    const-string v6, "su_guanjia"

    .line 341
    .line 342
    :cond_b
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    const-string v9, "su"

    .line 347
    .line 348
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v7

    .line 352
    if-nez v7, :cond_c

    .line 353
    .line 354
    new-array v7, v1, [Ljava/lang/String;

    .line 355
    .line 356
    aput-object v6, v7, v0

    .line 357
    .line 358
    invoke-static {v7}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    invoke-virtual {v6}, Lv9/e;->l0()Landroidx/room/s;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    new-instance v7, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v6}, Landroidx/room/s;->k()Ljava/util/List;

    .line 372
    .line 373
    .line 374
    move-result-object v9

    .line 375
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v9

    .line 379
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v6}, Landroidx/room/s;->j()Ljava/util/List;

    .line 383
    .line 384
    .line 385
    move-result-object v9

    .line 386
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    invoke-virtual {v6}, Landroidx/room/s;->q()Z

    .line 394
    .line 395
    .line 396
    move-result v6

    .line 397
    if-eqz v6, :cond_c

    .line 398
    .line 399
    const-string v6, "> "

    .line 400
    .line 401
    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 402
    .line 403
    .line 404
    :cond_c
    invoke-static {}, Lfa/h0;->b()Z

    .line 405
    .line 406
    .line 407
    move-result v6

    .line 408
    if-nez v6, :cond_f

    .line 409
    .line 410
    invoke-virtual {v2}, Lfa/b;->f()Z

    .line 411
    .line 412
    .line 413
    move-result v7

    .line 414
    if-eqz v7, :cond_f

    .line 415
    .line 416
    iget-object v7, v2, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 417
    .line 418
    invoke-interface {v7}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getUid()I

    .line 419
    .line 420
    .line 421
    move-result v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 422
    if-nez v7, :cond_f

    .line 423
    .line 424
    :try_start_e
    sget-object v7, Lfa/g0;->a:Lfa/h0;

    .line 425
    .line 426
    invoke-virtual {v7}, Lfa/h0;->d()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v9

    .line 430
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 431
    .line 432
    .line 433
    move-result v9

    .line 434
    if-nez v9, :cond_e

    .line 435
    .line 436
    iget-object v9, v2, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 437
    .line 438
    invoke-virtual {v7}, Lfa/h0;->d()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v7

    .line 442
    invoke-interface {v9, v7}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canReadAndWrite(Ljava/lang/String;)Z

    .line 443
    .line 444
    .line 445
    move-result v7

    .line 446
    if-nez v7, :cond_e

    .line 447
    .line 448
    iget-object v7, v2, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 449
    .line 450
    new-instance v9, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 456
    .line 457
    iget v8, v8, Lcom/yunpan/appmanage/util/k;->n:I

    .line 458
    .line 459
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    invoke-interface {v7, v8}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canReadAndWrite(Ljava/lang/String;)Z

    .line 467
    .line 468
    .line 469
    move-result v7

    .line 470
    if-eqz v7, :cond_d

    .line 471
    .line 472
    goto :goto_6

    .line 473
    :cond_d
    new-instance v7, Ljava/lang/Exception;

    .line 474
    .line 475
    const-string v8, "\u6ca1\u6709\u6743\u9650\u8bfb\u53d6\u7528\u6237\u5185\u90e8\u5b58\u50a8"

    .line 476
    .line 477
    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    throw v7

    .line 481
    :catch_7
    move-exception v7

    .line 482
    goto :goto_7

    .line 483
    :cond_e
    :goto_6
    sget-object v7, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 484
    .line 485
    iget-object v7, v7, Lcom/yunpan/appmanage/base/AppStart;->a:Lv9/a;

    .line 486
    .line 487
    new-instance v8, Loa/g;

    .line 488
    .line 489
    iget-object v9, v2, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 490
    .line 491
    invoke-interface {v9}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getNewProcess()Loa/b;

    .line 492
    .line 493
    .line 494
    move-result-object v9

    .line 495
    invoke-direct {v8, v9}, Loa/g;-><init>(Loa/b;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v7, v8}, Lv9/a;->b(Ljava/lang/Process;)Lv9/i;

    .line 499
    .line 500
    .line 501
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 502
    .line 503
    .line 504
    invoke-static {}, Lfa/h0;->b()Z

    .line 505
    .line 506
    .line 507
    move-result v6

    .line 508
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 509
    .line 510
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    .line 512
    .line 513
    if-eqz v6, :cond_f

    .line 514
    .line 515
    iput-boolean v1, p0, Lfa/h0;->b:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 516
    .line 517
    goto :goto_8

    .line 518
    :goto_7
    :try_start_f
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 519
    .line 520
    .line 521
    :cond_f
    :goto_8
    if-eqz v6, :cond_12

    .line 522
    .line 523
    invoke-virtual {v2}, Lfa/b;->f()Z

    .line 524
    .line 525
    .line 526
    move-result v6

    .line 527
    if-eqz v6, :cond_10

    .line 528
    .line 529
    iget-object v6, v2, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 530
    .line 531
    invoke-interface {v6}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getUid()I

    .line 532
    .line 533
    .line 534
    move-result v6

    .line 535
    if-eqz v6, :cond_11

    .line 536
    .line 537
    :cond_10
    sget-object v6, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 538
    .line 539
    invoke-static {v6}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v6

    .line 543
    new-array v7, v1, [Ljava/lang/String;

    .line 544
    .line 545
    aput-object v6, v7, v0

    .line 546
    .line 547
    invoke-static {v7}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 548
    .line 549
    .line 550
    move-result-object v6

    .line 551
    invoke-virtual {v6, v5}, Ls1/g;->e0(Lua/i6;)V

    .line 552
    .line 553
    .line 554
    :cond_11
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 555
    .line 556
    iput-boolean v1, v6, Lcom/yunpan/appmanage/util/k;->h:Z

    .line 557
    .line 558
    iput-boolean v1, p0, Lfa/h0;->a:Z

    .line 559
    .line 560
    invoke-static {}, Lfa/h0;->a()V

    .line 561
    .line 562
    .line 563
    invoke-virtual {p0}, Lfa/h0;->g()V

    .line 564
    .line 565
    .line 566
    goto :goto_a

    .line 567
    :cond_12
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 568
    .line 569
    iget-boolean v6, v6, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 570
    .line 571
    if-eqz v6, :cond_14

    .line 572
    .line 573
    invoke-static {}, Lfa/h0;->a()V

    .line 574
    .line 575
    .line 576
    goto :goto_a

    .line 577
    :cond_13
    new-instance v6, Ljava/lang/Exception;

    .line 578
    .line 579
    const-string v7, "\u4e0d\u7528root\u6a21\u5f0f"

    .line 580
    .line 581
    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    throw v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 585
    :goto_9
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 586
    .line 587
    .line 588
    :cond_14
    :goto_a
    iget-boolean v6, p0, Lfa/h0;->a:Z

    .line 589
    .line 590
    if-eqz v6, :cond_15

    .line 591
    .line 592
    sget-object v6, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 593
    .line 594
    sget-object v6, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 595
    .line 596
    iget-boolean v6, v6, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 597
    .line 598
    if-nez v6, :cond_19

    .line 599
    .line 600
    :cond_15
    sget-object v6, Lfa/h;->a:Lfa/j;

    .line 601
    .line 602
    const-string v7, ""

    .line 603
    .line 604
    invoke-virtual {v6, v5}, Lfa/j;->h(Lua/h6;)V

    .line 605
    .line 606
    .line 607
    :try_start_10
    new-instance v5, Lgh/a;

    .line 608
    .line 609
    invoke-direct {v5}, Lgh/a;-><init>()V

    .line 610
    .line 611
    .line 612
    iput-object v5, p0, Lfa/h0;->e:Lgh/a;

    .line 613
    .line 614
    const/16 v6, 0x7d0

    .line 615
    .line 616
    iput v6, v5, Lch/d;->a:I

    .line 617
    .line 618
    const/16 v6, 0x17

    .line 619
    .line 620
    invoke-virtual {v5, v7, v6}, Lch/d;->c(Ljava/lang/String;I)V

    .line 621
    .line 622
    .line 623
    iget-object v5, p0, Lfa/h0;->e:Lgh/a;

    .line 624
    .line 625
    iget-object v6, v5, Lgh/a;->r:Ljava/io/BufferedInputStream;

    .line 626
    .line 627
    iget-object v5, v5, Lgh/a;->s:Lgh/c;

    .line 628
    .line 629
    const-string v7, "id\n"

    .line 630
    .line 631
    sget-object v8, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 632
    .line 633
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 634
    .line 635
    .line 636
    move-result-object v7

    .line 637
    invoke-virtual {v5, v7}, Lgh/c;->write([B)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v5}, Lgh/c;->flush()V

    .line 641
    .line 642
    .line 643
    const-wide/16 v7, 0x14d

    .line 644
    .line 645
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 646
    .line 647
    .line 648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 649
    .line 650
    .line 651
    move-result-wide v7

    .line 652
    iput-wide v7, p0, Lfa/h0;->f:J

    .line 653
    .line 654
    new-instance v7, Lfg/b;

    .line 655
    .line 656
    new-instance v8, La2/h;

    .line 657
    .line 658
    const/16 v9, 0x13

    .line 659
    .line 660
    invoke-direct {v8, v9, p0}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 661
    .line 662
    .line 663
    invoke-direct {v7, v8, v1}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 667
    .line 668
    .line 669
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 670
    .line 671
    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 672
    .line 673
    .line 674
    const/16 v8, 0x400

    .line 675
    .line 676
    new-array v8, v8, [B

    .line 677
    .line 678
    :goto_b
    iget-object v9, p0, Lfa/h0;->e:Lgh/a;

    .line 679
    .line 680
    invoke-virtual {v9}, Lch/d;->f()Z

    .line 681
    .line 682
    .line 683
    move-result v9

    .line 684
    if-eqz v9, :cond_16

    .line 685
    .line 686
    if-eqz v6, :cond_16

    .line 687
    .line 688
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    .line 689
    .line 690
    .line 691
    move-result v9
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 692
    if-lez v9, :cond_16

    .line 693
    .line 694
    :try_start_11
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    .line 695
    .line 696
    .line 697
    move-result v9
    :try_end_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 698
    goto :goto_c

    .line 699
    :catchall_0
    move-exception v0

    .line 700
    goto/16 :goto_e

    .line 701
    .line 702
    :catch_8
    nop

    .line 703
    goto/16 :goto_f

    .line 704
    .line 705
    :catch_9
    nop

    .line 706
    const/4 v9, 0x0

    .line 707
    :goto_c
    if-lez v9, :cond_16

    .line 708
    .line 709
    :try_start_12
    invoke-virtual {v7, v8, v0, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 710
    .line 711
    .line 712
    goto :goto_b

    .line 713
    :cond_16
    new-instance v0, Ljava/lang/String;

    .line 714
    .line 715
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 716
    .line 717
    .line 718
    move-result-object v6

    .line 719
    sget-object v8, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 720
    .line 721
    invoke-direct {v0, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 725
    .line 726
    .line 727
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 728
    .line 729
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 730
    .line 731
    .line 732
    const-string v6, "uid=0(root"

    .line 733
    .line 734
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 735
    .line 736
    .line 737
    move-result v0

    .line 738
    if-eqz v0, :cond_17

    .line 739
    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    .line 741
    .line 742
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    .line 744
    .line 745
    sget-object v6, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 746
    .line 747
    invoke-static {v6}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v6

    .line 751
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    const-string v6, "\n"

    .line 755
    .line 756
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    invoke-virtual {v5, v0}, Lgh/c;->write([B)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v5}, Lgh/c;->flush()V

    .line 771
    .line 772
    .line 773
    const-wide/16 v5, 0x3e8

    .line 774
    .line 775
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v2}, Lfa/b;->f()Z

    .line 779
    .line 780
    .line 781
    move-result v0

    .line 782
    if-eqz v0, :cond_17

    .line 783
    .line 784
    iget-object v0, v2, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 785
    .line 786
    invoke-interface {v0}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getUid()I

    .line 787
    .line 788
    .line 789
    move-result v0

    .line 790
    if-nez v0, :cond_17

    .line 791
    .line 792
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 793
    .line 794
    iget-object v0, v0, Lcom/yunpan/appmanage/base/AppStart;->a:Lv9/a;

    .line 795
    .line 796
    new-instance v5, Loa/g;

    .line 797
    .line 798
    iget-object v2, v2, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 799
    .line 800
    invoke-interface {v2}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getNewProcess()Loa/b;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    invoke-direct {v5, v2}, Loa/g;-><init>(Loa/b;)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v0, v5}, Lv9/a;->b(Ljava/lang/Process;)Lv9/i;

    .line 808
    .line 809
    .line 810
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 811
    .line 812
    .line 813
    invoke-static {}, Lfa/h0;->b()Z

    .line 814
    .line 815
    .line 816
    move-result v0

    .line 817
    if-eqz v0, :cond_17

    .line 818
    .line 819
    iput-boolean v1, p0, Lfa/h0;->a:Z

    .line 820
    .line 821
    iput-boolean v1, p0, Lfa/h0;->b:Z

    .line 822
    .line 823
    invoke-static {}, Lfa/h0;->a()V

    .line 824
    .line 825
    .line 826
    invoke-virtual {p0}, Lfa/h0;->g()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 827
    .line 828
    .line 829
    :cond_17
    iget-object v0, p0, Lfa/h0;->e:Lgh/a;

    .line 830
    .line 831
    if-eqz v0, :cond_19

    .line 832
    .line 833
    :goto_d
    :try_start_13
    invoke-virtual {v0}, Lgh/a;->d()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    .line 834
    .line 835
    .line 836
    goto :goto_10

    .line 837
    :goto_e
    iget-object v1, p0, Lfa/h0;->e:Lgh/a;

    .line 838
    .line 839
    if-eqz v1, :cond_18

    .line 840
    .line 841
    :try_start_14
    invoke-virtual {v1}, Lgh/a;->d()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    .line 842
    .line 843
    .line 844
    :catch_a
    :cond_18
    throw v0

    .line 845
    :goto_f
    iget-object v0, p0, Lfa/h0;->e:Lgh/a;

    .line 846
    .line 847
    if-eqz v0, :cond_19

    .line 848
    .line 849
    goto :goto_d

    .line 850
    :catch_b
    :cond_19
    :goto_10
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->a0:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget-boolean v0, p0, Lfa/h0;->a:Z

    .line 10
    .line 11
    return v0
.end method

.method public final g()V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const-string v2, "setenforce 0"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 14
    .line 15
    .line 16
    new-array v1, v0, [Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "setprop ro.secure 0"

    .line 19
    .line 20
    aput-object v2, v1, v3

    .line 21
    .line 22
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 27
    .line 28
    .line 29
    new-array v1, v0, [Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "mount"

    .line 32
    .line 33
    aput-object v2, v1, v3

    .line 34
    .line 35
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroidx/room/s;->k()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, ""

    .line 52
    .line 53
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const-string v5, " /"

    .line 58
    .line 59
    const-string v6, " /oem"

    .line 60
    .line 61
    const-string v7, " /system"

    .line 62
    .line 63
    if-eqz v4, :cond_7

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Ljava/lang/String;

    .line 70
    .line 71
    const-string v8, " /system "

    .line 72
    .line 73
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-eqz v8, :cond_1

    .line 78
    .line 79
    move-object v5, v7

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const-string v7, " /vendor "

    .line 82
    .line 83
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_2

    .line 88
    .line 89
    const-string v5, " /vendor"

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    const-string v7, " /oem "

    .line 93
    .line 94
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_3

    .line 99
    .line 100
    move-object v5, v6

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const-string v6, " / "

    .line 103
    .line 104
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_0

    .line 109
    .line 110
    :goto_1
    const-string v6, "  "

    .line 111
    .line 112
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    const-string v8, " "

    .line 117
    .line 118
    if-eqz v7, :cond_4

    .line 119
    .line 120
    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    goto :goto_1

    .line 125
    :cond_4
    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    array-length v7, v6

    .line 130
    const/4 v9, 0x4

    .line 131
    if-ge v7, v9, :cond_5

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    const-string v7, " (ro,"

    .line 135
    .line 136
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    const-string v10, "mount -o rw,remount -t "

    .line 141
    .line 142
    if-eqz v7, :cond_6

    .line 143
    .line 144
    aget-object v2, v6, v9

    .line 145
    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    aget-object v7, v6, v9

    .line 152
    .line 153
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    aget-object v6, v6, v3

    .line 160
    .line 161
    invoke-static {v6, v5, v4}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    new-array v5, v0, [Ljava/lang/String;

    .line 166
    .line 167
    aput-object v4, v5, v3

    .line 168
    .line 169
    invoke-static {v5}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_6
    const-string v7, " ro,"

    .line 178
    .line 179
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eqz v4, :cond_0

    .line 184
    .line 185
    const/4 v2, 0x2

    .line 186
    aget-object v4, v6, v2

    .line 187
    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    aget-object v2, v6, v2

    .line 194
    .line 195
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    aget-object v2, v6, v3

    .line 202
    .line 203
    invoke-static {v2, v5, v7}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    new-array v5, v0, [Ljava/lang/String;

    .line 208
    .line 209
    aput-object v2, v5, v3

    .line 210
    .line 211
    invoke-static {v5}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 216
    .line 217
    .line 218
    move-object v2, v4

    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_7
    const-string v1, "touch /system/app/111222"

    .line 222
    .line 223
    new-array v4, v0, [Ljava/lang/String;

    .line 224
    .line 225
    aput-object v1, v4, v3

    .line 226
    .line 227
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v4}, Lv9/e;->l0()Landroidx/room/s;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    iget v8, v4, Landroidx/room/s;->b:I

    .line 236
    .line 237
    if-eqz v8, :cond_9

    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 240
    .line 241
    .line 242
    move-result v4

    .line 243
    if-eqz v4, :cond_8

    .line 244
    .line 245
    new-array v2, v0, [Ljava/lang/String;

    .line 246
    .line 247
    const-string v4, "mount -o remount,rw /oem"

    .line 248
    .line 249
    aput-object v4, v2, v3

    .line 250
    .line 251
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 256
    .line 257
    .line 258
    new-array v2, v0, [Ljava/lang/String;

    .line 259
    .line 260
    const-string v4, "mount -o remount,rw /system"

    .line 261
    .line 262
    aput-object v4, v2, v3

    .line 263
    .line 264
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 269
    .line 270
    .line 271
    new-array v2, v0, [Ljava/lang/String;

    .line 272
    .line 273
    const-string v4, "mount -o remount,rw /"

    .line 274
    .line 275
    aput-object v4, v2, v3

    .line 276
    .line 277
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_8
    const-string v4, "mount -o remount,rw -t "

    .line 286
    .line 287
    invoke-static {v4, v2, v6}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v6

    .line 291
    new-array v8, v0, [Ljava/lang/String;

    .line 292
    .line 293
    aput-object v6, v8, v3

    .line 294
    .line 295
    invoke-static {v8}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    invoke-virtual {v6}, Lv9/e;->l0()Landroidx/room/s;

    .line 300
    .line 301
    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    new-array v7, v0, [Ljava/lang/String;

    .line 318
    .line 319
    aput-object v6, v7, v3

    .line 320
    .line 321
    invoke-static {v7}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    invoke-virtual {v6}, Lv9/e;->l0()Landroidx/room/s;

    .line 326
    .line 327
    .line 328
    new-instance v6, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    new-array v4, v0, [Ljava/lang/String;

    .line 344
    .line 345
    aput-object v2, v4, v3

    .line 346
    .line 347
    invoke-static {v4}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 352
    .line 353
    .line 354
    :goto_2
    new-array v2, v0, [Ljava/lang/String;

    .line 355
    .line 356
    aput-object v1, v2, v3

    .line 357
    .line 358
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    :cond_9
    iget v1, v4, Landroidx/room/s;->b:I

    .line 367
    .line 368
    if-nez v1, :cond_a

    .line 369
    .line 370
    iput-boolean v0, p0, Lfa/h0;->d:Z

    .line 371
    .line 372
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 373
    .line 374
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 375
    .line 376
    iput-boolean v0, v1, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 377
    .line 378
    new-array v1, v0, [Ljava/lang/String;

    .line 379
    .line 380
    const-string v2, "rm -rf /system/app/111222"

    .line 381
    .line 382
    aput-object v2, v1, v3

    .line 383
    .line 384
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 389
    .line 390
    .line 391
    :cond_a
    new-array v1, v0, [Ljava/lang/String;

    .line 392
    .line 393
    const-string v2, "touch /system/bin/111222"

    .line 394
    .line 395
    aput-object v2, v1, v3

    .line 396
    .line 397
    invoke-static {v1}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {v1}, Lv9/e;->l0()Landroidx/room/s;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    iget v1, v1, Landroidx/room/s;->b:I

    .line 406
    .line 407
    if-nez v1, :cond_b

    .line 408
    .line 409
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 410
    .line 411
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 412
    .line 413
    iput-boolean v0, v1, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 414
    .line 415
    new-array v0, v0, [Ljava/lang/String;

    .line 416
    .line 417
    const-string v1, "rm -rf /system/bin/111222"

    .line 418
    .line 419
    aput-object v1, v0, v3

    .line 420
    .line 421
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 426
    .line 427
    .line 428
    :cond_b
    return-void
.end method

.method public final h()Z
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    :try_start_0
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 10
    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 14
    .line 15
    const-class v4, Lcom/yunpan/appmanage/magica/MagicaService;

    .line 16
    .line 17
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    .line 19
    .line 20
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 21
    .line 22
    invoke-static {v3}, Landroidx/emoji2/text/b;->q(Lcom/yunpan/appmanage/base/AppStart;)Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iget-object v4, p0, Lfa/h0;->g:Lfa/f0;

    .line 27
    .line 28
    invoke-static {v0, v1, v3, v4}, La2/c;->q(Lcom/yunpan/appmanage/base/AppStart;Landroid/content/Intent;Ljava/util/concurrent/Executor;Lfa/f0;)V

    .line 29
    .line 30
    .line 31
    const-wide/16 v0, 0x3e8

    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lfa/h0;->b()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lfa/h0;->a:Z

    .line 44
    .line 45
    invoke-static {}, Lfa/h0;->a()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lfa/h0;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    return v0

    .line 52
    :catch_0
    :cond_1
    return v2
.end method
