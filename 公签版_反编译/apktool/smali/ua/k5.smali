.class public final Lua/k5;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/k5;->b:I

    iput-object p1, p0, Lua/k5;->c:Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget v0, p0, Lua/k5;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object p1, Lfa/b0;->a:La2/w0;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, La2/w0;->P()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string p1, "\u4fee\u6539\u5931\u8d25"

    .line 18
    .line 19
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p1, "\u4fee\u6539\u5931\u8d25\uff0c\u8bf7\u5148\u8fde\u63a5adb"

    .line 24
    .line 25
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, La2/w0;->P()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    const-string v0, "\u5df2\u5b58\u5728"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-string p1, "\u6dfb\u52a0\u5931\u8d25\uff0c\u8bf7\u5148\u8fde\u63a5adb"

    .line 58
    .line 59
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_2
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public E(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lua/k5;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    instance-of v0, p1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lua/k5;->c:Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->E:Lx9/v3;

    .line 14
    .line 15
    check-cast p1, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget v0, p0, Lua/k5;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lua/k5;->c:Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->E:Lx9/v3;

    .line 10
    .line 11
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    :goto_0
    if-ltz v1, :cond_1

    .line 18
    .line 19
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->E:Lx9/v3;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lc6/g;->t(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/yunpan/appmanage/bean/NameContentSelectBean;

    .line 26
    .line 27
    iget-boolean v2, v2, Lcom/yunpan/appmanage/bean/NameContentSelectBean;->isSelect:Z

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->E:Lx9/v3;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Lc6/g;->C(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
