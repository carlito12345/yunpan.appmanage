.class public final Lha/r5;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/s1;

.field public final i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00a4

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/r5;->i:Ljava/util/ArrayList;

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
    const p1, 0x7f0b03f3

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 12
    .line 13
    const/16 v1, 0xe

    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    const p1, 0x7f0b04f1

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 29
    .line 30
    iput-object p1, p0, Lha/r5;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 31
    .line 32
    new-instance p1, Lx9/s1;

    .line 33
    .line 34
    invoke-direct {p1}, Lx9/s1;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lha/r5;->h:Lx9/s1;

    .line 38
    .line 39
    iget-object p1, p0, Lha/r5;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 40
    .line 41
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 42
    .line 43
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lha/r5;->h:Lx9/s1;

    .line 54
    .line 55
    iget-object v0, p0, Lha/r5;->i:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lha/r5;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 61
    .line 62
    iget-object v0, p0, Lha/r5;->h:Lx9/s1;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Landroidx/recyclerview/widget/y;

    .line 68
    .line 69
    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/y;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0800cb

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v0}, Ln0/g;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/y;->e(Landroid/graphics/drawable/Drawable;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lha/r5;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/v1;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lha/r5;->h:Lx9/s1;

    .line 88
    .line 89
    new-instance v0, La1/d;

    .line 90
    .line 91
    const/16 v1, 0x15

    .line 92
    .line 93
    invoke-direct {v0, v1, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 97
    .line 98
    return-void
.end method
