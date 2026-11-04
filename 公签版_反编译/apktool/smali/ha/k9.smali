.class public final Lha/k9;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final h:Lx9/g0;

.field public i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final j:Lx9/u2;

.field public k:Landroid/widget/LinearLayout;

.field public l:Landroid/widget/ImageView;

.field public m:Landroid/widget/TextView;

.field public n:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public p:Lh5/m;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00cb

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Lx9/g0;

    .line 8
    .line 9
    invoke-direct {p1}, Lx9/g0;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lha/k9;->h:Lx9/g0;

    .line 13
    .line 14
    new-instance p1, Lx9/u2;

    .line 15
    .line 16
    invoke-direct {p1}, Lx9/u2;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lha/k9;->j:Lx9/u2;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/k9;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/k9;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 7
    .line 8
    iget-object v1, p0, Lha/k9;->h:Lx9/g0;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-static {v1, v2, v0}, Lg/b;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lha/k9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lha/k9;->j:Lx9/u2;

    .line 25
    .line 26
    invoke-virtual {v3, v0}, Lc6/g;->E(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    const-string v3, ""

    .line 31
    .line 32
    invoke-virtual {p0, v3, v0, v0}, Lha/k9;->b(Ljava/lang/String;IZ)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lha/k9;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    sub-int/2addr v0, v2

    .line 45
    invoke-virtual {v1, v0}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lx9/w3;

    .line 50
    .line 51
    new-instance v1, Lha/d4;

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-direct {v1, v0, v2}, Lha/d4;-><init>(Lx9/w3;I)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lmc/c;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-direct {v0, v2, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v1, Lha/p0;

    .line 78
    .line 79
    const/16 v2, 0xe

    .line 80
    .line 81
    invoke-direct {v1, v2, p0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final b(Ljava/lang/String;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/k9;->k:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/16 v1, 0x8

    .line 8
    .line 9
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    iget-object p3, p0, Lha/k9;->l:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lha/k9;->m:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/k9;->h:Lx9/g0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-le v1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v1, v2

    .line 15
    invoke-virtual {v0, v1}, Lc6/g;->C(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lha/k9;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Lg/b;->x(Lx9/g0;ILcom/owen/tvrecyclerview/widget/TvRecyclerView;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lha/k9;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lha/k9;->a()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b0531

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
    iput-object p1, p0, Lha/k9;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

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
    invoke-direct {v0, v2, v1, v1}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lha/k9;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 27
    .line 28
    iget-object v0, p0, Lha/k9;->h:Lx9/g0;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 31
    .line 32
    .line 33
    const p1, 0x7f0b047a

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 41
    .line 42
    iput-object p1, p0, Lha/k9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 43
    .line 44
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    invoke-direct {v1, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lha/k9;->i:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 54
    .line 55
    iget-object v1, p0, Lha/k9;->j:Lx9/u2;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 58
    .line 59
    .line 60
    const p1, 0x7f0b0549

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/widget/LinearLayout;

    .line 68
    .line 69
    iput-object p1, p0, Lha/k9;->k:Landroid/widget/LinearLayout;

    .line 70
    .line 71
    const p1, 0x7f0b0546

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/widget/ImageView;

    .line 79
    .line 80
    iput-object p1, p0, Lha/k9;->l:Landroid/widget/ImageView;

    .line 81
    .line 82
    const p1, 0x7f0b054c

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object p1, p0, Lha/k9;->m:Landroid/widget/TextView;

    .line 92
    .line 93
    iget-object p1, p0, Lha/k9;->k:Landroid/widget/LinearLayout;

    .line 94
    .line 95
    const/16 v2, 0x8

    .line 96
    .line 97
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    const p1, 0x7f0b0517

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 108
    .line 109
    iput-object p1, p0, Lha/k9;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 110
    .line 111
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    new-instance p1, Lha/j9;

    .line 115
    .line 116
    const/4 v2, 0x0

    .line 117
    invoke-direct {p1, p0, v2}, Lha/j9;-><init>(Lha/k9;I)V

    .line 118
    .line 119
    .line 120
    iput-object p1, v0, Lc6/g;->e:Lc6/e;

    .line 121
    .line 122
    new-instance p1, Lha/j9;

    .line 123
    .line 124
    const/4 v0, 0x1

    .line 125
    invoke-direct {p1, p0, v0}, Lha/j9;-><init>(Lha/k9;I)V

    .line 126
    .line 127
    .line 128
    iput-object p1, v1, Lc6/g;->e:Lc6/e;

    .line 129
    .line 130
    iget-object p1, p0, Lha/k9;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 131
    .line 132
    new-instance v0, Lha/j9;

    .line 133
    .line 134
    const/4 v1, 0x2

    .line 135
    invoke-direct {v0, p0, v1}, Lha/j9;-><init>(Lha/k9;I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setOnInBorderKeyEventListener(Lcom/owen/tvrecyclerview/widget/TvRecyclerView$OnInBorderKeyEventListener;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method
