.class public final Lha/vb;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Landroid/widget/TextView;

.field public h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final i:Lx9/g2;

.field public j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final k:Lx9/g0;

.field public l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public m:Lx9/f0;

.field public n:Landroid/widget/LinearLayout;

.field public p:Landroid/widget/ImageView;

.field public q:Landroid/widget/TextView;

.field public r:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public s:Lea/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00ed

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
    iput-object p1, p0, Lha/vb;->i:Lx9/g2;

    .line 13
    .line 14
    new-instance p1, Lx9/g0;

    .line 15
    .line 16
    invoke-direct {p1}, Lx9/g0;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lha/vb;->k:Lx9/g0;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/vb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/vb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 7
    .line 8
    iget-object v1, p0, Lha/vb;->k:Lx9/g0;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v1, v2, v0}, Lg/b;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lha/vb;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lha/vb;->m:Lx9/f0;

    .line 20
    .line 21
    new-instance v3, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v3}, Lc6/g;->E(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    const-string v3, ""

    .line 31
    .line 32
    invoke-virtual {p0, v3, v0, v0}, Lha/vb;->b(Ljava/lang/String;IZ)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lha/vb;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    const/4 v2, 0x4

    .line 54
    invoke-direct {v1, v0, v2}, Lha/d4;-><init>(Lx9/w3;I)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lmc/c;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-direct {v0, v2, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v1, Lha/p0;

    .line 78
    .line 79
    const/16 v2, 0x14

    .line 80
    .line 81
    invoke-direct {v1, v2, p0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final b(Ljava/lang/String;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/vb;->n:Landroid/widget/LinearLayout;

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
    iget-object p3, p0, Lha/vb;->p:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lha/vb;->q:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;Lea/f;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lha/a4;->show()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lha/vb;->i:Lx9/g2;

    .line 5
    .line 6
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p1, "\u672a\u627e\u5230\u5b58\u50a8\u8bbe\u5907"

    .line 13
    .line 14
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iput-object p2, p0, Lha/vb;->s:Lea/f;

    .line 22
    .line 23
    iget-object p2, p0, Lha/vb;->g:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lx9/w3;

    .line 34
    .line 35
    iget-object p2, p0, Lha/vb;->k:Lx9/g0;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lha/vb;->a()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/vb;->k:Lx9/g0;

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
    iget-object v1, p0, Lha/vb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Lg/b;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lha/vb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lha/vb;->a()V

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
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b0559

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v1}, Lif/a;->R(Landroid/content/Context;)Landroid/graphics/Point;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    mul-int/lit8 v3, v3, 0x2

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    div-int/2addr v3, v5

    .line 30
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 31
    .line 32
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 33
    .line 34
    mul-int/lit8 v2, v2, 0x3

    .line 35
    .line 36
    div-int/lit8 v2, v2, 0x4

    .line 37
    .line 38
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    const p1, 0x7f0b05ba

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object p1, p0, Lha/vb;->g:Landroid/widget/TextView;

    .line 53
    .line 54
    const p1, 0x7f0b055e

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 62
    .line 63
    iput-object p1, p0, Lha/vb;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 64
    .line 65
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-direct {v0, v1, v2, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lha/vb;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 75
    .line 76
    iget-object v0, p0, Lha/vb;->i:Lx9/g2;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 79
    .line 80
    .line 81
    sget-object p1, Lfa/g0;->a:Lfa/h0;

    .line 82
    .line 83
    invoke-virtual {p1}, Lfa/h0;->d()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_0

    .line 92
    .line 93
    new-instance v3, Lx9/w3;

    .line 94
    .line 95
    invoke-virtual {p1}, Lfa/h0;->d()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v6, "\u5185\u90e8\u5b58\u50a8"

    .line 100
    .line 101
    invoke-direct {v3, v6, p1}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v3}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_0
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 108
    .line 109
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 110
    .line 111
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->v:Ljava/util/HashSet;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_1

    .line 122
    .line 123
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Ljava/lang/String;

    .line 128
    .line 129
    new-instance v6, Lx9/w3;

    .line 130
    .line 131
    const-string v7, "U\u76d8"

    .line 132
    .line 133
    invoke-direct {v6, v7, v3}, Lx9/w3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v6}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    const/16 v3, 0x8

    .line 145
    .line 146
    if-ge p1, v4, :cond_2

    .line 147
    .line 148
    iget-object p1, p0, Lha/vb;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 149
    .line 150
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    :cond_2
    new-instance p1, Lha/ub;

    .line 154
    .line 155
    invoke-direct {p1, p0, v2}, Lha/ub;-><init>(Lha/vb;I)V

    .line 156
    .line 157
    .line 158
    iput-object p1, v0, Lc6/g;->e:Lc6/e;

    .line 159
    .line 160
    const p1, 0x7f0b0531

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 168
    .line 169
    iput-object p1, p0, Lha/vb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 170
    .line 171
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 172
    .line 173
    invoke-direct {v0, v1, v2, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lha/vb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 180
    .line 181
    iget-object v0, p0, Lha/vb;->k:Lx9/g0;

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 184
    .line 185
    .line 186
    const p1, 0x7f0b047a

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 194
    .line 195
    iput-object p1, p0, Lha/vb;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 196
    .line 197
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 198
    .line 199
    invoke-direct {v2, v1, v4}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 203
    .line 204
    .line 205
    new-instance p1, Lx9/f0;

    .line 206
    .line 207
    invoke-direct {p1, v1}, Lx9/f0;-><init>(Landroid/content/Context;)V

    .line 208
    .line 209
    .line 210
    iput-object p1, p0, Lha/vb;->m:Lx9/f0;

    .line 211
    .line 212
    iget-object v1, p0, Lha/vb;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 213
    .line 214
    invoke-virtual {v1, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 215
    .line 216
    .line 217
    const p1, 0x7f0b0549

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    check-cast p1, Landroid/widget/LinearLayout;

    .line 225
    .line 226
    iput-object p1, p0, Lha/vb;->n:Landroid/widget/LinearLayout;

    .line 227
    .line 228
    const p1, 0x7f0b0546

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Landroid/widget/ImageView;

    .line 236
    .line 237
    iput-object p1, p0, Lha/vb;->p:Landroid/widget/ImageView;

    .line 238
    .line 239
    const p1, 0x7f0b054c

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    check-cast p1, Landroid/widget/TextView;

    .line 247
    .line 248
    iput-object p1, p0, Lha/vb;->q:Landroid/widget/TextView;

    .line 249
    .line 250
    iget-object p1, p0, Lha/vb;->n:Landroid/widget/LinearLayout;

    .line 251
    .line 252
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    .line 254
    .line 255
    const p1, 0x7f0b0517

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 263
    .line 264
    iput-object p1, p0, Lha/vb;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 265
    .line 266
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    new-instance p1, Lha/ub;

    .line 270
    .line 271
    const/4 v1, 0x1

    .line 272
    invoke-direct {p1, p0, v1}, Lha/ub;-><init>(Lha/vb;I)V

    .line 273
    .line 274
    .line 275
    iput-object p1, v0, Lc6/g;->e:Lc6/e;

    .line 276
    .line 277
    iget-object p1, p0, Lha/vb;->m:Lx9/f0;

    .line 278
    .line 279
    new-instance v0, Lha/ub;

    .line 280
    .line 281
    invoke-direct {v0, p0, v4}, Lha/ub;-><init>(Lha/vb;I)V

    .line 282
    .line 283
    .line 284
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 285
    .line 286
    iget-object p1, p0, Lha/vb;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 287
    .line 288
    new-instance v0, Lha/ub;

    .line 289
    .line 290
    invoke-direct {v0, p0, v5}, Lha/ub;-><init>(Lha/vb;I)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 294
    .line 295
    .line 296
    return-void
.end method
