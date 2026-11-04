.class public final synthetic Lha/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lc6/f;


# instance fields
.field public final synthetic a:Lha/c4;


# direct methods
.method public synthetic constructor <init>(Lha/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/b4;->a:Lha/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(ILandroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lha/b4;->a:Lha/c4;

    .line 2
    .line 3
    iget-object v0, p2, Lha/c4;->h:Lx9/z5;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "\u6253\u5f00"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p2, Lha/c4;->l:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 28
    .line 29
    iget-object v0, p2, Lha/c4;->l:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/yunpan/appmanage/util/w;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p2, Lha/c4;->l:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/yunpan/appmanage/util/w;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v0, "\u5df2\u53d6\u6d88["

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p2, Lha/c4;->l:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, "]\u7c7b\u578b\u6587\u4ef6\u7684\u9ed8\u8ba4\u6253\u5f00\u7a0b\u5e8f"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p2, Lha/c4;->i:Landroid/widget/TextView;

    .line 71
    .line 72
    const/16 p2, 0x8

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    const/4 p1, 0x0

    .line 80
    :goto_0
    return p1
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 18

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x2

    .line 3
    const/4 v0, 0x4

    .line 4
    move-object/from16 v3, p0

    .line 5
    .line 6
    iget-object v4, v3, Lha/b4;->a:Lha/c4;

    .line 7
    .line 8
    iget-object v5, v4, Lha/c4;->j:Lua/u8;

    .line 9
    .line 10
    iget-object v6, v4, Lha/c4;->h:Lx9/z5;

    .line 11
    .line 12
    move/from16 v7, p3

    .line 13
    .line 14
    invoke-virtual {v6, v7}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    check-cast v6, Ljava/lang/String;

    .line 19
    .line 20
    iget-object v7, v5, Lua/u8;->a:Lua/i9;

    .line 21
    .line 22
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string v8, "\u4e0a\u4f20"

    .line 26
    .line 27
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    iget v9, v5, Lua/u8;->c:I

    .line 32
    .line 33
    const-string v10, "."

    .line 34
    .line 35
    const/4 v11, 0x1

    .line 36
    if-eqz v8, :cond_a

    .line 37
    .line 38
    iget-object v5, v7, Lua/i9;->n:Lx9/a6;

    .line 39
    .line 40
    invoke-virtual {v5}, Lc6/g;->b()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const/16 v6, 0x15

    .line 45
    .line 46
    if-ne v5, v11, :cond_0

    .line 47
    .line 48
    iget-object v5, v7, Lua/i9;->n:Lx9/a6;

    .line 49
    .line 50
    invoke-virtual {v5, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 55
    .line 56
    iget-object v5, v5, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    iget-object v5, v7, Lua/i9;->j:Lx9/o5;

    .line 65
    .line 66
    iget v8, v7, Lua/i9;->T:I

    .line 67
    .line 68
    invoke-virtual {v5, v8}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Lx9/n5;

    .line 73
    .line 74
    iget v5, v5, Lx9/n5;->a:I

    .line 75
    .line 76
    if-eq v5, v6, :cond_0

    .line 77
    .line 78
    const-string v0, "\u4e0d\u80fd\u4e0a\u4f20\u5230\u5f53\u524d\u4f4d\u7f6e\uff0c\u8bf7\u5728\u5de6\u4fa7\u9009\u62e9\u8981\u4e0a\u4f20\u5230\u7684\u76ee\u5f55"

    .line 79
    .line 80
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_9

    .line 84
    .line 85
    :cond_0
    iget-object v5, v7, Lua/i9;->n:Lx9/a6;

    .line 86
    .line 87
    invoke-virtual {v5}, Lc6/g;->b()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_1

    .line 92
    .line 93
    const-string v0, "\u8bf7\u5148\u5728\u5de6\u4fa7\u6253\u5f00\u4f60\u7684\u7f51\u76d8\uff0c\u5e76\u6253\u5f00\u8981\u4e0a\u4f20\u5230\u7684\u76ee\u5f55"

    .line 94
    .line 95
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_9

    .line 99
    .line 100
    :cond_1
    new-instance v5, Lcom/yunpan/appmanage/bean/WpTaskBean;

    .line 101
    .line 102
    invoke-direct {v5}, Lcom/yunpan/appmanage/bean/WpTaskBean;-><init>()V

    .line 103
    .line 104
    .line 105
    iput v2, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->type:I

    .line 106
    .line 107
    iget-object v8, v7, Lua/i9;->j:Lx9/o5;

    .line 108
    .line 109
    iget v12, v7, Lua/i9;->T:I

    .line 110
    .line 111
    invoke-virtual {v8, v12}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    check-cast v8, Lx9/n5;

    .line 116
    .line 117
    iput-object v8, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 118
    .line 119
    iget-object v8, v7, Lua/i9;->n:Lx9/a6;

    .line 120
    .line 121
    invoke-virtual {v8}, Lc6/g;->b()I

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    sub-int/2addr v12, v11

    .line 126
    invoke-virtual {v8, v12}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    check-cast v8, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 131
    .line 132
    iput-object v8, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpRootPath:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 133
    .line 134
    iget-object v8, v7, Lua/i9;->z:Lx9/f0;

    .line 135
    .line 136
    invoke-virtual {v8, v9}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    check-cast v8, Lx9/w3;

    .line 141
    .line 142
    iput-object v8, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdRootPath:Lx9/w3;

    .line 143
    .line 144
    new-instance v8, Ljava/io/File;

    .line 145
    .line 146
    iget-object v9, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdRootPath:Lx9/w3;

    .line 147
    .line 148
    iget-object v9, v9, Lx9/w3;->b:Ljava/lang/String;

    .line 149
    .line 150
    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    if-nez v8, :cond_3

    .line 158
    .line 159
    iget-object v0, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdRootPath:Lx9/w3;

    .line 160
    .line 161
    iget-boolean v0, v0, Lx9/w3;->c:Z

    .line 162
    .line 163
    if-eqz v0, :cond_2

    .line 164
    .line 165
    const-string v0, "\u76ee\u5f55"

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_2
    const-string v0, "\u6587\u4ef6"

    .line 169
    .line 170
    :goto_0
    const-string v1, "\u65e0\u6743\u9650\u8bfb\u53d6\u6b64"

    .line 171
    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_9

    .line 180
    .line 181
    :cond_3
    iget-object v8, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 182
    .line 183
    iget v8, v8, Lx9/n5;->a:I

    .line 184
    .line 185
    if-ne v8, v11, :cond_7

    .line 186
    .line 187
    iget-object v8, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdRootPath:Lx9/w3;

    .line 188
    .line 189
    iget-boolean v9, v8, Lx9/w3;->c:Z

    .line 190
    .line 191
    if-eqz v9, :cond_4

    .line 192
    .line 193
    const-string v0, "\u84dd\u594f\u4e91\u4e0d\u652f\u6301\u6587\u4ef6\u5939\u4e0a\u4f20"

    .line 194
    .line 195
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_9

    .line 199
    .line 200
    :cond_4
    iget-wide v11, v8, Lx9/w3;->d:J

    .line 201
    .line 202
    const-wide/32 v13, 0x6400000

    .line 203
    .line 204
    .line 205
    cmp-long v9, v11, v13

    .line 206
    .line 207
    if-ltz v9, :cond_5

    .line 208
    .line 209
    const-string v0, "\u84dd\u594f\u4e91\u4e0d\u652f\u6301\u4e0a\u4f20\u5927\u4e8e100M\u7684\u6587\u4ef6"

    .line 210
    .line 211
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_9

    .line 215
    .line 216
    :cond_5
    iget-object v8, v8, Lx9/w3;->a:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v8

    .line 222
    if-lez v8, :cond_7

    .line 223
    .line 224
    iget-object v9, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdRootPath:Lx9/w3;

    .line 225
    .line 226
    iget-object v9, v9, Lx9/w3;->a:Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    if-nez v9, :cond_6

    .line 237
    .line 238
    const-string v9, ".apk.zip.rar.txt.7z.z.e.ct.doc.docx.exe.ke.db.tar.pdf.epub.mobi.azw.azw3.w3x.osk.osz.jar.xpk.cpk.lua.dmg.ppt.pptx.xls.xlsx.mp3.gz.psd.ipa.iso.ttf.txf.ttc.dwg.bat.dll.deb.rp.rpm.rplib.mobileconfig.appimage.img.imazingapp.lolgezi.bin.xapk.flac.conf.crx.gho.patch.cad.hwt.accdb.ce.xmind.enc.bds.bdi.ssf.it.pkg.cfg"

    .line 239
    .line 240
    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    if-nez v8, :cond_7

    .line 245
    .line 246
    :cond_6
    const-string v0, "\u84dd\u594f\u4e91\u4e0d\u652f\u6301\u6b64\u7c7b\u578b\u6587\u4ef6\u4e0a\u4f20"

    .line 247
    .line 248
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_9

    .line 252
    .line 253
    :cond_7
    iget-object v8, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdRootPath:Lx9/w3;

    .line 254
    .line 255
    iget-boolean v8, v8, Lx9/w3;->c:Z

    .line 256
    .line 257
    if-eqz v8, :cond_9

    .line 258
    .line 259
    iget-object v8, v5, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 260
    .line 261
    iget v8, v8, Lx9/n5;->a:I

    .line 262
    .line 263
    const/16 v9, 0x14

    .line 264
    .line 265
    if-eq v8, v9, :cond_8

    .line 266
    .line 267
    if-ne v8, v6, :cond_9

    .line 268
    .line 269
    :cond_8
    const-string v0, "\u6682\u4e0d\u652f\u6301\u6587\u4ef6\u5939\u4e0a\u4f20"

    .line 270
    .line 271
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_9

    .line 275
    .line 276
    :cond_9
    iget-object v6, v7, Lua/i9;->h:Lha/u9;

    .line 277
    .line 278
    const-string v8, "\u5206\u914d\u4e2d"

    .line 279
    .line 280
    invoke-virtual {v6, v8}, Lha/u9;->c(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    new-instance v6, Lph/j;

    .line 284
    .line 285
    invoke-direct {v6, v0, v5}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    new-instance v0, Lmc/c;

    .line 289
    .line 290
    invoke-direct {v0, v1, v6}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    new-instance v1, Lua/a9;

    .line 308
    .line 309
    invoke-direct {v1, v7, v2}, Lua/a9;-><init>(Lua/i9;I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_9

    .line 316
    .line 317
    :cond_a
    const-string v8, "\u5b89\u88c5"

    .line 318
    .line 319
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v8

    .line 323
    iget-object v15, v5, Lua/u8;->b:Lx9/w3;

    .line 324
    .line 325
    if-eqz v8, :cond_b

    .line 326
    .line 327
    iget-object v0, v15, Lx9/w3;->b:Ljava/lang/String;

    .line 328
    .line 329
    invoke-virtual {v7, v0}, Lua/i9;->s(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_9

    .line 333
    .line 334
    :cond_b
    const-string v5, "\u6253\u5f00"

    .line 335
    .line 336
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    if-eqz v5, :cond_1e

    .line 341
    .line 342
    const-string v0, "/data/"

    .line 343
    .line 344
    iget-object v5, v7, Lua/i9;->z:Lx9/f0;

    .line 345
    .line 346
    invoke-virtual {v5, v9}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    check-cast v5, Lx9/w3;

    .line 351
    .line 352
    iget-boolean v6, v5, Lx9/w3;->c:Z

    .line 353
    .line 354
    if-eqz v6, :cond_c

    .line 355
    .line 356
    iget-object v0, v7, Lua/i9;->x:Lx9/g0;

    .line 357
    .line 358
    invoke-virtual {v0, v5}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    iget-object v0, v7, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 362
    .line 363
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 364
    .line 365
    .line 366
    iget-object v0, v7, Lua/i9;->w:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 367
    .line 368
    iget-object v2, v7, Lua/i9;->x:Lx9/g0;

    .line 369
    .line 370
    invoke-static {v2, v11, v0}, Lg/b;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v7, v5, v1}, Lua/i9;->n(Lx9/w3;Z)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_9

    .line 377
    .line 378
    :cond_c
    :try_start_0
    new-instance v6, Ljava/io/File;

    .line 379
    .line 380
    iget-object v8, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 381
    .line 382
    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 386
    .line 387
    .line 388
    move-result v6

    .line 389
    if-nez v6, :cond_d

    .line 390
    .line 391
    const-string v6, "\u7b2c\u4e09\u65b9\u5e94\u8be5\u65e0\u6743\u9650\u6253\u5f00\u6b64\u6587\u4ef6"

    .line 392
    .line 393
    invoke-static {v6}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .line 395
    .line 396
    goto :goto_1

    .line 397
    :catch_0
    nop

    .line 398
    :cond_d
    :goto_1
    iget-object v6, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 399
    .line 400
    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    move-result v6

    .line 404
    if-lez v6, :cond_13

    .line 405
    .line 406
    iget-object v8, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 407
    .line 408
    invoke-static {v8}, Lif/a;->f0(Ljava/lang/String;)Z

    .line 409
    .line 410
    .line 411
    move-result v8

    .line 412
    if-nez v8, :cond_12

    .line 413
    .line 414
    iget-object v8, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 415
    .line 416
    const-string v9, ".pcm"

    .line 417
    .line 418
    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 419
    .line 420
    .line 421
    move-result v8

    .line 422
    if-eqz v8, :cond_e

    .line 423
    .line 424
    goto :goto_2

    .line 425
    :cond_e
    iget-object v8, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 426
    .line 427
    invoke-static {v8}, Lif/a;->j0(Ljava/lang/String;)Z

    .line 428
    .line 429
    .line 430
    move-result v8

    .line 431
    if-eqz v8, :cond_f

    .line 432
    .line 433
    const-string v6, "\u89c6\u9891"

    .line 434
    .line 435
    goto :goto_3

    .line 436
    :cond_f
    iget-object v8, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 437
    .line 438
    invoke-static {v8}, Lif/a;->c0(Ljava/lang/String;)Z

    .line 439
    .line 440
    .line 441
    move-result v8

    .line 442
    if-eqz v8, :cond_10

    .line 443
    .line 444
    const-string v6, "\u56fe\u7247"

    .line 445
    .line 446
    goto :goto_3

    .line 447
    :cond_10
    iget-object v8, v5, Lx9/w3;->a:Ljava/lang/String;

    .line 448
    .line 449
    invoke-static {v8}, Lif/a;->i0(Ljava/lang/String;)Z

    .line 450
    .line 451
    .line 452
    move-result v8

    .line 453
    if-eqz v8, :cond_11

    .line 454
    .line 455
    const-string v6, "\u6587\u672c"

    .line 456
    .line 457
    goto :goto_3

    .line 458
    :cond_11
    iget-object v8, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 459
    .line 460
    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 465
    .line 466
    .line 467
    move-result-object v8

    .line 468
    invoke-virtual {v6, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v6

    .line 472
    goto :goto_3

    .line 473
    :cond_12
    :goto_2
    const-string v6, "\u97f3\u4e50"

    .line 474
    .line 475
    goto :goto_3

    .line 476
    :cond_13
    const-string v6, ""

    .line 477
    .line 478
    :goto_3
    sget-object v8, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 479
    .line 480
    invoke-virtual {v8, v6}, Lcom/yunpan/appmanage/util/w;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v8

    .line 484
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 485
    .line 486
    .line 487
    move-result v9

    .line 488
    const-string v13, ".fileprovider"

    .line 489
    .line 490
    const/16 v14, 0x18

    .line 491
    .line 492
    const/high16 v15, 0x10000000

    .line 493
    .line 494
    const-string v10, "android.intent.action.VIEW"

    .line 495
    .line 496
    if-nez v9, :cond_19

    .line 497
    .line 498
    const-string v9, "----"

    .line 499
    .line 500
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 501
    .line 502
    .line 503
    move-result v16

    .line 504
    if-eqz v16, :cond_19

    .line 505
    .line 506
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v8

    .line 510
    aget-object v9, v8, v1

    .line 511
    .line 512
    aget-object v8, v8, v11

    .line 513
    .line 514
    :try_start_1
    new-instance v1, Ljava/io/File;

    .line 515
    .line 516
    iget-object v12, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 517
    .line 518
    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    new-instance v12, Landroid/content/Intent;

    .line 522
    .line 523
    invoke-direct {v12, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v12, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 527
    .line 528
    .line 529
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 530
    .line 531
    if-lt v15, v14, :cond_17

    .line 532
    .line 533
    sget-object v15, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 534
    .line 535
    sget-object v15, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 536
    .line 537
    iget-boolean v14, v15, Lcom/yunpan/appmanage/util/k;->k:Z

    .line 538
    .line 539
    if-eqz v14, :cond_16

    .line 540
    .line 541
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v14

    .line 545
    const-string v2, "/data/data/"

    .line 546
    .line 547
    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    if-nez v2, :cond_15

    .line 552
    .line 553
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    new-instance v14, Ljava/lang/StringBuilder;

    .line 558
    .line 559
    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    iget-object v0, v15, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 563
    .line 564
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    const-string v0, "/"

    .line 568
    .line 569
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 577
    .line 578
    .line 579
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 580
    if-eqz v0, :cond_14

    .line 581
    .line 582
    goto :goto_4

    .line 583
    :cond_14
    const/high16 v0, 0x4000000

    .line 584
    .line 585
    :try_start_2
    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 586
    .line 587
    .line 588
    const-string v0, "file_path"

    .line 589
    .line 590
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    invoke-virtual {v12, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    .line 596
    .line 597
    const-string v0, "file_type"

    .line 598
    .line 599
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->i(Ljava/io/File;)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    .line 605
    .line 606
    const-string v0, "pkg"

    .line 607
    .line 608
    invoke-virtual {v12, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    .line 610
    .line 611
    const-string v0, "cls"

    .line 612
    .line 613
    invoke-virtual {v12, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    .line 615
    .line 616
    new-instance v0, Landroid/content/ComponentName;

    .line 617
    .line 618
    const-string v1, "com.gj.openfile"

    .line 619
    .line 620
    const-string v2, "com.gj.openfile.MainActivity"

    .line 621
    .line 622
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 626
    .line 627
    .line 628
    iget-object v0, v7, Lda/h;->e:Landroid/content/Context;

    .line 629
    .line 630
    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 631
    .line 632
    .line 633
    goto/16 :goto_9

    .line 634
    .line 635
    :catch_1
    move-exception v0

    .line 636
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 637
    .line 638
    .line 639
    goto/16 :goto_9

    .line 640
    .line 641
    :catch_2
    const-string v0, "\u516c\u7b7eUID\u7248\u9700\u5b89\u88c5[\u7ba1\u5bb6\u6253\u5f00\u63d2\u4ef6]\uff0c\u5426\u5219\u65e0\u6cd5\u8ba9\u7b2c\u4e09\u65b9\u5e94\u7528\u6253\u5f00\u6587\u4ef6"

    .line 642
    .line 643
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_9

    .line 647
    .line 648
    :cond_15
    :goto_4
    const-string v0, "\u516c\u7b7eUID\u7248\u7684\u6587\u4ef6\uff0c\u7b2c\u4e09\u65b9\u5e94\u7528\u65e0\u6743\u6253\u5f00"

    .line 649
    .line 650
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    goto/16 :goto_9

    .line 654
    .line 655
    :cond_16
    iget-object v0, v7, Lda/h;->e:Landroid/content/Context;

    .line 656
    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    .line 658
    .line 659
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    .line 661
    .line 662
    iget-object v14, v7, Lda/h;->e:Landroid/content/Context;

    .line 663
    .line 664
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v14

    .line 668
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    invoke-static {v0, v2, v1}, Landroidx/core/content/FileProvider;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-virtual {v12, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 683
    .line 684
    .line 685
    const/4 v2, 0x2

    .line 686
    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 687
    .line 688
    .line 689
    const/16 v2, 0x40

    .line 690
    .line 691
    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 692
    .line 693
    .line 694
    const/16 v2, 0x80

    .line 695
    .line 696
    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 697
    .line 698
    .line 699
    goto :goto_5

    .line 700
    :cond_17
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    :goto_5
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->i(Ljava/io/File;)Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    .line 710
    .line 711
    iget-object v0, v7, Lda/h;->e:Landroid/content/Context;

    .line 712
    .line 713
    const/high16 v1, 0x7f130000

    .line 714
    .line 715
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    move-result v0

    .line 723
    if-eqz v0, :cond_18

    .line 724
    .line 725
    iget-object v0, v7, Lda/h;->e:Landroid/content/Context;

    .line 726
    .line 727
    const-class v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 728
    .line 729
    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 730
    .line 731
    .line 732
    goto :goto_6

    .line 733
    :cond_18
    new-instance v0, Landroid/content/ComponentName;

    .line 734
    .line 735
    invoke-direct {v0, v9, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 739
    .line 740
    .line 741
    :goto_6
    iget-object v0, v7, Lda/h;->e:Landroid/content/Context;

    .line 742
    .line 743
    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 744
    .line 745
    .line 746
    goto/16 :goto_9

    .line 747
    .line 748
    :catch_3
    const-string v0, "\u9ed8\u8ba4\u6253\u5f00\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9\u6253\u5f00\u7a0b\u5e8f"

    .line 749
    .line 750
    const/4 v1, 0x0

    .line 751
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 752
    .line 753
    .line 754
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 755
    .line 756
    invoke-virtual {v0, v6}, Lcom/yunpan/appmanage/util/w;->a(Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    :cond_19
    new-instance v0, Ljava/io/File;

    .line 760
    .line 761
    iget-object v1, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 762
    .line 763
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    new-instance v1, Landroid/content/Intent;

    .line 767
    .line 768
    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    const/high16 v2, 0x10000000

    .line 772
    .line 773
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 774
    .line 775
    .line 776
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 777
    .line 778
    const/16 v8, 0x18

    .line 779
    .line 780
    if-lt v2, v8, :cond_1a

    .line 781
    .line 782
    iget-object v2, v7, Lda/h;->e:Landroid/content/Context;

    .line 783
    .line 784
    new-instance v8, Ljava/lang/StringBuilder;

    .line 785
    .line 786
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    .line 788
    .line 789
    iget-object v9, v7, Lda/h;->e:Landroid/content/Context;

    .line 790
    .line 791
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v9

    .line 795
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v8

    .line 805
    invoke-static {v2, v8, v0}, Landroidx/core/content/FileProvider;->c(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    invoke-virtual {v1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 810
    .line 811
    .line 812
    const/4 v8, 0x2

    .line 813
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 814
    .line 815
    .line 816
    const/16 v8, 0x40

    .line 817
    .line 818
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 819
    .line 820
    .line 821
    const/16 v8, 0x80

    .line 822
    .line 823
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 824
    .line 825
    .line 826
    goto :goto_7

    .line 827
    :cond_1a
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 828
    .line 829
    .line 830
    move-result-object v2

    .line 831
    :goto_7
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->i(Ljava/io/File;)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    .line 837
    .line 838
    iget-object v0, v7, Lda/h;->e:Landroid/content/Context;

    .line 839
    .line 840
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    const/4 v2, 0x0

    .line 845
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    new-instance v1, Ljava/util/ArrayList;

    .line 850
    .line 851
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .line 853
    .line 854
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 859
    .line 860
    .line 861
    move-result v2

    .line 862
    if-eqz v2, :cond_1c

    .line 863
    .line 864
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v2

    .line 868
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 869
    .line 870
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 871
    .line 872
    iget-boolean v8, v8, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 873
    .line 874
    if-nez v8, :cond_1b

    .line 875
    .line 876
    goto :goto_8

    .line 877
    :cond_1b
    new-instance v8, Lx9/t3;

    .line 878
    .line 879
    iget-object v9, v7, Lda/h;->e:Landroid/content/Context;

    .line 880
    .line 881
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 882
    .line 883
    .line 884
    move-result-object v9

    .line 885
    invoke-virtual {v2, v9}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 886
    .line 887
    .line 888
    move-result-object v9

    .line 889
    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 890
    .line 891
    iget-object v11, v7, Lda/h;->e:Landroid/content/Context;

    .line 892
    .line 893
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 894
    .line 895
    .line 896
    move-result-object v11

    .line 897
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 898
    .line 899
    .line 900
    move-result-object v10

    .line 901
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v10

    .line 905
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 906
    .line 907
    iget-object v11, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 908
    .line 909
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 910
    .line 911
    invoke-direct {v8, v9, v10, v11, v2}, Lx9/t3;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    .line 916
    .line 917
    goto :goto_8

    .line 918
    :cond_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 919
    .line 920
    .line 921
    move-result v0

    .line 922
    if-eqz v0, :cond_1d

    .line 923
    .line 924
    const-string v0, "\u6ca1\u627e\u5230\u5408\u9002\u7684\u7b2c\u4e09\u65b9\u5e94\u7528\u6253\u5f00\u6b64\u7c7b\u578b\u6587\u4ef6"

    .line 925
    .line 926
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 927
    .line 928
    .line 929
    goto/16 :goto_9

    .line 930
    .line 931
    :cond_1d
    new-instance v0, Lha/oa;

    .line 932
    .line 933
    iget-object v13, v7, Lda/h;->f:Landroid/app/Activity;

    .line 934
    .line 935
    iget-object v14, v7, Lda/h;->e:Landroid/content/Context;

    .line 936
    .line 937
    iget-object v15, v5, Lx9/w3;->b:Ljava/lang/String;

    .line 938
    .line 939
    move-object v12, v0

    .line 940
    move-object/from16 v16, v6

    .line 941
    .line 942
    move-object/from16 v17, v1

    .line 943
    .line 944
    invoke-direct/range {v12 .. v17}, Lha/oa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 945
    .line 946
    .line 947
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 948
    .line 949
    .line 950
    goto/16 :goto_9

    .line 951
    .line 952
    :cond_1e
    const-string v1, "\u5220\u9664"

    .line 953
    .line 954
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 955
    .line 956
    .line 957
    move-result v1

    .line 958
    if-eqz v1, :cond_1f

    .line 959
    .line 960
    iget-object v1, v7, Lua/i9;->z:Lx9/f0;

    .line 961
    .line 962
    invoke-virtual {v1, v9}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v1

    .line 966
    check-cast v1, Lx9/w3;

    .line 967
    .line 968
    iget-object v2, v7, Lua/i9;->h:Lha/u9;

    .line 969
    .line 970
    const-string v5, "\u5220\u9664\u4e2d"

    .line 971
    .line 972
    invoke-virtual {v2, v5}, Lha/u9;->c(Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 976
    .line 977
    iget-object v5, v1, Lx9/w3;->b:Ljava/lang/String;

    .line 978
    .line 979
    new-instance v6, Lua/u8;

    .line 980
    .line 981
    invoke-direct {v6, v7, v1, v9}, Lua/u8;-><init>(Lua/i9;Lx9/w3;I)V

    .line 982
    .line 983
    .line 984
    iput-object v6, v2, La2/w0;->c:Ljava/lang/Object;

    .line 985
    .line 986
    sget-object v1, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 987
    .line 988
    new-instance v6, Lfa/u;

    .line 989
    .line 990
    invoke-direct {v6, v2, v5, v0}, Lfa/u;-><init>(La2/w0;Ljava/lang/String;I)V

    .line 991
    .line 992
    .line 993
    invoke-interface {v1, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 994
    .line 995
    .line 996
    goto :goto_9

    .line 997
    :cond_1f
    const-string v1, "\u6539\u540d"

    .line 998
    .line 999
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1000
    .line 1001
    .line 1002
    move-result v1

    .line 1003
    if-eqz v1, :cond_20

    .line 1004
    .line 1005
    new-instance v1, Lha/hb;

    .line 1006
    .line 1007
    iget-object v13, v7, Lda/h;->f:Landroid/app/Activity;

    .line 1008
    .line 1009
    iget-object v14, v7, Lda/h;->e:Landroid/content/Context;

    .line 1010
    .line 1011
    new-instance v2, Lua/t8;

    .line 1012
    .line 1013
    invoke-direct {v2, v7, v9, v0}, Lua/t8;-><init>(Lua/i9;II)V

    .line 1014
    .line 1015
    .line 1016
    const/16 v16, 0x2

    .line 1017
    .line 1018
    move-object v12, v1

    .line 1019
    move-object/from16 v17, v2

    .line 1020
    .line 1021
    invoke-direct/range {v12 .. v17}, Lha/hb;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/w3;ILha/gb;)V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 1025
    .line 1026
    .line 1027
    goto :goto_9

    .line 1028
    :cond_20
    const-string v0, "\u590d\u5236"

    .line 1029
    .line 1030
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1031
    .line 1032
    .line 1033
    move-result v0

    .line 1034
    if-eqz v0, :cond_21

    .line 1035
    .line 1036
    const/4 v1, 0x0

    .line 1037
    invoke-virtual {v7, v9, v1}, Lua/i9;->o(IZ)V

    .line 1038
    .line 1039
    .line 1040
    goto :goto_9

    .line 1041
    :cond_21
    const-string v0, "\u79fb\u52a8"

    .line 1042
    .line 1043
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1044
    .line 1045
    .line 1046
    move-result v0

    .line 1047
    if-eqz v0, :cond_22

    .line 1048
    .line 1049
    invoke-virtual {v7, v9, v11}, Lua/i9;->o(IZ)V

    .line 1050
    .line 1051
    .line 1052
    goto :goto_9

    .line 1053
    :cond_22
    const-string v0, "\u89e3\u538b"

    .line 1054
    .line 1055
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1056
    .line 1057
    .line 1058
    move-result v0

    .line 1059
    if-eqz v0, :cond_23

    .line 1060
    .line 1061
    const/4 v0, 0x0

    .line 1062
    invoke-virtual {v7, v9, v0}, Lua/i9;->p(ILjava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    goto :goto_9

    .line 1066
    :cond_23
    const-string v0, "\u538b\u7f29"

    .line 1067
    .line 1068
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1069
    .line 1070
    .line 1071
    move-result v0

    .line 1072
    if-eqz v0, :cond_24

    .line 1073
    .line 1074
    iget-object v0, v7, Lua/i9;->z:Lx9/f0;

    .line 1075
    .line 1076
    invoke-virtual {v0, v9}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    check-cast v0, Lx9/w3;

    .line 1081
    .line 1082
    iget-object v1, v0, Lx9/w3;->b:Ljava/lang/String;

    .line 1083
    .line 1084
    new-instance v2, Lha/ke;

    .line 1085
    .line 1086
    iget-object v5, v7, Lda/h;->f:Landroid/app/Activity;

    .line 1087
    .line 1088
    iget-object v6, v7, Lda/h;->e:Landroid/content/Context;

    .line 1089
    .line 1090
    new-instance v8, Lua/g6;

    .line 1091
    .line 1092
    const/4 v9, 0x7

    .line 1093
    invoke-direct {v8, v7, v9, v0}, Lua/g6;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1094
    .line 1095
    .line 1096
    invoke-direct {v2, v5, v6, v1, v8}, Lha/ke;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Lha/je;)V

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 1100
    .line 1101
    .line 1102
    :cond_24
    :goto_9
    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1103
    .line 1104
    .line 1105
    return-void
.end method
