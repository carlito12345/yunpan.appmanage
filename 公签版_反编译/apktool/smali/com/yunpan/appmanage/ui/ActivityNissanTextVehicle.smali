.class public Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic a1:I


# instance fields
.field public C:Lcom/hsae/autosdk/vehicle/IVehicle;

.field public D:Landroid/widget/TextView;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/TextView;

.field public G:Landroid/widget/TextView;

.field public H:Landroid/widget/TextView;

.field public I:Landroid/widget/TextView;

.field public K:Landroid/widget/TextView;

.field public L:Landroid/widget/TextView;

.field public M:Landroid/widget/TextView;

.field public M0:Landroid/widget/TextView;

.field public N:Landroid/widget/TextView;

.field public N0:Landroid/widget/TextView;

.field public O:Landroid/widget/TextView;

.field public O0:Landroid/widget/TextView;

.field public P:Landroid/widget/TextView;

.field public P0:Landroid/widget/TextView;

.field public Q0:Landroid/widget/TextView;

.field public R:Landroid/widget/TextView;

.field public R0:Landroid/widget/TextView;

.field public S:Landroid/widget/TextView;

.field public S0:Landroid/widget/TextView;

.field public T:Landroid/widget/TextView;

.field public T0:Landroid/widget/TextView;

.field public U0:Landroid/widget/TextView;

.field public V:Landroid/widget/TextView;

.field public V0:Landroid/widget/TextView;

.field public W0:Landroid/widget/TextView;

.field public X:Landroid/widget/TextView;

.field public X0:Landroid/widget/TextView;

.field public Y:Landroid/widget/TextView;

.field public Y0:Landroid/widget/TextView;

.field public Z:Landroid/widget/TextView;

.field public final Z0:Lua/f5;

.field public h0:Landroid/widget/TextView;

.field public t0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lua/f5;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lua/f5;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->Z0:Lua/f5;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->C:Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->Z0:Lua/f5;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/hsae/autosdk/vehicle/IVehicle;->unregisterVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0049

    return v0
.end method

