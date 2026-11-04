.class public final Lua/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityBootStartTask;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;I)V
    .locals 0

    .line 1
    iput p3, p0, Lua/w0;->a:I

    iput-object p1, p0, Lua/w0;->c:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    iput-object p2, p0, Lua/w0;->b:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

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
    .locals 9

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object v1, p0, Lua/w0;->c:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 3
    .line 4
    const-string v2, "name"

    .line 5
    .line 6
    const-string v3, "type"

    .line 7
    .line 8
    iget-object v4, p0, Lua/w0;->b:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 9
    .line 10
    const-string v5, "isOpen"

    .line 11
    .line 12
    iget v6, p0, Lua/w0;->a:I

    .line 13
    .line 14
    packed-switch v6, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance v6, Lz7/s;

    .line 18
    .line 19
    invoke-direct {v6}, Lz7/s;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v6, v5, v7}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 25
    .line 26
    .line 27
    iget v5, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 28
    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v6, v3, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 34
    .line 35
    .line 36
    iget-object v3, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v6, v2, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v2, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 42
    .line 43
    sget v3, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 44
    .line 45
    invoke-virtual {v1, v0, v6, v2}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->y(ILz7/s;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 49
    .line 50
    iget-boolean v0, v0, Lcom/yunpan/appmanage/util/w;->B:Z

    .line 51
    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    new-instance v0, Lha/z6;

    .line 55
    .line 56
    new-instance v8, Ls9/a;

    .line 57
    .line 58
    const/4 v1, 0x3

    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-direct {v8, v1, v2}, Ls9/a;-><init>(IZ)V

    .line 61
    .line 62
    .line 63
    const-string v6, "\u786e\u5b9a"

    .line 64
    .line 65
    const-string v7, "\u53d6\u6d88"

    .line 66
    .line 67
    iget-object v3, p0, Lua/w0;->c:Lcom/yunpan/appmanage/ui/ActivityBootStartTask;

    .line 68
    .line 69
    const-string v4, "\u5f00\u673a\u81ea\u52a8\u8fde\u63a5\u5339\u914d\u7801adb\uff0c\u8bf7\u5728\u529f\u80fd\u9762\u677f\u7684\u3010\u5339\u914d\u7801adb\u3011\u529f\u80fd\u91cc\u9762\u52fe\u9009\u3010\u81ea\u52a8\u52fe\u9009\u65e0\u7ebf\u8c03\u8bd5\u3011"

    .line 70
    .line 71
    const-string v5, "\u662f\u5426\u5e2e\u4f60\u52fe\u9009\uff1f\uff1f\uff1f"

    .line 72
    .line 73
    move-object v1, v0

    .line 74
    move-object v2, v3

    .line 75
    invoke-direct/range {v1 .. v8}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void

    .line 82
    :pswitch_0
    new-instance v6, Lz7/s;

    .line 83
    .line 84
    invoke-direct {v6}, Lz7/s;-><init>()V

    .line 85
    .line 86
    .line 87
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v6, v5, v7}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 90
    .line 91
    .line 92
    iget v5, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 93
    .line 94
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v6, v3, v5}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 99
    .line 100
    .line 101
    iget-object v3, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v6, v2, v3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v2, v4, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_name:Ljava/lang/String;

    .line 107
    .line 108
    sget v3, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->G:I

    .line 109
    .line 110
    invoke-virtual {v1, v0, v6, v2}, Lcom/yunpan/appmanage/ui/ActivityBootStartTask;->y(ILz7/s;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final t()V
    .locals 1

    .line 1
    iget v0, p0, Lua/w0;->a:I

    return-void
.end method
