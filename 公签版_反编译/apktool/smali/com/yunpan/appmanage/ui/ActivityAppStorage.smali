.class public Lcom/yunpan/appmanage/ui/ActivityAppStorage;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic H:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/x;

.field public E:Ljava/util/ArrayList;

.field public F:Lha/o2;

.field public G:Landroidx/constraintlayout/widget/ConstraintLayout;


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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->E:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

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
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->F:Lha/o2;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->E:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 29
    .line 30
    .line 31
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onReceiveMsg(Lja/a;)V
    .locals 2
    .annotation runtime Lkh/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    new-instance v0, Lma/b;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, p0, v1, p1}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lmc/c;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {p1, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance v0, Lua/b0;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, p0, v1}, Lua/b0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppStorage;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0024

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
    const v0, 0x7f0b0517

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0b03ad

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lua/z;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, p0, v2}, Lua/z;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppStorage;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    const v0, 0x7f0b03ca

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/LinearLayout;

    .line 48
    .line 49
    new-instance v1, Lua/z;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-direct {v1, p0, v2}, Lua/z;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppStorage;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    const v0, 0x7f0b03cc

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/widget/LinearLayout;

    .line 66
    .line 67
    new-instance v1, Lua/z;

    .line 68
    .line 69
    const/4 v2, 0x2

    .line 70
    invoke-direct {v1, p0, v2}, Lua/z;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppStorage;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    const v0, 0x7f0b03cd

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/LinearLayout;

    .line 84
    .line 85
    new-instance v1, Lua/z;

    .line 86
    .line 87
    const/4 v2, 0x3

    .line 88
    invoke-direct {v1, p0, v2}, Lua/z;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppStorage;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    const v0, 0x7f0b03cb

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/LinearLayout;

    .line 102
    .line 103
    new-instance v1, Lua/z;

    .line 104
    .line 105
    const/4 v2, 0x4

    .line 106
    invoke-direct {v1, p0, v2}, Lua/z;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppStorage;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Lha/o2;

    .line 113
    .line 114
    new-instance v1, Ll5/y;

    .line 115
    .line 116
    const/16 v2, 0x18

    .line 117
    .line 118
    invoke-direct {v1, v2, p0}, Ll5/y;-><init>(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    const/4 v2, 0x1

    .line 122
    invoke-direct {v0, p0, p0, v2, v1}, Lha/o2;-><init>(Lda/g;Lda/g;ILl5/y;)V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->F:Lha/o2;

    .line 126
    .line 127
    new-instance v0, Lx9/x;

    .line 128
    .line 129
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 130
    .line 131
    invoke-direct {v0, v1}, Lx9/x;-><init>(Lda/g;)V

    .line 132
    .line 133
    .line 134
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 135
    .line 136
    const v0, 0x7f0b04f4

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 144
    .line 145
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 146
    .line 147
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 148
    .line 149
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 150
    .line 151
    const/4 v4, 0x0

    .line 152
    invoke-direct {v1, v3, v2, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 159
    .line 160
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->D:Lx9/x;

    .line 166
    .line 167
    new-instance v1, Lua/a0;

    .line 168
    .line 169
    invoke-direct {v1, p0}, Lua/a0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppStorage;)V

    .line 170
    .line 171
    .line 172
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 173
    .line 174
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 175
    .line 176
    new-instance v1, Lua/c0;

    .line 177
    .line 178
    invoke-direct {v1}, Lua/c0;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppStorage;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 185
    .line 186
    new-instance v1, Ltb/v;

    .line 187
    .line 188
    const/16 v2, 0x18

    .line 189
    .line 190
    invoke-direct {v1, v2}, Ltb/v;-><init>(I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Lua/a0;

    .line 197
    .line 198
    invoke-direct {v0, p0}, Lua/a0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppStorage;)V

    .line 199
    .line 200
    .line 201
    new-instance v1, Lmc/c;

    .line 202
    .line 203
    const/4 v2, 0x0

    .line 204
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 208
    .line 209
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    new-instance v1, Lua/b0;

    .line 222
    .line 223
    const/4 v2, 0x1

    .line 224
    invoke-direct {v1, p0, v2}, Lua/b0;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppStorage;I)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 228
    .line 229
    .line 230
    return-void
.end method
