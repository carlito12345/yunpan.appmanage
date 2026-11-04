.class Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;


# direct methods
.method public constructor <init>(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->e(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->e(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1, v0}, Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;->isTaskExist(I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->e(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;->cancelTimeTask(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 32
    .line 33
    invoke-static {p2}, Lcom/desay_svautomotive/libsvcarinfo/INetComm$Stub;->asInterface(Landroid/os/IBinder;)Lcom/desay_svautomotive/libsvcarinfo/INetComm;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->f(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;Lcom/desay_svautomotive/libsvcarinfo/INetComm;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 41
    .line 42
    const/4 p2, 0x1

    .line 43
    invoke-static {p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->g(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->b(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    monitor-enter p1

    .line 53
    const/4 v1, 0x0

    .line 54
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 55
    .line 56
    invoke-static {v2}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->b(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ge v1, v2, :cond_1

    .line 65
    .line 66
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 67
    .line 68
    invoke-static {v2}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->b(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;

    .line 77
    .line 78
    invoke-interface {v2, p2}, Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;->onServiceConnectedChanged(I)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p2

    .line 85
    goto :goto_2

    .line 86
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->regRemoteNetMsgCallBack()V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->regRemoteCarLanCallBack()V

    .line 95
    .line 96
    .line 97
    :goto_1
    const/4 p1, 0x3

    .line 98
    if-ge v0, p1, :cond_3

    .line 99
    .line 100
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->isNetMsgConnected(I)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_2

    .line 107
    .line 108
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput p2, p1, Landroid/os/Message;->what:I

    .line 113
    .line 114
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 115
    .line 116
    iput p2, p1, Landroid/os/Message;->arg2:I

    .line 117
    .line 118
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 119
    .line 120
    invoke-static {v1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->c(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    .line 126
    .line 127
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    return-void

    .line 131
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    goto :goto_4

    .line 133
    :goto_3
    throw p2

    .line 134
    :goto_4
    goto :goto_3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->g(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->f(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;Lcom/desay_svautomotive/libsvcarinfo/INetComm;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->b(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    monitor-enter p1

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->b(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ge v1, v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 34
    .line 35
    invoke-static {v2}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->b(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;

    .line 44
    .line 45
    invoke-interface {v2, v0}, Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;->onServiceConnectedChanged(I)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->e(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->e(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const/16 v1, 0x1388

    .line 69
    .line 70
    invoke-virtual {p1, v0, v1}, Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;->setTimeTask(II)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void

    .line 74
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    goto :goto_3

    .line 76
    :goto_2
    throw v0

    .line 77
    :goto_3
    goto :goto_2
.end method
