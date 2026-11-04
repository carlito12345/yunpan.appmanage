.class public final Lha/ta;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Ljava/util/ArrayList;

.field public final h:Landroidx/fragment/app/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;Landroidx/fragment/app/f;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00de

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/ta;->g:Ljava/util/ArrayList;

    .line 8
    .line 9
    iput-object p4, p0, Lha/ta;->h:Landroidx/fragment/app/f;

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
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-direct {v0, v2, v3, v1}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lx9/u3;

    .line 26
    .line 27
    invoke-direct {v0}, Lx9/u3;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lha/ta;->g:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 36
    .line 37
    .line 38
    new-instance p1, Lha/p7;

    .line 39
    .line 40
    const/16 v1, 0x9

    .line 41
    .line 42
    invoke-direct {p1, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, v0, Lc6/g;->e:Lc6/e;

    .line 46
    .line 47
    return-void
.end method
