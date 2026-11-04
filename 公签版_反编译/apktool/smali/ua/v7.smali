.class public final Lua/v7;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lua/x7;


# direct methods
.method public synthetic constructor <init>(Lua/x7;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/v7;->b:I

    iput-object p1, p0, Lua/v7;->c:Lua/x7;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/v7;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lua/v7;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    new-instance v0, Lha/z6;

    .line 8
    .line 9
    iget-object v1, p0, Lua/v7;->c:Lua/x7;

    .line 10
    .line 11
    iget-object v2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 12
    .line 13
    iget-object v1, v1, Lda/h;->e:Landroid/content/Context;

    .line 14
    .line 15
    check-cast p1, Lba/o;

    .line 16
    .line 17
    invoke-direct {v0, v2, v1, p1}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Lba/o;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lha/z6;->show()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    new-instance v0, Lha/b6;

    .line 25
    .line 26
    iget-object v1, p0, Lua/v7;->c:Lua/x7;

    .line 27
    .line 28
    iget-object v2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 29
    .line 30
    iget-object v1, v1, Lda/h;->e:Landroid/content/Context;

    .line 31
    .line 32
    check-cast p1, Ljava/util/List;

    .line 33
    .line 34
    new-instance v3, Lua/g5;

    .line 35
    .line 36
    const/16 v4, 0xc

    .line 37
    .line 38
    invoke-direct {v3, v4, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, v2, v1, p1, v3}, Lha/b6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/a6;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2
    instance-of v0, p1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 49
    .line 50
    iget-object v1, p0, Lua/v7;->c:Lua/x7;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    check-cast p1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 55
    .line 56
    iget v0, p1, Lcom/yunpan/appmanage/bean/CmdBean;->ico:I

    .line 57
    .line 58
    const v2, 0x7f080239

    .line 59
    .line 60
    .line 61
    if-ne v0, v2, :cond_0

    .line 62
    .line 63
    iget-object v0, v1, Lua/x7;->i:Lx9/b1;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, v1, Lua/x7;->i:Lx9/b1;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1, p1}, Lc6/g;->p(ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, v1, Lua/x7;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 77
    .line 78
    iget-object v0, v1, Lua/x7;->h:Lx9/b1;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 0

    .line 1
    iget p1, p0, Lua/v7;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    const-string p1, "\u5c1d\u8bd5\u8fde\u63a5\u4e2d"

    .line 8
    .line 9
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->showLong(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget v0, p0, Lua/v7;->b:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :sswitch_0
    const-string v0, "\u8fde\u63a5\u6210\u529f"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lha/sa;

    .line 13
    .line 14
    iget-object v1, p0, Lua/v7;->c:Lua/x7;

    .line 15
    .line 16
    iget-object v2, v1, Lda/h;->f:Landroid/app/Activity;

    .line 17
    .line 18
    iget-object v1, v1, Lda/h;->e:Landroid/content/Context;

    .line 19
    .line 20
    invoke-direct {v0, v2, v1}, Lha/sa;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :sswitch_1
    iget-object v0, p0, Lua/v7;->c:Lua/x7;

    .line 28
    .line 29
    iget-object v1, v0, Lua/x7;->i:Lx9/b1;

    .line 30
    .line 31
    new-instance v2, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 32
    .line 33
    const v3, 0x7f0802e8

    .line 34
    .line 35
    .line 36
    const-string v4, "\u70ed\u70b9\u5f00\u5173"

    .line 37
    .line 38
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lua/x7;->i:Lx9/b1;

    .line 45
    .line 46
    new-instance v2, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 47
    .line 48
    const v3, 0x7f0802e9

    .line 49
    .line 50
    .line 51
    const-string v4, "wifi\u5f00\u5173"

    .line 52
    .line 53
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v0, Lua/x7;->i:Lx9/b1;

    .line 60
    .line 61
    new-instance v1, Lcom/yunpan/appmanage/bean/CmdBean;

    .line 62
    .line 63
    const v2, 0x7f080294

    .line 64
    .line 65
    .line 66
    const-string v3, "\u84dd\u7259\u5f00\u5173"

    .line 67
    .line 68
    invoke-direct {v1, v2, v3}, Lcom/yunpan/appmanage/bean/CmdBean;-><init>(ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method
