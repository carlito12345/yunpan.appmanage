.class public Lcom/yunpan/appmanage/ui/ActivityImmersive;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic N:I


# instance fields
.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/TextView;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/n2;

.field public G:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public H:Lx9/m2;

.field public I:I

.field public K:Lha/fa;

.field public L:I

.field public final M:Ljava/util/ArrayList;


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
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->L:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->M:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->H:Lx9/m2;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e003a

    return v0
.end method

.method public final u()V
    .locals 11

    .line 1
    new-instance v4, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v6, "\u9ed8\u8ba4\u6a21\u5f0f"

    .line 7
    .line 8
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const-string v7, "\u5168\u5c4f\u6a21\u5f0f"

    .line 12
    .line 13
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const-string v8, "\u9690\u85cf\u72b6\u6001\u680f"

    .line 17
    .line 18
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string v9, "\u9690\u85cf\u5bfc\u822a\u680f"

    .line 22
    .line 23
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    new-instance v10, Lha/fa;

    .line 27
    .line 28
    new-instance v5, Lua/m2;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-direct {v5, p0, v0}, Lua/m2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImmersive;I)V

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    move-object v0, v10

    .line 36
    move-object v1, p0

    .line 37
    move-object v2, p0

    .line 38
    invoke-direct/range {v0 .. v5}, Lha/fa;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ea;)V

    .line 39
    .line 40
    .line 41
    iput-object v10, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->K:Lha/fa;

    .line 42
    .line 43
    const v0, 0x7f0b03ad

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    new-instance v1, Lua/g1;

    .line 53
    .line 54
    const/4 v2, 0x5

    .line 55
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    new-instance v1, Lha/o4;

    .line 62
    .line 63
    const/4 v2, 0x4

    .line 64
    invoke-direct {v1, v2}, Lha/o4;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 68
    .line 69
    .line 70
    const v0, 0x7f0b05c0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->C:Landroid/widget/TextView;

    .line 80
    .line 81
    const v0, 0x7f0b0417

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Landroid/widget/TextView;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->D:Landroid/widget/TextView;

    .line 91
    .line 92
    new-instance v0, Lx9/n2;

    .line 93
    .line 94
    invoke-direct {v0}, Lx9/n2;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->F:Lx9/n2;

    .line 98
    .line 99
    new-instance v1, Lx9/j1;

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    invoke-direct {v1, v6, v2}, Lx9/j1;-><init>(Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->F:Lx9/n2;

    .line 109
    .line 110
    new-instance v1, Lx9/j1;

    .line 111
    .line 112
    invoke-direct {v1, v7, v2}, Lx9/j1;-><init>(Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->F:Lx9/n2;

    .line 119
    .line 120
    new-instance v1, Lx9/j1;

    .line 121
    .line 122
    const-string v3, "\u591a\u6837\u6a21\u5f0f"

    .line 123
    .line 124
    invoke-direct {v1, v3, v2}, Lx9/j1;-><init>(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->F:Lx9/n2;

    .line 131
    .line 132
    new-instance v1, Lx9/j1;

    .line 133
    .line 134
    invoke-direct {v1, v8, v2}, Lx9/j1;-><init>(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->F:Lx9/n2;

    .line 141
    .line 142
    new-instance v1, Lx9/j1;

    .line 143
    .line 144
    invoke-direct {v1, v9, v2}, Lx9/j1;-><init>(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    const v0, 0x7f0b0500

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 158
    .line 159
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 160
    .line 161
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 162
    .line 163
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 164
    .line 165
    invoke-direct {v1, v3, v2, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 172
    .line 173
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->F:Lx9/n2;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->F:Lx9/n2;

    .line 179
    .line 180
    new-instance v1, Lua/m2;

    .line 181
    .line 182
    const/4 v2, 0x3

    .line 183
    invoke-direct {v1, p0, v2}, Lua/m2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImmersive;I)V

    .line 184
    .line 185
    .line 186
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 187
    .line 188
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 189
    .line 190
    new-instance v1, Lua/n2;

    .line 191
    .line 192
    invoke-direct {v1}, Lua/n2;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 196
    .line 197
    .line 198
    const v0, 0x7f0b04f4

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 206
    .line 207
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->G:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 208
    .line 209
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 210
    .line 211
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 212
    .line 213
    const/4 v3, 0x6

    .line 214
    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 218
    .line 219
    .line 220
    new-instance v0, Lx9/m2;

    .line 221
    .line 222
    invoke-direct {v0, p0}, Lx9/m2;-><init>(Lda/g;)V

    .line 223
    .line 224
    .line 225
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->H:Lx9/m2;

    .line 226
    .line 227
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->G:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->H:Lx9/m2;

    .line 233
    .line 234
    new-instance v1, Lua/m2;

    .line 235
    .line 236
    const/4 v2, 0x1

    .line 237
    invoke-direct {v1, p0, v2}, Lua/m2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImmersive;I)V

    .line 238
    .line 239
    .line 240
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 241
    .line 242
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityImmersive;->G:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 243
    .line 244
    new-instance v1, Lua/o2;

    .line 245
    .line 246
    invoke-direct {v1}, Lua/o2;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 250
    .line 251
    .line 252
    new-instance v0, Lua/m2;

    .line 253
    .line 254
    const/4 v1, 0x2

    .line 255
    invoke-direct {v0, p0, v1}, Lua/m2;-><init>(Lcom/yunpan/appmanage/ui/ActivityImmersive;I)V

    .line 256
    .line 257
    .line 258
    new-instance v1, Lmc/c;

    .line 259
    .line 260
    const/4 v2, 0x0

    .line 261
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 265
    .line 266
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    new-instance v1, Lka/c;

    .line 279
    .line 280
    const/16 v2, 0x12

    .line 281
    .line 282
    invoke-direct {v1, v2, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 286
    .line 287
    .line 288
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lma/b;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-direct {v0, p0, v1, p1}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

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
    new-instance v0, Lha/m6;

    .line 29
    .line 30
    const/16 v1, 0x9

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lha/m6;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
