.class public final Lha/r7;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lua/d8;

.field public h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public i:Lx9/r2;

.field public j:Landroid/widget/TextView;

.field public k:Lcom/yunpan/appmanage/util/h;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lua/d8;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00c1

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/r7;->g:Lua/d8;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/r7;->k:Lcom/yunpan/appmanage/util/h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/util/h;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b037a

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
    iput-object p1, p0, Lha/r7;->j:Landroid/widget/TextView;

    .line 14
    .line 15
    new-instance v0, Lha/c0;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-direct {v0, p0, v1}, Lha/c0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/yunpan/appmanage/util/h;

    .line 25
    .line 26
    new-instance v0, Lh5/m;

    .line 27
    .line 28
    const/16 v1, 0xa

    .line 29
    .line 30
    invoke-direct {v0, v1, p0}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0}, Lcom/yunpan/appmanage/util/h;-><init>(Lh5/m;)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lha/r7;->k:Lcom/yunpan/appmanage/util/h;

    .line 37
    .line 38
    iget-object p1, p0, Lha/r7;->j:Landroid/widget/TextView;

    .line 39
    .line 40
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 41
    .line 42
    const/16 v1, 0x18

    .line 43
    .line 44
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    const p1, 0x7f0b04f1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 58
    .line 59
    iput-object p1, p0, Lha/r7;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 60
    .line 61
    new-instance p1, Lx9/r2;

    .line 62
    .line 63
    invoke-direct {p1}, Lx9/r2;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lha/r7;->i:Lx9/r2;

    .line 67
    .line 68
    iget-object p1, p0, Lha/r7;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 69
    .line 70
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 71
    .line 72
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lha/r7;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 83
    .line 84
    iget-object v0, p0, Lha/r7;->i:Lx9/r2;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lha/r7;->i:Lx9/r2;

    .line 90
    .line 91
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/yunpan/appmanage/util/w;->g:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lc6/g;->r(Ljava/util/Collection;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lha/r7;->i:Lx9/r2;

    .line 99
    .line 100
    new-instance v0, Lha/p7;

    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-direct {v0, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 107
    .line 108
    iget-object p1, p0, Lha/r7;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 109
    .line 110
    new-instance v0, Lg2/c;

    .line 111
    .line 112
    const/16 v1, 0xa

    .line 113
    .line 114
    invoke-direct {v0, v1}, Lg2/c;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lha/r7;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 121
    .line 122
    new-instance v0, Lha/q7;

    .line 123
    .line 124
    invoke-direct {v0}, Lha/q7;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
