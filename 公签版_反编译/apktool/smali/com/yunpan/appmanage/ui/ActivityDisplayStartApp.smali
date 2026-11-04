.class public Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic F:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/a0;

.field public E:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;->E:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 8
    .line 9
    .line 10
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0032

    return v0
.end method

.method public final u()V
    .locals 15

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "isNoPermissions"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;->E:Z

    .line 13
    .line 14
    const v0, 0x7f0b03ad

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lua/g1;

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-direct {v1, p0, v3}, Lua/g1;-><init>(Lda/g;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    const v0, 0x7f0b04f4

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 40
    .line 41
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 42
    .line 43
    const/4 v3, 0x7

    .line 44
    invoke-direct {v1, p0, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lx9/a0;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lx9/a0;-><init>(Lda/g;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;->D:Lx9/a0;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-boolean v1, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;->E:Z

    .line 68
    .line 69
    if-nez v1, :cond_0

    .line 70
    .line 71
    const-string v1, "\u5173\u95ed\u6b64\u5e94\u7528(\u5f3a\u5236\u505c\u6b62)"

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 82
    .line 83
    const-string v4, "display"

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    array-length v4, v3

    .line 96
    const/4 v5, 0x0

    .line 97
    :goto_0
    if-ge v5, v4, :cond_2

    .line 98
    .line 99
    aget-object v6, v3, v5

    .line 100
    .line 101
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    new-instance v7, Landroid/util/DisplayMetrics;

    .line 105
    .line 106
    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 110
    .line 111
    .line 112
    new-instance v8, Landroid/util/DisplayMetrics;

    .line 113
    .line 114
    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 118
    .line 119
    .line 120
    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 121
    .line 122
    iget v10, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 123
    .line 124
    const-string v11, "   "

    .line 125
    .line 126
    const-string v12, "   dpi:"

    .line 127
    .line 128
    const-string v13, "ID:"

    .line 129
    .line 130
    const-string v14, "*"

    .line 131
    .line 132
    if-ne v9, v10, :cond_1

    .line 133
    .line 134
    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 135
    .line 136
    iget v10, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 137
    .line 138
    if-ne v9, v10, :cond_1

    .line 139
    .line 140
    new-instance v9, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget v6, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 156
    .line 157
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 164
    .line 165
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget v6, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 172
    .line 173
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    iget v6, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 200
    .line 201
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 208
    .line 209
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    iget v6, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 216
    .line 217
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v6, "\u53ef\u89c6\u533a("

    .line 221
    .line 222
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 226
    .line 227
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget v6, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 234
    .line 235
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v6, ")"

    .line 239
    .line 240
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 251
    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_2
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayStartApp;->D:Lx9/a0;

    .line 255
    .line 256
    new-instance v4, Lcom/hjq/permissions/b;

    .line 257
    .line 258
    const/16 v5, 0xb

    .line 259
    .line 260
    invoke-direct {v4, p0, v0, v1, v5}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 261
    .line 262
    .line 263
    iput-object v4, v3, Lc6/g;->e:Lc6/e;

    .line 264
    .line 265
    new-instance v0, Lph/j;

    .line 266
    .line 267
    const/16 v1, 0x10

    .line 268
    .line 269
    invoke-direct {v0, v1, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    new-instance v1, Lmc/c;

    .line 273
    .line 274
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 278
    .line 279
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    new-instance v1, Lka/c;

    .line 292
    .line 293
    const/16 v3, 0xe

    .line 294
    .line 295
    invoke-direct {v1, v3, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 299
    .line 300
    .line 301
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 302
    .line 303
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 304
    .line 305
    iget-object v1, v0, Lcom/yunpan/appmanage/util/k;->c:Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {v1}, Lif/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    const-string v3, "c7753507a4d379184a2ac3651059038e"

    .line 312
    .line 313
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-nez v1, :cond_3

    .line 318
    .line 319
    iget-object v0, v0, Lcom/yunpan/appmanage/util/k;->d:Ljava/lang/String;

    .line 320
    .line 321
    invoke-static {v0}, Lif/a;->p0(Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    const-string v1, "8418ca95857ddad6713ce6826dc36ad6"

    .line 326
    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_3

    .line 332
    .line 333
    const-string v0, "\u4fee\u6539\u7248\uff0c\u8bf7\u628a\u5305\u540d\u6539\u6389\uff0c\u4e0d\u8981\u548c\u6211\u540c\u4e00\u4e2a\u5305\u540d"

    .line 334
    .line 335
    invoke-static {v0, v2}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 339
    .line 340
    .line 341
    :cond_3
    return-void
.end method
