.class public final Lha/id;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final h:Lx9/b1;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lx9/b1;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00fa

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/id;->h:Lx9/b1;

    .line 8
    .line 9
    return-void
.end method

.method public static a(Lha/id;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lha/fd;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, p1, v1}, Lha/fd;-><init>(Lha/id;ZI)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lmc/c;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p1, Lha/m6;

    .line 31
    .line 32
    const/4 v0, 0x5

    .line 33
    invoke-direct {p1, v0}, Lha/m6;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lec/b;->b(Lec/e;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static b(Lha/id;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lha/fd;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, p1, v1}, Lha/fd;-><init>(Lha/id;ZI)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lmc/c;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p1, Lha/l2;

    .line 31
    .line 32
    const/16 v0, 0x1c

    .line 33
    .line 34
    invoke-direct {p1, v0}, Lha/l2;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lec/b;->b(Lec/e;)V

    .line 38
    .line 39
    .line 40
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
    iput-object p1, p0, Lha/id;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 14
    .line 15
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 16
    .line 17
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 18
    .line 19
    const/4 v2, 0x5

    .line 20
    invoke-direct {v0, v1, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lha/id;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 27
    .line 28
    iget-object v0, p0, Lha/id;->h:Lx9/b1;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lha/p7;

    .line 34
    .line 35
    const/16 v1, 0x13

    .line 36
    .line 37
    invoke-direct {p1, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, v0, Lc6/g;->e:Lc6/e;

    .line 41
    .line 42
    iget-object p1, p0, Lha/id;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 43
    .line 44
    new-instance v0, Lg2/c;

    .line 45
    .line 46
    const/16 v1, 0x1c

    .line 47
    .line 48
    invoke-direct {v0, v1}, Lg2/c;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lha/id;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 55
    .line 56
    new-instance v0, Lha/hd;

    .line 57
    .line 58
    invoke-direct {v0}, Lha/hd;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnItemListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnItemListener;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
