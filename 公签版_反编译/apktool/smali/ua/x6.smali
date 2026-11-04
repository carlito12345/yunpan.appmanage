.class public final Lua/x6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityStudy;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityStudy;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/x6;->a:I

    iput-object p1, p0, Lua/x6;->b:Lcom/yunpan/appmanage/ui/ActivityStudy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 4

    .line 1
    iget v0, p0, Lua/x6;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 7
    .line 8
    iget-object v0, p0, Lua/x6;->b:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/content/Intent;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "com.baidu.naviauto.action.recv"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, Lda/g;->A:Lda/g;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/yunpan/appmanage/carsdk/i;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string v2, "CMD_TYPE"

    .line 33
    .line 34
    const/16 v3, 0x2719

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string v2, "DAY_NIGHT_MODE"

    .line 40
    .line 41
    const/4 v3, 0x2

    .line 42
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const/16 v2, 0x20

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    .line 52
    .line 53
    :pswitch_0
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 10

    .line 1
    iget v0, p0, Lua/x6;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "com.baidu.naviauto.action.recv"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string v1, "CMD_TYPE"

    .line 17
    .line 18
    const/16 v2, 0x2719

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string v1, "DAY_NIGHT_MODE"

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lua/x6;->b:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    new-instance v0, Lha/z6;

    .line 36
    .line 37
    new-instance v9, Lua/i1;

    .line 38
    .line 39
    const/16 v1, 0x11

    .line 40
    .line 41
    invoke-direct {v9, v1, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v4, p0, Lua/x6;->b:Lcom/yunpan/appmanage/ui/ActivityStudy;

    .line 45
    .line 46
    const-string v5, "\u518d\u6b21\u4e25\u91cd\u8b66\u544a"

    .line 47
    .line 48
    const-string v6, "\u6b64\u529f\u80fd\u53ef\u80fd\u4f1a\u5bfc\u81f4\u65e0\u6cd5\u5f00\u673a\uff0c\u53d8\u7816\u5934\uff0c\u8bf7\u52ff\u5c1d\u8bd5"

    .line 49
    .line 50
    const-string v7, "\u597d\u7684"

    .line 51
    .line 52
    const-string v8, "\u6211\u60f3\u8bd5\u8bd5"

    .line 53
    .line 54
    move-object v2, v0

    .line 55
    move-object v3, v4

    .line 56
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
