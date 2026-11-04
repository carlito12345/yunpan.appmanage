.class Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Task"
.end annotation


# instance fields
.field private taskId:I

.field final synthetic this$0:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;


# direct methods
.method public constructor <init>(Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;->this$0:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;->taskId:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getTaskId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;->taskId:I

    .line 2
    .line 3
    return v0
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;->this$0:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->a(Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;)Landroid/util/SparseArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;->taskId:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;->this$0:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->b(Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;)Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$ITimerTaskHandler;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;->taskId:I

    .line 24
    .line 25
    const v1, -0xffff

    .line 26
    .line 27
    .line 28
    if-eq v1, v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;->this$0:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->b(Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;)Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$ITimerTaskHandler;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v1, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;->taskId:I

    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$ITimerTaskHandler;->onTimerTaskHandle(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;->this$0:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->cancelTimeTask(I)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;->this$0:Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 49
    .line 50
    iget v1, p0, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$Task;->taskId:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->cancelTimeTask(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
