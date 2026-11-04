.class Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;


# direct methods
.method public constructor <init>(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

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
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->e(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->c(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->c(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, v1}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->isTaskExist(I)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->c(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v1}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->cancelTimeTask(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 38
    .line 39
    invoke-static {p2}, Lcom/desay_svautomotive/libsvcarmodel/ICarModel$Stub;->asInterface(Landroid/os/IBinder;)Lcom/desay_svautomotive/libsvcarmodel/ICarModel;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p1, p2}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->d(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;Lcom/desay_svautomotive/libsvcarmodel/ICarModel;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->a(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    monitor-enter p1

    .line 53
    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 54
    .line 55
    invoke-static {p2}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->a(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-ge v1, p2, :cond_1

    .line 64
    .line 65
    iget-object p2, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 66
    .line 67
    invoke-static {p2}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->a(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Lcom/desay_svautomotive/libsvcarmodel/IServiceConnectListener;

    .line 76
    .line 77
    invoke-interface {p2, v0}, Lcom/desay_svautomotive/libsvcarmodel/IServiceConnectListener;->onServiceConnectedChanged(I)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p2

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->sendDefaultValue()V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->c(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const/16 p2, 0x320

    .line 98
    .line 99
    invoke-virtual {p1, v0, p2}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->setTimeTask(II)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->b(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Landroid/view/Surface;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->b(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Landroid/view/Surface;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->onSurfaceCreated(Landroid/view/Surface;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    return-void

    .line 120
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    goto :goto_3

    .line 122
    :goto_2
    throw p2

    .line 123
    :goto_3
    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->d(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;Lcom/desay_svautomotive/libsvcarmodel/ICarModel;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p1, v0}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->e(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;Z)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->c(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->c(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/16 v1, 0x1388

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->setTimeTask(II)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->a(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    monitor-enter p1

    .line 39
    const/4 v1, 0x0

    .line 40
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->a(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ge v1, v2, :cond_1

    .line 51
    .line 52
    iget-object v2, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$1;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->a(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/desay_svautomotive/libsvcarmodel/IServiceConnectListener;

    .line 63
    .line 64
    invoke-interface {v2, v0}, Lcom/desay_svautomotive/libsvcarmodel/IServiceConnectListener;->onServiceConnectedChanged(I)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    monitor-exit p1

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    goto :goto_3

    .line 76
    :goto_2
    throw v0

    .line 77
    :goto_3
    goto :goto_2
.end method
