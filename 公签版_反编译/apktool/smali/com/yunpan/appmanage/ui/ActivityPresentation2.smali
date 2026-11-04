.class public Lcom/yunpan/appmanage/ui/ActivityPresentation2;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic H:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/n;

.field public E:Ljava/util/HashSet;

.field public F:Ljava/lang/String;

.field public G:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->F:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e004d

    return v0
.end method

.method public final u()V
    .locals 15

    .line 1
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 2
    .line 3
    const-string v1, "display"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "\u5173\u95ed\u6b64\u5e94\u7528(\u5f3a\u5236\u505c\u6b62)"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    array-length v3, v0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x0

    .line 33
    :goto_0
    if-ge v5, v3, :cond_1

    .line 34
    .line 35
    aget-object v6, v0, v5

    .line 36
    .line 37
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    new-instance v7, Landroid/util/DisplayMetrics;

    .line 41
    .line 42
    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 46
    .line 47
    .line 48
    new-instance v8, Landroid/util/DisplayMetrics;

    .line 49
    .line 50
    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 54
    .line 55
    .line 56
    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 57
    .line 58
    iget v10, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 59
    .line 60
    const-string v11, "   "

    .line 61
    .line 62
    const-string v12, "   dpi:"

    .line 63
    .line 64
    const-string v13, "ID:"

    .line 65
    .line 66
    const-string v14, "*"

    .line 67
    .line 68
    if-ne v9, v10, :cond_0

    .line 69
    .line 70
    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 71
    .line 72
    iget v10, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 73
    .line 74
    if-ne v9, v10, :cond_0

    .line 75
    .line 76
    new-instance v9, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v6, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 92
    .line 93
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 100
    .line 101
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget v6, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 108
    .line 109
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget v6, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 136
    .line 137
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 144
    .line 145
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget v6, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 152
    .line 153
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v6, "\u53ef\u89c6\u533a("

    .line 157
    .line 158
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 162
    .line 163
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget v6, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 170
    .line 171
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v6, ")"

    .line 175
    .line 176
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_1
    const v0, 0x7f0b0517

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 198
    .line 199
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 200
    .line 201
    const v0, 0x7f0b03ad

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    new-instance v3, Lua/s5;

    .line 209
    .line 210
    const/4 v5, 0x0

    .line 211
    invoke-direct {v3, p0, v5}, Lua/s5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPresentation2;I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    const v0, 0x7f0b03a7

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    new-instance v3, Lua/s5;

    .line 225
    .line 226
    const/4 v5, 0x1

    .line 227
    invoke-direct {v3, p0, v5}, Lua/s5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPresentation2;I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    .line 232
    .line 233
    const v0, 0x7f0b04f1

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 241
    .line 242
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 243
    .line 244
    new-instance v3, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 245
    .line 246
    iget-object v5, p0, Lda/g;->A:Lda/g;

    .line 247
    .line 248
    const/4 v6, 0x1

    .line 249
    invoke-direct {v3, v5, v6, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 253
    .line 254
    .line 255
    new-instance v0, Lx9/n;

    .line 256
    .line 257
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 258
    .line 259
    const/4 v4, 0x2

    .line 260
    invoke-direct {v0, v3, v4}, Lx9/n;-><init>(Lda/g;I)V

    .line 261
    .line 262
    .line 263
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->D:Lx9/n;

    .line 264
    .line 265
    iget-object v3, p0, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 266
    .line 267
    invoke-virtual {v3, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->D:Lx9/n;

    .line 271
    .line 272
    new-instance v3, Lcom/hjq/permissions/b;

    .line 273
    .line 274
    const/16 v4, 0xe

    .line 275
    .line 276
    invoke-direct {v3, p0, v1, v2, v4}, Lcom/hjq/permissions/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 277
    .line 278
    .line 279
    iput-object v3, v0, Lc6/g;->e:Lc6/e;

    .line 280
    .line 281
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->x()V

    .line 282
    .line 283
    .line 284
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPresentation2;->E:Ljava/util/HashSet;

    .line 7
    .line 8
    new-instance v0, Lua/g5;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lmc/c;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lua/t5;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    invoke-direct {v1, p0, v2}, Lua/t5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPresentation2;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
