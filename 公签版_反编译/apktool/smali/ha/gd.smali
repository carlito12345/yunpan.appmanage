.class public final Lha/gd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/id;


# direct methods
.method public synthetic constructor <init>(Lha/id;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/gd;->a:I

    iput-object p1, p0, Lha/gd;->b:Lha/id;

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
    .locals 2

    .line 1
    iget v0, p0, Lha/gd;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/gd;->b:Lha/id;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lha/id;->b(Lha/id;Z)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iget-object v0, p0, Lha/gd;->b:Lha/id;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v0, v1}, Lha/id;->a(Lha/id;Z)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    iget-object v0, p0, Lha/gd;->b:Lha/id;

    .line 21
    .line 22
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v0}, Lqf/c;->Z(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 10

    .line 1
    iget v0, p0, Lha/gd;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfa/j;->i()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lha/gd;->b:Lha/id;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    invoke-static {v1, v0}, Lha/id;->b(Lha/id;Z)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    new-instance v0, Lha/z6;

    .line 31
    .line 32
    iget-object v3, v1, Lha/a4;->a:Landroid/app/Activity;

    .line 33
    .line 34
    iget-object v4, v1, Lha/a4;->b:Landroid/content/Context;

    .line 35
    .line 36
    new-instance v9, Lh5/m;

    .line 37
    .line 38
    const/16 v1, 0x12

    .line 39
    .line 40
    invoke-direct {v9, v1, p0}, Lh5/m;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const-string v7, "\u5173\u95edwifi"

    .line 44
    .line 45
    const-string v8, "\u53d6\u6d88"

    .line 46
    .line 47
    const-string v5, "\u60a8\u5df2\u8fde\u63a5\u65e0\u7ebfadb\uff0c\u786e\u5b9a\u8981\u5173\u95edwifi\u5417\uff1f"

    .line 48
    .line 49
    const-string v6, "\u63d0\u793a\uff1a\u5173\u95edwifi\u6709\u4e9b\u8bbe\u5907\u4f1a\u65ad\u5f00adb"

    .line 50
    .line 51
    move-object v2, v0

    .line 52
    invoke-direct/range {v2 .. v9}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lha/gd;->b:Lha/id;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-static {v0, v1}, Lha/id;->a(Lha/id;Z)V

    .line 63
    .line 64
    .line 65
    :pswitch_1
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
