.class public Lcom/yunpan/appmanage/ui/ActivityImage;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic t0:I


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

.field public X:F

.field public final Y:Lcom/yunpan/appmanage/carsdk/u;

.field public Z:J

.field public h0:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->X:F

    .line 6
    .line 7
    new-instance v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/16 v2, 0x13

    .line 14
    .line 15
    invoke-direct {v0, p0, v1, v2}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->Y:Lcom/yunpan/appmanage/carsdk/u;

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->Z:J

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->h0:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->X:F

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    cmpl-float v0, v0, v2

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->M:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityImage;->x()V

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
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->Y:Lcom/yunpan/appmanage/carsdk/u;

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->C:Lcom/yunpan/appmanage/view/MyImageView;

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->E:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->F:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->G:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->H:Landroid/widget/TextView;

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->K:Landroid/widget/TextView;

    .line 95
    .line 96
    const v0, 0x7f0b03af

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/widget/TextView;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->L:Landroid/widget/TextView;

    .line 106
    .line 107
    const v0, 0x7f0b03b1

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Landroid/widget/TextView;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->M:Landroid/widget/TextView;

    .line 117
    .line 118
    const v0, 0x7f0b0351

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/widget/TextView;

    .line 126
    .line 127
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->N:Landroid/widget/TextView;

    .line 128
    .line 129
    const v0, 0x7f0b04d3

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 137
    .line 138
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->O:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 139
    .line 140
    const v0, 0x7f0b03ff

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Landroid/widget/CheckBox;

    .line 148
    .line 149
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->P:Landroid/widget/CheckBox;

    .line 150
    .line 151
    const v0, 0x7f0b03e5

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 159
    .line 160
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 161
    .line 162
    const v0, 0x7f0b03e6

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Landroid/widget/TextView;

    .line 170
    .line 171
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->S:Landroid/widget/TextView;

    .line 172
    .line 173
    const v0, 0x7f0b05a4

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    check-cast v0, Landroid/widget/TextView;

    .line 181
    .line 182
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->T:Landroid/widget/TextView;

    .line 183
    .line 184
    const v0, 0x7f0b03e7

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Landroid/widget/TextView;

    .line 192
    .line 193
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->V:Landroid/widget/TextView;

    .line 194
    .line 195
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->E:Landroid/widget/TextView;

    .line 196
    .line 197
    new-instance v1, Lua/e2;

    .line 198
    .line 199
    const/4 v2, 0x0

    .line 200
    invoke-direct {v1, p0, v2}, Lua/e2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 207
    .line 208
    const/high16 v1, 0x40a00000    # 5.0f

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setMaxScale(F)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityImage;->x()V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->P:Landroid/widget/CheckBox;

    .line 217
    .line 218
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 219
    .line 220
    iget-boolean v2, v1, Lcom/yunpan/appmanage/util/w;->G0:Z

    .line 221
    .line 222
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->T:Landroid/widget/TextView;

    .line 226
    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    iget v1, v1, Lcom/yunpan/appmanage/util/w;->H0:I

    .line 233
    .line 234
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v1, "s"

    .line 238
    .line 239
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->P:Landroid/widget/CheckBox;

    .line 250
    .line 251
    new-instance v1, Lb7/a;

    .line 252
    .line 253
    const/4 v2, 0x1

    .line 254
    invoke-direct {v1, p0, v2}, Lb7/a;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->R:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 261
    .line 262
    new-instance v1, Lua/f2;

    .line 263
    .line 264
    const/4 v2, 0x6

    .line 265
    invoke-direct {v1, p0, v2}, Lua/f2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->V:Landroid/widget/TextView;

    .line 272
    .line 273
    new-instance v1, Lua/e2;

    .line 274
    .line 275
    const/4 v2, 0x1

    .line 276
    invoke-direct {v1, p0, v2}, Lua/e2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->S:Landroid/widget/TextView;

    .line 283
    .line 284
    new-instance v1, Lua/e2;

    .line 285
    .line 286
    const/4 v2, 0x2

    .line 287
    invoke-direct {v1, p0, v2}, Lua/e2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityImage;->y()V

    .line 294
    .line 295
    .line 296
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 297
    .line 298
    new-instance v1, Lua/e2;

    .line 299
    .line 300
    const/4 v2, 0x3

    .line 301
    invoke-direct {v1, p0, v2}, Lua/e2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    .line 306
    .line 307
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 308
    .line 309
    new-instance v1, Lua/f2;

    .line 310
    .line 311
    const/4 v2, 0x0

    .line 312
    invoke-direct {v1, p0, v2}, Lua/f2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 319
    .line 320
    new-instance v1, Lua/i1;

    .line 321
    .line 322
    const/4 v2, 0x5

    .line 323
    invoke-direct {v1, v2, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v1}, Lcom/yunpan/appmanage/view/MyImageView;->setOnTouchDirection(Lxa/c;)V

    .line 327
    .line 328
    .line 329
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->K:Landroid/widget/TextView;

    .line 330
    .line 331
    new-instance v1, Lua/f2;

    .line 332
    .line 333
    const/4 v2, 0x1

    .line 334
    invoke-direct {v1, p0, v2}, Lua/f2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 338
    .line 339
    .line 340
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->L:Landroid/widget/TextView;

    .line 341
    .line 342
    new-instance v1, Lua/f2;

    .line 343
    .line 344
    const/4 v2, 0x2

    .line 345
    invoke-direct {v1, p0, v2}, Lua/f2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 349
    .line 350
    .line 351
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->M:Landroid/widget/TextView;

    .line 352
    .line 353
    new-instance v1, Lua/f2;

    .line 354
    .line 355
    const/4 v2, 0x3

    .line 356
    invoke-direct {v1, p0, v2}, Lua/f2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 360
    .line 361
    .line 362
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->N:Landroid/widget/TextView;

    .line 363
    .line 364
    new-instance v1, Lua/f2;

    .line 365
    .line 366
    const/4 v2, 0x4

    .line 367
    invoke-direct {v1, p0, v2}, Lua/f2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 371
    .line 372
    .line 373
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->N:Landroid/widget/TextView;

    .line 374
    .line 375
    new-instance v1, Lua/e2;

    .line 376
    .line 377
    invoke-direct {v1, p0, v2}, Lua/e2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    .line 382
    .line 383
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->N:Landroid/widget/TextView;

    .line 384
    .line 385
    new-instance v1, Lha/n;

    .line 386
    .line 387
    invoke-direct {v1, v2, p0}, Lha/n;-><init>(ILjava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 391
    .line 392
    .line 393
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->P:Landroid/widget/CheckBox;

    .line 394
    .line 395
    new-instance v1, Lua/f2;

    .line 396
    .line 397
    const/4 v2, 0x5

    .line 398
    invoke-direct {v1, p0, v2}, Lua/f2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 402
    .line 403
    .line 404
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->K:Landroid/widget/TextView;

    .line 405
    .line 406
    new-instance v1, Lua/e2;

    .line 407
    .line 408
    invoke-direct {v1, p0, v2}, Lua/e2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    .line 413
    .line 414
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->L:Landroid/widget/TextView;

    .line 415
    .line 416
    new-instance v1, Lua/e2;

    .line 417
    .line 418
    const/4 v2, 0x6

    .line 419
    invoke-direct {v1, p0, v2}, Lua/e2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    .line 424
    .line 425
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->M:Landroid/widget/TextView;

    .line 426
    .line 427
    new-instance v1, Lua/e2;

    .line 428
    .line 429
    const/4 v2, 0x7

    .line 430
    invoke-direct {v1, p0, v2}, Lua/e2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImage;I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    .line 435
    .line 436
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->O:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->M:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final y()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->Y:Lcom/yunpan/appmanage/carsdk/u;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    sget-object v2, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 8
    .line 9
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 10
    .line 11
    iget-object v3, v2, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 12
    .line 13
    iget v4, v3, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 14
    .line 15
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-lt v4, v3, :cond_0

    .line 22
    .line 23
    iget-object v3, v2, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 24
    .line 25
    iput v1, v3, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 26
    .line 27
    :cond_0
    iget-object v3, v2, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 28
    .line 29
    iget v4, v3, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    if-gez v4, :cond_1

    .line 33
    .line 34
    iget-object v4, v3, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    sub-int/2addr v4, v5

    .line 41
    iput v4, v3, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityImage;->x()V

    .line 44
    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    iput v3, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->X:F

    .line 48
    .line 49
    iget-object v3, v2, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 50
    .line 51
    iget-object v4, v3, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 52
    .line 53
    iget v3, v3, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 54
    .line 55
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lx9/w3;

    .line 60
    .line 61
    iget-object v3, v3, Lx9/w3;->b:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0, v3}, Lcom/yunpan/appmanage/ui/ActivityImage;->z(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->F:Landroid/widget/TextView;

    .line 67
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v6, "\u7b2c "

    .line 71
    .line 72
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v6, v2, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 76
    .line 77
    iget v6, v6, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 78
    .line 79
    add-int/2addr v6, v5

    .line 80
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v6, " \u5f20\uff0c\u5171 "

    .line 84
    .line 85
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v6, v2, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 89
    .line 90
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v6, " \u5f20"

    .line 100
    .line 101
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .line 110
    .line 111
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->H:Landroid/widget/TextView;

    .line 112
    .line 113
    iget-object v4, v2, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 114
    .line 115
    iget-object v6, v4, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 116
    .line 117
    iget v4, v4, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 118
    .line 119
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Lx9/w3;

    .line 124
    .line 125
    iget-object v4, v4, Lx9/w3;->a:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .line 131
    .line 132
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 136
    .line 137
    iget-object v4, v2, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 138
    .line 139
    iget-object v5, v4, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 140
    .line 141
    iget v4, v4, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 142
    .line 143
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Lx9/w3;

    .line 148
    .line 149
    iget-object v4, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 152
    .line 153
    .line 154
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 155
    .line 156
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 157
    .line 158
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->G:Landroid/widget/TextView;

    .line 159
    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v4, "*"

    .line 169
    .line 170
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v3, "   "

    .line 177
    .line 178
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->y:Lcom/yunpan/appmanage/bean/ImageData;

    .line 182
    .line 183
    iget-object v3, v2, Lcom/yunpan/appmanage/bean/ImageData;->bdFiles:Ljava/util/List;

    .line 184
    .line 185
    iget v2, v2, Lcom/yunpan/appmanage/bean/ImageData;->position:I

    .line 186
    .line 187
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    check-cast v2, Lx9/w3;

    .line 192
    .line 193
    iget-wide v2, v2, Lx9/w3;->d:J

    .line 194
    .line 195
    long-to-double v2, v2

    .line 196
    invoke-static {v2, v3}, Lif/a;->D0(D)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 211
    .line 212
    iget-boolean v3, v2, Lcom/yunpan/appmanage/util/w;->G0:Z

    .line 213
    .line 214
    if-eqz v3, :cond_2

    .line 215
    .line 216
    iget v2, v2, Lcom/yunpan/appmanage/util/w;->H0:I

    .line 217
    .line 218
    mul-int/lit16 v2, v2, 0x3e8

    .line 219
    .line 220
    int-to-long v2, v2

    .line 221
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 222
    .line 223
    .line 224
    :cond_2
    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->recycle()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->C:Lcom/yunpan/appmanage/view/MyImageView;

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
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->C:Lcom/yunpan/appmanage/view/MyImageView;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getSWidth()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->C:Lcom/yunpan/appmanage/view/MyImageView;

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
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->C:Lcom/yunpan/appmanage/view/MyImageView;

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
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImage;->C:Lcom/yunpan/appmanage/view/MyImageView;

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
