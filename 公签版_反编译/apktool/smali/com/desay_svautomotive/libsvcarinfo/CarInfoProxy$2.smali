.class Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer$ITimerTaskHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;


# direct methods
.method public constructor <init>(Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy$2;->this$0:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTimerTaskHandle(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy$2;->this$0:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->b(Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;)Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy$2;->this$0:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->b(Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;)Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;->isTaskExist(I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy$2;->this$0:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->b(Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;)Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, v0}, Lcom/desay_svautomotive/libsvcarinfo/MultiTaskTimer;->cancelTimeTask(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy$2;->this$0:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->bindService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method
