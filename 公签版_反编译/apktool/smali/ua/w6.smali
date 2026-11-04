.class public final synthetic Lua/w6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lc6/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityStudy;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/w6;->a:I

    iput-object p1, p0, Lua/w6;->b:Lcom/yunpan/appmanage/ui/ActivityStudy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lmc/b;)V
    .locals 4

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/w6;->b:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, " android.permission.WRITE_SECURE_SETTINGS"

    .line 9
    .line 10
    const-string v2, "pm grant "

    .line 11
    .line 12
    :try_start_0
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, La2/w0;->O()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-wide/16 v1, 0x7d0

    .line 45
    .line 46
    invoke-static {v1, v2, v0}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget v1, v0, Lfa/a0;->a:I

    .line 51
    .line 52
    if-nez v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    .line 59
    .line 60
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    .line 71
    .line 72
    const-string v1, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    return-void
.end method


# virtual methods
.method public g(Lmc/b;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "ls -ls /data/local/tmp"

    .line 6
    .line 7
    const-string v3, "\u6b63\u5e38"

    .line 8
    .line 9
    const-string v4, "\u5f02\u5e38"

    .line 10
    .line 11
    const-string v5, "\u7528\u6237\uff1a"

    .line 12
    .line 13
    const-string v6, "   "

    .line 14
    .line 15
    const-string v7, "\u6743\u9650\uff1a"

    .line 16
    .line 17
    const-string v8, "ls -ls "

    .line 18
    .line 19
    const/4 v10, 0x1

    .line 20
    const-string v11, "\u8bf7\u5148\u6fc0\u6d3bjni\u670d\u52a1"

    .line 21
    .line 22
    const-string v14, "\n"

    .line 23
    .line 24
    const-string v15, ""

    .line 25
    .line 26
    const/4 v12, 0x0

    .line 27
    iget-object v13, v1, Lua/w6;->b:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 28
    .line 29
    iget v9, v1, Lua/w6;->a:I

    .line 30
    .line 31
    packed-switch v9, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    sget v0, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 35
    .line 36
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    :try_start_0
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 40
    .line 41
    invoke-virtual {v0}, Lfa/b;->f()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Lfa/b;->e()Landroid/content/pm/IPackageManager;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v3, v13, Lda/g;->A:Lda/g;

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const-string v4, "android.permission.WRITE_SECURE_SETTINGS"

    .line 58
    .line 59
    invoke-interface {v0, v3, v4, v12}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    .line 69
    .line 70
    invoke-direct {v0, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-void

    .line 78
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lua/w6;->a(Lmc/b;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :pswitch_1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 83
    .line 84
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    const-string v0, "  "

    .line 88
    .line 89
    :try_start_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    .line 91
    const/16 v4, 0x19

    .line 92
    .line 93
    if-ge v3, v4, :cond_1

    .line 94
    .line 95
    const-string v0, "\u4e0d\u9002\u5408\u4f4e\u7248\u672c\u7cfb\u7edf"

    .line 96
    .line 97
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_6

    .line 104
    .line 105
    :catch_1
    move-exception v0

    .line 106
    goto/16 :goto_4

    .line 107
    .line 108
    :cond_1
    iget-object v3, v13, Lda/g;->A:Lda/g;

    .line 109
    .line 110
    invoke-static {v3}, Lqf/c;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    if-eqz v3, :cond_5

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_2

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :cond_2
    invoke-static {v3}, Ls1/g;->u(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_3

    .line 132
    .line 133
    const-string v0, "\u672a\u627e\u5230\u5feb\u6377\u65b9\u5f0f"

    .line 134
    .line 135
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 139
    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    .line 143
    .line 144
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-eqz v5, :cond_4

    .line 156
    .line 157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    check-cast v5, Lcom/yunpan/appmanage/bean/ShortcutInfo;

    .line 162
    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v5}, Lcom/yunpan/appmanage/bean/ShortcutInfo;->getId()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5}, Lcom/yunpan/appmanage/bean/ShortcutInfo;->getLabel()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Lcom/yunpan/appmanage/bean/ShortcutInfo;->getIntent()Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_5
    :goto_3
    const-string v0, "\u672a\u627e\u5230\u9ed8\u8ba4\u684c\u9762"

    .line 219
    .line 220
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    .line 225
    .line 226
    goto :goto_6

    .line 227
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-static {v0, v3}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 233
    .line 234
    .line 235
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 236
    .line 237
    .line 238
    :goto_6
    return-void

    .line 239
    :pswitch_2
    sget v0, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 240
    .line 241
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    :try_start_2
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 245
    .line 246
    invoke-virtual {v0}, Lfa/b;->f()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_6

    .line 251
    .line 252
    const-string v0, "\u5df2\u6fc0\u6d3b\uff0c\u65e0\u9700\u518d\u6b21\u6fc0\u6d3b"

    .line 253
    .line 254
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 258
    .line 259
    .line 260
    goto :goto_8

    .line 261
    :catch_2
    move-exception v0

    .line 262
    goto :goto_7

    .line 263
    :cond_6
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 264
    .line 265
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 266
    .line 267
    invoke-static {v3}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    const-wide/16 v4, 0xbb8

    .line 275
    .line 276
    invoke-static {v4, v5, v3}, La2/w0;->n(JLjava/lang/String;)Lfa/a0;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    iget-object v0, v13, Lda/g;->A:Lda/g;

    .line 288
    .line 289
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 290
    .line 291
    invoke-static {v3}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-static {v0, v3}, Lif/a;->s(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 299
    .line 300
    .line 301
    goto :goto_8

    .line 302
    :goto_7
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 303
    .line 304
    .line 305
    :goto_8
    return-void

    .line 306
    :pswitch_3
    sget v0, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 307
    .line 308
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    :try_start_3
    sget-object v0, Lfa/a;->a:Lfa/b;

    .line 312
    .line 313
    invoke-virtual {v0}, Lfa/b;->f()Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-eqz v3, :cond_7

    .line 318
    .line 319
    invoke-virtual {v0}, Lfa/b;->c()Lcom/android/internal/app/IAppOpsService;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 324
    .line 325
    .line 326
    move-result v3

    .line 327
    iget-object v4, v13, Lda/g;->A:Lda/g;

    .line 328
    .line 329
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    const/16 v5, 0x18

    .line 334
    .line 335
    invoke-interface {v0, v5, v3, v4, v12}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 339
    .line 340
    .line 341
    goto :goto_a

    .line 342
    :catch_3
    move-exception v0

    .line 343
    goto :goto_9

    .line 344
    :cond_7
    new-instance v0, Ljava/lang/Exception;

    .line 345
    .line 346
    invoke-direct {v0, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 350
    :goto_9
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 351
    .line 352
    .line 353
    :goto_a
    return-void

    .line 354
    :pswitch_4
    sget v0, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 355
    .line 356
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    const-class v0, Lcom/yunpan/appmanage/service/AccService;

    .line 360
    .line 361
    const-string v3, "dumpsys accessibility | grep -c \""

    .line 362
    .line 363
    const-string v4, "\nAccService\uff1a"

    .line 364
    .line 365
    const-string v5, "AccService\uff1a"

    .line 366
    .line 367
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    iget-object v5, v13, Lda/g;->A:Lda/g;

    .line 373
    .line 374
    invoke-static {v5, v0}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v0, "\""

    .line 397
    .line 398
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    new-array v3, v10, [Ljava/lang/String;

    .line 406
    .line 407
    aput-object v0, v3, v12

    .line 408
    .line 409
    invoke-static {v3}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-virtual {v0}, Landroidx/room/s;->k()Ljava/util/List;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    const-string v3, "1"

    .line 430
    .line 431
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 443
    .line 444
    .line 445
    :catch_4
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 446
    .line 447
    .line 448
    return-void

    .line 449
    :pswitch_5
    sget v0, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 450
    .line 451
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    .line 453
    .line 454
    const-string v0, "\u641c\u7d22\u8d85\u65f6"

    .line 455
    .line 456
    const-string v3, "adb_enabled"

    .line 457
    .line 458
    const-string v4, "adb_wifi_enabled"

    .line 459
    .line 460
    const-string v5, "\u627e\u5230\u7aef\u53e3\uff1a"

    .line 461
    .line 462
    const-string v6, "adb_wifi_enabled\uff1a"

    .line 463
    .line 464
    :try_start_5
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 465
    .line 466
    const/4 v8, -0x1

    .line 467
    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 468
    .line 469
    .line 470
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    .line 471
    .line 472
    const/4 v9, 0x0

    .line 473
    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 474
    .line 475
    .line 476
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    .line 477
    .line 478
    invoke-direct {v9, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 479
    .line 480
    .line 481
    new-instance v11, Lio/github/muntashirakon/adb/android/AdbMdns;

    .line 482
    .line 483
    iget-object v14, v13, Lda/g;->A:Lda/g;

    .line 484
    .line 485
    const-string v15, "adb"

    .line 486
    .line 487
    new-instance v10, Lio/github/muntashirakon/adb/a;

    .line 488
    .line 489
    const/4 v12, 0x3

    .line 490
    invoke-direct {v10, v8, v7, v9, v12}, Lio/github/muntashirakon/adb/a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;I)V

    .line 491
    .line 492
    .line 493
    invoke-direct {v11, v14, v15, v10}, Lio/github/muntashirakon/adb/android/AdbMdns;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v11}, Lio/github/muntashirakon/adb/android/AdbMdns;->start()V

    .line 497
    .line 498
    .line 499
    new-instance v10, Lio/github/muntashirakon/adb/android/AdbMdns;

    .line 500
    .line 501
    iget-object v12, v13, Lda/g;->A:Lda/g;

    .line 502
    .line 503
    const-string v13, "adb-tls-connect"

    .line 504
    .line 505
    new-instance v14, Lio/github/muntashirakon/adb/a;

    .line 506
    .line 507
    const/4 v15, 0x4

    .line 508
    invoke-direct {v14, v8, v7, v9, v15}, Lio/github/muntashirakon/adb/a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;I)V

    .line 509
    .line 510
    .line 511
    invoke-direct {v10, v12, v13, v14}, Lio/github/muntashirakon/adb/android/AdbMdns;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v10}, Lio/github/muntashirakon/adb/android/AdbMdns;->start()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 515
    .line 516
    .line 517
    :try_start_6
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 518
    .line 519
    const-wide/16 v12, 0x7d0

    .line 520
    .line 521
    invoke-virtual {v9, v12, v13, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 522
    .line 523
    .line 524
    move-result v8

    .line 525
    if-nez v8, :cond_a

    .line 526
    .line 527
    sget-object v5, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 528
    .line 529
    iget-boolean v5, v5, Lcom/yunpan/appmanage/util/w;->D:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 530
    .line 531
    if-eqz v5, :cond_9

    .line 532
    .line 533
    :try_start_7
    sget-object v5, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 534
    .line 535
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    const/4 v7, 0x0

    .line 540
    invoke-static {v5, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 541
    .line 542
    .line 543
    const-wide/16 v8, 0xc8

    .line 544
    .line 545
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 546
    .line 547
    .line 548
    sget-object v5, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 549
    .line 550
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 551
    .line 552
    .line 553
    move-result-object v5

    .line 554
    invoke-static {v5, v3, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 555
    .line 556
    .line 557
    const-wide/16 v7, 0x1f4

    .line 558
    .line 559
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 560
    .line 561
    .line 562
    sget-object v5, Lwa/t;->a:Lwa/u;

    .line 563
    .line 564
    iget-boolean v5, v5, Lwa/u;->v:Z

    .line 565
    .line 566
    if-eqz v5, :cond_8

    .line 567
    .line 568
    new-instance v5, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    sget-object v6, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 574
    .line 575
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 576
    .line 577
    .line 578
    move-result-object v6

    .line 579
    invoke-static {v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 580
    .line 581
    .line 582
    move-result v6

    .line 583
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v5

    .line 590
    invoke-static {v5}, Lwa/w;->b(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    goto :goto_b

    .line 594
    :catchall_0
    move-exception v0

    .line 595
    goto :goto_c

    .line 596
    :cond_8
    :goto_b
    sget-object v5, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 597
    .line 598
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 599
    .line 600
    .line 601
    move-result-object v5

    .line 602
    const/4 v6, 0x1

    .line 603
    invoke-static {v5, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 604
    .line 605
    .line 606
    const-wide/16 v7, 0x14d

    .line 607
    .line 608
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 609
    .line 610
    .line 611
    sget-object v3, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 612
    .line 613
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 618
    .line 619
    .line 620
    const-wide/16 v3, 0x3e8

    .line 621
    .line 622
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 623
    .line 624
    .line 625
    :catch_5
    :cond_9
    :try_start_8
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    new-instance v3, Ljava/lang/Exception;

    .line 629
    .line 630
    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    throw v3

    .line 634
    :cond_a
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 635
    .line 636
    .line 637
    move-result v0

    .line 638
    if-lez v0, :cond_b

    .line 639
    .line 640
    new-instance v3, Ljava/lang/StringBuilder;

    .line 641
    .line 642
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 653
    .line 654
    .line 655
    :cond_b
    :try_start_9
    invoke-virtual {v11}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v10}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 659
    .line 660
    .line 661
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 662
    .line 663
    .line 664
    goto :goto_e

    .line 665
    :catch_6
    move-exception v0

    .line 666
    goto :goto_d

    .line 667
    :goto_c
    invoke-virtual {v11}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v10}, Lio/github/muntashirakon/adb/android/AdbMdns;->stop()V

    .line 671
    .line 672
    .line 673
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 674
    :goto_d
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 675
    .line 676
    .line 677
    :goto_e
    return-void

    .line 678
    :pswitch_6
    sget v0, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 679
    .line 680
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 681
    .line 682
    .line 683
    :try_start_a
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 684
    .line 685
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 686
    .line 687
    .line 688
    invoke-static {}, La2/w0;->O()Z

    .line 689
    .line 690
    .line 691
    move-result v0

    .line 692
    if-eqz v0, :cond_e

    .line 693
    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .line 698
    .line 699
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 700
    .line 701
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 702
    .line 703
    iget-boolean v3, v3, Lcom/yunpan/appmanage/util/k;->g:Z

    .line 704
    .line 705
    if-eqz v3, :cond_c

    .line 706
    .line 707
    const-string v15, "cmd "

    .line 708
    .line 709
    goto :goto_f

    .line 710
    :catch_7
    move-exception v0

    .line 711
    goto :goto_10

    .line 712
    :cond_c
    :goto_f
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    const-string v3, "appops set "

    .line 716
    .line 717
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    iget-object v3, v13, Lda/g;->A:Lda/g;

    .line 721
    .line 722
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v3

    .line 726
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    const-string v3, " SYSTEM_ALERT_WINDOW allow"

    .line 730
    .line 731
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    const-wide/16 v3, 0x7d0

    .line 739
    .line 740
    invoke-static {v3, v4, v0}, La2/w0;->q(JLjava/lang/String;)Lfa/a0;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    iget v3, v0, Lfa/a0;->a:I

    .line 745
    .line 746
    if-nez v3, :cond_d

    .line 747
    .line 748
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 749
    .line 750
    .line 751
    goto :goto_11

    .line 752
    :cond_d
    new-instance v3, Ljava/lang/Exception;

    .line 753
    .line 754
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    throw v3

    .line 762
    :cond_e
    new-instance v0, Ljava/lang/Exception;

    .line 763
    .line 764
    const-string v3, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 765
    .line 766
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 770
    :goto_10
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 771
    .line 772
    .line 773
    :goto_11
    return-void

    .line 774
    :pswitch_7
    sget v9, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 775
    .line 776
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 777
    .line 778
    .line 779
    const-string v9, "\u5916\u90e8\u6570\u636e\uff1a"

    .line 780
    .line 781
    :try_start_b
    sget-object v10, Lfa/h;->a:Lfa/j;

    .line 782
    .line 783
    invoke-virtual {v10}, Lfa/j;->i()Z

    .line 784
    .line 785
    .line 786
    move-result v10

    .line 787
    if-nez v10, :cond_10

    .line 788
    .line 789
    sget-object v10, Lfa/l;->a:Lfa/m;

    .line 790
    .line 791
    invoke-virtual {v10}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 792
    .line 793
    .line 794
    move-result v10

    .line 795
    if-eqz v10, :cond_f

    .line 796
    .line 797
    goto :goto_12

    .line 798
    :cond_f
    new-instance v0, Ljava/lang/Exception;

    .line 799
    .line 800
    const-string v3, "adb\u670d\u52a1\u672a\u8fde\u63a5"

    .line 801
    .line 802
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    throw v0

    .line 806
    :catch_8
    move-exception v0

    .line 807
    goto/16 :goto_1a

    .line 808
    .line 809
    :cond_10
    :goto_12
    new-instance v10, Ljava/lang/StringBuffer;

    .line 810
    .line 811
    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 812
    .line 813
    .line 814
    :try_start_c
    sget-object v11, Lfa/b0;->a:La2/w0;

    .line 815
    .line 816
    const-string v12, "id"

    .line 817
    .line 818
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 819
    .line 820
    .line 821
    invoke-static {v12}, La2/w0;->k(Ljava/lang/String;)Lfa/a0;

    .line 822
    .line 823
    .line 824
    move-result-object v11

    .line 825
    const-string v12, "\u672a\u77e5"
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 826
    .line 827
    :try_start_d
    invoke-virtual {v11}, Lfa/a0;->a()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    .line 831
    move-object/from16 v16, v3

    .line 832
    .line 833
    :try_start_e
    invoke-virtual {v11}, Lfa/a0;->a()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 837
    move-object/from16 v17, v4

    .line 838
    .line 839
    :try_start_f
    const-string v4, "uid="

    .line 840
    .line 841
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 842
    .line 843
    .line 844
    move-result v3

    .line 845
    const/4 v4, 0x4

    .line 846
    add-int/2addr v3, v4

    .line 847
    invoke-virtual {v11}, Lfa/a0;->a()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v4

    .line 851
    const-string v11, "("

    .line 852
    .line 853
    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 854
    .line 855
    .line 856
    move-result v4

    .line 857
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v12
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 861
    goto :goto_14

    .line 862
    :catch_9
    :goto_13
    move-object/from16 v17, v4

    .line 863
    .line 864
    goto :goto_14

    .line 865
    :catch_a
    move-object/from16 v16, v3

    .line 866
    .line 867
    goto :goto_13

    .line 868
    :catch_b
    :goto_14
    :try_start_10
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 869
    .line 870
    .line 871
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 872
    .line 873
    .line 874
    invoke-virtual {v10, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 875
    .line 876
    .line 877
    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 878
    .line 879
    .line 880
    invoke-static {}, Lif/a;->T()I

    .line 881
    .line 882
    .line 883
    move-result v1

    .line 884
    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 888
    .line 889
    .line 890
    const-string v1, "\u5185\u90e8\u5b58\u50a8\uff1a"

    .line 891
    .line 892
    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 893
    .line 894
    .line 895
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 896
    .line 897
    new-instance v3, Ljava/lang/StringBuilder;

    .line 898
    .line 899
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    sget-object v4, Lfa/g0;->a:Lfa/h0;

    .line 903
    .line 904
    invoke-virtual {v4}, Lfa/h0;->d()Ljava/lang/String;

    .line 905
    .line 906
    .line 907
    move-result-object v4

    .line 908
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 912
    .line 913
    .line 914
    move-result-object v3

    .line 915
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 916
    .line 917
    .line 918
    invoke-static {v3}, La2/w0;->k(Ljava/lang/String;)Lfa/a0;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    iget v1, v1, Lfa/a0;->a:I

    .line 923
    .line 924
    if-nez v1, :cond_11

    .line 925
    .line 926
    move-object/from16 v1, v16

    .line 927
    .line 928
    goto :goto_15

    .line 929
    :cond_11
    move-object/from16 v1, v17

    .line 930
    .line 931
    :goto_15
    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 932
    .line 933
    .line 934
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 935
    .line 936
    .line 937
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 938
    .line 939
    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    .line 941
    .line 942
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    iget-object v3, v13, Lda/g;->A:Lda/g;

    .line 946
    .line 947
    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 948
    .line 949
    .line 950
    move-result-object v3

    .line 951
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 952
    .line 953
    .line 954
    move-result-object v3

    .line 955
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 959
    .line 960
    .line 961
    move-result-object v1

    .line 962
    invoke-static {v1}, La2/w0;->k(Ljava/lang/String;)Lfa/a0;

    .line 963
    .line 964
    .line 965
    move-result-object v1

    .line 966
    iget v1, v1, Lfa/a0;->a:I

    .line 967
    .line 968
    if-nez v1, :cond_12

    .line 969
    .line 970
    move-object/from16 v1, v16

    .line 971
    .line 972
    goto :goto_16

    .line 973
    :cond_12
    move-object/from16 v1, v17

    .line 974
    .line 975
    :goto_16
    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 976
    .line 977
    .line 978
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 979
    .line 980
    .line 981
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 982
    .line 983
    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    .line 985
    .line 986
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    iget-object v3, v13, Lda/g;->A:Lda/g;

    .line 990
    .line 991
    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 992
    .line 993
    .line 994
    move-result-object v3

    .line 995
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v3

    .line 999
    const-string v4, "/data/"

    .line 1000
    .line 1001
    const-string v5, "/\u200bdata/"

    .line 1002
    .line 1003
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v3

    .line 1007
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v1

    .line 1014
    invoke-static {v1}, La2/w0;->k(Ljava/lang/String;)Lfa/a0;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    iget v1, v1, Lfa/a0;->a:I

    .line 1019
    .line 1020
    if-nez v1, :cond_13

    .line 1021
    .line 1022
    move-object/from16 v1, v16

    .line 1023
    .line 1024
    goto :goto_17

    .line 1025
    :cond_13
    move-object/from16 v1, v17

    .line 1026
    .line 1027
    :goto_17
    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1031
    .line 1032
    .line 1033
    const-string v1, "tmp\u76ee\u5f55\uff1a"

    .line 1034
    .line 1035
    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1036
    .line 1037
    .line 1038
    invoke-static {v0}, La2/w0;->k(Ljava/lang/String;)Lfa/a0;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v0

    .line 1042
    iget v0, v0, Lfa/a0;->a:I

    .line 1043
    .line 1044
    if-nez v0, :cond_14

    .line 1045
    .line 1046
    move-object/from16 v3, v16

    .line 1047
    .line 1048
    goto :goto_18

    .line 1049
    :cond_14
    move-object/from16 v3, v17

    .line 1050
    .line 1051
    :goto_18
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 1055
    .line 1056
    .line 1057
    goto :goto_19

    .line 1058
    :catch_c
    move-exception v0

    .line 1059
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1064
    .line 1065
    .line 1066
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v0

    .line 1078
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 1082
    .line 1083
    .line 1084
    goto :goto_1b

    .line 1085
    :goto_1a
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1086
    .line 1087
    .line 1088
    :goto_1b
    return-void

    .line 1089
    :pswitch_8
    move-object/from16 v16, v3

    .line 1090
    .line 1091
    move-object/from16 v17, v4

    .line 1092
    .line 1093
    sget v1, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 1094
    .line 1095
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1096
    .line 1097
    .line 1098
    const-string v1, "ls -ls /data/media/"

    .line 1099
    .line 1100
    const-string v3, "/data/media/"

    .line 1101
    .line 1102
    :try_start_12
    sget-object v4, Lfa/a;->a:Lfa/b;

    .line 1103
    .line 1104
    invoke-virtual {v4}, Lfa/b;->f()Z

    .line 1105
    .line 1106
    .line 1107
    move-result v9

    .line 1108
    if-eqz v9, :cond_1d

    .line 1109
    .line 1110
    new-instance v9, Ljava/lang/StringBuffer;

    .line 1111
    .line 1112
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    .line 1113
    .line 1114
    .line 1115
    :try_start_13
    const-string v10, "\u670d\u52a1\u7248\u672c\uff1a"

    .line 1116
    .line 1117
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1118
    .line 1119
    .line 1120
    iget-object v10, v4, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 1121
    .line 1122
    invoke-interface {v10}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getVersion()I

    .line 1123
    .line 1124
    .line 1125
    move-result v10

    .line 1126
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1133
    .line 1134
    .line 1135
    iget-object v7, v4, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 1136
    .line 1137
    invoke-interface {v7}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getUid()I

    .line 1138
    .line 1139
    .line 1140
    move-result v7

    .line 1141
    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1148
    .line 1149
    .line 1150
    iget-object v5, v4, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 1151
    .line 1152
    invoke-interface {v5}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getUserId()I

    .line 1153
    .line 1154
    .line 1155
    move-result v5

    .line 1156
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1157
    .line 1158
    .line 1159
    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1160
    .line 1161
    .line 1162
    const-string v5, "\u8bfb\u53d6tmp\uff1a"

    .line 1163
    .line 1164
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1165
    .line 1166
    .line 1167
    iget-object v5, v4, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 1168
    .line 1169
    const-string v6, "/data/local/tmp"

    .line 1170
    .line 1171
    invoke-interface {v5, v6}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canReadAndWrite(Ljava/lang/String;)Z

    .line 1172
    .line 1173
    .line 1174
    move-result v5

    .line 1175
    if-eqz v5, :cond_15

    .line 1176
    .line 1177
    move-object/from16 v5, v16

    .line 1178
    .line 1179
    goto :goto_1c

    .line 1180
    :cond_15
    move-object/from16 v5, v17

    .line 1181
    .line 1182
    :goto_1c
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1186
    .line 1187
    .line 1188
    const-string v5, "\u547d\u4ee4tmp\uff1a"

    .line 1189
    .line 1190
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1191
    .line 1192
    .line 1193
    iget-object v5, v4, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 1194
    .line 1195
    const-wide/16 v6, 0x7d0

    .line 1196
    .line 1197
    invoke-interface {v5, v0, v6, v7}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v0

    .line 1201
    iget v0, v0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 1202
    .line 1203
    if-nez v0, :cond_16

    .line 1204
    .line 1205
    move-object/from16 v0, v16

    .line 1206
    .line 1207
    goto :goto_1d

    .line 1208
    :cond_16
    move-object/from16 v0, v17

    .line 1209
    .line 1210
    :goto_1d
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1214
    .line 1215
    .line 1216
    const-string v0, "\u8bfb\u53d6sd\uff1a"

    .line 1217
    .line 1218
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1219
    .line 1220
    .line 1221
    iget-object v0, v4, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 1222
    .line 1223
    sget-object v5, Lfa/g0;->a:Lfa/h0;

    .line 1224
    .line 1225
    invoke-virtual {v5}, Lfa/h0;->d()Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v6

    .line 1229
    invoke-interface {v0, v6}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canReadAndWrite(Ljava/lang/String;)Z

    .line 1230
    .line 1231
    .line 1232
    move-result v0

    .line 1233
    if-eqz v0, :cond_17

    .line 1234
    .line 1235
    move-object/from16 v0, v16

    .line 1236
    .line 1237
    goto :goto_1e

    .line 1238
    :cond_17
    move-object/from16 v0, v17

    .line 1239
    .line 1240
    :goto_1e
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1244
    .line 1245
    .line 1246
    const-string v0, "\u547d\u4ee4sd\uff1a"

    .line 1247
    .line 1248
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1249
    .line 1250
    .line 1251
    iget-object v0, v4, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 1252
    .line 1253
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1254
    .line 1255
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v5}, Lfa/h0;->d()Ljava/lang/String;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v5

    .line 1262
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v5

    .line 1269
    const-wide/16 v6, 0x7d0

    .line 1270
    .line 1271
    invoke-interface {v0, v5, v6, v7}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v0

    .line 1275
    iget v0, v0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 1276
    .line 1277
    if-nez v0, :cond_18

    .line 1278
    .line 1279
    move-object/from16 v0, v16

    .line 1280
    .line 1281
    goto :goto_1f

    .line 1282
    :cond_18
    move-object/from16 v0, v17

    .line 1283
    .line 1284
    :goto_1f
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1288
    .line 1289
    .line 1290
    const-string v0, "\u79c1\u6709\u76ee\u5f55\uff1a"

    .line 1291
    .line 1292
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1293
    .line 1294
    .line 1295
    iget-object v0, v4, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 1296
    .line 1297
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1298
    .line 1299
    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1300
    .line 1301
    .line 1302
    iget-object v6, v13, Lda/g;->A:Lda/g;

    .line 1303
    .line 1304
    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v6

    .line 1308
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v6

    .line 1312
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v6

    .line 1316
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    .line 1318
    .line 1319
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v5

    .line 1323
    const-wide/16 v6, 0x7d0

    .line 1324
    .line 1325
    invoke-interface {v0, v5, v6, v7}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v0

    .line 1329
    iget v0, v0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 1330
    .line 1331
    if-nez v0, :cond_19

    .line 1332
    .line 1333
    move-object/from16 v0, v16

    .line 1334
    .line 1335
    goto :goto_20

    .line 1336
    :cond_19
    move-object/from16 v0, v17

    .line 1337
    .line 1338
    :goto_20
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1342
    .line 1343
    .line 1344
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1345
    .line 1346
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1347
    .line 1348
    iget v5, v0, Lcom/yunpan/appmanage/util/k;->n:I

    .line 1349
    .line 1350
    if-lez v5, :cond_1c

    .line 1351
    .line 1352
    const-string v5, "\u8bfb\u53d6media\uff1a"

    .line 1353
    .line 1354
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1355
    .line 1356
    .line 1357
    iget-object v5, v4, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 1358
    .line 1359
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1360
    .line 1361
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1362
    .line 1363
    .line 1364
    iget v3, v0, Lcom/yunpan/appmanage/util/k;->n:I

    .line 1365
    .line 1366
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v3

    .line 1373
    invoke-interface {v5, v3}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->file_canReadAndWrite(Ljava/lang/String;)Z

    .line 1374
    .line 1375
    .line 1376
    move-result v3

    .line 1377
    if-eqz v3, :cond_1a

    .line 1378
    .line 1379
    move-object/from16 v3, v16

    .line 1380
    .line 1381
    goto :goto_21

    .line 1382
    :cond_1a
    move-object/from16 v3, v17

    .line 1383
    .line 1384
    :goto_21
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1388
    .line 1389
    .line 1390
    const-string v3, "\u547d\u4ee4media\uff1a"

    .line 1391
    .line 1392
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1393
    .line 1394
    .line 1395
    iget-object v3, v4, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 1396
    .line 1397
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1398
    .line 1399
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1400
    .line 1401
    .line 1402
    iget v0, v0, Lcom/yunpan/appmanage/util/k;->n:I

    .line 1403
    .line 1404
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1405
    .line 1406
    .line 1407
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1408
    .line 1409
    .line 1410
    move-result-object v0

    .line 1411
    const-wide/16 v4, 0x7d0

    .line 1412
    .line 1413
    invoke-interface {v3, v0, v4, v5}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v0

    .line 1417
    iget v0, v0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 1418
    .line 1419
    if-nez v0, :cond_1b

    .line 1420
    .line 1421
    move-object/from16 v3, v16

    .line 1422
    .line 1423
    goto :goto_22

    .line 1424
    :cond_1b
    move-object/from16 v3, v17

    .line 1425
    .line 1426
    :goto_22
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    .line 1430
    .line 1431
    .line 1432
    goto :goto_23

    .line 1433
    :catch_d
    move-exception v0

    .line 1434
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v0

    .line 1438
    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1439
    .line 1440
    .line 1441
    :cond_1c
    :goto_23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1442
    .line 1443
    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1444
    .line 1445
    .line 1446
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1447
    .line 1448
    .line 1449
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v0

    .line 1453
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1457
    .line 1458
    .line 1459
    goto :goto_25

    .line 1460
    :catch_e
    move-exception v0

    .line 1461
    goto :goto_24

    .line 1462
    :cond_1d
    new-instance v0, Ljava/lang/Exception;

    .line 1463
    .line 1464
    const-string v1, "jni\u670d\u52a1\u672a\u6fc0\u6d3b"

    .line 1465
    .line 1466
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1467
    .line 1468
    .line 1469
    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    .line 1470
    :goto_24
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 1471
    .line 1472
    .line 1473
    :goto_25
    return-void

    .line 1474
    nop

    .line 1475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 25

    .line 1
    move/from16 v0, p3

    .line 2
    .line 3
    const/4 v11, 0x5

    .line 4
    const/4 v12, 0x7

    .line 5
    const/16 v13, 0x1c

    .line 6
    .line 7
    const/4 v14, 0x4

    .line 8
    const/16 v15, 0x10

    .line 9
    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    sget v16, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 17
    .line 18
    move-object/from16 v6, p0

    .line 19
    .line 20
    iget-object v7, v6, Lua/w6;->b:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 21
    .line 22
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const/16 v8, 0x18

    .line 26
    .line 27
    const-string v9, "wifi"

    .line 28
    .line 29
    const-string v10, "\n"

    .line 30
    .line 31
    if-nez v0, :cond_a

    .line 32
    .line 33
    new-instance v11, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v0, v7, Lda/g;->A:Lda/g;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    and-int/lit16 v9, v0, 0xff

    .line 61
    .line 62
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    shr-int/lit8 v1, v0, 0x8

    .line 67
    .line 68
    and-int/lit16 v1, v1, 0xff

    .line 69
    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    shr-int/lit8 v12, v0, 0x10

    .line 75
    .line 76
    and-int/lit16 v12, v12, 0xff

    .line 77
    .line 78
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    shr-int/2addr v0, v8

    .line 83
    and-int/lit16 v0, v0, 0xff

    .line 84
    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-array v8, v14, [Ljava/lang/Object;

    .line 90
    .line 91
    aput-object v9, v8, v5

    .line 92
    .line 93
    aput-object v1, v8, v4

    .line 94
    .line 95
    aput-object v12, v8, v3

    .line 96
    .line 97
    aput-object v0, v8, v2

    .line 98
    .line 99
    const-string v0, "%d.%d.%d.%d"

    .line 100
    .line 101
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    :cond_0
    const-string v0, "---getDisplayName1---"

    .line 109
    .line 110
    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ljava/net/NetworkInterface;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const-string v3, "eth0"

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_2

    .line 140
    .line 141
    const-string v3, "wlan0"

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    goto :goto_2

    .line 152
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_1

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Ljava/net/InetAddress;

    .line 167
    .line 168
    instance-of v3, v2, Ljava/net/Inet4Address;

    .line 169
    .line 170
    if-eqz v3, :cond_3

    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-nez v3, :cond_4

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v11, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v2, "-\u672c\u5730"

    .line 199
    .line 200
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v11, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 212
    .line 213
    .line 214
    :cond_5
    const-string v0, "---getDisplayName2---"

    .line 215
    .line 216
    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    :cond_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-eqz v1, :cond_8

    .line 228
    .line 229
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    check-cast v1, Ljava/net/NetworkInterface;

    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_6

    .line 244
    .line 245
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    check-cast v2, Ljava/net/InetAddress;

    .line 250
    .line 251
    instance-of v3, v2, Ljava/net/Inet4Address;

    .line 252
    .line 253
    if-eqz v3, :cond_7

    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    if-nez v3, :cond_7

    .line 260
    .line 261
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v11, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :catch_1
    move-exception v0

    .line 270
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 271
    .line 272
    .line 273
    :cond_8
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    const-string v1, ""

    .line 278
    .line 279
    move-object v2, v1

    .line 280
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    if-eqz v3, :cond_9

    .line 285
    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    check-cast v3, Ljava/lang/String;

    .line 291
    .line 292
    invoke-static {v2, v3, v10}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    goto :goto_4

    .line 297
    :cond_9
    new-instance v0, Lha/z6;

    .line 298
    .line 299
    invoke-direct {v0, v7, v7, v2, v1}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_e

    .line 306
    .line 307
    :cond_a
    if-ne v0, v4, :cond_e

    .line 308
    .line 309
    iget-object v0, v7, Lda/g;->A:Lda/g;

    .line 310
    .line 311
    const-string v1, "usb"

    .line 312
    .line 313
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 318
    .line 319
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    if-eqz v0, :cond_d

    .line 324
    .line 325
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-eqz v1, :cond_b

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_b
    new-instance v1, Ljava/lang/StringBuffer;

    .line 333
    .line 334
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_c

    .line 350
    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 356
    .line 357
    const-string v3, "VendorId\uff1a"

    .line 358
    .line 359
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 367
    .line 368
    .line 369
    const-string v3, "ProductId\uff1a"

    .line 370
    .line 371
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 379
    .line 380
    .line 381
    const-string v2, "\n\n"

    .line 382
    .line 383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    .line 385
    .line 386
    goto :goto_5

    .line 387
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    goto/16 :goto_e

    .line 395
    .line 396
    :cond_d
    :goto_6
    const-string v0, "\u8bf7\u5148\u63d2\u5165USB\u8bbe\u5907"

    .line 397
    .line 398
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 399
    .line 400
    .line 401
    goto/16 :goto_e

    .line 402
    .line 403
    :cond_e
    if-ne v0, v3, :cond_f

    .line 404
    .line 405
    new-instance v0, Lua/w6;

    .line 406
    .line 407
    invoke-direct {v0, v7, v14}, Lua/w6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 408
    .line 409
    .line 410
    new-instance v1, Lmc/c;

    .line 411
    .line 412
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 416
    .line 417
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    new-instance v1, Lha/l2;

    .line 430
    .line 431
    invoke-direct {v1, v13}, Lha/l2;-><init>(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_e

    .line 438
    .line 439
    :cond_f
    if-ne v0, v2, :cond_13

    .line 440
    .line 441
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 442
    .line 443
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 444
    .line 445
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 446
    .line 447
    if-eqz v0, :cond_10

    .line 448
    .line 449
    const-string v0, "\u4f60\u5df2\u6709\u7cfb\u7edf\u7b7e\u540d\u6743\u9650\uff0c\u65e0\u9700\u591a\u6b64\u4e00\u4e3e"

    .line 450
    .line 451
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 452
    .line 453
    .line 454
    goto/16 :goto_e

    .line 455
    .line 456
    :cond_10
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 457
    .line 458
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    .line 460
    .line 461
    invoke-static {}, La2/w0;->K()Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-eqz v0, :cond_11

    .line 466
    .line 467
    const-string v0, "\u60a8\u5df2\u83b7\u5f97root\u6743\u9650\uff0c\u65e0\u9700\u591a\u6b64\u4e00\u4e3e"

    .line 468
    .line 469
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_e

    .line 473
    .line 474
    :cond_11
    invoke-static {}, La2/w0;->J()Z

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    if-nez v0, :cond_12

    .line 479
    .line 480
    const-string v0, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 481
    .line 482
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 483
    .line 484
    .line 485
    goto/16 :goto_e

    .line 486
    .line 487
    :cond_12
    new-instance v0, Lha/z6;

    .line 488
    .line 489
    new-instance v1, Lua/x6;

    .line 490
    .line 491
    invoke-direct {v1, v7, v5}, Lua/x6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 492
    .line 493
    .line 494
    const-string v20, "\u4e25\u91cd\u8b66\u544a\uff1a\u6b64\u529f\u80fd\u662f\u5371\u9669\u529f\u80fd\uff0c\u8bf7\u52ff\u4f7f\u7528"

    .line 495
    .line 496
    const-string v21, "\u8b66\u544a\uff1a\u53ef\u80fd\u4f1a\u5bfc\u81f4\u65e0\u6cd5\u5f00\u673a\uff0c\u53d8\u7816\u5934\uff0c\u8bf7\u52ff\u5c1d\u8bd5"

    .line 497
    .line 498
    const-string v22, "\u597d\u7684"

    .line 499
    .line 500
    const-string v23, "\u6211\u60f3\u8bd5\u8bd5"

    .line 501
    .line 502
    move-object/from16 v17, v0

    .line 503
    .line 504
    move-object/from16 v18, v7

    .line 505
    .line 506
    move-object/from16 v19, v7

    .line 507
    .line 508
    move-object/from16 v24, v1

    .line 509
    .line 510
    invoke-direct/range {v17 .. v24}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 514
    .line 515
    .line 516
    goto/16 :goto_e

    .line 517
    .line 518
    :cond_13
    if-ne v0, v14, :cond_14

    .line 519
    .line 520
    new-instance v0, Lua/w6;

    .line 521
    .line 522
    invoke-direct {v0, v7, v12}, Lua/w6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 523
    .line 524
    .line 525
    new-instance v1, Lmc/c;

    .line 526
    .line 527
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 531
    .line 532
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    new-instance v1, Lha/l2;

    .line 545
    .line 546
    invoke-direct {v1, v13}, Lha/l2;-><init>(I)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_e

    .line 553
    .line 554
    :cond_14
    if-ne v0, v11, :cond_15

    .line 555
    .line 556
    iget-object v1, v7, Lcom/yunpan/appmanage/ui/ActivityStudy;->D:Lx9/k3;

    .line 557
    .line 558
    invoke-virtual {v1, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    check-cast v1, Lx9/l3;

    .line 563
    .line 564
    iget-object v1, v1, Lx9/l3;->b:Ljava/lang/String;

    .line 565
    .line 566
    const-string v3, "\u641c\u7d22\u7aef\u53e3"

    .line 567
    .line 568
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    if-eqz v1, :cond_52

    .line 573
    .line 574
    new-instance v1, Lua/w6;

    .line 575
    .line 576
    invoke-direct {v1, v7, v2}, Lua/w6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 577
    .line 578
    .line 579
    new-instance v2, Lmc/c;

    .line 580
    .line 581
    invoke-direct {v2, v5, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 585
    .line 586
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    new-instance v2, Lha/s2;

    .line 599
    .line 600
    invoke-direct {v2, v0, v12, v7}, Lha/s2;-><init>(IILjava/lang/Object;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 604
    .line 605
    .line 606
    goto/16 :goto_e

    .line 607
    .line 608
    :cond_15
    const/4 v14, 0x6

    .line 609
    if-ne v0, v14, :cond_16

    .line 610
    .line 611
    new-instance v0, Lua/t6;

    .line 612
    .line 613
    invoke-direct {v0, v2}, Lua/t6;-><init>(I)V

    .line 614
    .line 615
    .line 616
    new-instance v1, Lmc/c;

    .line 617
    .line 618
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 619
    .line 620
    .line 621
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 622
    .line 623
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    new-instance v1, Lha/m6;

    .line 636
    .line 637
    const/16 v2, 0xf

    .line 638
    .line 639
    invoke-direct {v1, v2}, Lha/m6;-><init>(I)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 643
    .line 644
    .line 645
    goto/16 :goto_e

    .line 646
    .line 647
    :cond_16
    if-ne v0, v12, :cond_17

    .line 648
    .line 649
    new-instance v0, Lua/w6;

    .line 650
    .line 651
    const/4 v1, 0x6

    .line 652
    invoke-direct {v0, v7, v1}, Lua/w6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 653
    .line 654
    .line 655
    new-instance v1, Lmc/c;

    .line 656
    .line 657
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 661
    .line 662
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 667
    .line 668
    .line 669
    move-result-object v1

    .line 670
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    new-instance v1, Lha/m6;

    .line 675
    .line 676
    invoke-direct {v1, v15}, Lha/m6;-><init>(I)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 680
    .line 681
    .line 682
    goto/16 :goto_e

    .line 683
    .line 684
    :cond_17
    const/16 v2, 0x1a

    .line 685
    .line 686
    if-ne v0, v1, :cond_19

    .line 687
    .line 688
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 689
    .line 690
    if-lt v0, v2, :cond_18

    .line 691
    .line 692
    invoke-static {}, Ln5/a;->l()Ljava/nio/file/FileSystem;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    invoke-static {v0}, Ln5/a;->w(Ljava/nio/file/FileSystem;)V

    .line 697
    .line 698
    .line 699
    :cond_18
    new-instance v0, Lua/w6;

    .line 700
    .line 701
    invoke-direct {v0, v7, v4}, Lua/w6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 702
    .line 703
    .line 704
    new-instance v1, Lmc/c;

    .line 705
    .line 706
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 707
    .line 708
    .line 709
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 710
    .line 711
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 716
    .line 717
    .line 718
    move-result-object v1

    .line 719
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    new-instance v1, Lha/m6;

    .line 724
    .line 725
    const/16 v2, 0x17

    .line 726
    .line 727
    invoke-direct {v1, v2}, Lha/m6;-><init>(I)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 731
    .line 732
    .line 733
    goto/16 :goto_e

    .line 734
    .line 735
    :cond_19
    const/16 v12, 0x9

    .line 736
    .line 737
    if-ne v0, v12, :cond_1a

    .line 738
    .line 739
    new-instance v0, Lua/w6;

    .line 740
    .line 741
    invoke-direct {v0, v7, v5}, Lua/w6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 742
    .line 743
    .line 744
    new-instance v1, Lmc/c;

    .line 745
    .line 746
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 747
    .line 748
    .line 749
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 750
    .line 751
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    new-instance v1, Lha/m6;

    .line 764
    .line 765
    const/16 v2, 0x16

    .line 766
    .line 767
    invoke-direct {v1, v2}, Lha/m6;-><init>(I)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 771
    .line 772
    .line 773
    goto/16 :goto_e

    .line 774
    .line 775
    :cond_1a
    const/16 v12, 0xa

    .line 776
    .line 777
    if-ne v0, v12, :cond_1b

    .line 778
    .line 779
    const-string v0, "\u907f\u514d\u4e0d\u5fc5\u8981\u7684\u9ebb\u70e6\uff0c\u4e0d\u5f00\u653e\u6b64\u529f\u80fd"

    .line 780
    .line 781
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 782
    .line 783
    .line 784
    goto/16 :goto_e

    .line 785
    .line 786
    :cond_1b
    const/16 v12, 0xb

    .line 787
    .line 788
    if-ne v0, v12, :cond_1c

    .line 789
    .line 790
    new-instance v0, Lua/t6;

    .line 791
    .line 792
    invoke-direct {v0, v3}, Lua/t6;-><init>(I)V

    .line 793
    .line 794
    .line 795
    new-instance v1, Lmc/c;

    .line 796
    .line 797
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 798
    .line 799
    .line 800
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 801
    .line 802
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    new-instance v1, Lha/m6;

    .line 815
    .line 816
    const/16 v2, 0x15

    .line 817
    .line 818
    invoke-direct {v1, v2}, Lha/m6;-><init>(I)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 822
    .line 823
    .line 824
    goto/16 :goto_e

    .line 825
    .line 826
    :cond_1c
    const/16 v12, 0xc

    .line 827
    .line 828
    const-string v14, "\u4f4e\u7248\u672c\u7cfb\u7edf\u65e0\u9700\u6d4b\u8bd5"

    .line 829
    .line 830
    if-ne v0, v12, :cond_1e

    .line 831
    .line 832
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 833
    .line 834
    const/16 v1, 0x17

    .line 835
    .line 836
    if-ge v0, v1, :cond_1d

    .line 837
    .line 838
    invoke-static {v14}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 839
    .line 840
    .line 841
    goto/16 :goto_e

    .line 842
    .line 843
    :cond_1d
    new-instance v0, Lua/w6;

    .line 844
    .line 845
    invoke-direct {v0, v7, v3}, Lua/w6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 846
    .line 847
    .line 848
    new-instance v1, Lmc/c;

    .line 849
    .line 850
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 851
    .line 852
    .line 853
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 854
    .line 855
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 860
    .line 861
    .line 862
    move-result-object v1

    .line 863
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    new-instance v1, Lha/m6;

    .line 868
    .line 869
    const/16 v2, 0x11

    .line 870
    .line 871
    invoke-direct {v1, v2}, Lha/m6;-><init>(I)V

    .line 872
    .line 873
    .line 874
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 875
    .line 876
    .line 877
    goto/16 :goto_e

    .line 878
    .line 879
    :cond_1e
    const/16 v12, 0xd

    .line 880
    .line 881
    if-ne v0, v12, :cond_20

    .line 882
    .line 883
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 884
    .line 885
    const/16 v1, 0x17

    .line 886
    .line 887
    if-ge v0, v1, :cond_1f

    .line 888
    .line 889
    invoke-static {v14}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 890
    .line 891
    .line 892
    goto/16 :goto_e

    .line 893
    .line 894
    :cond_1f
    new-instance v0, Lua/w6;

    .line 895
    .line 896
    invoke-direct {v0, v7, v11}, Lua/w6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 897
    .line 898
    .line 899
    new-instance v1, Lmc/c;

    .line 900
    .line 901
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 902
    .line 903
    .line 904
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 905
    .line 906
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 911
    .line 912
    .line 913
    move-result-object v1

    .line 914
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    new-instance v1, Lha/m6;

    .line 919
    .line 920
    const/16 v2, 0x12

    .line 921
    .line 922
    invoke-direct {v1, v2}, Lha/m6;-><init>(I)V

    .line 923
    .line 924
    .line 925
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 926
    .line 927
    .line 928
    goto/16 :goto_e

    .line 929
    .line 930
    :cond_20
    const/16 v11, 0xe

    .line 931
    .line 932
    if-ne v0, v11, :cond_22

    .line 933
    .line 934
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 935
    .line 936
    const/16 v2, 0x17

    .line 937
    .line 938
    if-ge v0, v2, :cond_21

    .line 939
    .line 940
    invoke-static {v14}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 941
    .line 942
    .line 943
    goto/16 :goto_e

    .line 944
    .line 945
    :cond_21
    new-instance v0, Lua/w6;

    .line 946
    .line 947
    invoke-direct {v0, v7, v1}, Lua/w6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 948
    .line 949
    .line 950
    new-instance v1, Lmc/c;

    .line 951
    .line 952
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 953
    .line 954
    .line 955
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 956
    .line 957
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 962
    .line 963
    .line 964
    move-result-object v1

    .line 965
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    new-instance v1, Lha/m6;

    .line 970
    .line 971
    const/16 v2, 0x13

    .line 972
    .line 973
    invoke-direct {v1, v2}, Lha/m6;-><init>(I)V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 977
    .line 978
    .line 979
    goto/16 :goto_e

    .line 980
    .line 981
    :cond_22
    const/16 v1, 0xf

    .line 982
    .line 983
    if-ne v0, v1, :cond_24

    .line 984
    .line 985
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 986
    .line 987
    const/16 v1, 0x17

    .line 988
    .line 989
    if-ge v0, v1, :cond_23

    .line 990
    .line 991
    invoke-static {v14}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 992
    .line 993
    .line 994
    goto/16 :goto_e

    .line 995
    .line 996
    :cond_23
    new-instance v0, Lua/w6;

    .line 997
    .line 998
    const/16 v1, 0x9

    .line 999
    .line 1000
    invoke-direct {v0, v7, v1}, Lua/w6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 1001
    .line 1002
    .line 1003
    new-instance v1, Lmc/c;

    .line 1004
    .line 1005
    invoke-direct {v1, v5, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 1006
    .line 1007
    .line 1008
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 1009
    .line 1010
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v0

    .line 1014
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    new-instance v1, Lha/m6;

    .line 1023
    .line 1024
    const/16 v2, 0x14

    .line 1025
    .line 1026
    invoke-direct {v1, v2}, Lha/m6;-><init>(I)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 1030
    .line 1031
    .line 1032
    goto/16 :goto_e

    .line 1033
    .line 1034
    :cond_24
    if-ne v0, v15, :cond_25

    .line 1035
    .line 1036
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnYP;

    .line 1037
    .line 1038
    invoke-virtual {v7, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 1039
    .line 1040
    .line 1041
    goto/16 :goto_e

    .line 1042
    .line 1043
    :cond_25
    const/16 v1, 0x11

    .line 1044
    .line 1045
    if-ne v0, v1, :cond_26

    .line 1046
    .line 1047
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;

    .line 1048
    .line 1049
    invoke-virtual {v7, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 1050
    .line 1051
    .line 1052
    goto/16 :goto_e

    .line 1053
    .line 1054
    :cond_26
    const-string v1, "\u4e0d\u662f\u6377\u9014\u8f66\u673a"

    .line 1055
    .line 1056
    const/16 v11, 0x12

    .line 1057
    .line 1058
    if-ne v0, v11, :cond_28

    .line 1059
    .line 1060
    iget-object v0, v7, Lda/g;->A:Lda/g;

    .line 1061
    .line 1062
    invoke-static {v0}, Lcom/yunpan/appmanage/carsdk/h0;->c(Landroid/content/Context;)Z

    .line 1063
    .line 1064
    .line 1065
    move-result v0

    .line 1066
    if-nez v0, :cond_27

    .line 1067
    .line 1068
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1069
    .line 1070
    .line 1071
    goto/16 :goto_e

    .line 1072
    .line 1073
    :cond_27
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 1074
    .line 1075
    invoke-virtual {v7, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 1076
    .line 1077
    .line 1078
    goto/16 :goto_e

    .line 1079
    .line 1080
    :cond_28
    const/16 v11, 0x13

    .line 1081
    .line 1082
    if-ne v0, v11, :cond_2a

    .line 1083
    .line 1084
    iget-object v0, v7, Lda/g;->A:Lda/g;

    .line 1085
    .line 1086
    invoke-static {v0}, Lcom/yunpan/appmanage/carsdk/h0;->c(Landroid/content/Context;)Z

    .line 1087
    .line 1088
    .line 1089
    move-result v0

    .line 1090
    if-nez v0, :cond_29

    .line 1091
    .line 1092
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1093
    .line 1094
    .line 1095
    goto/16 :goto_e

    .line 1096
    .line 1097
    :cond_29
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityJieTText2;

    .line 1098
    .line 1099
    invoke-virtual {v7, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 1100
    .line 1101
    .line 1102
    goto/16 :goto_e

    .line 1103
    .line 1104
    :cond_2a
    const-string v1, "\u9700\u516c\u7b7e\u7cfb\u7edf"

    .line 1105
    .line 1106
    const/16 v11, 0x14

    .line 1107
    .line 1108
    if-ne v0, v11, :cond_2c

    .line 1109
    .line 1110
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1111
    .line 1112
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1113
    .line 1114
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 1115
    .line 1116
    if-nez v0, :cond_2b

    .line 1117
    .line 1118
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1119
    .line 1120
    .line 1121
    goto/16 :goto_e

    .line 1122
    .line 1123
    :cond_2b
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;

    .line 1124
    .line 1125
    invoke-virtual {v7, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 1126
    .line 1127
    .line 1128
    goto/16 :goto_e

    .line 1129
    .line 1130
    :cond_2c
    const/16 v11, 0x15

    .line 1131
    .line 1132
    if-ne v0, v11, :cond_2e

    .line 1133
    .line 1134
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1135
    .line 1136
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1137
    .line 1138
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 1139
    .line 1140
    if-nez v0, :cond_2d

    .line 1141
    .line 1142
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1143
    .line 1144
    .line 1145
    goto/16 :goto_e

    .line 1146
    .line 1147
    :cond_2d
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;

    .line 1148
    .line 1149
    invoke-virtual {v7, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 1150
    .line 1151
    .line 1152
    goto/16 :goto_e

    .line 1153
    .line 1154
    :cond_2e
    const/16 v11, 0x16

    .line 1155
    .line 1156
    if-ne v0, v11, :cond_30

    .line 1157
    .line 1158
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1159
    .line 1160
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1161
    .line 1162
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 1163
    .line 1164
    if-nez v0, :cond_2f

    .line 1165
    .line 1166
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1167
    .line 1168
    .line 1169
    goto/16 :goto_e

    .line 1170
    .line 1171
    :cond_2f
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;

    .line 1172
    .line 1173
    invoke-virtual {v7, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 1174
    .line 1175
    .line 1176
    goto/16 :goto_e

    .line 1177
    .line 1178
    :cond_30
    const/16 v1, 0x1f

    .line 1179
    .line 1180
    const/16 v11, 0x17

    .line 1181
    .line 1182
    if-ne v0, v11, :cond_34

    .line 1183
    .line 1184
    iget-object v0, v7, Lda/g;->A:Lda/g;

    .line 1185
    .line 1186
    invoke-static {v0}, Lif/a;->R(Landroid/content/Context;)Landroid/graphics/Point;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v0

    .line 1190
    const v2, 0x7f0b0558

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v7, v2}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v2

    .line 1197
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 1198
    .line 1199
    new-array v3, v3, [I

    .line 1200
    .line 1201
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1202
    .line 1203
    .line 1204
    aget v8, v3, v5

    .line 1205
    .line 1206
    aget v9, v3, v4

    .line 1207
    .line 1208
    iget v11, v0, Landroid/graphics/Point;->x:I

    .line 1209
    .line 1210
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 1211
    .line 1212
    .line 1213
    move-result v12

    .line 1214
    add-int/2addr v12, v8

    .line 1215
    sub-int/2addr v11, v12

    .line 1216
    iget v12, v0, Landroid/graphics/Point;->y:I

    .line 1217
    .line 1218
    aget v3, v3, v4

    .line 1219
    .line 1220
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 1221
    .line 1222
    .line 1223
    move-result v2

    .line 1224
    add-int/2addr v2, v3

    .line 1225
    sub-int/2addr v12, v2

    .line 1226
    new-instance v2, Ljava/lang/StringBuffer;

    .line 1227
    .line 1228
    const-string v3, "\u5de6\u4fa7="

    .line 1229
    .line 1230
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1231
    .line 1232
    .line 1233
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1234
    .line 1235
    .line 1236
    const-string v3, "\u9876\u90e8="

    .line 1237
    .line 1238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1239
    .line 1240
    .line 1241
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1242
    .line 1243
    .line 1244
    const-string v3, "\u53f3\u4fa7="

    .line 1245
    .line 1246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1250
    .line 1251
    .line 1252
    const-string v3, "\u5e95\u90e8="

    .line 1253
    .line 1254
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1258
    .line 1259
    .line 1260
    const-string v3, "\n\u5c4f\u5e55\u5927\u5c0f="

    .line 1261
    .line 1262
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1263
    .line 1264
    .line 1265
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 1266
    .line 1267
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1268
    .line 1269
    .line 1270
    const-string v3, " x "

    .line 1271
    .line 1272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1273
    .line 1274
    .line 1275
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1276
    .line 1277
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1281
    .line 1282
    .line 1283
    iget-object v0, v7, Lda/g;->A:Lda/g;

    .line 1284
    .line 1285
    const-string v7, "display"

    .line 1286
    .line 1287
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v0

    .line 1291
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1292
    .line 1293
    if-nez v0, :cond_31

    .line 1294
    .line 1295
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v7

    .line 1299
    array-length v7, v7

    .line 1300
    if-lez v7, :cond_33

    .line 1301
    .line 1302
    :cond_31
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v0

    .line 1306
    array-length v7, v0

    .line 1307
    :goto_7
    if-ge v5, v7, :cond_33

    .line 1308
    .line 1309
    aget-object v8, v0, v5

    .line 1310
    .line 1311
    const-string v9, "\n\u5c4f\u5e55"

    .line 1312
    .line 1313
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    .line 1317
    .line 1318
    .line 1319
    move-result v9

    .line 1320
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1321
    .line 1322
    .line 1323
    const-string v9, " "

    .line 1324
    .line 1325
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1326
    .line 1327
    .line 1328
    invoke-virtual {v8}, Landroid/view/Display;->getName()Ljava/lang/String;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v9

    .line 1332
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1333
    .line 1334
    .line 1335
    const-string v9, "  \u5206\u8fa8\u7387="

    .line 1336
    .line 1337
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    .line 1341
    .line 1342
    .line 1343
    move-result v9

    .line 1344
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1345
    .line 1346
    .line 1347
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    .line 1351
    .line 1352
    .line 1353
    move-result v9

    .line 1354
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1355
    .line 1356
    .line 1357
    const-string v9, "\n  \u5237\u65b0\u7387="

    .line 1358
    .line 1359
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v8}, Landroid/view/Display;->getRefreshRate()F

    .line 1363
    .line 1364
    .line 1365
    move-result v9

    .line 1366
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 1367
    .line 1368
    .line 1369
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1370
    .line 1371
    if-lt v9, v1, :cond_32

    .line 1372
    .line 1373
    :try_start_2
    const-string v9, "\u5236\u9020\u5546="

    .line 1374
    .line 1375
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1376
    .line 1377
    .line 1378
    invoke-static {v8}, La2/b;->h(Landroid/view/Display;)Landroid/hardware/display/DeviceProductInfo;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v8

    .line 1382
    invoke-static {v8}, La2/b;->n(Landroid/hardware/display/DeviceProductInfo;)Ljava/lang/String;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v8

    .line 1386
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1387
    .line 1388
    .line 1389
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1390
    .line 1391
    .line 1392
    goto :goto_8

    .line 1393
    :cond_32
    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1394
    .line 1395
    .line 1396
    :catch_2
    :goto_8
    add-int/2addr v5, v4

    .line 1397
    goto :goto_7

    .line 1398
    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v0

    .line 1402
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1403
    .line 1404
    .line 1405
    goto/16 :goto_e

    .line 1406
    .line 1407
    :cond_34
    sget-object v11, Lfa/a;->a:Lfa/b;

    .line 1408
    .line 1409
    const/4 v12, 0x0

    .line 1410
    if-ne v0, v8, :cond_38

    .line 1411
    .line 1412
    :try_start_3
    iget-object v0, v11, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 1413
    .line 1414
    if-nez v0, :cond_35

    .line 1415
    .line 1416
    goto :goto_a

    .line 1417
    :cond_35
    :try_start_4
    new-instance v1, Lcom/gj/server/GjBinderWrapper;

    .line 1418
    .line 1419
    const-string v2, "fce_misc_service_source_ctrl"

    .line 1420
    .line 1421
    invoke-interface {v0, v2}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v2

    .line 1425
    invoke-direct {v1, v0, v2}, Lcom/gj/server/GjBinderWrapper;-><init>(Lcom/yunpan/appmanage/shizuku/IGjAdbFace;Landroid/os/IBinder;)V

    .line 1426
    .line 1427
    .line 1428
    sget v0, Lo6/b;->e:I

    .line 1429
    .line 1430
    const-string v0, "com.fce.misc.proxy.source.ISourceCtrl"

    .line 1431
    .line 1432
    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v0

    .line 1436
    if-eqz v0, :cond_36

    .line 1437
    .line 1438
    instance-of v2, v0, Lo6/c;

    .line 1439
    .line 1440
    if-eqz v2, :cond_36

    .line 1441
    .line 1442
    check-cast v0, Lo6/c;

    .line 1443
    .line 1444
    :goto_9
    move-object v12, v0

    .line 1445
    goto :goto_a

    .line 1446
    :cond_36
    new-instance v0, Lo6/a;

    .line 1447
    .line 1448
    invoke-direct {v0, v1}, Lo6/a;-><init>(Lcom/gj/server/GjBinderWrapper;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1449
    .line 1450
    .line 1451
    goto :goto_9

    .line 1452
    :catch_3
    :goto_a
    :try_start_5
    check-cast v12, Lo6/a;

    .line 1453
    .line 1454
    invoke-virtual {v12}, Lo6/a;->h()Z

    .line 1455
    .line 1456
    .line 1457
    move-result v0

    .line 1458
    if-eqz v0, :cond_37

    .line 1459
    .line 1460
    const-string v0, "\u8bf7\u6c42\u6210\u529f"

    .line 1461
    .line 1462
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1463
    .line 1464
    .line 1465
    goto/16 :goto_e

    .line 1466
    .line 1467
    :catch_4
    move-exception v0

    .line 1468
    goto :goto_b

    .line 1469
    :cond_37
    const-string v0, "\u8bf7\u6c42\u5931\u8d25"

    .line 1470
    .line 1471
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1472
    .line 1473
    .line 1474
    goto/16 :goto_e

    .line 1475
    .line 1476
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1477
    .line 1478
    const-string v2, "\u8bf7\u6c42\u5931\u8d25\uff1a"

    .line 1479
    .line 1480
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1481
    .line 1482
    .line 1483
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v0

    .line 1487
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    .line 1489
    .line 1490
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v0

    .line 1494
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1495
    .line 1496
    .line 1497
    goto/16 :goto_e

    .line 1498
    .line 1499
    :cond_38
    const/16 v8, 0x19

    .line 1500
    .line 1501
    const/16 v14, 0x1d

    .line 1502
    .line 1503
    if-ne v0, v8, :cond_3c

    .line 1504
    .line 1505
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1506
    .line 1507
    if-ge v0, v14, :cond_39

    .line 1508
    .line 1509
    const-string v0, "\u4ec5\u9002\u5408android10\u4ee5\u4e0a"

    .line 1510
    .line 1511
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1512
    .line 1513
    .line 1514
    goto/16 :goto_e

    .line 1515
    .line 1516
    :cond_39
    iget-object v0, v7, Lcom/yunpan/appmanage/ui/ActivityStudy;->F:Lv9/i;

    .line 1517
    .line 1518
    if-eqz v0, :cond_3b

    .line 1519
    .line 1520
    iget v0, v0, Lv9/i;->c:I

    .line 1521
    .line 1522
    if-lt v0, v4, :cond_3a

    .line 1523
    .line 1524
    const-string v0, "\u53ef\u4ee5\u83b7\u53d6root\u6743\u9650"

    .line 1525
    .line 1526
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1527
    .line 1528
    .line 1529
    goto/16 :goto_e

    .line 1530
    .line 1531
    :cond_3a
    const-string v0, "\u65e0\u6cd5\u83b7\u53d6root\u6743\u9650"

    .line 1532
    .line 1533
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1534
    .line 1535
    .line 1536
    goto/16 :goto_e

    .line 1537
    .line 1538
    :cond_3b
    :try_start_6
    new-instance v0, Landroid/content/Intent;

    .line 1539
    .line 1540
    const-class v1, Lcom/yunpan/appmanage/magica/MagicaService;

    .line 1541
    .line 1542
    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1543
    .line 1544
    .line 1545
    invoke-static {v7}, Lo5/g;->n(Lcom/yunpan/appmanage/ui/ActivityStudy;)Ljava/util/concurrent/Executor;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v1

    .line 1549
    iget-object v2, v7, Lcom/yunpan/appmanage/ui/ActivityStudy;->H:Lcom/yunpan/appmanage/carsdk/f;

    .line 1550
    .line 1551
    invoke-static {v7, v0, v1, v2}, Lh4/e0;->s(Lcom/yunpan/appmanage/ui/ActivityStudy;Landroid/content/Intent;Ljava/util/concurrent/Executor;Lcom/yunpan/appmanage/carsdk/f;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1552
    .line 1553
    .line 1554
    goto/16 :goto_e

    .line 1555
    .line 1556
    :catch_5
    move-exception v0

    .line 1557
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1558
    .line 1559
    const-string v2, "\u65e0\u6cd5\u7ed1\u5b9a\u670d\u52a1\uff1a"

    .line 1560
    .line 1561
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v0

    .line 1568
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v0

    .line 1575
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1576
    .line 1577
    .line 1578
    goto/16 :goto_e

    .line 1579
    .line 1580
    :cond_3c
    const-string v8, "adb\u670d\u52a1\u672a\u8fde\u63a5"

    .line 1581
    .line 1582
    if-ne v0, v2, :cond_3f

    .line 1583
    .line 1584
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 1585
    .line 1586
    iget-object v1, v0, Lfa/j;->h:Ljava/lang/String;

    .line 1587
    .line 1588
    const-string v2, "\u5df2\u8fde\u63a5"

    .line 1589
    .line 1590
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1591
    .line 1592
    .line 1593
    move-result v1

    .line 1594
    if-nez v1, :cond_3d

    .line 1595
    .line 1596
    invoke-static {v8}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1597
    .line 1598
    .line 1599
    goto/16 :goto_e

    .line 1600
    .line 1601
    :cond_3d
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 1602
    .line 1603
    .line 1604
    move-result v0

    .line 1605
    if-nez v0, :cond_3e

    .line 1606
    .line 1607
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 1608
    .line 1609
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 1610
    .line 1611
    .line 1612
    move-result v0

    .line 1613
    if-nez v0, :cond_3e

    .line 1614
    .line 1615
    invoke-static {v8}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1616
    .line 1617
    .line 1618
    goto/16 :goto_e

    .line 1619
    .line 1620
    :cond_3e
    invoke-static {v4}, Ld/b;->k0(I)Lmc/g;

    .line 1621
    .line 1622
    .line 1623
    move-result-object v0

    .line 1624
    new-instance v1, Lua/y6;

    .line 1625
    .line 1626
    invoke-direct {v1, v7, v3}, Lua/y6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 1627
    .line 1628
    .line 1629
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 1630
    .line 1631
    .line 1632
    goto/16 :goto_e

    .line 1633
    .line 1634
    :cond_3f
    const/16 v2, 0x1b

    .line 1635
    .line 1636
    if-ne v0, v2, :cond_40

    .line 1637
    .line 1638
    :try_start_7
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 1639
    .line 1640
    iget-object v0, v0, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 1641
    .line 1642
    const-string v1, "com.desaysv.ivi.vds.carinfo"

    .line 1643
    .line 1644
    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1645
    .line 1646
    .line 1647
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityTextDesaysvVds;

    .line 1648
    .line 1649
    invoke-virtual {v7, v0}, Lda/g;->w(Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 1650
    .line 1651
    .line 1652
    goto/16 :goto_e

    .line 1653
    .line 1654
    :catch_6
    const-string v0, "\u4e0d\u652f\u6301\u60a8\u7684\u7cfb\u7edf"

    .line 1655
    .line 1656
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1657
    .line 1658
    .line 1659
    goto/16 :goto_e

    .line 1660
    .line 1661
    :cond_40
    if-ne v0, v13, :cond_41

    .line 1662
    .line 1663
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;

    .line 1664
    .line 1665
    invoke-virtual {v7, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 1666
    .line 1667
    .line 1668
    goto/16 :goto_e

    .line 1669
    .line 1670
    :cond_41
    if-ne v0, v14, :cond_42

    .line 1671
    .line 1672
    new-instance v0, Lha/z6;

    .line 1673
    .line 1674
    new-instance v1, Lua/x6;

    .line 1675
    .line 1676
    invoke-direct {v1, v7, v4}, Lua/x6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 1677
    .line 1678
    .line 1679
    const-string v22, "\u767d\u5929"

    .line 1680
    .line 1681
    const-string v23, "\u9ed1\u591c"

    .line 1682
    .line 1683
    const-string v20, "\u767e\u5ea6\u5730\u56fe\u8f66\u673a\u7248(\u4e0d\u662f\u6c7d\u8f66\u7248)"

    .line 1684
    .line 1685
    const-string v21, ""

    .line 1686
    .line 1687
    move-object/from16 v17, v0

    .line 1688
    .line 1689
    move-object/from16 v18, v7

    .line 1690
    .line 1691
    move-object/from16 v19, v7

    .line 1692
    .line 1693
    move-object/from16 v24, v1

    .line 1694
    .line 1695
    invoke-direct/range {v17 .. v24}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 1696
    .line 1697
    .line 1698
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 1699
    .line 1700
    .line 1701
    goto/16 :goto_e

    .line 1702
    .line 1703
    :cond_42
    const/16 v2, 0x1e

    .line 1704
    .line 1705
    if-ne v0, v2, :cond_45

    .line 1706
    .line 1707
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1708
    .line 1709
    const/16 v1, 0x15

    .line 1710
    .line 1711
    if-ge v0, v1, :cond_43

    .line 1712
    .line 1713
    const-string v0, "\u4ec5\u9002\u5408android5.0\u4ee5\u4e0a"

    .line 1714
    .line 1715
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1716
    .line 1717
    .line 1718
    goto/16 :goto_e

    .line 1719
    .line 1720
    :cond_43
    invoke-virtual {v11}, Lfa/b;->f()Z

    .line 1721
    .line 1722
    .line 1723
    move-result v0

    .line 1724
    if-nez v0, :cond_44

    .line 1725
    .line 1726
    sget-object v0, Lfa/n0;->a:Lfa/o0;

    .line 1727
    .line 1728
    iget-boolean v0, v0, Lfa/o0;->a:Z

    .line 1729
    .line 1730
    if-nez v0, :cond_44

    .line 1731
    .line 1732
    invoke-static {v8}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1733
    .line 1734
    .line 1735
    goto/16 :goto_e

    .line 1736
    .line 1737
    :cond_44
    invoke-static {v4}, Ld/b;->k0(I)Lmc/g;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v0

    .line 1741
    new-instance v1, Lua/y6;

    .line 1742
    .line 1743
    invoke-direct {v1, v7, v4}, Lua/y6;-><init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V

    .line 1744
    .line 1745
    .line 1746
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 1747
    .line 1748
    .line 1749
    goto/16 :goto_e

    .line 1750
    .line 1751
    :cond_45
    if-ne v0, v1, :cond_46

    .line 1752
    .line 1753
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1754
    .line 1755
    const-string v1, "getFilesDir\uff1a"

    .line 1756
    .line 1757
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1758
    .line 1759
    .line 1760
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v1

    .line 1764
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v1

    .line 1768
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1769
    .line 1770
    .line 1771
    const-string v1, "\ngetCacheDir\uff1a"

    .line 1772
    .line 1773
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    .line 1775
    .line 1776
    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 1777
    .line 1778
    .line 1779
    move-result-object v1

    .line 1780
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 1781
    .line 1782
    .line 1783
    move-result-object v1

    .line 1784
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1785
    .line 1786
    .line 1787
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1788
    .line 1789
    .line 1790
    :try_start_8
    const-string v1, "\u5916\u90e8\u5b58\u50a8\uff1a"

    .line 1791
    .line 1792
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    .line 1794
    .line 1795
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v1

    .line 1799
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v1

    .line 1803
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v1

    .line 1807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    .line 1809
    .line 1810
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    .line 1812
    .line 1813
    const-string v1, "getExternalFilesDir\uff1a"

    .line 1814
    .line 1815
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    .line 1817
    .line 1818
    invoke-virtual {v7, v12}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v1

    .line 1822
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v1

    .line 1826
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1827
    .line 1828
    .line 1829
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    .line 1831
    .line 1832
    const-string v1, "getExternalCacheDir\uff1a"

    .line 1833
    .line 1834
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    .line 1836
    .line 1837
    invoke-virtual {v7}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    .line 1838
    .line 1839
    .line 1840
    move-result-object v1

    .line 1841
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v1

    .line 1845
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1846
    .line 1847
    .line 1848
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 1849
    .line 1850
    .line 1851
    goto :goto_c

    .line 1852
    :catch_7
    const-string v1, "\u51fa\u9519\uff0c\u65e0\u6cd5\u83b7\u53d6getExternal"

    .line 1853
    .line 1854
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    .line 1856
    .line 1857
    :goto_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v0

    .line 1861
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 1862
    .line 1863
    .line 1864
    goto/16 :goto_e

    .line 1865
    .line 1866
    :cond_46
    const/16 v1, 0x20

    .line 1867
    .line 1868
    if-ne v0, v1, :cond_47

    .line 1869
    .line 1870
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 1871
    .line 1872
    invoke-static {v0}, Lfa/b;->a(Lcom/yunpan/appmanage/base/AppStart;)Ljava/lang/String;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v0

    .line 1876
    iget-object v1, v7, Lda/g;->A:Lda/g;

    .line 1877
    .line 1878
    invoke-static {v1, v0}, Lif/a;->s(Landroid/content/Context;Ljava/lang/String;)V

    .line 1879
    .line 1880
    .line 1881
    const-string v0, "\u590d\u5236\u5b8c\u6210"

    .line 1882
    .line 1883
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 1884
    .line 1885
    .line 1886
    goto/16 :goto_e

    .line 1887
    .line 1888
    :cond_47
    const/16 v1, 0x21

    .line 1889
    .line 1890
    if-ne v0, v1, :cond_4a

    .line 1891
    .line 1892
    const-string v1, "\u70ed\u70b9\u5bc6\u7801\uff1a"

    .line 1893
    .line 1894
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v0

    .line 1898
    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v0

    .line 1902
    move-object v3, v0

    .line 1903
    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1904
    .line 1905
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v0

    .line 1909
    const-string v5, "getWifiApConfiguration"

    .line 1910
    .line 1911
    invoke-virtual {v0, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1912
    .line 1913
    .line 1914
    move-result-object v0

    .line 1915
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1916
    .line 1917
    .line 1918
    invoke-virtual {v0, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v0

    .line 1922
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1923
    .line 1924
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1925
    .line 1926
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 1927
    .line 1928
    .line 1929
    move-result v5

    .line 1930
    if-nez v5, :cond_48

    .line 1931
    .line 1932
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1933
    .line 1934
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1935
    .line 1936
    .line 1937
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1938
    .line 1939
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    .line 1941
    .line 1942
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v0

    .line 1946
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 1947
    .line 1948
    .line 1949
    goto/16 :goto_e

    .line 1950
    .line 1951
    :catch_8
    move-exception v0

    .line 1952
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1953
    .line 1954
    .line 1955
    :cond_48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1956
    .line 1957
    if-lt v0, v2, :cond_49

    .line 1958
    .line 1959
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v0

    .line 1963
    const-string v2, "getSoftApConfiguration"

    .line 1964
    .line 1965
    invoke-virtual {v0, v2, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1966
    .line 1967
    .line 1968
    move-result-object v0

    .line 1969
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1970
    .line 1971
    .line 1972
    invoke-virtual {v0, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    .line 1974
    .line 1975
    move-result-object v0

    .line 1976
    invoke-static {v0}, Landroidx/media3/exoplayer/video/b0;->i(Ljava/lang/Object;)Landroid/net/wifi/SoftApConfiguration;

    .line 1977
    .line 1978
    .line 1979
    move-result-object v0

    .line 1980
    invoke-static {v0}, Landroidx/media3/exoplayer/video/b0;->p(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;

    .line 1981
    .line 1982
    .line 1983
    move-result-object v2

    .line 1984
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 1985
    .line 1986
    .line 1987
    move-result v2

    .line 1988
    if-nez v2, :cond_49

    .line 1989
    .line 1990
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1991
    .line 1992
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1993
    .line 1994
    .line 1995
    invoke-static {v0}, Landroidx/media3/exoplayer/video/b0;->p(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v0

    .line 1999
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    .line 2001
    .line 2002
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v0

    .line 2006
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 2007
    .line 2008
    .line 2009
    goto/16 :goto_e

    .line 2010
    .line 2011
    :catch_9
    move-exception v0

    .line 2012
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2013
    .line 2014
    .line 2015
    :cond_49
    const-string v0, "\u83b7\u53d6\u5931\u8d25"

    .line 2016
    .line 2017
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 2018
    .line 2019
    .line 2020
    :try_start_b
    new-instance v0, Landroid/content/Intent;

    .line 2021
    .line 2022
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2023
    .line 2024
    .line 2025
    const-string v1, "com.android.settings"

    .line 2026
    .line 2027
    const-string v2, "com.android.settings.TetherSettings"

    .line 2028
    .line 2029
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v0

    .line 2033
    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 2034
    .line 2035
    .line 2036
    goto/16 :goto_e

    .line 2037
    .line 2038
    :catch_a
    :try_start_c
    new-instance v0, Landroid/content/Intent;

    .line 2039
    .line 2040
    const-string v1, "android.settings.WIRELESS_SETTINGS"

    .line 2041
    .line 2042
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2043
    .line 2044
    .line 2045
    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 2046
    .line 2047
    .line 2048
    goto/16 :goto_e

    .line 2049
    .line 2050
    :cond_4a
    const/16 v1, 0x22

    .line 2051
    .line 2052
    if-ne v0, v1, :cond_4c

    .line 2053
    .line 2054
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 2055
    .line 2056
    invoke-virtual {v0}, Lfa/h0;->d()Ljava/lang/String;

    .line 2057
    .line 2058
    .line 2059
    move-result-object v0

    .line 2060
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 2061
    .line 2062
    .line 2063
    move-result v0

    .line 2064
    if-eqz v0, :cond_4b

    .line 2065
    .line 2066
    const-string v0, "\u6ca1\u6709\u5185\u90e8\u5b58\u50a8\uff0c\u65e0\u6cd5\u5bfc\u51fa"

    .line 2067
    .line 2068
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 2069
    .line 2070
    .line 2071
    goto/16 :goto_e

    .line 2072
    .line 2073
    :cond_4b
    new-instance v0, Ljava/util/ArrayList;

    .line 2074
    .line 2075
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2076
    .line 2077
    .line 2078
    const-string v1, "\u5bfc\u51fa\u5185\u5b58\u6e05\u7406(\u7ec8\u7ed3\u8005)\u6e05\u7406\u540d\u5355"

    .line 2079
    .line 2080
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2081
    .line 2082
    .line 2083
    const-string v1, "\u5bfc\u51fa\u7cfb\u7edf\u5e94\u7528\u5305\u540d"

    .line 2084
    .line 2085
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2086
    .line 2087
    .line 2088
    const-string v1, "\u6253\u5305\u6240\u6709\u7cfb\u7edfapp(\u4e0d\u5305\u62eclib)"

    .line 2089
    .line 2090
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2091
    .line 2092
    .line 2093
    const-string v1, "\u5bfc\u51fa\u672c\u6b21\u5f00\u673a\u540e\u7684\u4f7f\u7528\u60c5\u51b5"

    .line 2094
    .line 2095
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2096
    .line 2097
    .line 2098
    new-instance v1, Lha/fa;

    .line 2099
    .line 2100
    new-instance v2, Lua/g6;

    .line 2101
    .line 2102
    invoke-direct {v2, v7, v3, v0}, Lua/g6;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 2103
    .line 2104
    .line 2105
    const/16 v20, 0x0

    .line 2106
    .line 2107
    move-object/from16 v17, v1

    .line 2108
    .line 2109
    move-object/from16 v18, v7

    .line 2110
    .line 2111
    move-object/from16 v19, v7

    .line 2112
    .line 2113
    move-object/from16 v21, v0

    .line 2114
    .line 2115
    move-object/from16 v22, v2

    .line 2116
    .line 2117
    invoke-direct/range {v17 .. v22}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 2118
    .line 2119
    .line 2120
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 2121
    .line 2122
    .line 2123
    goto :goto_e

    .line 2124
    :cond_4c
    const/16 v1, 0x23

    .line 2125
    .line 2126
    if-ne v0, v1, :cond_50

    .line 2127
    .line 2128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2129
    .line 2130
    const/16 v1, 0x15

    .line 2131
    .line 2132
    if-lt v0, v1, :cond_4d

    .line 2133
    .line 2134
    const-string v0, "\u4ec5\u9002\u5408android4.x"

    .line 2135
    .line 2136
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 2137
    .line 2138
    .line 2139
    goto :goto_e

    .line 2140
    :cond_4d
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 2141
    .line 2142
    const-string v1, "activity"

    .line 2143
    .line 2144
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 2145
    .line 2146
    .line 2147
    move-result-object v0

    .line 2148
    check-cast v0, Landroid/app/ActivityManager;

    .line 2149
    .line 2150
    const/16 v1, 0x14

    .line 2151
    .line 2152
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 2153
    .line 2154
    .line 2155
    move-result-object v0

    .line 2156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2157
    .line 2158
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2159
    .line 2160
    .line 2161
    if-eqz v0, :cond_4e

    .line 2162
    .line 2163
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 2164
    .line 2165
    .line 2166
    move-result v2

    .line 2167
    if-nez v2, :cond_4e

    .line 2168
    .line 2169
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2170
    .line 2171
    .line 2172
    move-result-object v0

    .line 2173
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2174
    .line 2175
    .line 2176
    move-result v2

    .line 2177
    if-eqz v2, :cond_4e

    .line 2178
    .line 2179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2180
    .line 2181
    .line 2182
    move-result-object v2

    .line 2183
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2184
    .line 2185
    invoke-static {v2}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 2186
    .line 2187
    .line 2188
    move-result-object v2

    .line 2189
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 2190
    .line 2191
    .line 2192
    move-result-object v2

    .line 2193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2194
    .line 2195
    .line 2196
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2197
    .line 2198
    .line 2199
    goto :goto_d

    .line 2200
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 2201
    .line 2202
    .line 2203
    move-result v0

    .line 2204
    if-nez v0, :cond_4f

    .line 2205
    .line 2206
    const-string v0, "\u6ca1\u6709\u627e\u5230\u4efb\u52a1"

    .line 2207
    .line 2208
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 2209
    .line 2210
    .line 2211
    goto :goto_e

    .line 2212
    :cond_4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2213
    .line 2214
    .line 2215
    move-result-object v0

    .line 2216
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 2217
    .line 2218
    .line 2219
    goto :goto_e

    .line 2220
    :cond_50
    const/16 v1, 0x24

    .line 2221
    .line 2222
    if-ne v0, v1, :cond_51

    .line 2223
    .line 2224
    goto :goto_e

    .line 2225
    :cond_51
    const-string v0, "\u6682\u672a\u5f00\u653e"

    .line 2226
    .line 2227
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 2228
    .line 2229
    .line 2230
    :catch_b
    :cond_52
    :goto_e
    return-void
.end method
