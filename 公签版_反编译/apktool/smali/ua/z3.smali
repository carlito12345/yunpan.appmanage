.class public final Lua/z3;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lua/z3;->b:I

    iput-object p2, p0, Lua/z3;->e:Ljava/lang/Object;

    iput-object p3, p0, Lua/z3;->c:Ljava/lang/Object;

    iput-boolean p4, p0, Lua/z3;->d:Z

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget v0, p0, Lua/z3;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lua/z3;->d:Z

    .line 7
    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    iget-object v2, p0, Lua/z3;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lua/i9;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, v2, Lua/i9;->G:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff1a"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, v2, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->finishLoadMore()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v3, "\u8bfb\u53d6\u5931\u8d25\uff1a"

    .line 51
    .line 52
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    :cond_1
    const-string p1, "\u8bfb\u53d6\u76ee\u5f55\u5931\u8d25"

    .line 86
    .line 87
    :cond_2
    const/4 v0, 0x1

    .line 88
    const v3, 0x7f0802a0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p1, v3, v0}, Lua/i9;->u(Ljava/lang/String;IZ)V

    .line 92
    .line 93
    .line 94
    iget-object p1, v2, Lua/i9;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void

    .line 100
    :pswitch_0
    const-string p1, "\u65e0\u6cd5\u83b7\u53d6\u672c\u673aapk\u6587\u4ef6"

    .line 101
    .line 102
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_1
    const-string p1, "\u65e0\u6cd5\u83b7\u53d6\u672c\u673aapk\u6587\u4ef6"

    .line 107
    .line 108
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lua/z3;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lua/z3;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lua/i9;

    .line 10
    .line 11
    iget-object v1, v0, Lua/i9;->q:Lx9/y5;

    .line 12
    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lc6/g;->r(Ljava/util/Collection;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, v0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 19
    .line 20
    iget-object v1, p0, Lua/z3;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 23
    .line 24
    iget-boolean v2, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->hasMoreData:Z

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setHasMoreData(Z)V

    .line 27
    .line 28
    .line 29
    iget-boolean p1, p0, Lua/z3;->d:Z

    .line 30
    .line 31
    const/16 v2, 0x8

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, v0, Lua/i9;->G:Landroid/widget/LinearLayout;

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    iget-object p1, v0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->finishLoadMore()V

    .line 43
    .line 44
    .line 45
    iget-boolean p1, v1, Lcom/yunpan/appmanage/bean/WpPathBean;->hasMoreData:Z

    .line 46
    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    iget-object p1, v0, Lua/i9;->p:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->finishLoadMoreWithNoMore()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, v0, Lua/i9;->q:Lx9/y5;

    .line 56
    .line 57
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    const p1, 0x7f08029f

    .line 64
    .line 65
    .line 66
    const-string v1, "\u6ca1\u6709\u6587\u4ef6/\u76ee\u5f55"

    .line 67
    .line 68
    const/4 v3, 0x1

    .line 69
    invoke-virtual {v0, v1, p1, v3}, Lua/i9;->u(Ljava/lang/String;IZ)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object p1, v0, Lua/i9;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 73
    .line 74
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 7

    .line 1
    iget-object v0, p0, Lua/z3;->c:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    iget-boolean v2, p0, Lua/z3;->d:Z

    .line 5
    .line 6
    iget-object v3, p0, Lua/z3;->e:Ljava/lang/Object;

    .line 7
    .line 8
    iget v4, p0, Lua/z3;->b:I

    .line 9
    .line 10
    packed-switch v4, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    new-instance v4, Lha/b6;

    .line 15
    .line 16
    sget v5, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->F:I

    .line 17
    .line 18
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

    .line 19
    .line 20
    iget-object v5, v3, Lda/g;->A:Lda/g;

    .line 21
    .line 22
    new-instance v6, Lha/h2;

    .line 23
    .line 24
    invoke-direct {v6, p0, v2, v1}, Lha/h2;-><init>(Ljava/lang/Object;ZI)V

    .line 25
    .line 26
    .line 27
    check-cast v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v4, v3, v5, v0, v6}, Lha/b6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/a6;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Lha/a4;->show()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    check-cast v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    const-string v0, "\u672c\u673aSD\u5361\u91cc\u9762\u6ca1\u6709apk\u6587\u4ef6"

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance v4, Lha/b6;

    .line 52
    .line 53
    new-instance v5, Lha/qa;

    .line 54
    .line 55
    invoke-direct {v5, v1, v2}, Lha/qa;-><init>(IZ)V

    .line 56
    .line 57
    .line 58
    check-cast v3, Lcom/yunpan/appmanage/ui/ActivityNezha;

    .line 59
    .line 60
    invoke-direct {v4, v3, v3, v0, v5}, Lha/b6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/a6;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Lha/a4;->show()V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
