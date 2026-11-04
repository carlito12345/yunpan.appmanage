.class public final Lha/ma;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/q3;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/HashSet;

.field public k:Lha/la;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/HashSet;Lha/la;)V
    .locals 2

    const v0, 0x7f0e008f

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;IZ)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lha/ma;->i:Ljava/util/ArrayList;

    .line 3
    iput-object p3, p0, Lha/ma;->j:Ljava/util/HashSet;

    .line 4
    iput-object p4, p0, Lha/ma;->k:Lha/la;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/HashSet;Ljava/util/ArrayList;Lha/la;)V
    .locals 2

    const v0, 0x7f0e008f

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;IZ)V

    .line 6
    iput-object p3, p0, Lha/ma;->j:Ljava/util/HashSet;

    .line 7
    iput-object p4, p0, Lha/ma;->i:Ljava/util/ArrayList;

    .line 8
    iput-object p5, p0, Lha/ma;->k:Lha/la;

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
    const p1, 0x7f0b03ad

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 14
    .line 15
    .line 16
    new-instance v0, Lha/g9;

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-direct {v0, v1, p0}, Lha/g9;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    const p1, 0x7f0b04f1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 33
    .line 34
    iput-object p1, p0, Lha/ma;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 35
    .line 36
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 37
    .line 38
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 39
    .line 40
    const/4 v2, 0x6

    .line 41
    invoke-direct {v0, v1, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lx9/q3;

    .line 48
    .line 49
    invoke-direct {p1, v1}, Lx9/q3;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lha/ma;->h:Lx9/q3;

    .line 53
    .line 54
    iget-object v0, p0, Lha/ma;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lha/ma;->h:Lx9/q3;

    .line 60
    .line 61
    new-instance v0, Lha/ka;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lha/ka;-><init>(Lha/ma;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 67
    .line 68
    new-instance p1, Lha/ka;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Lha/ka;-><init>(Lha/ma;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lmc/c;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-direct {v0, v1, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v0, Lha/p0;

    .line 94
    .line 95
    const/16 v1, 0x10

    .line 96
    .line 97
    invoke-direct {v0, v1, p0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
