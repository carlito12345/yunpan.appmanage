.class public final Lha/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/o2;


# direct methods
.method public synthetic constructor <init>(Lha/o2;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/i2;->a:I

    iput-object p1, p0, Lha/i2;->b:Lha/o2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method

.method private final b()V
    .locals 0

    .line 1
    return-void
.end method

.method private final c()V
    .locals 0

    .line 1
    return-void
.end method

.method private final d()V
    .locals 0

    .line 1
    return-void
.end method

.method private final e()V
    .locals 0

    .line 1
    return-void
.end method

.method private final f()V
    .locals 0

    .line 1
    return-void
.end method

.method private final g()V
    .locals 0

    .line 1
    return-void
.end method

.method private final h()V
    .locals 0

    .line 1
    return-void
.end method

.method private final i()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 5

    .line 1
    iget v0, p0, Lha/i2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lha/i2;->b:Lha/o2;

    .line 8
    .line 9
    invoke-virtual {v0}, Lha/o2;->d()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_1
    iget-object v0, p0, Lha/i2;->b:Lha/o2;

    .line 14
    .line 15
    invoke-virtual {v0}, Lha/o2;->d()V

    .line 16
    .line 17
    .line 18
    :pswitch_2
    return-void

    .line 19
    :pswitch_3
    iget-object v0, p0, Lha/i2;->b:Lha/o2;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Lha/o2;->g(Z)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_4
    iget-object v0, p0, Lha/i2;->b:Lha/o2;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lha/o2;->f(Z)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_5
    iget-object v0, p0, Lha/i2;->b:Lha/o2;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sget-object v1, Lfa/b0;->a:La2/w0;

    .line 39
    .line 40
    iget-object v2, v0, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 41
    .line 42
    iget-object v2, v2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v3, Lha/g2;

    .line 45
    .line 46
    const/4 v4, 0x3

    .line 47
    invoke-direct {v3, v0, v4}, Lha/g2;-><init>(Lha/o2;I)V

    .line 48
    .line 49
    .line 50
    iput-object v3, v1, La2/w0;->c:Ljava/lang/Object;

    .line 51
    .line 52
    sget-object v0, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 53
    .line 54
    new-instance v3, Lfa/u;

    .line 55
    .line 56
    const/4 v4, 0x2

    .line 57
    invoke-direct {v3, v1, v2, v4}, Lfa/u;-><init>(La2/w0;Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_6
    iget-object v0, p0, Lha/i2;->b:Lha/o2;

    .line 65
    .line 66
    invoke-virtual {v0}, Lha/o2;->a()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_7
    iget-object v0, p0, Lha/i2;->b:Lha/o2;

    .line 71
    .line 72
    invoke-virtual {v0}, Lha/o2;->a()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 9

    .line 1
    iget v0, p0, Lha/i2;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/i2;->b:Lha/o2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lha/o2;->d()V

    .line 9
    .line 10
    .line 11
    :pswitch_0
    return-void

    .line 12
    :pswitch_1
    new-instance v0, Lha/z6;

    .line 13
    .line 14
    iget-object v1, p0, Lha/i2;->b:Lha/o2;

    .line 15
    .line 16
    iget-object v2, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 17
    .line 18
    iget-object v3, v1, Lha/a4;->b:Landroid/content/Context;

    .line 19
    .line 20
    new-instance v8, Lh5/m;

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    invoke-direct {v8, v1, p0}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const-string v4, "\u7814\u7a76\u53d1\u73b0\uff1a\u6709\u4e9b\u7cfb\u7edf\u5f00\u673a\u540e\u5982\u679c\u7cfb\u7edf\u5e94\u7528\u8fd0\u884c\u8fc7\u540e\uff0c\u518d\u5f3a\u5220\u7684\u8bdd\uff0c\u5e76\u4e0d\u4f1a\u91ca\u653e\u7cfb\u7edf\u5206\u533a\u7684\u7a7a\u95f4\uff01\n\n\u6240\u4ee5\u5efa\u8bae\uff1a\u5148\u5378\u8f7d\u7cfb\u7edf\u5e94\u7528(\u4f2a\u5378\u8f7d)\uff0c\u7136\u540e\u91cd\u542f\u540e\u518d\u6765\u5f3a\u5236\u5220\u9664\uff0c\u8fd9\u6837\u5c31\u4f1a100%\u91ca\u653e\u7cfb\u7edf\u5206\u533a\u7684\u7a7a\u95f4"

    .line 27
    .line 28
    const-string v5, ""

    .line 29
    .line 30
    const-string v6, "\u53d6\u6d88\u5f3a\u5220"

    .line 31
    .line 32
    const-string v7, "\u786e\u5b9a\u5f3a\u5220"

    .line 33
    .line 34
    move-object v1, v0

    .line 35
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_2
    iget-object v0, p0, Lha/i2;->b:Lha/o2;

    .line 43
    .line 44
    invoke-virtual {v0}, Lha/o2;->c()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_3
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 49
    .line 50
    iget-object v1, p0, Lha/i2;->b:Lha/o2;

    .line 51
    .line 52
    iget-object v1, v1, Lha/o2;->h:Lcom/yunpan/appmanage/db/AppBean;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    iput-object v2, v0, La2/w0;->c:Ljava/lang/Object;

    .line 58
    .line 59
    sget-object v2, Lu9/d;->a:Ljava/util/concurrent/ExecutorService;

    .line 60
    .line 61
    new-instance v3, Lfa/u;

    .line 62
    .line 63
    const/4 v4, 0x3

    .line 64
    invoke-direct {v3, v0, v1, v4}, Lfa/u;-><init>(La2/w0;Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_4
    iget-object v0, p0, Lha/i2;->b:Lha/o2;

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Lha/o2;->g(Z)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_5
    iget-object v0, p0, Lha/i2;->b:Lha/o2;

    .line 79
    .line 80
    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1}, Lha/o2;->f(Z)V

    .line 82
    .line 83
    .line 84
    :pswitch_6
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
