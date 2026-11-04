.class public final Lha/ve;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Landroidx/recyclerview/widget/RecyclerView;

.field public h:Lx9/z5;

.field public i:Lua/t8;

.field public j:Lx9/n5;

.field public k:Lcom/yunpan/appmanage/bean/WpPathBean;

.field public l:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public m:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0105

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b051e

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/ve;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    .line 15
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lx9/z5;

    .line 25
    .line 26
    invoke-direct {p1}, Lx9/z5;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lha/ve;->h:Lx9/z5;

    .line 30
    .line 31
    iget-object v0, p0, Lha/ve;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lha/ve;->h:Lx9/z5;

    .line 37
    .line 38
    new-instance v0, Lha/p7;

    .line 39
    .line 40
    const/16 v1, 0x18

    .line 41
    .line 42
    invoke-direct {v0, v1, p0}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 46
    .line 47
    const p1, 0x7f0b03a0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 55
    .line 56
    iput-object p1, p0, Lha/ve;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 57
    .line 58
    const p1, 0x7f0b03a2

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 66
    .line 67
    iput-object p1, p0, Lha/ve;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 68
    .line 69
    iget-object p1, p0, Lha/ve;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 70
    .line 71
    new-instance v0, Lha/ue;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-direct {v0, p0, v1}, Lha/ue;-><init>(Lha/ve;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lha/ve;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 81
    .line 82
    new-instance v0, Lha/ue;

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    invoke-direct {v0, p0, v1}, Lha/ue;-><init>(Lha/ve;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
