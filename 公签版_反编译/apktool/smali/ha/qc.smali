.class public final Lha/qc;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lha/p7;

.field public h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public i:Lx9/r2;

.field public j:Lcom/yunpan/appmanage/util/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/p7;)V
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
    iput-object p3, p0, Lha/qc;->g:Lha/p7;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lha/qc;->j:Lcom/yunpan/appmanage/util/f;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/yunpan/appmanage/util/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

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
    const p1, 0x7f0b05c2

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
    const-string v0, "smb\u670d\u52a1\u5668-\u641c\u5bfb"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    const p1, 0x7f0b037a

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/widget/TextView;

    .line 26
    .line 27
    const-string v0, "\u5173\u95ed"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lha/g9;

    .line 33
    .line 34
    const/16 v1, 0xd

    .line 35
    .line 36
    invoke-direct {v0, v1, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    const p1, 0x7f0b04f1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 50
    .line 51
    iput-object p1, p0, Lha/qc;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 52
    .line 53
    new-instance p1, Lx9/r2;

    .line 54
    .line 55
    invoke-direct {p1}, Lx9/r2;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lha/qc;->i:Lx9/r2;

    .line 59
    .line 60
    iget-object p1, p0, Lha/qc;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 61
    .line 62
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 63
    .line 64
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lha/qc;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 75
    .line 76
    iget-object v0, p0, Lha/qc;->i:Lx9/r2;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lha/qc;->i:Lx9/r2;

    .line 82
    .line 83
    new-instance v0, Lha/p7;

    .line 84
    .line 85
    const/16 v1, 0x12

    .line 86
    .line 87
    invoke-direct {v0, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 91
    .line 92
    iget-object p1, p0, Lha/qc;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 93
    .line 94
    new-instance v0, Lg2/c;

    .line 95
    .line 96
    const/16 v1, 0x1b

    .line 97
    .line 98
    invoke-direct {v0, v1}, Lg2/c;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lha/qc;->h:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 105
    .line 106
    new-instance v0, Lha/pc;

    .line 107
    .line 108
    invoke-direct {v0}, Lha/pc;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public final show()V
    .locals 4

    .line 1
    invoke-super {p0}, Lha/a4;->show()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yunpan/appmanage/util/f;

    .line 5
    .line 6
    new-instance v1, Lh5/m;

    .line 7
    .line 8
    const/16 v2, 0x11

    .line 9
    .line 10
    invoke-direct {v1, v2, p0}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/yunpan/appmanage/util/f;-><init>(Lh5/m;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lha/qc;->j:Lcom/yunpan/appmanage/util/f;

    .line 17
    .line 18
    iget-boolean v1, v0, Lcom/yunpan/appmanage/util/f;->f:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, v0, Lcom/yunpan/appmanage/util/f;->f:Z

    .line 25
    .line 26
    iget-object v1, v0, Lcom/yunpan/appmanage/util/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/lang/Thread;

    .line 33
    .line 34
    new-instance v2, Lcom/yunpan/appmanage/util/e;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {v2, v0, v3}, Lcom/yunpan/appmanage/util/e;-><init>(Lcom/yunpan/appmanage/util/f;I)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method
