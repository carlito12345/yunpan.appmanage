.class public final Lha/t2;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public h:Lx9/v;

.field public final i:Z

.field public j:Lha/cd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;ZLha/cd;)V
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
    iput-boolean p3, p0, Lha/t2;->i:Z

    .line 9
    .line 10
    iput-object p4, p0, Lha/t2;->j:Lha/cd;

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
    const/16 v1, 0x9

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
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
    check-cast p1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 34
    .line 35
    iput-object p1, p0, Lha/t2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 36
    .line 37
    new-instance v0, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 38
    .line 39
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 40
    .line 41
    const/4 v2, 0x6

    .line 42
    invoke-direct {v0, v1, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lx9/v;

    .line 49
    .line 50
    invoke-direct {p1, v1}, Lx9/v;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lha/t2;->h:Lx9/v;

    .line 54
    .line 55
    iget-object v0, p0, Lha/t2;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lha/t2;->h:Lx9/v;

    .line 61
    .line 62
    new-instance v0, La1/d;

    .line 63
    .line 64
    const/16 v1, 0xb

    .line 65
    .line 66
    invoke-direct {v0, v1, p0}, La1/d;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 70
    .line 71
    const/4 p1, 0x3

    .line 72
    invoke-static {p1}, Lnh/b;->i0(I)Lmc/g;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    new-instance v0, Lha/p0;

    .line 77
    .line 78
    const/4 v1, 0x4

    .line 79
    invoke-direct {v0, v1, p0}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
