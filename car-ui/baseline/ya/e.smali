.class public final Lya/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static I:Lya/e;


# instance fields
.field public A:Z

.field public final B:Lya/d;

.field public final C:Lya/d;

.field public final D:Lya/d;

.field public final E:Lya/d;

.field public F:I

.field public final G:Lya/d;

.field public H:Z

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

.field public x:Z

.field public y:Z

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
    iput-boolean v0, p0, Lya/e;->x:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lya/e;->y:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lya/e;->z:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lya/e;->A:Z

    .line 29
    .line 30
    new-instance v1, Lya/d;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v1, p0, v2}, Lya/d;-><init>(Lya/e;I)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lya/e;->B:Lya/d;

    .line 37
    .line 38
    new-instance v1, Lya/d;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, p0, v2}, Lya/d;-><init>(Lya/e;I)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lya/e;->C:Lya/d;

    .line 45
    .line 46
    new-instance v1, Lya/d;

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    invoke-direct {v1, p0, v2}, Lya/d;-><init>(Lya/e;I)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lya/e;->D:Lya/d;

    .line 53
    .line 54
    new-instance v1, Lya/d;

    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    invoke-direct {v1, p0, v2}, Lya/d;-><init>(Lya/e;I)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lya/e;->E:Lya/d;

    .line 61
    .line 62
    iput v0, p0, Lya/e;->F:I

    .line 63
    .line 64
    new-instance v1, Lya/d;

    .line 65
    .line 66
    const/4 v2, 0x4

    .line 67
    invoke-direct {v1, p0, v2}, Lya/d;-><init>(Lya/e;I)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lya/e;->G:Lya/d;

    .line 71
    .line 72
    iput-boolean v0, p0, Lya/e;->H:Z

    .line 73
    .line 74
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
    sget-object v1, Lya/e;->I:Lya/e;

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
    sput-object v1, Lya/e;->I:Lya/e;

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
    sget-object v1, Lya/e;->I:Lya/e;
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
    .locals 22

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
    iget-object v1, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/f;

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
    iput-boolean v1, v0, Lya/e;->x:Z

    .line 84
    .line 85
    iput-boolean v3, v0, Lya/e;->y:Z

    .line 86
    .line 87
    const v4, 0xea60

    .line 88
    .line 89
    .line 90
    if-nez v1, :cond_3

    .line 91
    .line 92
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 93
    .line 94
    const-string v5, "antiBurnScreen"

    .line 95
    .line 96
    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    iget-object v1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/f;

    .line 109
    .line 110
    iget-object v5, v0, Lya/e;->G:Lya/d;

    .line 111
    .line 112
    int-to-long v6, v4

    .line 113
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    .line 115
    .line 116
    :cond_3
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 117
    .line 118
    iget-object v1, v1, Lz7/s;->a:Lb8/n;

    .line 119
    .line 120
    const-string v5, "lock"

    .line 121
    .line 122
    invoke-virtual {v1, v5}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_4

    .line 127
    .line 128
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 129
    .line 130
    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    iput-boolean v1, v0, Lya/e;->A:Z

    .line 139
    .line 140
    :cond_4
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 141
    .line 142
    const-string v5, "3"

    .line 143
    .line 144
    invoke-virtual {v1, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-object v1, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_6

    .line 155
    .line 156
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 157
    .line 158
    const-string v5, "4"

    .line 159
    .line 160
    invoke-virtual {v1, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iget-object v1, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_6

    .line 171
    .line 172
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 173
    .line 174
    const-string v5, "5"

    .line 175
    .line 176
    invoke-virtual {v1, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iget-object v1, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_6

    .line 187
    .line 188
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 189
    .line 190
    const-string v5, "6"

    .line 191
    .line 192
    invoke-virtual {v1, v5}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    iget-object v1, v1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-nez v1, :cond_5

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_5
    const/4 v1, 0x0

    .line 206
    goto :goto_3

    .line 207
    :cond_6
    :goto_2
    const/4 v1, 0x1

    .line 208
    :goto_3
    iput-boolean v1, v0, Lya/e;->z:Z

    .line 209
    .line 210
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 211
    .line 212
    const-string v5, "trans"

    .line 213
    .line 214
    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    iput v1, v0, Lya/e;->u:I

    .line 223
    .line 224
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 225
    .line 226
    iget-object v1, v1, Lz7/s;->a:Lb8/n;

    .line 227
    .line 228
    const-string v5, "allow_move_outer_edge"

    .line 229
    .line 230
    invoke-virtual {v1, v5}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_7

    .line 235
    .line 236
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 237
    .line 238
    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v1}, Lz7/p;->b()Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    iput-boolean v1, v0, Lya/e;->H:Z

    .line 247
    .line 248
    :cond_7
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 249
    .line 250
    const-string v5, "size"

    .line 251
    .line 252
    invoke-virtual {v1, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 257
    .line 258
    .line 259
    move-result v1

    .line 260
    iput v1, v0, Lya/e;->v:I

    .line 261
    .line 262
    const/4 v6, 0x2

    .line 263
    div-int/2addr v1, v6

    .line 264
    iput v1, v0, Lya/e;->w:I

    .line 265
    .line 266
    new-instance v1, Landroid/widget/ImageView;

    .line 267
    .line 268
    iget-object v7, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 269
    .line 270
    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 271
    .line 272
    .line 273
    iput-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 274
    .line 275
    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 276
    .line 277
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 278
    .line 279
    .line 280
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 281
    .line 282
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 283
    .line 284
    .line 285
    iget-object v1, v0, Lya/e;->d:Lz7/s;

    .line 286
    .line 287
    const-string v7, "ico"

    .line 288
    .line 289
    invoke-virtual {v1, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    const/4 v7, -0x1

    .line 298
    if-ne v1, v7, :cond_8

    .line 299
    .line 300
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 301
    .line 302
    new-instance v7, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    iget-object v8, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 308
    .line 309
    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 310
    .line 311
    .line 312
    move-result-object v8

    .line 313
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v8, "/FloatButtonIco"

    .line 317
    .line 318
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 326
    .line 327
    .line 328
    move-result-object v7

    .line 329
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 330
    .line 331
    .line 332
    goto :goto_4

    .line 333
    :cond_8
    const v7, 0x7f080128

    .line 334
    .line 335
    .line 336
    if-ne v1, v2, :cond_9

    .line 337
    .line 338
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 339
    .line 340
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 341
    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_9
    if-ne v1, v6, :cond_a

    .line 345
    .line 346
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 347
    .line 348
    const v7, 0x7f080129

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_a
    const/4 v8, 0x3

    .line 356
    if-ne v1, v8, :cond_b

    .line 357
    .line 358
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 359
    .line 360
    const v7, 0x7f08012a

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 364
    .line 365
    .line 366
    goto :goto_4

    .line 367
    :cond_b
    const/4 v8, 0x4

    .line 368
    if-ne v1, v8, :cond_c

    .line 369
    .line 370
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 371
    .line 372
    const v7, 0x7f08012b

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    .line 377
    .line 378
    goto :goto_4

    .line 379
    :cond_c
    const/4 v8, 0x5

    .line 380
    if-ne v1, v8, :cond_d

    .line 381
    .line 382
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 383
    .line 384
    const v7, 0x7f0802c0

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    .line 389
    .line 390
    goto :goto_4

    .line 391
    :cond_d
    :try_start_0
    iget-object v8, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 392
    .line 393
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .line 395
    .line 396
    goto :goto_4

    .line 397
    :catch_0
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 398
    .line 399
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 400
    .line 401
    .line 402
    :goto_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 403
    .line 404
    const/16 v7, 0x15

    .line 405
    .line 406
    if-lt v1, v7, :cond_e

    .line 407
    .line 408
    iget-object v7, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 409
    .line 410
    const/4 v8, 0x0

    .line 411
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 412
    .line 413
    .line 414
    goto :goto_5

    .line 415
    :cond_e
    iget-object v7, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 416
    .line 417
    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 418
    .line 419
    .line 420
    :goto_5
    iget-object v7, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 421
    .line 422
    iget v8, v0, Lya/e;->u:I

    .line 423
    .line 424
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 425
    .line 426
    .line 427
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 428
    .line 429
    iget-object v8, v0, Lya/e;->d:Lz7/s;

    .line 430
    .line 431
    invoke-virtual {v8, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 432
    .line 433
    .line 434
    move-result-object v8

    .line 435
    invoke-virtual {v8}, Lz7/p;->e()I

    .line 436
    .line 437
    .line 438
    move-result v10

    .line 439
    iget-object v8, v0, Lya/e;->d:Lz7/s;

    .line 440
    .line 441
    invoke-virtual {v8, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    invoke-virtual {v5}, Lz7/p;->e()I

    .line 446
    .line 447
    .line 448
    move-result v11

    .line 449
    const/16 v5, 0x7d2

    .line 450
    .line 451
    const/16 v8, 0x7f0

    .line 452
    .line 453
    const/16 v15, 0x16

    .line 454
    .line 455
    if-lt v1, v15, :cond_f

    .line 456
    .line 457
    const/16 v12, 0x7f0

    .line 458
    .line 459
    goto :goto_6

    .line 460
    :cond_f
    const/16 v12, 0x7d2

    .line 461
    .line 462
    :goto_6
    const/16 v13, 0x328

    .line 463
    .line 464
    const/4 v14, -0x3

    .line 465
    move-object v9, v7

    .line 466
    invoke-direct/range {v9 .. v14}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 467
    .line 468
    .line 469
    iput-object v7, v0, Lya/e;->j:Landroid/view/WindowManager$LayoutParams;

    .line 470
    .line 471
    const/16 v9, 0x1c

    .line 472
    .line 473
    if-lt v1, v9, :cond_10

    .line 474
    .line 475
    invoke-static {v7}, Landroidx/emoji2/text/b;->v(Landroid/view/WindowManager$LayoutParams;)V

    .line 476
    .line 477
    .line 478
    :cond_10
    iget-object v7, v0, Lya/e;->j:Landroid/view/WindowManager$LayoutParams;

    .line 479
    .line 480
    const v9, 0x800033

    .line 481
    .line 482
    .line 483
    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 484
    .line 485
    iget-object v10, v0, Lya/e;->b:Landroid/content/SharedPreferences;

    .line 486
    .line 487
    iget-object v11, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 488
    .line 489
    iget-object v11, v11, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 490
    .line 491
    iget-object v11, v11, Ly3/a;->e:Ljava/lang/Object;

    .line 492
    .line 493
    check-cast v11, Landroid/graphics/Point;

    .line 494
    .line 495
    iget v11, v11, Landroid/graphics/Point;->x:I

    .line 496
    .line 497
    div-int/2addr v11, v6

    .line 498
    iget v12, v0, Lya/e;->w:I

    .line 499
    .line 500
    sub-int/2addr v11, v12

    .line 501
    const-string v12, "floatButton_x"

    .line 502
    .line 503
    invoke-interface {v10, v12, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 504
    .line 505
    .line 506
    move-result v10

    .line 507
    iget-object v11, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 508
    .line 509
    iget-object v11, v11, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 510
    .line 511
    iget-object v12, v11, Ly3/a;->d:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast v12, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 514
    .line 515
    iget v12, v12, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 516
    .line 517
    sub-int/2addr v10, v12

    .line 518
    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 519
    .line 520
    iget-object v7, v0, Lya/e;->j:Landroid/view/WindowManager$LayoutParams;

    .line 521
    .line 522
    iget-object v10, v0, Lya/e;->b:Landroid/content/SharedPreferences;

    .line 523
    .line 524
    iget-object v11, v11, Ly3/a;->e:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v11, Landroid/graphics/Point;

    .line 527
    .line 528
    iget v11, v11, Landroid/graphics/Point;->y:I

    .line 529
    .line 530
    div-int/2addr v11, v6

    .line 531
    iget v6, v0, Lya/e;->w:I

    .line 532
    .line 533
    sub-int/2addr v11, v6

    .line 534
    const-string v6, "floatButton_y"

    .line 535
    .line 536
    invoke-interface {v10, v6, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 537
    .line 538
    .line 539
    move-result v6

    .line 540
    iget-object v10, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 541
    .line 542
    iget-object v10, v10, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 543
    .line 544
    iget-object v10, v10, Ly3/a;->d:Ljava/lang/Object;

    .line 545
    .line 546
    check-cast v10, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 547
    .line 548
    iget v10, v10, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->top:I

    .line 549
    .line 550
    sub-int/2addr v6, v10

    .line 551
    iput v6, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 552
    .line 553
    new-instance v6, Landroid/view/View;

    .line 554
    .line 555
    iget-object v7, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 556
    .line 557
    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 558
    .line 559
    .line 560
    iput-object v6, v0, Lya/e;->h:Landroid/view/View;

    .line 561
    .line 562
    invoke-virtual {v6, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 563
    .line 564
    .line 565
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 566
    .line 567
    if-lt v1, v15, :cond_11

    .line 568
    .line 569
    const/16 v19, 0x7f0

    .line 570
    .line 571
    goto :goto_7

    .line 572
    :cond_11
    const/16 v19, 0x7d2

    .line 573
    .line 574
    :goto_7
    const/16 v17, 0x1

    .line 575
    .line 576
    const/16 v18, 0x1

    .line 577
    .line 578
    const v20, 0x40138

    .line 579
    .line 580
    .line 581
    const/16 v21, -0x3

    .line 582
    .line 583
    move-object/from16 v16, v2

    .line 584
    .line 585
    invoke-direct/range {v16 .. v21}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 586
    .line 587
    .line 588
    iput-object v2, v0, Lya/e;->k:Landroid/view/WindowManager$LayoutParams;

    .line 589
    .line 590
    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 591
    .line 592
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 593
    .line 594
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 595
    .line 596
    iget-object v1, v0, Lya/e;->h:Landroid/view/View;

    .line 597
    .line 598
    new-instance v2, Lya/c;

    .line 599
    .line 600
    const/4 v3, 0x0

    .line 601
    invoke-direct {v2, v0, v3}, Lya/c;-><init>(Lya/e;I)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 605
    .line 606
    .line 607
    iget-object v1, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 608
    .line 609
    new-instance v2, Lya/c;

    .line 610
    .line 611
    const/4 v3, 0x1

    .line 612
    invoke-direct {v2, v0, v3}, Lya/c;-><init>(Lya/e;I)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 616
    .line 617
    .line 618
    :try_start_1
    iget-object v1, v0, Lya/e;->g:Landroid/view/WindowManager;

    .line 619
    .line 620
    iget-object v2, v0, Lya/e;->i:Landroid/widget/ImageView;

    .line 621
    .line 622
    iget-object v3, v0, Lya/e;->j:Landroid/view/WindowManager$LayoutParams;

    .line 623
    .line 624
    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    .line 626
    .line 627
    iget-boolean v1, v0, Lya/e;->x:Z

    .line 628
    .line 629
    if-eqz v1, :cond_12

    .line 630
    .line 631
    iget-object v1, v0, Lya/e;->g:Landroid/view/WindowManager;

    .line 632
    .line 633
    iget-object v2, v0, Lya/e;->h:Landroid/view/View;

    .line 634
    .line 635
    iget-object v3, v0, Lya/e;->k:Landroid/view/WindowManager$LayoutParams;

    .line 636
    .line 637
    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    .line 639
    .line 640
    iget-object v1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 641
    .line 642
    iget-object v1, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 643
    .line 644
    iget-object v2, v0, Lya/e;->B:Lya/d;

    .line 645
    .line 646
    :try_start_2
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 647
    .line 648
    .line 649
    iget-object v1, v0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 650
    .line 651
    iget-object v1, v1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/f;

    .line 652
    .line 653
    int-to-long v3, v4

    .line 654
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 655
    .line 656
    .line 657
    :catch_1
    :cond_12
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lya/e;->x:Z

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
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    iget-object v1, p0, Lya/e;->B:Lya/d;

    .line 11
    .line 12
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lya/e;->y:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lya/e;->y:Z

    .line 21
    .line 22
    iget-object v2, p0, Lya/e;->i:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lya/e;->i:Landroid/widget/ImageView;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lya/e;->i:Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageAlpha()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget v2, p0, Lya/e;->u:I

    .line 42
    .line 43
    if-eq v0, v2, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lya/e;->i:Landroid/widget/ImageView;

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/f;

    .line 53
    .line 54
    const v2, 0xea60

    .line 55
    .line 56
    .line 57
    int-to-long v2, v2

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    .line 60
    .line 61
    :catch_0
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lya/e;->i:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const p1, 0x3f4ccccd    # 0.8f

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    cmpl-float v0, v0, p1

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lya/e;->i:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lya/e;->i:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    :catch_0
    :cond_2
    return-void
.end method

.method public final e()V
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
    invoke-static {v0}, Ld/b;->w(Landroid/content/Context;)Lz7/s;

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
    invoke-virtual {p0}, Lya/e;->f()V

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

.method public final f()V
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
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/f;

    .line 8
    .line 9
    iget-object v1, p0, Lya/e;->G:Lya/d;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/f;

    .line 17
    .line 18
    iget-object v1, p0, Lya/e;->B:Lya/d;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/f;

    .line 26
    .line 27
    iget-object v1, p0, Lya/e;->C:Lya/d;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/f;

    .line 35
    .line 36
    iget-object v1, p0, Lya/e;->D:Lya/d;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lya/e;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/f;

    .line 44
    .line 45
    iget-object v1, p0, Lya/e;->E:Lya/d;

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
