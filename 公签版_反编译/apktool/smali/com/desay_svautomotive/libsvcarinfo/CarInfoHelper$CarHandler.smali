.class Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarHandler"
.end annotation


# instance fields
.field private final mHelper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarHandler;->mHelper:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarHandler;-><init>(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarHandler;->mHelper:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget v0, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarHandler;->mHelper:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;

    .line 20
    .line 21
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 22
    .line 23
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->getDelayCountByCmdId(II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarHandler;->mHelper:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;

    .line 39
    .line 40
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 41
    .line 42
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->removeCacheItem(II)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarHandler;->mHelper:Ljava/lang/ref/WeakReference;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->a(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;)Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ISpiListener;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarHandler;->mHelper:Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->a(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;)Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ISpiListener;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget v1, p1, Landroid/os/Message;->what:I

    .line 74
    .line 75
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 76
    .line 77
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 78
    .line 79
    invoke-interface {v0, v1, v2, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ISpiListener;->onReceiveSpi(III)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
