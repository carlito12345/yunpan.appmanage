.class public Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic E:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/l1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0030

    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    const v0, 0x7f0b03ad

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    new-instance v1, Lua/g1;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0b04f1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 29
    .line 30
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v1, p0, v2, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lx9/l1;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lx9/l1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;->D:Lx9/l1;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;->D:Lx9/l1;

    .line 52
    .line 53
    new-instance v1, Lua/k1;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lua/k1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 59
    .line 60
    new-instance v0, Lua/k1;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lua/k1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDesktopSelected;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lmc/c;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Lka/c;

    .line 86
    .line 87
    const/16 v2, 0xd

    .line 88
    .line 89
    invoke-direct {v1, v2, p0}, Lka/c;-><init>(ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
