.class public Lcom/yunpan/appmanage/ui/ActivityRotation;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic F:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/o4;

.field public final E:Ljava/util/ArrayList;


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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRotation;->E:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRotation;->D:Lx9/o4;

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
    invoke-static {p0}, Lta/m;->e(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e004e

    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    const v0, 0x7f0b03ad

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lua/z5;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, p0, v2}, Lua/z5;-><init>(Lcom/yunpan/appmanage/ui/ActivityRotation;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0b03c3

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lua/z5;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {v1, p0, v2}, Lua/z5;-><init>(Lcom/yunpan/appmanage/ui/ActivityRotation;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0b0374

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    .line 42
    new-instance v1, Lua/z5;

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    invoke-direct {v1, p0, v2}, Lua/z5;-><init>(Lcom/yunpan/appmanage/ui/ActivityRotation;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    const v0, 0x7f0b04f4

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRotation;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 61
    .line 62
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 63
    .line 64
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 65
    .line 66
    const/4 v3, 0x6

    .line 67
    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lx9/o4;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lx9/o4;-><init>(Lcom/yunpan/appmanage/ui/ActivityRotation;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRotation;->D:Lx9/o4;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityRotation;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRotation;->D:Lx9/o4;

    .line 86
    .line 87
    new-instance v1, Lua/a6;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lua/a6;-><init>(Lcom/yunpan/appmanage/ui/ActivityRotation;)V

    .line 90
    .line 91
    .line 92
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityRotation;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 95
    .line 96
    new-instance v1, Lua/b6;

    .line 97
    .line 98
    invoke-direct {v1}, Lua/b6;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Lua/a6;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lua/a6;-><init>(Lcom/yunpan/appmanage/ui/ActivityRotation;)V

    .line 107
    .line 108
    .line 109
    new-instance v1, Lmc/c;

    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 116
    .line 117
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v1, Lka/c;

    .line 130
    .line 131
    const/16 v2, 0x19

    .line 132
    .line 133
    invoke-direct {v1, v2, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method
