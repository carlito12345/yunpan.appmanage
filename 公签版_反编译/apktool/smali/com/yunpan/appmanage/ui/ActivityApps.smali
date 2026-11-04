.class public Lcom/yunpan/appmanage/ui/ActivityApps;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic L:I


# instance fields
.field public C:Landroidx/recyclerview/widget/RecyclerView;

.field public D:Lx9/c0;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/a0;

.field public G:Landroid/widget/LinearLayout;

.field public H:Lha/o2;

.field public I:Landroid/widget/EditText;

.field public K:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lkh/e;->l(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onReceiveMsg(Lja/a;)V
    .locals 3
    .annotation runtime Lkh/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget v0, p1, Lja/a;->a:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->F:Lx9/a0;

    .line 9
    .line 10
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge v0, v1, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->F:Lx9/a0;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/yunpan/appmanage/db/AppBean;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p1, Lja/a;->b:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->F:Lx9/a0;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lc6/g;->C(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/16 p1, 0xc

    .line 44
    .line 45
    if-ne v0, p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 48
    .line 49
    invoke-virtual {p1}, Lx9/c0;->F()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/yunpan/appmanage/ui/ActivityApps;->x(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_1
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0026

    return v0
.end method

.method public final u()V
    .locals 5

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
    new-instance v0, Lha/o2;

    .line 9
    .line 10
    new-instance v1, Ll5/y;

    .line 11
    .line 12
    const/16 v2, 0x19

    .line 13
    .line 14
    invoke-direct {v1, v2, p0}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v0, p0, p0, v2, v1}, Lha/o2;-><init>(Lda/g;Lda/g;ILl5/y;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->H:Lha/o2;

    .line 22
    .line 23
    const v0, 0x7f0b03ad

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/TextView;

    .line 31
    .line 32
    new-instance v1, Lua/g0;

    .line 33
    .line 34
    invoke-direct {v1, p0, v2}, Lua/g0;-><init>(Lcom/yunpan/appmanage/ui/ActivityApps;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    const v1, 0x7f0b0549

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/widget/LinearLayout;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->G:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    const/16 v3, 0x8

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .line 55
    .line 56
    const v1, 0x7f0b055f

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/widget/EditText;

    .line 64
    .line 65
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->I:Landroid/widget/EditText;

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->I:Landroid/widget/EditText;

    .line 71
    .line 72
    new-instance v3, Lha/e2;

    .line 73
    .line 74
    const/4 v4, 0x5

    .line 75
    invoke-direct {v3, p0, v0, v4}, Lha/e2;-><init>(Landroid/view/KeyEvent$Callback;Landroid/view/View;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->I:Landroid/widget/EditText;

    .line 82
    .line 83
    new-instance v1, Lha/aa;

    .line 84
    .line 85
    const/4 v3, 0x3

    .line 86
    invoke-direct {v1, p0, v3}, Lha/aa;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    .line 91
    .line 92
    const v0, 0x7f0b03a7

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v1, Lua/g0;

    .line 100
    .line 101
    const/4 v3, 0x1

    .line 102
    invoke-direct {v1, p0, v3}, Lua/g0;-><init>(Lcom/yunpan/appmanage/ui/ActivityApps;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    const v0, 0x7f0b050e

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 118
    .line 119
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 120
    .line 121
    invoke-direct {v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 125
    .line 126
    .line 127
    new-instance v0, Lx9/c0;

    .line 128
    .line 129
    invoke-direct {v0}, Lx9/c0;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 133
    .line 134
    const-string v1, "\u641c\u7d22"

    .line 135
    .line 136
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 140
    .line 141
    const-string v1, "\u5168\u90e8\u5e94\u7528"

    .line 142
    .line 143
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 147
    .line 148
    const-string v1, "\u4e2a\u4eba\u5e94\u7528"

    .line 149
    .line 150
    invoke-static {v1, v3, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 154
    .line 155
    const-string v1, "\u7cfb\u7edf\u5e94\u7528"

    .line 156
    .line 157
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 161
    .line 162
    const-string v1, "\u670d\u52a1\u63d2\u4ef6"

    .line 163
    .line 164
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 168
    .line 169
    const-string v1, "\u88ab\u7981\u7528"

    .line 170
    .line 171
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 175
    .line 176
    const-string v1, "\u88ab\u9690\u85cf"

    .line 177
    .line 178
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 182
    .line 183
    const-string v1, "\u4f2a\u5378\u8f7d"

    .line 184
    .line 185
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 189
    .line 190
    const-string v1, "\u5df2\u5378\u8f7d(\u4f46\u4fdd\u7559\u6570\u636e)"

    .line 191
    .line 192
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 196
    .line 197
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 200
    .line 201
    .line 202
    const v0, 0x7f0b04f4

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 210
    .line 211
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 212
    .line 213
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 214
    .line 215
    const/4 v4, 0x7

    .line 216
    invoke-direct {v1, p0, v4}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 220
    .line 221
    .line 222
    new-instance v0, Lx9/a0;

    .line 223
    .line 224
    invoke-direct {v0, p0}, Lx9/a0;-><init>(Lda/g;)V

    .line 225
    .line 226
    .line 227
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->F:Lx9/a0;

    .line 228
    .line 229
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 230
    .line 231
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->D:Lx9/c0;

    .line 235
    .line 236
    new-instance v1, Lua/h0;

    .line 237
    .line 238
    invoke-direct {v1, p0, v2}, Lua/h0;-><init>(Lcom/yunpan/appmanage/ui/ActivityApps;I)V

    .line 239
    .line 240
    .line 241
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 242
    .line 243
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityApps;->F:Lx9/a0;

    .line 244
    .line 245
    new-instance v1, Lua/h0;

    .line 246
    .line 247
    invoke-direct {v1, p0, v3}, Lua/h0;-><init>(Lcom/yunpan/appmanage/ui/ActivityApps;I)V

    .line 248
    .line 249
    .line 250
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 251
    .line 252
    const/4 v0, 0x2

    .line 253
    invoke-virtual {p0, v0}, Lcom/yunpan/appmanage/ui/ActivityApps;->x(I)V

    .line 254
    .line 255
    .line 256
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 257
    .line 258
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 259
    .line 260
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 261
    .line 262
    invoke-static {v1}, Lif/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    const-string v3, "c7753507a4d379184a2ac3651059038e"

    .line 267
    .line 268
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-nez v1, :cond_0

    .line 273
    .line 274
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 275
    .line 276
    invoke-static {v0}, Lif/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    const-string v1, "8418ca95857ddad6713ce6826dc36ad6"

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_0

    .line 287
    .line 288
    const-string v0, "\u4fee\u6539\u7248\uff0c\u8bf7\u628a\u5305\u540d\u6539\u6389\uff0c\u4e0d\u8981\u548c\u6211\u540c\u4e00\u4e2a\u5305\u540d"

    .line 289
    .line 290
    invoke-static {v0, v2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :cond_0
    new-instance v0, Ltb/v;

    .line 298
    .line 299
    const/16 v1, 0x1a

    .line 300
    .line 301
    invoke-direct {v0, v1}, Ltb/v;-><init>(I)V

    .line 302
    .line 303
    .line 304
    new-instance v1, Lmc/c;

    .line 305
    .line 306
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 310
    .line 311
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    new-instance v1, Lha/l2;

    .line 324
    .line 325
    const/16 v2, 0x1c

    .line 326
    .line 327
    invoke-direct {v1, v2}, Lha/l2;-><init>(I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 331
    .line 332
    .line 333
    return-void
.end method

.method public final x(I)V
    .locals 2

    .line 1
    new-instance v0, Lha/o;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, p1, v1, p0}, Lha/o;-><init>(IILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lmc/c;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance v0, Lua/j0;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-direct {v0, p0, v1}, Lua/j0;-><init>(Lcom/yunpan/appmanage/ui/ActivityApps;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
