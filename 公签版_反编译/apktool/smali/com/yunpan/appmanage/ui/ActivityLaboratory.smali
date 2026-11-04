.class public Lcom/yunpan/appmanage/ui/ActivityLaboratory;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic I:I


# instance fields
.field public C:Z

.field public D:I

.field public E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public F:Lx9/k3;

.field public G:Landroid/content/ContentResolver;

.field public H:Lha/u9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->C:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->D:I

    .line 8
    .line 9
    return-void
.end method

.method public static A(Lcom/yunpan/appmanage/ui/ActivityLaboratory;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lha/qa;

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    invoke-direct {p0, v0, p1}, Lha/qa;-><init>(IZ)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lmc/c;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p1, v0, p0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lrc/f;->b:Lec/j;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p1, Lha/m6;

    .line 31
    .line 32
    const/16 v0, 0xd

    .line 33
    .line 34
    invoke-direct {p1, v0}, Lha/m6;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lec/b;->b(Lec/e;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static x(Lcom/yunpan/appmanage/ui/ActivityLaboratory;Z)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 7
    .line 8
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lha/z6;

    .line 15
    .line 16
    iget-object v3, p0, Lda/g;->A:Lda/g;

    .line 17
    .line 18
    new-instance v8, Lag/h;

    .line 19
    .line 20
    invoke-direct {v8, p1}, Lag/h;-><init>(Z)V

    .line 21
    .line 22
    .line 23
    const-string v4, "\u60a8\u786e\u5b9a\u8981\u8bbe\u7f6e\u4e3a\u5f3a\u5236\u6a21\u5f0f\u5417\uff1f"

    .line 24
    .line 25
    const-string v5, "\u5f00\u542f\u5f3a\u5236\u6a21\u5f0f\u540e\u53ef\u80fd\u65e0\u6cd5\u83b7\u5f97\u7cfb\u7edf\u5199\u5165\u6743"

    .line 26
    .line 27
    const-string v6, "\u786e\u5b9a"

    .line 28
    .line 29
    const-string v7, ""

    .line 30
    .line 31
    move-object v1, v0

    .line 32
    move-object v2, p0

    .line 33
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    sget-object p0, Lfa/b0;->a:La2/w0;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const-string p1, "1"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string p1, "0"

    .line 48
    .line 49
    :goto_0
    const-string v0, "setenforce "

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v0, Lua/v0;

    .line 56
    .line 57
    const/16 v1, 0x10

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lua/v0;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1, v0}, La2/w0;->g(Ljava/lang/String;Lfa/z;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
.end method

.method public static y(Lcom/yunpan/appmanage/ui/ActivityLaboratory;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lha/qa;

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    invoke-direct {p0, v0, p1}, Lha/qa;-><init>(IZ)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lmc/c;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p1, v0, p0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lrc/f;->b:Lec/j;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p1, Lha/l2;

    .line 31
    .line 32
    const/16 v0, 0x1c

    .line 33
    .line 34
    invoke-direct {p1, v0}, Lha/l2;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lec/b;->b(Lec/e;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static z(Lcom/yunpan/appmanage/ui/ActivityLaboratory;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lha/h2;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, p0, p1, v1}, Lha/h2;-><init>(Ljava/lang/Object;ZI)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lmc/c;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance p1, Lha/l2;

    .line 31
    .line 32
    const/16 v0, 0x1c

    .line 33
    .line 34
    invoke-direct {p1, v0}, Lha/l2;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lec/b;->b(Lec/e;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final B(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 2
    .line 3
    sget-object v0, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/k;->m:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p1, "\u4f60\u5df2\u62e5\u6709\u7cfb\u7edf\u5199\u5165\u6743\uff0c\u65e0\u9700\u91cd\u65b0\u6302\u8f7d"

    .line 10
    .line 11
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 16
    .line 17
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 24
    .line 25
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    const-string p1, "\u8bf7\u5148\u8fde\u63a5adb"

    .line 32
    .line 33
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    new-instance v0, Lha/qa;

    .line 38
    .line 39
    const/4 v1, 0x5

    .line 40
    invoke-direct {v0, v1, p1}, Lha/qa;-><init>(IZ)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lmc/c;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {p1, v1, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v0, Lua/x3;

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-direct {v0, p0, v1}, Lua/x3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lkh/e;->l(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onReceiveMsg(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lkh/j;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0045

    return v0
.end method

.method public final u()V
    .locals 6

    .line 1
    invoke-static {}, Lkh/e;->b()Lkh/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lkh/e;->j(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->G:Landroid/content/ContentResolver;

    .line 15
    .line 16
    new-instance v0, Lua/v0;

    .line 17
    .line 18
    const/16 v1, 0x13

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lua/v0;-><init>(I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lmc/c;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lha/l2;

    .line 44
    .line 45
    const/16 v2, 0x1c

    .line 46
    .line 47
    invoke-direct {v1, v2}, Lha/l2;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lha/u9;

    .line 54
    .line 55
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 56
    .line 57
    invoke-direct {v0, p0, v1}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->H:Lha/u9;

    .line 61
    .line 62
    const v0, 0x7f0b03ad

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 70
    .line 71
    new-instance v1, Lua/g1;

    .line 72
    .line 73
    const/16 v2, 0x12

    .line 74
    .line 75
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    const v0, 0x7f0b04f1

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 91
    .line 92
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 93
    .line 94
    const/4 v2, 0x2

    .line 95
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 99
    .line 100
    .line 101
    new-instance v0, Lx9/k3;

    .line 102
    .line 103
    invoke-direct {v0}, Lx9/k3;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 107
    .line 108
    const v1, 0x7f080286

    .line 109
    .line 110
    .line 111
    const-string v2, "\u94f6\u6cb3\u7cfb\u7edf-E02\u82af"

    .line 112
    .line 113
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 117
    .line 118
    const-string v2, "\u5409\u5229\u8f66\u673a(E01)"

    .line 119
    .line 120
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 124
    .line 125
    const v1, 0x7f08029d

    .line 126
    .line 127
    .line 128
    const-string v2, "\u65e5\u4ea7\u8f66\u673a(\u98de\u601d\u5361\u5c14\u82af\u7247)"

    .line 129
    .line 130
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 134
    .line 135
    const v1, 0x7f0802a5

    .line 136
    .line 137
    .line 138
    const-string v2, "\u6b27\u5c1a\u8f66\u673a\u4e13\u533a"

    .line 139
    .line 140
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 144
    .line 145
    const v1, 0x7f08029c

    .line 146
    .line 147
    .line 148
    const-string v2, "\u54ea\u5412\u8f66\u673a\u4e13\u533a"

    .line 149
    .line 150
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 154
    .line 155
    const v1, 0x7f0802e1

    .line 156
    .line 157
    .line 158
    const-string v2, "TCL\u7535\u89c6\u65e0\u6cd5\u5b89\u88c5\u5e94\u7528"

    .line 159
    .line 160
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 164
    .line 165
    const v1, 0x7f080233

    .line 166
    .line 167
    .line 168
    const-string v2, "\u9884\u7559"

    .line 169
    .line 170
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 174
    .line 175
    const v1, 0x7f0802c3

    .line 176
    .line 177
    .line 178
    const-string v2, "\u4fee\u590d\u56e0\u7528\u5176\u5b83\u5de5\u5177app\u5bfc\u81f4\u7cfb\u7edf\u95f4\u6b47\u606f\u5c4f"

    .line 179
    .line 180
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 184
    .line 185
    const v2, 0x7f08024d

    .line 186
    .line 187
    .line 188
    const-string v3, "\u684c\u9762\u7ba1\u7406\uff1a\u7981\u7528\u7cfb\u7edf\u684c\u9762(\u4e0d\u61c2\u614e\u7528)"

    .line 189
    .line 190
    invoke-static {v2, v3, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 194
    .line 195
    const v2, 0x7f08021d

    .line 196
    .line 197
    .line 198
    const-string v3, "\u8c03\u6574\u7cfb\u7edf\u52a8\u753b\uff08\u52a0\u5feb\u7cfb\u7edf\u6d41\u7545\u6027\uff09"

    .line 199
    .line 200
    invoke-static {v2, v3, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 204
    .line 205
    const v2, 0x7f0802bf

    .line 206
    .line 207
    .line 208
    const-string v3, "\u4e00\u952eroot(\u672c\u4eba\u81ea\u7528\uff0c\u4e0d\u9002\u5408\u60a8\u7684\u7cfb\u7edf)"

    .line 209
    .line 210
    invoke-static {v2, v3, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 214
    .line 215
    const v2, 0x7f0802dd

    .line 216
    .line 217
    .line 218
    const-string v3, "\u7cfb\u7edf\u65f6\u95f4\u6821\u6b63(\u5317\u4eac\u65f6\u95f4)"

    .line 219
    .line 220
    invoke-static {v2, v3, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 224
    .line 225
    const v2, 0x7f0801ff

    .line 226
    .line 227
    .line 228
    const-string v3, "adb\u63d0\u6743(su) \u5e76 \u6302\u8f7d\u7cfb\u7edf\u8bfb\u5199"

    .line 229
    .line 230
    invoke-static {v2, v3, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 234
    .line 235
    const-string v3, "adb\u63d0\u6743(adb root) \u5e76 \u6302\u8f7d\u5199\u5165\u6743"

    .line 236
    .line 237
    invoke-static {v2, v3, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 241
    .line 242
    const-string v3, "shell\u63d0\u5347\u4e3aroot\u6743\u9650(\u7528\u5904\u4e0d\u5927)"

    .line 243
    .line 244
    invoke-static {v2, v3, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 245
    .line 246
    .line 247
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 248
    .line 249
    const-string v3, "adb\u63d0\u6743 \u5e76 \u6302\u8f7d\u5199\u5165\u6743(\u8bd5\u9a8c2)"

    .line 250
    .line 251
    invoke-static {v2, v3, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 252
    .line 253
    .line 254
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 255
    .line 256
    const-string v3, "\u5df2\u83b7\u5f97\u7cfb\u7edf\u5199\u5165\u6743\u7684\u4e13\u7528\u529f\u80fd"

    .line 257
    .line 258
    invoke-static {v1, v3, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 262
    .line 263
    const-string v3, "\u9884\u7559\u529f\u80fd"

    .line 264
    .line 265
    invoke-static {v1, v3, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 269
    .line 270
    const-string v1, "adb\u63d0\u6743(\u9002\u5408\u90e8\u5206tcl\u7535\u89c6)"

    .line 271
    .line 272
    invoke-static {v2, v1, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 273
    .line 274
    .line 275
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 276
    .line 277
    const v1, 0x7f080257

    .line 278
    .line 279
    .line 280
    const-string v2, "\u8bbe\u7f6eSELinux\u6a21\u5f0f\uff08\u5f3a\u5236/\u5bbd\u5bb9\uff09"

    .line 281
    .line 282
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 286
    .line 287
    const v1, 0x7f0802d8

    .line 288
    .line 289
    .line 290
    const-string v2, "\u5173\u95ed\u5206\u533a\u68c0\u6d4b(adb root | adb disable-verity)"

    .line 291
    .line 292
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 296
    .line 297
    const v1, 0x7f0802d9

    .line 298
    .line 299
    .line 300
    const-string v2, "(\u5371\u9669)\u5f00\u542f\u5206\u533a\u68c0\u6d4b(adb root | adb enable-verity)"

    .line 301
    .line 302
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 306
    .line 307
    const v1, 0x7f080214

    .line 308
    .line 309
    .line 310
    const-string v2, "adb\u8fde\u63a5\u6388\u6743\u5f39\u7a97(\u5173\u95ed/\u5f00\u542f)"

    .line 311
    .line 312
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 313
    .line 314
    .line 315
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 316
    .line 317
    const-string v2, "\u5173\u95edadb\u6388\u6743\u8fc7\u671f\u9650\u9650(\u8bbe\u5907\u652f\u6301\u7684\u8bdd)"

    .line 318
    .line 319
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 320
    .line 321
    .line 322
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 323
    .line 324
    const v1, 0x7f0802eb

    .line 325
    .line 326
    .line 327
    const-string v2, "\u5c4f\u853d\u7f51\u7edc / \u89e3\u9664\u5c4f\u853d"

    .line 328
    .line 329
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 330
    .line 331
    .line 332
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 333
    .line 334
    const v1, 0x7f0802ba

    .line 335
    .line 336
    .line 337
    const-string v2, "\u8bbe\u7f6e\u8f93\u5165\u6cd5"

    .line 338
    .line 339
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 340
    .line 341
    .line 342
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 343
    .line 344
    new-instance v1, Lx9/l3;

    .line 345
    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v3, "\u91cd\u7f6e\u81ea\u8eab("

    .line 349
    .line 350
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    const v3, 0x7f13002f

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v4, ")"

    .line 364
    .line 365
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    const v5, 0x7f080230

    .line 373
    .line 374
    .line 375
    invoke-direct {v1, v5, v2}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 382
    .line 383
    new-instance v1, Lx9/l3;

    .line 384
    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string v5, "\u5378\u8f7d\u81ea\u8eab("

    .line 388
    .line 389
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    const v3, 0x7f08024a

    .line 407
    .line 408
    .line 409
    invoke-direct {v1, v3, v2}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 416
    .line 417
    const v1, 0x7f0802d7

    .line 418
    .line 419
    .line 420
    const-string v2, "\u5141\u8bb8\u8bbf\u95ee\u975e SDK \u63a5\u53e3"

    .line 421
    .line 422
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 423
    .line 424
    .line 425
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 426
    .line 427
    const-string v2, "\u4fee\u6539\u7cfb\u7edf\u5b89\u5168\u8bbe\u7f6esettings"

    .line 428
    .line 429
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 430
    .line 431
    .line 432
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 433
    .line 434
    const-string v2, "\u591a\u7528\u6237\u7ba1\u7406 (\u4e0d\u61c2\u52ff\u7528)"

    .line 435
    .line 436
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 437
    .line 438
    .line 439
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 440
    .line 441
    const v1, 0x7f08025e

    .line 442
    .line 443
    .line 444
    const-string v2, "\u5f00\u53d1\u8005\u8c03\u8bd5\u8bb0\u5f55\uff08\u8bf7\u52ff\u52fe\u9009\uff09"

    .line 445
    .line 446
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 447
    .line 448
    .line 449
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->E:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 450
    .line 451
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 452
    .line 453
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 454
    .line 455
    .line 456
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityLaboratory;->F:Lx9/k3;

    .line 457
    .line 458
    new-instance v1, Lua/v3;

    .line 459
    .line 460
    const/4 v2, 0x0

    .line 461
    invoke-direct {v1, p0, v2}, Lua/v3;-><init>(Lcom/yunpan/appmanage/ui/ActivityLaboratory;I)V

    .line 462
    .line 463
    .line 464
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 465
    .line 466
    return-void
.end method
