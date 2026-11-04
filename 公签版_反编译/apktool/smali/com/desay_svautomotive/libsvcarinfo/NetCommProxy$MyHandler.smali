.class Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;


# direct methods
.method public constructor <init>(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->d(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    monitor-enter v1

    .line 14
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->d(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ge v2, v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->d(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$INetMsgListener;

    .line 37
    .line 38
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 39
    .line 40
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 41
    .line 42
    invoke-interface {v0, v3, v4}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$INetMsgListener;->onReceiveMsg(II)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    monitor-exit v1

    .line 51
    goto/16 :goto_7

    .line 52
    .line 53
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p1

    .line 55
    :cond_1
    const/4 v1, 0x1

    .line 56
    if-ne v0, v1, :cond_4

    .line 57
    .line 58
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->d(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    monitor-enter v3

    .line 65
    const/4 v0, 0x0

    .line 66
    :goto_2
    :try_start_1
    iget-object v4, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 67
    .line 68
    invoke-static {v4}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->d(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-ge v0, v4, :cond_3

    .line 77
    .line 78
    iget-object v4, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 79
    .line 80
    invoke-static {v4}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->d(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$INetMsgListener;

    .line 89
    .line 90
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 91
    .line 92
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 93
    .line 94
    if-ne v6, v1, :cond_2

    .line 95
    .line 96
    const/4 v6, 0x1

    .line 97
    goto :goto_3

    .line 98
    :cond_2
    const/4 v6, 0x0

    .line 99
    :goto_3
    invoke-interface {v4, v5, v6}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$INetMsgListener;->onConnectChanged(IZ)V

    .line 100
    .line 101
    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    goto :goto_4

    .line 107
    :cond_3
    monitor-exit v3

    .line 108
    goto :goto_7

    .line 109
    :goto_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    throw p1

    .line 111
    :cond_4
    const/4 v1, 0x3

    .line 112
    if-ne v0, v1, :cond_6

    .line 113
    .line 114
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->a(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    monitor-enter v0

    .line 121
    :goto_5
    :try_start_2
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 122
    .line 123
    invoke-static {v1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->a(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-ge v2, v1, :cond_5

    .line 132
    .line 133
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 134
    .line 135
    invoke-static {v1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->a(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$ICarLanListener;

    .line 144
    .line 145
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 146
    .line 147
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 148
    .line 149
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v5, Ljava/lang/String;

    .line 152
    .line 153
    invoke-interface {v1, v3, v4, v5}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$ICarLanListener;->onReceiveCarLanMsg(IILjava/lang/String;)V

    .line 154
    .line 155
    .line 156
    add-int/lit8 v2, v2, 0x1

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :catchall_2
    move-exception p1

    .line 160
    goto :goto_6

    .line 161
    :cond_5
    monitor-exit v0

    .line 162
    goto :goto_7

    .line 163
    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 164
    throw p1

    .line 165
    :cond_6
    :goto_7
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 166
    .line 167
    .line 168
    return-void
.end method
