.class public final Lha/ha;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Landroidx/recyclerview/widget/RecyclerView;

.field public h:Lx9/n1;

.field public final i:Ljava/util/List;

.field public final j:Lha/ga;

.field public final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V
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
    iput-object p4, p0, Lha/ha;->i:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lha/ha;->j:Lha/ga;

    .line 10
    .line 11
    iput-object p3, p0, Lha/ha;->k:Ljava/lang/String;

    .line 12
    .line 13
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
    iget-object p1, p0, Lha/ha;->k:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const v0, 0x7f0b05ba

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const p1, 0x7f0b04f1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    .line 35
    iput-object p1, p0, Lha/ha;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    new-instance p1, Lx9/n1;

    .line 38
    .line 39
    invoke-direct {p1}, Lx9/n1;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lha/ha;->h:Lx9/n1;

    .line 43
    .line 44
    iget-object v0, p0, Lha/ha;->i:Ljava/util/List;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lha/ha;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    .line 51
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 52
    .line 53
    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lha/ha;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    iget-object v0, p0, Lha/ha;->h:Lx9/n1;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lha/ha;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    new-instance v0, La2/h;

    .line 69
    .line 70
    const/16 v1, 0x1c

    .line 71
    .line 72
    invoke-direct {v0, v1, p0}, La2/h;-><init>(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const-wide/16 v1, 0x64

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lha/ha;->h:Lx9/n1;

    .line 81
    .line 82
    new-instance v0, Lha/p7;

    .line 83
    .line 84
    const/4 v1, 0x6

    .line 85
    invoke-direct {v0, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 89
    .line 90
    return-void
.end method
