.class public final synthetic La1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb8/o;
.implements Lh2/k;
.implements Lc6/e;
.implements Lha/a6;
.implements Lea/c;
.implements Lec/d;
.implements Lha/ga;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, La1/d;->a:I

    iput-object p2, p0, La1/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lc6/g;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p2, p0, La1/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lha/b6;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lx9/w3;

    .line 13
    .line 14
    iget-object p3, p2, Lha/b6;->j:Lha/a6;

    .line 15
    .line 16
    invoke-interface {p3, p1}, Lha/a6;->f(Lx9/w3;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final h(Lc6/g;Landroid/view/View;I)V
    .locals 4

    .line 1
    iget-object p1, p0, La1/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lha/e6;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ls1/g;->Y(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p1, Lha/e6;->h:Lx9/v0;

    .line 12
    .line 13
    invoke-virtual {p2, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lx9/x0;

    .line 18
    .line 19
    iget-object v0, p2, Lx9/x0;->a:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, "\u6587\u4ef6\u83dc\u5355"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 31
    .line 32
    iget v2, v0, Lcom/yunpan/appmanage/util/w;->j0:I

    .line 33
    .line 34
    if-ne v2, v1, :cond_0

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/util/w;->t(I)V

    .line 38
    .line 39
    .line 40
    const-string v0, "\u5207\u6362\u4e3a\u5c45\u4e2d"

    .line 41
    .line 42
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showShort(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    const-string v0, "\u6587\u4ef6\u83dc\u5355\u5c45\u4e2d"

    .line 46
    .line 47
    iput-object v0, p2, Lx9/x0;->a:Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v3, 0x2

    .line 51
    if-ne v2, v3, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/util/w;->t(I)V

    .line 54
    .line 55
    .line 56
    const-string v0, "\u5207\u6362\u4e3a\u9760\u5de6"

    .line 57
    .line 58
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showShort(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "\u6587\u4ef6\u83dc\u5355\u9760\u5de6"

    .line 62
    .line 63
    iput-object v0, p2, Lx9/x0;->a:Ljava/lang/String;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v0, v3}, Lcom/yunpan/appmanage/util/w;->t(I)V

    .line 67
    .line 68
    .line 69
    const-string v0, "\u5207\u6362\u4e3a\u9760\u53f3"

    .line 70
    .line 71
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->showShort(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    const-string v0, "\u6587\u4ef6\u83dc\u5355\u9760\u53f3"

    .line 75
    .line 76
    iput-object v0, p2, Lx9/x0;->a:Ljava/lang/String;

    .line 77
    .line 78
    :goto_0
    iget-object p1, p1, Lha/e6;->h:Lx9/v0;

    .line 79
    .line 80
    invoke-virtual {p1, p3, p2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :cond_2
    iget-boolean v0, p2, Lx9/x0;->b:Z

    .line 86
    .line 87
    xor-int/2addr v0, v1

    .line 88
    iput-boolean v0, p2, Lx9/x0;->b:Z

    .line 89
    .line 90
    iget-object v0, p1, Lha/e6;->h:Lx9/v0;

    .line 91
    .line 92
    invoke-virtual {v0, p3, p2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p2, Lx9/x0;->a:Ljava/lang/String;

    .line 96
    .line 97
    const-string v2, "\u663e\u793a\u9690\u85cf\u6587\u4ef6"

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget-object v2, p1, Lha/e6;->i:Lua/d8;

    .line 104
    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 108
    .line 109
    iget-boolean p2, p2, Lx9/x0;->b:Z

    .line 110
    .line 111
    iput-boolean p2, p1, Lcom/yunpan/appmanage/util/w;->l0:Z

    .line 112
    .line 113
    const-string p3, "mFile_hide"

    .line 114
    .line 115
    :try_start_0
    iget-object v0, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 116
    .line 117
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {v0, p3, p2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    :catch_0
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Lua/d8;->b()V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_1

    .line 131
    .line 132
    :cond_3
    iget-object v0, p2, Lx9/x0;->a:Ljava/lang/String;

    .line 133
    .line 134
    const-string v3, "\u5173\u8054\u56fe\u6807"

    .line 135
    .line 136
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 143
    .line 144
    iget-boolean p2, p2, Lx9/x0;->b:Z

    .line 145
    .line 146
    iput-boolean p2, p1, Lcom/yunpan/appmanage/util/w;->m0:Z

    .line 147
    .line 148
    const-string p3, "mFile_ico"

    .line 149
    .line 150
    :try_start_1
    iget-object v0, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 151
    .line 152
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {v0, p3, p2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    .line 158
    .line 159
    :catch_1
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_1

    .line 163
    .line 164
    :cond_4
    iget-object v0, p2, Lx9/x0;->a:Ljava/lang/String;

    .line 165
    .line 166
    const-string v3, "\u6392\u5e8f"

    .line 167
    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_5

    .line 173
    .line 174
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 175
    .line 176
    iget-boolean p2, p2, Lx9/x0;->b:Z

    .line 177
    .line 178
    iput-boolean p2, p1, Lcom/yunpan/appmanage/util/w;->n0:Z

    .line 179
    .line 180
    const-string p3, "mFile_sort"

    .line 181
    .line 182
    :try_start_2
    iget-object v0, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 183
    .line 184
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-virtual {v0, p3, p2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 189
    .line 190
    .line 191
    :catch_2
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2}, Lua/d8;->b()V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :cond_5
    iget-object v0, p2, Lx9/x0;->a:Ljava/lang/String;

    .line 200
    .line 201
    const-string v2, "\u591a\u6b21\u7c98\u8d34"

    .line 202
    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_6

    .line 208
    .line 209
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 210
    .line 211
    iget-boolean p2, p2, Lx9/x0;->b:Z

    .line 212
    .line 213
    iput-boolean p2, p1, Lcom/yunpan/appmanage/util/w;->o0:Z

    .line 214
    .line 215
    const-string p3, "mFile_copyMulti"

    .line 216
    .line 217
    :try_start_3
    iget-object v0, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 218
    .line 219
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-virtual {v0, p3, p2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 224
    .line 225
    .line 226
    :catch_3
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :cond_6
    iget-object v0, p2, Lx9/x0;->a:Ljava/lang/String;

    .line 232
    .line 233
    const-string v2, "\u56fe\u7247\u9884\u89c8"

    .line 234
    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_7

    .line 240
    .line 241
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 242
    .line 243
    iget-boolean p2, p2, Lx9/x0;->b:Z

    .line 244
    .line 245
    iput-boolean p2, p1, Lcom/yunpan/appmanage/util/w;->k0:Z

    .line 246
    .line 247
    const-string p3, "mFile_hideImage"

    .line 248
    .line 249
    :try_start_4
    iget-object v0, p1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 250
    .line 251
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-virtual {v0, p3, p2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 256
    .line 257
    .line 258
    :catch_4
    invoke-virtual {p1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 259
    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_7
    iget-object v0, p2, Lx9/x0;->a:Ljava/lang/String;

    .line 263
    .line 264
    const-string v2, "\u4f7f\u7528\u65e7\u89e3\u538b\u5668"

    .line 265
    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_a

    .line 271
    .line 272
    iget-boolean v0, p2, Lx9/x0;->b:Z

    .line 273
    .line 274
    if-eqz v0, :cond_8

    .line 275
    .line 276
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 277
    .line 278
    invoke-virtual {p1, v0}, Lcom/yunpan/appmanage/util/w;->v(Z)V

    .line 279
    .line 280
    .line 281
    goto :goto_1

    .line 282
    :cond_8
    :try_start_5
    invoke-static {}, Lnet/sf/sevenzipjbinding/SevenZip;->isInitializedSuccessfully()Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_9

    .line 287
    .line 288
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 289
    .line 290
    iget-boolean v2, p2, Lx9/x0;->b:Z

    .line 291
    .line 292
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/util/w;->v(Z)V

    .line 293
    .line 294
    .line 295
    goto :goto_1

    .line 296
    :cond_9
    new-instance v0, Ljava/lang/Exception;

    .line 297
    .line 298
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 299
    .line 300
    .line 301
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 302
    :catch_5
    iput-boolean v1, p2, Lx9/x0;->b:Z

    .line 303
    .line 304
    iget-object p1, p1, Lha/e6;->h:Lx9/v0;

    .line 305
    .line 306
    invoke-virtual {p1, p3, p2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    goto :goto_1

    .line 310
    :cond_a
    iget-object v0, p2, Lx9/x0;->a:Ljava/lang/String;

    .line 311
    .line 312
    const-string v2, "\u4f7f\u7528\u65e7\u538b\u7f29\u5668"

    .line 313
    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_d

    .line 319
    .line 320
    iget-boolean v0, p2, Lx9/x0;->b:Z

    .line 321
    .line 322
    if-eqz v0, :cond_b

    .line 323
    .line 324
    sget-object p1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 325
    .line 326
    invoke-virtual {p1, v0}, Lcom/yunpan/appmanage/util/w;->u(Z)V

    .line 327
    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_b
    :try_start_6
    invoke-static {}, Lnet/sf/sevenzipjbinding/SevenZip;->isInitializedSuccessfully()Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-eqz v0, :cond_c

    .line 335
    .line 336
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 337
    .line 338
    iget-boolean v2, p2, Lx9/x0;->b:Z

    .line 339
    .line 340
    invoke-virtual {v0, v2}, Lcom/yunpan/appmanage/util/w;->u(Z)V

    .line 341
    .line 342
    .line 343
    goto :goto_1

    .line 344
    :cond_c
    new-instance v0, Ljava/lang/Exception;

    .line 345
    .line 346
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 347
    .line 348
    .line 349
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 350
    :catch_6
    iput-boolean v1, p2, Lx9/x0;->b:Z

    .line 351
    .line 352
    iget-object p1, p1, Lha/e6;->h:Lx9/v0;

    .line 353
    .line 354
    invoke-virtual {p1, p3, p2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    :cond_d
    :goto_1
    return-void
.end method

.method private final i(Lc6/g;Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, La1/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lha/j6;

    .line 4
    .line 5
    iget-object p2, p1, Lha/j6;->i:Lea/c;

    .line 6
    .line 7
    iget-object v0, p1, Lha/j6;->l:Lx9/i2;

    .line 8
    .line 9
    invoke-virtual {v0, p3}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Lcom/yunpan/appmanage/bean/IntIntBean;

    .line 14
    .line 15
    iget p3, p3, Lcom/yunpan/appmanage/bean/IntIntBean;->int1:I

    .line 16
    .line 17
    invoke-interface {p2, p3}, Lea/c;->e(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lha/j6;->dismiss()V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 4

    .line 1
    iget-object v0, p0, La1/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lha/m7;

    .line 4
    .line 5
    iget-object v1, v0, Lha/m7;->w:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 12
    .line 13
    iput-object v1, v0, Lha/m7;->v:Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 14
    .line 15
    iget-object v2, v0, Lha/m7;->s:Landroid/widget/TextView;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iget-object p1, v0, Lha/m7;->p:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, v0, Lha/m7;->q:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x1

    .line 38
    const/4 v3, 0x0

    .line 39
    if-ne p1, v2, :cond_1

    .line 40
    .line 41
    iget-object p1, v0, Lha/m7;->p:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, v0, Lha/m7;->q:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p1, v0, Lha/m7;->p:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object p1, v0, Lha/m7;->q:Landroid/widget/LinearLayout;

    .line 58
    .line 59
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, La1/d;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, La1/d;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v0, Ljava/lang/Class;

    .line 9
    .line 10
    :try_start_0
    sget-object v1, Lb8/w;->a:Lb8/w;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lb8/w;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v1

    .line 18
    new-instance v2, Ljava/lang/RuntimeException;

    .line 19
    .line 20
    const-string v3, "Unable to create instance of "

    .line 21
    .line 22
    const-string v4, ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem."

    .line 23
    .line 24
    invoke-static {v3, v0, v4}, Landroid/support/v4/media/session/a;->r(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw v2

    .line 32
    :pswitch_0
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 33
    .line 34
    const-string v1, "\' with no args"

    .line 35
    .line 36
    const-string v2, "Failed to invoke constructor \'"

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    return-object v0

    .line 44
    :catch_1
    move-exception v0

    .line 45
    sget-object v1, Le8/c;->a:Lif/a;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    .line 48
    .line 49
    const-string v2, "Unexpected IllegalAccessException occurred (Gson 2.13.1). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers."

    .line 50
    .line 51
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :catch_2
    move-exception v3

    .line 56
    new-instance v4, Ljava/lang/RuntimeException;

    .line 57
    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Le8/c;->b(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-direct {v4, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw v4

    .line 85
    :catch_3
    move-exception v3

    .line 86
    new-instance v4, Ljava/lang/RuntimeException;

    .line 87
    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0}, Le8/c;->b(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-direct {v4, v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw v4

    .line 111
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public d(ILr1/r0;[I)Lu7/y0;
    .locals 10

    .line 1
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 2
    .line 3
    const-string v0, "initialCapacity"

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-static {v1, v0}, Lu7/q;->c(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-array v0, v1, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    :goto_0
    iget v1, p2, Lr1/r0;->a:I

    .line 15
    .line 16
    if-ge v7, v1, :cond_1

    .line 17
    .line 18
    new-instance v9, Lh2/f;

    .line 19
    .line 20
    aget v6, p3, v7

    .line 21
    .line 22
    iget-object v1, p0, La1/d;->b:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v5, v1

    .line 25
    check-cast v5, Lh2/i;

    .line 26
    .line 27
    move-object v1, v9

    .line 28
    move v2, p1

    .line 29
    move-object v3, p2

    .line 30
    move v4, v7

    .line 31
    invoke-direct/range {v1 .. v6}, Lh2/f;-><init>(ILr1/r0;ILh2/i;I)V

    .line 32
    .line 33
    .line 34
    array-length v1, v0

    .line 35
    add-int/lit8 v2, v8, 0x1

    .line 36
    .line 37
    invoke-static {v1, v2}, Lu7/a0;->f(II)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    array-length v3, v0

    .line 42
    if-gt v1, v3, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_1
    aput-object v9, v0, v8

    .line 50
    .line 51
    add-int/lit8 v7, v7, 0x1

    .line 52
    .line 53
    move v8, v2

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-static {v8, v0}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method public e(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, La1/d;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public f(Lx9/w3;)V
    .locals 3

    .line 1
    iget v0, p0, La1/d;->a:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La1/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lha/h3;

    .line 9
    .line 10
    iget-object v0, v0, Lha/h3;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lha/r3;

    .line 13
    .line 14
    iget-object v1, v0, Lha/r3;->x:Lx9/d0;

    .line 15
    .line 16
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, Lha/r3;->x:Lx9/d0;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lx9/w3;

    .line 31
    .line 32
    iget-boolean v1, v1, Lx9/w3;->c:Z

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object v1, v0, Lha/r3;->x:Lx9/d0;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lc6/g;->C(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, v0, Lha/r3;->x:Lx9/d0;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :sswitch_0
    iget-object v0, p0, La1/d;->b:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lha/h3;

    .line 50
    .line 51
    iget-object v0, v0, Lha/h3;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lha/j3;

    .line 54
    .line 55
    iput-object p1, v0, Lha/j3;->h:Lx9/w3;

    .line 56
    .line 57
    iget-object v1, v0, Lha/j3;->i:Landroid/widget/TextView;

    .line 58
    .line 59
    iget-object p1, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 65
    .line 66
    const/16 v1, 0x1c

    .line 67
    .line 68
    if-ge p1, v1, :cond_2

    .line 69
    .line 70
    iget-object p1, v0, Lha/j3;->F:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/4 v1, 0x2

    .line 77
    if-le p1, v1, :cond_2

    .line 78
    .line 79
    iget-object p1, v0, Lha/j3;->h:Lx9/w3;

    .line 80
    .line 81
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    const-string v1, ".pcm"

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_1

    .line 94
    .line 95
    iget-object p1, v0, Lha/j3;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    iget-object p1, v0, Lha/j3;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 103
    .line 104
    const/16 v0, 0x8

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_0
    return-void

    .line 110
    :sswitch_1
    iget-object v0, p0, La1/d;->b:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Lha/p0;

    .line 113
    .line 114
    iget-object v0, v0, Lha/p0;->c:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v0, Lha/x0;

    .line 117
    .line 118
    iget-object v0, v0, Lha/x0;->q:Lx9/d0;

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    nop

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public g(Lmc/b;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v3, ""

    .line 6
    .line 7
    const-string v4, ":"

    .line 8
    .line 9
    iget-object v5, v0, La1/d;->b:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v6, 0x2

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x1

    .line 14
    iget v9, v0, La1/d;->a:I

    .line 15
    .line 16
    sparse-switch v9, :sswitch_data_0

    .line 17
    .line 18
    .line 19
    check-cast v5, Lha/j7;

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v3, "http://"

    .line 27
    .line 28
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v3, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 32
    .line 33
    sget-object v3, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 34
    .line 35
    iget-object v6, v3, Lcom/yunpan/appmanage/util/k;->i0:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v3, v3, Lcom/yunpan/appmanage/util/k;->j0:I

    .line 44
    .line 45
    const-string v4, "/input.html"

    .line 46
    .line 47
    invoke-static {v2, v3, v4}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :try_start_0
    iget-object v3, v5, Lha/a4;->b:Landroid/content/Context;

    .line 52
    .line 53
    const/16 v4, 0x118

    .line 54
    .line 55
    invoke-static {v3, v4}, Lcom/yunpan/appmanage/util/k;->d(Landroid/content/Context;I)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-static {v3, v3, v2}, La9/o;->J(IILjava/lang/String;)Landroid/graphics/Bitmap;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    const-string v2, "\u751f\u6210\u4e8c\u7ef4\u7801\u5931\u8d25"

    .line 68
    .line 69
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :sswitch_0
    check-cast v5, Lha/q6;

    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 82
    .line 83
    const-string v10, "\u672a\u77e5"

    .line 84
    .line 85
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v11

    .line 89
    const-string v12, "null"

    .line 90
    .line 91
    const-string v13, "unknown"

    .line 92
    .line 93
    if-nez v11, :cond_0

    .line 94
    .line 95
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    if-nez v11, :cond_0

    .line 100
    .line 101
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    if-eqz v11, :cond_1

    .line 106
    .line 107
    :cond_0
    move-object v9, v3

    .line 108
    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    const-string v14, "  "

    .line 113
    .line 114
    if-eqz v11, :cond_3

    .line 115
    .line 116
    sget-object v9, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-nez v11, :cond_2

    .line 123
    .line 124
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    if-nez v11, :cond_2

    .line 129
    .line 130
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-eqz v11, :cond_4

    .line 135
    .line 136
    :cond_2
    move-object v9, v3

    .line 137
    goto :goto_1

    .line 138
    :cond_3
    sget-object v11, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    if-nez v15, :cond_4

    .line 145
    .line 146
    invoke-static {v9, v14, v11}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    :cond_4
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    if-eqz v11, :cond_6

    .line 155
    .line 156
    sget-object v9, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    if-nez v11, :cond_7

    .line 163
    .line 164
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v11

    .line 168
    if-nez v11, :cond_7

    .line 169
    .line 170
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v11

    .line 174
    if-eqz v11, :cond_5

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_5
    move-object v10, v9

    .line 178
    goto :goto_2

    .line 179
    :cond_6
    sget-object v10, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 182
    .line 183
    .line 184
    move-result v11

    .line 185
    if-nez v11, :cond_5

    .line 186
    .line 187
    invoke-static {v9, v14, v10}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    :cond_7
    :goto_2
    new-instance v9, Lx9/k5;

    .line 192
    .line 193
    const-string v11, "\u578b\u53f7"

    .line 194
    .line 195
    invoke-direct {v9, v11, v10, v7}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v9}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    iget-object v9, v5, Lha/a4;->b:Landroid/content/Context;

    .line 202
    .line 203
    invoke-static {v9}, Lcom/yunpan/appmanage/carsdk/e;->e(Landroid/content/Context;)Z

    .line 204
    .line 205
    .line 206
    move-result v10

    .line 207
    const-wide/16 v13, 0x0

    .line 208
    .line 209
    const-string v11, "%"

    .line 210
    .line 211
    const-string v15, "\u7535\u91cf"

    .line 212
    .line 213
    if-eqz v10, :cond_a

    .line 214
    .line 215
    :try_start_1
    invoke-static {}, Lcom/desay_svautomotive/p023a/C0526b;->m218a()Lcom/desay_svautomotive/p023a/C0526b;

    .line 216
    .line 217
    .line 218
    move-result-object v10

    .line 219
    invoke-virtual {v10, v9}, Lcom/desay_svautomotive/p023a/C0526b;->m230a(Landroid/content/Context;)V

    .line 220
    .line 221
    .line 222
    invoke-static {}, Lcom/desay_svautomotive/p023a/C0526b;->m218a()Lcom/desay_svautomotive/p023a/C0526b;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    const/16 v2, 0x1c

    .line 227
    .line 228
    invoke-virtual {v10, v8, v2}, Lcom/desay_svautomotive/p023a/C0526b;->m237b(II)[I

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    if-eqz v2, :cond_9

    .line 233
    .line 234
    array-length v10, v2

    .line 235
    if-ge v10, v6, :cond_8

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_8
    aget v10, v2, v7

    .line 239
    .line 240
    mul-int/lit16 v10, v10, 0x100

    .line 241
    .line 242
    aget v2, v2, v8

    .line 243
    .line 244
    add-int/2addr v10, v2

    .line 245
    int-to-float v2, v10

    .line 246
    const v10, 0x3dcccccd    # 0.1f

    .line 247
    .line 248
    .line 249
    mul-float v2, v2, v10

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :catchall_0
    nop

    .line 253
    goto :goto_5

    .line 254
    :cond_9
    :goto_3
    const/high16 v2, 0x42c80000    # 100.0f

    .line 255
    .line 256
    :goto_4
    new-instance v10, Lx9/k5;

    .line 257
    .line 258
    new-instance v6, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-direct {v10, v15, v2, v7}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v10}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    .line 278
    .line 279
    :goto_5
    move-object v10, v9

    .line 280
    goto :goto_7

    .line 281
    :cond_a
    :try_start_2
    invoke-static {v9}, Lha/q6;->a(Landroid/content/Context;)I

    .line 282
    .line 283
    .line 284
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 285
    move-object v10, v9

    .line 286
    int-to-long v8, v2

    .line 287
    cmp-long v2, v8, v13

    .line 288
    .line 289
    if-lez v2, :cond_b

    .line 290
    .line 291
    :try_start_3
    new-instance v2, Lx9/k5;

    .line 292
    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    invoke-direct {v2, v15, v6, v7}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 312
    .line 313
    .line 314
    goto :goto_7

    .line 315
    :catch_1
    :goto_6
    nop

    .line 316
    goto :goto_7

    .line 317
    :catch_2
    move-object v10, v9

    .line 318
    goto :goto_6

    .line 319
    :cond_b
    :goto_7
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 320
    .line 321
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 322
    .line 323
    .line 324
    iget-object v5, v5, Lha/a4;->a:Landroid/app/Activity;

    .line 325
    .line 326
    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    invoke-virtual {v6, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 335
    .line 336
    .line 337
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 338
    .line 339
    const/16 v8, 0x780

    .line 340
    .line 341
    if-eq v6, v8, :cond_c

    .line 342
    .line 343
    iget v6, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 344
    .line 345
    const/16 v8, 0x438

    .line 346
    .line 347
    if-eq v6, v8, :cond_c

    .line 348
    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 355
    .line 356
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v8, " x "

    .line 360
    .line 361
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    iget v9, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 365
    .line 366
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    new-instance v9, Lx9/k5;

    .line 374
    .line 375
    const-string v11, "\u5c4f\u5e55"

    .line 376
    .line 377
    invoke-direct {v9, v11, v6, v7}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v9}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 392
    .line 393
    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 400
    .line 401
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 408
    .line 409
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    new-instance v5, Lx9/k5;

    .line 417
    .line 418
    const-string v6, "\u7a97\u53e3"

    .line 419
    .line 420
    invoke-direct {v5, v6, v2, v7}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1, v5}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    const-string v5, "Android"

    .line 429
    .line 430
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 434
    .line 435
    invoke-static {v5}, Lif/a;->w0(I)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const-string v6, " (API:"

    .line 443
    .line 444
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    const-string v8, ")"

    .line 451
    .line 452
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    new-instance v6, Lx9/k5;

    .line 460
    .line 461
    const-string v9, "\u7cfb\u7edf"

    .line 462
    .line 463
    invoke-direct {v6, v9, v2, v7}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v6}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    const/16 v2, 0x15

    .line 470
    .line 471
    if-lt v5, v2, :cond_f

    .line 472
    .line 473
    invoke-static {}, Lg7/d;->w()[Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    array-length v5, v2

    .line 478
    move-object v9, v3

    .line 479
    const/4 v6, 0x0

    .line 480
    :goto_8
    if-ge v6, v5, :cond_e

    .line 481
    .line 482
    aget-object v11, v2, v6

    .line 483
    .line 484
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 485
    .line 486
    .line 487
    move-result v15

    .line 488
    if-nez v15, :cond_d

    .line 489
    .line 490
    const-string v15, ","

    .line 491
    .line 492
    invoke-static {v9, v15, v11}, Lg/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v9

    .line 496
    :goto_9
    const/4 v11, 0x1

    .line 497
    goto :goto_a

    .line 498
    :cond_d
    move-object v9, v11

    .line 499
    goto :goto_9

    .line 500
    :goto_a
    add-int/2addr v6, v11

    .line 501
    goto :goto_8

    .line 502
    :cond_e
    const/4 v11, 0x1

    .line 503
    goto :goto_b

    .line 504
    :cond_f
    const/4 v11, 0x1

    .line 505
    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 506
    .line 507
    :goto_b
    new-instance v2, Lx9/k5;

    .line 508
    .line 509
    const-string v5, "\u652f\u6301"

    .line 510
    .line 511
    invoke-direct {v2, v5, v9, v7}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 515
    .line 516
    .line 517
    new-array v2, v11, [Ljava/lang/String;

    .line 518
    .line 519
    const-string v5, "getprop ro.product.cpu.abi"

    .line 520
    .line 521
    aput-object v5, v2, v7

    .line 522
    .line 523
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    invoke-virtual {v2}, Landroidx/room/s;->q()Z

    .line 532
    .line 533
    .line 534
    move-result v5

    .line 535
    if-eqz v5, :cond_10

    .line 536
    .line 537
    invoke-virtual {v2}, Landroidx/room/s;->k()Ljava/util/List;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 542
    .line 543
    .line 544
    move-result v5

    .line 545
    if-nez v5, :cond_10

    .line 546
    .line 547
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v5

    .line 551
    check-cast v5, Ljava/lang/String;

    .line 552
    .line 553
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result v5

    .line 557
    if-nez v5, :cond_10

    .line 558
    .line 559
    new-instance v5, Lx9/k5;

    .line 560
    .line 561
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    check-cast v2, Ljava/lang/String;

    .line 566
    .line 567
    const-string v9, "\u67b6\u6784"

    .line 568
    .line 569
    invoke-direct {v5, v9, v2, v7}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v1, v5}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    :cond_10
    const/4 v2, 0x1

    .line 576
    new-array v5, v2, [Ljava/lang/String;

    .line 577
    .line 578
    const-string v2, "cat /proc/cpuinfo"

    .line 579
    .line 580
    aput-object v2, v5, v7

    .line 581
    .line 582
    invoke-static {v5}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 583
    .line 584
    .line 585
    move-result-object v2

    .line 586
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    invoke-virtual {v2}, Landroidx/room/s;->q()Z

    .line 591
    .line 592
    .line 593
    move-result v5

    .line 594
    const-string v9, " "

    .line 595
    .line 596
    if-eqz v5, :cond_33

    .line 597
    .line 598
    invoke-virtual {v2}, Landroidx/room/s;->k()Ljava/util/List;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 603
    .line 604
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v5

    .line 608
    const-string v11, "qcom"

    .line 609
    .line 610
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 611
    .line 612
    .line 613
    move-result v11

    .line 614
    if-nez v11, :cond_2b

    .line 615
    .line 616
    const-string v11, "qualcomm"

    .line 617
    .line 618
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 619
    .line 620
    .line 621
    move-result v11

    .line 622
    if-eqz v11, :cond_11

    .line 623
    .line 624
    goto/16 :goto_11

    .line 625
    .line 626
    :cond_11
    const-string v11, "freescale"

    .line 627
    .line 628
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 629
    .line 630
    .line 631
    move-result v11

    .line 632
    if-eqz v11, :cond_12

    .line 633
    .line 634
    const-string v5, "\u98de\u601d\u5361\u5c14"

    .line 635
    .line 636
    goto/16 :goto_12

    .line 637
    .line 638
    :cond_12
    const-string v11, "rackchip"

    .line 639
    .line 640
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    move-result v11

    .line 644
    if-nez v11, :cond_2a

    .line 645
    .line 646
    const-string v11, "rockchip"

    .line 647
    .line 648
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 649
    .line 650
    .line 651
    move-result v11

    .line 652
    if-eqz v11, :cond_13

    .line 653
    .line 654
    goto/16 :goto_10

    .line 655
    .line 656
    :cond_13
    const-string v11, "spreadtrum"

    .line 657
    .line 658
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v11

    .line 662
    if-eqz v11, :cond_14

    .line 663
    .line 664
    const-string v5, "\u5c55\u8baf"

    .line 665
    .line 666
    goto/16 :goto_12

    .line 667
    .line 668
    :cond_14
    const-string v11, "mediatek"

    .line 669
    .line 670
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 671
    .line 672
    .line 673
    move-result v11

    .line 674
    if-nez v11, :cond_29

    .line 675
    .line 676
    const-string v11, "helio"

    .line 677
    .line 678
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 679
    .line 680
    .line 681
    move-result v11

    .line 682
    if-eqz v11, :cond_15

    .line 683
    .line 684
    goto/16 :goto_f

    .line 685
    .line 686
    :cond_15
    const-string v11, "dimensity"

    .line 687
    .line 688
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-result v11

    .line 692
    if-eqz v11, :cond_16

    .line 693
    .line 694
    const-string v5, "\u8054\u53d1\u79d1(\u5929\u7391)"

    .line 695
    .line 696
    goto/16 :goto_12

    .line 697
    .line 698
    :cond_16
    const-string v11, "kirin"

    .line 699
    .line 700
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 701
    .line 702
    .line 703
    move-result v11

    .line 704
    if-eqz v11, :cond_17

    .line 705
    .line 706
    const-string v5, "\u6d77\u601d\u9e92\u9e9f"

    .line 707
    .line 708
    goto/16 :goto_12

    .line 709
    .line 710
    :cond_17
    const-string v11, "hisilicon"

    .line 711
    .line 712
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 713
    .line 714
    .line 715
    move-result v11

    .line 716
    if-eqz v11, :cond_18

    .line 717
    .line 718
    const-string v5, "\u6d77\u601d"

    .line 719
    .line 720
    goto/16 :goto_12

    .line 721
    .line 722
    :cond_18
    const-string v11, "exynos"

    .line 723
    .line 724
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 725
    .line 726
    .line 727
    move-result v11

    .line 728
    if-nez v11, :cond_28

    .line 729
    .line 730
    const-string v11, "samsung"

    .line 731
    .line 732
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 733
    .line 734
    .line 735
    move-result v11

    .line 736
    if-nez v11, :cond_28

    .line 737
    .line 738
    const-string v11, "universal"

    .line 739
    .line 740
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    move-result v11

    .line 744
    if-eqz v11, :cond_19

    .line 745
    .line 746
    goto/16 :goto_e

    .line 747
    .line 748
    :cond_19
    const-string v11, "intel"

    .line 749
    .line 750
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 751
    .line 752
    .line 753
    move-result v11

    .line 754
    if-nez v11, :cond_27

    .line 755
    .line 756
    const-string v11, "mobileye"

    .line 757
    .line 758
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 759
    .line 760
    .line 761
    move-result v11

    .line 762
    if-eqz v11, :cond_1a

    .line 763
    .line 764
    goto/16 :goto_d

    .line 765
    .line 766
    :cond_1a
    const-string v11, "nvidia"

    .line 767
    .line 768
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v11

    .line 772
    if-nez v11, :cond_26

    .line 773
    .line 774
    const-string v11, "tegra"

    .line 775
    .line 776
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    move-result v11

    .line 780
    if-eqz v11, :cond_1b

    .line 781
    .line 782
    goto/16 :goto_c

    .line 783
    .line 784
    :cond_1b
    const-string v11, "ryzen"

    .line 785
    .line 786
    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 787
    .line 788
    .line 789
    move-result v11

    .line 790
    if-eqz v11, :cond_1c

    .line 791
    .line 792
    const-string v5, "AMD\u9510\u9f99"

    .line 793
    .line 794
    goto/16 :goto_12

    .line 795
    .line 796
    :cond_1c
    const-string v11, "amd"

    .line 797
    .line 798
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 799
    .line 800
    .line 801
    move-result v11

    .line 802
    if-eqz v11, :cond_1d

    .line 803
    .line 804
    const-string v5, "AMD"

    .line 805
    .line 806
    goto/16 :goto_12

    .line 807
    .line 808
    :cond_1d
    const-string v11, "jacinto6evm"

    .line 809
    .line 810
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 811
    .line 812
    .line 813
    move-result v11

    .line 814
    if-eqz v11, :cond_1e

    .line 815
    .line 816
    const-string v5, "\u5fb7\u5dde\u4eea\u5668"

    .line 817
    .line 818
    goto/16 :goto_12

    .line 819
    .line 820
    :cond_1e
    const-string v11, "amlogic"

    .line 821
    .line 822
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 823
    .line 824
    .line 825
    move-result v11

    .line 826
    if-eqz v11, :cond_1f

    .line 827
    .line 828
    const-string v5, "\u6676\u6668"

    .line 829
    .line 830
    goto/16 :goto_12

    .line 831
    .line 832
    :cond_1f
    const-string v11, "unisoc"

    .line 833
    .line 834
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 835
    .line 836
    .line 837
    move-result v11

    .line 838
    if-eqz v11, :cond_20

    .line 839
    .line 840
    const-string v5, "\u7d2b\u5149\u5c55\u9510"

    .line 841
    .line 842
    goto :goto_12

    .line 843
    :cond_20
    const-string v11, "horizon"

    .line 844
    .line 845
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 846
    .line 847
    .line 848
    move-result v11

    .line 849
    if-eqz v11, :cond_21

    .line 850
    .line 851
    const-string v5, "\u5730\u5e73\u7ebf"

    .line 852
    .line 853
    goto :goto_12

    .line 854
    :cond_21
    const-string v11, "black sesame"

    .line 855
    .line 856
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 857
    .line 858
    .line 859
    move-result v11

    .line 860
    if-eqz v11, :cond_22

    .line 861
    .line 862
    const-string v5, "\u9ed1\u829d\u9ebb\u667a\u80fd"

    .line 863
    .line 864
    goto :goto_12

    .line 865
    :cond_22
    const-string v11, "renesas"

    .line 866
    .line 867
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 868
    .line 869
    .line 870
    move-result v11

    .line 871
    if-eqz v11, :cond_23

    .line 872
    .line 873
    const-string v5, "\u745e\u8428"

    .line 874
    .line 875
    goto :goto_12

    .line 876
    :cond_23
    const-string v11, "xecarx"

    .line 877
    .line 878
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 879
    .line 880
    .line 881
    move-result v11

    .line 882
    if-eqz v11, :cond_24

    .line 883
    .line 884
    const-string v5, "\u4ebf\u5496\u901a"

    .line 885
    .line 886
    goto :goto_12

    .line 887
    :cond_24
    const-string v11, "x9m"

    .line 888
    .line 889
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 890
    .line 891
    .line 892
    move-result v11

    .line 893
    if-eqz v11, :cond_25

    .line 894
    .line 895
    const-string v5, "\u82af\u9a70 x9m"

    .line 896
    .line 897
    goto :goto_12

    .line 898
    :cond_25
    :try_start_4
    sget-object v11, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 899
    .line 900
    const-string v15, "Allwinner"

    .line 901
    .line 902
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 903
    .line 904
    .line 905
    move-result v11

    .line 906
    if-eqz v11, :cond_2c

    .line 907
    .line 908
    const-string v5, "\u5168\u5fd7"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 909
    .line 910
    goto :goto_12

    .line 911
    :cond_26
    :goto_c
    const-string v5, "\u82f1\u4f1f\u8fbe"

    .line 912
    .line 913
    goto :goto_12

    .line 914
    :cond_27
    :goto_d
    const-string v5, "\u82f1\u7279\u5c14"

    .line 915
    .line 916
    goto :goto_12

    .line 917
    :cond_28
    :goto_e
    const-string v5, "\u4e09\u661f"

    .line 918
    .line 919
    goto :goto_12

    .line 920
    :cond_29
    :goto_f
    const-string v5, "\u8054\u53d1\u79d1"

    .line 921
    .line 922
    goto :goto_12

    .line 923
    :cond_2a
    :goto_10
    const-string v5, "\u745e\u82af\u5fae"

    .line 924
    .line 925
    goto :goto_12

    .line 926
    :cond_2b
    :goto_11
    const-string v5, "\u9ad8\u901a"

    .line 927
    .line 928
    :catch_3
    :cond_2c
    :goto_12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 929
    .line 930
    .line 931
    move-result-object v2

    .line 932
    move-object v15, v3

    .line 933
    const/4 v11, 0x0

    .line 934
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 935
    .line 936
    .line 937
    move-result v16

    .line 938
    if-eqz v16, :cond_31

    .line 939
    .line 940
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v16

    .line 944
    move-object/from16 v6, v16

    .line 945
    .line 946
    check-cast v6, Ljava/lang/String;

    .line 947
    .line 948
    const-string v13, "BogoMIPS"

    .line 949
    .line 950
    invoke-virtual {v6, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 951
    .line 952
    .line 953
    move-result v13

    .line 954
    if-eqz v13, :cond_2d

    .line 955
    .line 956
    const/4 v13, 0x1

    .line 957
    add-int/2addr v11, v13

    .line 958
    goto :goto_14

    .line 959
    :cond_2d
    const/4 v13, 0x1

    .line 960
    const-string v14, "model name"

    .line 961
    .line 962
    invoke-virtual {v6, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 963
    .line 964
    .line 965
    move-result v14

    .line 966
    if-eqz v14, :cond_2e

    .line 967
    .line 968
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 969
    .line 970
    .line 971
    move-result v14

    .line 972
    if-eqz v14, :cond_30

    .line 973
    .line 974
    :try_start_5
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 975
    .line 976
    .line 977
    move-result v14

    .line 978
    add-int/2addr v14, v13

    .line 979
    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v6

    .line 983
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 987
    goto :goto_14

    .line 988
    :catch_4
    nop

    .line 989
    goto :goto_14

    .line 990
    :cond_2e
    const-string v14, "Hardware"

    .line 991
    .line 992
    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 993
    .line 994
    .line 995
    move-result v14

    .line 996
    if-eqz v14, :cond_2f

    .line 997
    .line 998
    :try_start_6
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 999
    .line 1000
    .line 1001
    move-result v14

    .line 1002
    const/4 v13, 0x1

    .line 1003
    add-int/2addr v14, v13

    .line 1004
    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v6

    .line 1008
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v15
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1012
    goto :goto_14

    .line 1013
    :cond_2f
    const-string v14, "cpu cores"

    .line 1014
    .line 1015
    invoke-virtual {v6, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1016
    .line 1017
    .line 1018
    move-result v14

    .line 1019
    if-eqz v14, :cond_30

    .line 1020
    .line 1021
    :try_start_7
    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1022
    .line 1023
    .line 1024
    move-result v14

    .line 1025
    const/4 v13, 0x1

    .line 1026
    add-int/2addr v14, v13

    .line 1027
    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v6

    .line 1031
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v6

    .line 1035
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1036
    .line 1037
    .line 1038
    move-result v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1039
    goto :goto_15

    .line 1040
    :cond_30
    :goto_14
    const-wide/16 v13, 0x0

    .line 1041
    .line 1042
    goto :goto_13

    .line 1043
    :cond_31
    :goto_15
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 1044
    .line 1045
    .line 1046
    move-result v2

    .line 1047
    if-eqz v2, :cond_32

    .line 1048
    .line 1049
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1050
    .line 1051
    const/16 v6, 0x1f

    .line 1052
    .line 1053
    if-lt v2, v6, :cond_32

    .line 1054
    .line 1055
    invoke-static {}, La2/b;->m()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v15

    .line 1059
    :cond_32
    new-instance v2, Lx9/k5;

    .line 1060
    .line 1061
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    .line 1075
    const-string v5, " ("

    .line 1076
    .line 1077
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    const-string v5, "\u6838)"

    .line 1084
    .line 1085
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v5

    .line 1092
    const-string v6, "CPU"

    .line 1093
    .line 1094
    invoke-direct {v2, v6, v5, v7}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1098
    .line 1099
    .line 1100
    :cond_33
    const-string v2, "02:00:00:00:00:00"

    .line 1101
    .line 1102
    :try_start_8
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v5

    .line 1106
    invoke-static {v5}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v5

    .line 1110
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v5

    .line 1114
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1115
    .line 1116
    .line 1117
    move-result v6

    .line 1118
    if-eqz v6, :cond_3a

    .line 1119
    .line 1120
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v6

    .line 1124
    check-cast v6, Ljava/net/NetworkInterface;

    .line 1125
    .line 1126
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v11

    .line 1130
    const-string v14, "wlan0"

    .line 1131
    .line 1132
    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1133
    .line 1134
    .line 1135
    move-result v11

    .line 1136
    if-nez v11, :cond_34

    .line 1137
    .line 1138
    goto :goto_16

    .line 1139
    :cond_34
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    .line 1140
    .line 1141
    .line 1142
    move-result-object v11

    .line 1143
    if-eqz v11, :cond_39

    .line 1144
    .line 1145
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1146
    .line 1147
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1148
    .line 1149
    .line 1150
    array-length v15, v11

    .line 1151
    const/4 v6, 0x0

    .line 1152
    :goto_17
    if-ge v6, v15, :cond_35

    .line 1153
    .line 1154
    aget-byte v16, v11, v6

    .line 1155
    .line 1156
    const-string v13, "%02X:"

    .line 1157
    .line 1158
    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v16

    .line 1162
    const/4 v7, 0x1

    .line 1163
    new-array v0, v7, [Ljava/lang/Object;

    .line 1164
    .line 1165
    const/16 v17, 0x0

    .line 1166
    .line 1167
    aput-object v16, v0, v17

    .line 1168
    .line 1169
    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v0

    .line 1173
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    .line 1175
    .line 1176
    add-int/lit8 v0, v6, 0x1

    .line 1177
    .line 1178
    move v6, v0

    .line 1179
    const/4 v7, 0x0

    .line 1180
    move-object/from16 v0, p0

    .line 1181
    .line 1182
    goto :goto_17

    .line 1183
    :cond_35
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 1184
    .line 1185
    .line 1186
    move-result v0

    .line 1187
    if-lez v0, :cond_36

    .line 1188
    .line 1189
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    .line 1190
    .line 1191
    .line 1192
    move-result v0

    .line 1193
    const/4 v6, 0x1

    .line 1194
    sub-int/2addr v0, v6

    .line 1195
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1196
    .line 1197
    .line 1198
    :cond_36
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v0

    .line 1202
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1203
    .line 1204
    .line 1205
    move-result v7

    .line 1206
    if-eqz v7, :cond_37

    .line 1207
    .line 1208
    move-object v0, v12

    .line 1209
    :cond_37
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1210
    .line 1211
    .line 1212
    move-result v7

    .line 1213
    if-nez v7, :cond_38

    .line 1214
    .line 1215
    goto :goto_19

    .line 1216
    :cond_38
    move-object/from16 v0, p0

    .line 1217
    .line 1218
    const/4 v7, 0x0

    .line 1219
    goto :goto_16

    .line 1220
    :cond_39
    new-instance v0, Ljava/lang/Exception;

    .line 1221
    .line 1222
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1223
    .line 1224
    .line 1225
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 1226
    :catch_5
    :cond_3a
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v0

    .line 1230
    const-string v5, "wifi"

    .line 1231
    .line 1232
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v0

    .line 1236
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1237
    .line 1238
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v0

    .line 1242
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v0

    .line 1246
    if-nez v0, :cond_3b

    .line 1247
    .line 1248
    :goto_18
    move-object v0, v12

    .line 1249
    goto :goto_19

    .line 1250
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v5

    .line 1254
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1255
    .line 1256
    .line 1257
    move-result v2

    .line 1258
    if-eqz v2, :cond_3c

    .line 1259
    .line 1260
    goto :goto_18

    .line 1261
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v0

    .line 1265
    :goto_19
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1266
    .line 1267
    .line 1268
    move-result v2

    .line 1269
    if-nez v2, :cond_3d

    .line 1270
    .line 1271
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1272
    .line 1273
    .line 1274
    move-result v2

    .line 1275
    if-nez v2, :cond_3d

    .line 1276
    .line 1277
    new-instance v2, Lx9/k5;

    .line 1278
    .line 1279
    const-string v5, "MAC"

    .line 1280
    .line 1281
    const/4 v7, 0x0

    .line 1282
    invoke-direct {v2, v5, v0, v7}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1283
    .line 1284
    .line 1285
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1286
    .line 1287
    .line 1288
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1289
    .line 1290
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1291
    .line 1292
    .line 1293
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 1294
    .line 1295
    const-string v5, "yyyy-MM-dd HH:mm:ss"

    .line 1296
    .line 1297
    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1298
    .line 1299
    .line 1300
    new-instance v5, Ljava/util/Date;

    .line 1301
    .line 1302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1303
    .line 1304
    .line 1305
    move-result-wide v10

    .line 1306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1307
    .line 1308
    .line 1309
    move-result-wide v12

    .line 1310
    sub-long/2addr v10, v12

    .line 1311
    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v2

    .line 1318
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    .line 1320
    .line 1321
    const-string v2, "   \uff08\u5df2\u8fd0\u884c\uff1a"

    .line 1322
    .line 1323
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    .line 1325
    .line 1326
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1327
    .line 1328
    .line 1329
    move-result-wide v10

    .line 1330
    const-wide/16 v12, 0x3e8

    .line 1331
    .line 1332
    div-long v12, v10, v12

    .line 1333
    .line 1334
    const-wide/16 v14, 0x3c

    .line 1335
    .line 1336
    rem-long/2addr v12, v14

    .line 1337
    const-wide/32 v16, 0xea60

    .line 1338
    .line 1339
    .line 1340
    div-long v16, v10, v16

    .line 1341
    .line 1342
    rem-long v16, v16, v14

    .line 1343
    .line 1344
    const-wide/32 v14, 0x36ee80

    .line 1345
    .line 1346
    .line 1347
    div-long v14, v10, v14

    .line 1348
    .line 1349
    const-wide/16 v20, 0x18

    .line 1350
    .line 1351
    rem-long v14, v14, v20

    .line 1352
    .line 1353
    const-wide/32 v20, 0x5265c00

    .line 1354
    .line 1355
    .line 1356
    div-long v10, v10, v20

    .line 1357
    .line 1358
    const-wide/16 v18, 0x0

    .line 1359
    .line 1360
    cmp-long v2, v10, v18

    .line 1361
    .line 1362
    if-lez v2, :cond_3e

    .line 1363
    .line 1364
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v2

    .line 1368
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v5

    .line 1372
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1373
    .line 1374
    .line 1375
    move-result-object v7

    .line 1376
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v10

    .line 1380
    const/4 v11, 0x4

    .line 1381
    new-array v11, v11, [Ljava/lang/Object;

    .line 1382
    .line 1383
    const/4 v12, 0x0

    .line 1384
    aput-object v2, v11, v12

    .line 1385
    .line 1386
    const/4 v2, 0x1

    .line 1387
    aput-object v5, v11, v2

    .line 1388
    .line 1389
    const/4 v2, 0x2

    .line 1390
    aput-object v7, v11, v2

    .line 1391
    .line 1392
    const/4 v2, 0x3

    .line 1393
    aput-object v10, v11, v2

    .line 1394
    .line 1395
    const-string v2, "%d\u5929%d\u65f6%d\u5206%d\u79d2"

    .line 1396
    .line 1397
    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v2

    .line 1401
    const/4 v11, 0x0

    .line 1402
    goto :goto_1a

    .line 1403
    :cond_3e
    const/4 v2, 0x3

    .line 1404
    const-wide/16 v10, 0x0

    .line 1405
    .line 1406
    cmp-long v5, v14, v10

    .line 1407
    .line 1408
    if-lez v5, :cond_3f

    .line 1409
    .line 1410
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v5

    .line 1414
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v7

    .line 1418
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v10

    .line 1422
    new-array v2, v2, [Ljava/lang/Object;

    .line 1423
    .line 1424
    const/4 v11, 0x0

    .line 1425
    aput-object v5, v2, v11

    .line 1426
    .line 1427
    const/4 v5, 0x1

    .line 1428
    aput-object v7, v2, v5

    .line 1429
    .line 1430
    const/4 v6, 0x2

    .line 1431
    aput-object v10, v2, v6

    .line 1432
    .line 1433
    const-string v6, "%d\u65f6%d\u5206%d\u79d2"

    .line 1434
    .line 1435
    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v2

    .line 1439
    goto :goto_1a

    .line 1440
    :cond_3f
    const/4 v5, 0x1

    .line 1441
    const/4 v6, 0x2

    .line 1442
    const/4 v11, 0x0

    .line 1443
    const-wide/16 v14, 0x0

    .line 1444
    .line 1445
    cmp-long v2, v16, v14

    .line 1446
    .line 1447
    if-lez v2, :cond_40

    .line 1448
    .line 1449
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v2

    .line 1453
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v7

    .line 1457
    new-array v6, v6, [Ljava/lang/Object;

    .line 1458
    .line 1459
    aput-object v2, v6, v11

    .line 1460
    .line 1461
    aput-object v7, v6, v5

    .line 1462
    .line 1463
    const-string v2, "%d\u5206%d\u79d2"

    .line 1464
    .line 1465
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v2

    .line 1469
    goto :goto_1a

    .line 1470
    :cond_40
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v2

    .line 1474
    new-array v7, v5, [Ljava/lang/Object;

    .line 1475
    .line 1476
    aput-object v2, v7, v11

    .line 1477
    .line 1478
    const-string v2, "%d\u79d2"

    .line 1479
    .line 1480
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v2

    .line 1484
    :goto_1a
    const-string v5, "\uff09"

    .line 1485
    .line 1486
    invoke-static {v2, v5, v0}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v0

    .line 1490
    new-instance v2, Lx9/k5;

    .line 1491
    .line 1492
    const-string v5, "\u5f00\u673a\u65f6\u95f4"

    .line 1493
    .line 1494
    invoke-direct {v2, v5, v0, v11}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1495
    .line 1496
    .line 1497
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1498
    .line 1499
    .line 1500
    :try_start_9
    new-instance v0, Lcom/yunpan/appmanage/bean/MemBean;

    .line 1501
    .line 1502
    invoke-direct {v0}, Lcom/yunpan/appmanage/bean/MemBean;-><init>()V

    .line 1503
    .line 1504
    .line 1505
    const/4 v2, 0x1

    .line 1506
    new-array v5, v2, [Ljava/lang/String;

    .line 1507
    .line 1508
    const-string v2, "cat /proc/meminfo"

    .line 1509
    .line 1510
    aput-object v2, v5, v11

    .line 1511
    .line 1512
    invoke-static {v5}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v2

    .line 1516
    invoke-virtual {v2}, Lv9/e;->l0()Landroidx/room/s;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v2

    .line 1520
    invoke-virtual {v2}, Landroidx/room/s;->k()Ljava/util/List;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v2

    .line 1524
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v2

    .line 1528
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1529
    .line 1530
    .line 1531
    move-result v5

    .line 1532
    if-eqz v5, :cond_49

    .line 1533
    .line 1534
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v5

    .line 1538
    check-cast v5, Ljava/lang/String;

    .line 1539
    .line 1540
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1541
    .line 1542
    .line 1543
    move-result-object v5

    .line 1544
    const-string v7, "MemTotal"

    .line 1545
    .line 1546
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1547
    .line 1548
    .line 1549
    move-result v7

    .line 1550
    if-eqz v7, :cond_42

    .line 1551
    .line 1552
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1553
    .line 1554
    .line 1555
    move-result v7

    .line 1556
    const/4 v6, 0x1

    .line 1557
    add-int/2addr v7, v6

    .line 1558
    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1559
    .line 1560
    .line 1561
    move-result v10

    .line 1562
    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v5

    .line 1566
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v5

    .line 1570
    iput-object v5, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemTotal:Ljava/lang/String;

    .line 1571
    .line 1572
    :cond_41
    :goto_1c
    const/4 v6, 0x1

    .line 1573
    goto :goto_1b

    .line 1574
    :cond_42
    const-string v7, "MemAvailable"

    .line 1575
    .line 1576
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1577
    .line 1578
    .line 1579
    move-result v7

    .line 1580
    if-eqz v7, :cond_43

    .line 1581
    .line 1582
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1583
    .line 1584
    .line 1585
    move-result v7

    .line 1586
    const/4 v6, 0x1

    .line 1587
    add-int/2addr v7, v6

    .line 1588
    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1589
    .line 1590
    .line 1591
    move-result v10

    .line 1592
    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v5

    .line 1596
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v5

    .line 1600
    iput-object v5, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemAvailable:Ljava/lang/String;

    .line 1601
    .line 1602
    goto :goto_1c

    .line 1603
    :cond_43
    const-string v7, "SwapTotal"

    .line 1604
    .line 1605
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1606
    .line 1607
    .line 1608
    move-result v7

    .line 1609
    if-eqz v7, :cond_44

    .line 1610
    .line 1611
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1612
    .line 1613
    .line 1614
    move-result v7

    .line 1615
    const/4 v6, 0x1

    .line 1616
    add-int/2addr v7, v6

    .line 1617
    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1618
    .line 1619
    .line 1620
    move-result v10

    .line 1621
    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v5

    .line 1625
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v5

    .line 1629
    iput-object v5, v0, Lcom/yunpan/appmanage/bean/MemBean;->SwapTotal:Ljava/lang/String;

    .line 1630
    .line 1631
    goto :goto_1c

    .line 1632
    :cond_44
    const-string v7, "SwapFree"

    .line 1633
    .line 1634
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1635
    .line 1636
    .line 1637
    move-result v7

    .line 1638
    if-eqz v7, :cond_45

    .line 1639
    .line 1640
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1641
    .line 1642
    .line 1643
    move-result v7

    .line 1644
    const/4 v6, 0x1

    .line 1645
    add-int/2addr v7, v6

    .line 1646
    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1647
    .line 1648
    .line 1649
    move-result v10

    .line 1650
    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v5

    .line 1654
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v5

    .line 1658
    iput-object v5, v0, Lcom/yunpan/appmanage/bean/MemBean;->SwapFree:Ljava/lang/String;

    .line 1659
    .line 1660
    goto :goto_1c

    .line 1661
    :cond_45
    const-string v7, "MemFree"

    .line 1662
    .line 1663
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1664
    .line 1665
    .line 1666
    move-result v7

    .line 1667
    if-eqz v7, :cond_46

    .line 1668
    .line 1669
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1670
    .line 1671
    .line 1672
    move-result v7

    .line 1673
    const/4 v6, 0x1

    .line 1674
    add-int/2addr v7, v6

    .line 1675
    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1676
    .line 1677
    .line 1678
    move-result v10

    .line 1679
    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v5

    .line 1683
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v5

    .line 1687
    iput-object v5, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemFree:Ljava/lang/String;

    .line 1688
    .line 1689
    goto :goto_1c

    .line 1690
    :cond_46
    const-string v7, "Buffers"

    .line 1691
    .line 1692
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1693
    .line 1694
    .line 1695
    move-result v7

    .line 1696
    if-eqz v7, :cond_47

    .line 1697
    .line 1698
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1699
    .line 1700
    .line 1701
    move-result v7

    .line 1702
    const/4 v6, 0x1

    .line 1703
    add-int/2addr v7, v6

    .line 1704
    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1705
    .line 1706
    .line 1707
    move-result v10

    .line 1708
    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v5

    .line 1712
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v5

    .line 1716
    iput-object v5, v0, Lcom/yunpan/appmanage/bean/MemBean;->Buffers:Ljava/lang/String;

    .line 1717
    .line 1718
    goto/16 :goto_1c

    .line 1719
    .line 1720
    :cond_47
    const-string v7, "Cached"

    .line 1721
    .line 1722
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1723
    .line 1724
    .line 1725
    move-result v7

    .line 1726
    if-eqz v7, :cond_48

    .line 1727
    .line 1728
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1729
    .line 1730
    .line 1731
    move-result v7

    .line 1732
    const/4 v6, 0x1

    .line 1733
    add-int/2addr v7, v6

    .line 1734
    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1735
    .line 1736
    .line 1737
    move-result v10

    .line 1738
    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1739
    .line 1740
    .line 1741
    move-result-object v5

    .line 1742
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1743
    .line 1744
    .line 1745
    move-result-object v5

    .line 1746
    iput-object v5, v0, Lcom/yunpan/appmanage/bean/MemBean;->Cached:Ljava/lang/String;

    .line 1747
    .line 1748
    goto/16 :goto_1c

    .line 1749
    .line 1750
    :cond_48
    const-string v7, "Slab"

    .line 1751
    .line 1752
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1753
    .line 1754
    .line 1755
    move-result v7

    .line 1756
    if-eqz v7, :cond_41

    .line 1757
    .line 1758
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1759
    .line 1760
    .line 1761
    move-result v7

    .line 1762
    const/4 v6, 0x1

    .line 1763
    add-int/2addr v7, v6

    .line 1764
    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1765
    .line 1766
    .line 1767
    move-result v10

    .line 1768
    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1769
    .line 1770
    .line 1771
    move-result-object v5

    .line 1772
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v5

    .line 1776
    iput-object v5, v0, Lcom/yunpan/appmanage/bean/MemBean;->Slab:Ljava/lang/String;

    .line 1777
    .line 1778
    goto/16 :goto_1b

    .line 1779
    .line 1780
    :cond_49
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemAvailable:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 1781
    .line 1782
    const-string v4, "\u771f\u5b9e\u5185\u5b58"

    .line 1783
    .line 1784
    const-string v5, " (\u5df2\u7528: "

    .line 1785
    .line 1786
    if-nez v2, :cond_4a

    .line 1787
    .line 1788
    :try_start_a
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemFree:Ljava/lang/String;

    .line 1789
    .line 1790
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1791
    .line 1792
    .line 1793
    move-result-wide v6

    .line 1794
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/MemBean;->Buffers:Ljava/lang/String;

    .line 1795
    .line 1796
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1797
    .line 1798
    .line 1799
    move-result-wide v9

    .line 1800
    add-double/2addr v6, v9

    .line 1801
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/MemBean;->Cached:Ljava/lang/String;

    .line 1802
    .line 1803
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1804
    .line 1805
    .line 1806
    move-result-wide v9

    .line 1807
    add-double/2addr v6, v9

    .line 1808
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/MemBean;->Slab:Ljava/lang/String;

    .line 1809
    .line 1810
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1811
    .line 1812
    .line 1813
    move-result-wide v9

    .line 1814
    add-double/2addr v6, v9

    .line 1815
    new-instance v2, Lx9/k5;

    .line 1816
    .line 1817
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1818
    .line 1819
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1820
    .line 1821
    .line 1822
    iget-object v10, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemTotal:Ljava/lang/String;

    .line 1823
    .line 1824
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1825
    .line 1826
    .line 1827
    move-result-wide v10

    .line 1828
    invoke-static {v10, v11}, Lha/q6;->e(D)Ljava/lang/String;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v10

    .line 1832
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    .line 1834
    .line 1835
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    .line 1837
    .line 1838
    iget-object v10, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemTotal:Ljava/lang/String;

    .line 1839
    .line 1840
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1841
    .line 1842
    .line 1843
    move-result-wide v10

    .line 1844
    sub-double/2addr v10, v6

    .line 1845
    invoke-static {v10, v11}, Lha/q6;->e(D)Ljava/lang/String;

    .line 1846
    .line 1847
    .line 1848
    move-result-object v6

    .line 1849
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1850
    .line 1851
    .line 1852
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    .line 1854
    .line 1855
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1856
    .line 1857
    .line 1858
    move-result-object v6

    .line 1859
    const/4 v7, 0x0

    .line 1860
    invoke-direct {v2, v4, v6, v7}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1861
    .line 1862
    .line 1863
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1864
    .line 1865
    .line 1866
    goto :goto_1d

    .line 1867
    :cond_4a
    new-instance v2, Lx9/k5;

    .line 1868
    .line 1869
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1870
    .line 1871
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1872
    .line 1873
    .line 1874
    iget-object v7, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemTotal:Ljava/lang/String;

    .line 1875
    .line 1876
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1877
    .line 1878
    .line 1879
    move-result-wide v9

    .line 1880
    invoke-static {v9, v10}, Lha/q6;->e(D)Ljava/lang/String;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v7

    .line 1884
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    .line 1886
    .line 1887
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    .line 1889
    .line 1890
    iget-object v7, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemTotal:Ljava/lang/String;

    .line 1891
    .line 1892
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1893
    .line 1894
    .line 1895
    move-result-wide v9

    .line 1896
    iget-object v7, v0, Lcom/yunpan/appmanage/bean/MemBean;->MemAvailable:Ljava/lang/String;

    .line 1897
    .line 1898
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1899
    .line 1900
    .line 1901
    move-result-wide v11

    .line 1902
    sub-double/2addr v9, v11

    .line 1903
    invoke-static {v9, v10}, Lha/q6;->e(D)Ljava/lang/String;

    .line 1904
    .line 1905
    .line 1906
    move-result-object v7

    .line 1907
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1908
    .line 1909
    .line 1910
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1911
    .line 1912
    .line 1913
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1914
    .line 1915
    .line 1916
    move-result-object v6

    .line 1917
    const/4 v7, 0x0

    .line 1918
    invoke-direct {v2, v4, v6, v7}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1919
    .line 1920
    .line 1921
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 1922
    .line 1923
    .line 1924
    :goto_1d
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/MemBean;->SwapTotal:Ljava/lang/String;

    .line 1925
    .line 1926
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1927
    .line 1928
    .line 1929
    move-result-wide v6

    .line 1930
    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    .line 1931
    .line 1932
    cmpl-double v2, v6, v9

    .line 1933
    .line 1934
    if-lez v2, :cond_4b

    .line 1935
    .line 1936
    new-instance v2, Lx9/k5;

    .line 1937
    .line 1938
    const-string v4, "\u865a\u62df\u5185\u5b58"

    .line 1939
    .line 1940
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1941
    .line 1942
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1943
    .line 1944
    .line 1945
    iget-object v7, v0, Lcom/yunpan/appmanage/bean/MemBean;->SwapTotal:Ljava/lang/String;

    .line 1946
    .line 1947
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1948
    .line 1949
    .line 1950
    move-result-wide v9

    .line 1951
    invoke-static {v9, v10}, Lha/q6;->e(D)Ljava/lang/String;

    .line 1952
    .line 1953
    .line 1954
    move-result-object v7

    .line 1955
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1956
    .line 1957
    .line 1958
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    .line 1960
    .line 1961
    iget-object v5, v0, Lcom/yunpan/appmanage/bean/MemBean;->SwapTotal:Ljava/lang/String;

    .line 1962
    .line 1963
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1964
    .line 1965
    .line 1966
    move-result-wide v9

    .line 1967
    iget-object v0, v0, Lcom/yunpan/appmanage/bean/MemBean;->SwapFree:Ljava/lang/String;

    .line 1968
    .line 1969
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 1970
    .line 1971
    .line 1972
    move-result-wide v11

    .line 1973
    sub-double/2addr v9, v11

    .line 1974
    invoke-static {v9, v10}, Lha/q6;->e(D)Ljava/lang/String;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v0

    .line 1978
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    .line 1980
    .line 1981
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1982
    .line 1983
    .line 1984
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v0

    .line 1988
    const/4 v5, 0x0

    .line 1989
    invoke-direct {v2, v4, v0, v5}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1990
    .line 1991
    .line 1992
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 1993
    .line 1994
    .line 1995
    :catch_6
    :cond_4b
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1996
    .line 1997
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1998
    .line 1999
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 2000
    .line 2001
    if-eqz v2, :cond_51

    .line 2002
    .line 2003
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 2004
    .line 2005
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 2006
    .line 2007
    .line 2008
    move-result v2

    .line 2009
    if-nez v2, :cond_51

    .line 2010
    .line 2011
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 2012
    .line 2013
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 2014
    .line 2015
    const-string v4, "ebebe2"

    .line 2016
    .line 2017
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 2018
    .line 2019
    .line 2020
    move-result v2

    .line 2021
    const-string v4, "\u9002\u5408\u516c\u7b7e"

    .line 2022
    .line 2023
    if-eqz v2, :cond_4c

    .line 2024
    .line 2025
    new-instance v2, Lx9/k5;

    .line 2026
    .line 2027
    const-string v5, "\u516c\u7b7e\u7248(\u98de\u601d\u5361\u5c14)"

    .line 2028
    .line 2029
    const/4 v6, 0x0

    .line 2030
    invoke-direct {v2, v4, v5, v6}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2031
    .line 2032
    .line 2033
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2034
    .line 2035
    .line 2036
    goto :goto_1e

    .line 2037
    :cond_4c
    const/4 v6, 0x0

    .line 2038
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 2039
    .line 2040
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 2041
    .line 2042
    const-string v5, "56cffa"

    .line 2043
    .line 2044
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 2045
    .line 2046
    .line 2047
    move-result v2

    .line 2048
    if-eqz v2, :cond_4d

    .line 2049
    .line 2050
    new-instance v2, Lx9/k5;

    .line 2051
    .line 2052
    const-string v5, "\u516c\u7b7e\u7248\u3001\u539f\u751f\u5b89\u5353"

    .line 2053
    .line 2054
    invoke-direct {v2, v4, v5, v6}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2055
    .line 2056
    .line 2057
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2058
    .line 2059
    .line 2060
    goto :goto_1e

    .line 2061
    :cond_4d
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 2062
    .line 2063
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 2064
    .line 2065
    const-string v5, "f201df"

    .line 2066
    .line 2067
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 2068
    .line 2069
    .line 2070
    move-result v2

    .line 2071
    if-eqz v2, :cond_4e

    .line 2072
    .line 2073
    new-instance v2, Lx9/k5;

    .line 2074
    .line 2075
    const-string v5, "\u516c\u7b7e\u7248(\u5c55\u8bafSC9853)"

    .line 2076
    .line 2077
    invoke-direct {v2, v4, v5, v6}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2078
    .line 2079
    .line 2080
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2081
    .line 2082
    .line 2083
    goto :goto_1e

    .line 2084
    :cond_4e
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 2085
    .line 2086
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 2087
    .line 2088
    const-string v5, "92a528c773d7a141"

    .line 2089
    .line 2090
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2091
    .line 2092
    .line 2093
    move-result v2

    .line 2094
    if-eqz v2, :cond_4f

    .line 2095
    .line 2096
    new-instance v2, Lx9/k5;

    .line 2097
    .line 2098
    const-string v5, "\u516c\u7b7e\u7248(\u745e\u82af\u5faeRK3288)"

    .line 2099
    .line 2100
    invoke-direct {v2, v4, v5, v6}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2101
    .line 2102
    .line 2103
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2104
    .line 2105
    .line 2106
    goto :goto_1e

    .line 2107
    :cond_4f
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 2108
    .line 2109
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 2110
    .line 2111
    const-string v4, "dd9f672ad5cb3cb2"

    .line 2112
    .line 2113
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2114
    .line 2115
    .line 2116
    move-result v2

    .line 2117
    if-eqz v2, :cond_50

    .line 2118
    .line 2119
    goto :goto_1e

    .line 2120
    :cond_50
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 2121
    .line 2122
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 2123
    .line 2124
    const-string v4, "ea73f1e4d2cbcee0"

    .line 2125
    .line 2126
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2127
    .line 2128
    .line 2129
    :cond_51
    :goto_1e
    new-instance v2, Lx9/k5;

    .line 2130
    .line 2131
    iget-object v4, v0, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 2132
    .line 2133
    const-string v5, "\nmd5\uff1a"

    .line 2134
    .line 2135
    const-string v6, "\u5e8f\u5217\u53f7\uff1a"

    .line 2136
    .line 2137
    if-nez v4, :cond_52

    .line 2138
    .line 2139
    move-object v4, v3

    .line 2140
    goto :goto_1f

    .line 2141
    :cond_52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2142
    .line 2143
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2144
    .line 2145
    .line 2146
    iget-object v7, v0, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 2147
    .line 2148
    iget-object v7, v7, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 2149
    .line 2150
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    .line 2152
    .line 2153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2154
    .line 2155
    .line 2156
    iget-object v7, v0, Lcom/yunpan/appmanage/util/k;->q:Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 2157
    .line 2158
    iget-object v7, v7, Lcom/yunpan/appmanage/bean/SignatureBean;->str_md5:Ljava/lang/String;

    .line 2159
    .line 2160
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2161
    .line 2162
    .line 2163
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v4

    .line 2167
    :goto_1f
    const-string v7, "\u7cfb\u7edf\u7b7e\u540d"

    .line 2168
    .line 2169
    const/4 v8, 0x0

    .line 2170
    invoke-direct {v2, v7, v4, v8}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2171
    .line 2172
    .line 2173
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2174
    .line 2175
    .line 2176
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 2177
    .line 2178
    invoke-static {v2}, Ld/b;->v(Ljava/lang/String;)Lcom/yunpan/appmanage/bean/SignatureBean;

    .line 2179
    .line 2180
    .line 2181
    move-result-object v2

    .line 2182
    if-eqz v2, :cond_54

    .line 2183
    .line 2184
    new-instance v4, Lx9/k5;

    .line 2185
    .line 2186
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2187
    .line 2188
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2189
    .line 2190
    .line 2191
    iget-object v6, v2, Lcom/yunpan/appmanage/bean/SignatureBean;->str_number:Ljava/lang/String;

    .line 2192
    .line 2193
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2194
    .line 2195
    .line 2196
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2197
    .line 2198
    .line 2199
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/SignatureBean;->str_md5:Ljava/lang/String;

    .line 2200
    .line 2201
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    .line 2203
    .line 2204
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 2205
    .line 2206
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 2207
    .line 2208
    .line 2209
    move-result v2

    .line 2210
    if-eqz v2, :cond_53

    .line 2211
    .line 2212
    goto :goto_20

    .line 2213
    :cond_53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2214
    .line 2215
    const-string v3, "\nsha256\uff1a"

    .line 2216
    .line 2217
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2218
    .line 2219
    .line 2220
    iget-object v3, v0, Lcom/yunpan/appmanage/util/k;->p:Ljava/lang/String;

    .line 2221
    .line 2222
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2223
    .line 2224
    .line 2225
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2226
    .line 2227
    .line 2228
    move-result-object v3

    .line 2229
    :goto_20
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2230
    .line 2231
    .line 2232
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2233
    .line 2234
    .line 2235
    move-result-object v2

    .line 2236
    const-string v3, "\u81ea\u8eab\u7b7e\u540d"

    .line 2237
    .line 2238
    const/4 v5, 0x0

    .line 2239
    invoke-direct {v4, v3, v2, v5}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2240
    .line 2241
    .line 2242
    invoke-virtual {v1, v4}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2243
    .line 2244
    .line 2245
    goto :goto_21

    .line 2246
    :cond_54
    const/4 v5, 0x0

    .line 2247
    :goto_21
    new-instance v2, Lx9/k5;

    .line 2248
    .line 2249
    const-string v3, "\u7cfb\u7edf\u7248\u672c"

    .line 2250
    .line 2251
    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 2252
    .line 2253
    invoke-direct {v2, v3, v4, v5}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2254
    .line 2255
    .line 2256
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2257
    .line 2258
    .line 2259
    new-instance v2, Lx9/k5;

    .line 2260
    .line 2261
    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 2262
    .line 2263
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2264
    .line 2265
    .line 2266
    move-result-object v3

    .line 2267
    const-string v4, "\u7cfb\u7edf\u6807\u8bc6"

    .line 2268
    .line 2269
    invoke-direct {v2, v4, v3, v5}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2270
    .line 2271
    .line 2272
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2273
    .line 2274
    .line 2275
    new-instance v2, Lx9/k5;

    .line 2276
    .line 2277
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 2278
    .line 2279
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2280
    .line 2281
    .line 2282
    move-result-object v3

    .line 2283
    invoke-direct {v2, v4, v3, v5}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2284
    .line 2285
    .line 2286
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2287
    .line 2288
    .line 2289
    new-instance v2, Lx9/k5;

    .line 2290
    .line 2291
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 2292
    .line 2293
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2294
    .line 2295
    .line 2296
    move-result-object v3

    .line 2297
    invoke-direct {v2, v4, v3, v5}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2298
    .line 2299
    .line 2300
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2301
    .line 2302
    .line 2303
    new-instance v2, Lx9/k5;

    .line 2304
    .line 2305
    const-string v3, "os.version"

    .line 2306
    .line 2307
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 2308
    .line 2309
    .line 2310
    move-result-object v3

    .line 2311
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2312
    .line 2313
    .line 2314
    move-result-object v3

    .line 2315
    const-string v4, "\u5185\u6838\u7248\u672c"

    .line 2316
    .line 2317
    invoke-direct {v2, v4, v3, v5}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2318
    .line 2319
    .line 2320
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2321
    .line 2322
    .line 2323
    new-instance v2, Lx9/k5;

    .line 2324
    .line 2325
    invoke-virtual {v0}, Lcom/yunpan/appmanage/util/k;->g()Ljava/lang/String;

    .line 2326
    .line 2327
    .line 2328
    move-result-object v0

    .line 2329
    const-string v3, "\u5185\u7f51IP"

    .line 2330
    .line 2331
    invoke-direct {v2, v3, v0, v5}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2332
    .line 2333
    .line 2334
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2335
    .line 2336
    .line 2337
    invoke-static {}, Lha/q6;->b()Lba/h;

    .line 2338
    .line 2339
    .line 2340
    move-result-object v0

    .line 2341
    new-instance v2, Lx9/k5;

    .line 2342
    .line 2343
    const-string v3, "\u5916\u7f51IP"

    .line 2344
    .line 2345
    iget-object v4, v0, Lba/h;->b:Ljava/lang/String;

    .line 2346
    .line 2347
    invoke-direct {v2, v3, v4, v5}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2348
    .line 2349
    .line 2350
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2351
    .line 2352
    .line 2353
    new-instance v2, Lx9/k5;

    .line 2354
    .line 2355
    const-string v3, "IP\u4f4d\u7f6e"

    .line 2356
    .line 2357
    iget-object v0, v0, Lba/h;->c:Ljava/lang/String;

    .line 2358
    .line 2359
    invoke-direct {v2, v3, v0, v5}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2360
    .line 2361
    .line 2362
    invoke-virtual {v1, v2}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 2363
    .line 2364
    .line 2365
    :try_start_b
    new-instance v0, Lx9/k5;

    .line 2366
    .line 2367
    const-string v2, "IPv6"

    .line 2368
    .line 2369
    invoke-static {}, Lha/q6;->c()Ljava/lang/String;

    .line 2370
    .line 2371
    .line 2372
    move-result-object v3

    .line 2373
    invoke-direct {v0, v2, v3, v5}, Lx9/k5;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2374
    .line 2375
    .line 2376
    invoke-virtual {v1, v0}, Lmc/b;->f(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 2377
    .line 2378
    .line 2379
    :catch_7
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2380
    .line 2381
    .line 2382
    return-void

    .line 2383
    :sswitch_1
    const-string v0, "\u65e0\u6cd5\u4fee\u6539\u6b64{\u76ee\u5f55/\u6587\u4ef6}\u6743\u9650\uff01"

    .line 2384
    .line 2385
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2386
    .line 2387
    const-string v4, "chmod "

    .line 2388
    .line 2389
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2390
    .line 2391
    .line 2392
    check-cast v5, Lha/z5;

    .line 2393
    .line 2394
    iget-object v4, v5, Lha/z5;->A:Landroid/widget/CheckBox;

    .line 2395
    .line 2396
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 2397
    .line 2398
    .line 2399
    move-result v4

    .line 2400
    if-eqz v4, :cond_55

    .line 2401
    .line 2402
    const-string v3, "-R "

    .line 2403
    .line 2404
    :cond_55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2405
    .line 2406
    .line 2407
    iget v3, v5, Lha/z5;->i:I

    .line 2408
    .line 2409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2410
    .line 2411
    .line 2412
    const-string v3, " \'"

    .line 2413
    .line 2414
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2415
    .line 2416
    .line 2417
    iget-object v3, v5, Lha/z5;->h:Lcom/yunpan/appmanage/bean/FileAttributeBean;

    .line 2418
    .line 2419
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePath:Ljava/lang/String;

    .line 2420
    .line 2421
    const-string v4, "\'"

    .line 2422
    .line 2423
    invoke-static {v3, v4, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2424
    .line 2425
    .line 2426
    move-result-object v2

    .line 2427
    sget-object v3, Lfa/b0;->a:La2/w0;

    .line 2428
    .line 2429
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2430
    .line 2431
    .line 2432
    invoke-static {v2}, La2/w0;->h(Ljava/lang/String;)Lfa/a0;

    .line 2433
    .line 2434
    .line 2435
    move-result-object v2

    .line 2436
    iget v2, v2, Lfa/a0;->a:I

    .line 2437
    .line 2438
    if-eqz v2, :cond_56

    .line 2439
    .line 2440
    const-string v0, "\u65e0\u6743\u9650\u66f4\u6539"

    .line 2441
    .line 2442
    :catch_8
    invoke-static {v0, v1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 2443
    .line 2444
    .line 2445
    goto :goto_22

    .line 2446
    :cond_56
    :try_start_c
    iget-object v2, v5, Lha/z5;->g:Lx9/w3;

    .line 2447
    .line 2448
    invoke-static {v2}, La2/w0;->c0(Lx9/w3;)Lcom/yunpan/appmanage/bean/FileAttributeBean;

    .line 2449
    .line 2450
    .line 2451
    move-result-object v2

    .line 2452
    iget v2, v2, Lcom/yunpan/appmanage/bean/FileAttributeBean;->filePermission:I

    .line 2453
    .line 2454
    iget v3, v5, Lha/z5;->i:I

    .line 2455
    .line 2456
    if-eq v2, v3, :cond_57

    .line 2457
    .line 2458
    new-instance v2, Ljava/lang/Exception;

    .line 2459
    .line 2460
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2461
    .line 2462
    .line 2463
    invoke-virtual {v1, v2}, Lmc/b;->d(Ljava/lang/Throwable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 2464
    .line 2465
    .line 2466
    goto :goto_22

    .line 2467
    :cond_57
    invoke-virtual/range {p1 .. p1}, Lmc/b;->b()V

    .line 2468
    .line 2469
    .line 2470
    :goto_22
    return-void

    .line 2471
    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public j(La1/i;ILandroid/os/Bundle;)Z
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-lt v0, v1, :cond_1

    .line 8
    .line 9
    and-int/2addr p2, v3

    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    :try_start_0
    iget-object p2, p1, La1/i;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p2, La1/h;

    .line 15
    .line 16
    invoke-interface {p2}, La1/h;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    iget-object p2, p1, La1/i;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p2, La1/h;

    .line 22
    .line 23
    invoke-interface {p2}, La1/h;->k()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    check-cast p2, Landroid/os/Parcelable;

    .line 28
    .line 29
    if-nez p3, :cond_0

    .line 30
    .line 31
    new-instance p3, Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    move-object p3, v1

    .line 43
    :goto_0
    const-string v1, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    .line 44
    .line 45
    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    new-instance p2, Landroid/content/ClipData;

    .line 49
    .line 50
    iget-object v1, p1, La1/i;->b:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, La1/h;

    .line 53
    .line 54
    invoke-interface {v1}, La1/h;->getDescription()Landroid/content/ClipDescription;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v4, Landroid/content/ClipData$Item;

    .line 59
    .line 60
    iget-object p1, p1, La1/i;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, La1/h;

    .line 63
    .line 64
    invoke-interface {p1}, La1/h;->b()Landroid/net/Uri;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, v1, v4}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 72
    .line 73
    .line 74
    const/16 v1, 0x1f

    .line 75
    .line 76
    const/4 v4, 0x2

    .line 77
    if-lt v0, v1, :cond_2

    .line 78
    .line 79
    new-instance v0, Lx0/e;

    .line 80
    .line 81
    invoke-direct {v0, p2, v4}, Lx0/e;-><init>(Landroid/content/ClipData;I)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    new-instance v0, Lx0/g;

    .line 86
    .line 87
    invoke-direct {v0, p2, v4}, Lx0/g;-><init>(Landroid/content/ClipData;I)V

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-interface {p1}, La1/h;->g()Landroid/net/Uri;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {v0, p1}, Lx0/f;->c(Landroid/net/Uri;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v0, p3}, Lx0/f;->a(Landroid/os/Bundle;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v0}, Lx0/f;->build()Lx0/i;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object p2, p0, La1/d;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p2, Lw/u;

    .line 107
    .line 108
    invoke-static {p2, p1}, Lx0/b1;->r(Landroid/view/View;Lx0/i;)Lx0/i;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-nez p1, :cond_3

    .line 113
    .line 114
    const/4 v2, 0x1

    .line 115
    :catch_0
    :cond_3
    return v2
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move/from16 v5, p3

    .line 6
    .line 7
    const-string v1, "25\u6b21"

    .line 8
    .line 9
    const-string v2, "20\u6b21"

    .line 10
    .line 11
    const-string v3, "15\u6b21"

    .line 12
    .line 13
    const-string v6, "10\u6b21"

    .line 14
    .line 15
    const-string v7, "5\u6b21"

    .line 16
    .line 17
    const-string v8, "\u5982\u9700\u5173\u95ed\u6743\u9650\uff0c\u8bf7\u5728\u5feb\u6377\u6743\u9650\u7ba1\u7406\u4e2d\u5173\u95ed"

    .line 18
    .line 19
    const-string v9, "label"

    .line 20
    .line 21
    const-string v10, "clipboard"

    .line 22
    .line 23
    const-string v12, ""

    .line 24
    .line 25
    const/4 v15, 0x2

    .line 26
    const/4 v11, 0x1

    .line 27
    iget-object v14, v0, La1/d;->b:Ljava/lang/Object;

    .line 28
    .line 29
    iget v13, v0, La1/d;->a:I

    .line 30
    .line 31
    packed-switch v13, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    :pswitch_0
    check-cast v14, Lha/p6;

    .line 35
    .line 36
    iget-object v1, v14, Lha/p6;->g:Lha/d7;

    .line 37
    .line 38
    iget-object v2, v14, Lha/p6;->j:Lx9/i2;

    .line 39
    .line 40
    invoke-virtual {v2, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/yunpan/appmanage/bean/IntIntBean;

    .line 45
    .line 46
    iget v2, v2, Lcom/yunpan/appmanage/bean/IntIntBean;->int1:I

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lha/d7;->e(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v14}, Lha/p6;->dismiss()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :pswitch_1
    invoke-direct/range {p0 .. p3}, La1/d;->i(Lc6/g;Landroid/view/View;I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_2
    invoke-direct/range {p0 .. p3}, La1/d;->h(Lc6/g;Landroid/view/View;I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_3
    invoke-direct/range {p0 .. p3}, La1/d;->a(Lc6/g;Landroid/view/View;I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_4
    check-cast v14, Lha/r5;

    .line 68
    .line 69
    iget-object v1, v14, Lha/a4;->a:Landroid/app/Activity;

    .line 70
    .line 71
    invoke-virtual {v1, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/content/ClipboardManager;

    .line 76
    .line 77
    iget-object v2, v14, Lha/r5;->h:Lx9/s1;

    .line 78
    .line 79
    invoke-virtual {v2, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lx9/w3;

    .line 84
    .line 85
    iget-object v2, v2, Lx9/w3;->b:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v9, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 96
    .line 97
    .line 98
    const-string v1, "\u5df2\u590d\u5236\u8def\u5f84"

    .line 99
    .line 100
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_5
    check-cast v14, Lha/q5;

    .line 105
    .line 106
    iget-object v1, v14, Lha/q5;->h:Lx9/p3;

    .line 107
    .line 108
    invoke-virtual {v1, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 113
    .line 114
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/NameValueBean;->name:Ljava/lang/String;

    .line 115
    .line 116
    const-string v3, "\u6743\u9650\uff1a"

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    iget-object v3, v14, Lha/a4;->b:Landroid/content/Context;

    .line 123
    .line 124
    if-eqz v2, :cond_0

    .line 125
    .line 126
    new-instance v1, Lha/z5;

    .line 127
    .line 128
    iget-object v2, v14, Lha/a4;->a:Landroid/app/Activity;

    .line 129
    .line 130
    iget-object v4, v14, Lha/q5;->i:Lx9/w3;

    .line 131
    .line 132
    iget-object v5, v14, Lha/q5;->j:Lcom/yunpan/appmanage/bean/FileAttributeBean;

    .line 133
    .line 134
    invoke-direct {v1, v2, v3, v4, v5}, Lha/z5;-><init>(Landroid/app/Activity;Landroid/content/Context;Lx9/w3;Lcom/yunpan/appmanage/bean/FileAttributeBean;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v14}, Landroid/app/Dialog;->dismiss()V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v3, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    check-cast v2, Landroid/content/ClipboardManager;

    .line 149
    .line 150
    if-nez v2, :cond_1

    .line 151
    .line 152
    const-string v1, "\u65e0\u6cd5\u590d\u5236\uff1a\u65e0\u6cd5\u83b7\u53d6\u526a\u5207\u677f\uff0c\u53ef\u80fd\u60a8\u6ca1\u7ed9\u6743\u9650(\u526a\u5207\u677f)"

    .line 153
    .line 154
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_1
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/NameValueBean;->value:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v9, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v2, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 165
    .line 166
    .line 167
    const-string v1, "\u5df2\u590d\u5236"

    .line 168
    .line 169
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :goto_0
    return-void

    .line 173
    :pswitch_6
    check-cast v14, Lx9/y0;

    .line 174
    .line 175
    invoke-virtual {v14, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    check-cast v1, Lx9/x0;

    .line 180
    .line 181
    invoke-virtual {v14, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Lx9/x0;

    .line 186
    .line 187
    iget-boolean v2, v2, Lx9/x0;->b:Z

    .line 188
    .line 189
    xor-int/2addr v2, v11

    .line 190
    iput-boolean v2, v1, Lx9/x0;->b:Z

    .line 191
    .line 192
    invoke-virtual {v14, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :pswitch_7
    check-cast v14, Lha/m4;

    .line 197
    .line 198
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 206
    .line 207
    if-nez v5, :cond_2

    .line 208
    .line 209
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 210
    .line 211
    iget-boolean v3, v2, Lwa/u;->k:Z

    .line 212
    .line 213
    xor-int/2addr v3, v11

    .line 214
    :try_start_0
    iput-boolean v3, v2, Lwa/u;->k:Z

    .line 215
    .line 216
    iget-object v6, v2, Lwa/u;->b:Lz7/s;

    .line 217
    .line 218
    const-string v7, "BootStartTaskBroadcast"

    .line 219
    .line 220
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v6, v7, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .line 226
    .line 227
    :catch_0
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 228
    .line 229
    .line 230
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 231
    .line 232
    iget-boolean v2, v2, Lwa/u;->k:Z

    .line 233
    .line 234
    iput-boolean v2, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 235
    .line 236
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :cond_2
    if-ne v5, v11, :cond_3

    .line 242
    .line 243
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 244
    .line 245
    iget-boolean v3, v2, Lwa/u;->j:Z

    .line 246
    .line 247
    xor-int/2addr v3, v11

    .line 248
    :try_start_1
    iput-boolean v3, v2, Lwa/u;->j:Z

    .line 249
    .line 250
    iget-object v6, v2, Lwa/u;->b:Lz7/s;

    .line 251
    .line 252
    const-string v7, "BootStartTaskUserPresent"

    .line 253
    .line 254
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v6, v7, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    .line 260
    .line 261
    :catch_1
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 262
    .line 263
    .line 264
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 265
    .line 266
    iget-boolean v2, v2, Lwa/u;->j:Z

    .line 267
    .line 268
    iput-boolean v2, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 269
    .line 270
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_1

    .line 274
    .line 275
    :cond_3
    if-ne v5, v15, :cond_4

    .line 276
    .line 277
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 278
    .line 279
    iget-boolean v3, v2, Lwa/u;->i:Z

    .line 280
    .line 281
    xor-int/2addr v3, v11

    .line 282
    :try_start_2
    iput-boolean v3, v2, Lwa/u;->i:Z

    .line 283
    .line 284
    iget-object v6, v2, Lwa/u;->b:Lz7/s;

    .line 285
    .line 286
    const-string v7, "BootStartTaskScreenOn"

    .line 287
    .line 288
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-virtual {v6, v7, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 293
    .line 294
    .line 295
    :catch_2
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 296
    .line 297
    .line 298
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 299
    .line 300
    iget-boolean v2, v2, Lwa/u;->i:Z

    .line 301
    .line 302
    iput-boolean v2, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 303
    .line 304
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :cond_4
    const/4 v2, 0x3

    .line 310
    if-ne v5, v2, :cond_5

    .line 311
    .line 312
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 313
    .line 314
    iget-boolean v3, v2, Lwa/u;->f0:Z

    .line 315
    .line 316
    xor-int/2addr v3, v11

    .line 317
    :try_start_3
    iput-boolean v3, v2, Lwa/u;->f0:Z

    .line 318
    .line 319
    iget-object v6, v2, Lwa/u;->b:Lz7/s;

    .line 320
    .line 321
    const-string v7, "BootTaskWaitingSystemLoading"

    .line 322
    .line 323
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-virtual {v6, v7, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 328
    .line 329
    .line 330
    :catch_3
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 331
    .line 332
    .line 333
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 334
    .line 335
    iget-boolean v2, v2, Lwa/u;->f0:Z

    .line 336
    .line 337
    iput-boolean v2, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 338
    .line 339
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_1

    .line 343
    .line 344
    :cond_5
    const/4 v2, 0x4

    .line 345
    if-ne v5, v2, :cond_6

    .line 346
    .line 347
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 348
    .line 349
    iget-boolean v3, v2, Lwa/u;->c0:Z

    .line 350
    .line 351
    xor-int/2addr v3, v11

    .line 352
    :try_start_4
    iput-boolean v3, v2, Lwa/u;->c0:Z

    .line 353
    .line 354
    iget-object v6, v2, Lwa/u;->b:Lz7/s;

    .line 355
    .line 356
    const-string v7, "BootTaskDetectionBootTime"

    .line 357
    .line 358
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    invoke-virtual {v6, v7, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 363
    .line 364
    .line 365
    :catch_4
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 366
    .line 367
    .line 368
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 369
    .line 370
    iget-boolean v2, v2, Lwa/u;->c0:Z

    .line 371
    .line 372
    iput-boolean v2, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 373
    .line 374
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    :cond_6
    const/4 v2, 0x5

    .line 380
    if-ne v5, v2, :cond_7

    .line 381
    .line 382
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 383
    .line 384
    iget-boolean v3, v2, Lwa/u;->d0:Z

    .line 385
    .line 386
    xor-int/2addr v3, v11

    .line 387
    :try_start_5
    iput-boolean v3, v2, Lwa/u;->d0:Z

    .line 388
    .line 389
    iget-object v6, v2, Lwa/u;->b:Lz7/s;

    .line 390
    .line 391
    const-string v7, "BootTaskPreventRepeatedLaunches"

    .line 392
    .line 393
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    invoke-virtual {v6, v7, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 398
    .line 399
    .line 400
    :catch_5
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 401
    .line 402
    .line 403
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 404
    .line 405
    iget-boolean v2, v2, Lwa/u;->d0:Z

    .line 406
    .line 407
    iput-boolean v2, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 408
    .line 409
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 410
    .line 411
    .line 412
    goto/16 :goto_1

    .line 413
    .line 414
    :cond_7
    const/4 v2, 0x6

    .line 415
    if-ne v5, v2, :cond_9

    .line 416
    .line 417
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 418
    .line 419
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    invoke-static {}, La2/w0;->O()Z

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    if-nez v2, :cond_8

    .line 427
    .line 428
    const-string v1, "\u9700\u8fde\u63a5adb"

    .line 429
    .line 430
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_1

    .line 434
    .line 435
    :cond_8
    iget-boolean v2, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 436
    .line 437
    xor-int/2addr v2, v11

    .line 438
    iput-boolean v2, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 439
    .line 440
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 441
    .line 442
    .line 443
    new-instance v2, Ld2/w;

    .line 444
    .line 445
    const/16 v3, 0xc

    .line 446
    .line 447
    invoke-direct {v2, v14, v3, v1}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    new-instance v3, Lmc/c;

    .line 451
    .line 452
    const/4 v6, 0x0

    .line 453
    invoke-direct {v3, v6, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 457
    .line 458
    invoke-virtual {v3, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    invoke-virtual {v2, v3}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    new-instance v3, Lha/l4;

    .line 471
    .line 472
    invoke-direct {v3, v1, v4, v5}, Lha/l4;-><init>(Lcom/yunpan/appmanage/bean/NameContentSelectBean;Lc6/g;I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v2, v3}, Lec/b;->b(Lec/e;)V

    .line 476
    .line 477
    .line 478
    goto/16 :goto_1

    .line 479
    .line 480
    :cond_9
    const/4 v2, 0x7

    .line 481
    if-ne v5, v2, :cond_a

    .line 482
    .line 483
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 484
    .line 485
    iget-boolean v3, v2, Lwa/u;->e0:Z

    .line 486
    .line 487
    xor-int/2addr v3, v11

    .line 488
    :try_start_6
    iput-boolean v3, v2, Lwa/u;->e0:Z

    .line 489
    .line 490
    iget-object v6, v2, Lwa/u;->b:Lz7/s;

    .line 491
    .line 492
    const-string v7, "DetectionBootUnableToEnterDesktop"

    .line 493
    .line 494
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    invoke-virtual {v6, v7, v3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 499
    .line 500
    .line 501
    :catch_6
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 502
    .line 503
    .line 504
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 505
    .line 506
    iget-boolean v2, v2, Lwa/u;->e0:Z

    .line 507
    .line 508
    iput-boolean v2, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 509
    .line 510
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 511
    .line 512
    .line 513
    goto/16 :goto_1

    .line 514
    .line 515
    :cond_a
    const/16 v2, 0x8

    .line 516
    .line 517
    if-ne v5, v2, :cond_c

    .line 518
    .line 519
    iget-boolean v2, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 520
    .line 521
    if-nez v2, :cond_b

    .line 522
    .line 523
    new-instance v2, Lha/z6;

    .line 524
    .line 525
    new-instance v10, Lha/a;

    .line 526
    .line 527
    invoke-direct {v10, v1, v4, v5, v15}, Lha/a;-><init>(Lcom/yunpan/appmanage/bean/NameContentSelectBean;Lc6/g;II)V

    .line 528
    .line 529
    .line 530
    iget-object v4, v14, Lha/a4;->a:Landroid/app/Activity;

    .line 531
    .line 532
    iget-object v5, v14, Lha/a4;->b:Landroid/content/Context;

    .line 533
    .line 534
    const-string v8, "\u786e\u5b9a\u52fe\u9009"

    .line 535
    .line 536
    const-string v9, "\u53d6\u6d88\u52fe\u9009"

    .line 537
    .line 538
    const-string v6, "\u8b66\u544a\uff1a\u8bf7\u52a1\u5fc5\u8ba4\u771f\u9605\u8bfb\u6b64\u9879"

    .line 539
    .line 540
    const-string v7, "\u52fe\u9009\u540e\u5c06\u4e0d\u80fd\u81ea\u542f\u52a8\u6267\u884c\u4efb\u52a1"

    .line 541
    .line 542
    move-object v3, v2

    .line 543
    invoke-direct/range {v3 .. v10}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v2}, Lha/a4;->show()V

    .line 547
    .line 548
    .line 549
    goto :goto_1

    .line 550
    :cond_b
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 551
    .line 552
    iget-boolean v3, v2, Lwa/u;->h:Z

    .line 553
    .line 554
    xor-int/2addr v3, v11

    .line 555
    invoke-virtual {v2, v3}, Lwa/u;->h(Z)V

    .line 556
    .line 557
    .line 558
    iget-boolean v2, v2, Lwa/u;->h:Z

    .line 559
    .line 560
    iput-boolean v2, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 561
    .line 562
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 563
    .line 564
    .line 565
    goto :goto_1

    .line 566
    :cond_c
    const/16 v2, 0x9

    .line 567
    .line 568
    if-ne v5, v2, :cond_f

    .line 569
    .line 570
    iget-boolean v2, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 571
    .line 572
    if-eqz v2, :cond_d

    .line 573
    .line 574
    invoke-static {v8}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 575
    .line 576
    .line 577
    goto :goto_1

    .line 578
    :cond_d
    sget-object v2, Lfa/b0;->a:La2/w0;

    .line 579
    .line 580
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 581
    .line 582
    .line 583
    invoke-static {}, La2/w0;->O()Z

    .line 584
    .line 585
    .line 586
    move-result v2

    .line 587
    if-eqz v2, :cond_e

    .line 588
    .line 589
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 590
    .line 591
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 592
    .line 593
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 594
    .line 595
    new-instance v3, La2/h;

    .line 596
    .line 597
    const/16 v6, 0x18

    .line 598
    .line 599
    invoke-direct {v3, v6, v14}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 600
    .line 601
    .line 602
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 603
    .line 604
    .line 605
    iput-boolean v11, v1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 606
    .line 607
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 608
    .line 609
    .line 610
    goto :goto_1

    .line 611
    :cond_e
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 612
    .line 613
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 614
    .line 615
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 616
    .line 617
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getRequestIgnoreBatteryOptimizationsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    invoke-static {v2, v3}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 622
    .line 623
    .line 624
    move-result v2

    .line 625
    if-nez v2, :cond_f

    .line 626
    .line 627
    iget-object v2, v14, Lha/a4;->b:Landroid/content/Context;

    .line 628
    .line 629
    invoke-static {v2}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getRequestIgnoreBatteryOptimizationsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 634
    .line 635
    .line 636
    move-result-object v3

    .line 637
    invoke-virtual {v2, v3}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    new-instance v3, Lha/t3;

    .line 642
    .line 643
    invoke-direct {v3, v1, v4, v5, v11}, Lha/t3;-><init>(Lcom/yunpan/appmanage/bean/NameContentSelectBean;Lc6/g;II)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v2, v3}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 647
    .line 648
    .line 649
    :cond_f
    :goto_1
    return-void

    .line 650
    :pswitch_8
    check-cast v14, Lha/j4;

    .line 651
    .line 652
    iget-object v1, v14, Lha/j4;->h:Lx9/t0;

    .line 653
    .line 654
    invoke-virtual {v1, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 659
    .line 660
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 661
    .line 662
    const/4 v2, -0x1

    .line 663
    if-ne v1, v2, :cond_10

    .line 664
    .line 665
    goto/16 :goto_3

    .line 666
    .line 667
    :cond_10
    const/4 v2, -0x2

    .line 668
    if-ne v1, v2, :cond_11

    .line 669
    .line 670
    iget-object v1, v14, Lha/j4;->h:Lx9/t0;

    .line 671
    .line 672
    invoke-virtual {v1, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 677
    .line 678
    iget v1, v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->ico:I

    .line 679
    .line 680
    const v2, 0x7f0801d0

    .line 681
    .line 682
    .line 683
    if-ne v1, v2, :cond_1c

    .line 684
    .line 685
    invoke-virtual {v14}, Landroid/app/Dialog;->dismiss()V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_3

    .line 689
    .line 690
    :cond_11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 691
    .line 692
    const/16 v3, 0x21

    .line 693
    .line 694
    iget-object v4, v14, Lha/a4;->b:Landroid/content/Context;

    .line 695
    .line 696
    if-lt v2, v3, :cond_13

    .line 697
    .line 698
    const/16 v2, 0x136

    .line 699
    .line 700
    if-eq v1, v2, :cond_12

    .line 701
    .line 702
    const/16 v2, 0x137

    .line 703
    .line 704
    if-ne v1, v2, :cond_13

    .line 705
    .line 706
    :cond_12
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getBluetoothConnectPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    invoke-static {v4, v2}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 711
    .line 712
    .line 713
    move-result v2

    .line 714
    if-nez v2, :cond_13

    .line 715
    .line 716
    invoke-static {v4}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getBluetoothConnectPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 721
    .line 722
    .line 723
    move-result-object v2

    .line 724
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    new-instance v2, Lg2/c;

    .line 729
    .line 730
    const/4 v3, 0x6

    .line 731
    invoke-direct {v2, v3}, Lg2/c;-><init>(I)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 735
    .line 736
    .line 737
    goto/16 :goto_3

    .line 738
    .line 739
    :cond_13
    const/16 v2, 0x258

    .line 740
    .line 741
    if-ne v1, v2, :cond_14

    .line 742
    .line 743
    invoke-static {v4}, Lif/a;->b0(Landroid/content/Context;)Z

    .line 744
    .line 745
    .line 746
    move-result v1

    .line 747
    if-nez v1, :cond_1b

    .line 748
    .line 749
    const-string v1, "\u8bf7\u5148\u6388\u4e88\u3010\u4fee\u6539\u7cfb\u7edf\u5b89\u5168\u8bbe\u7f6e\u3011\u6743\u9650"

    .line 750
    .line 751
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 752
    .line 753
    .line 754
    goto/16 :goto_3

    .line 755
    .line 756
    :cond_14
    const/16 v2, 0x74

    .line 757
    .line 758
    if-ne v1, v2, :cond_15

    .line 759
    .line 760
    new-instance v1, Lha/z6;

    .line 761
    .line 762
    new-instance v2, Lha/i4;

    .line 763
    .line 764
    const/4 v3, 0x0

    .line 765
    invoke-direct {v2, v14, v5, v3}, Lha/i4;-><init>(Lha/j4;II)V

    .line 766
    .line 767
    .line 768
    const-string v27, "\u6ce8\u610f\uff1a\u6b64\u529f\u80fd\u4ec5\u9002\u5408\u90a3\u4e9b\u6bcf\u6b21\u5f00\u673a\u540e\uff0c\u7cfb\u7edf\u65f6\u95f4\u90fd\u4e0d\u6b63\u786e\u7684\u90a3\u4e9b\u53e4\u8463\u8bbe\u5907\uff01\n\n\u5982\u679c\u4f60\u8bbe\u5907\u6b63\u5e38\u7684\u8bdd\uff0c\u8bf7\u4e00\u5b9a\u4e0d\u8981\u4f7f\u7528\u6b64\u529f\u80fd\uff01"

    .line 769
    .line 770
    const-string v28, "\u6ce8\u610f\uff1a\u8bf7\u5728\u6b64\u4efb\u52a1\u7684\u524d\u9762\u6dfb\u52a0\u9002\u5f53\u7684\u5ef6\u65f6\uff0c\u56e0\u4e3a\u6b64\u529f\u80fd\u9700\u8981\u7b49\u7cfb\u7edf\u8054\u7f51\u540e\u624d\u80fd\u8bfb\u53d6\u5317\u4eac\u65f6\u95f4"

    .line 771
    .line 772
    iget-object v3, v14, Lha/a4;->a:Landroid/app/Activity;

    .line 773
    .line 774
    iget-object v4, v14, Lha/a4;->b:Landroid/content/Context;

    .line 775
    .line 776
    const-string v29, "\u786e\u5b9a\u6dfb\u52a0"

    .line 777
    .line 778
    const-string v30, "\u53d6\u6d88\u6dfb\u52a0"

    .line 779
    .line 780
    move-object/from16 v24, v1

    .line 781
    .line 782
    move-object/from16 v25, v3

    .line 783
    .line 784
    move-object/from16 v26, v4

    .line 785
    .line 786
    move-object/from16 v31, v2

    .line 787
    .line 788
    invoke-direct/range {v24 .. v31}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 792
    .line 793
    .line 794
    goto/16 :goto_3

    .line 795
    .line 796
    :cond_15
    const/16 v2, 0x259

    .line 797
    .line 798
    if-ne v1, v2, :cond_16

    .line 799
    .line 800
    new-instance v1, Lha/z6;

    .line 801
    .line 802
    new-instance v2, Lha/i4;

    .line 803
    .line 804
    invoke-direct {v2, v14, v5, v11}, Lha/i4;-><init>(Lha/j4;II)V

    .line 805
    .line 806
    .line 807
    const-string v23, "\u7528\u9014\uff1a\u67d0\u4e2a\u522b\u8f66\u673a\uff0c\u8bbe\u7f6e\u4e86\u5e94\u7528\u6c89\u6d78\u540e\u6709\u6548\uff0c\u4f46\u662f\u91cd\u542f\u540e\u53c8\u88ab\u7cfb\u7edf\u91cd\u7f6e\u4e86\uff01\u5982\u679c\u4f60\u662f\u8fd9\u79cd\u60c5\u51b5\uff0c\u90a3\u4e48\u53ef\u4ee5\u7528\u6b64\u529f\u80fd\uff01"

    .line 808
    .line 809
    const-string v24, ""

    .line 810
    .line 811
    iget-object v3, v14, Lha/a4;->a:Landroid/app/Activity;

    .line 812
    .line 813
    iget-object v4, v14, Lha/a4;->b:Landroid/content/Context;

    .line 814
    .line 815
    const-string v25, "\u786e\u5b9a"

    .line 816
    .line 817
    const-string v26, "\u53d6\u6d88"

    .line 818
    .line 819
    move-object/from16 v20, v1

    .line 820
    .line 821
    move-object/from16 v21, v3

    .line 822
    .line 823
    move-object/from16 v22, v4

    .line 824
    .line 825
    move-object/from16 v27, v2

    .line 826
    .line 827
    invoke-direct/range {v20 .. v27}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 831
    .line 832
    .line 833
    goto :goto_3

    .line 834
    :cond_16
    const/16 v2, 0x15b

    .line 835
    .line 836
    iget-object v3, v14, Lha/a4;->a:Landroid/app/Activity;

    .line 837
    .line 838
    if-ne v1, v2, :cond_19

    .line 839
    .line 840
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 841
    .line 842
    .line 843
    move-result-object v1

    .line 844
    invoke-static {v4, v1}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 845
    .line 846
    .line 847
    move-result v1

    .line 848
    if-nez v1, :cond_17

    .line 849
    .line 850
    invoke-static {v4}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getAccessFineLocationPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    new-instance v2, Lg2/c;

    .line 863
    .line 864
    const/4 v3, 0x7

    .line 865
    invoke-direct {v2, v3}, Lg2/c;-><init>(I)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 869
    .line 870
    .line 871
    goto :goto_3

    .line 872
    :cond_17
    const-string v1, "location"

    .line 873
    .line 874
    invoke-virtual {v4, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    check-cast v1, Landroid/location/LocationManager;

    .line 879
    .line 880
    const-string v2, "gps"

    .line 881
    .line 882
    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 883
    .line 884
    .line 885
    move-result v1

    .line 886
    if-nez v1, :cond_18

    .line 887
    .line 888
    const-string v1, "GPS\u6a21\u5757\u672a\u5f00\u542f"

    .line 889
    .line 890
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 891
    .line 892
    .line 893
    goto :goto_3

    .line 894
    :cond_18
    new-instance v1, Lha/z6;

    .line 895
    .line 896
    const-string v2, "\u63d0\u793a\uff1a\u6b64\u4efb\u52a1\u9700GPS\uff0c\u9700\u5f00\u542f\u5b9a\u4f4d\uff0c\u4e14\u5f00\u673a\u540e\u7b49GPS\u6b63\u5e38\u540e\u65b9\u53ef\u4f7f\u7528\uff0c\u5efa\u8bae\u628a\u4efb\u52a1\u653e\u5728\u6700\u540e"

    .line 897
    .line 898
    invoke-direct {v1, v3, v4, v2, v12}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 902
    .line 903
    .line 904
    goto :goto_2

    .line 905
    :cond_19
    const/16 v2, 0x15c

    .line 906
    .line 907
    if-eq v1, v2, :cond_1a

    .line 908
    .line 909
    const/16 v2, 0x15d

    .line 910
    .line 911
    if-ne v1, v2, :cond_1b

    .line 912
    .line 913
    :cond_1a
    new-instance v1, Lha/z6;

    .line 914
    .line 915
    const-string v2, "\u63d0\u793a\uff1a\u6b64\u4efb\u52a1\u9700\u8054\u7f51\uff0c\u6240\u4ee5\u8bf7\u628a\u6b64\u4efb\u52a1\u653e\u5728\u6700\u540e\uff0c\u524d\u9762\u8bb0\u5f97\u5ef6\u65f6\u7b49\u5f85\u8db3\u591f\u7cfb\u7edf\u8054\u7f51\u7684\u65f6\u95f4"

    .line 916
    .line 917
    invoke-direct {v1, v3, v4, v2, v12}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 921
    .line 922
    .line 923
    :cond_1b
    :goto_2
    iget-object v1, v14, Lha/j4;->h:Lx9/t0;

    .line 924
    .line 925
    invoke-virtual {v1, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    check-cast v1, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 930
    .line 931
    iget-object v2, v14, Lha/j4;->j:Lua/u0;

    .line 932
    .line 933
    invoke-virtual {v2, v1}, Lua/u0;->a(Lcom/yunpan/appmanage/bean/KeyMapSelectBean;)V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v14}, Landroid/app/Dialog;->dismiss()V

    .line 937
    .line 938
    .line 939
    :cond_1c
    :goto_3
    return-void

    .line 940
    :pswitch_9
    check-cast v14, Lha/v3;

    .line 941
    .line 942
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 943
    .line 944
    .line 945
    invoke-virtual {v4, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v9

    .line 949
    check-cast v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 950
    .line 951
    iget-object v10, v14, Lha/a4;->b:Landroid/content/Context;

    .line 952
    .line 953
    if-nez v5, :cond_1d

    .line 954
    .line 955
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 956
    .line 957
    iget-boolean v2, v1, Lwa/u;->D:Z

    .line 958
    .line 959
    xor-int/2addr v2, v11

    .line 960
    :try_start_7
    iput-boolean v2, v1, Lwa/u;->D:Z

    .line 961
    .line 962
    iget-object v3, v1, Lwa/u;->b:Lz7/s;

    .line 963
    .line 964
    const-string v6, "AutoTaskCloseShowToast"

    .line 965
    .line 966
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 967
    .line 968
    .line 969
    move-result-object v2

    .line 970
    invoke-virtual {v3, v6, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 971
    .line 972
    .line 973
    :catch_7
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 974
    .line 975
    .line 976
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 977
    .line 978
    iget-boolean v1, v1, Lwa/u;->D:Z

    .line 979
    .line 980
    iput-boolean v1, v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 981
    .line 982
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 983
    .line 984
    .line 985
    invoke-static {v10}, Lta/m;->e(Landroid/content/Context;)V

    .line 986
    .line 987
    .line 988
    goto/16 :goto_6

    .line 989
    .line 990
    :cond_1d
    const/16 v12, 0x15

    .line 991
    .line 992
    if-ne v5, v11, :cond_20

    .line 993
    .line 994
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 995
    .line 996
    iget-boolean v2, v1, Lwa/u;->E:Z

    .line 997
    .line 998
    if-nez v2, :cond_1e

    .line 999
    .line 1000
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1001
    .line 1002
    if-ge v3, v12, :cond_1e

    .line 1003
    .line 1004
    const-string v1, "\u4e0d\u652f\u63015.0\u4ee5\u4e0b\u7cfb\u7edf\u4f7f\u7528"

    .line 1005
    .line 1006
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1007
    .line 1008
    .line 1009
    goto/16 :goto_6

    .line 1010
    .line 1011
    :cond_1e
    if-nez v2, :cond_1f

    .line 1012
    .line 1013
    iget-boolean v3, v1, Lwa/u;->h:Z

    .line 1014
    .line 1015
    if-eqz v3, :cond_1f

    .line 1016
    .line 1017
    const-string v1, "\u7531\u4e8e\u60a8\u52fe\u9009\u4e86[\u5f00\u673a\u540e\u624b\u52a8\u70b9\u51fb\u542f\u52a8]\uff0c\u4e0d\u80fd\u518d\u52fe\u9009\u6b64\u9879"

    .line 1018
    .line 1019
    const/4 v2, 0x0

    .line 1020
    invoke-static {v1, v2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 1021
    .line 1022
    .line 1023
    goto/16 :goto_6

    .line 1024
    .line 1025
    :cond_1f
    xor-int/2addr v2, v11

    .line 1026
    :try_start_8
    iput-boolean v2, v1, Lwa/u;->E:Z

    .line 1027
    .line 1028
    iget-object v3, v1, Lwa/u;->b:Lz7/s;

    .line 1029
    .line 1030
    const-string v6, "AutoTaskStartAutoStartTask"

    .line 1031
    .line 1032
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v2

    .line 1036
    invoke-virtual {v3, v6, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 1037
    .line 1038
    .line 1039
    :catch_8
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 1040
    .line 1041
    .line 1042
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 1043
    .line 1044
    iget-boolean v1, v1, Lwa/u;->E:Z

    .line 1045
    .line 1046
    iput-boolean v1, v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 1047
    .line 1048
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 1049
    .line 1050
    .line 1051
    goto/16 :goto_6

    .line 1052
    .line 1053
    :cond_20
    if-ne v5, v15, :cond_21

    .line 1054
    .line 1055
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 1056
    .line 1057
    iget-boolean v2, v1, Lwa/u;->G:Z

    .line 1058
    .line 1059
    xor-int/2addr v2, v11

    .line 1060
    :try_start_9
    iput-boolean v2, v1, Lwa/u;->G:Z

    .line 1061
    .line 1062
    iget-object v3, v1, Lwa/u;->b:Lz7/s;

    .line 1063
    .line 1064
    const-string v6, "AutoHideFloatingWindow"

    .line 1065
    .line 1066
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v2

    .line 1070
    invoke-virtual {v3, v6, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 1071
    .line 1072
    .line 1073
    :catch_9
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 1074
    .line 1075
    .line 1076
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 1077
    .line 1078
    iget-boolean v1, v1, Lwa/u;->G:Z

    .line 1079
    .line 1080
    iput-boolean v1, v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 1081
    .line 1082
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 1083
    .line 1084
    .line 1085
    invoke-static {v10}, Lta/m;->e(Landroid/content/Context;)V

    .line 1086
    .line 1087
    .line 1088
    goto/16 :goto_6

    .line 1089
    .line 1090
    :cond_21
    const/4 v13, 0x3

    .line 1091
    if-ne v5, v13, :cond_22

    .line 1092
    .line 1093
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 1094
    .line 1095
    iget-boolean v2, v1, Lwa/u;->F:Z

    .line 1096
    .line 1097
    xor-int/2addr v2, v11

    .line 1098
    :try_start_a
    iput-boolean v2, v1, Lwa/u;->F:Z

    .line 1099
    .line 1100
    iget-object v3, v1, Lwa/u;->b:Lz7/s;

    .line 1101
    .line 1102
    const-string v6, "AutoTask_ScreenOnOff_AccService"

    .line 1103
    .line 1104
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v2

    .line 1108
    invoke-virtual {v3, v6, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 1109
    .line 1110
    .line 1111
    :catch_a
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 1112
    .line 1113
    .line 1114
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 1115
    .line 1116
    iget-boolean v1, v1, Lwa/u;->F:Z

    .line 1117
    .line 1118
    iput-boolean v1, v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 1119
    .line 1120
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 1121
    .line 1122
    .line 1123
    invoke-static {v10}, Lta/m;->e(Landroid/content/Context;)V

    .line 1124
    .line 1125
    .line 1126
    goto/16 :goto_6

    .line 1127
    .line 1128
    :cond_22
    const/4 v13, 0x4

    .line 1129
    if-ne v5, v13, :cond_25

    .line 1130
    .line 1131
    iget-boolean v8, v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 1132
    .line 1133
    if-eqz v8, :cond_23

    .line 1134
    .line 1135
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 1136
    .line 1137
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1138
    .line 1139
    .line 1140
    const/4 v2, 0x0

    .line 1141
    :try_start_b
    iput v2, v1, Lwa/u;->z:I

    .line 1142
    .line 1143
    iget-object v3, v1, Lwa/u;->b:Lz7/s;

    .line 1144
    .line 1145
    const-string v6, "AutoTaskSafetyProtectionTwoCount"

    .line 1146
    .line 1147
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v7

    .line 1151
    invoke-virtual {v3, v6, v7}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 1152
    .line 1153
    .line 1154
    :catch_b
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 1155
    .line 1156
    .line 1157
    const/4 v8, 0x0

    .line 1158
    iput-boolean v8, v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 1159
    .line 1160
    const-string v1, "\u7194\u65ad\u4fdd\u62a4\uff1a\u4e24\u5206\u949f\u5185\u8fde\u7eed\u89e6\u53d140\u6b21\u6620\u5c04\u4ee5\u4e0a\u65f6\uff0c\u9a6c\u4e0a\u505c\u6b62\u81ea\u52a8\u5316"

    .line 1161
    .line 1162
    iput-object v1, v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->name:Ljava/lang/String;

    .line 1163
    .line 1164
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 1165
    .line 1166
    .line 1167
    invoke-static {v10}, Lta/m;->e(Landroid/content/Context;)V

    .line 1168
    .line 1169
    .line 1170
    goto/16 :goto_6

    .line 1171
    .line 1172
    :cond_23
    const/4 v8, 0x0

    .line 1173
    const/16 v10, 0xc

    .line 1174
    .line 1175
    new-array v12, v10, [Ljava/lang/String;

    .line 1176
    .line 1177
    aput-object v7, v12, v8

    .line 1178
    .line 1179
    aput-object v6, v12, v11

    .line 1180
    .line 1181
    aput-object v3, v12, v15

    .line 1182
    .line 1183
    const/4 v3, 0x3

    .line 1184
    aput-object v2, v12, v3

    .line 1185
    .line 1186
    const/4 v2, 0x4

    .line 1187
    aput-object v1, v12, v2

    .line 1188
    .line 1189
    const-string v1, "30\u6b21"

    .line 1190
    .line 1191
    const/4 v2, 0x5

    .line 1192
    aput-object v1, v12, v2

    .line 1193
    .line 1194
    const-string v1, "35\u6b21"

    .line 1195
    .line 1196
    const/4 v2, 0x6

    .line 1197
    aput-object v1, v12, v2

    .line 1198
    .line 1199
    const-string v1, "40\u6b21"

    .line 1200
    .line 1201
    const/4 v2, 0x7

    .line 1202
    aput-object v1, v12, v2

    .line 1203
    .line 1204
    const-string v1, "45\u6b21"

    .line 1205
    .line 1206
    const/16 v2, 0x8

    .line 1207
    .line 1208
    aput-object v1, v12, v2

    .line 1209
    .line 1210
    const-string v1, "50\u6b21"

    .line 1211
    .line 1212
    const/16 v2, 0x9

    .line 1213
    .line 1214
    aput-object v1, v12, v2

    .line 1215
    .line 1216
    const-string v1, "55\u6b21"

    .line 1217
    .line 1218
    const/16 v2, 0xa

    .line 1219
    .line 1220
    aput-object v1, v12, v2

    .line 1221
    .line 1222
    const-string v1, "60\u6b21"

    .line 1223
    .line 1224
    const/16 v2, 0xb

    .line 1225
    .line 1226
    aput-object v1, v12, v2

    .line 1227
    .line 1228
    new-instance v10, Lha/fa;

    .line 1229
    .line 1230
    new-instance v1, Ljava/util/ArrayList;

    .line 1231
    .line 1232
    const/16 v2, 0xc

    .line 1233
    .line 1234
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1235
    .line 1236
    .line 1237
    const/4 v3, 0x0

    .line 1238
    :goto_4
    if-ge v3, v2, :cond_24

    .line 1239
    .line 1240
    aget-object v2, v12, v3

    .line 1241
    .line 1242
    invoke-static {v2, v1, v2, v3, v11}, Lg/b;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)I

    .line 1243
    .line 1244
    .line 1245
    move-result v3

    .line 1246
    const/16 v2, 0xc

    .line 1247
    .line 1248
    goto :goto_4

    .line 1249
    :cond_24
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v7

    .line 1253
    new-instance v8, Lha/s3;

    .line 1254
    .line 1255
    const/4 v6, 0x0

    .line 1256
    move-object v1, v8

    .line 1257
    move-object v2, v14

    .line 1258
    move-object v3, v9

    .line 1259
    move-object/from16 v4, p1

    .line 1260
    .line 1261
    move/from16 v5, p3

    .line 1262
    .line 1263
    invoke-direct/range {v1 .. v6}, Lha/s3;-><init>(Lha/v3;Lcom/yunpan/appmanage/bean/NameContentSelectBean;Lc6/g;II)V

    .line 1264
    .line 1265
    .line 1266
    iget-object v5, v14, Lha/a4;->b:Landroid/content/Context;

    .line 1267
    .line 1268
    const/4 v6, 0x0

    .line 1269
    iget-object v4, v14, Lha/a4;->a:Landroid/app/Activity;

    .line 1270
    .line 1271
    move-object v3, v10

    .line 1272
    invoke-direct/range {v3 .. v8}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v10}, Lha/a4;->show()V

    .line 1276
    .line 1277
    .line 1278
    goto/16 :goto_6

    .line 1279
    .line 1280
    :cond_25
    const/4 v13, 0x5

    .line 1281
    if-ne v5, v13, :cond_28

    .line 1282
    .line 1283
    iget-boolean v8, v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 1284
    .line 1285
    if-eqz v8, :cond_26

    .line 1286
    .line 1287
    new-instance v1, Lha/z6;

    .line 1288
    .line 1289
    new-instance v2, Lha/u3;

    .line 1290
    .line 1291
    invoke-direct {v2, v14, v9, v4, v5}, Lha/u3;-><init>(Lha/v3;Lcom/yunpan/appmanage/bean/NameContentSelectBean;Lc6/g;I)V

    .line 1292
    .line 1293
    .line 1294
    iget-object v3, v14, Lha/a4;->a:Landroid/app/Activity;

    .line 1295
    .line 1296
    const-string v31, "\u786e\u5b9a\u53d6\u6d88"

    .line 1297
    .line 1298
    const-string v32, "\u7b97\u4e86"

    .line 1299
    .line 1300
    const-string v29, "\u662f\u5426\u8981\u53d6\u6d88\u52fe\u9009\u6b64\u529f\u80fd\uff1f\uff1f\uff1f"

    .line 1301
    .line 1302
    const-string v30, "\u5f3a\u70c8\u5efa\u8bae\u60a8\u52fe\u9009\u6b64\u529f\u80fd"

    .line 1303
    .line 1304
    move-object/from16 v26, v1

    .line 1305
    .line 1306
    move-object/from16 v27, v3

    .line 1307
    .line 1308
    move-object/from16 v28, v10

    .line 1309
    .line 1310
    move-object/from16 v33, v2

    .line 1311
    .line 1312
    invoke-direct/range {v26 .. v33}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 1313
    .line 1314
    .line 1315
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 1316
    .line 1317
    .line 1318
    goto/16 :goto_6

    .line 1319
    .line 1320
    :cond_26
    const/16 v8, 0xc

    .line 1321
    .line 1322
    new-array v10, v8, [Ljava/lang/String;

    .line 1323
    .line 1324
    const/4 v8, 0x0

    .line 1325
    aput-object v7, v10, v8

    .line 1326
    .line 1327
    aput-object v6, v10, v11

    .line 1328
    .line 1329
    aput-object v3, v10, v15

    .line 1330
    .line 1331
    const/4 v3, 0x3

    .line 1332
    aput-object v2, v10, v3

    .line 1333
    .line 1334
    const/4 v2, 0x4

    .line 1335
    aput-object v1, v10, v2

    .line 1336
    .line 1337
    const-string v1, "30\u6b21"

    .line 1338
    .line 1339
    const/4 v2, 0x5

    .line 1340
    aput-object v1, v10, v2

    .line 1341
    .line 1342
    const-string v1, "35\u6b21"

    .line 1343
    .line 1344
    const/4 v2, 0x6

    .line 1345
    aput-object v1, v10, v2

    .line 1346
    .line 1347
    const-string v1, "40\u6b21"

    .line 1348
    .line 1349
    const/4 v2, 0x7

    .line 1350
    aput-object v1, v10, v2

    .line 1351
    .line 1352
    const-string v1, "45\u6b21"

    .line 1353
    .line 1354
    const/16 v2, 0x8

    .line 1355
    .line 1356
    aput-object v1, v10, v2

    .line 1357
    .line 1358
    const-string v1, "50\u6b21"

    .line 1359
    .line 1360
    const/16 v2, 0x9

    .line 1361
    .line 1362
    aput-object v1, v10, v2

    .line 1363
    .line 1364
    const-string v1, "55\u6b21"

    .line 1365
    .line 1366
    const/16 v2, 0xa

    .line 1367
    .line 1368
    aput-object v1, v10, v2

    .line 1369
    .line 1370
    const-string v1, "60\u6b21"

    .line 1371
    .line 1372
    const/16 v2, 0xb

    .line 1373
    .line 1374
    aput-object v1, v10, v2

    .line 1375
    .line 1376
    new-instance v12, Lha/fa;

    .line 1377
    .line 1378
    new-instance v1, Ljava/util/ArrayList;

    .line 1379
    .line 1380
    const/16 v2, 0xc

    .line 1381
    .line 1382
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1383
    .line 1384
    .line 1385
    const/4 v3, 0x0

    .line 1386
    :goto_5
    if-ge v3, v2, :cond_27

    .line 1387
    .line 1388
    aget-object v6, v10, v3

    .line 1389
    .line 1390
    invoke-static {v6, v1, v6, v3, v11}, Lg/b;->c(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;II)I

    .line 1391
    .line 1392
    .line 1393
    move-result v3

    .line 1394
    goto :goto_5

    .line 1395
    :cond_27
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v7

    .line 1399
    new-instance v8, Lha/s3;

    .line 1400
    .line 1401
    const/4 v6, 0x1

    .line 1402
    move-object v1, v8

    .line 1403
    move-object v2, v14

    .line 1404
    move-object v3, v9

    .line 1405
    move-object/from16 v4, p1

    .line 1406
    .line 1407
    move/from16 v5, p3

    .line 1408
    .line 1409
    invoke-direct/range {v1 .. v6}, Lha/s3;-><init>(Lha/v3;Lcom/yunpan/appmanage/bean/NameContentSelectBean;Lc6/g;II)V

    .line 1410
    .line 1411
    .line 1412
    iget-object v5, v14, Lha/a4;->b:Landroid/content/Context;

    .line 1413
    .line 1414
    const/4 v6, 0x0

    .line 1415
    iget-object v4, v14, Lha/a4;->a:Landroid/app/Activity;

    .line 1416
    .line 1417
    move-object v3, v12

    .line 1418
    invoke-direct/range {v3 .. v8}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v12}, Lha/a4;->show()V

    .line 1422
    .line 1423
    .line 1424
    goto/16 :goto_6

    .line 1425
    .line 1426
    :cond_28
    const/4 v1, 0x6

    .line 1427
    if-ne v5, v1, :cond_29

    .line 1428
    .line 1429
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 1430
    .line 1431
    iget-boolean v2, v1, Lwa/u;->C:Z

    .line 1432
    .line 1433
    xor-int/2addr v2, v11

    .line 1434
    :try_start_c
    iput-boolean v2, v1, Lwa/u;->C:Z

    .line 1435
    .line 1436
    iget-object v3, v1, Lwa/u;->b:Lz7/s;

    .line 1437
    .line 1438
    const-string v6, "KeepAlive_FrontDeskNotice"

    .line 1439
    .line 1440
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v2

    .line 1444
    invoke-virtual {v3, v6, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 1445
    .line 1446
    .line 1447
    :catch_c
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 1448
    .line 1449
    .line 1450
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 1451
    .line 1452
    iget-boolean v2, v1, Lwa/u;->C:Z

    .line 1453
    .line 1454
    iput-boolean v2, v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 1455
    .line 1456
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 1457
    .line 1458
    .line 1459
    :try_start_d
    new-instance v2, Landroid/content/Intent;

    .line 1460
    .line 1461
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1462
    .line 1463
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1464
    .line 1465
    .line 1466
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v4

    .line 1470
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    .line 1472
    .line 1473
    const-string v4, ".BROADCAST_FRONT_DESK_SERVICE"

    .line 1474
    .line 1475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    .line 1477
    .line 1478
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v3

    .line 1482
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1483
    .line 1484
    .line 1485
    const-string v3, "bool"

    .line 1486
    .line 1487
    iget-boolean v1, v1, Lwa/u;->C:Z

    .line 1488
    .line 1489
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1490
    .line 1491
    .line 1492
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v1

    .line 1496
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1497
    .line 1498
    .line 1499
    invoke-virtual {v10, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10

    .line 1500
    .line 1501
    .line 1502
    goto/16 :goto_6

    .line 1503
    .line 1504
    :cond_29
    const/4 v1, 0x7

    .line 1505
    if-ne v5, v1, :cond_2b

    .line 1506
    .line 1507
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 1508
    .line 1509
    iget-boolean v2, v1, Lwa/u;->B:Z

    .line 1510
    .line 1511
    xor-int/2addr v2, v11

    .line 1512
    :try_start_e
    iput-boolean v2, v1, Lwa/u;->B:Z

    .line 1513
    .line 1514
    iget-object v3, v1, Lwa/u;->b:Lz7/s;

    .line 1515
    .line 1516
    const-string v6, "KeepAlive_HiddenFront"

    .line 1517
    .line 1518
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v2

    .line 1522
    invoke-virtual {v3, v6, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    .line 1523
    .line 1524
    .line 1525
    :catch_d
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 1526
    .line 1527
    .line 1528
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 1529
    .line 1530
    iget-boolean v1, v1, Lwa/u;->B:Z

    .line 1531
    .line 1532
    iput-boolean v1, v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 1533
    .line 1534
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 1535
    .line 1536
    .line 1537
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1538
    .line 1539
    if-ge v1, v12, :cond_2a

    .line 1540
    .line 1541
    const-string v1, "\u6b64\u529f\u80fd\u4ec5\u652f\u6301\u5b89\u53535.0\u4ee5\u4e0a\u7cfb\u7edf"

    .line 1542
    .line 1543
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1544
    .line 1545
    .line 1546
    goto/16 :goto_6

    .line 1547
    .line 1548
    :cond_2a
    iget-boolean v1, v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 1549
    .line 1550
    invoke-static {v1}, Lcom/yunpan/appmanage/ui/ActivityHome;->D(Z)V

    .line 1551
    .line 1552
    .line 1553
    goto/16 :goto_6

    .line 1554
    .line 1555
    :cond_2b
    const/16 v1, 0x8

    .line 1556
    .line 1557
    if-ne v5, v1, :cond_2c

    .line 1558
    .line 1559
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 1560
    .line 1561
    iget-boolean v2, v1, Lwa/u;->H:Z

    .line 1562
    .line 1563
    xor-int/2addr v2, v11

    .line 1564
    :try_start_f
    iput-boolean v2, v1, Lwa/u;->H:Z

    .line 1565
    .line 1566
    iget-object v3, v1, Lwa/u;->b:Lz7/s;

    .line 1567
    .line 1568
    const-string v6, "AutoTask_error_close_restart"

    .line 1569
    .line 1570
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1571
    .line 1572
    .line 1573
    move-result-object v2

    .line 1574
    invoke-virtual {v3, v6, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    .line 1575
    .line 1576
    .line 1577
    :catch_e
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 1578
    .line 1579
    .line 1580
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 1581
    .line 1582
    iget-boolean v1, v1, Lwa/u;->H:Z

    .line 1583
    .line 1584
    iput-boolean v1, v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 1585
    .line 1586
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 1587
    .line 1588
    .line 1589
    invoke-static {v10}, Lta/m;->e(Landroid/content/Context;)V

    .line 1590
    .line 1591
    .line 1592
    goto/16 :goto_6

    .line 1593
    .line 1594
    :cond_2c
    const/16 v1, 0x9

    .line 1595
    .line 1596
    if-ne v5, v1, :cond_2d

    .line 1597
    .line 1598
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 1599
    .line 1600
    iget-boolean v2, v1, Lwa/u;->I:Z

    .line 1601
    .line 1602
    xor-int/2addr v2, v11

    .line 1603
    :try_start_10
    iput-boolean v2, v1, Lwa/u;->I:Z

    .line 1604
    .line 1605
    iget-object v3, v1, Lwa/u;->b:Lz7/s;

    .line 1606
    .line 1607
    const-string v6, "AutoTask_error_close_execAutoStartTask"

    .line 1608
    .line 1609
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v2

    .line 1613
    invoke-virtual {v3, v6, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    .line 1614
    .line 1615
    .line 1616
    :catch_f
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 1617
    .line 1618
    .line 1619
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 1620
    .line 1621
    iget-boolean v1, v1, Lwa/u;->I:Z

    .line 1622
    .line 1623
    iput-boolean v1, v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 1624
    .line 1625
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 1626
    .line 1627
    .line 1628
    invoke-static {v10}, Lta/m;->e(Landroid/content/Context;)V

    .line 1629
    .line 1630
    .line 1631
    goto :goto_6

    .line 1632
    :cond_2d
    const/16 v1, 0xa

    .line 1633
    .line 1634
    if-ne v5, v1, :cond_30

    .line 1635
    .line 1636
    iget-boolean v1, v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 1637
    .line 1638
    if-eqz v1, :cond_2e

    .line 1639
    .line 1640
    invoke-static {v8}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 1641
    .line 1642
    .line 1643
    goto :goto_6

    .line 1644
    :cond_2e
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 1645
    .line 1646
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1647
    .line 1648
    .line 1649
    invoke-static {}, La2/w0;->O()Z

    .line 1650
    .line 1651
    .line 1652
    move-result v1

    .line 1653
    if-eqz v1, :cond_2f

    .line 1654
    .line 1655
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1656
    .line 1657
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1658
    .line 1659
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 1660
    .line 1661
    new-instance v2, La2/h;

    .line 1662
    .line 1663
    const/16 v3, 0x17

    .line 1664
    .line 1665
    invoke-direct {v2, v3, v14}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 1666
    .line 1667
    .line 1668
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1669
    .line 1670
    .line 1671
    iput-boolean v11, v9, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 1672
    .line 1673
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 1674
    .line 1675
    .line 1676
    goto :goto_6

    .line 1677
    :cond_2f
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1678
    .line 1679
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1680
    .line 1681
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->a:Landroid/content/ContextWrapper;

    .line 1682
    .line 1683
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getRequestIgnoreBatteryOptimizationsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v2

    .line 1687
    invoke-static {v1, v2}, Lcom/hjq/permissions/XXPermissions;->isGrantedPermission(Landroid/content/Context;Lcom/hjq/permissions/permission/base/IPermission;)Z

    .line 1688
    .line 1689
    .line 1690
    move-result v1

    .line 1691
    if-nez v1, :cond_30

    .line 1692
    .line 1693
    invoke-static {v10}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    .line 1694
    .line 1695
    .line 1696
    move-result-object v1

    .line 1697
    invoke-static {}, Lcom/hjq/permissions/permission/PermissionLists;->getRequestIgnoreBatteryOptimizationsPermission()Lcom/hjq/permissions/permission/base/IPermission;

    .line 1698
    .line 1699
    .line 1700
    move-result-object v2

    .line 1701
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->permission(Lcom/hjq/permissions/permission/base/IPermission;)Lcom/hjq/permissions/XXPermissions;

    .line 1702
    .line 1703
    .line 1704
    move-result-object v1

    .line 1705
    new-instance v2, Lha/t3;

    .line 1706
    .line 1707
    const/4 v3, 0x0

    .line 1708
    invoke-direct {v2, v9, v4, v5, v3}, Lha/t3;-><init>(Lcom/yunpan/appmanage/bean/NameContentSelectBean;Lc6/g;II)V

    .line 1709
    .line 1710
    .line 1711
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 1712
    .line 1713
    .line 1714
    :catch_10
    :cond_30
    :goto_6
    return-void

    .line 1715
    :pswitch_a
    check-cast v14, Lha/v2;

    .line 1716
    .line 1717
    iget-object v1, v14, Lha/v2;->i:Ljava/util/ArrayList;

    .line 1718
    .line 1719
    invoke-static/range {p2 .. p2}, Lcom/bumptech/glide/c;->j(Landroid/view/View;)V

    .line 1720
    .line 1721
    .line 1722
    iget-object v2, v14, Lha/v2;->h:Lx9/s3;

    .line 1723
    .line 1724
    invoke-virtual {v2, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v2

    .line 1728
    check-cast v2, Lx9/t3;

    .line 1729
    .line 1730
    invoke-virtual {v14}, Landroid/app/Dialog;->dismiss()V

    .line 1731
    .line 1732
    .line 1733
    :try_start_11
    new-instance v2, Landroid/content/Intent;

    .line 1734
    .line 1735
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1736
    .line 1737
    .line 1738
    new-instance v3, Landroid/content/ComponentName;

    .line 1739
    .line 1740
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v4

    .line 1744
    check-cast v4, Lx9/t3;

    .line 1745
    .line 1746
    iget-object v4, v4, Lx9/t3;->c:Ljava/lang/String;

    .line 1747
    .line 1748
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1749
    .line 1750
    .line 1751
    move-result-object v1

    .line 1752
    check-cast v1, Lx9/t3;

    .line 1753
    .line 1754
    iget-object v1, v1, Lx9/t3;->d:Ljava/lang/String;

    .line 1755
    .line 1756
    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    .line 1758
    .line 1759
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1760
    .line 1761
    .line 1762
    const/high16 v1, 0x10000000

    .line 1763
    .line 1764
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1765
    .line 1766
    .line 1767
    iget-object v1, v14, Lha/a4;->b:Landroid/content/Context;

    .line 1768
    .line 1769
    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 1770
    .line 1771
    .line 1772
    goto :goto_7

    .line 1773
    :catch_11
    const-string v1, "\u6b64\u754c\u9762\u65e0\u6cd5\u6253\u5f00\uff01"

    .line 1774
    .line 1775
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 1776
    .line 1777
    .line 1778
    :goto_7
    return-void

    .line 1779
    :pswitch_b
    check-cast v14, Lha/t2;

    .line 1780
    .line 1781
    iget-object v1, v14, Lha/t2;->j:Lha/cd;

    .line 1782
    .line 1783
    if-nez v1, :cond_31

    .line 1784
    .line 1785
    goto/16 :goto_8

    .line 1786
    .line 1787
    :cond_31
    iget-object v1, v14, Lha/t2;->h:Lx9/v;

    .line 1788
    .line 1789
    if-eqz v1, :cond_35

    .line 1790
    .line 1791
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 1792
    .line 1793
    .line 1794
    move-result v1

    .line 1795
    if-ge v5, v1, :cond_35

    .line 1796
    .line 1797
    iget-object v1, v14, Lha/t2;->h:Lx9/v;

    .line 1798
    .line 1799
    invoke-virtual {v1, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1800
    .line 1801
    .line 1802
    move-result-object v1

    .line 1803
    if-nez v1, :cond_32

    .line 1804
    .line 1805
    goto/16 :goto_8

    .line 1806
    .line 1807
    :cond_32
    iget-boolean v1, v14, Lha/t2;->i:Z

    .line 1808
    .line 1809
    if-nez v1, :cond_33

    .line 1810
    .line 1811
    iget-object v1, v14, Lha/t2;->j:Lha/cd;

    .line 1812
    .line 1813
    iget-object v2, v14, Lha/t2;->h:Lx9/v;

    .line 1814
    .line 1815
    invoke-virtual {v2, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1816
    .line 1817
    .line 1818
    move-result-object v2

    .line 1819
    check-cast v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 1820
    .line 1821
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 1822
    .line 1823
    iget-object v3, v14, Lha/t2;->h:Lx9/v;

    .line 1824
    .line 1825
    invoke-virtual {v3, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1826
    .line 1827
    .line 1828
    move-result-object v3

    .line 1829
    check-cast v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 1830
    .line 1831
    iget-object v3, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1832
    .line 1833
    iget-object v1, v1, Lha/cd;->a:Lha/ed;

    .line 1834
    .line 1835
    iput-object v2, v1, Lha/ed;->k:Ljava/lang/String;

    .line 1836
    .line 1837
    iput-object v3, v1, Lha/ed;->l:Ljava/lang/String;

    .line 1838
    .line 1839
    iput-object v12, v1, Lha/ed;->m:Ljava/lang/String;

    .line 1840
    .line 1841
    iget-object v1, v1, Lha/ed;->n:Landroid/widget/TextView;

    .line 1842
    .line 1843
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1844
    .line 1845
    .line 1846
    invoke-virtual {v14}, Landroid/app/Dialog;->dismiss()V

    .line 1847
    .line 1848
    .line 1849
    goto :goto_8

    .line 1850
    :cond_33
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 1851
    .line 1852
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 1853
    .line 1854
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->b:Landroid/content/pm/PackageManager;

    .line 1855
    .line 1856
    iget-object v2, v14, Lha/t2;->h:Lx9/v;

    .line 1857
    .line 1858
    invoke-virtual {v2, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v2

    .line 1862
    check-cast v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 1863
    .line 1864
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1865
    .line 1866
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v1

    .line 1870
    if-eqz v1, :cond_34

    .line 1871
    .line 1872
    iget-object v2, v14, Lha/t2;->j:Lha/cd;

    .line 1873
    .line 1874
    iget-object v3, v14, Lha/t2;->h:Lx9/v;

    .line 1875
    .line 1876
    invoke-virtual {v3, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v3

    .line 1880
    check-cast v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 1881
    .line 1882
    iget-object v3, v3, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 1883
    .line 1884
    iget-object v4, v14, Lha/t2;->h:Lx9/v;

    .line 1885
    .line 1886
    invoke-virtual {v4, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v4

    .line 1890
    check-cast v4, Lcom/yunpan/appmanage/db/AppBean;

    .line 1891
    .line 1892
    iget-object v4, v4, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1893
    .line 1894
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v1

    .line 1898
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v1

    .line 1902
    iget-object v2, v2, Lha/cd;->a:Lha/ed;

    .line 1903
    .line 1904
    iput-object v3, v2, Lha/ed;->k:Ljava/lang/String;

    .line 1905
    .line 1906
    iput-object v4, v2, Lha/ed;->l:Ljava/lang/String;

    .line 1907
    .line 1908
    iput-object v1, v2, Lha/ed;->m:Ljava/lang/String;

    .line 1909
    .line 1910
    iget-object v1, v2, Lha/ed;->n:Landroid/widget/TextView;

    .line 1911
    .line 1912
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1913
    .line 1914
    .line 1915
    invoke-virtual {v14}, Landroid/app/Dialog;->dismiss()V

    .line 1916
    .line 1917
    .line 1918
    goto :goto_8

    .line 1919
    :cond_34
    iget-object v1, v14, Lha/t2;->h:Lx9/v;

    .line 1920
    .line 1921
    invoke-virtual {v1, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v1

    .line 1925
    check-cast v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 1926
    .line 1927
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 1928
    .line 1929
    new-instance v2, Lb8/a;

    .line 1930
    .line 1931
    const/4 v3, 0x6

    .line 1932
    invoke-direct {v2, v1, v3}, Lb8/a;-><init>(Ljava/lang/String;I)V

    .line 1933
    .line 1934
    .line 1935
    new-instance v1, Lmc/c;

    .line 1936
    .line 1937
    const/4 v3, 0x0

    .line 1938
    invoke-direct {v1, v3, v2}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 1939
    .line 1940
    .line 1941
    sget-object v2, Lrc/f;->b:Lec/j;

    .line 1942
    .line 1943
    invoke-virtual {v1, v2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v1

    .line 1947
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 1948
    .line 1949
    .line 1950
    move-result-object v2

    .line 1951
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 1952
    .line 1953
    .line 1954
    move-result-object v1

    .line 1955
    new-instance v2, Lha/s2;

    .line 1956
    .line 1957
    invoke-direct {v2, v5, v3, v14}, Lha/s2;-><init>(IILjava/lang/Object;)V

    .line 1958
    .line 1959
    .line 1960
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 1961
    .line 1962
    .line 1963
    :cond_35
    :goto_8
    return-void

    .line 1964
    :pswitch_c
    check-cast v14, Lha/r2;

    .line 1965
    .line 1966
    iget-object v1, v14, Lha/r2;->h:Lx9/w;

    .line 1967
    .line 1968
    invoke-virtual {v1, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 1969
    .line 1970
    .line 1971
    move-result-object v1

    .line 1972
    check-cast v1, Lcom/yunpan/appmanage/bean/AppSelectHomeActivityBean;

    .line 1973
    .line 1974
    iget-object v2, v1, Lcom/yunpan/appmanage/bean/AppSelectHomeActivityBean;->name:Ljava/lang/String;

    .line 1975
    .line 1976
    iget-object v3, v1, Lcom/yunpan/appmanage/bean/AppSelectHomeActivityBean;->packageName:Ljava/lang/String;

    .line 1977
    .line 1978
    iget-object v1, v1, Lcom/yunpan/appmanage/bean/AppSelectHomeActivityBean;->className:Ljava/lang/String;

    .line 1979
    .line 1980
    iget-object v4, v14, Lha/r2;->j:Lha/o;

    .line 1981
    .line 1982
    iget v5, v4, Lha/o;->a:I

    .line 1983
    .line 1984
    packed-switch v5, :pswitch_data_1

    .line 1985
    .line 1986
    .line 1987
    iget-object v2, v4, Lha/o;->c:Ljava/lang/Object;

    .line 1988
    .line 1989
    check-cast v2, Lha/s2;

    .line 1990
    .line 1991
    iget-object v2, v2, Lha/s2;->d:Ljava/lang/Object;

    .line 1992
    .line 1993
    check-cast v2, Lha/t2;

    .line 1994
    .line 1995
    iget-object v5, v2, Lha/t2;->j:Lha/cd;

    .line 1996
    .line 1997
    iget-object v6, v2, Lha/t2;->h:Lx9/v;

    .line 1998
    .line 1999
    iget v4, v4, Lha/o;->b:I

    .line 2000
    .line 2001
    invoke-virtual {v6, v4}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 2002
    .line 2003
    .line 2004
    move-result-object v4

    .line 2005
    check-cast v4, Lcom/yunpan/appmanage/db/AppBean;

    .line 2006
    .line 2007
    iget-object v4, v4, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 2008
    .line 2009
    iget-object v5, v5, Lha/cd;->a:Lha/ed;

    .line 2010
    .line 2011
    iput-object v4, v5, Lha/ed;->k:Ljava/lang/String;

    .line 2012
    .line 2013
    iput-object v3, v5, Lha/ed;->l:Ljava/lang/String;

    .line 2014
    .line 2015
    iput-object v1, v5, Lha/ed;->m:Ljava/lang/String;

    .line 2016
    .line 2017
    iget-object v1, v5, Lha/ed;->n:Landroid/widget/TextView;

    .line 2018
    .line 2019
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2020
    .line 2021
    .line 2022
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 2023
    .line 2024
    .line 2025
    goto :goto_9

    .line 2026
    :pswitch_d
    iget-object v5, v4, Lha/o;->c:Ljava/lang/Object;

    .line 2027
    .line 2028
    check-cast v5, Lha/o0;

    .line 2029
    .line 2030
    iget-object v5, v5, Lha/o0;->d:Lha/r0;

    .line 2031
    .line 2032
    iget-object v6, v5, Lha/r0;->j:Lha/q0;

    .line 2033
    .line 2034
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2035
    .line 2036
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2037
    .line 2038
    .line 2039
    iget-object v8, v5, Lha/r0;->h:Lx9/v;

    .line 2040
    .line 2041
    iget v4, v4, Lha/o;->b:I

    .line 2042
    .line 2043
    invoke-virtual {v8, v4}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 2044
    .line 2045
    .line 2046
    move-result-object v4

    .line 2047
    check-cast v4, Lcom/yunpan/appmanage/db/AppBean;

    .line 2048
    .line 2049
    iget-object v4, v4, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 2050
    .line 2051
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2052
    .line 2053
    .line 2054
    const-string v4, "("

    .line 2055
    .line 2056
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2057
    .line 2058
    .line 2059
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    .line 2061
    .line 2062
    const-string v2, ")"

    .line 2063
    .line 2064
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    .line 2066
    .line 2067
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2068
    .line 2069
    .line 2070
    move-result-object v2

    .line 2071
    invoke-interface {v6, v2, v3, v1}, Lha/q0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    .line 2073
    .line 2074
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 2075
    .line 2076
    .line 2077
    goto :goto_9

    .line 2078
    :pswitch_e
    iget-object v5, v4, Lha/o;->c:Ljava/lang/Object;

    .line 2079
    .line 2080
    check-cast v5, Lha/o0;

    .line 2081
    .line 2082
    iget-object v5, v5, Lha/o0;->d:Lha/r0;

    .line 2083
    .line 2084
    iget-object v6, v5, Lha/r0;->j:Lha/q0;

    .line 2085
    .line 2086
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2087
    .line 2088
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2089
    .line 2090
    .line 2091
    iget-object v8, v5, Lha/r0;->h:Lx9/v;

    .line 2092
    .line 2093
    iget v4, v4, Lha/o;->b:I

    .line 2094
    .line 2095
    invoke-virtual {v8, v4}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 2096
    .line 2097
    .line 2098
    move-result-object v4

    .line 2099
    check-cast v4, Lcom/yunpan/appmanage/db/AppBean;

    .line 2100
    .line 2101
    iget-object v4, v4, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 2102
    .line 2103
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    .line 2105
    .line 2106
    const-string v4, "("

    .line 2107
    .line 2108
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2109
    .line 2110
    .line 2111
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    .line 2113
    .line 2114
    const-string v2, ")"

    .line 2115
    .line 2116
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    .line 2118
    .line 2119
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2120
    .line 2121
    .line 2122
    move-result-object v2

    .line 2123
    invoke-interface {v6, v2, v3, v1}, Lha/q0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    .line 2125
    .line 2126
    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 2127
    .line 2128
    .line 2129
    :goto_9
    invoke-virtual {v14}, Landroid/app/Dialog;->dismiss()V

    .line 2130
    .line 2131
    .line 2132
    return-void

    .line 2133
    :pswitch_f
    check-cast v14, Lha/q2;

    .line 2134
    .line 2135
    iget-object v1, v14, Lha/q2;->j:Lha/p2;

    .line 2136
    .line 2137
    iget-object v2, v14, Lha/q2;->h:Lx9/v;

    .line 2138
    .line 2139
    invoke-virtual {v2, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v2

    .line 2143
    check-cast v2, Lcom/yunpan/appmanage/db/AppBean;

    .line 2144
    .line 2145
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

    .line 2146
    .line 2147
    iget-object v3, v14, Lha/q2;->h:Lx9/v;

    .line 2148
    .line 2149
    invoke-virtual {v3, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 2150
    .line 2151
    .line 2152
    move-result-object v3

    .line 2153
    check-cast v3, Lcom/yunpan/appmanage/db/AppBean;

    .line 2154
    .line 2155
    iget-object v3, v3, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 2156
    .line 2157
    invoke-interface {v1, v2, v3}, Lha/p2;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    .line 2159
    .line 2160
    invoke-virtual {v14}, Landroid/app/Dialog;->dismiss()V

    .line 2161
    .line 2162
    .line 2163
    return-void

    .line 2164
    :pswitch_10
    check-cast v14, Lha/j0;

    .line 2165
    .line 2166
    iget-object v1, v14, Lha/j0;->h:Lx9/w0;

    .line 2167
    .line 2168
    invoke-virtual {v1}, Lc6/g;->v()Ljava/util/List;

    .line 2169
    .line 2170
    .line 2171
    move-result-object v1

    .line 2172
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v1

    .line 2176
    check-cast v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 2177
    .line 2178
    iget-object v2, v14, Lha/j0;->h:Lx9/w0;

    .line 2179
    .line 2180
    invoke-virtual {v2}, Lc6/g;->v()Ljava/util/List;

    .line 2181
    .line 2182
    .line 2183
    move-result-object v2

    .line 2184
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2185
    .line 2186
    .line 2187
    move-result-object v2

    .line 2188
    check-cast v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 2189
    .line 2190
    iget-boolean v2, v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 2191
    .line 2192
    xor-int/2addr v2, v11

    .line 2193
    iput-boolean v2, v1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 2194
    .line 2195
    iget-object v1, v14, Lha/j0;->h:Lx9/w0;

    .line 2196
    .line 2197
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 2198
    .line 2199
    .line 2200
    const/4 v1, 0x0

    .line 2201
    iput v1, v14, Lha/j0;->j:I

    .line 2202
    .line 2203
    iget-object v1, v14, Lha/j0;->h:Lx9/w0;

    .line 2204
    .line 2205
    invoke-virtual {v1}, Lc6/g;->v()Ljava/util/List;

    .line 2206
    .line 2207
    .line 2208
    move-result-object v1

    .line 2209
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2210
    .line 2211
    .line 2212
    move-result-object v1

    .line 2213
    :cond_36
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 2214
    .line 2215
    .line 2216
    move-result v2

    .line 2217
    if-eqz v2, :cond_37

    .line 2218
    .line 2219
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2220
    .line 2221
    .line 2222
    move-result-object v2

    .line 2223
    check-cast v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 2224
    .line 2225
    iget-boolean v3, v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->boolValue:Z

    .line 2226
    .line 2227
    if-eqz v3, :cond_36

    .line 2228
    .line 2229
    iget v3, v14, Lha/j0;->j:I

    .line 2230
    .line 2231
    iget v2, v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->intValue:I

    .line 2232
    .line 2233
    or-int/2addr v2, v3

    .line 2234
    iput v2, v14, Lha/j0;->j:I

    .line 2235
    .line 2236
    goto :goto_a

    .line 2237
    :cond_37
    return-void

    .line 2238
    :pswitch_11
    const-string v1, ":"

    .line 2239
    .line 2240
    check-cast v14, Lha/b;

    .line 2241
    .line 2242
    iget-object v2, v14, Lha/a4;->b:Landroid/content/Context;

    .line 2243
    .line 2244
    invoke-virtual {v4, v5}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 2245
    .line 2246
    .line 2247
    move-result-object v3

    .line 2248
    check-cast v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 2249
    .line 2250
    if-nez v5, :cond_3d

    .line 2251
    .line 2252
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 2253
    .line 2254
    iget-boolean v7, v6, Lcom/yunpan/appmanage/util/w;->R:Z

    .line 2255
    .line 2256
    xor-int/2addr v7, v11

    .line 2257
    iput-boolean v7, v6, Lcom/yunpan/appmanage/util/w;->R:Z

    .line 2258
    .line 2259
    :try_start_12
    iget-object v8, v6, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 2260
    .line 2261
    const-string v9, "Accessibility_boot_task"

    .line 2262
    .line 2263
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2264
    .line 2265
    .line 2266
    move-result-object v7

    .line 2267
    invoke-virtual {v8, v9, v7}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    .line 2268
    .line 2269
    .line 2270
    :catch_12
    invoke-virtual {v6}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 2271
    .line 2272
    .line 2273
    sget-object v6, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 2274
    .line 2275
    iget-boolean v6, v6, Lcom/yunpan/appmanage/util/w;->R:Z

    .line 2276
    .line 2277
    iput-boolean v6, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 2278
    .line 2279
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 2280
    .line 2281
    .line 2282
    :try_start_13
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2283
    .line 2284
    .line 2285
    move-result-object v3

    .line 2286
    const-string v4, "enabled_accessibility_services"

    .line 2287
    .line 2288
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 2289
    .line 2290
    .line 2291
    move-result-object v3

    .line 2292
    if-nez v3, :cond_38

    .line 2293
    .line 2294
    goto :goto_b

    .line 2295
    :cond_38
    move-object v12, v3

    .line 2296
    :goto_b
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 2297
    .line 2298
    .line 2299
    move-result v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    .line 2300
    sget-object v4, Lwa/v;->a:Lcom/yunpan/appmanage/util/b0;

    .line 2301
    .line 2302
    if-eqz v3, :cond_39

    .line 2303
    .line 2304
    :try_start_14
    invoke-virtual {v4, v12}, Lcom/yunpan/appmanage/util/b0;->e(Ljava/lang/String;)V

    .line 2305
    .line 2306
    .line 2307
    goto :goto_f

    .line 2308
    :cond_39
    new-instance v3, Ljava/util/HashSet;

    .line 2309
    .line 2310
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2311
    .line 2312
    .line 2313
    invoke-virtual {v12, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 2314
    .line 2315
    .line 2316
    move-result-object v5

    .line 2317
    array-length v6, v5

    .line 2318
    const/4 v7, 0x0

    .line 2319
    :goto_c
    if-ge v7, v6, :cond_3b

    .line 2320
    .line 2321
    aget-object v8, v5, v7

    .line 2322
    .line 2323
    const-string v9, "/"

    .line 2324
    .line 2325
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 2326
    .line 2327
    .line 2328
    move-result v9

    .line 2329
    if-nez v9, :cond_3a

    .line 2330
    .line 2331
    goto :goto_d

    .line 2332
    :cond_3a
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2333
    .line 2334
    .line 2335
    move-result-object v8

    .line 2336
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 2337
    .line 2338
    .line 2339
    move-result-object v8

    .line 2340
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 2341
    .line 2342
    .line 2343
    move-result-object v8

    .line 2344
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2345
    .line 2346
    .line 2347
    :goto_d
    add-int/2addr v7, v11

    .line 2348
    goto :goto_c

    .line 2349
    :cond_3b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 2350
    .line 2351
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2352
    .line 2353
    .line 2354
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 2355
    .line 2356
    .line 2357
    move-result-object v3

    .line 2358
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2359
    .line 2360
    .line 2361
    move-result v6

    .line 2362
    if-eqz v6, :cond_3c

    .line 2363
    .line 2364
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2365
    .line 2366
    .line 2367
    move-result-object v6

    .line 2368
    check-cast v6, Ljava/lang/String;

    .line 2369
    .line 2370
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2371
    .line 2372
    .line 2373
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2374
    .line 2375
    .line 2376
    goto :goto_e

    .line 2377
    :cond_3c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2378
    .line 2379
    .line 2380
    move-result-object v1

    .line 2381
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 2382
    .line 2383
    .line 2384
    move-result v3

    .line 2385
    sub-int/2addr v3, v11

    .line 2386
    const/4 v5, 0x0

    .line 2387
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 2388
    .line 2389
    .line 2390
    move-result-object v1

    .line 2391
    invoke-virtual {v4, v1}, Lcom/yunpan/appmanage/util/b0;->e(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_13

    .line 2392
    .line 2393
    .line 2394
    :catch_13
    :goto_f
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 2395
    .line 2396
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 2397
    .line 2398
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2399
    .line 2400
    .line 2401
    const-string v1, "\u6388\u6743\u3010\u901a\u77e5\u4f7f\u7528\u6743\u3011\u5931\u8d25\uff0c\u53ef\u80fd\u4f1a\u5bfc\u81f4\u65e0\u969c\u788d\u6301\u4e45\u65e0\u6548"

    .line 2402
    .line 2403
    invoke-static {v2, v1}, Lcom/yunpan/appmanage/util/k;->m(Landroid/content/Context;Ljava/lang/String;)V

    .line 2404
    .line 2405
    .line 2406
    goto/16 :goto_10

    .line 2407
    .line 2408
    :cond_3d
    if-ne v5, v15, :cond_40

    .line 2409
    .line 2410
    iget-boolean v1, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 2411
    .line 2412
    if-nez v1, :cond_3f

    .line 2413
    .line 2414
    sget-object v1, Lfa/g0;->a:Lfa/h0;

    .line 2415
    .line 2416
    invoke-virtual {v1}, Lfa/h0;->f()Z

    .line 2417
    .line 2418
    .line 2419
    move-result v1

    .line 2420
    if-nez v1, :cond_3e

    .line 2421
    .line 2422
    const-string v1, "\u60a8\u6ca1\u6709root\u65e0\u9700\u52fe\u9009"

    .line 2423
    .line 2424
    invoke-static {v1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 2425
    .line 2426
    .line 2427
    goto/16 :goto_10

    .line 2428
    .line 2429
    :cond_3e
    new-instance v1, Lha/z6;

    .line 2430
    .line 2431
    iget-object v6, v14, Lha/a4;->b:Landroid/content/Context;

    .line 2432
    .line 2433
    move-object v7, v6

    .line 2434
    check-cast v7, Landroid/app/Activity;

    .line 2435
    .line 2436
    new-instance v9, Lha/a;

    .line 2437
    .line 2438
    const/4 v2, 0x0

    .line 2439
    invoke-direct {v9, v3, v4, v5, v2}, Lha/a;-><init>(Lcom/yunpan/appmanage/bean/NameContentSelectBean;Lc6/g;II)V

    .line 2440
    .line 2441
    .line 2442
    const-string v8, "\u6211\u660e\u767d\u7684"

    .line 2443
    .line 2444
    const-string v10, "\u53d6\u6d88\u9009\u62e9"

    .line 2445
    .line 2446
    const-string v5, "\u4e0d\u660e\u767d\u8fd9\u9879\u662f\u5e72\u561b\u7684\u8bdd\uff0c\u8bf7\u4e00\u5b9a\u4e0d\u8981\u52fe\u9009\uff01"

    .line 2447
    .line 2448
    const-string v11, ""

    .line 2449
    .line 2450
    move-object v2, v1

    .line 2451
    move-object v3, v7

    .line 2452
    move-object v4, v6

    .line 2453
    move-object v6, v11

    .line 2454
    move-object v7, v8

    .line 2455
    move-object v8, v10

    .line 2456
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 2457
    .line 2458
    .line 2459
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 2460
    .line 2461
    .line 2462
    goto/16 :goto_10

    .line 2463
    .line 2464
    :cond_3f
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 2465
    .line 2466
    iget-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->S:Z

    .line 2467
    .line 2468
    xor-int/2addr v2, v11

    .line 2469
    iput-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->S:Z

    .line 2470
    .line 2471
    :try_start_15
    iget-object v6, v1, Lcom/yunpan/appmanage/util/w;->i:Lz7/s;

    .line 2472
    .line 2473
    const-string v7, "Accessibility_root_mode"

    .line 2474
    .line 2475
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2476
    .line 2477
    .line 2478
    move-result-object v2

    .line 2479
    invoke-virtual {v6, v7, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_14

    .line 2480
    .line 2481
    .line 2482
    :catch_14
    invoke-virtual {v1}, Lcom/yunpan/appmanage/util/w;->m()V

    .line 2483
    .line 2484
    .line 2485
    iget-boolean v1, v1, Lcom/yunpan/appmanage/util/w;->S:Z

    .line 2486
    .line 2487
    iput-boolean v1, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 2488
    .line 2489
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 2490
    .line 2491
    .line 2492
    goto/16 :goto_10

    .line 2493
    .line 2494
    :cond_40
    const/4 v1, 0x3

    .line 2495
    if-ne v5, v1, :cond_42

    .line 2496
    .line 2497
    iget-boolean v1, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 2498
    .line 2499
    if-nez v1, :cond_41

    .line 2500
    .line 2501
    new-instance v1, Lha/z6;

    .line 2502
    .line 2503
    new-instance v2, Lha/a;

    .line 2504
    .line 2505
    invoke-direct {v2, v3, v4, v5, v11}, Lha/a;-><init>(Lcom/yunpan/appmanage/bean/NameContentSelectBean;Lc6/g;II)V

    .line 2506
    .line 2507
    .line 2508
    iget-object v3, v14, Lha/a4;->a:Landroid/app/Activity;

    .line 2509
    .line 2510
    iget-object v4, v14, Lha/a4;->b:Landroid/content/Context;

    .line 2511
    .line 2512
    const-string v20, "\u786e\u5b9a\u52fe\u9009"

    .line 2513
    .line 2514
    const-string v21, "\u53d6\u6d88\u52fe\u9009"

    .line 2515
    .line 2516
    const-string v18, "\u8b66\u544a\uff1a\u8bf7\u52a1\u5fc5\u8ba4\u771f\u9605\u8bfb\u6b64\u9879"

    .line 2517
    .line 2518
    const-string v19, "\u52fe\u9009\u540e\u5c06\u4e0d\u80fd\u81ea\u542f\u52a8\u6267\u884c\u4efb\u52a1"

    .line 2519
    .line 2520
    move-object v15, v1

    .line 2521
    move-object/from16 v16, v3

    .line 2522
    .line 2523
    move-object/from16 v17, v4

    .line 2524
    .line 2525
    move-object/from16 v22, v2

    .line 2526
    .line 2527
    invoke-direct/range {v15 .. v22}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 2528
    .line 2529
    .line 2530
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 2531
    .line 2532
    .line 2533
    goto :goto_10

    .line 2534
    :cond_41
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 2535
    .line 2536
    iget-boolean v2, v1, Lwa/u;->h:Z

    .line 2537
    .line 2538
    xor-int/2addr v2, v11

    .line 2539
    invoke-virtual {v1, v2}, Lwa/u;->h(Z)V

    .line 2540
    .line 2541
    .line 2542
    iget-boolean v1, v1, Lwa/u;->h:Z

    .line 2543
    .line 2544
    iput-boolean v1, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 2545
    .line 2546
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 2547
    .line 2548
    .line 2549
    goto :goto_10

    .line 2550
    :cond_42
    if-ne v5, v11, :cond_43

    .line 2551
    .line 2552
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 2553
    .line 2554
    iget-boolean v2, v1, Lwa/u;->e:Z

    .line 2555
    .line 2556
    xor-int/2addr v2, v11

    .line 2557
    :try_start_16
    iput-boolean v2, v1, Lwa/u;->e:Z

    .line 2558
    .line 2559
    iget-object v6, v1, Lwa/u;->b:Lz7/s;

    .line 2560
    .line 2561
    const-string v7, "RebootAccessibility"

    .line 2562
    .line 2563
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2564
    .line 2565
    .line 2566
    move-result-object v2

    .line 2567
    invoke-virtual {v6, v7, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_15

    .line 2568
    .line 2569
    .line 2570
    :catch_15
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 2571
    .line 2572
    .line 2573
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 2574
    .line 2575
    iget-boolean v1, v1, Lwa/u;->e:Z

    .line 2576
    .line 2577
    iput-boolean v1, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 2578
    .line 2579
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 2580
    .line 2581
    .line 2582
    goto :goto_10

    .line 2583
    :cond_43
    const/4 v1, 0x4

    .line 2584
    if-ne v5, v1, :cond_44

    .line 2585
    .line 2586
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 2587
    .line 2588
    iget-boolean v2, v1, Lwa/u;->f:Z

    .line 2589
    .line 2590
    xor-int/2addr v2, v11

    .line 2591
    :try_start_17
    iput-boolean v2, v1, Lwa/u;->f:Z

    .line 2592
    .line 2593
    iget-object v6, v1, Lwa/u;->b:Lz7/s;

    .line 2594
    .line 2595
    const-string v7, "CoverAccessibility"

    .line 2596
    .line 2597
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2598
    .line 2599
    .line 2600
    move-result-object v2

    .line 2601
    invoke-virtual {v6, v7, v2}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_16

    .line 2602
    .line 2603
    .line 2604
    :catch_16
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 2605
    .line 2606
    .line 2607
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 2608
    .line 2609
    iget-boolean v1, v1, Lwa/u;->f:Z

    .line 2610
    .line 2611
    iput-boolean v1, v3, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 2612
    .line 2613
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 2614
    .line 2615
    .line 2616
    :cond_44
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method
