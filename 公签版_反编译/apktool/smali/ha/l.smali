.class public final Lha/l;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public final g:Lha/h8;

.field public h:Lx9/c;

.field public i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/h8;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0079

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/l;->g:Lha/h8;

    .line 8
    .line 9
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
    iput-object p1, p0, Lha/l;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 14
    .line 15
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-direct {v0, v2, v3, v1}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lx9/c;

    .line 28
    .line 29
    invoke-direct {p1}, Lx9/c;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lha/l;->h:Lx9/c;

    .line 33
    .line 34
    iget-object v0, p0, Lha/l;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lha/l;->h:Lx9/c;

    .line 40
    .line 41
    new-instance v0, Lha/j;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lha/j;-><init>(Lha/l;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 47
    .line 48
    const p1, 0x7f0b034a

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/TextView;

    .line 56
    .line 57
    iput-object p1, p0, Lha/l;->j:Landroid/widget/TextView;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lha/l;->j:Landroid/widget/TextView;

    .line 63
    .line 64
    new-instance v0, Lha/k;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-direct {v0, p0, v1}, Lha/k;-><init>(Lha/l;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    .line 72
    .line 73
    const p1, 0x7f0b03f3

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/TextView;

    .line 81
    .line 82
    new-instance v0, Lha/k;

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    invoke-direct {v0, p0, v1}, Lha/k;-><init>(Lha/l;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
