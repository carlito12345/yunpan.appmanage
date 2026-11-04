.class public final Lha/y5;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Ltb/v;

.field public final h:Ljava/lang/String;

.field public i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public j:Lx9/u1;

.field public final k:Ljava/util/ArrayList;

.field public l:Landroid/widget/ProgressBar;

.field public m:Landroid/widget/TextView;

.field public final n:Ljava/lang/String;

.field public final p:Lcom/yunpan/appmanage/carsdk/u;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ltb/v;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00db

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lcom/yunpan/appmanage/carsdk/u;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 v0, 0x6

    .line 14
    invoke-direct {p1, p0, p2, v0}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lha/y5;->p:Lcom/yunpan/appmanage/carsdk/u;

    .line 18
    .line 19
    iput-object p5, p0, Lha/y5;->g:Ltb/v;

    .line 20
    .line 21
    const-string p1, "\u6279\u91cf\u4efb\u52a1"

    .line 22
    .line 23
    iput-object p1, p0, Lha/y5;->n:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p3, p0, Lha/y5;->h:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p4, p0, Lha/y5;->k:Ljava/util/ArrayList;

    .line 28
    .line 29
    return-void
.end method

.method public static a(Lha/y5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lha/y5;->g:Ltb/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

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
    iget-object v0, p0, Lha/y5;->n:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    const p1, 0x7f0b0517

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/ProgressBar;

    .line 26
    .line 27
    iput-object p1, p0, Lha/y5;->l:Landroid/widget/ProgressBar;

    .line 28
    .line 29
    const p1, 0x7f0b0334

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object p1, p0, Lha/y5;->m:Landroid/widget/TextView;

    .line 39
    .line 40
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 41
    .line 42
    const/16 v1, 0x10

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
    const/4 p1, 0x0

    .line 51
    const/4 v0, 0x0

    .line 52
    :goto_0
    iget-object v1, p0, Lha/y5;->k:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-ge v0, v2, :cond_0

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lx9/w3;

    .line 65
    .line 66
    const-string v2, ""

    .line 67
    .line 68
    iput-object v2, v1, Lx9/w3;->j:Ljava/lang/String;

    .line 69
    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const v0, 0x7f0b04f1

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 81
    .line 82
    iput-object v0, p0, Lha/y5;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 83
    .line 84
    new-instance v0, Lx9/u1;

    .line 85
    .line 86
    invoke-direct {v0}, Lx9/u1;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lha/y5;->j:Lx9/u1;

    .line 90
    .line 91
    iget-object v0, p0, Lha/y5;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 92
    .line 93
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 94
    .line 95
    iget-object v3, p0, Lha/a4;->b:Landroid/content/Context;

    .line 96
    .line 97
    const/4 v4, 0x1

    .line 98
    invoke-direct {v2, v3, v4, p1}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lha/y5;->j:Lx9/u1;

    .line 105
    .line 106
    invoke-virtual {p1, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lha/y5;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 110
    .line 111
    iget-object v0, p0, Lha/y5;->j:Lx9/u1;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lha/y5;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 117
    .line 118
    new-instance v0, Lha/w5;

    .line 119
    .line 120
    invoke-direct {v0}, Lha/w5;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public final show()V
    .locals 3

    .line 1
    invoke-super {p0}, Lha/a4;->show()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfg/b;

    .line 5
    .line 6
    new-instance v1, La2/h;

    .line 7
    .line 8
    const/16 v2, 0x19

    .line 9
    .line 10
    invoke-direct {v1, v2, p0}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v0, v1, v2}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
