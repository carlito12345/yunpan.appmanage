.class public final synthetic Lha/fd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/id;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lha/id;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lha/fd;->a:I

    iput-object p1, p0, Lha/fd;->b:Lha/id;

    iput-boolean p2, p0, Lha/fd;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 4

    .line 1
    iget v0, p0, Lha/fd;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lha/fd;->c:Z

    .line 7
    .line 8
    iget-object v1, p0, Lha/fd;->b:Lha/id;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v1, v1, Lha/a4;->b:Landroid/content/Context;

    .line 14
    .line 15
    const-string v2, "wifi"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v0, "\u5df2\u5f00\u542fWIFI"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v0, "\u5df2\u5173\u95edWIFI"

    .line 35
    .line 36
    :goto_0
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_0
    :cond_1
    const-string v0, "\u5931\u8d25\uff1a\u4e0d\u652f\u6301\u6b64\u8bbe\u5907"

    .line 44
    .line 45
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 49
    .line 50
    .line 51
    :goto_1
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lha/fd;->b:Lha/id;

    .line 53
    .line 54
    iget-object v0, v0, Lha/a4;->b:Landroid/content/Context;

    .line 55
    .line 56
    iget-boolean v1, p0, Lha/fd;->c:Z

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    :try_start_1
    const-string v2, "wifi"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catch_1
    move-exception v2

    .line 74
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catch_2
    move-exception v0

    .line 79
    goto :goto_3

    .line 80
    :cond_2
    :goto_2
    invoke-static {v0, v1}, Lnh/b;->m0(Landroid/content/Context;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 81
    .line 82
    .line 83
    goto :goto_4

    .line 84
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "\u5931\u8d25\uff1a"

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    :goto_4
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
