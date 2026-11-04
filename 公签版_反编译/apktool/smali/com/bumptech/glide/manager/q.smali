.class public final Lcom/bumptech/glide/manager/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/bumptech/glide/manager/r;


# direct methods
.method public synthetic constructor <init>(Lcom/bumptech/glide/manager/r;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/bumptech/glide/manager/q;->a:I

    iput-object p1, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/manager/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/bumptech/glide/manager/q;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/manager/r;

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/bumptech/glide/manager/r;->d:Z

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/manager/r;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/bumptech/glide/manager/r;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iput-boolean v2, v1, Lcom/bumptech/glide/manager/r;->d:Z

    .line 17
    .line 18
    iget-object v1, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/manager/r;

    .line 19
    .line 20
    iget-boolean v1, v1, Lcom/bumptech/glide/manager/r;->d:Z

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    const-string v0, "ConnectivityMonitor"

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/manager/r;

    .line 34
    .line 35
    iget-boolean v0, v0, Lcom/bumptech/glide/manager/r;->d:Z

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/manager/r;

    .line 38
    .line 39
    iget-boolean v1, v0, Lcom/bumptech/glide/manager/r;->d:Z

    .line 40
    .line 41
    new-instance v2, Lcom/bumptech/glide/manager/o;

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-direct {v2, v0, v1, v3}, Lcom/bumptech/glide/manager/o;-><init>(Ljava/lang/Object;ZI)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, La6/q;->f()Landroid/os/Handler;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/manager/r;

    .line 56
    .line 57
    iget-boolean v0, v0, Lcom/bumptech/glide/manager/r;->e:Z

    .line 58
    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/manager/r;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/r;->e:Z

    .line 66
    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/manager/r;

    .line 68
    .line 69
    iget-object v1, v0, Lcom/bumptech/glide/manager/r;->a:Landroid/content/Context;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/bumptech/glide/manager/r;->f:La2/k;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/manager/r;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/r;->c()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/r;->d:Z

    .line 84
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/manager/r;

    .line 86
    .line 87
    iget-object v1, v0, Lcom/bumptech/glide/manager/r;->a:Landroid/content/Context;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/bumptech/glide/manager/r;->f:La2/k;

    .line 90
    .line 91
    new-instance v2, Landroid/content/IntentFilter;

    .line 92
    .line 93
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 94
    .line 95
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/manager/r;

    .line 102
    .line 103
    const/4 v1, 0x1

    .line 104
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/r;->e:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catch_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/q;->b:Lcom/bumptech/glide/manager/r;

    .line 108
    .line 109
    const/4 v1, 0x0

    .line 110
    iput-boolean v1, v0, Lcom/bumptech/glide/manager/r;->e:Z

    .line 111
    .line 112
    :goto_1
    return-void

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
