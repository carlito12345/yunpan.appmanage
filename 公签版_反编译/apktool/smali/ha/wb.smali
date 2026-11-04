.class public final Lha/wb;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/q2;

.field public final i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    const v0, 0x7f0e00ee

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;IZ)V

    .line 6
    .line 7
    .line 8
    iput-object p3, p0, Lha/wb;->i:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b04f1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/wb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 14
    .line 15
    new-instance p1, Lx9/q2;

    .line 16
    .line 17
    iget-object v0, p0, Lha/a4;->b:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {p1, v0}, Lx9/q2;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lha/wb;->h:Lx9/q2;

    .line 23
    .line 24
    iget-object v1, p0, Lha/wb;->i:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lha/wb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 30
    .line 31
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {v1, v0, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lha/wb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 42
    .line 43
    iget-object v1, p0, Lha/wb;->h:Lx9/q2;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lha/wb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lha/wb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelection(I)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Landroidx/recyclerview/widget/y;

    .line 59
    .line 60
    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/y;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    const v1, 0x7f0800cb

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Ln0/g;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/y;->e(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lha/wb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/v1;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lha/wb;->h:Lx9/q2;

    .line 79
    .line 80
    new-instance v0, Lha/p7;

    .line 81
    .line 82
    const/16 v1, 0xd

    .line 83
    .line 84
    invoke-direct {v0, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 88
    .line 89
    iget-object p1, p0, Lha/wb;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 90
    .line 91
    new-instance v0, Lg2/c;

    .line 92
    .line 93
    const/16 v1, 0x1a

    .line 94
    .line 95
    invoke-direct {v0, v1}, Lg2/c;-><init>(I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method
