.class public final Lha/r2;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/w;

.field public final i:Ljava/util/List;

.field public final j:Lha/o;

.field public final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/o;)V
    .locals 1

    const v0, 0x7f0e0090

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 6
    iput-object p4, p0, Lha/r2;->i:Ljava/util/List;

    .line 7
    iput-object p3, p0, Lha/r2;->k:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lha/r2;->j:Lha/o;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/o;)V
    .locals 1

    const v0, 0x7f0e0090

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lha/r2;->k:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lha/r2;->i:Ljava/util/List;

    .line 4
    iput-object p4, p0, Lha/r2;->j:Lha/o;

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
    iget-object p1, p0, Lha/r2;->k:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const v0, 0x7f0b05ba

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const p1, 0x7f0b04f1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 28
    .line 29
    iput-object p1, p0, Lha/r2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 30
    .line 31
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 32
    .line 33
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lx9/w;

    .line 44
    .line 45
    invoke-direct {p1, v1}, Lx9/w;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lha/r2;->h:Lx9/w;

    .line 49
    .line 50
    iget-object v0, p0, Lha/r2;->i:Ljava/util/List;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lha/r2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    .line 57
    iget-object v0, p0, Lha/r2;->h:Lx9/w;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lha/r2;->h:Lx9/w;

    .line 63
    .line 64
    new-instance v0, La1/d;

    .line 65
    .line 66
    const/16 v1, 0xa

    .line 67
    .line 68
    invoke-direct {v0, v1, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 72
    .line 73
    return-void
.end method
