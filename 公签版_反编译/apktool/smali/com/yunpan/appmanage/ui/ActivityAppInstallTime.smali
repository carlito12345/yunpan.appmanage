.class public Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic H:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/i;

.field public E:Ljava/util/ArrayList;

.field public F:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public G:Landroid/widget/LinearLayout;


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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->E:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->D:Lx9/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->D:Lx9/i;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->E:Ljava/util/ArrayList;

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
    const v0, 0x7f0e0020

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->G:Landroid/widget/LinearLayout;

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
    new-instance v1, Lua/r;

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-direct {v1, p0, v2}, Lua/r;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    const v0, 0x7f0b0383

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/widget/LinearLayout;

    .line 55
    .line 56
    new-instance v1, Lua/r;

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-direct {v1, p0, v2}, Lua/r;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    const v0, 0x7f0b03ec

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/LinearLayout;

    .line 73
    .line 74
    new-instance v1, Lua/r;

    .line 75
    .line 76
    const/4 v2, 0x2

    .line 77
    invoke-direct {v1, p0, v2}, Lua/r;-><init>(Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    const v0, 0x7f0b04f4

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 93
    .line 94
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 95
    .line 96
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 97
    .line 98
    const/4 v3, 0x1

    .line 99
    const/4 v4, 0x0

    .line 100
    invoke-direct {v1, v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 104
    .line 105
    .line 106
    new-instance v0, Lx9/i;

    .line 107
    .line 108
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 109
    .line 110
    invoke-direct {v0, v1}, Lx9/i;-><init>(Lda/g;)V

    .line 111
    .line 112
    .line 113
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->D:Lx9/i;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 116
    .line 117
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 121
    .line 122
    new-instance v1, Lua/s;

    .line 123
    .line 124
    invoke-direct {v1}, Lua/s;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityAppInstallTime;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 131
    .line 132
    new-instance v1, Ltb/v;

    .line 133
    .line 134
    const/16 v2, 0x17

    .line 135
    .line 136
    invoke-direct {v1, v2}, Ltb/v;-><init>(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Lph/j;

    .line 143
    .line 144
    const/16 v1, 0xb

    .line 145
    .line 146
    invoke-direct {v0, v1, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    new-instance v1, Lmc/c;

    .line 150
    .line 151
    const/4 v2, 0x0

    .line 152
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    new-instance v1, Lka/c;

    .line 170
    .line 171
    const/16 v2, 0x8

    .line 172
    .line 173
    invoke-direct {v1, v2, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method
