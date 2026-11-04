.class Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;


# direct methods
.method public constructor <init>(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

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
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_5

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v3, :cond_2

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->b(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->b(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-lez v2, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->b(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ISvWindowListener;

    .line 46
    .line 47
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 48
    .line 49
    invoke-interface {v1, p1}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ISvWindowListener;->onRequestShowPanel(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->b(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    monitor-enter v0

    .line 66
    :try_start_1
    iget-object v3, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 67
    .line 68
    invoke-static {v3}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->b(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-lez v3, :cond_4

    .line 77
    .line 78
    iget-object v3, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 79
    .line 80
    invoke-static {v3}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->b(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)Ljava/util/ArrayList;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ISvWindowListener;

    .line 89
    .line 90
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 91
    .line 92
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 93
    .line 94
    if-eq p1, v2, :cond_3

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_3
    const/4 v1, 0x1

    .line 98
    :goto_2
    invoke-interface {v3, v4, v1}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ISvWindowListener;->onPanelShowStatus(IZ)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :catchall_1
    move-exception p1

    .line 103
    goto :goto_4

    .line 104
    :cond_4
    :goto_3
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    throw p1

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 109
    .line 110
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->hideSystemPanel(I)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_6
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->b(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    monitor-enter v0

    .line 123
    :try_start_2
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 124
    .line 125
    invoke-static {v2}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->b(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-lez v2, :cond_7

    .line 134
    .line 135
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 136
    .line 137
    invoke-static {v2}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->b(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)Ljava/util/ArrayList;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    check-cast v1, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ISvWindowListener;

    .line 146
    .line 147
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 148
    .line 149
    invoke-interface {v1, p1}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ISvWindowListener;->onHidePanel(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_5

    .line 153
    :catchall_2
    move-exception p1

    .line 154
    goto :goto_6

    .line 155
    :cond_7
    :goto_5
    monitor-exit v0

    .line 156
    return-void

    .line 157
    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 158
    throw p1
.end method
