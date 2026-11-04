.class Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer$ITimerTaskHandler;


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
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$2;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

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
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$2;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->sendDefaultValue()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$2;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->c(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, v0}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->cancelTimeTask(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$2;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->c(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$2;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->c(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->isTaskExist(I)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$2;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->c(Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;)Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, v0}, Lcom/desay_svautomotive/libsvcarmodel/MultiTaskTimer;->cancelTimeTask(I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy$2;->this$0:Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/desay_svautomotive/libsvcarmodel/CarModelProxy;->bindService()V

    .line 55
    .line 56
    .line 57
    return-void
.end method
