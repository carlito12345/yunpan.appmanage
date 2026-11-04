.class public final synthetic Lua/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/la;
.implements Lha/ia;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;II)V
    .locals 0

    .line 1
    iput p3, p0, Lua/b4;->a:I

    iput-object p1, p0, Lua/b4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    iput p2, p0, Lua/b4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    sget v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->R:I

    .line 3
    .line 4
    iget-object v4, p0, Lua/b4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    .line 5
    .line 6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lua/b4;->c:I

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    new-instance p1, Lha/ma;

    .line 14
    .line 15
    new-instance v2, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v3, Lua/b4;

    .line 21
    .line 22
    invoke-direct {v3, v4, v1, v0}, Lua/b4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;II)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, v4, v4, v2, v3}, Lha/ma;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/HashSet;Lha/la;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    new-instance p1, Lha/z6;

    .line 35
    .line 36
    iget-object v0, v4, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->F:Lx9/r3;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/yunpan/appmanage/db/AppBean;

    .line 43
    .line 44
    iget-object v6, v0, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v10, Ld3/g;

    .line 47
    .line 48
    const/16 v0, 0xf

    .line 49
    .line 50
    invoke-direct {v10, v1, v0, v4}, Ld3/g;-><init>(IILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const-string v8, "\u786e\u5b9a"

    .line 54
    .line 55
    const-string v9, "\u53d6\u6d88"

    .line 56
    .line 57
    const-string v5, "\u66f4\u6539\u540d\u79f0"

    .line 58
    .line 59
    const-string v7, "\u8bf7\u8f93\u5165\u65b0\u540d\u79f0"

    .line 60
    .line 61
    move-object v2, p1

    .line 62
    move-object v3, v4

    .line 63
    invoke-direct/range {v2 .. v10}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "dock_map"

    .line 6
    .line 7
    const-string v3, "dock_applist"

    .line 8
    .line 9
    const-string v4, "dock_system"

    .line 10
    .line 11
    const-string v5, "icon"

    .line 12
    .line 13
    const-string v6, "com.hozon.settings"

    .line 14
    .line 15
    const-string v7, "cloudConfigFlag"

    .line 16
    .line 17
    const-string v8, "com.hpplay.happyplay.aw"

    .line 18
    .line 19
    const-string v9, "com.desaysv.ep40_gamecenter_portrait"

    .line 20
    .line 21
    const-string v10, "com.hozonauto.localradiomusic"

    .line 22
    .line 23
    const-string v11, "com.bilibili.bilithings"

    .line 24
    .line 25
    const-string v12, "com.hozonauto.netahome"

    .line 26
    .line 27
    const-string v13, "com.hozonauto.launcher"

    .line 28
    .line 29
    const-string v14, "com.hozonauto.panoramic.avm"

    .line 30
    .line 31
    const-string v15, "className"

    .line 32
    .line 33
    move-object/from16 p1, v2

    .line 34
    .line 35
    const-string v2, ""

    .line 36
    .line 37
    move-object/from16 v16, v3

    .line 38
    .line 39
    const-string v3, "appName"

    .line 40
    .line 41
    move-object/from16 v17, v4

    .line 42
    .line 43
    iget v4, v0, Lua/b4;->c:I

    .line 44
    .line 45
    const-string v18, "\u5c0f\u7a0b\u5e8f"

    .line 46
    .line 47
    move-object/from16 v19, v5

    .line 48
    .line 49
    const-string v5, "com.hozonauto.netahome.mini"

    .line 50
    .line 51
    move-object/from16 v21, v6

    .line 52
    .line 53
    iget-object v6, v0, Lua/b4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;

    .line 54
    .line 55
    move-object/from16 v22, v7

    .line 56
    .line 57
    iget v7, v0, Lua/b4;->a:I

    .line 58
    .line 59
    packed-switch v7, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    sget v7, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->R:I

    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v7}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-interface {v7, v1}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    if-nez v7, :cond_2

    .line 80
    .line 81
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 82
    .line 83
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 84
    .line 85
    iget-object v0, v7, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_0

    .line 92
    .line 93
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_f

    .line 98
    .line 99
    :cond_0
    new-instance v0, Lcom/yunpan/appmanage/db/AppBean;

    .line 100
    .line 101
    invoke-direct {v0}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v1, v0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 105
    .line 106
    move-object/from16 v23, v2

    .line 107
    .line 108
    iget-object v2, v7, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_1

    .line 115
    .line 116
    iget-object v2, v7, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    move-object/from16 v2, v18

    .line 120
    .line 121
    :goto_0
    iput-object v2, v0, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 122
    .line 123
    const/4 v2, 0x1

    .line 124
    iput-boolean v2, v0, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    iput-boolean v2, v0, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 128
    .line 129
    iput-boolean v2, v0, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 130
    .line 131
    iput-boolean v2, v0, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 132
    .line 133
    iput-boolean v2, v0, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 134
    .line 135
    move-object v7, v0

    .line 136
    goto :goto_1

    .line 137
    :cond_2
    move-object/from16 v23, v2

    .line 138
    .line 139
    :goto_1
    iget-object v0, v6, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->F:Lx9/r3;

    .line 140
    .line 141
    invoke-virtual {v0, v4, v7}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Lz7/o;

    .line 145
    .line 146
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 147
    .line 148
    .line 149
    iget-object v2, v6, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 150
    .line 151
    invoke-virtual {v2, v4}, Lz7/o;->n(I)V

    .line 152
    .line 153
    .line 154
    move-object/from16 v18, v0

    .line 155
    .line 156
    const/4 v2, 0x0

    .line 157
    :goto_2
    iget-object v0, v6, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 158
    .line 159
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-ge v2, v0, :cond_e

    .line 166
    .line 167
    if-ne v2, v4, :cond_d

    .line 168
    .line 169
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 170
    .line 171
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 172
    .line 173
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 182
    .line 183
    .line 184
    move-result-object v24

    .line 185
    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    move/from16 v24, v4

    .line 192
    .line 193
    new-instance v4, Lz7/s;

    .line 194
    .line 195
    invoke-direct {v4}, Lz7/s;-><init>()V

    .line 196
    .line 197
    .line 198
    iget-object v1, v7, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v4, v3, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v1, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_3

    .line 210
    .line 211
    iget-object v1, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-nez v1, :cond_3

    .line 218
    .line 219
    iget-object v1, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-nez v1, :cond_3

    .line 226
    .line 227
    iget-object v1, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-nez v1, :cond_3

    .line 234
    .line 235
    iget-object v1, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 236
    .line 237
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_3

    .line 242
    .line 243
    iget-object v1, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-nez v1, :cond_3

    .line 250
    .line 251
    iget-object v1, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-nez v1, :cond_3

    .line 258
    .line 259
    iget-object v1, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_4

    .line 266
    .line 267
    :cond_3
    move-object/from16 v0, v23

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_4
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v4, v15, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    move-object/from16 v0, v23

    .line 282
    .line 283
    goto :goto_4

    .line 284
    :goto_3
    invoke-virtual {v4, v15, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    :goto_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 288
    .line 289
    move-object/from16 v23, v15

    .line 290
    .line 291
    move-object/from16 v15, v22

    .line 292
    .line 293
    invoke-virtual {v4, v15, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 294
    .line 295
    .line 296
    iget-object v15, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 297
    .line 298
    move-object/from16 v25, v8

    .line 299
    .line 300
    move-object/from16 v8, v21

    .line 301
    .line 302
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v15

    .line 306
    if-eqz v15, :cond_5

    .line 307
    .line 308
    move-object/from16 v21, v8

    .line 309
    .line 310
    move-object/from16 v8, v17

    .line 311
    .line 312
    move-object/from16 v15, v19

    .line 313
    .line 314
    invoke-virtual {v4, v15, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    :goto_5
    move-object/from16 v19, v9

    .line 318
    .line 319
    goto/16 :goto_6

    .line 320
    .line 321
    :cond_5
    move-object/from16 v21, v8

    .line 322
    .line 323
    move-object/from16 v15, v19

    .line 324
    .line 325
    iget-object v8, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v8

    .line 331
    if-eqz v8, :cond_6

    .line 332
    .line 333
    move-object/from16 v8, v16

    .line 334
    .line 335
    invoke-virtual {v4, v15, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    goto :goto_5

    .line 339
    :cond_6
    iget-object v8, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v8

    .line 345
    if-eqz v8, :cond_7

    .line 346
    .line 347
    move-object/from16 v8, p1

    .line 348
    .line 349
    invoke-virtual {v4, v15, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    goto :goto_5

    .line 353
    :cond_7
    iget-object v8, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v8

    .line 359
    if-eqz v8, :cond_8

    .line 360
    .line 361
    const-string v8, "allapps_icon_avm_idle"

    .line 362
    .line 363
    invoke-virtual {v4, v15, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    goto :goto_5

    .line 367
    :cond_8
    iget-object v8, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 368
    .line 369
    move-object/from16 v19, v9

    .line 370
    .line 371
    const-string v9, "com.hozonauto.panoramic"

    .line 372
    .line 373
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v8

    .line 377
    if-eqz v8, :cond_9

    .line 378
    .line 379
    const-string v8, "allapps_icon_panoramic_idle"

    .line 380
    .line 381
    invoke-virtual {v4, v15, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    goto :goto_6

    .line 385
    :cond_9
    iget-object v8, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 386
    .line 387
    const-string v9, "com.tencent.qqlive.audiobox"

    .line 388
    .line 389
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v8

    .line 393
    if-eqz v8, :cond_a

    .line 394
    .line 395
    const-string v8, "allapps_icon_video_xlarge_idle"

    .line 396
    .line 397
    invoke-virtual {v4, v15, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    goto :goto_6

    .line 401
    :cond_a
    iget-object v8, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 402
    .line 403
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v8

    .line 407
    if-eqz v8, :cond_b

    .line 408
    .line 409
    const-string v8, "allapps_icon_xiaochengxu_xlarge_idle"

    .line 410
    .line 411
    invoke-virtual {v4, v15, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    goto :goto_6

    .line 415
    :cond_b
    iget-object v8, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 416
    .line 417
    const-string v9, "com.bytedance.byteautoservice"

    .line 418
    .line 419
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v8

    .line 423
    if-eqz v8, :cond_c

    .line 424
    .line 425
    const-string v8, "allapps_icon_mountainfire_xlarge_idle"

    .line 426
    .line 427
    invoke-virtual {v4, v15, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    goto :goto_6

    .line 431
    :cond_c
    invoke-virtual {v4, v15, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    :goto_6
    const-string v8, "isUsed"

    .line 435
    .line 436
    invoke-virtual {v4, v8, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 437
    .line 438
    .line 439
    const-string v1, "packageName"

    .line 440
    .line 441
    iget-object v8, v7, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {v4, v1, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 447
    .line 448
    const-string v8, "redPointFlag"

    .line 449
    .line 450
    invoke-virtual {v4, v8, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 451
    .line 452
    .line 453
    move-object/from16 v1, v18

    .line 454
    .line 455
    invoke-virtual {v1, v4}, Lz7/o;->k(Lz7/p;)V

    .line 456
    .line 457
    .line 458
    goto :goto_7

    .line 459
    :cond_d
    move/from16 v24, v4

    .line 460
    .line 461
    move-object/from16 v25, v8

    .line 462
    .line 463
    move-object/from16 v1, v18

    .line 464
    .line 465
    move-object/from16 v0, v23

    .line 466
    .line 467
    move-object/from16 v23, v15

    .line 468
    .line 469
    move-object/from16 v15, v19

    .line 470
    .line 471
    move-object/from16 v19, v9

    .line 472
    .line 473
    :goto_7
    iget-object v4, v6, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 474
    .line 475
    invoke-virtual {v4, v2}, Lz7/o;->l(I)Lz7/p;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    invoke-virtual {v1, v4}, Lz7/o;->k(Lz7/p;)V

    .line 480
    .line 481
    .line 482
    const/4 v4, 0x1

    .line 483
    add-int/2addr v2, v4

    .line 484
    move-object/from16 v18, v1

    .line 485
    .line 486
    move-object/from16 v9, v19

    .line 487
    .line 488
    move/from16 v4, v24

    .line 489
    .line 490
    move-object/from16 v8, v25

    .line 491
    .line 492
    move-object/from16 v1, p2

    .line 493
    .line 494
    move-object/from16 v19, v15

    .line 495
    .line 496
    move-object/from16 v15, v23

    .line 497
    .line 498
    move-object/from16 v23, v0

    .line 499
    .line 500
    goto/16 :goto_2

    .line 501
    .line 502
    :cond_e
    move-object/from16 v1, v18

    .line 503
    .line 504
    iput-object v1, v6, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->L:Lz7/o;

    .line 505
    .line 506
    :cond_f
    return-void

    .line 507
    :pswitch_0
    move-object v0, v2

    .line 508
    move/from16 v24, v4

    .line 509
    .line 510
    move-object/from16 v25, v8

    .line 511
    .line 512
    move-object/from16 v23, v15

    .line 513
    .line 514
    move-object/from16 v15, v19

    .line 515
    .line 516
    move-object/from16 v19, v9

    .line 517
    .line 518
    sget v1, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->R:I

    .line 519
    .line 520
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    invoke-virtual {v1}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    move-object/from16 v2, p2

    .line 532
    .line 533
    invoke-interface {v1, v2}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    if-nez v1, :cond_12

    .line 538
    .line 539
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 540
    .line 541
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 542
    .line 543
    iget-object v4, v1, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 544
    .line 545
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result v4

    .line 549
    if-nez v4, :cond_10

    .line 550
    .line 551
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    if-eqz v4, :cond_20

    .line 556
    .line 557
    :cond_10
    new-instance v4, Lcom/yunpan/appmanage/db/AppBean;

    .line 558
    .line 559
    invoke-direct {v4}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 560
    .line 561
    .line 562
    iput-object v2, v4, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 563
    .line 564
    iget-object v7, v1, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 565
    .line 566
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    move-result v7

    .line 570
    if-eqz v7, :cond_11

    .line 571
    .line 572
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 573
    .line 574
    goto :goto_8

    .line 575
    :cond_11
    move-object/from16 v1, v18

    .line 576
    .line 577
    :goto_8
    iput-object v1, v4, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 578
    .line 579
    const/4 v1, 0x1

    .line 580
    iput-boolean v1, v4, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 581
    .line 582
    const/4 v7, 0x0

    .line 583
    iput-boolean v7, v4, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 584
    .line 585
    iput-boolean v7, v4, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 586
    .line 587
    iput-boolean v7, v4, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 588
    .line 589
    iput-boolean v7, v4, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 590
    .line 591
    move-object v1, v4

    .line 592
    goto :goto_9

    .line 593
    :cond_12
    const/4 v7, 0x0

    .line 594
    :goto_9
    iget-object v4, v6, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->D:Lx9/r3;

    .line 595
    .line 596
    move/from16 v8, v24

    .line 597
    .line 598
    invoke-virtual {v4, v8, v1}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 599
    .line 600
    .line 601
    new-instance v4, Lz7/o;

    .line 602
    .line 603
    invoke-direct {v4}, Lz7/o;-><init>()V

    .line 604
    .line 605
    .line 606
    :goto_a
    iget-object v9, v6, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 607
    .line 608
    iget-object v9, v9, Lz7/o;->a:Ljava/util/ArrayList;

    .line 609
    .line 610
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 611
    .line 612
    .line 613
    move-result v9

    .line 614
    if-ge v7, v9, :cond_1f

    .line 615
    .line 616
    if-ne v7, v8, :cond_1e

    .line 617
    .line 618
    sget-object v9, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 619
    .line 620
    sget-object v9, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 621
    .line 622
    iget-object v9, v9, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 623
    .line 624
    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    .line 626
    .line 627
    move-result-object v9

    .line 628
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 629
    .line 630
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 631
    .line 632
    .line 633
    move-result-object v20

    .line 634
    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 638
    .line 639
    .line 640
    new-instance v2, Lz7/s;

    .line 641
    .line 642
    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 643
    .line 644
    .line 645
    move/from16 v24, v8

    .line 646
    .line 647
    iget-object v8, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 648
    .line 649
    invoke-virtual {v2, v3, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    iget-object v8, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 653
    .line 654
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    move-result v8

    .line 658
    if-nez v8, :cond_15

    .line 659
    .line 660
    iget-object v8, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 661
    .line 662
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result v8

    .line 666
    if-nez v8, :cond_15

    .line 667
    .line 668
    iget-object v8, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 669
    .line 670
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v8

    .line 674
    if-nez v8, :cond_15

    .line 675
    .line 676
    iget-object v8, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 677
    .line 678
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v8

    .line 682
    if-nez v8, :cond_15

    .line 683
    .line 684
    iget-object v8, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 685
    .line 686
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    move-result v8

    .line 690
    if-nez v8, :cond_15

    .line 691
    .line 692
    iget-object v8, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 693
    .line 694
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    move-result v8

    .line 698
    if-nez v8, :cond_15

    .line 699
    .line 700
    iget-object v8, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 701
    .line 702
    move-object/from16 v18, v3

    .line 703
    .line 704
    move-object/from16 v3, v19

    .line 705
    .line 706
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v8

    .line 710
    if-nez v8, :cond_14

    .line 711
    .line 712
    iget-object v8, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 713
    .line 714
    move-object/from16 v19, v3

    .line 715
    .line 716
    move-object/from16 v3, v25

    .line 717
    .line 718
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    move-result v8

    .line 722
    if-eqz v8, :cond_13

    .line 723
    .line 724
    move-object/from16 v9, v23

    .line 725
    .line 726
    goto :goto_c

    .line 727
    :cond_13
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 728
    .line 729
    .line 730
    move-result-object v8

    .line 731
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v8

    .line 735
    move-object/from16 v9, v23

    .line 736
    .line 737
    invoke-virtual {v2, v9, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    .line 739
    .line 740
    goto :goto_d

    .line 741
    :cond_14
    move-object/from16 v19, v3

    .line 742
    .line 743
    :goto_b
    move-object/from16 v9, v23

    .line 744
    .line 745
    move-object/from16 v3, v25

    .line 746
    .line 747
    goto :goto_c

    .line 748
    :cond_15
    move-object/from16 v18, v3

    .line 749
    .line 750
    goto :goto_b

    .line 751
    :goto_c
    invoke-virtual {v2, v9, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    :goto_d
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 755
    .line 756
    move-object/from16 v25, v3

    .line 757
    .line 758
    move-object/from16 v3, v22

    .line 759
    .line 760
    invoke-virtual {v2, v3, v8}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 761
    .line 762
    .line 763
    iget-object v3, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 764
    .line 765
    move-object/from16 v23, v9

    .line 766
    .line 767
    move-object/from16 v9, v21

    .line 768
    .line 769
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    move-result v3

    .line 773
    if-eqz v3, :cond_16

    .line 774
    .line 775
    move-object/from16 v3, v17

    .line 776
    .line 777
    invoke-virtual {v2, v15, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    :goto_e
    move-object/from16 v21, v9

    .line 781
    .line 782
    goto/16 :goto_f

    .line 783
    .line 784
    :cond_16
    iget-object v3, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 785
    .line 786
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 787
    .line 788
    .line 789
    move-result v3

    .line 790
    if-eqz v3, :cond_17

    .line 791
    .line 792
    move-object/from16 v3, v16

    .line 793
    .line 794
    invoke-virtual {v2, v15, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    goto :goto_e

    .line 798
    :cond_17
    iget-object v3, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 799
    .line 800
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    move-result v3

    .line 804
    if-eqz v3, :cond_18

    .line 805
    .line 806
    move-object/from16 v3, p1

    .line 807
    .line 808
    invoke-virtual {v2, v15, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    goto :goto_e

    .line 812
    :cond_18
    iget-object v3, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 813
    .line 814
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    move-result v3

    .line 818
    if-eqz v3, :cond_19

    .line 819
    .line 820
    const-string v3, "allapps_icon_avm_idle"

    .line 821
    .line 822
    invoke-virtual {v2, v15, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    goto :goto_e

    .line 826
    :cond_19
    iget-object v3, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 827
    .line 828
    move-object/from16 v21, v9

    .line 829
    .line 830
    const-string v9, "com.hozonauto.panoramic"

    .line 831
    .line 832
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 833
    .line 834
    .line 835
    move-result v3

    .line 836
    if-eqz v3, :cond_1a

    .line 837
    .line 838
    const-string v3, "allapps_icon_panoramic_idle"

    .line 839
    .line 840
    invoke-virtual {v2, v15, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    goto :goto_f

    .line 844
    :cond_1a
    iget-object v3, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 845
    .line 846
    const-string v9, "com.tencent.qqlive.audiobox"

    .line 847
    .line 848
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    move-result v3

    .line 852
    if-eqz v3, :cond_1b

    .line 853
    .line 854
    const-string v3, "allapps_icon_video_xlarge_idle"

    .line 855
    .line 856
    invoke-virtual {v2, v15, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    goto :goto_f

    .line 860
    :cond_1b
    iget-object v3, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 861
    .line 862
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 863
    .line 864
    .line 865
    move-result v3

    .line 866
    if-eqz v3, :cond_1c

    .line 867
    .line 868
    const-string v3, "allapps_icon_xiaochengxu_xlarge_idle"

    .line 869
    .line 870
    invoke-virtual {v2, v15, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    goto :goto_f

    .line 874
    :cond_1c
    iget-object v3, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 875
    .line 876
    const-string v9, "com.bytedance.byteautoservice"

    .line 877
    .line 878
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    move-result v3

    .line 882
    if-eqz v3, :cond_1d

    .line 883
    .line 884
    const-string v3, "allapps_icon_mountainfire_xlarge_idle"

    .line 885
    .line 886
    invoke-virtual {v2, v15, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    goto :goto_f

    .line 890
    :cond_1d
    invoke-virtual {v2, v15, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    :goto_f
    const-string v3, "isUsed"

    .line 894
    .line 895
    invoke-virtual {v2, v3, v8}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 896
    .line 897
    .line 898
    const-string v3, "packageName"

    .line 899
    .line 900
    iget-object v8, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 901
    .line 902
    invoke-virtual {v2, v3, v8}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    .line 904
    .line 905
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 906
    .line 907
    const-string v8, "redPointFlag"

    .line 908
    .line 909
    invoke-virtual {v2, v8, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 910
    .line 911
    .line 912
    invoke-virtual {v4, v2}, Lz7/o;->k(Lz7/p;)V

    .line 913
    .line 914
    .line 915
    goto :goto_10

    .line 916
    :cond_1e
    move-object/from16 v18, v3

    .line 917
    .line 918
    move/from16 v24, v8

    .line 919
    .line 920
    :goto_10
    iget-object v2, v6, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 921
    .line 922
    invoke-virtual {v2, v7}, Lz7/o;->l(I)Lz7/p;

    .line 923
    .line 924
    .line 925
    move-result-object v2

    .line 926
    invoke-virtual {v4, v2}, Lz7/o;->k(Lz7/p;)V

    .line 927
    .line 928
    .line 929
    const/4 v2, 0x1

    .line 930
    add-int/2addr v7, v2

    .line 931
    move-object/from16 v2, p2

    .line 932
    .line 933
    move-object/from16 v3, v18

    .line 934
    .line 935
    move/from16 v8, v24

    .line 936
    .line 937
    goto/16 :goto_a

    .line 938
    .line 939
    :cond_1f
    iput-object v4, v6, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaper;->M:Lz7/o;

    .line 940
    .line 941
    :cond_20
    return-void

    .line 942
    nop

    .line 943
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
