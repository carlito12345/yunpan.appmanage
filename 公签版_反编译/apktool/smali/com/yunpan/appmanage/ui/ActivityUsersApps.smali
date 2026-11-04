.class public Lcom/yunpan/appmanage/ui/ActivityUsersApps;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic K:I


# instance fields
.field public C:Landroidx/recyclerview/widget/RecyclerView;

.field public D:Lx9/c0;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/a0;

.field public G:Landroid/widget/LinearLayout;

.field public H:Lha/u9;

.field public final I:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->I:Ljava/util/HashSet;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->H:Lha/u9;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->H:Lha/u9;

    .line 10
    .line 11
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 21
    .line 22
    .line 23
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0026

    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    new-instance v0, Lha/u9;

    .line 2
    .line 3
    invoke-direct {v0, p0, p0}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->H:Lha/u9;

    .line 7
    .line 8
    const v0, 0x7f0b055f

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    const v0, 0x7f0b03ad

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    new-instance v2, Lua/q7;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-direct {v2, p0, v3}, Lua/q7;-><init>(Lcom/yunpan/appmanage/ui/ActivityUsersApps;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    const v0, 0x7f0b0549

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/LinearLayout;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->G:Landroid/widget/LinearLayout;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    const v0, 0x7f0b03a7

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lua/q7;

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-direct {v1, p0, v2}, Lua/q7;-><init>(Lcom/yunpan/appmanage/ui/ActivityUsersApps;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0b050e

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    .line 79
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    invoke-direct {v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lx9/c0;

    .line 89
    .line 90
    invoke-direct {v0}, Lx9/c0;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->D:Lx9/c0;

    .line 94
    .line 95
    const-string v1, "\u4e2a\u4eba\u5e94\u7528"

    .line 96
    .line 97
    const/4 v2, 0x1

    .line 98
    invoke-static {v1, v2, v0}, Lg/b;->w(Ljava/lang/String;ZLx9/c0;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->D:Lx9/c0;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 106
    .line 107
    .line 108
    const v0, 0x7f0b04f4

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 116
    .line 117
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 118
    .line 119
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 120
    .line 121
    const/4 v2, 0x7

    .line 122
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 126
    .line 127
    .line 128
    new-instance v0, Lx9/a0;

    .line 129
    .line 130
    invoke-direct {v0, p0}, Lx9/a0;-><init>(Lda/g;)V

    .line 131
    .line 132
    .line 133
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->F:Lx9/a0;

    .line 134
    .line 135
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 136
    .line 137
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->F:Lx9/a0;

    .line 141
    .line 142
    new-instance v1, Lua/r7;

    .line 143
    .line 144
    invoke-direct {v1, p0}, Lua/r7;-><init>(Lcom/yunpan/appmanage/ui/ActivityUsersApps;)V

    .line 145
    .line 146
    .line 147
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 148
    .line 149
    new-instance v0, Lua/r7;

    .line 150
    .line 151
    invoke-direct {v0, p0}, Lua/r7;-><init>(Lcom/yunpan/appmanage/ui/ActivityUsersApps;)V

    .line 152
    .line 153
    .line 154
    new-instance v1, Lmc/c;

    .line 155
    .line 156
    const/4 v2, 0x0

    .line 157
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 161
    .line 162
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    new-instance v1, Lua/s7;

    .line 175
    .line 176
    const/4 v2, 0x1

    .line 177
    invoke-direct {v1, v2, p0}, Lua/s7;-><init>(ILjava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method
