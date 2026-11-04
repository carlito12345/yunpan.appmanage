.class public final Lua/s7;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lua/s7;->b:I

    iput-object p2, p0, Lua/s7;->c:Ljava/lang/Object;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget v0, p0, Lua/s7;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lua/s7;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;->D:Landroid/widget/TextView;

    .line 12
    .line 13
    const-string v2, "\u786e\u5b9a"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v1, "\u672a\u627e\u5230\u7aef\u53e3"

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;->C:Landroid/widget/TextView;

    .line 45
    .line 46
    const-string v0, "\u672a\u627e\u5230\u7aef\u53e3\uff0c\u8bf7\u91cd\u65b0\u5c1d\u8bd5"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;->C:Landroid/widget/TextView;

    .line 53
    .line 54
    const-string v0, "\u914d\u5bf9\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u5c1d\u8bd5"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/s7;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lua/s7;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->F:Lx9/a0;

    .line 12
    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, v0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->G:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->F:Lx9/a0;

    .line 21
    .line 22
    invoke-virtual {v0}, Lc6/g;->b()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/16 v0, 0x8

    .line 31
    .line 32
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    iget-object p1, p0, Lua/s7;->c:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Landroidx/room/s;

    .line 39
    .line 40
    iget-object v0, p1, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->F:Lx9/a0;

    .line 45
    .line 46
    iget p1, p1, Landroidx/room/s;->b:I

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lc6/g;->C(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lua/s7;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p1, p0, Lua/s7;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityUsersApps;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->H:Lha/u9;

    .line 12
    .line 13
    const-string v0, "\u52a0\u8f7d\u4e2d"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget v0, p0, Lua/s7;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lua/s7;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;->D:Landroid/widget/TextView;

    .line 12
    .line 13
    const-string v2, "\u6210\u529f"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityWindowInputAdbPair;->C:Landroid/widget/TextView;

    .line 19
    .line 20
    const-string v1, "\u914d\u5bf9\u6210\u529f\uff0c\u8bf7\u5c06\u7ba1\u5bb6\u9000\u51fa\u5c0f\u7a97\u53e3\u6a21\u5f0f\uff0c\u7136\u540e\u8fd4\u56de"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    iget-object v0, p0, Lua/s7;->c:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityUsersApps;->H:Lha/u9;

    .line 31
    .line 32
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
