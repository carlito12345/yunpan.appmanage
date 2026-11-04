.class Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;


# direct methods
.method public constructor <init>(Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :goto_0
    const-wide/16 v0, 0xc8

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :goto_1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->a(Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    monitor-enter v0

    .line 18
    :try_start_1
    iget-object v1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer$1;->this$0:Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;->a(Lcom/desay_svautomotive/libsvcarinfo/CarInfoTimer;)Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->onSVTimer()V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    goto :goto_3

    .line 46
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->getInstance()Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->onSVTimer()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    goto :goto_5

    .line 57
    :goto_4
    throw v1

    .line 58
    :goto_5
    goto :goto_4
.end method
