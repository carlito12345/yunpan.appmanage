.class public Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic I:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final D:Lx9/t0;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/a5;

.field public G:Lcom/yunpan/appmanage/carsdk/r;

.field public final H:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->D:Lx9/t0;

    .line 11
    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 13
    .line 14
    const-string v1, "HH:mm:ss  SSS"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->H:Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    return-void
.end method

.method public static x(Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->F:Lx9/a5;

    .line 2
    .line 3
    new-instance v1, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->H:Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    new-instance v3, Ljava/util/Date;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v1, v2, p1}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->F:Lx9/a5;

    .line 25
    .line 26
    invoke-virtual {p0}, Lc6/g;->b()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    add-int/lit8 p0, p0, -0x1

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectionWithSmooth(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->G:Lcom/yunpan/appmanage/carsdk/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/yunpan/appmanage/carsdk/r;->e:Z

    .line 5
    .line 6
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->d:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v2, Lcom/yunpan/appmanage/carsdk/p;

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-direct {v2, v0, v3}, Lcom/yunpan/appmanage/carsdk/p;-><init>(Lcom/yunpan/appmanage/carsdk/r;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e003f

    return v0
.end method

.method public final u()V
    .locals 6

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

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
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->D:Lx9/t0;

    .line 24
    .line 25
    new-instance v1, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 26
    .line 27
    const v2, 0x7f0801d1

    .line 28
    .line 29
    .line 30
    const-string v4, "\u8fd4\u56de"

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    invoke-direct {v1, v2, v4, v5}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->D:Lx9/t0;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->D:Lx9/t0;

    .line 47
    .line 48
    new-instance v1, Lua/g5;

    .line 49
    .line 50
    const/16 v2, 0x9

    .line 51
    .line 52
    invoke-direct {v1, v2, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 56
    .line 57
    const v0, 0x7f0b04f1

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 67
    .line 68
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 69
    .line 70
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 71
    .line 72
    invoke-direct {v1, v2, v5, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Lx9/a5;

    .line 79
    .line 80
    invoke-direct {v0}, Lx9/a5;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->F:Lx9/a5;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 88
    .line 89
    .line 90
    :try_start_0
    new-instance v0, Lcom/yunpan/appmanage/carsdk/r;

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    new-instance v2, Lua/i1;

    .line 97
    .line 98
    const/16 v3, 0x14

    .line 99
    .line 100
    invoke-direct {v2, v3, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {v0, v1, v2}, Lcom/yunpan/appmanage/carsdk/r;-><init>(Landroid/content/Context;Lua/i1;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS12;->G:Lcom/yunpan/appmanage/carsdk/r;

    .line 107
    .line 108
    iput-boolean v5, v0, Lcom/yunpan/appmanage/carsdk/r;->e:Z

    .line 109
    .line 110
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/r;->d:Landroid/os/Handler;

    .line 111
    .line 112
    new-instance v2, Lcom/yunpan/appmanage/carsdk/p;

    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    invoke-direct {v2, v0, v3}, Lcom/yunpan/appmanage/carsdk/p;-><init>(Lcom/yunpan/appmanage/carsdk/r;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catch_0
    const-string v0, "\u8be5\u7cfb\u7edf\u4e0d\u652f\u6301\u6b64\u529f\u80fd"

    .line 123
    .line 124
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 128
    .line 129
    .line 130
    :goto_0
    return-void
.end method
