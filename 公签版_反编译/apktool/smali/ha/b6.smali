.class public final Lha/b6;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/f2;

.field public final i:Ljava/util/List;

.field public final j:Lha/a6;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/a6;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00a9

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/b6;->i:Ljava/util/List;

    .line 8
    .line 9
    iput-object p4, p0, Lha/b6;->j:Lha/a6;

    .line 10
    .line 11
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
    iput-object p1, p0, Lha/b6;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 14
    .line 15
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 16
    .line 17
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lx9/f2;

    .line 28
    .line 29
    invoke-direct {p1, v1}, Lx9/f2;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lha/b6;->h:Lx9/f2;

    .line 33
    .line 34
    iget-object v0, p0, Lha/b6;->i:Ljava/util/List;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lc6/g;->r(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lha/b6;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 40
    .line 41
    iget-object v0, p0, Lha/b6;->h:Lx9/f2;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lha/b6;->h:Lx9/f2;

    .line 47
    .line 48
    new-instance v0, La1/d;

    .line 49
    .line 50
    const/16 v1, 0x17

    .line 51
    .line 52
    invoke-direct {v0, v1, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 56
    .line 57
    return-void
.end method
