.class public final synthetic Lua/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Landroidx/activity/result/b;
.implements Lc6/e;
.implements Lcom/hjq/permissions/OnPermissionCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityAutomation;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAutomation;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/p0;->a:I

    iput-object p1, p0, Lua/p0;->b:Lcom/yunpan/appmanage/ui/ActivityAutomation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Landroidx/activity/result/a;

    .line 2
    .line 3
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->L:I

    .line 4
    .line 5
    iget-object v0, p0, Lua/p0;->b:Lcom/yunpan/appmanage/ui/ActivityAutomation;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget p1, p1, Landroidx/activity/result/a;->a:I

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne p1, v1, :cond_2

    .line 14
    .line 15
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 16
    .line 17
    iget-object v1, p1, Lcom/yunpan/appmanage/util/w;->L0:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 26
    .line 27
    new-instance v1, Lx9/l3;

    .line 28
    .line 29
    iget-object v2, p1, Lcom/yunpan/appmanage/util/w;->L0:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    const v2, 0x7f080237

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const v2, 0x7f080234

    .line 42
    .line 43
    .line 44
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v4, "\u684c\u9762\u9009\u62e9\uff1a\u7cfb\u7edf\u5f39\u51fa\u684c\u9762\u9009\u62e9\u5668\u65f6\u81ea\u52a8\u5e2e\u60a8\u70b9\u51fb"

    .line 47
    .line 48
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v4, p1, Lcom/yunpan/appmanage/util/w;->L0:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    const-string p1, ""

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v5, "\uff08"

    .line 65
    .line 66
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p1, Lcom/yunpan/appmanage/util/w;->L0:Ljava/lang/String;

    .line 70
    .line 71
    const-string v5, "\uff09"

    .line 72
    .line 73
    invoke-static {p1, v5, v4}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {v1, v2, p1}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x2

    .line 88
    invoke-virtual {v0, p1, v1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "settings put secure accessibility_enabled 1"

    .line 6
    .line 7
    const-string v3, "\u65e0\u6743\u9650\u4fee\u6539"

    .line 8
    .line 9
    const-string v4, "\'"

    .line 10
    .line 11
    const-string v5, "settings put secure enabled_accessibility_services \'"

    .line 12
    .line 13
    const-string v6, "accessibility_enabled"

    .line 14
    .line 15
    sget-object v7, Lwa/v;->a:Lcom/yunpan/appmanage/util/b0;

    .line 16
    .line 17
    const-string v8, ""

    .line 18
    .line 19
    const-class v9, Lcom/yunpan/appmanage/service/AccService;

    .line 20
    .line 21
    const-string v10, "/"

    .line 22
    .line 23
    const-string v12, ":"

    .line 24
    .line 25
    const-string v13, "enabled_accessibility_services"

    .line 26
    .line 27
    iget-object v14, v0, Lua/p0;->b:Lcom/yunpan/appmanage/ui/ActivityAutomation;

    .line 28
    .line 29
    iget v11, v0, Lua/p0;->a:I

    .line 30
    .line 31
    packed-switch v11, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    sget v11, Lcom/yunpan/appmanage/ui/ActivityAutomation;->L:I

    .line 35
    .line 36
    iget-object v11, v14, Lda/g;->A:Lda/g;

    .line 37
    .line 38
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    invoke-static {v11, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    if-eqz v11, :cond_a

    .line 47
    .line 48
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v16

    .line 52
    if-eqz v16, :cond_0

    .line 53
    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_0
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    new-instance v15, Ljava/util/HashSet;

    .line 61
    .line 62
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 63
    .line 64
    .line 65
    array-length v0, v11

    .line 66
    move-object/from16 v17, v8

    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    :goto_0
    if-ge v8, v0, :cond_2

    .line 70
    .line 71
    move/from16 v18, v0

    .line 72
    .line 73
    aget-object v0, v11, v8

    .line 74
    .line 75
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v19

    .line 79
    if-nez v19, :cond_1

    .line 80
    .line 81
    :catch_0
    :goto_1
    const/4 v0, 0x1

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :goto_2
    add-int/2addr v8, v0

    .line 100
    move/from16 v0, v18

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-object v8, v14, Lda/g;->A:Lda/g;

    .line 109
    .line 110
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-eqz v8, :cond_9

    .line 144
    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    if-eqz v10, :cond_4

    .line 159
    .line 160
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    check-cast v10, Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    if-eqz v11, :cond_3

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_3
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-lez v0, :cond_5

    .line 185
    .line 186
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    const/4 v9, 0x1

    .line 195
    sub-int/2addr v8, v9

    .line 196
    const/4 v10, 0x0

    .line 197
    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    goto :goto_4

    .line 202
    :cond_5
    const/4 v9, 0x1

    .line 203
    move-object/from16 v8, v17

    .line 204
    .line 205
    :goto_4
    invoke-virtual {v7, v8}, Lcom/yunpan/appmanage/util/b0;->e(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object v0, v14, Lda/g;->A:Lda/g;

    .line 209
    .line 210
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {v0, v13, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_6

    .line 219
    .line 220
    iget-object v0, v14, Lda/g;->A:Lda/g;

    .line 221
    .line 222
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {v0, v6, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    :cond_6
    if-eqz v0, :cond_7

    .line 231
    .line 232
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 233
    .line 234
    iget-boolean v6, v6, Lcom/yunpan/appmanage/util/w;->S:Z

    .line 235
    .line 236
    if-eqz v6, :cond_9

    .line 237
    .line 238
    :cond_7
    sget-object v6, Lfa/b0;->a:La2/w0;

    .line 239
    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    iget v4, v4, Lfa/a0;->a:I

    .line 263
    .line 264
    if-eqz v4, :cond_8

    .line 265
    .line 266
    if-nez v0, :cond_8

    .line 267
    .line 268
    new-instance v0, Ljava/lang/Exception;

    .line 269
    .line 270
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 274
    .line 275
    .line 276
    const-string v0, "\u5173\u95ed\u5931\u8d25"

    .line 277
    .line 278
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_8
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 283
    .line 284
    .line 285
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 286
    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_a
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 290
    .line 291
    .line 292
    :goto_6
    return-void

    .line 293
    :pswitch_0
    move-object/from16 v17, v8

    .line 294
    .line 295
    sget v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->L:I

    .line 296
    .line 297
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    new-instance v0, Landroid/content/ComponentName;

    .line 301
    .line 302
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    sget-object v8, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 314
    .line 315
    sget-object v8, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 316
    .line 317
    iget-object v9, v8, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 318
    .line 319
    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    .line 320
    .line 321
    .line 322
    move-result v9

    .line 323
    const/4 v11, 0x2

    .line 324
    if-ne v9, v11, :cond_b

    .line 325
    .line 326
    :try_start_1
    iget-object v8, v8, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 327
    .line 328
    const/4 v9, 0x1

    .line 329
    invoke-virtual {v8, v0, v9, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 330
    .line 331
    .line 332
    goto :goto_7

    .line 333
    :catch_1
    :try_start_2
    sget-object v8, Lfa/b0;->a:La2/w0;

    .line 334
    .line 335
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v9

    .line 339
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 340
    .line 341
    .line 342
    const/4 v8, 0x0

    .line 343
    :try_start_3
    invoke-static {v9, v8}, La2/w0;->V(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 344
    .line 345
    .line 346
    goto :goto_7

    .line 347
    :catch_2
    const/4 v8, 0x0

    .line 348
    :catch_3
    const-string v0, "\u5931\u8d25\uff1a\u670d\u52a1\u88ab\u7981\u7528\uff0c\u8bf7\u89e3\u7981"

    .line 349
    .line 350
    invoke-static {v0, v8}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 351
    .line 352
    .line 353
    new-instance v0, Ljava/lang/Exception;

    .line 354
    .line 355
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_c

    .line 362
    .line 363
    :cond_b
    :goto_7
    iget-object v8, v14, Lda/g;->A:Lda/g;

    .line 364
    .line 365
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    invoke-static {v8, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v8

    .line 373
    if-nez v8, :cond_c

    .line 374
    .line 375
    move-object/from16 v8, v17

    .line 376
    .line 377
    :cond_c
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 378
    .line 379
    .line 380
    move-result v9

    .line 381
    if-eqz v9, :cond_d

    .line 382
    .line 383
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    const/4 v9, 0x1

    .line 388
    goto/16 :goto_b

    .line 389
    .line 390
    :cond_d
    new-instance v9, Ljava/util/HashSet;

    .line 391
    .line 392
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v8

    .line 399
    array-length v11, v8

    .line 400
    const/4 v15, 0x0

    .line 401
    :goto_8
    if-ge v15, v11, :cond_f

    .line 402
    .line 403
    move/from16 v18, v11

    .line 404
    .line 405
    aget-object v11, v8, v15

    .line 406
    .line 407
    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 408
    .line 409
    .line 410
    move-result v19

    .line 411
    if-eqz v19, :cond_e

    .line 412
    .line 413
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v11

    .line 417
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 418
    .line 419
    .line 420
    move-result-object v11

    .line 421
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v11

    .line 425
    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 426
    .line 427
    .line 428
    :catch_4
    :cond_e
    const/4 v11, 0x1

    .line 429
    add-int/2addr v15, v11

    .line 430
    move/from16 v11, v18

    .line 431
    .line 432
    goto :goto_8

    .line 433
    :cond_f
    const/4 v11, 0x1

    .line 434
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v8

    .line 438
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v8

    .line 442
    if-eqz v8, :cond_10

    .line 443
    .line 444
    iget-object v0, v14, Lda/g;->A:Lda/g;

    .line 445
    .line 446
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    move-object/from16 v8, v17

    .line 451
    .line 452
    invoke-static {v0, v13, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 453
    .line 454
    .line 455
    iget-object v0, v14, Lda/g;->A:Lda/g;

    .line 456
    .line 457
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-static {v0, v6, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 462
    .line 463
    .line 464
    const-wide/16 v16, 0xde

    .line 465
    .line 466
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 467
    .line 468
    .line 469
    iget-object v0, v14, Lda/g;->A:Lda/g;

    .line 470
    .line 471
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    const/4 v8, 0x0

    .line 476
    invoke-static {v0, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 477
    .line 478
    .line 479
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 480
    .line 481
    .line 482
    iget-object v0, v14, Lda/g;->A:Lda/g;

    .line 483
    .line 484
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-static {v0, v6, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 489
    .line 490
    .line 491
    goto :goto_9

    .line 492
    :cond_10
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 497
    .line 498
    .line 499
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 500
    .line 501
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 505
    .line 506
    .line 507
    move-result-object v8

    .line 508
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 509
    .line 510
    .line 511
    move-result v9

    .line 512
    if-eqz v9, :cond_11

    .line 513
    .line 514
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v9

    .line 518
    check-cast v9, Ljava/lang/String;

    .line 519
    .line 520
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    goto :goto_a

    .line 527
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v8

    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    const/4 v9, 0x1

    .line 536
    sub-int/2addr v0, v9

    .line 537
    const/4 v10, 0x0

    .line 538
    invoke-virtual {v8, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    :goto_b
    invoke-virtual {v7, v0}, Lcom/yunpan/appmanage/util/b0;->e(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    iget-object v7, v14, Lda/g;->A:Lda/g;

    .line 546
    .line 547
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 548
    .line 549
    .line 550
    move-result-object v7

    .line 551
    invoke-static {v7, v13, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 552
    .line 553
    .line 554
    move-result v7

    .line 555
    if-eqz v7, :cond_12

    .line 556
    .line 557
    iget-object v7, v14, Lda/g;->A:Lda/g;

    .line 558
    .line 559
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 560
    .line 561
    .line 562
    move-result-object v7

    .line 563
    invoke-static {v7, v6, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 564
    .line 565
    .line 566
    move-result v7

    .line 567
    :cond_12
    if-eqz v7, :cond_13

    .line 568
    .line 569
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 570
    .line 571
    iget-boolean v6, v6, Lcom/yunpan/appmanage/util/w;->S:Z

    .line 572
    .line 573
    if-eqz v6, :cond_15

    .line 574
    .line 575
    :cond_13
    sget-object v6, Lfa/b0;->a:La2/w0;

    .line 576
    .line 577
    new-instance v8, Ljava/lang/StringBuilder;

    .line 578
    .line 579
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 593
    .line 594
    .line 595
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    iget v0, v0, Lfa/a0;->a:I

    .line 600
    .line 601
    if-eqz v0, :cond_14

    .line 602
    .line 603
    if-nez v7, :cond_14

    .line 604
    .line 605
    new-instance v0, Ljava/lang/Exception;

    .line 606
    .line 607
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 611
    .line 612
    .line 613
    const-string v0, "\u542f\u52a8\u5931\u8d25"

    .line 614
    .line 615
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    goto :goto_c

    .line 619
    :cond_14
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 620
    .line 621
    .line 622
    :cond_15
    const-wide/16 v2, 0x29a

    .line 623
    .line 624
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 625
    .line 626
    .line 627
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 628
    .line 629
    .line 630
    :goto_c
    return-void

    .line 631
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPermissionResult(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityAutomation;->L:I

    .line 2
    .line 3
    iget-object p1, p0, Lua/p0;->b:Lcom/yunpan/appmanage/ui/ActivityAutomation;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p2, Lha/z6;

    .line 16
    .line 17
    const-string v0, "\u9700\u8981\u6388\u6743\u60ac\u6d6e\u7a97\u6743\u9650\u3010\u5728\u4e0a\u5c42\u663e\u793a\u3011\u65b9\u53ef\u4f7f\u7528\n\n\u5982\u679c\u4f60\u5df2\u7ecf\u6388\u6743\u4e86\uff0c\u8bf7\u53d6\u6d88\u6388\u6743\uff0c\u91cd\u65b0\u6388\u6743\u5373\u53ef"

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    invoke-direct {p2, p1, p1, v0, v1}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lha/a4;->show()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 4

    .line 1
    const-string p1, "\u8bf7\u6388\u4e88"

    .line 2
    .line 3
    iget-object v0, p0, Lua/p0;->b:Lcom/yunpan/appmanage/ui/ActivityAutomation;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 6
    .line 7
    invoke-virtual {v1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lx9/l3;

    .line 12
    .line 13
    iget-object v1, v1, Lx9/l3;->b:Ljava/lang/String;

    .line 14
    .line 15
    const-string v2, "\u6309\u952e\u6620\u5c04"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->E:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "\u670d\u52a1\u8fd0\u884c\u4e2d"

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    const-string p1, "\u9700\u8981\u5148\u5f00\u542f\u670d\u52a1(\u603b\u5f00\u5173)"

    .line 42
    .line 43
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :cond_0
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapAcc;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_1
    const-string v2, "\u65e5\u5fd7\u6620\u5c04"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    const-string v3, ""

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    const-string p3, "android.permission.READ_LOGS"

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p2, p3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    new-instance p2, Lha/z6;

    .line 82
    .line 83
    new-instance p3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const v1, 0x7f13002f

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p1, "\u3010\u8bfb\u53d6\u7cfb\u7edf\u65e5\u5fd7\u3011\u6743\u9650"

    .line 103
    .line 104
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-direct {p2, v0, v0, p1, v3}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Lha/a4;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    goto/16 :goto_0

    .line 118
    .line 119
    :catch_0
    :cond_2
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 120
    .line 121
    invoke-virtual {v0, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :cond_3
    const-string p1, "\u4e8b\u4ef6\u6620\u5c04"

    .line 127
    .line 128
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_4

    .line 133
    .line 134
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_0

    .line 140
    .line 141
    :cond_4
    const-string p1, "\u684c\u9762\u9009\u62e9"

    .line 142
    .line 143
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_6

    .line 148
    .line 149
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 150
    .line 151
    iget-object p2, p1, Lcom/yunpan/appmanage/util/w;->L0:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    if-eqz p2, :cond_5

    .line 158
    .line 159
    new-instance p1, Landroid/content/Intent;

    .line 160
    .line 161
    const-class p2, Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;

    .line 162
    .line 163
    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .line 165
    .line 166
    iget-object p2, v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->H:Landroidx/activity/result/d;

    .line 167
    .line 168
    invoke-virtual {p2, p1}, Landroidx/activity/result/d;->a(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_5
    iput-object v3, p1, Lcom/yunpan/appmanage/util/w;->L0:Ljava/lang/String;

    .line 174
    .line 175
    :try_start_1
    iget-object p2, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 176
    .line 177
    const-string v1, "Auto_task_desktop_selected_appName"

    .line 178
    .line 179
    invoke-virtual {p2, v1, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    .line 181
    .line 182
    :catch_1
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 183
    .line 184
    .line 185
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 186
    .line 187
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Lx9/l3;

    .line 192
    .line 193
    const p2, 0x7f080237

    .line 194
    .line 195
    .line 196
    iput p2, p1, Lx9/l3;->a:I

    .line 197
    .line 198
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 199
    .line 200
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Lx9/l3;

    .line 205
    .line 206
    const-string p2, "\u684c\u9762\u9009\u62e9\uff1a\u7cfb\u7edf\u5f39\u51fa\u684c\u9762\u9009\u62e9\u5668\u65f6\u81ea\u52a8\u5e2e\u60a8\u70b9\u51fb"

    .line 207
    .line 208
    iput-object p2, p1, Lx9/l3;->b:Ljava/lang/String;

    .line 209
    .line 210
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityAutomation;->G:Lx9/k3;

    .line 211
    .line 212
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_6
    const-string p1, "\u81ea\u52a8\u70b9\u51fb"

    .line 218
    .line 219
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_7

    .line 224
    .line 225
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityAutoClick;

    .line 226
    .line 227
    invoke-virtual {v0, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_7
    const-string p1, "\u65e5\u4ea7\u8f66\u673a\uff1a\u6620\u5c04\u65b9\u5411\u76d8"

    .line 233
    .line 234
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    if-eqz p1, :cond_8

    .line 239
    .line 240
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissan;

    .line 241
    .line 242
    invoke-virtual {v0, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_8
    const-string p1, "\u60ac\u6d6e\u6309\u94ae"

    .line 248
    .line 249
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    const-string p3, "\u6b64\u529f\u80fd\u8f66\u673a\u4e13\u7528"

    .line 254
    .line 255
    if-eqz p1, :cond_a

    .line 256
    .line 257
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-eqz p1, :cond_9

    .line 262
    .line 263
    invoke-static {p3}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :cond_9
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityFloatButton;

    .line 269
    .line 270
    invoke-virtual {v0, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :cond_a
    const-string p1, "\u4fa7\u8fb9\u624b\u52bf"

    .line 276
    .line 277
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_c

    .line 282
    .line 283
    invoke-virtual {p2}, Landroid/view/View;->isFocused()Z

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    if-eqz p1, :cond_b

    .line 288
    .line 289
    invoke-static {p3}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_b
    const-class p1, Lcom/yunpan/appmanage/ui/ActivitySidebar;

    .line 295
    .line 296
    invoke-virtual {v0, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 297
    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_c
    const-string p1, "\u6377\u9014\u8f66\u673a"

    .line 302
    .line 303
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-eqz p1, :cond_d

    .line 308
    .line 309
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    .line 310
    .line 311
    invoke-virtual {v0, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 312
    .line 313
    .line 314
    goto :goto_0

    .line 315
    :cond_d
    const-string p1, "\u5e7f\u6c7d\u57c3\u5b89"

    .line 316
    .line 317
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    if-eqz p1, :cond_e

    .line 322
    .line 323
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityKeymapAiOnY;

    .line 324
    .line 325
    invoke-virtual {v0, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 326
    .line 327
    .line 328
    goto :goto_0

    .line 329
    :cond_e
    const-string p1, "\u5409\u5229\u661f\u613f"

    .line 330
    .line 331
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-eqz p1, :cond_f

    .line 336
    .line 337
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;

    .line 338
    .line 339
    invoke-virtual {v0, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 340
    .line 341
    .line 342
    goto :goto_0

    .line 343
    :cond_f
    const-string p1, "\u8baf\u98de\u8bed\u97f3"

    .line 344
    .line 345
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    if-eqz p1, :cond_10

    .line 350
    .line 351
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityVoiceIflytek;

    .line 352
    .line 353
    invoke-virtual {v0, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 354
    .line 355
    .line 356
    goto :goto_0

    .line 357
    :cond_10
    const-string p1, "\u5f3a\u5236\u65cb\u8f6c"

    .line 358
    .line 359
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    if-eqz p1, :cond_12

    .line 364
    .line 365
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 366
    .line 367
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 368
    .line 369
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 370
    .line 371
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    invoke-static {p1, p2}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    if-nez p1, :cond_11

    .line 380
    .line 381
    invoke-static {v0}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getSystemAlertWindowPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 386
    .line 387
    .line 388
    move-result-object p2

    .line 389
    invoke-virtual {p1, p2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    new-instance p2, Lua/p0;

    .line 394
    .line 395
    const/4 p3, 0x3

    .line 396
    invoke-direct {p2, v0, p3}, Lua/p0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAutomation;I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1, p2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 400
    .line 401
    .line 402
    goto :goto_0

    .line 403
    :cond_11
    const-class p1, Lcom/yunpan/appmanage/ui/ActivityRotation;

    .line 404
    .line 405
    invoke-virtual {v0, p1}, Lda/g;->w(Ljava/lang/Class;)V

    .line 406
    .line 407
    .line 408
    goto :goto_0

    .line 409
    :cond_12
    const-string p1, "\u529f\u80fd\u5f00\u53d1\u4e2d\uff0c\u656c\u8bf7\u671f\u5f85"

    .line 410
    .line 411
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 412
    .line 413
    .line 414
    :goto_0
    return-void
.end method
