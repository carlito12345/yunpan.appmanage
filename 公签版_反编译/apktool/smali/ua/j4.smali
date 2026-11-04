.class public final synthetic Lua/j4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/la;
.implements Lha/ia;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;II)V
    .locals 0

    .line 1
    iput p3, p0, Lua/j4;->a:I

    iput-object p1, p0, Lua/j4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    iput p2, p0, Lua/j4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 10

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->T:I

    .line 2
    .line 3
    iget-object v3, p0, Lua/j4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    .line 4
    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lua/j4;->c:I

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Lha/ma;

    .line 13
    .line 14
    new-instance v4, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v5, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->R:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v6, Lua/j4;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v6, v3, v0, v1}, Lua/j4;-><init>(Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;II)V

    .line 25
    .line 26
    .line 27
    move-object v1, p1

    .line 28
    move-object v2, v3

    .line 29
    invoke-direct/range {v1 .. v6}, Lha/ma;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/HashSet;Ljava/util/ArrayList;Lha/la;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x1

    .line 37
    if-ne p1, v1, :cond_1

    .line 38
    .line 39
    new-instance p1, Lha/z6;

    .line 40
    .line 41
    iget-object v1, v3, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->F:Lx9/r3;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 48
    .line 49
    iget-object v5, v1, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v9, Ld3/g;

    .line 52
    .line 53
    const/16 v1, 0x10

    .line 54
    .line 55
    invoke-direct {v9, v0, v1, v3}, Ld3/g;-><init>(IILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const-string v7, "\u786e\u5b9a"

    .line 59
    .line 60
    const-string v8, "\u53d6\u6d88"

    .line 61
    .line 62
    const-string v4, "\u66f4\u6539\u540d\u79f0"

    .line 63
    .line 64
    const-string v6, "\u8bf7\u8f93\u5165\u65b0\u540d\u79f0"

    .line 65
    .line 66
    move-object v1, p1

    .line 67
    move-object v2, v3

    .line 68
    invoke-direct/range {v1 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/y6;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "redPointFlag"

    .line 8
    .line 9
    const-string v4, "packageName"

    .line 10
    .line 11
    const-string v5, "isUsed"

    .line 12
    .line 13
    const-string v6, "icon"

    .line 14
    .line 15
    const-string v7, "cloudConfigFlag"

    .line 16
    .line 17
    const-string v8, "className"

    .line 18
    .line 19
    const-string v9, ""

    .line 20
    .line 21
    const-string v10, "appName"

    .line 22
    .line 23
    iget v12, v0, Lua/j4;->c:I

    .line 24
    .line 25
    const-string v13, "com.hozonauto.netahome.mini"

    .line 26
    .line 27
    const-string v15, "shortcut_"

    .line 28
    .line 29
    iget-object v11, v0, Lua/j4;->b:Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;

    .line 30
    .line 31
    iget v14, v0, Lua/j4;->a:I

    .line 32
    .line 33
    packed-switch v14, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    sget v14, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->T:I

    .line 37
    .line 38
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 42
    .line 43
    .line 44
    move-result-object v14

    .line 45
    invoke-virtual {v14}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 46
    .line 47
    .line 48
    move-result-object v14

    .line 49
    invoke-interface {v14, v2}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 50
    .line 51
    .line 52
    move-result-object v14

    .line 53
    if-nez v14, :cond_1

    .line 54
    .line 55
    sget-object v14, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 56
    .line 57
    sget-object v14, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 58
    .line 59
    iget-object v14, v14, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v14

    .line 65
    if-nez v14, :cond_0

    .line 66
    .line 67
    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v14

    .line 71
    if-nez v14, :cond_0

    .line 72
    .line 73
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v13

    .line 77
    if-eqz v13, :cond_7

    .line 78
    .line 79
    :cond_0
    new-instance v14, Lcom/yunpan/appmanage/db/AppBean;

    .line 80
    .line 81
    invoke-direct {v14}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v2, v14, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 85
    .line 86
    iput-object v1, v14, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    iput-boolean v1, v14, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    iput-boolean v1, v14, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 93
    .line 94
    iput-boolean v1, v14, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 95
    .line 96
    iput-boolean v1, v14, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 97
    .line 98
    iput-boolean v1, v14, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 99
    .line 100
    :cond_1
    iget-object v1, v11, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->D:Lx9/r3;

    .line 101
    .line 102
    invoke-virtual {v1, v12, v14}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    new-instance v1, Lz7/o;

    .line 106
    .line 107
    invoke-direct {v1}, Lz7/o;-><init>()V

    .line 108
    .line 109
    .line 110
    const/4 v13, 0x0

    .line 111
    :goto_0
    iget-object v0, v11, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->M:Lz7/o;

    .line 112
    .line 113
    iget-object v0, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-ge v13, v0, :cond_6

    .line 120
    .line 121
    if-ne v13, v12, :cond_5

    .line 122
    .line 123
    :try_start_0
    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_2

    .line 128
    .line 129
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 130
    .line 131
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 134
    .line 135
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_1

    .line 140
    :catch_0
    nop

    .line 141
    goto :goto_2

    .line 142
    :cond_2
    const/4 v0, 0x0

    .line 143
    :goto_1
    move/from16 v16, v12

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :goto_2
    move/from16 v16, v12

    .line 147
    .line 148
    const/4 v0, 0x0

    .line 149
    :goto_3
    new-instance v12, Lz7/s;

    .line 150
    .line 151
    invoke-direct {v12}, Lz7/s;-><init>()V

    .line 152
    .line 153
    .line 154
    move-object/from16 v17, v15

    .line 155
    .line 156
    iget-object v15, v14, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v12, v10, v15}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    if-nez v0, :cond_3

    .line 162
    .line 163
    invoke-virtual {v12, v8, v9}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v12, v8, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :goto_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 179
    .line 180
    invoke-virtual {v12, v7, v0}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 181
    .line 182
    .line 183
    iget-object v15, v11, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->S:Ljava/util/HashMap;

    .line 184
    .line 185
    move-object/from16 v18, v7

    .line 186
    .line 187
    iget-object v7, v14, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v15, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    if-eqz v7, :cond_4

    .line 194
    .line 195
    iget-object v7, v14, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v15, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    check-cast v7, Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v12, v6, v7}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_4
    invoke-virtual {v12, v6, v9}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :goto_5
    invoke-virtual {v12, v5, v0}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, v14, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v12, v4, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 219
    .line 220
    invoke-virtual {v12, v3, v0}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v12}, Lz7/o;->k(Lz7/p;)V

    .line 224
    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_5
    move-object/from16 v18, v7

    .line 228
    .line 229
    move/from16 v16, v12

    .line 230
    .line 231
    move-object/from16 v17, v15

    .line 232
    .line 233
    :goto_6
    iget-object v0, v11, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->M:Lz7/o;

    .line 234
    .line 235
    invoke-virtual {v0, v13}, Lz7/o;->l(I)Lz7/p;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v1, v0}, Lz7/o;->k(Lz7/p;)V

    .line 240
    .line 241
    .line 242
    const/4 v0, 0x1

    .line 243
    add-int/2addr v13, v0

    .line 244
    move/from16 v12, v16

    .line 245
    .line 246
    move-object/from16 v15, v17

    .line 247
    .line 248
    move-object/from16 v7, v18

    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_6
    iput-object v1, v11, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->M:Lz7/o;

    .line 253
    .line 254
    :cond_7
    return-void

    .line 255
    :pswitch_0
    move-object/from16 v18, v7

    .line 256
    .line 257
    move/from16 v16, v12

    .line 258
    .line 259
    move-object/from16 v17, v15

    .line 260
    .line 261
    sget v0, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->T:I

    .line 262
    .line 263
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getAppDao()Lcom/yunpan/appmanage/db/AppDao;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-interface {v0, v2}, Lcom/yunpan/appmanage/db/AppDao;->get_appBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/AppBean;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    if-nez v0, :cond_9

    .line 279
    .line 280
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 281
    .line 282
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 283
    .line 284
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    move-object/from16 v7, v17

    .line 291
    .line 292
    if-nez v0, :cond_8

    .line 293
    .line 294
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-nez v0, :cond_8

    .line 299
    .line 300
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    if-eqz v0, :cond_f

    .line 305
    .line 306
    :cond_8
    new-instance v0, Lcom/yunpan/appmanage/db/AppBean;

    .line 307
    .line 308
    invoke-direct {v0}, Lcom/yunpan/appmanage/db/AppBean;-><init>()V

    .line 309
    .line 310
    .line 311
    iput-object v2, v0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 312
    .line 313
    iput-object v1, v0, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 314
    .line 315
    const/4 v1, 0x1

    .line 316
    iput-boolean v1, v0, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    .line 317
    .line 318
    const/4 v1, 0x0

    .line 319
    iput-boolean v1, v0, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    .line 320
    .line 321
    iput-boolean v1, v0, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    .line 322
    .line 323
    iput-boolean v1, v0, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    .line 324
    .line 325
    iput-boolean v1, v0, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_9
    move-object/from16 v7, v17

    .line 329
    .line 330
    const/4 v1, 0x0

    .line 331
    :goto_7
    iget-object v12, v11, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->F:Lx9/r3;

    .line 332
    .line 333
    move/from16 v13, v16

    .line 334
    .line 335
    invoke-virtual {v12, v13, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    new-instance v12, Lz7/o;

    .line 339
    .line 340
    invoke-direct {v12}, Lz7/o;-><init>()V

    .line 341
    .line 342
    .line 343
    iget-object v14, v11, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->L:Lz7/o;

    .line 344
    .line 345
    invoke-virtual {v14, v13}, Lz7/o;->n(I)V

    .line 346
    .line 347
    .line 348
    const/4 v14, 0x0

    .line 349
    :goto_8
    iget-object v1, v11, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->L:Lz7/o;

    .line 350
    .line 351
    iget-object v1, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 352
    .line 353
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-ge v14, v1, :cond_e

    .line 358
    .line 359
    if-ne v14, v13, :cond_d

    .line 360
    .line 361
    :try_start_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    if-nez v1, :cond_a

    .line 366
    .line 367
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 368
    .line 369
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 370
    .line 371
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 372
    .line 373
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    .line 375
    .line 376
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 377
    goto :goto_9

    .line 378
    :catch_1
    nop

    .line 379
    :cond_a
    const/4 v1, 0x0

    .line 380
    :goto_9
    new-instance v15, Lz7/s;

    .line 381
    .line 382
    invoke-direct {v15}, Lz7/s;-><init>()V

    .line 383
    .line 384
    .line 385
    iget-object v2, v0, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 386
    .line 387
    invoke-virtual {v15, v10, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    if-nez v1, :cond_b

    .line 391
    .line 392
    invoke-virtual {v15, v8, v9}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    goto :goto_a

    .line 396
    :cond_b
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {v15, v8, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    :goto_a
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 408
    .line 409
    move-object/from16 v2, v18

    .line 410
    .line 411
    invoke-virtual {v15, v2, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 412
    .line 413
    .line 414
    iget-object v2, v11, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->S:Ljava/util/HashMap;

    .line 415
    .line 416
    move-object/from16 v17, v7

    .line 417
    .line 418
    iget-object v7, v0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v7

    .line 424
    if-eqz v7, :cond_c

    .line 425
    .line 426
    iget-object v7, v0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 427
    .line 428
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    check-cast v2, Ljava/lang/String;

    .line 433
    .line 434
    invoke-virtual {v15, v6, v2}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    goto :goto_b

    .line 438
    :cond_c
    invoke-virtual {v15, v6, v9}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    :goto_b
    invoke-virtual {v15, v5, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 442
    .line 443
    .line 444
    iget-object v1, v0, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 445
    .line 446
    invoke-virtual {v15, v4, v1}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 450
    .line 451
    invoke-virtual {v15, v3, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v12, v15}, Lz7/o;->k(Lz7/p;)V

    .line 455
    .line 456
    .line 457
    goto :goto_c

    .line 458
    :cond_d
    move-object/from16 v17, v7

    .line 459
    .line 460
    :goto_c
    iget-object v1, v11, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->L:Lz7/o;

    .line 461
    .line 462
    invoke-virtual {v1, v14}, Lz7/o;->l(I)Lz7/p;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v12, v1}, Lz7/o;->k(Lz7/p;)V

    .line 467
    .line 468
    .line 469
    const/4 v1, 0x1

    .line 470
    add-int/2addr v14, v1

    .line 471
    move-object/from16 v2, p2

    .line 472
    .line 473
    move-object/from16 v7, v17

    .line 474
    .line 475
    goto :goto_8

    .line 476
    :cond_e
    iput-object v12, v11, Lcom/yunpan/appmanage/ui/ActivityNezhaWallpaperL;->L:Lz7/o;

    .line 477
    .line 478
    :cond_f
    return-void

    .line 479
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
