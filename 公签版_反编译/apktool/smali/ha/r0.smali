.class public final Lha/r0;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/v;

.field public final i:I

.field public j:Lha/q0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;ILha/q0;)V
    .locals 2

    .line 1
    const v0, 0x7f0e008f

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;IZ)V

    .line 6
    .line 7
    .line 8
    iput p3, p0, Lha/r0;->i:I

    .line 9
    .line 10
    iput-object p4, p0, Lha/r0;->j:Lha/q0;

    .line 11
    .line 12
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
    const p1, 0x7f0b03ad

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    const p1, 0x7f0b04f1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 33
    .line 34
    iput-object p1, p0, Lha/r0;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 35
    .line 36
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 37
    .line 38
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 39
    .line 40
    const/4 v2, 0x6

    .line 41
    invoke-direct {v0, v1, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 45
    .line 46
    .line 47
    new-instance p1, Lx9/v;

    .line 48
    .line 49
    invoke-direct {p1, v1}, Lx9/v;-><init>(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lha/r0;->h:Lx9/v;

    .line 53
    .line 54
    iget-object v0, p0, Lha/r0;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lha/r0;->h:Lx9/v;

    .line 60
    .line 61
    new-instance v0, Lha/n0;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lha/n0;-><init>(Lha/r0;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 67
    .line 68
    new-instance p1, Lha/n0;

    .line 69
    .line 70
    invoke-direct {p1, p0}, Lha/n0;-><init>(Lha/r0;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lmc/c;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-direct {v0, v1, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v0, Lha/p0;

    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-direct {v0, v1, p0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method
