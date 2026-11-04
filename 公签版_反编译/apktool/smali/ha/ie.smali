.class public final Lha/ie;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Ljava/lang/String;

.field public h:Landroidx/recyclerview/widget/RecyclerView;

.field public i:Lx9/i5;

.field public final j:Ljava/util/List;

.field public final k:Lha/he;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/he;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00d7

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    iput-object p1, p0, Lha/ie;->g:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lha/ie;->j:Ljava/util/List;

    .line 12
    .line 13
    iput-object p4, p0, Lha/ie;->k:Lha/he;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lha/ie;->g:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const v0, 0x7f0b05ba

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const p1, 0x7f0b04f1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    iput-object p1, p0, Lha/ie;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    .line 35
    new-instance p1, Lx9/i5;

    .line 36
    .line 37
    invoke-direct {p1}, Lx9/i5;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lha/ie;->i:Lx9/i5;

    .line 41
    .line 42
    iget-object v0, p0, Lha/ie;->j:Ljava/util/List;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lha/ie;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 50
    .line 51
    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lha/ie;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    .line 59
    iget-object v0, p0, Lha/ie;->i:Lx9/i5;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lha/ie;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    new-instance v0, Lha/db;

    .line 67
    .line 68
    const/4 v1, 0x2

    .line 69
    invoke-direct {v0, v1, p0}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const-wide/16 v1, 0x64

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lha/ie;->i:Lx9/i5;

    .line 78
    .line 79
    new-instance v0, Lha/p7;

    .line 80
    .line 81
    const/16 v1, 0x15

    .line 82
    .line 83
    invoke-direct {v0, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 87
    .line 88
    return-void
.end method
