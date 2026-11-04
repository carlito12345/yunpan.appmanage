.class public Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;
.super Lda/g;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final synthetic F:I


# instance fields
.field public C:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public E:Lx9/a1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/16 p1, 0x14

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->E:Lx9/a1;

    .line 6
    .line 7
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e002d

    return v0
.end method

.method public final u()V
    .locals 3

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
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->C:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    new-instance v1, Lua/a1;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, p0, v2}, Lua/a1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0b0360

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lua/a1;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, p0, v2}, Lua/a1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    const v0, 0x7f0b0363

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lua/a1;

    .line 60
    .line 61
    const/4 v2, 0x2

    .line 62
    invoke-direct {v1, p0, v2}, Lua/a1;-><init>(Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0b04f1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 78
    .line 79
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 80
    .line 81
    const/4 v2, 0x6

    .line 82
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lx9/a1;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lx9/a1;-><init>(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->E:Lx9/a1;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->D:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityCleanMemoryWhitelist;->E:Lx9/a1;

    .line 101
    .line 102
    new-instance v1, Lph/j;

    .line 103
    .line 104
    const/16 v2, 0xe

    .line 105
    .line 106
    invoke-direct {v1, v2, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 110
    .line 111
    new-instance v0, Lua/v0;

    .line 112
    .line 113
    const/4 v1, 0x1

    .line 114
    invoke-direct {v0, v1}, Lua/v0;-><init>(I)V

    .line 115
    .line 116
    .line 117
    new-instance v1, Lmc/c;

    .line 118
    .line 119
    const/4 v2, 0x0

    .line 120
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-instance v1, Lka/c;

    .line 138
    .line 139
    const/16 v2, 0xc

    .line 140
    .line 141
    invoke-direct {v1, v2, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method
