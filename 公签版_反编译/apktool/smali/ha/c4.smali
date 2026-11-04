.class public final Lha/c4;
.super Lha/a4;
.source "SourceFile"


# instance fields
.field public g:Landroidx/recyclerview/widget/RecyclerView;

.field public h:Lx9/z5;

.field public i:Landroid/widget/TextView;

.field public j:Lua/u8;

.field public k:Lx9/w3;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 1

    .line 1
    const v0, 0x7f0e0097

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    iput-object p1, p0, Lha/c4;->l:Ljava/lang/String;

    .line 10
    .line 11
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
    const p1, 0x7f0b03fc

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object p1, p0, Lha/c4;->i:Landroid/widget/TextView;

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    const p1, 0x7f0b051e

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    iput-object p1, p0, Lha/c4;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 32
    .line 33
    const/4 v1, 0x2

    .line 34
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lx9/z5;

    .line 41
    .line 42
    invoke-direct {p1}, Lx9/z5;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lha/c4;->h:Lx9/z5;

    .line 46
    .line 47
    iget-object v0, p0, Lha/c4;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lha/c4;->h:Lx9/z5;

    .line 53
    .line 54
    new-instance v0, Lha/b4;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lha/b4;-><init>(Lha/c4;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p1, Lc6/g;->e:Lc6/e;

    .line 60
    .line 61
    new-instance v0, Lha/b4;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lha/b4;-><init>(Lha/c4;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p1, Lc6/g;->f:Lc6/f;

    .line 67
    .line 68
    return-void
.end method
