.class public Lcom/yunpan/appmanage/ui/ActivityImage2;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic M0:I


# instance fields
.field public C:Lcom/yunpan/appmanage/view/MyImageView;

.field public D:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/TextView;

.field public G:Landroid/widget/TextView;

.field public H:Landroid/widget/TextView;

.field public I:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public K:Landroid/widget/TextView;

.field public L:Landroid/widget/TextView;

.field public M:Landroid/widget/TextView;

.field public N:Landroid/widget/TextView;

.field public O:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public P:Landroid/widget/CheckBox;

.field public R:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public S:Landroid/widget/TextView;

.field public T:Landroid/widget/TextView;

.field public V:Landroid/widget/TextView;

.field public X:Ljava/lang/String;

.field public Y:F

.field public final Z:Lcom/yunpan/appmanage/carsdk/u;

.field public h0:J

.field public t0:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->X:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->Y:F

    .line 10
    .line 11
    new-instance v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/16 v2, 0x14

    .line 18
    .line 19
    invoke-direct {v0, p0, v1, v2}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->Z:Lcom/yunpan/appmanage/carsdk/u;

    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->h0:J

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->t0:I

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityImage2;->x()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-super {p0}, Landroidx/activity/m;->onBackPressed()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->Z:Lcom/yunpan/appmanage/carsdk/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lkh/e;->l(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onReceiveMsg(Lja/e;)V
    .locals 0
    .annotation runtime Lkh/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0039

    return v0
.end method

.method public final u()V
    .locals 3

    .line 1
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lkh/e;->j(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const v0, 0x7f0b04b9

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/yunpan/appmanage/view/MyImageView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 18
    .line 19
    const v0, 0x7f0b04e4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    const v0, 0x7f0b03ad

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->E:Landroid/widget/TextView;

    .line 40
    .line 41
    const v0, 0x7f0b0480

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/TextView;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->F:Landroid/widget/TextView;

    .line 51
    .line 52
    const v0, 0x7f0b0485

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->G:Landroid/widget/TextView;

    .line 62
    .line 63
    const v0, 0x7f0b0486

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/TextView;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->H:Landroid/widget/TextView;

    .line 73
    .line 74
    const v0, 0x7f0b04d5

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 84
    .line 85
    const v0, 0x7f0b0374

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/widget/TextView;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->K:Landroid/widget/TextView;

    .line 95
    .line 96
    const/16 v1, 0x8

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    const v0, 0x7f0b03af

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/widget/TextView;

    .line 109
    .line 110
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->L:Landroid/widget/TextView;

    .line 111
    .line 112
    const v0, 0x7f0b03b1

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroid/widget/TextView;

    .line 120
    .line 121
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->M:Landroid/widget/TextView;

    .line 122
    .line 123
    const v0, 0x7f0b0351

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Landroid/widget/TextView;

    .line 131
    .line 132
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->N:Landroid/widget/TextView;

    .line 133
    .line 134
    const v0, 0x7f0b04d3

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 142
    .line 143
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->O:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 144
    .line 145
    const v0, 0x7f0b03ff

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Landroid/widget/CheckBox;

    .line 153
    .line 154
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->P:Landroid/widget/CheckBox;

    .line 155
    .line 156
    const v0, 0x7f0b03e5

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 164
    .line 165
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 166
    .line 167
    const v0, 0x7f0b03e6

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Landroid/widget/TextView;

    .line 175
    .line 176
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->S:Landroid/widget/TextView;

    .line 177
    .line 178
    const v0, 0x7f0b05a4

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Landroid/widget/TextView;

    .line 186
    .line 187
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->T:Landroid/widget/TextView;

    .line 188
    .line 189
    const v0, 0x7f0b03e7

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    check-cast v0, Landroid/widget/TextView;

    .line 197
    .line 198
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->V:Landroid/widget/TextView;

    .line 199
    .line 200
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->E:Landroid/widget/TextView;

    .line 201
    .line 202
    new-instance v1, Lua/i2;

    .line 203
    .line 204
    const/4 v2, 0x0

    .line 205
    invoke-direct {v1, p0, v2}, Lua/i2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 212
    .line 213
    const/high16 v1, 0x40a00000    # 5.0f

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityImage2;->x()V

    .line 219
    .line 220
    .line 221
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->P:Landroid/widget/CheckBox;

    .line 222
    .line 223
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 224
    .line 225
    iget-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->G0:Z

    .line 226
    .line 227
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->T:Landroid/widget/TextView;

    .line 231
    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    iget v1, v1, Lcom/yunpan/appmanage/util/w;->H0:I

    .line 238
    .line 239
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v1, "s"

    .line 243
    .line 244
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->P:Landroid/widget/CheckBox;

    .line 255
    .line 256
    new-instance v1, Lb7/a;

    .line 257
    .line 258
    const/4 v2, 0x2

    .line 259
    invoke-direct {v1, p0, v2}, Lb7/a;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 263
    .line 264
    .line 265
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 266
    .line 267
    new-instance v1, Lua/j2;

    .line 268
    .line 269
    const/4 v2, 0x6

    .line 270
    invoke-direct {v1, p0, v2}, Lua/j2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 274
    .line 275
    .line 276
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->V:Landroid/widget/TextView;

    .line 277
    .line 278
    new-instance v1, Lua/i2;

    .line 279
    .line 280
    const/4 v2, 0x4

    .line 281
    invoke-direct {v1, p0, v2}, Lua/i2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    .line 286
    .line 287
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->S:Landroid/widget/TextView;

    .line 288
    .line 289
    new-instance v1, Lua/i2;

    .line 290
    .line 291
    const/4 v2, 0x5

    .line 292
    invoke-direct {v1, p0, v2}, Lua/i2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityImage2;->y()V

    .line 299
    .line 300
    .line 301
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 302
    .line 303
    new-instance v1, Lua/i2;

    .line 304
    .line 305
    const/4 v2, 0x1

    .line 306
    invoke-direct {v1, p0, v2}, Lua/i2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    .line 311
    .line 312
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 313
    .line 314
    new-instance v1, Lua/j2;

    .line 315
    .line 316
    const/4 v2, 0x0

    .line 317
    invoke-direct {v1, p0, v2}, Lua/j2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 321
    .line 322
    .line 323
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 324
    .line 325
    new-instance v1, Lua/i1;

    .line 326
    .line 327
    const/4 v2, 0x6

    .line 328
    invoke-direct {v1, v2, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/view/MyImageView;->setOnTouchDirection(Lxa/c;)V

    .line 332
    .line 333
    .line 334
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->K:Landroid/widget/TextView;

    .line 335
    .line 336
    new-instance v1, Lua/j2;

    .line 337
    .line 338
    const/4 v2, 0x1

    .line 339
    invoke-direct {v1, p0, v2}, Lua/j2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->L:Landroid/widget/TextView;

    .line 346
    .line 347
    new-instance v1, Lua/j2;

    .line 348
    .line 349
    const/4 v2, 0x2

    .line 350
    invoke-direct {v1, p0, v2}, Lua/j2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 354
    .line 355
    .line 356
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->M:Landroid/widget/TextView;

    .line 357
    .line 358
    new-instance v1, Lua/j2;

    .line 359
    .line 360
    const/4 v2, 0x3

    .line 361
    invoke-direct {v1, p0, v2}, Lua/j2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 365
    .line 366
    .line 367
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->N:Landroid/widget/TextView;

    .line 368
    .line 369
    new-instance v1, Lua/j2;

    .line 370
    .line 371
    const/4 v2, 0x4

    .line 372
    invoke-direct {v1, p0, v2}, Lua/j2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 376
    .line 377
    .line 378
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->N:Landroid/widget/TextView;

    .line 379
    .line 380
    new-instance v1, Lua/i2;

    .line 381
    .line 382
    const/4 v2, 0x2

    .line 383
    invoke-direct {v1, p0, v2}, Lua/i2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    .line 388
    .line 389
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->N:Landroid/widget/TextView;

    .line 390
    .line 391
    new-instance v1, Lha/n;

    .line 392
    .line 393
    const/4 v2, 0x5

    .line 394
    invoke-direct {v1, v2, p0}, Lha/n;-><init>(ILjava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 398
    .line 399
    .line 400
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->P:Landroid/widget/CheckBox;

    .line 401
    .line 402
    new-instance v1, Lua/j2;

    .line 403
    .line 404
    invoke-direct {v1, p0, v2}, Lua/j2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 408
    .line 409
    .line 410
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->L:Landroid/widget/TextView;

    .line 411
    .line 412
    new-instance v1, Lua/i2;

    .line 413
    .line 414
    const/4 v2, 0x3

    .line 415
    invoke-direct {v1, p0, v2}, Lua/i2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    .line 420
    .line 421
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->O:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->M:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->Z:Lcom/yunpan/appmanage/carsdk/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 8
    .line 9
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 12
    .line 13
    iget v3, v2, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 14
    .line 15
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/ImageData;->wpFiles:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-lt v3, v2, :cond_0

    .line 22
    .line 23
    iget-object v2, v0, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 24
    .line 25
    iput v1, v2, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 26
    .line 27
    :cond_0
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 28
    .line 29
    iget v2, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 30
    .line 31
    if-gez v2, :cond_1

    .line 32
    .line 33
    iget-object v2, v0, Lcom/yunpan/appmanage/bean/ImageData;->wpFiles:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/lit8 v2, v2, -0x1

    .line 40
    .line 41
    iput v2, v0, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityImage2;->x()V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->Y:F

    .line 48
    .line 49
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->recycle()V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lua/k2;

    .line 55
    .line 56
    invoke-direct {v0, p0, v1}, Lua/k2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 57
    .line 58
    .line 59
    new-instance v2, Lmc/c;

    .line 60
    .line 61
    invoke-direct {v2, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v2, Lua/l2;

    .line 79
    .line 80
    invoke-direct {v2, p0, v1}, Lua/l2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage2;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Lec/b;->b(Lec/e;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->recycle()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "file://"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/davemorrissey/labs/subscaleview/ImageSource;->uri(Ljava/lang/String;)Lcom/davemorrissey/labs/subscaleview/ImageSource;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setImage(Lcom/davemorrissey/labs/subscaleview/ImageSource;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getSWidth()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getSHeight()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-le v1, p1, :cond_1

    .line 54
    .line 55
    if-le v2, v0, :cond_1

    .line 56
    .line 57
    sub-int v3, p1, v1

    .line 58
    .line 59
    sub-int v4, v0, v2

    .line 60
    .line 61
    if-le v3, v4, :cond_0

    .line 62
    .line 63
    int-to-float p1, p1

    .line 64
    int-to-float v0, v1

    .line 65
    div-float/2addr p1, v0

    .line 66
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    int-to-float p1, v0

    .line 73
    int-to-float v0, v2

    .line 74
    div-float/2addr p1, v0

    .line 75
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage2;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    return-void
.end method
