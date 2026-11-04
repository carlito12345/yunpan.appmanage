.class public final Lha/b5;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Landroid/widget/TextView;

.field public h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final i:Lx9/g2;

.field public j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final k:Lx9/g0;

.field public l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final m:Lx9/e0;

.field public n:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/LinearLayout;

.field public r:Landroid/widget/ImageView;

.field public s:Landroid/widget/TextView;

.field public t:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public v:Lua/g6;

.field public w:Landroid/content/SharedPreferences;

.field public x:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e009d

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lx9/g2;

    .line 8
    .line 9
    invoke-direct {p1}, Lx9/g2;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lha/b5;->i:Lx9/g2;

    .line 13
    .line 14
    new-instance p1, Lx9/g0;

    .line 15
    .line 16
    invoke-direct {p1}, Lx9/g0;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lha/b5;->k:Lx9/g0;

    .line 20
    .line 21
    new-instance p1, Lx9/e0;

    .line 22
    .line 23
    invoke-direct {p1}, Lx9/e0;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lha/b5;->m:Lx9/e0;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/b5;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/b5;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 7
    .line 8
    iget-object v1, p0, Lha/b5;->k:Lx9/g0;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v1, v2, v0}, Lg/b;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lha/b5;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lha/b5;->m:Lx9/e0;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    const-string v3, ""

    .line 31
    .line 32
    invoke-virtual {p0, v3, v0, v0}, Lha/b5;->b(Ljava/lang/String;IZ)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lha/b5;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sub-int/2addr v0, v2

    .line 45
    invoke-virtual {v1, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lx9/w3;

    .line 50
    .line 51
    new-instance v1, Lha/d4;

    .line 52
    .line 53
    invoke-direct {v1, v0, v2}, Lha/d4;-><init>(Lx9/w3;I)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Lmc/c;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-direct {v0, v2, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Lha/p0;

    .line 77
    .line 78
    const/16 v2, 0x8

    .line 79
    .line 80
    invoke-direct {v1, v2, p0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final b(Ljava/lang/String;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/b5;->q:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v1, 0x8

    .line 8
    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    iget-object p3, p0, Lha/b5;->r:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lha/b5;->s:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/b5;->k:Lx9/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-le v1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v1, v2

    .line 15
    invoke-virtual {v0, v1}, Lc6/g;->C(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lha/b5;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Lg/b;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lha/b5;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lha/b5;->a()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    const-class p1, Lha/b5;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v3, p0, Lha/a4;->b:Landroid/content/Context;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lha/b5;->w:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lha/b5;->x:Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    const p1, 0x7f0b05ba

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Lha/b5;->g:Landroid/widget/TextView;

    .line 38
    .line 39
    const p1, 0x7f0b055e

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 47
    .line 48
    iput-object p1, p0, Lha/b5;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 49
    .line 50
    new-instance v5, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 51
    .line 52
    invoke-direct {v5, v3, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lha/b5;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 59
    .line 60
    iget-object v5, p0, Lha/b5;->i:Lx9/g2;

    .line 61
    .line 62
    invoke-virtual {p1, v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 63
    .line 64
    .line 65
    sget-object p1, Lfa/g0;->a:Lfa/h0;

    .line 66
    .line 67
    invoke-virtual {p1}, Lfa/h0;->d()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_0

    .line 76
    .line 77
    new-instance v6, Lx9/w3;

    .line 78
    .line 79
    invoke-virtual {p1}, Lfa/h0;->d()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v7, "\u5185\u90e8\u5b58\u50a8"

    .line 84
    .line 85
    invoke-direct {v6, v7, p1}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    new-instance p1, Lx9/w3;

    .line 92
    .line 93
    const-string v6, "\u7cfb\u7edf\u6839"

    .line 94
    .line 95
    const-string v7, "/"

    .line 96
    .line 97
    invoke-direct {p1, v6, v7}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 104
    .line 105
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_1

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    check-cast v6, Ljava/lang/String;

    .line 124
    .line 125
    new-instance v7, Lx9/w3;

    .line 126
    .line 127
    const-string v8, "U\u76d8"

    .line 128
    .line 129
    invoke-direct {v7, v8, v6}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v7}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v5}, Lc6/g;->b()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    const/16 v6, 0x8

    .line 141
    .line 142
    if-ge p1, v2, :cond_2

    .line 143
    .line 144
    iget-object p1, p0, Lha/b5;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 145
    .line 146
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    :cond_2
    new-instance p1, Lha/z4;

    .line 150
    .line 151
    invoke-direct {p1, p0, v4}, Lha/z4;-><init>(Lha/b5;I)V

    .line 152
    .line 153
    .line 154
    iput-object p1, v5, Lc6/g;->e:Lc6/e;

    .line 155
    .line 156
    const p1, 0x7f0b0531

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 164
    .line 165
    iput-object p1, p0, Lha/b5;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 166
    .line 167
    new-instance v5, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 168
    .line 169
    invoke-direct {v5, v3, v4, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Lha/b5;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 176
    .line 177
    iget-object v5, p0, Lha/b5;->k:Lx9/g0;

    .line 178
    .line 179
    invoke-virtual {p1, v5}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 180
    .line 181
    .line 182
    const p1, 0x7f0b047a

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 190
    .line 191
    iput-object p1, p0, Lha/b5;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 192
    .line 193
    new-instance v7, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 194
    .line 195
    invoke-direct {v7, v3, v1}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lha/b5;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 202
    .line 203
    iget-object v3, p0, Lha/b5;->m:Lx9/e0;

    .line 204
    .line 205
    invoke-virtual {p1, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 206
    .line 207
    .line 208
    const p1, 0x7f0b03f3

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Landroid/widget/TextView;

    .line 216
    .line 217
    iput-object p1, p0, Lha/b5;->n:Landroid/widget/TextView;

    .line 218
    .line 219
    const p1, 0x7f0b0395

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    check-cast p1, Landroid/widget/TextView;

    .line 227
    .line 228
    iput-object p1, p0, Lha/b5;->p:Landroid/widget/TextView;

    .line 229
    .line 230
    const p1, 0x7f0b03a7

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    check-cast p1, Landroid/widget/TextView;

    .line 238
    .line 239
    new-instance v7, Lha/a5;

    .line 240
    .line 241
    invoke-direct {v7, p0, v4}, Lha/a5;-><init>(Lha/b5;I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lha/b5;->n:Landroid/widget/TextView;

    .line 248
    .line 249
    new-instance v4, Lha/a5;

    .line 250
    .line 251
    invoke-direct {v4, p0, v0}, Lha/a5;-><init>(Lha/b5;I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lha/b5;->p:Landroid/widget/TextView;

    .line 258
    .line 259
    new-instance v4, Lha/a5;

    .line 260
    .line 261
    invoke-direct {v4, p0, v2}, Lha/a5;-><init>(Lha/b5;I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    .line 266
    .line 267
    const p1, 0x7f0b0549

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    check-cast p1, Landroid/widget/LinearLayout;

    .line 275
    .line 276
    iput-object p1, p0, Lha/b5;->q:Landroid/widget/LinearLayout;

    .line 277
    .line 278
    const p1, 0x7f0b0546

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    check-cast p1, Landroid/widget/ImageView;

    .line 286
    .line 287
    iput-object p1, p0, Lha/b5;->r:Landroid/widget/ImageView;

    .line 288
    .line 289
    const p1, 0x7f0b054c

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    check-cast p1, Landroid/widget/TextView;

    .line 297
    .line 298
    iput-object p1, p0, Lha/b5;->s:Landroid/widget/TextView;

    .line 299
    .line 300
    iget-object p1, p0, Lha/b5;->q:Landroid/widget/LinearLayout;

    .line 301
    .line 302
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 303
    .line 304
    .line 305
    const p1, 0x7f0b0517

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 313
    .line 314
    iput-object p1, p0, Lha/b5;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 315
    .line 316
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    new-instance p1, Lha/z4;

    .line 320
    .line 321
    invoke-direct {p1, p0, v0}, Lha/z4;-><init>(Lha/b5;I)V

    .line 322
    .line 323
    .line 324
    iput-object p1, v5, Lc6/g;->e:Lc6/e;

    .line 325
    .line 326
    new-instance p1, Lha/z4;

    .line 327
    .line 328
    invoke-direct {p1, p0, v2}, Lha/z4;-><init>(Lha/b5;I)V

    .line 329
    .line 330
    .line 331
    iput-object p1, v3, Lc6/g;->e:Lc6/e;

    .line 332
    .line 333
    iget-object p1, p0, Lha/b5;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 334
    .line 335
    new-instance v0, Lha/z4;

    .line 336
    .line 337
    invoke-direct {v0, p0, v1}, Lha/z4;-><init>(Lha/b5;I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 341
    .line 342
    .line 343
    iget-object p1, p0, Lha/b5;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 344
    .line 345
    new-instance v0, Lha/z4;

    .line 346
    .line 347
    const/4 v1, 0x4

    .line 348
    invoke-direct {v0, p0, v1}, Lha/z4;-><init>(Lha/b5;I)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 352
    .line 353
    .line 354
    return-void
.end method
