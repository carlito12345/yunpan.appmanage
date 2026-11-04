.class public final Lua/g7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lua/g7;->a:I

    iput-object p1, p0, Lua/g7;->c:Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

    iput-boolean p2, p0, Lua/g7;->b:Z

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


# virtual methods
.method public final D()V
    .locals 10

    .line 1
    iget v0, p0, Lua/g7;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-boolean v0, p0, Lua/g7;->b:Z

    .line 8
    .line 9
    iget-object v3, p0, Lua/g7;->c:Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget v1, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->F:I

    .line 18
    .line 19
    new-instance v9, Lha/z6;

    .line 20
    .line 21
    new-instance v8, Lkf/d;

    .line 22
    .line 23
    const/16 v1, 0x1c

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v8, v1, v3, v0, v2}, Lkf/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 27
    .line 28
    .line 29
    const-string v4, "\u53ef\u4ee5\u5c06\u5e94\u7528\u8f6c\u4e3a\u666e\u901a\u7cfb\u7edf\u5e94\u7528 \u6216 \u8d85\u7ea7\u7cfb\u7edf\u5e94\u7528"

    .line 30
    .line 31
    const-string v5, "\u6709\u4e9b\u8f66\u673a\u8981\u8f6c\u4e3a\u8d85\u7ea7\u7cfb\u7edf\u5e94\u7528\u624d\u80fd\u4f7f\u7528(2\u4ee3\u54c8\u4f5bH6)"

    .line 32
    .line 33
    const-string v6, "\u666e\u901a\u7cfb\u7edf\u5e94\u7528"

    .line 34
    .line 35
    const-string v7, "\u8d85\u7ea7\u7cfb\u7edf\u5e94\u7528"

    .line 36
    .line 37
    move-object v1, v9

    .line 38
    move-object v2, v3

    .line 39
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v9}, Lha/a4;->show()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Lha/q2;

    .line 47
    .line 48
    new-instance v1, Lua/g5;

    .line 49
    .line 50
    const/4 v2, 0x7

    .line 51
    invoke-direct {v1, v2, p0}, Lua/g5;-><init>(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-direct {v0, v3, v3, v2, v1}, Lha/q2;-><init>(Landroid/app/Activity;Landroid/content/Context;ILha/p2;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 9

    .line 1
    iget v0, p0, Lua/g7;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lha/z6;

    .line 7
    .line 8
    sget v1, Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;->F:I

    .line 9
    .line 10
    iget-object v2, p0, Lua/g7;->c:Lcom/yunpan/appmanage/ui/ActivitySystemHasWrite;

    .line 11
    .line 12
    iget-object v3, v2, Lda/g;->A:Lda/g;

    .line 13
    .line 14
    new-instance v8, Lua/i1;

    .line 15
    .line 16
    const/16 v1, 0x12

    .line 17
    .line 18
    invoke-direct {v8, v1, p0}, Lua/i1;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const-string v6, "\u786e\u5b9a"

    .line 22
    .line 23
    const-string v7, "\u53d6\u6d88"

    .line 24
    .line 25
    const-string v4, "\u662f\u5426\u786e\u5b9a\u8981\u5220\u9664\uff1f"

    .line 26
    .line 27
    const-string v5, ""

    .line 28
    .line 29
    move-object v1, v0

    .line 30
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 34
    .line 35
    .line 36
    :pswitch_0
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