.method public final u()V
    .locals 7

    .line 1
    const v0, 0x7f0b03ad

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lua/g1;

    .line 9
    .line 10
    const/16 v2, 0x17

    .line 11
    .line 12
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0b05c1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/widget/TextView;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->D:Landroid/widget/TextView;

    .line 28
    .line 29
    const v0, 0x7f0b05c2

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->E:Landroid/widget/TextView;

    .line 39
    .line 40
    const v0, 0x7f0b05cd

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->F:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0b05d8

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->G:Landroid/widget/TextView;

    .line 61
    .line 62
    const v0, 0x7f0b05e3

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->H:Landroid/widget/TextView;

    .line 72
    .line 73
    const v0, 0x7f0b05e4

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/widget/TextView;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->I:Landroid/widget/TextView;

    .line 83
    .line 84
    const v0, 0x7f0b05e5

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroid/widget/TextView;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->K:Landroid/widget/TextView;

    .line 94
    .line 95
    const v0, 0x7f0b05e7

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/widget/TextView;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->L:Landroid/widget/TextView;

    .line 105
    .line 106
    const v0, 0x7f0b05e8

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Landroid/widget/TextView;

    .line 114
    .line 115
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->M:Landroid/widget/TextView;

    .line 116
    .line 117
    const v0, 0x7f0b05e9

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Landroid/widget/TextView;

    .line 125
    .line 126
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->N:Landroid/widget/TextView;

    .line 127
    .line 128
    const v0, 0x7f0b05c3

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroid/widget/TextView;

    .line 136
    .line 137
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->O:Landroid/widget/TextView;

    .line 138
    .line 139
    const v0, 0x7f0b05c4

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Landroid/widget/TextView;

    .line 147
    .line 148
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->P:Landroid/widget/TextView;

    .line 149
    .line 150
    const v0, 0x7f0b05c5

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Landroid/widget/TextView;

    .line 158
    .line 159
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->R:Landroid/widget/TextView;

    .line 160
    .line 161
    const v0, 0x7f0b05c6

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Landroid/widget/TextView;

    .line 169
    .line 170
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->S:Landroid/widget/TextView;

    .line 171
    .line 172
    const v0, 0x7f0b05c7

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Landroid/widget/TextView;

    .line 180
    .line 181
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->T:Landroid/widget/TextView;

    .line 182
    .line 183
    const v0, 0x7f0b05c8

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Landroid/widget/TextView;

    .line 191
    .line 192
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->V:Landroid/widget/TextView;

    .line 193
    .line 194
    const v0, 0x7f0b05c9

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Landroid/widget/TextView;

    .line 202
    .line 203
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->X:Landroid/widget/TextView;

    .line 204
    .line 205
    const v0, 0x7f0b05ca

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Landroid/widget/TextView;

    .line 213
    .line 214
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->Y:Landroid/widget/TextView;

    .line 215
    .line 216
    const v0, 0x7f0b05cb

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Landroid/widget/TextView;

    .line 224
    .line 225
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->Z:Landroid/widget/TextView;

    .line 226
    .line 227
    const v0, 0x7f0b05cc

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Landroid/widget/TextView;

    .line 235
    .line 236
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->h0:Landroid/widget/TextView;

    .line 237
    .line 238
    const v0, 0x7f0b05ce

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    check-cast v0, Landroid/widget/TextView;

    .line 246
    .line 247
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->t0:Landroid/widget/TextView;

    .line 248
    .line 249
    const v0, 0x7f0b05cf

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Landroid/widget/TextView;

    .line 257
    .line 258
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->M0:Landroid/widget/TextView;

    .line 259
    .line 260
    const v0, 0x7f0b05d0

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    check-cast v0, Landroid/widget/TextView;

    .line 268
    .line 269
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->N0:Landroid/widget/TextView;

    .line 270
    .line 271
    const v0, 0x7f0b05d1

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Landroid/widget/TextView;

    .line 279
    .line 280
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->O0:Landroid/widget/TextView;

    .line 281
    .line 282
    const v0, 0x7f0b05d2

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    check-cast v0, Landroid/widget/TextView;

    .line 290
    .line 291
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->P0:Landroid/widget/TextView;

    .line 292
    .line 293
    const v0, 0x7f0b05d3

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Landroid/widget/TextView;

    .line 301
    .line 302
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->Q0:Landroid/widget/TextView;

    .line 303
    .line 304
    const v0, 0x7f0b05d4

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    check-cast v0, Landroid/widget/TextView;

    .line 312
    .line 313
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->R0:Landroid/widget/TextView;

    .line 314
    .line 315
    const v0, 0x7f0b05d5

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    check-cast v0, Landroid/widget/TextView;

    .line 323
    .line 324
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->S0:Landroid/widget/TextView;

    .line 325
    .line 326
    const v0, 0x7f0b05d6

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    check-cast v0, Landroid/widget/TextView;

    .line 334
    .line 335
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->T0:Landroid/widget/TextView;

    .line 336
    .line 337
    const v0, 0x7f0b05d7

    .line 338
    .line 339
    .line 340
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    check-cast v0, Landroid/widget/TextView;

    .line 345
    .line 346
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->U0:Landroid/widget/TextView;

    .line 347
    .line 348
    const v0, 0x7f0b05d9

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    check-cast v0, Landroid/widget/TextView;

    .line 356
    .line 357
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->V0:Landroid/widget/TextView;

    .line 358
    .line 359
    const v0, 0x7f0b05da

    .line 360
    .line 361
    .line 362
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    check-cast v0, Landroid/widget/TextView;

    .line 367
    .line 368
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->W0:Landroid/widget/TextView;

    .line 369
    .line 370
    const v0, 0x7f0b05db

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    check-cast v0, Landroid/widget/TextView;

    .line 378
    .line 379
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->X0:Landroid/widget/TextView;

    .line 380
    .line 381
    const v0, 0x7f0b05dc

    .line 382
    .line 383
    .line 384
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    check-cast v0, Landroid/widget/TextView;

    .line 389
    .line 390
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->Y0:Landroid/widget/TextView;

    .line 391
    .line 392
    const-string v0, "IGN: "

    .line 393
    .line 394
    const-string v1, "ACC: "

    .line 395
    .line 396
    const-string v2, "\u8f66\u8f86\u670d\u52a1\u8fde\u63a5: "

    .line 397
    .line 398
    :try_start_0
    const-string v3, "com.hsae.auto.IBINDER_VEHICLE"

    .line 399
    .line 400
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    if-nez v3, :cond_0

    .line 405
    .line 406
    const-string v0, "\u6c7d\u8f66\u670d\u52a1\u672a\u542f\u52a8"

    .line 407
    .line 408
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_2

    .line 412
    .line 413
    :catch_0
    move-exception v0

    .line 414
    goto :goto_1

    .line 415
    :cond_0
    invoke-static {v3}, Lcom/hsae/autosdk/vehicle/IVehicle$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    iput-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->C:Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 420
    .line 421
    if-nez v3, :cond_1

    .line 422
    .line 423
    const-string v0, "\u6c7d\u8f66\u670d\u52a1\u56de\u8c03\u83b7\u53d6\u5931\u8d25"

    .line 424
    .line 425
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 426
    .line 427
    .line 428
    goto :goto_2

    .line 429
    :cond_1
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 430
    .line 431
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    const-string v4, "vehicle_monitor"

    .line 436
    .line 437
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->C:Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 438
    .line 439
    iget-object v6, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->Z0:Lua/f5;

    .line 440
    .line 441
    invoke-interface {v5, v6, v3, v4}, Lcom/hsae/autosdk/vehicle/IVehicle;->registerVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;Ljava/lang/String;Ljava/lang/String;)Z

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    if-eqz v3, :cond_2

    .line 446
    .line 447
    const-string v3, "\u6210\u529f"

    .line 448
    .line 449
    goto :goto_0

    .line 450
    :cond_2
    const-string v3, "\u5931\u8d25"

    .line 451
    .line 452
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-static {v2}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 457
    .line 458
    .line 459
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->E:Landroid/widget/TextView;

    .line 460
    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->C:Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 467
    .line 468
    invoke-interface {v1}, Lcom/hsae/autosdk/vehicle/IVehicle;->isAccOn()Z

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    .line 481
    .line 482
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->F:Landroid/widget/TextView;

    .line 483
    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    .line 485
    .line 486
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextVehicle;->C:Lcom/hsae/autosdk/vehicle/IVehicle;

    .line 490
    .line 491
    invoke-interface {v0}, Lcom/hsae/autosdk/vehicle/IVehicle;->getIgnState()Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    .line 504
    .line 505
    goto :goto_2

    .line 506
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 507
    .line 508
    const-string v2, "\u542f\u52a8\u5931\u8d25: "

    .line 509
    .line 510
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-static {v1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 528
    .line 529
    .line 530
    :goto_2
    return-void
.end method
