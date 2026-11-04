.class public final Lcom/yunpan/appmanage/util/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Lz7/s;

.field public final c:Lz7/o;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/yunpan/appmanage/util/d0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/io/File;

    .line 10
    .line 11
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "urlList.json"

    .line 22
    .line 23
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v1, "YpUrl"

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    :try_start_0
    iget-object v0, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lz7/p;->f()Lz7/o;

    .line 46
    .line 47
    .line 48
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    new-instance v0, Lz7/o;

    .line 51
    .line 52
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 53
    .line 54
    .line 55
    :goto_0
    iget-object v2, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    .line 63
    new-instance v3, Lz7/o;

    .line 64
    .line 65
    invoke-direct {v3}, Lz7/o;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v3, p0, Lcom/yunpan/appmanage/util/d0;->c:Lz7/o;

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-ge v3, v4, :cond_0

    .line 76
    .line 77
    invoke-virtual {v0, v3}, Lz7/o;->l(I)Lz7/p;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v4}, Lz7/p;->i()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    iget-object v5, p0, Lcom/yunpan/appmanage/util/d0;->c:Lz7/o;

    .line 86
    .line 87
    invoke-virtual {v5, v4}, Lz7/o;->j(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_0
    new-instance v0, Lz7/s;

    .line 94
    .line 95
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 99
    .line 100
    iget-object v2, p0, Lcom/yunpan/appmanage/util/d0;->c:Lz7/o;

    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/d0;->f()V

    .line 106
    .line 107
    .line 108
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    :try_start_1
    iget-object v2, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 114
    .line 115
    invoke-virtual {v2, v1}, Lz7/s;->r(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    .line 117
    .line 118
    :catch_1
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_1
    new-instance v0, Lz7/o;

    .line 123
    .line 124
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v2, "\u5e94\u7528\u7ba1\u5bb6-\u84dd\u594f\u76d8\uff1ahttps://wwo.lanzouj.com/b048jxb9a#6666"

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Lz7/o;->j(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v2, "\u5e94\u7528\u7ba1\u5bb6-\u5149\u9e2d\u4e91\uff1ahttps://www.guangyapan.com/s/1956000098018152457_ardOljitEJ37HnkI"

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Lz7/o;->j(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v2, "\u5e94\u7528\u7ba1\u5bb6-\u5c0f\u98de\u673a\uff1ahttps://share.feijipan.com/s/ZHVcIJIu"

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Lz7/o;->j(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance v2, Lz7/s;

    .line 143
    .line 144
    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v2, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 148
    .line 149
    invoke-virtual {v2, v1, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/d0;->f()V

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_2
    :try_start_2
    invoke-static {p1}, Lq4/a;->J(Ljava/io/File;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    iput-object p1, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 168
    .line 169
    invoke-virtual {p1, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    iput-object p1, p0, Lcom/yunpan/appmanage/util/d0;->c:Lz7/o;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :catch_2
    new-instance p1, Lz7/s;

    .line 177
    .line 178
    invoke-direct {p1}, Lz7/s;-><init>()V

    .line 179
    .line 180
    .line 181
    iput-object p1, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 182
    .line 183
    new-instance v0, Lz7/o;

    .line 184
    .line 185
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v1, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/d0;->f()V

    .line 192
    .line 193
    .line 194
    new-instance p1, Lz7/o;

    .line 195
    .line 196
    invoke-direct {p1}, Lz7/o;-><init>()V

    .line 197
    .line 198
    .line 199
    iput-object p1, p0, Lcom/yunpan/appmanage/util/d0;->c:Lz7/o;

    .line 200
    .line 201
    :goto_3
    return-void

    .line 202
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    .line 204
    .line 205
    new-instance p1, Ljava/io/File;

    .line 206
    .line 207
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 208
    .line 209
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    const-string v1, "wpList.json"

    .line 218
    .line 219
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    const-string v1, "wpList"

    .line 227
    .line 228
    if-nez v0, :cond_4

    .line 229
    .line 230
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    :try_start_3
    iget-object v0, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lz7/p;->f()Lz7/o;

    .line 242
    .line 243
    .line 244
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 245
    goto :goto_4

    .line 246
    :catch_3
    new-instance v0, Lz7/o;

    .line 247
    .line 248
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 249
    .line 250
    .line 251
    :goto_4
    iget-object v2, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    if-nez v3, :cond_4

    .line 258
    .line 259
    new-instance v3, Lz7/o;

    .line 260
    .line 261
    invoke-direct {v3}, Lz7/o;-><init>()V

    .line 262
    .line 263
    .line 264
    iput-object v3, p0, Lcom/yunpan/appmanage/util/d0;->c:Lz7/o;

    .line 265
    .line 266
    const/4 v3, 0x0

    .line 267
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-ge v3, v4, :cond_3

    .line 272
    .line 273
    invoke-virtual {v0, v3}, Lz7/o;->l(I)Lz7/p;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    iget-object v5, p0, Lcom/yunpan/appmanage/util/d0;->c:Lz7/o;

    .line 282
    .line 283
    invoke-virtual {v5, v4}, Lz7/o;->k(Lz7/p;)V

    .line 284
    .line 285
    .line 286
    add-int/lit8 v3, v3, 0x1

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_3
    new-instance v0, Lz7/s;

    .line 290
    .line 291
    invoke-direct {v0}, Lz7/s;-><init>()V

    .line 292
    .line 293
    .line 294
    iput-object v0, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 295
    .line 296
    iget-object v2, p0, Lcom/yunpan/appmanage/util/d0;->c:Lz7/o;

    .line 297
    .line 298
    invoke-virtual {v0, v1, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/d0;->f()V

    .line 302
    .line 303
    .line 304
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 305
    .line 306
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    :try_start_4
    iget-object v2, v0, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 310
    .line 311
    invoke-virtual {v2, v1}, Lz7/s;->r(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 312
    .line 313
    .line 314
    :catch_4
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 315
    .line 316
    .line 317
    :cond_4
    :try_start_5
    invoke-static {p1}, Lq4/a;->J(Ljava/io/File;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-static {p1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    iput-object p1, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 330
    .line 331
    invoke-virtual {p1, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    iput-object p1, p0, Lcom/yunpan/appmanage/util/d0;->c:Lz7/o;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 336
    .line 337
    goto :goto_6

    .line 338
    :catch_5
    new-instance p1, Lz7/s;

    .line 339
    .line 340
    invoke-direct {p1}, Lz7/s;-><init>()V

    .line 341
    .line 342
    .line 343
    iput-object p1, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 344
    .line 345
    new-instance v0, Lz7/o;

    .line 346
    .line 347
    invoke-direct {v0}, Lz7/o;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1, v1, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/d0;->f()V

    .line 354
    .line 355
    .line 356
    new-instance p1, Lz7/o;

    .line 357
    .line 358
    invoke-direct {p1}, Lz7/o;-><init>()V

    .line 359
    .line 360
    .line 361
    iput-object p1, p0, Lcom/yunpan/appmanage/util/d0;->c:Lz7/o;

    .line 362
    .line 363
    :goto_6
    return-void

    .line 364
    nop

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lx9/n5;)V
    .locals 8

    .line 1
    const-string v0, "wpList"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lz7/p;->f()Lz7/o;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    iget-object v3, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, -0x1

    .line 24
    if-ge v2, v3, :cond_5

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v5, "type"

    .line 35
    .line 36
    invoke-virtual {v3, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget v6, p1, Lx9/n5;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    if-ne v5, v6, :cond_4

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    const-string v7, "user"

    .line 50
    .line 51
    if-eq v6, v5, :cond_3

    .line 52
    .line 53
    const/4 v5, 0x2

    .line 54
    if-eq v6, v5, :cond_3

    .line 55
    .line 56
    const/16 v5, 0x14

    .line 57
    .line 58
    if-eq v6, v5, :cond_3

    .line 59
    .line 60
    const/16 v5, 0x15

    .line 61
    .line 62
    if-ne v6, v5, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v5, 0x3

    .line 66
    if-eq v6, v5, :cond_2

    .line 67
    .line 68
    const/4 v5, 0x4

    .line 69
    if-eq v6, v5, :cond_2

    .line 70
    .line 71
    const/4 v5, 0x5

    .line 72
    if-eq v6, v5, :cond_2

    .line 73
    .line 74
    const/4 v5, 0x6

    .line 75
    if-eq v6, v5, :cond_2

    .line 76
    .line 77
    const/4 v5, 0x7

    .line 78
    if-ne v6, v5, :cond_4

    .line 79
    .line 80
    :cond_2
    :try_start_1
    iget-object v5, p1, Lx9/n5;->e:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v3, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_4

    .line 95
    .line 96
    iget-object v5, p1, Lx9/n5;->c:Ljava/lang/String;

    .line 97
    .line 98
    const-string v6, "ip"

    .line 99
    .line 100
    invoke-virtual {v3, v6}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_4

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    :goto_1
    iget-object v5, p1, Lx9/n5;->e:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v3, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_4

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_5
    const/4 v2, -0x1

    .line 136
    :goto_2
    if-ne v2, v4, :cond_6

    .line 137
    .line 138
    invoke-virtual {p1}, Lx9/n5;->c()Lz7/s;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v1, p1}, Lz7/o;->k(Lz7/p;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_6
    invoke-virtual {p1}, Lx9/n5;->c()Lz7/s;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v1, v2, p1}, Lz7/o;->o(ILz7/p;)V

    .line 151
    .line 152
    .line 153
    :goto_3
    iget-object p1, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 154
    .line 155
    invoke-virtual {p1, v0, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/d0;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    .line 160
    .line 161
    :catch_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 1
    const-string v0, "YpUrl"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lz7/p;->f()Lz7/o;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Lz7/o;->n(I)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/d0;->f()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/d0;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    :catch_0
    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 7
    .line 8
    const-string v2, "wpList"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lz7/p;->f()Lz7/o;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    iget-object v3, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ge v2, v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 32
    .line 33
    .line 34
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    :try_start_1
    new-instance v4, Lx9/n5;

    .line 36
    .line 37
    invoke-direct {v4, v3}, Lx9/n5;-><init>(Lz7/s;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    .line 42
    .line 43
    :catch_0
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_1
    :cond_0
    return-object v0
.end method

.method public d()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v0, "/sdcard"

    .line 16
    .line 17
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 18
    .line 19
    const-string v2, "/."

    .line 20
    .line 21
    invoke-static {v0, v2}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "/\u7f51\u76d8\u5730\u5740\u5907\u4efd.txt"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 53
    .line 54
    .line 55
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    goto :goto_5

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .line 65
    .line 66
    new-instance v3, Ljava/io/FileReader;

    .line 67
    .line 68
    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, "\n"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    goto :goto_1

    .line 91
    :catch_1
    move-exception v1

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    return-void

    .line 115
    :cond_3
    :try_start_2
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lz7/p;->f()Lz7/o;

    .line 120
    .line 121
    .line 122
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 124
    .line 125
    :try_start_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    const/4 v3, 0x1

    .line 130
    if-le v2, v3, :cond_4

    .line 131
    .line 132
    const/4 v2, 0x0

    .line 133
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-ge v2, v3, :cond_4

    .line 138
    .line 139
    iget-object v3, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 140
    .line 141
    const-string v4, "YpUrl"

    .line 142
    .line 143
    invoke-virtual {v3, v4, v0}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/d0;->f()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 147
    .line 148
    .line 149
    add-int/lit8 v2, v2, 0x1

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :catch_2
    :cond_4
    :goto_5
    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/d0;->d()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 10
    .line 11
    const-string v2, "YpUrl"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lz7/p;->f()Lz7/o;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    iget-object v3, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ge v2, v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lz7/o;->l(I)Lz7/p;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lz7/p;->i()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    :cond_0
    return-object v0
.end method

.method public final f()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/util/d0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "wpList.json"

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lq4/a;->N(Ljava/io/File;Lz7/s;)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    new-instance v0, Ljava/io/File;

    .line 30
    .line 31
    sget-object v1, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "urlList.json"

    .line 42
    .line 43
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 47
    .line 48
    invoke-static {v0, v1}, Lq4/a;->N(Ljava/io/File;Lz7/s;)Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public g()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v0, "/sdcard"

    .line 16
    .line 17
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 18
    .line 19
    const-string v2, "/."

    .line 20
    .line 21
    invoke-static {v0, v2}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    sget-object v4, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, "/"

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 56
    .line 57
    invoke-static {v0, v2}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sget-object v2, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, "/\u7f51\u76d8\u5730\u5740\u5907\u4efd.txt"

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :try_start_1
    new-instance v0, Ljava/io/FileWriter;

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Ljava/io/BufferedWriter;

    .line 88
    .line 89
    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 93
    .line 94
    const-string v2, "YpUrl"

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lz7/p;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_1
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    :goto_0
    return-void
.end method

.method public h(ILx9/n5;)V
    .locals 2

    .line 1
    const-string v0, "wpList"

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lz7/p;->f()Lz7/o;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p2}, Lx9/n5;->c()Lz7/s;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v1, p1, p2}, Lz7/o;->o(ILz7/p;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/yunpan/appmanage/util/d0;->b:Lz7/s;

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/yunpan/appmanage/util/d0;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    :catch_0
    return-void
.end method
