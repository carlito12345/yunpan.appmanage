.class public Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic S0:I


# instance fields
.field public C:Lcom/hsae/autosdk/reverse/Reverse;

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

.field public final P0:Lua/a5;

.field public final Q0:Lua/d5;

.field public R:Landroid/widget/TextView;

.field public final R0:Lua/e5;

.field public S:Landroid/widget/TextView;

.field public T:Landroid/widget/TextView;

.field public V:Landroid/widget/TextView;

.field public X:Landroid/widget/TextView;

.field public Y:Landroid/widget/TextView;

.field public Z:Landroid/widget/TextView;

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
    new-instance v0, Lua/a5;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lua/a5;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->P0:Lua/a5;

    .line 10
    .line 11
    new-instance v0, Lua/d5;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lua/d5;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->Q0:Lua/d5;

    .line 17
    .line 18
    new-instance v0, Lua/e5;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lua/e5;-><init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->R0:Lua/e5;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->C:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->P0:Lua/a5;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/hsae/autosdk/reverse/Reverse;->unRegisterStateListener(Lcom/hsae/autosdk/reverse/Reverse$ReverseStateListener;)V
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
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->C:Lcom/hsae/autosdk/reverse/Reverse;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->Q0:Lua/d5;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/hsae/autosdk/reverse/Reverse;->unRegisterAvmListener(Lcom/hsae/autosdk/reverse/Reverse$AvmListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catch_1
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->C:Lcom/hsae/autosdk/reverse/Reverse;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->R0:Lua/e5;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/hsae/autosdk/reverse/Reverse;->unRegisterListener(Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :catch_2
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_2
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0049

    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    const-string v0, "getReverseState\uff1a"

    .line 2
    .line 3
    const v1, 0x7f0b03ad

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lua/g1;

    .line 11
    .line 12
    const/16 v3, 0x16

    .line 13
    .line 14
    invoke-direct {v2, p0, v3}, Lua/g1;-><init>(Lda/g;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0b05c1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/widget/TextView;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->D:Landroid/widget/TextView;

    .line 30
    .line 31
    const v1, 0x7f0b05c2

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->E:Landroid/widget/TextView;

    .line 41
    .line 42
    const v1, 0x7f0b05cd

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->F:Landroid/widget/TextView;

    .line 52
    .line 53
    const v1, 0x7f0b05d8

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->G:Landroid/widget/TextView;

    .line 63
    .line 64
    const v1, 0x7f0b05e3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroid/widget/TextView;

    .line 72
    .line 73
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->H:Landroid/widget/TextView;

    .line 74
    .line 75
    const v1, 0x7f0b05e4

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/widget/TextView;

    .line 83
    .line 84
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->I:Landroid/widget/TextView;

    .line 85
    .line 86
    const v1, 0x7f0b05e5

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->K:Landroid/widget/TextView;

    .line 96
    .line 97
    const v1, 0x7f0b05e7

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Landroid/widget/TextView;

    .line 105
    .line 106
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->L:Landroid/widget/TextView;

    .line 107
    .line 108
    const v1, 0x7f0b05e8

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Landroid/widget/TextView;

    .line 116
    .line 117
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->M:Landroid/widget/TextView;

    .line 118
    .line 119
    const v1, 0x7f0b05e9

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Landroid/widget/TextView;

    .line 127
    .line 128
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->N:Landroid/widget/TextView;

    .line 129
    .line 130
    const v1, 0x7f0b05c3

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Landroid/widget/TextView;

    .line 138
    .line 139
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->O:Landroid/widget/TextView;

    .line 140
    .line 141
    const v1, 0x7f0b05c4

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Landroid/widget/TextView;

    .line 149
    .line 150
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->P:Landroid/widget/TextView;

    .line 151
    .line 152
    const v1, 0x7f0b05c5

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Landroid/widget/TextView;

    .line 160
    .line 161
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->R:Landroid/widget/TextView;

    .line 162
    .line 163
    const v1, 0x7f0b05c6

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Landroid/widget/TextView;

    .line 171
    .line 172
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->S:Landroid/widget/TextView;

    .line 173
    .line 174
    const v1, 0x7f0b05c7

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Landroid/widget/TextView;

    .line 182
    .line 183
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->T:Landroid/widget/TextView;

    .line 184
    .line 185
    const v1, 0x7f0b05c8

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Landroid/widget/TextView;

    .line 193
    .line 194
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->V:Landroid/widget/TextView;

    .line 195
    .line 196
    const v1, 0x7f0b05c9

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    check-cast v1, Landroid/widget/TextView;

    .line 204
    .line 205
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->X:Landroid/widget/TextView;

    .line 206
    .line 207
    const v1, 0x7f0b05ca

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Landroid/widget/TextView;

    .line 215
    .line 216
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->Y:Landroid/widget/TextView;

    .line 217
    .line 218
    const v1, 0x7f0b05cb

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Landroid/widget/TextView;

    .line 226
    .line 227
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->Z:Landroid/widget/TextView;

    .line 228
    .line 229
    const v1, 0x7f0b05cc

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    check-cast v1, Landroid/widget/TextView;

    .line 237
    .line 238
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->h0:Landroid/widget/TextView;

    .line 239
    .line 240
    const v1, 0x7f0b05ce

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    check-cast v1, Landroid/widget/TextView;

    .line 248
    .line 249
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->t0:Landroid/widget/TextView;

    .line 250
    .line 251
    const v1, 0x7f0b05cf

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    check-cast v1, Landroid/widget/TextView;

    .line 259
    .line 260
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->M0:Landroid/widget/TextView;

    .line 261
    .line 262
    const v1, 0x7f0b05d0

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Landroid/widget/TextView;

    .line 270
    .line 271
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->N0:Landroid/widget/TextView;

    .line 272
    .line 273
    const v1, 0x7f0b05d1

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    check-cast v1, Landroid/widget/TextView;

    .line 281
    .line 282
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->O0:Landroid/widget/TextView;

    .line 283
    .line 284
    const v1, 0x7f0b05d2

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    check-cast v1, Landroid/widget/TextView;

    .line 292
    .line 293
    const v1, 0x7f0b05d3

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    check-cast v1, Landroid/widget/TextView;

    .line 301
    .line 302
    const v1, 0x7f0b05d4

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    check-cast v1, Landroid/widget/TextView;

    .line 310
    .line 311
    const v1, 0x7f0b05d5

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    check-cast v1, Landroid/widget/TextView;

    .line 319
    .line 320
    const v1, 0x7f0b05d6

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    check-cast v1, Landroid/widget/TextView;

    .line 328
    .line 329
    const v1, 0x7f0b05d7

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    check-cast v1, Landroid/widget/TextView;

    .line 337
    .line 338
    const v1, 0x7f0b05d9

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    check-cast v1, Landroid/widget/TextView;

    .line 346
    .line 347
    const v1, 0x7f0b05da

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    check-cast v1, Landroid/widget/TextView;

    .line 355
    .line 356
    const v1, 0x7f0b05db

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    check-cast v1, Landroid/widget/TextView;

    .line 364
    .line 365
    const v1, 0x7f0b05dc

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    check-cast v1, Landroid/widget/TextView;

    .line 373
    .line 374
    invoke-static {}, Lcom/hsae/autosdk/reverse/Reverse;->getInstance()Lcom/hsae/autosdk/reverse/Reverse;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->C:Lcom/hsae/autosdk/reverse/Reverse;

    .line 379
    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->D:Landroid/widget/TextView;

    .line 381
    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->C:Lcom/hsae/autosdk/reverse/Reverse;

    .line 388
    .line 389
    invoke-virtual {v0}, Lcom/hsae/autosdk/reverse/Reverse;->getReverseState()Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    .line 402
    .line 403
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->C:Lcom/hsae/autosdk/reverse/Reverse;

    .line 404
    .line 405
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->P0:Lua/a5;

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Lcom/hsae/autosdk/reverse/Reverse;->registerStateListener(Lcom/hsae/autosdk/reverse/Reverse$ReverseStateListener;)V

    .line 408
    .line 409
    .line 410
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->C:Lcom/hsae/autosdk/reverse/Reverse;

    .line 411
    .line 412
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->Q0:Lua/d5;

    .line 413
    .line 414
    invoke-virtual {v0, v1}, Lcom/hsae/autosdk/reverse/Reverse;->registerAvmListener(Lcom/hsae/autosdk/reverse/Reverse$AvmListener;)V

    .line 415
    .line 416
    .line 417
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->C:Lcom/hsae/autosdk/reverse/Reverse;

    .line 418
    .line 419
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;->R0:Lua/e5;

    .line 420
    .line 421
    invoke-virtual {v0, v1}, Lcom/hsae/autosdk/reverse/Reverse;->registerListener(Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .line 423
    .line 424
    goto :goto_0

    .line 425
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 426
    .line 427
    .line 428
    const-string v0, "\u83b7\u53d6\u6c7d\u8f66\u72b6\u6001\u5931\u8d25"

    .line 429
    .line 430
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    :goto_0
    return-void
.end method
