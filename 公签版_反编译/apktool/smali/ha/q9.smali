.class public final Lha/q9;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lea/e;

.field public final h:Lz7/s;

.field public i:I

.field public j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final k:Lx9/m0;

.field public l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final m:Lx9/u0;

.field public n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final p:Lx9/t2;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/h8;)V
    .locals 2

    const v0, 0x7f0e00cd

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;IZ)V

    .line 2
    new-instance p1, Lz7/s;

    invoke-direct {p1}, Lz7/s;-><init>()V

    iput-object p1, p0, Lha/q9;->h:Lz7/s;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lha/q9;->i:I

    .line 4
    new-instance p1, Lx9/m0;

    invoke-direct {p1}, Lx9/m0;-><init>()V

    iput-object p1, p0, Lha/q9;->k:Lx9/m0;

    .line 5
    new-instance p1, Lx9/u0;

    invoke-direct {p1}, Lx9/u0;-><init>()V

    iput-object p1, p0, Lha/q9;->m:Lx9/u0;

    .line 6
    new-instance p1, Lx9/t2;

    invoke-direct {p1}, Lx9/t2;-><init>()V

    iput-object p1, p0, Lha/q9;->p:Lx9/t2;

    .line 7
    iput-object p3, p0, Lha/q9;->g:Lea/e;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lz7/s;Lha/n8;)V
    .locals 2

    const v0, 0x7f0e00cd

    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0, v1}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;IZ)V

    .line 9
    new-instance p1, Lz7/s;

    invoke-direct {p1}, Lz7/s;-><init>()V

    iput-object p1, p0, Lha/q9;->h:Lz7/s;

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lha/q9;->i:I

    .line 11
    new-instance p1, Lx9/m0;

    invoke-direct {p1}, Lx9/m0;-><init>()V

    iput-object p1, p0, Lha/q9;->k:Lx9/m0;

    .line 12
    new-instance p1, Lx9/u0;

    invoke-direct {p1}, Lx9/u0;-><init>()V

    iput-object p1, p0, Lha/q9;->m:Lx9/u0;

    .line 13
    new-instance p1, Lx9/t2;

    invoke-direct {p1}, Lx9/t2;-><init>()V

    iput-object p1, p0, Lha/q9;->p:Lx9/t2;

    if-eqz p3, :cond_0

    .line 14
    iput-object p3, p0, Lha/q9;->h:Lz7/s;

    .line 15
    :cond_0
    iput-object p4, p0, Lha/q9;->g:Lea/e;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iput p1, p0, Lha/q9;->i:I

    .line 2
    .line 3
    iget-object v0, p0, Lha/q9;->m:Lx9/u0;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lx9/u0;->F(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 13
    .line 14
    iget p1, p1, Lcom/yunpan/appmanage/bean/StrIntBoolBean;->intValue:I

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lha/q9;->h:Lz7/s;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "maps"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    :goto_0
    iget-object v2, p1, Lz7/o;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-ge v1, v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Lz7/o;->l(I)Lz7/p;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lz7/p;->g()Lz7/s;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lha/q9;->p:Lx9/t2;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b0500

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/q9;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 14
    .line 15
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 16
    .line 17
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v0, v1, v2, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lha/q9;->k:Lx9/m0;

    .line 27
    .line 28
    const-string v0, "\u6dfb\u52a0\u6309\u952e"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "\u6dfb\u52a0\u5e38\u7528\u6309\u952e"

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "\u6dfb\u52a0\u6620\u5c04\u64cd\u4f5c"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "\u786e\u5b9a"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const-string v0, "\u53d6\u6d88"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lha/q9;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lnh/b;->y()Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v3, Lha/o9;

    .line 63
    .line 64
    invoke-direct {v3, p0, v0}, Lha/o9;-><init>(Lha/q9;Ljava/util/ArrayList;)V

    .line 65
    .line 66
    .line 67
    iput-object v3, p1, Lc6/g;->e:Lc6/e;

    .line 68
    .line 69
    const p1, 0x7f0b0505

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 77
    .line 78
    iput-object p1, p0, Lha/q9;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 79
    .line 80
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    invoke-direct {v0, v1, v3, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lha/q9;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 90
    .line 91
    iget-object v0, p0, Lha/q9;->m:Lx9/u0;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 94
    .line 95
    .line 96
    new-instance p1, Lha/p9;

    .line 97
    .line 98
    const/4 v4, 0x0

    .line 99
    invoke-direct {p1, p0, v4}, Lha/p9;-><init>(Lha/q9;I)V

    .line 100
    .line 101
    .line 102
    iput-object p1, v0, Lc6/g;->e:Lc6/e;

    .line 103
    .line 104
    new-instance p1, Lha/p9;

    .line 105
    .line 106
    const/4 v4, 0x1

    .line 107
    invoke-direct {p1, p0, v4}, Lha/p9;-><init>(Lha/q9;I)V

    .line 108
    .line 109
    .line 110
    iput-object p1, v0, Lc6/g;->f:Lc6/f;

    .line 111
    .line 112
    const p1, 0x7f0b0506

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 120
    .line 121
    iput-object p1, p0, Lha/q9;->n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 122
    .line 123
    new-instance v4, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 124
    .line 125
    invoke-direct {v4, v1, v3, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 129
    .line 130
    .line 131
    iget-object p1, p0, Lha/q9;->n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 132
    .line 133
    iget-object v1, p0, Lha/q9;->p:Lx9/t2;

    .line 134
    .line 135
    invoke-virtual {p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Ld6/a;

    .line 139
    .line 140
    invoke-direct {p1}, Ld6/a;-><init>()V

    .line 141
    .line 142
    .line 143
    const/4 v3, 0x3

    .line 144
    iput v3, p1, Ld6/a;->h:I

    .line 145
    .line 146
    iput-boolean v2, p1, Ld6/a;->g:Z

    .line 147
    .line 148
    iget-object v3, p0, Lha/q9;->n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 149
    .line 150
    invoke-virtual {p1, v3}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v1}, Ld6/a;->g(Le6/a;)V

    .line 154
    .line 155
    .line 156
    new-instance p1, Lha/p9;

    .line 157
    .line 158
    const/4 v3, 0x2

    .line 159
    invoke-direct {p1, p0, v3}, Lha/p9;-><init>(Lha/q9;I)V

    .line 160
    .line 161
    .line 162
    iput-object p1, v1, Lc6/g;->e:Lc6/e;

    .line 163
    .line 164
    iget-object p1, p0, Lha/q9;->h:Lz7/s;

    .line 165
    .line 166
    iget-object v1, p1, Lz7/s;->a:Lb8/n;

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_3

    .line 173
    .line 174
    new-instance v1, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 180
    .line 181
    .line 182
    iget-object v1, p1, Lz7/s;->a:Lb8/n;

    .line 183
    .line 184
    invoke-virtual {v1}, Lb8/n;->keySet()Ljava/util/Set;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Lb8/l;

    .line 189
    .line 190
    iget-object v1, v1, Lb8/l;->b:Ljava/util/Map;

    .line 191
    .line 192
    check-cast v1, Lb8/n;

    .line 193
    .line 194
    iget-object v3, v1, Lb8/n;->f:Lb8/m;

    .line 195
    .line 196
    iget-object v3, v3, Lb8/m;->d:Lb8/m;

    .line 197
    .line 198
    iget v4, v1, Lb8/n;->e:I

    .line 199
    .line 200
    :goto_0
    iget-object v5, v1, Lb8/n;->f:Lb8/m;

    .line 201
    .line 202
    if-eq v3, v5, :cond_2

    .line 203
    .line 204
    if-eq v3, v5, :cond_1

    .line 205
    .line 206
    iget v5, v1, Lb8/n;->e:I

    .line 207
    .line 208
    if-ne v5, v4, :cond_0

    .line 209
    .line 210
    iget-object v5, v3, Lb8/m;->d:Lb8/m;

    .line 211
    .line 212
    iget-object v3, v3, Lb8/m;->f:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v3, Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {p1, v3}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    new-instance v7, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 225
    .line 226
    const-string v8, "name"

    .line 227
    .line 228
    invoke-virtual {v6, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-virtual {v6}, Lz7/p;->i()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    invoke-direct {v7, v6, v3}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    move-object v3, v5

    .line 247
    goto :goto_0

    .line 248
    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    .line 249
    .line 250
    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 251
    .line 252
    .line 253
    throw p1

    .line 254
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 255
    .line 256
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 257
    .line 258
    .line 259
    throw p1

    .line 260
    :cond_2
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-lez p1, :cond_3

    .line 265
    .line 266
    invoke-virtual {p0, v2}, Lha/q9;->a(I)V

    .line 267
    .line 268
    .line 269
    :cond_3
    iget-object p1, p0, Lha/q9;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 270
    .line 271
    new-instance v0, Lha/p9;

    .line 272
    .line 273
    const/4 v1, 0x3

    .line 274
    invoke-direct {v0, p0, v1}, Lha/p9;-><init>(Lha/q9;I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 278
    .line 279
    .line 280
    iget-object p1, p0, Lha/q9;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 281
    .line 282
    new-instance v0, Lha/p9;

    .line 283
    .line 284
    const/4 v1, 0x4

    .line 285
    invoke-direct {v0, p0, v1}, Lha/p9;-><init>(Lha/q9;I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 289
    .line 290
    .line 291
    return-void
.end method
