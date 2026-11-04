.class public Lcom/yunpan/appmanage/ui/ActivityDesktop;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic G:I


# instance fields
.field public C:Landroidx/recyclerview/widget/RecyclerView;

.field public D:Lx9/k1;

.field public E:Landroidx/recyclerview/widget/RecyclerView;

.field public F:Lx9/m0;


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
    const v0, 0x7f0e002f

    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    const v0, 0x7f0b0500

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->E:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lx9/m0;

    .line 22
    .line 23
    invoke-direct {v0}, Lx9/m0;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->F:Lx9/m0;

    .line 27
    .line 28
    const-string v1, "\u9009\u62e9\u9ed8\u8ba4\u684c\u9762"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->F:Lx9/m0;

    .line 34
    .line 35
    const-string v1, "\u8bbe\u7f6e\u9ed8\u8ba4\u5e94\u7528"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->F:Lx9/m0;

    .line 41
    .line 42
    const-string v1, "\u5237\u65b0"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->F:Lx9/m0;

    .line 48
    .line 49
    const-string v1, "\u8fd4\u56de"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->F:Lx9/m0;

    .line 55
    .line 56
    const-string v1, "\u8bbe\u7f6e\u9ed8\u8ba4\u684c\u9762"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->E:Landroidx/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->F:Lx9/m0;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->F:Lx9/m0;

    .line 69
    .line 70
    new-instance v1, Lua/h1;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-direct {v1, p0, v2}, Lua/h1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDesktop;I)V

    .line 74
    .line 75
    .line 76
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 77
    .line 78
    const v0, 0x7f0b04f1

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    .line 89
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    const/4 v3, 0x0

    .line 93
    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lx9/k1;

    .line 100
    .line 101
    invoke-direct {v0, p0}, Lx9/k1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDesktop;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->D:Lx9/k1;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->C:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    .line 108
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->D:Lx9/k1;

    .line 112
    .line 113
    new-instance v1, Lua/h1;

    .line 114
    .line 115
    invoke-direct {v1, p0, v2}, Lua/h1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDesktop;I)V

    .line 116
    .line 117
    .line 118
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/yunpan/appmanage/ui/ActivityDesktop;->x()V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final x()V
    .locals 3

    .line 1
    new-instance v0, Lua/v0;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Lua/v0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lmc/c;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lua/j1;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, p0, v2}, Lua/j1;-><init>(Lcom/yunpan/appmanage/ui/ActivityDesktop;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final y(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityDesktop;->D:Lx9/k1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/yunpan/appmanage/bean/DesktopBean;

    .line 8
    .line 9
    iget-boolean v0, p1, Lcom/yunpan/appmanage/bean/DesktopBean;->isDisable:Z

    .line 10
    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean p2, p1, Lcom/yunpan/appmanage/bean/DesktopBean;->isUninstall:Z

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    sget-object p2, Lfa/b0;->a:La2/w0;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, La2/w0;->X(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget-boolean p2, p1, Lcom/yunpan/appmanage/bean/DesktopBean;->isHide:Z

    .line 32
    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    sget-object p2, Lfa/b0;->a:La2/w0;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-static {p1, p2}, La2/w0;->W(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    .line 48
    .line 49
    const-string p2, "\u51fa\u9519\uff1a\u600e\u4e48\u4f1a\u5462\uff1f\uff1f\uff1f"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_3
    :goto_0
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/DesktopBean;->packageName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {p1, p2}, La2/w0;->V(Ljava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
.end method
