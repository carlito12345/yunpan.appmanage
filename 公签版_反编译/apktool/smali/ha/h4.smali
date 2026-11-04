.class public final Lha/h4;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Landroid/widget/TextView;

.field public h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final i:Lx9/g0;

.field public j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final k:Lx9/e0;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/LinearLayout;

.field public p:Landroid/widget/ImageView;

.field public q:Landroid/widget/TextView;

.field public r:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public s:Lha/g4;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00da

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lx9/g0;

    .line 8
    .line 9
    invoke-direct {p1}, Lx9/g0;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lha/h4;->i:Lx9/g0;

    .line 13
    .line 14
    new-instance p1, Lx9/e0;

    .line 15
    .line 16
    invoke-direct {p1}, Lx9/e0;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lha/h4;->k:Lx9/e0;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/h4;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/h4;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 7
    .line 8
    iget-object v1, p0, Lha/h4;->i:Lx9/g0;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v1, v2, v0}, Lg/b;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lha/h4;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

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
    iget-object v3, p0, Lha/h4;->k:Lx9/e0;

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
    invoke-virtual {p0, v3, v0, v0}, Lha/h4;->b(Ljava/lang/String;IZ)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lha/h4;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    const/4 v2, 0x0

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
    const/4 v2, 0x6

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
    iget-object v0, p0, Lha/h4;->n:Landroid/widget/LinearLayout;

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
    iget-object p3, p0, Lha/h4;->p:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lha/h4;->q:Landroid/widget/TextView;

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
    iget-object v0, p0, Lha/h4;->i:Lx9/g0;

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
    iget-object v1, p0, Lha/h4;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Lg/b;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lha/h4;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lha/h4;->a()V

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
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b05ba

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/h4;->g:Landroid/widget/TextView;

    .line 14
    .line 15
    const p1, 0x7f0b0531

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 23
    .line 24
    iput-object p1, p0, Lha/h4;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 25
    .line 26
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 27
    .line 28
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v0, v1, v2, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lha/h4;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 38
    .line 39
    iget-object v0, p0, Lha/h4;->i:Lx9/g0;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 42
    .line 43
    .line 44
    const p1, 0x7f0b047a

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 52
    .line 53
    iput-object p1, p0, Lha/h4;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 54
    .line 55
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 56
    .line 57
    const/4 v3, 0x3

    .line 58
    invoke-direct {v2, v1, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lha/h4;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 65
    .line 66
    iget-object v1, p0, Lha/h4;->k:Lx9/e0;

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 69
    .line 70
    .line 71
    const p1, 0x7f0b03f3

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object p1, p0, Lha/h4;->l:Landroid/widget/TextView;

    .line 81
    .line 82
    const p1, 0x7f0b0395

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object p1, p0, Lha/h4;->m:Landroid/widget/TextView;

    .line 92
    .line 93
    const p1, 0x7f0b03a7

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/widget/TextView;

    .line 101
    .line 102
    new-instance v2, Lha/e4;

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    invoke-direct {v2, p0, v3}, Lha/e4;-><init>(Lha/h4;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lha/h4;->l:Landroid/widget/TextView;

    .line 112
    .line 113
    new-instance v2, Lha/e4;

    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    invoke-direct {v2, p0, v3}, Lha/e4;-><init>(Lha/h4;I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lha/h4;->m:Landroid/widget/TextView;

    .line 123
    .line 124
    new-instance v2, Lha/e4;

    .line 125
    .line 126
    const/4 v3, 0x2

    .line 127
    invoke-direct {v2, p0, v3}, Lha/e4;-><init>(Lha/h4;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    const p1, 0x7f0b0549

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Landroid/widget/LinearLayout;

    .line 141
    .line 142
    iput-object p1, p0, Lha/h4;->n:Landroid/widget/LinearLayout;

    .line 143
    .line 144
    const p1, 0x7f0b0546

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Landroid/widget/ImageView;

    .line 152
    .line 153
    iput-object p1, p0, Lha/h4;->p:Landroid/widget/ImageView;

    .line 154
    .line 155
    const p1, 0x7f0b054c

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Landroid/widget/TextView;

    .line 163
    .line 164
    iput-object p1, p0, Lha/h4;->q:Landroid/widget/TextView;

    .line 165
    .line 166
    iget-object p1, p0, Lha/h4;->n:Landroid/widget/LinearLayout;

    .line 167
    .line 168
    const/16 v2, 0x8

    .line 169
    .line 170
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    const p1, 0x7f0b0517

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 181
    .line 182
    iput-object p1, p0, Lha/h4;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 183
    .line 184
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    new-instance p1, Lha/f4;

    .line 188
    .line 189
    const/4 v2, 0x0

    .line 190
    invoke-direct {p1, p0, v2}, Lha/f4;-><init>(Lha/h4;I)V

    .line 191
    .line 192
    .line 193
    iput-object p1, v0, Lc6/g;->e:Lc6/e;

    .line 194
    .line 195
    new-instance p1, Lha/f4;

    .line 196
    .line 197
    const/4 v0, 0x1

    .line 198
    invoke-direct {p1, p0, v0}, Lha/f4;-><init>(Lha/h4;I)V

    .line 199
    .line 200
    .line 201
    iput-object p1, v1, Lc6/g;->e:Lc6/e;

    .line 202
    .line 203
    iget-object p1, p0, Lha/h4;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 204
    .line 205
    new-instance v0, Lha/f4;

    .line 206
    .line 207
    const/4 v1, 0x2

    .line 208
    invoke-direct {v0, p0, v1}, Lha/f4;-><init>(Lha/h4;I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lha/h4;->j:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 215
    .line 216
    new-instance v0, Lha/f4;

    .line 217
    .line 218
    const/4 v1, 0x3

    .line 219
    invoke-direct {v0, p0, v1}, Lha/f4;-><init>(Lha/h4;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 223
    .line 224
    .line 225
    return-void
.end method
