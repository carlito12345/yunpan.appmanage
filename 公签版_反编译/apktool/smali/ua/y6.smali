.class public final Lua/y6;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityStudy;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/y6;->b:I

    iput-object p1, p0, Lua/y6;->c:Lcom/yunpan/appmanage/ui/ActivityStudy;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public B(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget p1, p0, Lua/y6;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p1, p0, Lua/y6;->c:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityStudy;->E:Lha/u9;

    .line 10
    .line 11
    invoke-virtual {p1}, Lha/u9;->a()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final E(Ljava/lang/Object;)V
    .locals 5

    .line 1
    const-string v0, "\u6ca1\u6709\u627e\u5230\u5b89\u88c5\u5305\u6587\u4ef6"

    .line 2
    .line 3
    iget-object v1, p0, Lua/y6;->c:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 4
    .line 5
    iget v2, p0, Lua/y6;->b:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lha/b6;

    .line 23
    .line 24
    sget v2, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 25
    .line 26
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 27
    .line 28
    new-instance v3, Lua/g5;

    .line 29
    .line 30
    const/4 v4, 0x6

    .line 31
    invoke-direct {v3, v4, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1, v2, p1, v3}, Lha/b6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/a6;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :pswitch_0
    check-cast p1, Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-instance v0, Lha/b6;

    .line 54
    .line 55
    sget v2, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 56
    .line 57
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 58
    .line 59
    new-instance v3, Lua/g5;

    .line 60
    .line 61
    const/4 v4, 0x5

    .line 62
    invoke-direct {v3, v4, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1, v2, p1, v3}, Lha/b6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/a6;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void

    .line 72
    :pswitch_1
    instance-of v0, p1, Lza/a;

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    check-cast p1, Lza/a;

    .line 77
    .line 78
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityStudy;->E:Lha/u9;

    .line 79
    .line 80
    iget-object p1, p1, Lza/a;->c:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Lha/u9;->b(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lua/y6;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p1, p0, Lua/y6;->c:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityStudy;->E:Lha/u9;

    .line 10
    .line 11
    const-string v0, "\u5bfc\u51fa\u4e2d"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget v0, p0, Lua/y6;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lua/y6;->c:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityStudy;->E:Lha/u9;

    .line 10
    .line 11
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
