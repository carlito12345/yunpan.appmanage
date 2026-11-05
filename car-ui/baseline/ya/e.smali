.class public final Lya/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static J:Lya/e;


# instance fields
.field public A:Z

.field public B:Z

.field public final C:Lya/d;

.field public final D:Lya/d;

.field public final E:Lya/d;

.field public final F:Lya/d;

.field public G:I

.field public final H:Lya/d;

.field public I:Z

.field public a:Lcom/yunpan/appmanage/service/AccService;

.field public b:Landroid/content/SharedPreferences;

.field public c:Landroid/content/SharedPreferences$Editor;

.field public d:Lz7/s;

.field public e:Z

.field public f:J

.field public g:Landroid/view/WindowManager;

.field public h:Landroid/view/View;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/view/WindowManager$LayoutParams;

.field public k:Landroid/view/WindowManager$LayoutParams;

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lya/e;->d:Lz7/s;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lya/e;->e:Z

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    iput-wide v1, p0, Lya/e;->f:J

    .line 13
    .line 14
    iput-boolean v0, p0, Lya/e;->l:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lya/e;->m:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lya/e;->n:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lya/e;->o:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lya/e;->z:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lya/e;->A:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lya/e;->B:Z

    .line 27
    .line 28
    new-instance v1, Lya/d;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, p0, v2}, Lya/d;-><init>(Lya/e;I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lya/e;->C:Lya/d;

    .line 35
    .line 36
    new-instance v1, Lya/d;

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    invoke-direct {v1, p0, v2}, Lya/d;-><init>(Lya/e;I)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lya/e;->D:Lya/d;

    .line 43
    .line 44
    new-instance v1, Lya/d;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-direct {v1, p0, v2}, Lya/d;-><init>(Lya/e;I)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lya/e;->E:Lya/d;

    .line 51
    .line 52
    new-instance v1, Lya/d;

    .line 53
    .line 54
    const/4 v2, 0x3

    .line 55
    invoke-direct {v1, p0, v2}, Lya/d;-><init>(Lya/e;I)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lya/e;->F:Lya/d;

    .line 59
    .line 60
    iput v0, p0, Lya/e;->G:I

    .line 61
    .line 62
    new-instance v1, Lya/d;

    .line 63
    .line 64
    const/4 v2, 0x4

    .line 65
    invoke-direct {v1, p0, v2}, Lya/d;-><init>(Lya/e;I)V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lya/e;->H:Lya/d;

    .line 69
    .line 70
    iput-boolean v0, p0, Lya/e;->I:Z

    .line 71
    .line 72
    return-void
.end method

.method public static declared-synchronized b()Lya/e;
    .locals 2

    .line 1
    const-class v0, Lya/e;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lya/e;->J:Lya/e;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lya/e;

    .line 9
    .line 10
    invoke-direct {v1}, Lya/e;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lya/e;->J:Lya/e;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lya/e;->J:Lya/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    new-instance v2, Ly3/a;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Ly3/a;-><init>(Lcom/yunpan/appmanage/service/AccService;)V

    .line 12
    .line 13
    .line 14
    iput-object v2, v1, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 15
    .line 16
    iget-object v1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 19
    .line 20
    new-instance v2, Lya/b;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, v0, v3}, Lya/b;-><init>(Lya/e;I)V

    .line 24
    .line 25
    .line 26
    const-wide/16 v3, 0x12c

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 33
    .line 34
    const-string v2, "1"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v1, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x1

    .line 47
    xor-int/2addr v1, v2

    .line 48
    iput-boolean v1, v0, Lya/e;->e:Z

    .line 49
    .line 50
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 51
    .line 52
    const-string v3, "auto_hide"

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/4 v3, 0x0

    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 66
    .line 67
    const-string v4, "auto_trans"

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const/4 v1, 0x0

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 83
    :goto_1
    iput-boolean v1, v0, Lya/e;->z:Z

    .line 84
    .line 85
    const v4, 0xea60

    .line 86
    .line 87
    .line 88
    if-nez v1, :cond_3

    .line 89
    .line 90
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 91
    .line 92
    const-string v5, "antiBurnScreen"

    .line 93
    .line 94
    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    iget-object v1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 105
    .line 106
    iget-object v1, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 107
    .line 108
    iget-object v5, v0, Lya/e;->H:Lya/d;

    .line 109
    .line 110
    int-to-long v6, v4

    .line 111
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    .line 113
    .line 114
    :cond_3
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 115
    .line 116
    iget-object v1, v1, Lz7/s;->a:Lb8/n;

    .line 117
    .line 118
    const-string v5, "lock"

    .line 119
    .line 120
    invoke-virtual {v1, v5}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_4

    .line 125
    .line 126
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 127
    .line 128
    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    iput-boolean v1, v0, Lya/e;->B:Z

    .line 137
    .line 138
    :cond_4
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 139
    .line 140
    const-string v5, "3"

    .line 141
    .line 142
    invoke-virtual {v1, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iget-object v1, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 147
    .line 148
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_6

    .line 153
    .line 154
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 155
    .line 156
    const-string v5, "4"

    .line 157
    .line 158
    invoke-virtual {v1, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    iget-object v1, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_6

    .line 169
    .line 170
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 171
    .line 172
    const-string v5, "5"

    .line 173
    .line 174
    invoke-virtual {v1, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    iget-object v1, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_6

    .line 185
    .line 186
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 187
    .line 188
    const-string v5, "6"

    .line 189
    .line 190
    invoke-virtual {v1, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    iget-object v1, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_5

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_5
    const/4 v1, 0x0

    .line 204
    goto :goto_3

    .line 205
    :cond_6
    :goto_2
    const/4 v1, 0x1

    .line 206
    :goto_3
    iput-boolean v1, v0, Lya/e;->A:Z

    .line 207
    .line 208
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 209
    .line 210
    const-string v5, "trans"

    .line 211
    .line 212
    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    iput v1, v0, Lya/e;->u:I

    .line 221
    .line 222
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 223
    .line 224
    iget-object v1, v1, Lz7/s;->a:Lb8/n;

    .line 225
    .line 226
    const-string v5, "allow_move_outer_edge"

    .line 227
    .line 228
    invoke-virtual {v1, v5}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_7

    .line 233
    .line 234
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 235
    .line 236
    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    iput-boolean v1, v0, Lya/e;->I:Z

    .line 245
    .line 246
    :cond_7
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 247
    .line 248
    const-string v5, "size"

    .line 249
    .line 250
    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    iput v1, v0, Lya/e;->v:I

    .line 259
    .line 260
    int-to-float v1, v1

    .line 261
    const v6, 0x3f4ccccd    # 0.8f

    .line 262
    .line 263
    .line 264
    mul-float v1, v1, v6

    .line 265
    .line 266
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    iput v1, v0, Lya/e;->w:I

    .line 271
    .line 272
    iget v1, v0, Lya/e;->v:I

    .line 273
    .line 274
    int-to-float v1, v1

    .line 275
    const v6, 0x3e4ccccd    # 0.2f

    .line 276
    .line 277
    .line 278
    mul-float v1, v1, v6

    .line 279
    .line 280
    const/high16 v6, 0x40000000    # 2.0f

    .line 281
    .line 282
    div-float/2addr v1, v6

    .line 283
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    iput v1, v0, Lya/e;->x:I

    .line 288
    .line 289
    iget v1, v0, Lya/e;->v:I

    .line 290
    .line 291
    const/4 v6, 0x2

    .line 292
    div-int/2addr v1, v6

    .line 293
    iput v1, v0, Lya/e;->y:I

    .line 294
    .line 295
    new-instance v1, Landroid/widget/ImageView;

    .line 296
    .line 297
    iget-object v7, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 298
    .line 299
    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 300
    .line 301
    .line 302
    iput-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 303
    .line 304
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 305
    .line 306
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 307
    .line 308
    .line 309
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 310
    .line 311
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 312
    .line 313
    .line 314
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 315
    .line 316
    const-string v7, "ico"

    .line 317
    .line 318
    invoke-virtual {v1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    const/4 v7, -0x1

    .line 327
    if-ne v1, v7, :cond_8

    .line 328
    .line 329
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 330
    .line 331
    new-instance v7, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .line 335
    .line 336
    iget-object v8, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 337
    .line 338
    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v8, "/FloatButtonIco"

    .line 346
    .line 347
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 359
    .line 360
    .line 361
    goto :goto_4

    .line 362
    :cond_8
    const v7, 0x7f080128

    .line 363
    .line 364
    .line 365
    if-ne v1, v2, :cond_9

    .line 366
    .line 367
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 368
    .line 369
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    .line 371
    .line 372
    goto :goto_4

    .line 373
    :cond_9
    if-ne v1, v6, :cond_a

    .line 374
    .line 375
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 376
    .line 377
    const v7, 0x7f080129

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    .line 382
    .line 383
    goto :goto_4

    .line 384
    :cond_a
    const/4 v8, 0x3

    .line 385
    if-ne v1, v8, :cond_b

    .line 386
    .line 387
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 388
    .line 389
    const v7, 0x7f08012a

    .line 390
    .line 391
    .line 392
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 393
    .line 394
    .line 395
    goto :goto_4

    .line 396
    :cond_b
    const/4 v8, 0x4

    .line 397
    if-ne v1, v8, :cond_c

    .line 398
    .line 399
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 400
    .line 401
    const v7, 0x7f08012b

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 405
    .line 406
    .line 407
    goto :goto_4

    .line 408
    :cond_c
    const/4 v8, 0x5

    .line 409
    if-ne v1, v8, :cond_d

    .line 410
    .line 411
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 412
    .line 413
    const v7, 0x7f0802bd

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 417
    .line 418
    .line 419
    goto :goto_4

    .line 420
    :cond_d
    :try_start_0
    iget-object v8, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 421
    .line 422
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .line 424
    .line 425
    goto :goto_4

    .line 426
    :catch_0
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 427
    .line 428
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    .line 430
    .line 431
    :goto_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 432
    .line 433
    const/16 v7, 0x15

    .line 434
    .line 435
    if-lt v1, v7, :cond_e

    .line 436
    .line 437
    iget-object v3, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 438
    .line 439
    const/4 v7, 0x0

    .line 440
    invoke-virtual {v3, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 441
    .line 442
    .line 443
    goto :goto_5

    .line 444
    :cond_e
    iget-object v7, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 445
    .line 446
    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 447
    .line 448
    .line 449
    :goto_5
    iget-object v3, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 450
    .line 451
    iget v7, v0, Lya/e;->u:I

    .line 452
    .line 453
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 454
    .line 455
    .line 456
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 457
    .line 458
    iget-object v7, v0, Lya/e;->d:Lz7/s;

    .line 459
    .line 460
    invoke-virtual {v7, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    invoke-virtual {v7}, Lz7/p;->e()I

    .line 465
    .line 466
    .line 467
    move-result v9

    .line 468
    iget-object v7, v0, Lya/e;->d:Lz7/s;

    .line 469
    .line 470
    invoke-virtual {v7, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 471
    .line 472
    .line 473
    move-result-object v5

    .line 474
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 475
    .line 476
    .line 477
    move-result v10

    .line 478
    const/16 v5, 0x7d2

    .line 479
    .line 480
    const/16 v7, 0x7f0

    .line 481
    .line 482
    const/16 v14, 0x16

    .line 483
    .line 484
    if-lt v1, v14, :cond_f

    .line 485
    .line 486
    const/16 v11, 0x7f0

    .line 487
    .line 488
    goto :goto_6

    .line 489
    :cond_f
    const/16 v11, 0x7d2

    .line 490
    .line 491
    :goto_6
    const/16 v12, 0x328

    .line 492
    .line 493
    const/4 v13, -0x3

    .line 494
    move-object v8, v3

    .line 495
    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 496
    .line 497
    .line 498
    iput-object v3, v0, Lya/e;->j:Landroid/view/WindowManager$LayoutParams;

    .line 499
    .line 500
    const/16 v8, 0x1c

    .line 501
    .line 502
    if-lt v1, v8, :cond_10

    .line 503
    .line 504
    invoke-static {v3}, Landroidx/emoji2/text/b;->x(Landroid/view/WindowManager$LayoutParams;)V

    .line 505
    .line 506
    .line 507
    :cond_10
    iget-object v3, v0, Lya/e;->j:Landroid/view/WindowManager$LayoutParams;

    .line 508
    .line 509
    const v9, 0x800033

    .line 510
    .line 511
    .line 512
    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 513
    .line 514
    iget-object v9, v0, Lya/e;->b:Landroid/content/SharedPreferences;

    .line 515
    .line 516
    iget-object v10, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 517
    .line 518
    iget-object v10, v10, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 519
    .line 520
    iget-object v10, v10, Ly3/a;->e:Ljava/lang/Object;

    .line 521
    .line 522
    check-cast v10, Landroid/graphics/Point;

    .line 523
    .line 524
    iget v10, v10, Landroid/graphics/Point;->x:I

    .line 525
    .line 526
    div-int/2addr v10, v6

    .line 527
    iget v11, v0, Lya/e;->y:I

    .line 528
    .line 529
    sub-int/2addr v10, v11

    .line 530
    const-string v11, "floatButton_x"

    .line 531
    .line 532
    invoke-interface {v9, v11, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 533
    .line 534
    .line 535
    move-result v9

    .line 536
    iget-object v10, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 537
    .line 538
    iget-object v10, v10, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 539
    .line 540
    iget-object v11, v10, Ly3/a;->d:Ljava/lang/Object;

    .line 541
    .line 542
    check-cast v11, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 543
    .line 544
    iget v11, v11, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 545
    .line 546
    sub-int/2addr v9, v11

    .line 547
    iput v9, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 548
    .line 549
    iget-object v3, v0, Lya/e;->j:Landroid/view/WindowManager$LayoutParams;

    .line 550
    .line 551
    iget-object v9, v0, Lya/e;->b:Landroid/content/SharedPreferences;

    .line 552
    .line 553
    iget-object v10, v10, Ly3/a;->e:Ljava/lang/Object;

    .line 554
    .line 555
    check-cast v10, Landroid/graphics/Point;

    .line 556
    .line 557
    iget v10, v10, Landroid/graphics/Point;->y:I

    .line 558
    .line 559
    div-int/2addr v10, v6

    .line 560
    iget v6, v0, Lya/e;->y:I

    .line 561
    .line 562
    sub-int/2addr v10, v6

    .line 563
    const-string v6, "floatButton_y"

    .line 564
    .line 565
    invoke-interface {v9, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 566
    .line 567
    .line 568
    move-result v6

    .line 569
    iget-object v9, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 570
    .line 571
    iget-object v9, v9, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 572
    .line 573
    iget-object v9, v9, Ly3/a;->d:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast v9, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 576
    .line 577
    iget v9, v9, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->top:I

    .line 578
    .line 579
    sub-int/2addr v6, v9

    .line 580
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 581
    .line 582
    new-instance v3, Landroid/view/View;

    .line 583
    .line 584
    iget-object v6, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 585
    .line 586
    invoke-direct {v3, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 587
    .line 588
    .line 589
    iput-object v3, v0, Lya/e;->h:Landroid/view/View;

    .line 590
    .line 591
    invoke-virtual {v3, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 592
    .line 593
    .line 594
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 595
    .line 596
    iget-object v3, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 597
    .line 598
    iget-object v3, v3, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 599
    .line 600
    iget-object v3, v3, Ly3/a;->e:Ljava/lang/Object;

    .line 601
    .line 602
    check-cast v3, Landroid/graphics/Point;

    .line 603
    .line 604
    iget v6, v3, Landroid/graphics/Point;->x:I

    .line 605
    .line 606
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 607
    .line 608
    if-lt v1, v14, :cond_11

    .line 609
    .line 610
    const/16 v18, 0x7f0

    .line 611
    .line 612
    goto :goto_7

    .line 613
    :cond_11
    const/16 v18, 0x7d2

    .line 614
    .line 615
    :goto_7
    const v19, 0x40338

    .line 616
    .line 617
    .line 618
    const/16 v20, -0x3

    .line 619
    .line 620
    move-object v15, v2

    .line 621
    move/from16 v16, v6

    .line 622
    .line 623
    move/from16 v17, v3

    .line 624
    .line 625
    invoke-direct/range {v15 .. v20}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 626
    .line 627
    .line 628
    iput-object v2, v0, Lya/e;->k:Landroid/view/WindowManager$LayoutParams;

    .line 629
    .line 630
    if-lt v1, v8, :cond_12

    .line 631
    .line 632
    invoke-static {v2}, Landroidx/emoji2/text/b;->x(Landroid/view/WindowManager$LayoutParams;)V

    .line 633
    .line 634
    .line 635
    :cond_12
    iget-object v1, v0, Lya/e;->k:Landroid/view/WindowManager$LayoutParams;

    .line 636
    .line 637
    iget-object v2, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 638
    .line 639
    iget-object v2, v2, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 640
    .line 641
    iget-object v2, v2, Ly3/a;->d:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast v2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 644
    .line 645
    iget v3, v2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 646
    .line 647
    neg-int v3, v3

    .line 648
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 649
    .line 650
    iget v2, v2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->top:I

    .line 651
    .line 652
    neg-int v2, v2

    .line 653
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 654
    .line 655
    iget-object v1, v0, Lya/e;->h:Landroid/view/View;

    .line 656
    .line 657
    new-instance v2, Lya/c;

    .line 658
    .line 659
    const/4 v3, 0x0

    .line 660
    invoke-direct {v2, v0, v3}, Lya/c;-><init>(Lya/e;I)V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 664
    .line 665
    .line 666
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 667
    .line 668
    new-instance v2, Lya/c;

    .line 669
    .line 670
    const/4 v3, 0x1

    .line 671
    invoke-direct {v2, v0, v3}, Lya/c;-><init>(Lya/e;I)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 675
    .line 676
    .line 677
    :try_start_1
    iget-object v1, v0, Lya/e;->g:Landroid/view/WindowManager;

    .line 678
    .line 679
    iget-object v2, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 680
    .line 681
    iget-object v3, v0, Lya/e;->j:Landroid/view/WindowManager$LayoutParams;

    .line 682
    .line 683
    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 684
    .line 685
    .line 686
    iget-boolean v1, v0, Lya/e;->z:Z

    .line 687
    .line 688
    if-eqz v1, :cond_13

    .line 689
    .line 690
    iget-object v1, v0, Lya/e;->g:Landroid/view/WindowManager;

    .line 691
    .line 692
    iget-object v2, v0, Lya/e;->h:Landroid/view/View;

    .line 693
    .line 694
    iget-object v3, v0, Lya/e;->k:Landroid/view/WindowManager$LayoutParams;

    .line 695
    .line 696
    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    .line 698
    .line 699
    iget-object v1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 700
    .line 701
    iget-object v1, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 702
    .line 703
    iget-object v2, v0, Lya/e;->C:Lya/d;

    .line 704
    .line 705
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 706
    .line 707
    .line 708
    iget-object v1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 709
    .line 710
    iget-object v1, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 711
    .line 712
    int-to-long v3, v4

    .line 713
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 714
    .line 715
    .line 716
    :catch_1
    :cond_13
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lya/e;->z:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    iget-object v1, p0, Lya/e;->C:Lya/d;

    .line 11
    .line 12
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lya/e;->i:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lya/e;->i:Landroid/widget/ImageView;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lya/e;->i:Landroid/widget/ImageView;

    .line 32
    .line 33
    iget v2, p0, Lya/e;->u:I

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 41
    .line 42
    const v2, 0xea60

    .line 43
    .line 44
    .line 45
    int-to-long v2, v2

    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lq4/a;->n(Landroid/content/Context;)Lz7/s;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lya/e;->d:Lz7/s;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, Lya/e;->e()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lya/e;->d:Lz7/s;

    .line 19
    .line 20
    const-string v1, "isOpen"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    invoke-virtual {p0}, Lya/e;->a()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lya/e;->i:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 8
    .line 9
    iget-object v1, p0, Lya/e;->H:Lya/d;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 17
    .line 18
    iget-object v1, p0, Lya/e;->C:Lya/d;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 26
    .line 27
    iget-object v1, p0, Lya/e;->D:Lya/d;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 35
    .line 36
    iget-object v1, p0, Lya/e;->E:Lya/d;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 44
    .line 45
    iget-object v1, p0, Lya/e;->F:Lya/d;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 51
    :try_start_1
    iget-object v1, p0, Lya/e;->h:Landroid/view/View;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    iget-object v2, p0, Lya/e;->g:Landroid/view/WindowManager;

    .line 56
    .line 57
    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lya/e;->h:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    .line 62
    :catch_1
    :cond_1
    :try_start_2
    iget-object v1, p0, Lya/e;->i:Landroid/widget/ImageView;

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    iget-object v2, p0, Lya/e;->g:Landroid/view/WindowManager;

    .line 67
    .line 68
    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lya/e;->i:Landroid/widget/ImageView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 72
    .line 73
    :catch_2
    :cond_2
    return-void
.end method

.method public final f(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lya/e;->i:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-gtz p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    :try_start_0
    iget-object v1, p0, Lya/e;->j:Landroid/view/WindowManager$LayoutParams;

    .line 9
    .line 10
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 11
    .line 12
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 13
    .line 14
    iget v2, p0, Lya/e;->v:I

    .line 15
    .line 16
    if-ne p1, v2, :cond_1

    .line 17
    .line 18
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 19
    .line 20
    iget v2, p0, Lya/e;->x:I

    .line 21
    .line 22
    sub-int/2addr p1, v2

    .line 23
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 24
    .line 25
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 26
    .line 27
    sub-int/2addr p1, v2

    .line 28
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 32
    .line 33
    iget v2, p0, Lya/e;->x:I

    .line 34
    .line 35
    add-int/2addr p1, v2

    .line 36
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 37
    .line 38
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 39
    .line 40
    add-int/2addr p1, v2

    .line 41
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 42
    .line 43
    :goto_0
    iget-object p1, p0, Lya/e;->g:Landroid/view/WindowManager;

    .line 44
    .line 45
    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :catch_0
    :cond_2
    :goto_1
    return-void
.end method
