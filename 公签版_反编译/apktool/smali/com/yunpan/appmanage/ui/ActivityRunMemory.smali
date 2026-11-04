.class public Lcom/yunpan/appmanage/ui/ActivityRunMemory;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic I:I


# instance fields
.field public C:Ljava/util/ArrayList;

.field public D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public E:Lx9/p4;

.field public F:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public G:Landroid/widget/TextView;

.field public H:Landroid/widget/TextView;


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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->C:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method public static x(Lcom/yunpan/appmanage/ui/ActivityRunMemory;D)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string p0, "%.2f"

    .line 7
    .line 8
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 9
    .line 10
    cmpg-double v4, p1, v2

    .line 11
    .line 12
    if-gez v4, :cond_0

    .line 13
    .line 14
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-array p2, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object p1, p2, v0

    .line 21
    .line 22
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "k"

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    .line 34
    .line 35
    cmpg-double v6, p1, v4

    .line 36
    .line 37
    if-gez v6, :cond_1

    .line 38
    .line 39
    div-double/2addr p1, v2

    .line 40
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-array p2, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object p1, p2, v0

    .line 47
    .line 48
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string p1, "M"

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    div-double/2addr p1, v4

    .line 60
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-array p2, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    aput-object p1, p2, v0

    .line 67
    .line 68
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string p1, "G"

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :goto_0
    return-object p0
.end method

.method public static y(Lcom/yunpan/appmanage/ui/ActivityRunMemory;IZ)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->E:Lx9/p4;

    .line 3
    .line 4
    invoke-virtual {v1, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/yunpan/appmanage/bean/PssBean;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->E:Lx9/p4;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Lc6/g;->C(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->E:Lx9/p4;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Lc6/g;->C(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->E:Lx9/p4;

    .line 24
    .line 25
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    sub-int/2addr p1, v0

    .line 30
    :goto_0
    if-ltz p1, :cond_2

    .line 31
    .line 32
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->E:Lx9/p4;

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/yunpan/appmanage/bean/PssBean;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v3, v1, Lcom/yunpan/appmanage/bean/PssBean;->pack:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->E:Lx9/p4;

    .line 51
    .line 52
    invoke-virtual {v2, p1}, Lc6/g;->C(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->E:Lx9/p4;

    .line 59
    .line 60
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    iget-object p0, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->H:Landroid/widget/TextView;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 69
    .line 70
    .line 71
    :cond_3
    if-eqz p2, :cond_4

    .line 72
    .line 73
    sget-object p0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 74
    .line 75
    sget-object p0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 78
    .line 79
    new-instance p1, Lua/e6;

    .line 80
    .line 81
    const/4 p2, 0x0

    .line 82
    invoke-direct {p1, v1, p2}, Lua/e6;-><init>(Lcom/yunpan/appmanage/bean/PssBean;I)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    sget-object p0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 90
    .line 91
    sget-object p0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 92
    .line 93
    iget-object p0, p0, Lcom/yunpan/appmanage/util/k;->g0:Ljava/util/concurrent/ExecutorService;

    .line 94
    .line 95
    new-instance p1, Lua/e6;

    .line 96
    .line 97
    invoke-direct {p1, v1, v0}, Lua/e6;-><init>(Lcom/yunpan/appmanage/bean/PssBean;I)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 101
    .line 102
    .line 103
    :goto_2
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->E:Lx9/p4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/bumptech/glide/b;->a()V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e004f

    return v0
.end method

.method public final u()V
    .locals 5

    .line 1
    new-instance v0, Lx9/p4;

    .line 2
    .line 3
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lx9/p4;-><init>(Lda/g;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->E:Lx9/p4;

    .line 9
    .line 10
    const v0, 0x7f0b04f4

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 20
    .line 21
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 22
    .line 23
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-direct {v1, v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->E:Lx9/p4;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->E:Lx9/p4;

    .line 41
    .line 42
    new-instance v1, Lua/d6;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lua/d6;-><init>(Lcom/yunpan/appmanage/ui/ActivityRunMemory;)V

    .line 45
    .line 46
    .line 47
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 50
    .line 51
    new-instance v1, Lua/f6;

    .line 52
    .line 53
    invoke-direct {v1}, Lua/f6;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 60
    .line 61
    new-instance v1, Lua/v0;

    .line 62
    .line 63
    const/16 v2, 0x1b

    .line 64
    .line 65
    invoke-direct {v1, v2}, Lua/v0;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 69
    .line 70
    .line 71
    const v0, 0x7f0b04df

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->F:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 81
    .line 82
    const v0, 0x7f0b059c

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->G:Landroid/widget/TextView;

    .line 92
    .line 93
    const v0, 0x7f0b0395

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Lua/c6;

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    invoke-direct {v1, p0, v2}, Lua/c6;-><init>(Lcom/yunpan/appmanage/ui/ActivityRunMemory;I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    const v0, 0x7f0b03ad

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Landroid/widget/TextView;

    .line 117
    .line 118
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityRunMemory;->H:Landroid/widget/TextView;

    .line 119
    .line 120
    new-instance v2, Lua/c6;

    .line 121
    .line 122
    const/4 v3, 0x1

    .line 123
    invoke-direct {v2, p0, v3}, Lua/c6;-><init>(Lcom/yunpan/appmanage/ui/ActivityRunMemory;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    const v1, 0x7f0b03a6

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    new-instance v2, Lua/c6;

    .line 137
    .line 138
    const/4 v3, 0x2

    .line 139
    invoke-direct {v2, p0, v3}, Lua/c6;-><init>(Lcom/yunpan/appmanage/ui/ActivityRunMemory;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    .line 144
    .line 145
    const v1, 0x7f0b03b0

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    new-instance v2, Lua/c6;

    .line 153
    .line 154
    const/4 v3, 0x3

    .line 155
    invoke-direct {v2, p0, v3}, Lua/c6;-><init>(Lcom/yunpan/appmanage/ui/ActivityRunMemory;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 166
    .line 167
    .line 168
    new-instance v0, Lua/d6;

    .line 169
    .line 170
    invoke-direct {v0, p0}, Lua/d6;-><init>(Lcom/yunpan/appmanage/ui/ActivityRunMemory;)V

    .line 171
    .line 172
    .line 173
    new-instance v1, Lmc/c;

    .line 174
    .line 175
    const/4 v2, 0x0

    .line 176
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 180
    .line 181
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    new-instance v1, Lka/c;

    .line 194
    .line 195
    const/16 v2, 0x1a

    .line 196
    .line 197
    invoke-direct {v1, v2, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method
