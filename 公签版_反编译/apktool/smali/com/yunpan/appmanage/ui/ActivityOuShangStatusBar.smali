.class public Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic E:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/m2;


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
    const v0, 0x7f0e004a

    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0b03ad

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    new-instance v1, Lua/g1;

    .line 16
    .line 17
    const/16 v2, 0x19

    .line 18
    .line 19
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    .line 24
    .line 25
    const v0, 0x7f0b04f1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 35
    .line 36
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 37
    .line 38
    const/4 v2, 0x6

    .line 39
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lx9/m2;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lx9/m2;-><init>(Lda/g;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;->D:Lx9/m2;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShangStatusBar;->D:Lx9/m2;

    .line 58
    .line 59
    new-instance v1, Lph/j;

    .line 60
    .line 61
    const/16 v2, 0x1d

    .line 62
    .line 63
    invoke-direct {v1, v2, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 67
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lma/b;

    .line 74
    .line 75
    const/16 v2, 0x19

    .line 76
    .line 77
    invoke-direct {v1, p0, v2, v0}, Lma/b;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Lmc/c;

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    invoke-direct {v2, v3, v1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-object v1, Lrc/f;->b:Lec/j;

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    new-instance v2, Lha/h3;

    .line 101
    .line 102
    const/16 v3, 0xd

    .line 103
    .line 104
    invoke-direct {v2, p0, v3, v0}, Lha/h3;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Lec/b;->b(Lec/e;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
