.class public final synthetic Lua/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lec/d;
.implements Lha/n1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityLaboratory;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/v3;->a:I

    iput-object p1, p0, Lua/v3;->b:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 2
    .line 3
    iget-object v0, p0, Lua/v3;->b:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "System"

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lda/g;->A:Lda/g;

    .line 17
    .line 18
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteSettingsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object p1, v0, Lda/g;->A:Lda/g;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getWriteSettingsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance p2, Lua/v0;

    .line 43
    .line 44
    const/16 p3, 0x11

    .line 45
    .line 46
    invoke-direct {p2, p3}, Lua/v0;-><init>(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v0}, Lif/a;->b0(Landroid/content/Context;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    const-string p1, "\u8bf7\u5148\u6388\u4e88\u6211\u3010\u4fee\u6539\u7cfb\u7edf\u5b89\u5168\u8bbe\u7f6e\u3011\u6743\u9650"

    .line 60
    .line 61
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :try_start_0
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->G:Landroid/content/ContentResolver;

    .line 66
    .line 67
    invoke-static {v0, p1, p2, p3, p4}, Lcom/bumptech/glide/d;->D(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string p1, "\u8bbe\u7f6e\u6210\u529f"

    .line 71
    .line 72
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    const-string p1, "\u5931\u8d25\uff1a\u65e0\u6743\u9650"

    .line 77
    .line 78
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    iget-object v3, v1, Lua/v3;->b:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    iget v6, v1, Lua/v3;->a:I

    .line 11
    .line 12
    packed-switch v6, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    sget v4, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v4, "\u5199\u5165\u6587\u4ef6\uff1asu"

    .line 21
    .line 22
    invoke-virtual {v2, v4}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 26
    .line 27
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v7, 0x15

    .line 30
    .line 31
    if-lt v6, v7, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lg7/d;->w()[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    aget-object v4, v4, v5

    .line 38
    .line 39
    :cond_0
    const-string v6, "v7a"

    .line 40
    .line 41
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    iget-object v4, v3, Lda/g;->A:Lda/g;

    .line 48
    .line 49
    invoke-virtual {v4}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const v6, 0x7f120021

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const-string v6, "v8a"

    .line 62
    .line 63
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_2

    .line 68
    .line 69
    iget-object v4, v3, Lda/g;->A:Lda/g;

    .line 70
    .line 71
    invoke-virtual {v4}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const v6, 0x7f120022

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const-string v6, "x86_64"

    .line 84
    .line 85
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_3

    .line 90
    .line 91
    iget-object v4, v3, Lda/g;->A:Lda/g;

    .line 92
    .line 93
    invoke-virtual {v4}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    const v6, 0x7f120023

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    const-string v6, "x86"

    .line 106
    .line 107
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_4

    .line 112
    .line 113
    iget-object v4, v3, Lda/g;->A:Lda/g;

    .line 114
    .line 115
    invoke-virtual {v4}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    const v6, 0x7f120024

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    goto :goto_0

    .line 127
    :cond_4
    iget-object v4, v3, Lda/g;->A:Lda/g;

    .line 128
    .line 129
    invoke-virtual {v4}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    const v6, 0x7f120020

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    :goto_0
    new-instance v6, Ljava/io/FileOutputStream;

    .line 141
    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object v8, v3, Lda/g;->A:Lda/g;

    .line 148
    .line 149
    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v8, "/su"

    .line 157
    .line 158
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const/high16 v7, 0x100000

    .line 169
    .line 170
    new-array v7, v7, [B

    .line 171
    .line 172
    :goto_1
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-eq v8, v0, :cond_5

    .line 177
    .line 178
    invoke-virtual {v6, v7, v5, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 186
    .line 187
    .line 188
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 189
    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v8, "dd if=\'"

    .line 193
    .line 194
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object v8, v3, Lda/g;->A:Lda/g;

    .line 198
    .line 199
    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v8, "/su\' of=\'/system/bin/\'"

    .line 207
    .line 208
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    invoke-static {v6}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    new-instance v6, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v8, "mv \'"

    .line 225
    .line 226
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v9, v3, Lda/g;->A:Lda/g;

    .line 230
    .line 231
    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v9, "/su\' \'/system/xbin/\'"

    .line 239
    .line 240
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-static {v6}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 248
    .line 249
    .line 250
    iget v4, v4, Lfa/a0;->a:I

    .line 251
    .line 252
    if-eqz v4, :cond_6

    .line 253
    .line 254
    const-string v0, "\u65e0\u6743\u5199\u5165\uff0c\u8bf7\u5148\u5173\u95ed\u5206\u533a\u68c0\u6d4b"

    .line 255
    .line 256
    :goto_2
    invoke-static {v0, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_6

    .line 260
    .line 261
    :cond_6
    const-string v4, "chmod 6755 \'/system/bin/su\'"

    .line 262
    .line 263
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    const-string v6, "chmod 6755 \'/system/xbin/su\'"

    .line 268
    .line 269
    invoke-static {v6}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 270
    .line 271
    .line 272
    iget v4, v4, Lfa/a0;->a:I

    .line 273
    .line 274
    const-string v6, "\u65e0\u6cd5\u66f4\u6539\u6743\u9650\uff0c\u4e0d\u9002\u5e94\u6b64\u7cfb\u7edf"

    .line 275
    .line 276
    if-eqz v4, :cond_7

    .line 277
    .line 278
    :goto_3
    invoke-static {v6, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_6

    .line 282
    .line 283
    :cond_7
    const-string v4, "\u4e0b\u8f7d\u4e2d\uff1aSuperuser.apk"

    .line 284
    .line 285
    invoke-virtual {v2, v4}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    :try_start_0
    const-string v4, "https://yunupdata-1318501551.cos.ap-guangzhou.myqcloud.com/Superuser.apk"

    .line 289
    .line 290
    new-instance v9, Ll9/a;

    .line 291
    .line 292
    invoke-direct {v9, v4}, Ll9/a;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    const-string v4, "User-Agent"

    .line 296
    .line 297
    const-string v10, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76"

    .line 298
    .line 299
    iget-object v11, v9, Lm9/e;->i:Lk9/a;

    .line 300
    .line 301
    invoke-virtual {v11, v4, v10}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v9}, Lm9/e;->a()Lokhttp3/Response;

    .line 305
    .line 306
    .line 307
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    goto :goto_4

    .line 309
    :catch_0
    const/4 v4, 0x0

    .line 310
    :goto_4
    const-string v9, "\u4e0b\u8f7d\u5931\u8d25\uff1aSuperuser.apk"

    .line 311
    .line 312
    if-nez v4, :cond_8

    .line 313
    .line 314
    :catch_1
    invoke-static {v9, v2}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_6

    .line 318
    .line 319
    :cond_8
    :try_start_1
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    if-nez v4, :cond_9

    .line 324
    .line 325
    new-instance v0, Ljava/lang/Exception;

    .line 326
    .line 327
    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_6

    .line 334
    .line 335
    :cond_9
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    new-instance v10, Ljava/io/FileOutputStream;

    .line 340
    .line 341
    new-instance v11, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    iget-object v12, v3, Lda/g;->A:Lda/g;

    .line 347
    .line 348
    invoke-virtual {v12}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 349
    .line 350
    .line 351
    move-result-object v12

    .line 352
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v12, "/Superuser.apk"

    .line 356
    .line 357
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v11

    .line 364
    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    new-instance v11, Ljava/io/BufferedInputStream;

    .line 368
    .line 369
    invoke-direct {v11, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 370
    .line 371
    .line 372
    new-instance v12, Ljava/io/BufferedOutputStream;

    .line 373
    .line 374
    invoke-direct {v12, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 375
    .line 376
    .line 377
    :goto_5
    invoke-virtual {v11, v7}, Ljava/io/InputStream;->read([B)I

    .line 378
    .line 379
    .line 380
    move-result v13

    .line 381
    if-eq v13, v0, :cond_a

    .line 382
    .line 383
    invoke-virtual {v12, v7, v5, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    .line 388
    .line 389
    goto :goto_5

    .line 390
    :cond_a
    const-wide/16 v13, 0xc8

    .line 391
    .line 392
    :try_start_2
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 393
    .line 394
    .line 395
    :catch_2
    :try_start_3
    invoke-static {v11}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 396
    .line 397
    .line 398
    invoke-static {v12}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 399
    .line 400
    .line 401
    invoke-static {v10}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 402
    .line 403
    .line 404
    invoke-static {v4}, Lq4/a;->e(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 405
    .line 406
    .line 407
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 408
    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    iget-object v3, v3, Lda/g;->A:Lda/g;

    .line 415
    .line 416
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v3, "/Superuser.apk\' \'/system/app/\'"

    .line 424
    .line 425
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    iget v0, v0, Lfa/a0;->a:I

    .line 440
    .line 441
    if-eqz v0, :cond_b

    .line 442
    .line 443
    const-string v0, "\u65e0\u6743\u5199\u5165\uff0c\u4e0d\u9002\u7528\u6b64\u7cfb\u7edf"

    .line 444
    .line 445
    goto/16 :goto_2

    .line 446
    .line 447
    :cond_b
    const-string v0, "chmod 0644 \'/system/app/Superuser.apk\'"

    .line 448
    .line 449
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    iget v0, v0, Lfa/a0;->a:I

    .line 454
    .line 455
    if-eqz v0, :cond_c

    .line 456
    .line 457
    goto/16 :goto_3

    .line 458
    .line 459
    :cond_c
    const-string v0, "\u5199\u5165\u5b8c\u6210"

    .line 460
    .line 461
    invoke-virtual {v2, v0}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 465
    .line 466
    .line 467
    :goto_6
    return-void

    .line 468
    :pswitch_0
    sget v0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 469
    .line 470
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 471
    .line 472
    .line 473
    :try_start_4
    iget-object v0, v3, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->G:Landroid/content/ContentResolver;

    .line 474
    .line 475
    const-string v3, "adb_enabled"

    .line 476
    .line 477
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    .line 479
    .line 480
    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 481
    goto :goto_7

    .line 482
    :catch_3
    move-exception v0

    .line 483
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 484
    .line 485
    .line 486
    const/4 v0, 0x0

    .line 487
    :goto_7
    if-nez v0, :cond_d

    .line 488
    .line 489
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 490
    .line 491
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    .line 493
    .line 494
    const-string v3, "settings put global adb_allowed_connection_time 0"

    .line 495
    .line 496
    invoke-static {v3}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    iget v3, v3, Lfa/a0;->a:I

    .line 501
    .line 502
    if-nez v3, :cond_d

    .line 503
    .line 504
    goto :goto_8

    .line 505
    :cond_d
    move v4, v0

    .line 506
    :goto_8
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 507
    .line 508
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    const-string v0, "setprop persist.adb.tcp.timeout 0"

    .line 512
    .line 513
    invoke-static {v0}, La2/w0;->m(Ljava/lang/String;)Lfa/a0;

    .line 514
    .line 515
    .line 516
    if-eqz v4, :cond_e

    .line 517
    .line 518
    const-string v0, "\u4fee\u6539\u6210\u529f"

    .line 519
    .line 520
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    goto :goto_9

    .line 524
    :cond_e
    const-string v0, "\u4fee\u6539\u5931\u8d25\uff1a\u65e0\u6743\u9650\u4fee\u6539"

    .line 525
    .line 526
    invoke-static {v0, v5}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 527
    .line 528
    .line 529
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 530
    .line 531
    .line 532
    return-void

    .line 533
    :pswitch_1
    sget v6, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 534
    .line 535
    const-string v6, "addSuppressed"

    .line 536
    .line 537
    const-class v7, Ljava/lang/Throwable;

    .line 538
    .line 539
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    const/4 v8, 0x0

    .line 543
    :goto_a
    const-string v9, "remount:"

    .line 544
    .line 545
    const-string v10, "rm -rf /system/bin/111222"

    .line 546
    .line 547
    const-string v11, "touch /system/bin/111222"

    .line 548
    .line 549
    const-string v12, "rm -rf /system/app/111222"

    .line 550
    .line 551
    const-string v13, "mount -o remount,rw /"

    .line 552
    .line 553
    const-wide/16 v14, 0x14d

    .line 554
    .line 555
    const-string v5, "uid=0(root)"

    .line 556
    .line 557
    const-string v16, "id"

    .line 558
    .line 559
    const-string v17, "tclsu"

    .line 560
    .line 561
    const/4 v0, 0x2

    .line 562
    const-string v18, "touch /system/app/111222"

    .line 563
    .line 564
    if-ge v8, v0, :cond_17

    .line 565
    .line 566
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 567
    .line 568
    if-nez v8, :cond_f

    .line 569
    .line 570
    goto :goto_b

    .line 571
    :cond_f
    const-string v17, "tclroot"

    .line 572
    .line 573
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 574
    .line 575
    .line 576
    invoke-static/range {v17 .. v17}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    iget v0, v0, Lfa/a0;->a:I

    .line 581
    .line 582
    if-nez v0, :cond_16

    .line 583
    .line 584
    invoke-static/range {v16 .. v16}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    iget v4, v0, Lfa/a0;->a:I

    .line 589
    .line 590
    if-nez v4, :cond_15

    .line 591
    .line 592
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    if-eqz v0, :cond_15

    .line 601
    .line 602
    const-string v0, "setenforce 0"

    .line 603
    .line 604
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 605
    .line 606
    .line 607
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 608
    .line 609
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 610
    .line 611
    .line 612
    move-result v3

    .line 613
    if-eqz v3, :cond_10

    .line 614
    .line 615
    :try_start_5
    iget-object v0, v0, Lfa/j;->b:Ly9/b;

    .line 616
    .line 617
    invoke-virtual {v0, v9}, Ly9/b;->J(Ljava/lang/String;)Ly9/f;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 618
    .line 619
    .line 620
    goto :goto_c

    .line 621
    :cond_10
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 622
    .line 623
    invoke-virtual {v0, v9}, Lfa/m;->O(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    :catch_4
    :goto_c
    :try_start_6
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 627
    .line 628
    .line 629
    :catch_5
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 630
    .line 631
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 632
    .line 633
    .line 634
    invoke-static {v13}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 635
    .line 636
    .line 637
    invoke-static/range {v18 .. v18}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    iget v3, v0, Lfa/a0;->a:I

    .line 642
    .line 643
    if-eqz v3, :cond_12

    .line 644
    .line 645
    const-string v0, "mount -r -w -o remount -t ext4 /system"

    .line 646
    .line 647
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    iget v0, v0, Lfa/a0;->a:I

    .line 652
    .line 653
    if-eqz v0, :cond_11

    .line 654
    .line 655
    const-string v0, "\u5df2\u83b7\u5f97root\u6743\uff0c\u4f46\u7cfb\u7edf\u6ca1\u6709\u5199\u5165\u6743"

    .line 656
    .line 657
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 661
    .line 662
    .line 663
    goto/16 :goto_1e

    .line 664
    .line 665
    :cond_11
    invoke-static/range {v18 .. v18}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    :cond_12
    iget v0, v0, Lfa/a0;->a:I

    .line 670
    .line 671
    if-nez v0, :cond_13

    .line 672
    .line 673
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 674
    .line 675
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 676
    .line 677
    const/4 v3, 0x1

    .line 678
    iput-boolean v3, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 679
    .line 680
    invoke-static {v12}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 681
    .line 682
    .line 683
    const-string v0, "\u63d0\u6743\u6210\u529f\uff0cadb\u62e5\u6709root\u6743\u9650\uff0c\u7cfb\u7edf\u5177\u6709\u5199\u5165\u6743"

    .line 684
    .line 685
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    goto :goto_d

    .line 689
    :cond_13
    const-string v0, "\u63d0\u6743\u6210\u529f\uff0cadb\u62e5\u6709root\u6743\u9650\uff0c\u4f46\u7cfb\u7edf\u6ca1\u6709\u5199\u5165\u6743"

    .line 690
    .line 691
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    :goto_d
    invoke-static {v11}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    iget v0, v0, Lfa/a0;->a:I

    .line 699
    .line 700
    if-nez v0, :cond_14

    .line 701
    .line 702
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 703
    .line 704
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 705
    .line 706
    const/4 v4, 0x1

    .line 707
    iput-boolean v4, v0, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 708
    .line 709
    invoke-static {v10}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 710
    .line 711
    .line 712
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 713
    .line 714
    .line 715
    goto/16 :goto_1e

    .line 716
    .line 717
    :cond_15
    const/4 v4, 0x1

    .line 718
    :cond_16
    add-int/2addr v8, v4

    .line 719
    const/4 v0, -0x1

    .line 720
    const/4 v5, 0x0

    .line 721
    goto/16 :goto_a

    .line 722
    .line 723
    :cond_17
    sget-object v4, Lfa/g0;->a:Lfa/h0;

    .line 724
    .line 725
    invoke-virtual {v4}, Lfa/h0;->d()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v8

    .line 729
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 730
    .line 731
    .line 732
    move-result v8

    .line 733
    if-eqz v8, :cond_18

    .line 734
    .line 735
    const-string v0, "\u6ca1\u6709\u5185\u90e8\u5b58\u50a8(SD)"

    .line 736
    .line 737
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 738
    .line 739
    .line 740
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 741
    .line 742
    .line 743
    goto/16 :goto_1e

    .line 744
    .line 745
    :cond_18
    new-instance v8, Ljava/lang/StringBuilder;

    .line 746
    .line 747
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 748
    .line 749
    .line 750
    const-string v0, "/tclsu"

    .line 751
    .line 752
    invoke-static {v4, v8, v0}, Lg/b;->g(Lfa/h0;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    :try_start_7
    iget-object v3, v3, Lda/g;->A:Lda/g;

    .line 757
    .line 758
    invoke-virtual {v3}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 759
    .line 760
    .line 761
    move-result-object v3

    .line 762
    const v4, 0x7f120026

    .line 763
    .line 764
    .line 765
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 766
    .line 767
    .line 768
    move-result-object v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 769
    :try_start_8
    new-instance v4, Ljava/io/FileOutputStream;

    .line 770
    .line 771
    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 772
    .line 773
    .line 774
    const/16 v8, 0x400

    .line 775
    .line 776
    :try_start_9
    new-array v8, v8, [B

    .line 777
    .line 778
    :goto_e
    invoke-virtual {v3, v8}, Ljava/io/InputStream;->read([B)I

    .line 779
    .line 780
    .line 781
    move-result v14

    .line 782
    const/4 v15, -0x1

    .line 783
    if-eq v14, v15, :cond_19

    .line 784
    .line 785
    const/4 v15, 0x0

    .line 786
    invoke-virtual {v4, v8, v15, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 787
    .line 788
    .line 789
    goto :goto_e

    .line 790
    :catchall_0
    move-exception v0

    .line 791
    move-object v5, v0

    .line 792
    goto/16 :goto_1a

    .line 793
    .line 794
    :cond_19
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 795
    .line 796
    .line 797
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 798
    .line 799
    .line 800
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 801
    .line 802
    new-instance v4, Ljava/lang/StringBuilder;

    .line 803
    .line 804
    const-string v6, "\\cp -R \'"

    .line 805
    .line 806
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    .line 811
    .line 812
    const-string v6, "\' \'/data/local/tmp/tclsu\'"

    .line 813
    .line 814
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    .line 816
    .line 817
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v4

    .line 821
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 822
    .line 823
    .line 824
    invoke-static {v4}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    new-instance v4, Ljava/io/File;

    .line 829
    .line 830
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 834
    .line 835
    .line 836
    iget v0, v3, Lfa/a0;->a:I

    .line 837
    .line 838
    const-string v3, "\u62b1\u6b49\uff0c\u6b64\u65b9\u6cd5\u4e0d\u9002\u5408\u60a8\u7684\u7cfb\u7edf"

    .line 839
    .line 840
    if-eqz v0, :cond_1a

    .line 841
    .line 842
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 843
    .line 844
    .line 845
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 846
    .line 847
    .line 848
    goto/16 :goto_1e

    .line 849
    .line 850
    :cond_1a
    const-string v0, "chmod 755 /data/local/tmp/tclsu"

    .line 851
    .line 852
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    iget v0, v0, Lfa/a0;->a:I

    .line 857
    .line 858
    if-eqz v0, :cond_1b

    .line 859
    .line 860
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 861
    .line 862
    .line 863
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 864
    .line 865
    .line 866
    goto/16 :goto_1e

    .line 867
    .line 868
    :cond_1b
    const-string v0, "/data/local/tmp/tclsu install"

    .line 869
    .line 870
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    iget v4, v0, Lfa/a0;->a:I

    .line 875
    .line 876
    if-nez v4, :cond_1c

    .line 877
    .line 878
    invoke-static/range {v17 .. v17}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    :cond_1c
    iget v4, v0, Lfa/a0;->a:I

    .line 883
    .line 884
    if-eqz v4, :cond_1d

    .line 885
    .line 886
    const-string v0, "chmod 777 /data/local/tmp/tclsu"

    .line 887
    .line 888
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 889
    .line 890
    .line 891
    const-string v0, "/data/local/tmp/tclsu"

    .line 892
    .line 893
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    :cond_1d
    iget v0, v0, Lfa/a0;->a:I

    .line 898
    .line 899
    if-eqz v0, :cond_1e

    .line 900
    .line 901
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 902
    .line 903
    .line 904
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 905
    .line 906
    .line 907
    goto/16 :goto_1e

    .line 908
    .line 909
    :cond_1e
    invoke-static/range {v16 .. v16}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    invoke-virtual {v0}, Lfa/a0;->a()Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 918
    .line 919
    .line 920
    move-result v0

    .line 921
    if-nez v0, :cond_1f

    .line 922
    .line 923
    invoke-static {v3}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 924
    .line 925
    .line 926
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 927
    .line 928
    .line 929
    goto/16 :goto_1e

    .line 930
    .line 931
    :cond_1f
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 932
    .line 933
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 934
    .line 935
    .line 936
    move-result v3

    .line 937
    if-eqz v3, :cond_20

    .line 938
    .line 939
    :try_start_c
    iget-object v0, v0, Lfa/j;->b:Ly9/b;

    .line 940
    .line 941
    invoke-virtual {v0, v9}, Ly9/b;->J(Ljava/lang/String;)Ly9/f;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 942
    .line 943
    .line 944
    :catch_6
    :goto_f
    const-wide/16 v3, 0x14d

    .line 945
    .line 946
    goto :goto_10

    .line 947
    :cond_20
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 948
    .line 949
    invoke-virtual {v0, v9}, Lfa/m;->O(Ljava/lang/String;)V

    .line 950
    .line 951
    .line 952
    goto :goto_f

    .line 953
    :goto_10
    :try_start_d
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 954
    .line 955
    .line 956
    :catch_7
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 957
    .line 958
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 959
    .line 960
    .line 961
    invoke-static/range {v18 .. v18}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    iget v3, v0, Lfa/a0;->a:I

    .line 966
    .line 967
    if-eqz v3, :cond_21

    .line 968
    .line 969
    invoke-static {v13}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 970
    .line 971
    .line 972
    move-result-object v3

    .line 973
    iget v3, v3, Lfa/a0;->a:I

    .line 974
    .line 975
    if-nez v3, :cond_21

    .line 976
    .line 977
    invoke-static/range {v18 .. v18}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    :cond_21
    iget v0, v0, Lfa/a0;->a:I

    .line 982
    .line 983
    if-eqz v0, :cond_30

    .line 984
    .line 985
    const-string v0, "df | grep \' /system \'"

    .line 986
    .line 987
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    iget v3, v0, Lfa/a0;->a:I

    .line 992
    .line 993
    const-string v4, "mount -o remount,rw -t "

    .line 994
    .line 995
    const-string v5, "ext4"

    .line 996
    .line 997
    const-string v7, " (r"

    .line 998
    .line 999
    const/4 v8, 0x5

    .line 1000
    const-string v9, ""

    .line 1001
    .line 1002
    const-string v13, " "

    .line 1003
    .line 1004
    const-string v14, "  "

    .line 1005
    .line 1006
    if-nez v3, :cond_28

    .line 1007
    .line 1008
    iget-object v0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 1009
    .line 1010
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v0

    .line 1014
    :cond_22
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1015
    .line 1016
    .line 1017
    move-result v3

    .line 1018
    if-eqz v3, :cond_26

    .line 1019
    .line 1020
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v3

    .line 1024
    check-cast v3, Ljava/lang/String;

    .line 1025
    .line 1026
    const-string v15, " /system "

    .line 1027
    .line 1028
    invoke-virtual {v3, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1029
    .line 1030
    .line 1031
    move-result v15

    .line 1032
    if-eqz v15, :cond_22

    .line 1033
    .line 1034
    :goto_12
    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1035
    .line 1036
    .line 1037
    move-result v15

    .line 1038
    if-eqz v15, :cond_23

    .line 1039
    .line 1040
    invoke-virtual {v3, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v3

    .line 1044
    goto :goto_12

    .line 1045
    :cond_23
    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v15

    .line 1049
    array-length v6, v15

    .line 1050
    if-ge v6, v8, :cond_24

    .line 1051
    .line 1052
    goto :goto_11

    .line 1053
    :cond_24
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v0

    .line 1057
    if-eqz v0, :cond_25

    .line 1058
    .line 1059
    const/4 v0, 0x4

    .line 1060
    aget-object v9, v15, v0

    .line 1061
    .line 1062
    goto :goto_13

    .line 1063
    :cond_25
    const/4 v0, 0x2

    .line 1064
    aget-object v9, v15, v0

    .line 1065
    .line 1066
    :cond_26
    :goto_13
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 1067
    .line 1068
    .line 1069
    move-result v0

    .line 1070
    if-eqz v0, :cond_27

    .line 1071
    .line 1072
    goto :goto_14

    .line 1073
    :cond_27
    move-object v5, v9

    .line 1074
    :goto_14
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 1075
    .line 1076
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1079
    .line 1080
    .line 1081
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    .line 1084
    const-string v4, " /system"

    .line 1085
    .line 1086
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v3

    .line 1093
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1094
    .line 1095
    .line 1096
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    iget v3, v0, Lfa/a0;->a:I

    .line 1101
    .line 1102
    if-eqz v3, :cond_2f

    .line 1103
    .line 1104
    invoke-static/range {v18 .. v18}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    goto :goto_19

    .line 1109
    :cond_28
    const-string v0, "df | grep \' / \'"

    .line 1110
    .line 1111
    invoke-static {v0}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    iget-object v0, v0, Lfa/a0;->b:Ljava/util/List;

    .line 1116
    .line 1117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v0

    .line 1121
    :cond_29
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1122
    .line 1123
    .line 1124
    move-result v3

    .line 1125
    if-eqz v3, :cond_2d

    .line 1126
    .line 1127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v3

    .line 1131
    check-cast v3, Ljava/lang/String;

    .line 1132
    .line 1133
    const-string v6, " / "

    .line 1134
    .line 1135
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1136
    .line 1137
    .line 1138
    move-result v6

    .line 1139
    if-eqz v6, :cond_29

    .line 1140
    .line 1141
    :goto_16
    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1142
    .line 1143
    .line 1144
    move-result v6

    .line 1145
    if-eqz v6, :cond_2a

    .line 1146
    .line 1147
    invoke-virtual {v3, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v3

    .line 1151
    goto :goto_16

    .line 1152
    :cond_2a
    invoke-virtual {v3, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v6

    .line 1156
    array-length v15, v6

    .line 1157
    if-ge v15, v8, :cond_2b

    .line 1158
    .line 1159
    goto :goto_15

    .line 1160
    :cond_2b
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1161
    .line 1162
    .line 1163
    move-result v0

    .line 1164
    if-eqz v0, :cond_2c

    .line 1165
    .line 1166
    const/4 v3, 0x4

    .line 1167
    aget-object v9, v6, v3

    .line 1168
    .line 1169
    goto :goto_17

    .line 1170
    :cond_2c
    const/4 v15, 0x2

    .line 1171
    aget-object v9, v6, v15

    .line 1172
    .line 1173
    :cond_2d
    :goto_17
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 1174
    .line 1175
    .line 1176
    move-result v0

    .line 1177
    if-eqz v0, :cond_2e

    .line 1178
    .line 1179
    goto :goto_18

    .line 1180
    :cond_2e
    move-object v5, v9

    .line 1181
    :goto_18
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 1182
    .line 1183
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    const-string v4, " /"

    .line 1192
    .line 1193
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v3

    .line 1200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1201
    .line 1202
    .line 1203
    invoke-static {v3}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v0

    .line 1207
    iget v3, v0, Lfa/a0;->a:I

    .line 1208
    .line 1209
    if-eqz v3, :cond_2f

    .line 1210
    .line 1211
    invoke-static/range {v18 .. v18}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    :cond_2f
    :goto_19
    iget v0, v0, Lfa/a0;->a:I

    .line 1216
    .line 1217
    if-eqz v0, :cond_30

    .line 1218
    .line 1219
    const-string v0, "\u63d0\u6743\u6210\u529f\uff0c\u4f46\u7cfb\u7edf\u6ca1\u6709\u5199\u5165\u6743"

    .line 1220
    .line 1221
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1225
    .line 1226
    .line 1227
    goto :goto_1e

    .line 1228
    :cond_30
    const-string v0, "\u63d0\u6743\u6210\u529f"

    .line 1229
    .line 1230
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1231
    .line 1232
    .line 1233
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1234
    .line 1235
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1236
    .line 1237
    const/4 v3, 0x1

    .line 1238
    iput-boolean v3, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 1239
    .line 1240
    sget-object v4, Lfa/b0;->a:La2/w0;

    .line 1241
    .line 1242
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1243
    .line 1244
    .line 1245
    invoke-static {v12}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1246
    .line 1247
    .line 1248
    invoke-static {v11}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v4

    .line 1252
    iget v4, v4, Lfa/a0;->a:I

    .line 1253
    .line 1254
    if-nez v4, :cond_31

    .line 1255
    .line 1256
    iput-boolean v3, v0, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 1257
    .line 1258
    invoke-static {v10}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 1259
    .line 1260
    .line 1261
    :cond_31
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1262
    .line 1263
    .line 1264
    goto :goto_1e

    .line 1265
    :catchall_1
    move-exception v0

    .line 1266
    move-object v4, v0

    .line 1267
    goto :goto_1c

    .line 1268
    :goto_1a
    :try_start_e
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1269
    .line 1270
    .line 1271
    goto :goto_1b

    .line 1272
    :catchall_2
    move-exception v0

    .line 1273
    move-object v4, v0

    .line 1274
    const/4 v8, 0x1

    .line 1275
    :try_start_f
    new-array v0, v8, [Ljava/lang/Class;

    .line 1276
    .line 1277
    const/4 v9, 0x0

    .line 1278
    aput-object v7, v0, v9

    .line 1279
    .line 1280
    invoke-virtual {v7, v6, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v0

    .line 1284
    new-array v10, v8, [Ljava/lang/Object;

    .line 1285
    .line 1286
    aput-object v4, v10, v9

    .line 1287
    .line 1288
    invoke-virtual {v0, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1289
    .line 1290
    .line 1291
    :catch_8
    :goto_1b
    :try_start_10
    throw v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1292
    :goto_1c
    if-eqz v3, :cond_32

    .line 1293
    .line 1294
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1295
    .line 1296
    .line 1297
    goto :goto_1d

    .line 1298
    :catchall_3
    move-exception v0

    .line 1299
    move-object v3, v0

    .line 1300
    const/4 v5, 0x1

    .line 1301
    :try_start_12
    new-array v0, v5, [Ljava/lang/Class;

    .line 1302
    .line 1303
    const/4 v8, 0x0

    .line 1304
    aput-object v7, v0, v8

    .line 1305
    .line 1306
    invoke-virtual {v7, v6, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v0

    .line 1310
    new-array v5, v5, [Ljava/lang/Object;

    .line 1311
    .line 1312
    aput-object v3, v5, v8

    .line 1313
    .line 1314
    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    .line 1315
    .line 1316
    .line 1317
    :catch_9
    :cond_32
    :goto_1d
    :try_start_13
    throw v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_a

    .line 1318
    :catch_a
    const-string v0, "\u5931\u8d25\uff1a\u65e0\u6cd5\u5199\u5165\u6587\u4ef6"

    .line 1319
    .line 1320
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 1324
    .line 1325
    .line 1326
    :goto_1e
    return-void

    .line 1327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 26

    .line 1
    move/from16 v0, p3

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    const/16 v2, 0x12

    .line 6
    .line 7
    const/16 v3, 0x1c

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    const/4 v5, 0x6

    .line 12
    const/4 v6, 0x5

    .line 13
    const/4 v7, 0x1

    .line 14
    const/4 v8, 0x7

    .line 15
    const/4 v9, 0x4

    .line 16
    const/4 v10, 0x3

    .line 17
    const/4 v11, 0x2

    .line 18
    const/4 v12, 0x0

    .line 19
    sget v13, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->I:I

    .line 20
    .line 21
    move-object/from16 v13, p0

    .line 22
    .line 23
    iget-object v15, v13, Lua/v3;->b:Lcom/yunpan/appmanage/ui/ActivityLaboratory;

    .line 24
    .line 25
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 31
    .line 32
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 33
    .line 34
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->j:Z

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    new-instance v0, Lha/z6;

    .line 39
    .line 40
    iget-object v1, v15, Lda/g;->A:Lda/g;

    .line 41
    .line 42
    new-instance v2, Ls9/a;

    .line 43
    .line 44
    invoke-direct {v2, v8, v12}, Ls9/a;-><init>(IZ)V

    .line 45
    .line 46
    .line 47
    const-string v17, "\u5982\u679c\u60a8\u662f\u6b64\u673a\u578b\uff0c\u8bf7\u5b89\u88c5\u516c\u7b7e\u7248\uff0c\u65b9\u53ef\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 48
    .line 49
    const-string v18, ""

    .line 50
    .line 51
    const-string v19, "\u597d\u7684"

    .line 52
    .line 53
    const-string v20, ""

    .line 54
    .line 55
    move-object v14, v0

    .line 56
    move-object/from16 v16, v1

    .line 57
    .line 58
    move-object/from16 v21, v2

    .line 59
    .line 60
    invoke-direct/range {v14 .. v21}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :cond_0
    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "com.ecarx.appstore"

    .line 73
    .line 74
    const/16 v2, 0x2200

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 77
    .line 78
    .line 79
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityJiliE02;

    .line 80
    .line 81
    invoke-virtual {v15, v0}, Lda/g;->w(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :catch_0
    const-string v0, "\u4e0d\u9002\u5408\u60a8\u7684\u8f66\u673a\uff0c\u65e0\u9700\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 87
    .line 88
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v15, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 92
    .line 93
    invoke-virtual {v0}, Lha/u9;->show()V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :cond_1
    const/16 v14, 0x16

    .line 99
    .line 100
    if-ne v0, v7, :cond_4

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v2, "e01"

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-nez v1, :cond_3

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const-string v1, "ecarx"

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_2

    .line 149
    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 151
    .line 152
    if-ne v0, v14, :cond_2

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_2
    const-string v0, "\u4ec5\u9002\u7528\u5409\u5229\u8f66\u673aE01\u7cfb\u7edf"

    .line 156
    .line 157
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    goto/16 :goto_2

    .line 161
    .line 162
    :cond_3
    :goto_0
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityJiliE01;

    .line 163
    .line 164
    invoke-virtual {v15, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_2

    .line 168
    .line 169
    :cond_4
    const v14, 0x7f13002f

    .line 170
    .line 171
    .line 172
    if-ne v0, v11, :cond_7

    .line 173
    .line 174
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-static {}, La2/w0;->M()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_6

    .line 184
    .line 185
    iget-object v0, v15, Lda/g;->A:Lda/g;

    .line 186
    .line 187
    invoke-static {v0}, Lpa/e;->b(Landroid/content/Context;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_5

    .line 192
    .line 193
    const-string v0, "\u975e\u65e5\u4ea7\u8f66\u673a"

    .line 194
    .line 195
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_2

    .line 199
    .line 200
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v1, "\u65e5\u4ea7\u8f66\u673a\u8bf7\u5b89\u88c5\uff1a"

    .line 203
    .line 204
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v15}, Lda/g;->getResources()Landroid/content/res/Resources;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v1, "-\u516c\u7b7e\u7248(\u98de\u601d\u5361\u5c14)"

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_2

    .line 231
    .line 232
    :cond_6
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityNissan;

    .line 233
    .line 234
    invoke-virtual {v15, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :cond_7
    if-ne v0, v10, :cond_8

    .line 240
    .line 241
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityOuShang;

    .line 242
    .line 243
    invoke-virtual {v15, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_2

    .line 247
    .line 248
    :cond_8
    if-ne v0, v9, :cond_9

    .line 249
    .line 250
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityNezha;

    .line 251
    .line 252
    invoke-virtual {v15, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_2

    .line 256
    .line 257
    :cond_9
    if-ne v0, v6, :cond_a

    .line 258
    .line 259
    new-instance v0, Lha/kd;

    .line 260
    .line 261
    invoke-direct {v0, v15, v15}, Lha/kd;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 265
    .line 266
    .line 267
    goto/16 :goto_2

    .line 268
    .line 269
    :cond_a
    if-ne v0, v5, :cond_b

    .line 270
    .line 271
    const-string v0, "\u5f85\u5f00\u53d1"

    .line 272
    .line 273
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_2

    .line 277
    .line 278
    :cond_b
    const-string v16, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 279
    .line 280
    if-ne v0, v8, :cond_d

    .line 281
    .line 282
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    invoke-static {}, La2/w0;->N()Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-nez v0, :cond_c

    .line 292
    .line 293
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 294
    .line 295
    invoke-static {v0}, Lif/a;->b0(Landroid/content/Context;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-nez v0, :cond_c

    .line 300
    .line 301
    invoke-static/range {v16 .. v16}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :cond_c
    new-instance v0, Lha/z6;

    .line 307
    .line 308
    new-instance v1, Lua/w3;

    .line 309
    .line 310
    invoke-direct {v1, v15, v6}, Lua/w3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 311
    .line 312
    .line 313
    const-string v17, "\u5982\u679c\u60a8\u56e0\u4f7f\u7528\u67d0\u4e9b\u5de5\u5177app\u5bfc\u81f4\u7cfb\u7edf\u9694\u4e00\u6bb5\u65f6\u95f4\u5c31\u9ed1\u5c4f(\u606f\u5c4f)\uff0c\u90a3\u4e48\u60a8\u53ef\u4ee5\u7981\u6b62\u81ea\u52a8\u606f\u5c4f"

    .line 314
    .line 315
    const-string v18, ""

    .line 316
    .line 317
    const-string v19, "\u7981\u6b62\u81ea\u52a8\u606f\u5c4f"

    .line 318
    .line 319
    const-string v20, "\u8bbe\u7f6e\u81ea\u52a8\u606f\u5c4f"

    .line 320
    .line 321
    move-object v14, v0

    .line 322
    move-object v2, v15

    .line 323
    move-object/from16 v16, v2

    .line 324
    .line 325
    move-object/from16 v21, v1

    .line 326
    .line 327
    invoke-direct/range {v14 .. v21}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_2

    .line 334
    .line 335
    :cond_d
    const v5, 0x7f130181

    .line 336
    .line 337
    .line 338
    if-ne v0, v4, :cond_f

    .line 339
    .line 340
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 341
    .line 342
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->q:Z

    .line 343
    .line 344
    if-eqz v0, :cond_e

    .line 345
    .line 346
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 347
    .line 348
    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 353
    .line 354
    .line 355
    goto/16 :goto_2

    .line 356
    .line 357
    :cond_e
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityDesktop;

    .line 358
    .line 359
    invoke-virtual {v15, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 360
    .line 361
    .line 362
    goto/16 :goto_2

    .line 363
    .line 364
    :cond_f
    const/16 v8, 0x9

    .line 365
    .line 366
    if-ne v0, v8, :cond_11

    .line 367
    .line 368
    iget-object v0, v15, Lda/g;->A:Lda/g;

    .line 369
    .line 370
    invoke-static {v0}, Lif/a;->b0(Landroid/content/Context;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-nez v0, :cond_10

    .line 375
    .line 376
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 377
    .line 378
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    invoke-static {}, La2/w0;->M()Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-nez v0, :cond_10

    .line 386
    .line 387
    const-string v0, "\u9996\u6b21\u4f7f\u7528\u9700\u8fde\u63a5adb"

    .line 388
    .line 389
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_2

    .line 393
    .line 394
    :cond_10
    :try_start_1
    const-class v0, Lcom/yunpan/appmanage/ui/ActivitySystemAnimator;

    .line 395
    .line 396
    invoke-virtual {v15, v0}, Lda/g;->w(Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 397
    .line 398
    .line 399
    goto/16 :goto_2

    .line 400
    .line 401
    :cond_11
    const/16 v8, 0xa

    .line 402
    .line 403
    if-ne v0, v8, :cond_17

    .line 404
    .line 405
    iget-boolean v0, v15, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->C:Z

    .line 406
    .line 407
    if-nez v0, :cond_12

    .line 408
    .line 409
    const-string v0, "\u672c\u4eba\u81ea\u7528\u529f\u80fd\uff0c\u4e0d\u9002\u5408\u60a8\u7684\u7cfb\u7edf"

    .line 410
    .line 411
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 412
    .line 413
    .line 414
    iget v0, v15, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->D:I

    .line 415
    .line 416
    add-int/2addr v0, v7

    .line 417
    iput v0, v15, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->D:I

    .line 418
    .line 419
    if-lt v0, v8, :cond_41

    .line 420
    .line 421
    const-string v0, "\u5df2\u89e3\u7981\uff0c\u53ef\u8fdb\u884c\u6d4b\u8bd5"

    .line 422
    .line 423
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    iput-boolean v7, v15, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->C:Z

    .line 427
    .line 428
    goto/16 :goto_2

    .line 429
    .line 430
    :cond_12
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 431
    .line 432
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 433
    .line 434
    .line 435
    move-result v0

    .line 436
    if-eqz v0, :cond_13

    .line 437
    .line 438
    const-string v0, "\u60a8\u7cfb\u7edf\u4e0d\u662f\u5df2\u7ecfroot\u4e86\u5417\uff1f"

    .line 439
    .line 440
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_2

    .line 444
    .line 445
    :cond_13
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 446
    .line 447
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-nez v0, :cond_14

    .line 452
    .line 453
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 454
    .line 455
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    if-nez v0, :cond_14

    .line 460
    .line 461
    invoke-static/range {v16 .. v16}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_2

    .line 465
    .line 466
    :cond_14
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 467
    .line 468
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 469
    .line 470
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->l:Z

    .line 471
    .line 472
    if-nez v0, :cond_15

    .line 473
    .line 474
    const-string v0, "\u65e0\u6743\u5199\u5165\uff0c\u8bf7\u5148\u5173\u95ed\u5206\u533a\u68c0\u6d4b \u5e76\u4e14 adb\u63d0\u6743"

    .line 475
    .line 476
    invoke-static {v0, v12}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 477
    .line 478
    .line 479
    goto/16 :goto_2

    .line 480
    .line 481
    :cond_15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 482
    .line 483
    if-lt v0, v3, :cond_16

    .line 484
    .line 485
    const-string v0, "\u4e0d\u9002\u5408\u60a8\u7684\u7cfb\u7edf\uff0c\u63a8\u8350\u4f7f\u7528\u9762\u5177ROOT(Magisk)"

    .line 486
    .line 487
    invoke-static {v0, v12}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_2

    .line 491
    .line 492
    :cond_16
    new-instance v0, Lua/v3;

    .line 493
    .line 494
    invoke-direct {v0, v15, v9}, Lua/v3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 495
    .line 496
    .line 497
    new-instance v1, Lmc/c;

    .line 498
    .line 499
    invoke-direct {v1, v12, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 503
    .line 504
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    new-instance v1, Lua/x3;

    .line 517
    .line 518
    invoke-direct {v1, v15, v9}, Lua/x3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 522
    .line 523
    .line 524
    goto/16 :goto_2

    .line 525
    .line 526
    :cond_17
    const/16 v8, 0xb

    .line 527
    .line 528
    if-ne v0, v8, :cond_19

    .line 529
    .line 530
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 531
    .line 532
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    .line 534
    .line 535
    invoke-static {}, La2/w0;->M()Z

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    if-nez v0, :cond_18

    .line 540
    .line 541
    const-string v0, "\u8bf7\u8fde\u63a5adb\u6216root"

    .line 542
    .line 543
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 544
    .line 545
    .line 546
    goto/16 :goto_2

    .line 547
    .line 548
    :cond_18
    new-instance v0, Lha/z6;

    .line 549
    .line 550
    iget-object v3, v15, Lda/g;->A:Lda/g;

    .line 551
    .line 552
    new-instance v8, Lua/w3;

    .line 553
    .line 554
    invoke-direct {v8, v15, v7}, Lua/w3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 555
    .line 556
    .line 557
    const-string v4, "\u4e00\u822c\u5728\u7cfb\u7edf\u8bbe\u7f6e\u4e2d\u4fee\u6539\u65e5\u671f/\u65f6\u95f4\uff0c\u4f46\u662f\u4e00\u4e9b\u5916\u8d38\u8bbe\u5907\u6216\u8005\u4f4e\u7248\u672c\u7cfb\u7edf\n\u660e\u660e\u8bbe\u7f6e\u4e86\u5374\u4e0d\u5bf9\uff0c\u662f\u56e0\u4e3a\u65f6\u533a\u4f60\u53ef\u80fd\u6ca1\u9009\u5bf9\n\u53c8\u6216\u8005\u662f\u52fe\u9009\u4e86\u81ea\u52a8\u65f6\u533a\u5bfc\u81f4\u7684"

    .line 558
    .line 559
    const-string v5, "\u5982\u679c\u60a8\u6240\u6709\u65b9\u6cd5\u90fd\u8bd5\u8fc7\u4e86\uff0c\u89c9\u5f97\u4e0d\u884c\u60a8\u518d\u7528\u6b64\u529f\u80fd\u4fee\u6539\u7cfb\u7edf\u65f6\u95f4"

    .line 560
    .line 561
    const-string v6, "\u4e0d\u6539\u4e86"

    .line 562
    .line 563
    const-string v7, "\u6211\u9700\u8981"

    .line 564
    .line 565
    move-object v1, v0

    .line 566
    move-object v2, v3

    .line 567
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 571
    .line 572
    .line 573
    goto/16 :goto_2

    .line 574
    .line 575
    :cond_19
    const/16 v8, 0xc

    .line 576
    .line 577
    if-ne v0, v8, :cond_1c

    .line 578
    .line 579
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 580
    .line 581
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 582
    .line 583
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 584
    .line 585
    if-eqz v0, :cond_1a

    .line 586
    .line 587
    const-string v0, "\u5df2\u6709\u7cfb\u7edf\u5199\u5165\u6743\u9650\uff0c\u65e0\u9700\u6b64\u64cd\u4f5c"

    .line 588
    .line 589
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    goto/16 :goto_2

    .line 593
    .line 594
    :cond_1a
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 595
    .line 596
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    invoke-static {}, La2/w0;->P()Z

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    if-nez v0, :cond_1b

    .line 604
    .line 605
    invoke-static/range {v16 .. v16}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 606
    .line 607
    .line 608
    goto/16 :goto_2

    .line 609
    .line 610
    :cond_1b
    new-instance v0, Lua/v0;

    .line 611
    .line 612
    invoke-direct {v0, v2}, Lua/v0;-><init>(I)V

    .line 613
    .line 614
    .line 615
    new-instance v1, Lmc/c;

    .line 616
    .line 617
    invoke-direct {v1, v12, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 621
    .line 622
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    new-instance v1, Lua/x3;

    .line 635
    .line 636
    invoke-direct {v1, v15, v6}, Lua/x3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 640
    .line 641
    .line 642
    goto/16 :goto_2

    .line 643
    .line 644
    :cond_1c
    const/16 v6, 0xd

    .line 645
    .line 646
    if-ne v0, v6, :cond_1d

    .line 647
    .line 648
    invoke-virtual {v15, v12}, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->B(Z)V

    .line 649
    .line 650
    .line 651
    goto/16 :goto_2

    .line 652
    .line 653
    :cond_1d
    const/16 v6, 0xe

    .line 654
    .line 655
    const/16 v8, 0x1d

    .line 656
    .line 657
    if-ne v0, v6, :cond_1f

    .line 658
    .line 659
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 660
    .line 661
    if-ge v0, v8, :cond_1e

    .line 662
    .line 663
    const-string v0, "\u6b64\u529f\u80fd\u4ec5\u652f\u6301 Android 10 \u53ca\u4ee5\u4e0a\u7248\u672c"

    .line 664
    .line 665
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 666
    .line 667
    .line 668
    goto/16 :goto_2

    .line 669
    .line 670
    :cond_1e
    const-class v0, Lcom/yunpan/appmanage/ui/ActivitySeccompRoot;

    .line 671
    .line 672
    invoke-virtual {v15, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 673
    .line 674
    .line 675
    goto/16 :goto_2

    .line 676
    .line 677
    :cond_1f
    const/16 v6, 0xf

    .line 678
    .line 679
    if-ne v0, v6, :cond_20

    .line 680
    .line 681
    invoke-virtual {v15, v7}, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->B(Z)V

    .line 682
    .line 683
    .line 684
    goto/16 :goto_2

    .line 685
    .line 686
    :cond_20
    const/16 v6, 0x10

    .line 687
    .line 688
    if-ne v0, v6, :cond_22

    .line 689
    .line 690
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 691
    .line 692
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 693
    .line 694
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 695
    .line 696
    if-nez v0, :cond_21

    .line 697
    .line 698
    const-string v0, "\u65e0\u6743\u9650\uff0c\u9700\u6709\u7cfb\u7edf\u5199\u5165\u6743"

    .line 699
    .line 700
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 701
    .line 702
    .line 703
    goto/16 :goto_2

    .line 704
    .line 705
    :cond_21
    const-class v0, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

    .line 706
    .line 707
    invoke-virtual {v15, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 708
    .line 709
    .line 710
    goto/16 :goto_2

    .line 711
    .line 712
    :cond_22
    const/16 v6, 0x11

    .line 713
    .line 714
    if-ne v0, v6, :cond_23

    .line 715
    .line 716
    goto/16 :goto_2

    .line 717
    .line 718
    :cond_23
    if-ne v0, v2, :cond_27

    .line 719
    .line 720
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 721
    .line 722
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 723
    .line 724
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 725
    .line 726
    if-eqz v0, :cond_24

    .line 727
    .line 728
    const-string v0, "\u4f60\u5df2\u7ecf\u62e5\u6709\u5199\u5165\u6743\uff0c\u65e0\u9700\u6b64\u64cd\u4f5c"

    .line 729
    .line 730
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 731
    .line 732
    .line 733
    goto/16 :goto_2

    .line 734
    .line 735
    :cond_24
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 736
    .line 737
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    if-eqz v0, :cond_25

    .line 742
    .line 743
    const-string v0, "\u4f60\u4e0d\u662f\u5df2\u7ecf\u62e5\u6709root\u4e86\u5417\uff1f"

    .line 744
    .line 745
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 746
    .line 747
    .line 748
    goto/16 :goto_2

    .line 749
    .line 750
    :cond_25
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 751
    .line 752
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 753
    .line 754
    .line 755
    move-result v0

    .line 756
    if-nez v0, :cond_26

    .line 757
    .line 758
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 759
    .line 760
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 761
    .line 762
    .line 763
    move-result v0

    .line 764
    if-nez v0, :cond_26

    .line 765
    .line 766
    invoke-static/range {v16 .. v16}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 767
    .line 768
    .line 769
    goto/16 :goto_2

    .line 770
    .line 771
    :cond_26
    new-instance v0, Lua/v3;

    .line 772
    .line 773
    invoke-direct {v0, v15, v7}, Lua/v3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 774
    .line 775
    .line 776
    new-instance v1, Lmc/c;

    .line 777
    .line 778
    invoke-direct {v1, v12, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 779
    .line 780
    .line 781
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 782
    .line 783
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 788
    .line 789
    .line 790
    move-result-object v1

    .line 791
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    new-instance v1, Lua/x3;

    .line 796
    .line 797
    invoke-direct {v1, v15, v11}, Lua/x3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 801
    .line 802
    .line 803
    goto/16 :goto_2

    .line 804
    .line 805
    :cond_27
    const/16 v2, 0x13

    .line 806
    .line 807
    if-ne v0, v2, :cond_29

    .line 808
    .line 809
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 810
    .line 811
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 812
    .line 813
    .line 814
    invoke-static {}, La2/w0;->P()Z

    .line 815
    .line 816
    .line 817
    move-result v0

    .line 818
    if-nez v0, :cond_28

    .line 819
    .line 820
    invoke-static/range {v16 .. v16}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 821
    .line 822
    .line 823
    goto/16 :goto_2

    .line 824
    .line 825
    :cond_28
    new-instance v0, Lua/v0;

    .line 826
    .line 827
    invoke-direct {v0, v1}, Lua/v0;-><init>(I)V

    .line 828
    .line 829
    .line 830
    new-instance v1, Lmc/c;

    .line 831
    .line 832
    invoke-direct {v1, v12, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 833
    .line 834
    .line 835
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 836
    .line 837
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    new-instance v1, Lua/x3;

    .line 850
    .line 851
    invoke-direct {v1, v15, v10}, Lua/x3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 855
    .line 856
    .line 857
    goto/16 :goto_2

    .line 858
    .line 859
    :cond_29
    if-ne v0, v1, :cond_2b

    .line 860
    .line 861
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 862
    .line 863
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->q:Z

    .line 864
    .line 865
    if-eqz v0, :cond_2a

    .line 866
    .line 867
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 868
    .line 869
    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 874
    .line 875
    .line 876
    goto/16 :goto_2

    .line 877
    .line 878
    :cond_2a
    new-instance v0, Lha/z6;

    .line 879
    .line 880
    iget-object v3, v15, Lda/g;->A:Lda/g;

    .line 881
    .line 882
    new-instance v8, Lua/w3;

    .line 883
    .line 884
    invoke-direct {v8, v15, v12}, Lua/w3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 885
    .line 886
    .line 887
    const-string v4, "\u60a8\u4e86\u89e3\u8fd9\u662f\u5e72\u5565\u7684\u4e0d\uff1f\uff1f\uff1f  \u4e0d\u4e86\u89e3\u7684\u8bdd\uff0c\u5343\u4e07\u4e0d\u8981\u70b9\u51fb\uff01\uff01\uff01\n\u77e5\u8bc6\u8bb2\u89e3\uff1a\u5173\u95ed\u5206\u533a\u68c0\u6d4b\u662f\u4e3a\u4e86adb\u6302\u8f7d\u7cfb\u7edf\u76ee\u5f55\uff0c\u4ece\u800c\u83b7\u5f97\u7cfb\u7edf\u5199\u5165\u6743\u9650\uff01\u83b7\u5f97\u5199\u5165\u6743\u662f\u4e3a\u4e86\u5220\u9664\u7cfb\u7edf\u5185\u7f6e\u5e94\u7528\u6216\u66f4\u6539\u7cfb\u7edf\u6587\u4ef6"

    .line 888
    .line 889
    const-string v5, "\u8b66\u544a\uff1a\u8fd9\u662f\u4e2a\u5371\u9669\u64cd\u4f5c\uff0c\u5982\u679c\u56e0\u5173\u95ed\u5206\u533a\u68c0\u6d4b\u540e\u60a8\u4e71\u52a8\u7cfb\u7edf\u6587\u4ef6\u5bfc\u81f4\u7cfb\u7edf\u8fdb\u4e0d\u53bb\uff0c\u540e\u679c\u81ea\u8d1f\uff01\n\n\u63d0\u793a\uff1a\u5173\u95ed\u5206\u533a\u68c0\u6d4b\u540e\u4e00\u76f4\u6709\u6548\uff0c\u4e0d\u9700\u8981\u91cd\u590d\u70b9\u5173\u95ed\uff01\n\u6ce8\u610f\uff1a\u5173\u95ed\u5206\u533a\u540e\uff0c\u5982\u679c\u4f60\u66f4\u6539\u4e86\u7cfb\u7edf\u6587\u4ef6\u6216\u5220\u9664\u4e86\u7cfb\u7edf\u5e94\u7528\u540e\uff0c\u5c31\u4e0d\u8981\u518d\u53bb\u5f00\u542f\u5206\u533a\u68c0\u6d4b\u4e86\uff0c\u5206\u533a\u68c0\u6d4b\u7684\u610f\u601d\u5c31\u662f\uff1a\u7cfb\u7edf\u4f1a\u68c0\u6d4b\u7cfb\u7edf\u662f\u5426\u5b8c\u6574\uff0c\u4e0d\u5b8c\u6574\u5c31\u65e0\u6cd5\u5f00\u673a\u7b49\u7b49\u60c5\u51b5"

    .line 890
    .line 891
    const-string v6, "\u53d6\u6d88"

    .line 892
    .line 893
    const-string v7, "\u6211\u8981\u5173\u95ed\u68c0\u6d4b"

    .line 894
    .line 895
    move-object v1, v0

    .line 896
    move-object v2, v3

    .line 897
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 898
    .line 899
    .line 900
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 901
    .line 902
    .line 903
    goto/16 :goto_2

    .line 904
    .line 905
    :cond_2b
    const/16 v1, 0x15

    .line 906
    .line 907
    if-ne v0, v1, :cond_2e

    .line 908
    .line 909
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 910
    .line 911
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 912
    .line 913
    .line 914
    move-result v0

    .line 915
    if-eqz v0, :cond_2c

    .line 916
    .line 917
    const-string v0, "\u60a8\u662f\u5c0a\u8d35\u7684root\u7cfb\u7edf\u7528\u6237\uff0c\u7528\u4e0d\u7740\u6b64\u529f\u80fd\u54df"

    .line 918
    .line 919
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    goto/16 :goto_2

    .line 923
    .line 924
    :cond_2c
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 925
    .line 926
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->q:Z

    .line 927
    .line 928
    if-eqz v0, :cond_2d

    .line 929
    .line 930
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 931
    .line 932
    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 937
    .line 938
    .line 939
    goto/16 :goto_2

    .line 940
    .line 941
    :cond_2d
    new-instance v0, Lha/z6;

    .line 942
    .line 943
    iget-object v3, v15, Lda/g;->A:Lda/g;

    .line 944
    .line 945
    new-instance v8, Lua/w3;

    .line 946
    .line 947
    invoke-direct {v8, v15, v4}, Lua/w3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 948
    .line 949
    .line 950
    const-string v4, "\u77e5\u8bc6\uff1a\u5173\u95ed\u5206\u533a\u68c0\u6d4b\u662f\u4e3a\u4e86adb\u6302\u8f7d\u7cfb\u7edf\u76ee\u5f55\uff0c\u4ece\u800c\u83b7\u5f97\u7cfb\u7edf\u5199\u5165\u6743\u9650\uff01\u83b7\u5f97\u5199\u5165\u6743\u662f\u4e3a\u4e86\u5220\u9664\u7cfb\u7edf\u5185\u7f6e\u5e94\u7528\u6216\u66f4\u6539\u7cfb\u7edf\u6587\u4ef6\uff01\n\n\u91cd\u70b9\u6765\u4e86\uff1a\u5982\u679c\u60a8\u5220\u9664\u4e86\u7cfb\u7edf\u5e94\u7528\u6216\u66f4\u6539\u7cfb\u7edf\u76ee\u5f55\u6587\u4ef6\u540e\uff0c\u4e00\u5b9a\u4e0d\u8981\u70b9\u5f00\u542f\u5206\u533a\u68c0\u6d4b\uff01\u56e0\u4e3a\u5f00\u542f\u5206\u533a\u68c0\u6d4b\u540e\uff0c\u7cfb\u7edf\u4f1a\u68c0\u6d4b\u7cfb\u7edf\u662f\u5426\u5b8c\u6574\uff0c\u5982\u679c\u4e0d\u5b8c\u6574\u7684\u8bdd\u4f1a\u8fdb\u4e0d\u4e86\u7cfb\u7edf\uff0c\u5f00\u4e0d\u4e86\u673a\u54e6\uff01"

    .line 951
    .line 952
    const-string v5, "\u8b66\u544a\uff1a\u6b63\u5e38\u60c5\u51b5\u4e0b\u4e0d\u8981\u70b9\u8fd9\u4e2a\uff0c\u8bf7\u52a1\u5fc5\u8ba4\u771f\u9605\u8bfb\u4ee5\u4e0a\u8bf4\u660e\uff01"

    .line 953
    .line 954
    const-string v6, "\u53d6\u6d88"

    .line 955
    .line 956
    const-string v7, "\u6211\u8981\u5f00\u542f\u5206\u533a\u68c0\u6d4b"

    .line 957
    .line 958
    move-object v1, v0

    .line 959
    move-object v2, v3

    .line 960
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 964
    .line 965
    .line 966
    goto/16 :goto_2

    .line 967
    .line 968
    :cond_2e
    const/16 v1, 0x16

    .line 969
    .line 970
    if-ne v0, v1, :cond_2f

    .line 971
    .line 972
    new-instance v0, Lha/z6;

    .line 973
    .line 974
    iget-object v1, v15, Lda/g;->A:Lda/g;

    .line 975
    .line 976
    new-instance v2, Lua/w3;

    .line 977
    .line 978
    invoke-direct {v2, v15, v11}, Lua/w3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 979
    .line 980
    .line 981
    const-string v21, "\u9996\u6b21\u8fde\u63a5adb\u65f6\uff0c\u4e00\u822c\u7cfb\u7edf\u4f1a\u5f39\u51faadb\u6388\u6743\u8fde\u63a5\u7684\u7a97\u53e3\uff0c\u6388\u6743\u624d\u80fd\u8fde\u63a5\uff0c\u4f46\u662f\u6709\u4e9b\u7cfb\u7edf\u56e0\u4e3a\u5382\u5546\u9609\u5272\u4e86\u8fd9\u4e2a\u5f39\u7a97\uff0c\u5bfc\u81f4\u65e0\u6cd5\u4f7f\u7528adb\uff0c\u90a3\u4e48\u60a8\u53ef\u4ee5\u5728\u8fd9\u91cc\u5173\u95edadb\u7684\u5b89\u5168\u9a8c\u8bc1\u5373\u53ef\uff01"

    .line 982
    .line 983
    const-string v22, "\u6ce8\u610f\uff1a\u4ec5\u652f\u6301\u6781\u5c0f\u90e8\u5206\u7cfb\u7edf"

    .line 984
    .line 985
    const-string v23, "\u5173\u95ed\u5b89\u5168\u9a8c\u8bc1"

    .line 986
    .line 987
    const-string v24, "\u5f00\u542f\u5b89\u5168\u9a8c\u8bc1"

    .line 988
    .line 989
    move-object/from16 v18, v0

    .line 990
    .line 991
    move-object/from16 v19, v1

    .line 992
    .line 993
    move-object/from16 v20, v1

    .line 994
    .line 995
    move-object/from16 v25, v2

    .line 996
    .line 997
    invoke-direct/range {v18 .. v25}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 1001
    .line 1002
    .line 1003
    goto/16 :goto_2

    .line 1004
    .line 1005
    :cond_2f
    const/16 v1, 0x17

    .line 1006
    .line 1007
    if-ne v0, v1, :cond_32

    .line 1008
    .line 1009
    sget-object v0, Lfa/g0;->a:Lfa/h0;

    .line 1010
    .line 1011
    invoke-virtual {v0}, Lfa/h0;->f()Z

    .line 1012
    .line 1013
    .line 1014
    move-result v0

    .line 1015
    if-eqz v0, :cond_30

    .line 1016
    .line 1017
    const-string v0, "\u60a8\u5df2\u662f\u5c0a\u8d35\u7684ROOT\u7528\u6237\uff0c\u65e0\u9700\u6b64\u64cd\u4f5c"

    .line 1018
    .line 1019
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    goto/16 :goto_2

    .line 1023
    .line 1024
    :cond_30
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 1025
    .line 1026
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 1027
    .line 1028
    .line 1029
    move-result v0

    .line 1030
    if-nez v0, :cond_31

    .line 1031
    .line 1032
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 1033
    .line 1034
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 1035
    .line 1036
    .line 1037
    move-result v0

    .line 1038
    if-nez v0, :cond_31

    .line 1039
    .line 1040
    :try_start_2
    iget-object v0, v15, Lda/g;->A:Lda/g;

    .line 1041
    .line 1042
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v0

    .line 1046
    const-string v1, "fgSecure"

    .line 1047
    .line 1048
    const-string v2, "fangge"

    .line 1049
    .line 1050
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1051
    .line 1052
    .line 1053
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1054
    goto :goto_1

    .line 1055
    :catch_1
    nop

    .line 1056
    const/4 v0, 0x0

    .line 1057
    :goto_1
    if-nez v0, :cond_31

    .line 1058
    .line 1059
    invoke-static/range {v16 .. v16}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 1060
    .line 1061
    .line 1062
    goto/16 :goto_2

    .line 1063
    .line 1064
    :cond_31
    new-instance v0, Lua/v3;

    .line 1065
    .line 1066
    invoke-direct {v0, v15, v11}, Lua/v3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 1067
    .line 1068
    .line 1069
    new-instance v1, Lmc/c;

    .line 1070
    .line 1071
    invoke-direct {v1, v12, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 1072
    .line 1073
    .line 1074
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 1075
    .line 1076
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v1

    .line 1084
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v0

    .line 1088
    new-instance v1, Lha/l2;

    .line 1089
    .line 1090
    invoke-direct {v1, v3}, Lha/l2;-><init>(I)V

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 1094
    .line 1095
    .line 1096
    goto/16 :goto_2

    .line 1097
    .line 1098
    :cond_32
    const/16 v1, 0x18

    .line 1099
    .line 1100
    if-ne v0, v1, :cond_33

    .line 1101
    .line 1102
    new-instance v0, Lha/z6;

    .line 1103
    .line 1104
    iget-object v1, v15, Lda/g;->A:Lda/g;

    .line 1105
    .line 1106
    new-instance v2, Lua/w3;

    .line 1107
    .line 1108
    invoke-direct {v2, v15, v10}, Lua/w3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 1109
    .line 1110
    .line 1111
    const-string v17, "\u65ad\u5f00\u6240\u6709\u7f51\u7edc\uff0c\u4e0d\u4e86\u89e3\u529f\u80fd\u6709\u5565\u7528\u7684\u8bdd\uff0c\u8bf7\u52ff\u4e71\u6765"

    .line 1112
    .line 1113
    const-string v18, ""

    .line 1114
    .line 1115
    const-string v19, "\u5c4f\u853d\u7f51\u7edc"

    .line 1116
    .line 1117
    const-string v20, "\u89e3\u9664\u5c4f\u853d"

    .line 1118
    .line 1119
    move-object v14, v0

    .line 1120
    move-object/from16 v16, v1

    .line 1121
    .line 1122
    move-object/from16 v21, v2

    .line 1123
    .line 1124
    invoke-direct/range {v14 .. v21}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 1125
    .line 1126
    .line 1127
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 1128
    .line 1129
    .line 1130
    goto/16 :goto_2

    .line 1131
    .line 1132
    :cond_33
    const/16 v1, 0x19

    .line 1133
    .line 1134
    if-ne v0, v1, :cond_35

    .line 1135
    .line 1136
    iget-object v0, v15, Lda/g;->A:Lda/g;

    .line 1137
    .line 1138
    invoke-static {v0}, Lif/a;->b0(Landroid/content/Context;)Z

    .line 1139
    .line 1140
    .line 1141
    move-result v0

    .line 1142
    if-nez v0, :cond_34

    .line 1143
    .line 1144
    const-string v0, "\u9996\u6b21\u4f7f\u7528\u6b64\u529f\u80fd\u9700\u8fde\u63a5adb\u6216root\u6216\u516c\u7b7e"

    .line 1145
    .line 1146
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 1147
    .line 1148
    .line 1149
    goto/16 :goto_2

    .line 1150
    .line 1151
    :cond_34
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityInputMethod;

    .line 1152
    .line 1153
    invoke-virtual {v15, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 1154
    .line 1155
    .line 1156
    goto/16 :goto_2

    .line 1157
    .line 1158
    :cond_35
    const/16 v1, 0x1a

    .line 1159
    .line 1160
    if-ne v0, v1, :cond_37

    .line 1161
    .line 1162
    iget-object v0, v15, Lda/g;->A:Lda/g;

    .line 1163
    .line 1164
    const-class v1, Lcom/yunpan/appmanage/service/AccService;

    .line 1165
    .line 1166
    invoke-static {v0, v1}, Lif/a;->h0(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 1167
    .line 1168
    .line 1169
    move-result v0

    .line 1170
    if-eqz v0, :cond_36

    .line 1171
    .line 1172
    const-string v0, "\u8bf7\u5148\u5173\u95ed\u81ea\u52a8\u5316\u670d\u52a1"

    .line 1173
    .line 1174
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1175
    .line 1176
    .line 1177
    goto/16 :goto_2

    .line 1178
    .line 1179
    :cond_36
    new-instance v0, Lha/z6;

    .line 1180
    .line 1181
    iget-object v1, v15, Lda/g;->A:Lda/g;

    .line 1182
    .line 1183
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    const-string v3, "\u6e05\u9664"

    .line 1186
    .line 1187
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v15, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v3

    .line 1194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    .line 1196
    .line 1197
    const-string v3, "\u7684\u6240\u6709\u914d\u7f6e\u548c\u6570\u636e\u6587\u4ef6"

    .line 1198
    .line 1199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v18

    .line 1206
    new-instance v2, Lua/w3;

    .line 1207
    .line 1208
    invoke-direct {v2, v15, v9}, Lua/w3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 1209
    .line 1210
    .line 1211
    const-string v19, "\u786e\u5b9a"

    .line 1212
    .line 1213
    const-string v20, "\u53d6\u6d88"

    .line 1214
    .line 1215
    const-string v17, "\u662f\u5426\u786e\u5b9a\u8981\u91cd\u7f6e\uff1f"

    .line 1216
    .line 1217
    move-object v14, v0

    .line 1218
    move-object/from16 v16, v1

    .line 1219
    .line 1220
    move-object/from16 v21, v2

    .line 1221
    .line 1222
    invoke-direct/range {v14 .. v21}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 1223
    .line 1224
    .line 1225
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 1226
    .line 1227
    .line 1228
    goto/16 :goto_2

    .line 1229
    .line 1230
    :cond_37
    const/16 v1, 0x1b

    .line 1231
    .line 1232
    if-ne v0, v1, :cond_3a

    .line 1233
    .line 1234
    const-string v0, "package:"

    .line 1235
    .line 1236
    const-string v1, "\u7531\u4e8e["

    .line 1237
    .line 1238
    :try_start_3
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v2

    .line 1242
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v3

    .line 1246
    invoke-virtual {v2, v3, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v2

    .line 1250
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1251
    .line 1252
    and-int/2addr v2, v7

    .line 1253
    if-eqz v2, :cond_38

    .line 1254
    .line 1255
    new-instance v2, Lha/z6;

    .line 1256
    .line 1257
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1258
    .line 1259
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v15, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v1

    .line 1266
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    .line 1268
    .line 1269
    const-string v1, "]\u662f\u7cfb\u7edf\u5e94\u7528\uff0c\u4e3a\u4e86\u80fd\u6b63\u786e\u91ca\u653e\u7cfb\u7edf\u5206\u533a\u7a7a\u95f4\uff0c\u5efa\u8bae\u60a8\u7528\u5171\u5b58\u7248(\u6d77\u4fe1\u7248)\u6765\u5378\u8f7d\u5e76\u5220\u9664"

    .line 1270
    .line 1271
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    .line 1273
    .line 1274
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1275
    .line 1276
    .line 1277
    move-result-object v1

    .line 1278
    const-string v3, ""

    .line 1279
    .line 1280
    invoke-direct {v2, v15, v15, v1, v3}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    .line 1282
    .line 1283
    invoke-virtual {v2}, Lha/a4;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1284
    .line 1285
    .line 1286
    goto/16 :goto_2

    .line 1287
    .line 1288
    :catch_2
    :cond_38
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 1289
    .line 1290
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1291
    .line 1292
    .line 1293
    invoke-static {}, La2/w0;->P()Z

    .line 1294
    .line 1295
    .line 1296
    move-result v1

    .line 1297
    if-eqz v1, :cond_39

    .line 1298
    .line 1299
    new-instance v0, Lha/z6;

    .line 1300
    .line 1301
    iget-object v1, v15, Lda/g;->A:Lda/g;

    .line 1302
    .line 1303
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1304
    .line 1305
    const-string v3, "\u5378\u8f7d"

    .line 1306
    .line 1307
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {v15, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1311
    .line 1312
    .line 1313
    move-result-object v3

    .line 1314
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v2

    .line 1321
    new-instance v3, Lua/w3;

    .line 1322
    .line 1323
    const/4 v4, 0x7

    .line 1324
    invoke-direct {v3, v15, v4}, Lua/w3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 1325
    .line 1326
    .line 1327
    const-string v19, "\u7531\u7cfb\u7edf\u5378\u8f7d"

    .line 1328
    .line 1329
    const-string v20, "\u7528\u547d\u4ee4\u5378\u8f7d"

    .line 1330
    .line 1331
    const-string v18, ""

    .line 1332
    .line 1333
    move-object v14, v0

    .line 1334
    move-object/from16 v16, v1

    .line 1335
    .line 1336
    move-object/from16 v17, v2

    .line 1337
    .line 1338
    move-object/from16 v21, v3

    .line 1339
    .line 1340
    invoke-direct/range {v14 .. v21}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 1344
    .line 1345
    .line 1346
    goto/16 :goto_2

    .line 1347
    .line 1348
    :cond_39
    :try_start_4
    new-instance v1, Landroid/content/Intent;

    .line 1349
    .line 1350
    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    .line 1351
    .line 1352
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1353
    .line 1354
    .line 1355
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1356
    .line 1357
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v0

    .line 1364
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    .line 1366
    .line 1367
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v0

    .line 1371
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v0

    .line 1375
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1376
    .line 1377
    .line 1378
    invoke-virtual {v15, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1379
    .line 1380
    .line 1381
    goto/16 :goto_2

    .line 1382
    .line 1383
    :catch_3
    const-string v0, "\u8c03\u7528\u5378\u8f7d\u7a0b\u5e8f\u51fa\u9519"

    .line 1384
    .line 1385
    invoke-static {v0, v12}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 1386
    .line 1387
    .line 1388
    goto :goto_2

    .line 1389
    :cond_3a
    if-ne v0, v3, :cond_3c

    .line 1390
    .line 1391
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1392
    .line 1393
    if-ge v0, v3, :cond_3b

    .line 1394
    .line 1395
    const-string v0, "\u7cfb\u7edf\u4f4e\u4e8e\u5b89\u53539\uff0c\u65e0\u9700\u8bbe\u7f6e"

    .line 1396
    .line 1397
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 1398
    .line 1399
    .line 1400
    goto :goto_2

    .line 1401
    :cond_3b
    new-instance v0, Lha/z6;

    .line 1402
    .line 1403
    iget-object v1, v15, Lda/g;->A:Lda/g;

    .line 1404
    .line 1405
    new-instance v2, Lua/w3;

    .line 1406
    .line 1407
    const/4 v3, 0x6

    .line 1408
    invoke-direct {v2, v15, v3}, Lua/w3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 1409
    .line 1410
    .line 1411
    const-string v17, "\u4ece Android 9\uff08API \u7ea7\u522b 28\uff09\u5f00\u59cb\uff0cAndroid \u5e73\u53f0\u5bf9\u5e94\u7528\u80fd\u4f7f\u7528\u7684\u975e SDK \u63a5\u53e3\u5b9e\u65bd\u4e86\u9650\u5236\uff01\u89e3\u9664\u9650\u5236\uff0c\u8ba9\u4e2a\u4eba\u5e94\u7528\u8bbf\u95ee\u975e SDK \u63a5\u53e3\uff01"

    .line 1412
    .line 1413
    const-string v18, ""

    .line 1414
    .line 1415
    const-string v19, "\u89e3\u9664\u9650\u5236"

    .line 1416
    .line 1417
    const-string v20, "\u6062\u590d\u9650\u5236"

    .line 1418
    .line 1419
    move-object v14, v0

    .line 1420
    move-object/from16 v16, v1

    .line 1421
    .line 1422
    move-object/from16 v21, v2

    .line 1423
    .line 1424
    invoke-direct/range {v14 .. v21}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 1428
    .line 1429
    .line 1430
    goto :goto_2

    .line 1431
    :cond_3c
    if-ne v0, v8, :cond_3d

    .line 1432
    .line 1433
    new-instance v0, Lha/o1;

    .line 1434
    .line 1435
    new-instance v1, Lua/v3;

    .line 1436
    .line 1437
    invoke-direct {v1, v15, v10}, Lua/v3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 1438
    .line 1439
    .line 1440
    invoke-direct {v0, v15, v15, v1}, Lha/o1;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/n1;)V

    .line 1441
    .line 1442
    .line 1443
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 1444
    .line 1445
    .line 1446
    goto :goto_2

    .line 1447
    :cond_3d
    const/16 v1, 0x1e

    .line 1448
    .line 1449
    if-ne v0, v1, :cond_3f

    .line 1450
    .line 1451
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 1452
    .line 1453
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1454
    .line 1455
    .line 1456
    invoke-static {}, La2/w0;->L()Z

    .line 1457
    .line 1458
    .line 1459
    move-result v0

    .line 1460
    if-nez v0, :cond_3e

    .line 1461
    .line 1462
    invoke-static/range {v16 .. v16}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1463
    .line 1464
    .line 1465
    goto :goto_2

    .line 1466
    :cond_3e
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityUsers;

    .line 1467
    .line 1468
    invoke-virtual {v15, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 1469
    .line 1470
    .line 1471
    goto :goto_2

    .line 1472
    :cond_3f
    const/16 v1, 0x1f

    .line 1473
    .line 1474
    if-ne v0, v1, :cond_40

    .line 1475
    .line 1476
    const-class v0, Lcom/yunpan/appmanage/ui/ActivityDebugLogcat;

    .line 1477
    .line 1478
    invoke-virtual {v15, v0}, Lda/g;->w(Ljava/lang/Class;)V

    .line 1479
    .line 1480
    .line 1481
    goto :goto_2

    .line 1482
    :cond_40
    const-string v0, "\u672a\u5f00\u53d1"

    .line 1483
    .line 1484
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 1485
    .line 1486
    .line 1487
    :catch_4
    :cond_41
    :goto_2
    return-void
.end method
