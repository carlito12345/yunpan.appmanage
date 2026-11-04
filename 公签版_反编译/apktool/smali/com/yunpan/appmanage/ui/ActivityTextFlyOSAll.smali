.class public Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic L:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final D:Lx9/t0;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/h2;

.field public final G:Ljava/util/HashMap;

.field public H:Lcom/yunpan/appmanage/carsdk/x;

.field public final I:Ljava/util/ArrayList;

.field public final K:Lcom/yunpan/appmanage/carsdk/u;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx9/t0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lx9/t0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->D:Lx9/t0;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->G:Ljava/util/HashMap;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->I:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v0, Lcom/yunpan/appmanage/carsdk/u;

    .line 27
    .line 28
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/16 v2, 0x16

    .line 33
    .line 34
    invoke-direct {v0, p0, v1, v2}, Lcom/yunpan/appmanage/carsdk/u;-><init>(Ljava/lang/Object;Landroid/os/Looper;I)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->K:Lcom/yunpan/appmanage/carsdk/u;

    .line 38
    .line 39
    return-void
.end method

.method public static x(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "null"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_9

    .line 15
    .line 16
    instance-of v0, p0, [I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    check-cast p0, [I

    .line 21
    .line 22
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    instance-of v0, p0, [J

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    check-cast p0, [J

    .line 32
    .line 33
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    instance-of v0, p0, [D

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    check-cast p0, [D

    .line 43
    .line 44
    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :cond_3
    instance-of v0, p0, [Z

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    check-cast p0, [Z

    .line 54
    .line 55
    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_4
    instance-of v0, p0, [C

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    check-cast p0, [C

    .line 65
    .line 66
    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_5
    instance-of v0, p0, [B

    .line 72
    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    check-cast p0, [B

    .line 76
    .line 77
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0

    .line 82
    :cond_6
    instance-of v0, p0, [S

    .line 83
    .line 84
    if-eqz v0, :cond_7

    .line 85
    .line 86
    check-cast p0, [S

    .line 87
    .line 88
    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    return-object p0

    .line 93
    :cond_7
    instance-of v0, p0, [F

    .line 94
    .line 95
    if-eqz v0, :cond_8

    .line 96
    .line 97
    check-cast p0, [F

    .line 98
    .line 99
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :cond_8
    check-cast p0, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    return-object p0
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->H:Lcom/yunpan/appmanage/carsdk/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yunpan/appmanage/carsdk/x;->m()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e003f

    return v0
.end method

.method public final u()V
    .locals 5

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
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 11
    .line 12
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 13
    .line 14
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v1, v2, v3, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 24
    .line 25
    const v1, 0x7f0801d1

    .line 26
    .line 27
    .line 28
    const-string v2, "\u8fd4\u56de"

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    invoke-direct {v0, v1, v2, v3}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->D:Lx9/t0;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lua/g5;

    .line 45
    .line 46
    const/16 v2, 0xa

    .line 47
    .line 48
    invoke-direct {v0, v2, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, v1, Lc6/g;->e:Lc6/e;

    .line 52
    .line 53
    const v0, 0x7f0b04f1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 61
    .line 62
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 63
    .line 64
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 65
    .line 66
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 67
    .line 68
    const/4 v4, 0x3

    .line 69
    invoke-direct {v1, v2, v4}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lx9/h2;

    .line 76
    .line 77
    invoke-direct {v0}, Lx9/h2;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->F:Lx9/h2;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 85
    .line 86
    .line 87
    :try_start_0
    new-instance v0, Lcom/yunpan/appmanage/carsdk/x;

    .line 88
    .line 89
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 90
    .line 91
    new-instance v2, Lua/i1;

    .line 92
    .line 93
    const/16 v4, 0x16

    .line 94
    .line 95
    invoke-direct {v2, v4, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {v0, v1, v3, v2}, Lcom/yunpan/appmanage/carsdk/x;-><init>(Lda/g;ZLcom/yunpan/appmanage/carsdk/v;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOSAll;->H:Lcom/yunpan/appmanage/carsdk/x;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_0
    const-string v0, "\u8be5\u7cfb\u7edf\u4e0d\u652f\u6301\u6b64\u529f\u80fd"

    .line 105
    .line 106
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-void
.end method
