.class public Lcom/yunpan/appmanage/ui/ActivityDisplayManager;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic N:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/k3;

.field public E:Landroid/view/Display;

.field public F:Landroid/media/projection/MediaProjectionManager;

.field public final G:Ljava/util/ArrayList;

.field public final H:Ljava/util/ArrayList;

.field public I:Z

.field public K:Ljava/lang/String;

.field public L:I

.field public final M:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->G:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->H:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->I:Z

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->K:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->L:I

    .line 27
    .line 28
    const/16 v0, 0x3e9

    .line 29
    .line 30
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->M:I

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/j0;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->M:I

    .line 5
    .line 6
    if-ne p1, v0, :cond_3

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_3

    .line 10
    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v0, 0x15

    .line 14
    .line 15
    if-lt p1, v0, :cond_3

    .line 16
    .line 17
    :try_start_0
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->F:Landroid/media/projection/MediaProjectionManager;

    .line 18
    .line 19
    invoke-static {p1, p2, p3}, Ltb/b;->h(Landroid/media/projection/MediaProjectionManager;ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    if-eqz v5, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->K:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    new-instance p1, Lha/j5;

    .line 34
    .line 35
    iget v3, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->L:I

    .line 36
    .line 37
    iget-object v4, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->E:Landroid/view/Display;

    .line 38
    .line 39
    move-object v0, p1

    .line 40
    move-object v1, p0

    .line 41
    move-object v2, p0

    .line 42
    invoke-direct/range {v0 .. v5}, Lha/j5;-><init>(Lcom/yunpan/appmanage/ui/ActivityDisplayManager;Lcom/yunpan/appmanage/ui/ActivityDisplayManager;ILandroid/view/Display;Landroid/media/projection/MediaProjection;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    new-instance p1, Lha/m5;

    .line 52
    .line 53
    iget p2, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->L:I

    .line 54
    .line 55
    const/16 p3, 0x9

    .line 56
    .line 57
    if-ne p2, p3, :cond_1

    .line 58
    .line 59
    const/4 p2, 0x1

    .line 60
    const/4 v3, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 p2, 0x0

    .line 63
    const/4 v3, 0x0

    .line 64
    :goto_0
    iget-boolean v4, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->I:Z

    .line 65
    .line 66
    iget-object v5, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->E:Landroid/view/Display;

    .line 67
    .line 68
    iget-object v6, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->K:Ljava/lang/String;

    .line 69
    .line 70
    move-object v0, p1

    .line 71
    move-object v1, p0

    .line 72
    move-object v2, p0

    .line 73
    invoke-direct/range {v0 .. v6}, Lha/m5;-><init>(Lcom/yunpan/appmanage/ui/ActivityDisplayManager;Lcom/yunpan/appmanage/ui/ActivityDisplayManager;ZZLandroid/view/Display;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    .line 81
    .line 82
    const-string p2, "\u65e0\u6cd5\u83b7\u53d6\u5f55\u5c4f\u6743\u9650"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string p3, "\u5931\u8d25\uff1a"

    .line 91
    .line 92
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1, p2}, Lg/b;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_2
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0031

    return v0
.end method

.method public final u()V
    .locals 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const-string v0, "\u4e0d\u652f\u6301\u4f4e\u4e8e Android 5.0 \u7684\u7cfb\u7edf"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v0, "display"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    array-length v1, v0

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->H:Ljava/util/ArrayList;

    .line 31
    .line 32
    if-ge v2, v1, :cond_3

    .line 33
    .line 34
    aget-object v4, v0, v2

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-nez v5, :cond_1

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    new-instance v3, Landroid/util/DisplayMetrics;

    .line 48
    .line 49
    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 53
    .line 54
    .line 55
    new-instance v5, Landroid/util/DisplayMetrics;

    .line 56
    .line 57
    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 61
    .line 62
    .line 63
    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 64
    .line 65
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 66
    .line 67
    iget-object v8, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->G:Ljava/util/ArrayList;

    .line 68
    .line 69
    const-string v9, "   "

    .line 70
    .line 71
    const-string v10, "   dpi:"

    .line 72
    .line 73
    const-string v11, "ID:"

    .line 74
    .line 75
    const-string v12, "*"

    .line 76
    .line 77
    if-ne v6, v7, :cond_2

    .line 78
    .line 79
    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 80
    .line 81
    iget v7, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 82
    .line 83
    if-ne v6, v7, :cond_2

    .line 84
    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 101
    .line 102
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v3, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 109
    .line 110
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget v3, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 117
    .line 118
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget v4, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 145
    .line 146
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 153
    .line 154
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget v4, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 161
    .line 162
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v4, "\u53ef\u89c6\u533a("

    .line 166
    .line 167
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 171
    .line 172
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 179
    .line 180
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v3, ")"

    .line 184
    .line 185
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_4

    .line 204
    .line 205
    const-string v0, "\u6ca1\u6709\u53ef\u7528\u7684\u5c4f\u5e55\u7a97\u53e3"

    .line 206
    .line 207
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_4
    new-instance v0, Lha/u9;

    .line 215
    .line 216
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 217
    .line 218
    invoke-direct {v0, p0, v1}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 219
    .line 220
    .line 221
    const v0, 0x7f0b03ad

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    new-instance v1, Lua/l1;

    .line 229
    .line 230
    const/4 v2, 0x0

    .line 231
    invoke-direct {v1, p0, v2}, Lua/l1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDisplayManager;I)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    .line 236
    .line 237
    const v0, 0x7f0b037d

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    new-instance v1, Lua/l1;

    .line 245
    .line 246
    const/4 v2, 0x1

    .line 247
    invoke-direct {v1, p0, v2}, Lua/l1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDisplayManager;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    .line 252
    .line 253
    const v0, 0x7f0b04f1

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 261
    .line 262
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 263
    .line 264
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 265
    .line 266
    const/4 v2, 0x2

    .line 267
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 271
    .line 272
    .line 273
    new-instance v0, Lx9/k3;

    .line 274
    .line 275
    invoke-direct {v0}, Lx9/k3;-><init>()V

    .line 276
    .line 277
    .line 278
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 279
    .line 280
    const v1, 0x7f0802bf

    .line 281
    .line 282
    .line 283
    const-string v2, "\u540c\u6b65\u663e\u793a"

    .line 284
    .line 285
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 286
    .line 287
    .line 288
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 289
    .line 290
    const-string v2, "\u540c\u6b65\u663e\u793a-\u60ac\u6d6e"

    .line 291
    .line 292
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 296
    .line 297
    const-string v2, "\u6295\u5c4f\u81ea\u8eab-\u666e\u901a"

    .line 298
    .line 299
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 300
    .line 301
    .line 302
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 303
    .line 304
    const-string v2, "\u6295\u5c4f\u81ea\u8eab-\u60ac\u6d6e"

    .line 305
    .line 306
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 310
    .line 311
    const-string v2, "\u6295\u5c4f\u81ea\u8eab-\u900f\u660e"

    .line 312
    .line 313
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 317
    .line 318
    const-string v2, "\u6295\u5c4f\u81ea\u8eab-\u6307\u5b9a\u4f4d\u7f6e(\u4e2d\u95f4)"

    .line 319
    .line 320
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 321
    .line 322
    .line 323
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 324
    .line 325
    const-string v2, "\u6295\u5c4f\u81ea\u8eab-\u9876\u5c42-\u5168\u5c4f\u663e\u793a"

    .line 326
    .line 327
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 328
    .line 329
    .line 330
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 331
    .line 332
    const-string v2, "\u6295\u5c4f\u81ea\u8eab-\u9876\u5c42-\u6307\u5b9a\u4f4d\u7f6e"

    .line 333
    .line 334
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 335
    .line 336
    .line 337
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 338
    .line 339
    const-string v2, "\u6295\u5c4f\u7b2c\u4e09\u65b9\u5e94\u7528(\u753b\u4e2d\u753b)"

    .line 340
    .line 341
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 342
    .line 343
    .line 344
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 345
    .line 346
    const-string v2, "\u6295\u5c4f\u7b2c\u4e09\u65b9\u5e94\u7528(\u753b\u4e2d\u753b)-\u9876\u5c42"

    .line 347
    .line 348
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 349
    .line 350
    .line 351
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 352
    .line 353
    const-string v2, "\u540c\u6b65\u663e\u793a-\u9876\u7ea7\u60ac\u6d6e"

    .line 354
    .line 355
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 356
    .line 357
    .line 358
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 359
    .line 360
    const-string v2, "\u6295\u5c4f\u7b2c\u4e09\u65b9\u5e94\u7528(\u753b\u4e2d\u753b)-\u9876\u7ea7\u60ac\u6d6e"

    .line 361
    .line 362
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 363
    .line 364
    .line 365
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 366
    .line 367
    const-string v2, "\u6295\u5c4f\u7b2c\u4e09\u65b9(adb\u955c\u50cf)"

    .line 368
    .line 369
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 370
    .line 371
    .line 372
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 373
    .line 374
    const-string v2, "\u540c\u6b65\u663e\u793a(adb\u955c\u50cf)"

    .line 375
    .line 376
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 377
    .line 378
    .line 379
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 380
    .line 381
    const-string v2, "\u526f\u5c4f\u89e6\u63a7"

    .line 382
    .line 383
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 384
    .line 385
    .line 386
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 387
    .line 388
    const-string v2, "test"

    .line 389
    .line 390
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 391
    .line 392
    .line 393
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 394
    .line 395
    const-string v2, "\u5728\u526f\u5c4f\u542f\u52a8\u5e94\u7528(\u65e0\u9700adb)"

    .line 396
    .line 397
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 398
    .line 399
    .line 400
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 401
    .line 402
    const-string v2, "\u5728\u526f\u5c4f\u542f\u52a8\u5e94\u7528(\u6d4b\u8bd5\u4e00)"

    .line 403
    .line 404
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 405
    .line 406
    .line 407
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 408
    .line 409
    const-string v2, "\u5728\u526f\u5c4f\u542f\u52a8\u5e94\u7528(\u6d4b\u8bd5\u4e8c)"

    .line 410
    .line 411
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 412
    .line 413
    .line 414
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 415
    .line 416
    new-instance v2, Lx9/l3;

    .line 417
    .line 418
    const-string v3, "\u5728\u526f\u5c4f\u542f\u52a8\u5e94\u7528(\u6d4b\u8bd5\u4e09)"

    .line 419
    .line 420
    invoke-direct {v2, v1, v3}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    const-string v0, "media_projection"

    .line 427
    .line 428
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-static {v0}, Ltb/b;->i(Ljava/lang/Object;)Landroid/media/projection/MediaProjectionManager;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->F:Landroid/media/projection/MediaProjectionManager;

    .line 437
    .line 438
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 439
    .line 440
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 441
    .line 442
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 443
    .line 444
    .line 445
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->D:Lx9/k3;

    .line 446
    .line 447
    new-instance v1, Lua/m1;

    .line 448
    .line 449
    invoke-direct {v1, p0}, Lua/m1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDisplayManager;)V

    .line 450
    .line 451
    .line 452
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 453
    .line 454
    return-void
.end method
