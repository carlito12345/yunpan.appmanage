.class public Lcom/yunpan/appmanage/ui/ActivityPresentation;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic H:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/n;

.field public E:Ljava/util/HashSet;

.field public F:Ljava/lang/String;

.field public G:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPresentation;->F:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e004d

    return v0
.end method

.method public final u()V
    .locals 5

    .line 1
    const v0, 0x7f0b0517

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPresentation;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 11
    .line 12
    const v0, 0x7f0b03ad

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lua/o5;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v1, p0, v2}, Lua/o5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPresentation;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0b03a7

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Lua/o5;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-direct {v1, p0, v2}, Lua/o5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPresentation;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    const v0, 0x7f0b04f1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 52
    .line 53
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPresentation;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 54
    .line 55
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 56
    .line 57
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-direct {v1, v2, v3, v4}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lx9/n;

    .line 68
    .line 69
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 70
    .line 71
    const/4 v2, 0x3

    .line 72
    invoke-direct {v0, v1, v2}, Lx9/n;-><init>(Lda/g;I)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPresentation;->D:Lx9/n;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityPresentation;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPresentation;->D:Lx9/n;

    .line 83
    .line 84
    new-instance v1, Lua/p5;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lua/p5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPresentation;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityPresentation;->x()V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityPresentation;->E:Ljava/util/HashSet;

    .line 7
    .line 8
    new-instance v0, Lua/p5;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lua/p5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPresentation;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lmc/c;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lua/r5;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-direct {v1, p0, v2}, Lua/r5;-><init>(Lcom/yunpan/appmanage/ui/ActivityPresentation;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
