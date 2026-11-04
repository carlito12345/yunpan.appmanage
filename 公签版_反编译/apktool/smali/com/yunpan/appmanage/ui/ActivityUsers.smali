.class public Lcom/yunpan/appmanage/ui/ActivityUsers;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic G:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/k3;

.field public final E:Ljava/util/HashMap;

.field public final F:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsers;->E:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsers;->F:Ljava/util/HashSet;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0045

    return v0
.end method

.method public final u()V
    .locals 3

    .line 1
    const v0, 0x7f0b05ba

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v1, "\u8bf7\u52ff\u70b9\u4efb\u4f55\u529f\u80fd\uff0c\u540e\u679c\u81ea\u8d1f"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0b03ad

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 23
    .line 24
    new-instance v1, Lua/z6;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    invoke-direct {v1, v2, p0}, Lua/z6;-><init>(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    const v0, 0x7f0b04f1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsers;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 43
    .line 44
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lx9/k3;

    .line 54
    .line 55
    invoke-direct {v0}, Lx9/k3;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsers;->D:Lx9/k3;

    .line 59
    .line 60
    const v1, 0x7f0802e9

    .line 61
    .line 62
    .line 63
    const-string v2, "\u67e5\u770b\u5f53\u524d\u7528\u6237"

    .line 64
    .line 65
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsers;->D:Lx9/k3;

    .line 69
    .line 70
    const-string v2, "\u67e5\u770b\u6240\u6709\u7528\u6237"

    .line 71
    .line 72
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsers;->D:Lx9/k3;

    .line 76
    .line 77
    const-string v2, "\u6dfb\u52a0\u7528\u6237"

    .line 78
    .line 79
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsers;->D:Lx9/k3;

    .line 83
    .line 84
    const-string v2, "\u5220\u9664\u7528\u6237"

    .line 85
    .line 86
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsers;->D:Lx9/k3;

    .line 90
    .line 91
    const-string v2, "\u5207\u6362\u7528\u6237"

    .line 92
    .line 93
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsers;->D:Lx9/k3;

    .line 97
    .line 98
    const-string v2, "\u5378\u8f7d\u4e2a\u4eba\u5e94\u7528"

    .line 99
    .line 100
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsers;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityUsers;->D:Lx9/k3;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 108
    .line 109
    .line 110
    const/4 v0, 0x1

    .line 111
    const-string v1, ""

    .line 112
    .line 113
    invoke-virtual {p0, v0, v1}, Lcom/yunpan/appmanage/ui/ActivityUsers;->x(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityUsers;->D:Lx9/k3;

    .line 117
    .line 118
    new-instance v1, Lua/g5;

    .line 119
    .line 120
    const/16 v2, 0xb

    .line 121
    .line 122
    invoke-direct {v1, v2, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 126
    .line 127
    return-void
.end method

.method public final x(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lha/v1;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, v1}, Lha/v1;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Lmc/c;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-direct {p1, p2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lrc/f;->b:Lec/j;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    new-instance p2, Lha/l2;

    .line 29
    .line 30
    const/16 v0, 0x1c

    .line 31
    .line 32
    invoke-direct {p2, v0}, Lha/l2;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lec/b;->b(Lec/e;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
