.class public Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic I:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public final D:Lx9/t0;

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/a5;

.field public G:Lcom/yunpan/appmanage/carsdk/x;

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->D:Lx9/t0;

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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->H:Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    return-void
.end method

.method public static x(Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->F:Lx9/a5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x7d0

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->F:Lx9/a5;

    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->F:Lx9/a5;

    .line 22
    .line 23
    new-instance v1, Lcom/yunpan/appmanage/bean/NameValueBean;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->H:Ljava/text/SimpleDateFormat;

    .line 26
    .line 27
    new-instance v3, Ljava/util/Date;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v1, v2, p1}, Lcom/yunpan/appmanage/bean/NameValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->F:Lx9/a5;

    .line 45
    .line 46
    invoke-virtual {p0}, Lc6/g;->b()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    add-int/lit8 p0, p0, -0x1

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setSelectionWithSmooth(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->G:Lcom/yunpan/appmanage/carsdk/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/yunpan/appmanage/carsdk/x;->m()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 9
    .line 10
    .line 11
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
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

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
    const/4 v4, 0x1

    .line 31
    invoke-direct {v0, v1, v2, v4}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->D:Lx9/t0;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 40
    .line 41
    const v2, 0x7f080307

    .line 42
    .line 43
    .line 44
    const-string v5, "\u5c5e\u6027\u5217\u8868"

    .line 45
    .line 46
    invoke-direct {v0, v2, v5, v4}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 53
    .line 54
    const v2, 0x7f08024a

    .line 55
    .line 56
    .line 57
    const-string v5, "\u6e05\u7a7a"

    .line 58
    .line 59
    invoke-direct {v0, v2, v5, v4}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;

    .line 66
    .line 67
    const v2, 0x7f0802c1

    .line 68
    .line 69
    .line 70
    const-string v5, "\u5bfc\u51fa"

    .line 71
    .line 72
    invoke-direct {v0, v2, v5, v4}, Lcom/yunpan/appmanage/bean/NameIcoTypeBean;-><init>(ILjava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lua/j7;

    .line 84
    .line 85
    invoke-direct {v0, p0}, Lua/j7;-><init>(Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, v1, Lc6/g;->e:Lc6/e;

    .line 89
    .line 90
    const v0, 0x7f0b04f1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 98
    .line 99
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 100
    .line 101
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 102
    .line 103
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 104
    .line 105
    invoke-direct {v1, v2, v4, v3}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lx9/a5;

    .line 112
    .line 113
    invoke-direct {v0}, Lx9/a5;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->F:Lx9/a5;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 119
    .line 120
    invoke-virtual {v1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 121
    .line 122
    .line 123
    :try_start_0
    new-instance v0, Lcom/yunpan/appmanage/carsdk/x;

    .line 124
    .line 125
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 126
    .line 127
    new-instance v2, Lua/i1;

    .line 128
    .line 129
    const/16 v4, 0x15

    .line 130
    .line 131
    invoke-direct {v2, v4, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, v1, v3, v2}, Lcom/yunpan/appmanage/carsdk/x;-><init>(Lda/g;ZLcom/yunpan/appmanage/carsdk/v;)V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->G:Lcom/yunpan/appmanage/carsdk/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :catchall_0
    const-string v0, "\u8be5\u7cfb\u7edf\u4e0d\u652f\u6301\u6b64\u529f\u80fd"

    .line 141
    .line 142
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 146
    .line 147
    .line 148
    :goto_0
    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;->F:Lx9/a5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "\u6ca1\u6709\u5185\u5bb9"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Lua/j7;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lua/j7;-><init>(Lcom/yunpan/appmanage/ui/ActivityTextFlyOS18;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lmc/c;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lha/l2;

    .line 41
    .line 42
    const/16 v2, 0x1c

    .line 43
    .line 44
    invoke-direct {v1, v2}, Lha/l2;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
