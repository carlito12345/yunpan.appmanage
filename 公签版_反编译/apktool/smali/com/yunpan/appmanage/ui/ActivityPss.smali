.class public Lcom/yunpan/appmanage/ui/ActivityPss;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic M:I


# instance fields
.field public C:Landroidx/recyclerview/widget/RecyclerView;

.field public D:Lx9/c0;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/h4;

.field public G:Ljava/util/ArrayList;

.field public final H:Ljava/util/ArrayList;

.field public final I:Ljava/util/ArrayList;

.field public K:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public L:Landroid/widget/LinearLayout;


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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->G:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->H:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->I:Ljava/util/ArrayList;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->F:Lx9/h4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->F:Lx9/h4;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->G:Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0023

    return v0
.end method

.method public final u()V
    .locals 5

    .line 1
    const v0, 0x7f0b0517

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->K:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0b054a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/LinearLayout;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->L:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0b03ad

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lua/x5;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v1, p0, v2}, Lua/x5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPss;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    const v0, 0x7f0b03a7

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lua/x5;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-direct {v1, p0, v2}, Lua/x5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPss;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    const v0, 0x7f0b037d

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Lua/x5;

    .line 71
    .line 72
    const/4 v2, 0x2

    .line 73
    invoke-direct {v1, p0, v2}, Lua/x5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPss;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    const v0, 0x7f0b050e

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    .line 88
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .line 90
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 91
    .line 92
    const/4 v2, 0x0

    .line 93
    invoke-direct {v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lx9/c0;

    .line 100
    .line 101
    invoke-direct {v0}, Lx9/c0;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->D:Lx9/c0;

    .line 105
    .line 106
    const-string v1, "\u8be6\u7ec6"

    .line 107
    .line 108
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->D:Lx9/c0;

    .line 112
    .line 113
    const-string v1, "\u7cbe\u7b80"

    .line 114
    .line 115
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->D:Lx9/c0;

    .line 119
    .line 120
    const-string v1, "\u5408\u5e76\u8fdb\u7a0b"

    .line 121
    .line 122
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->D:Lx9/c0;

    .line 126
    .line 127
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 128
    .line 129
    iget v1, v1, Lcom/yunpan/appmanage/util/w;->Q:I

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lx9/c0;->G(I)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->D:Lx9/c0;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->D:Lx9/c0;

    .line 142
    .line 143
    new-instance v1, Lua/w5;

    .line 144
    .line 145
    const/4 v3, 0x1

    .line 146
    invoke-direct {v1, p0, v3}, Lua/w5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPss;I)V

    .line 147
    .line 148
    .line 149
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 150
    .line 151
    const v0, 0x7f0b04f4

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 159
    .line 160
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 161
    .line 162
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 163
    .line 164
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 165
    .line 166
    const/4 v4, 0x1

    .line 167
    invoke-direct {v1, v3, v4, v2}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Lx9/h4;

    .line 174
    .line 175
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 176
    .line 177
    invoke-direct {v0, v1}, Lx9/h4;-><init>(Lda/g;)V

    .line 178
    .line 179
    .line 180
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->F:Lx9/h4;

    .line 181
    .line 182
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 183
    .line 184
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->F:Lx9/h4;

    .line 188
    .line 189
    new-instance v1, Lua/w5;

    .line 190
    .line 191
    const/4 v2, 0x2

    .line 192
    invoke-direct {v1, p0, v2}, Lua/w5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPss;I)V

    .line 193
    .line 194
    .line 195
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 196
    .line 197
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 198
    .line 199
    new-instance v1, Lua/v0;

    .line 200
    .line 201
    const/16 v2, 0x1a

    .line 202
    .line 203
    invoke-direct {v1, v2}, Lua/v0;-><init>(I)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityPss;->x()V

    .line 210
    .line 211
    .line 212
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->G:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->I:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPss;->H:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lua/w5;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p0, v1}, Lua/w5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPss;I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lmc/c;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Lka/c;

    .line 43
    .line 44
    const/16 v2, 0x18

    .line 45
    .line 46
    invoke-direct {v1, v2, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
