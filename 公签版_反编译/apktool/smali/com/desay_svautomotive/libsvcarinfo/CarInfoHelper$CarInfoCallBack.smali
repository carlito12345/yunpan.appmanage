.class Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarInfoCallBack;
.super Lcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarInfoCallBack"
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
    invoke-direct {p0}, Lcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack$Stub;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarInfoCallBack;->mHelper:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarInfoCallBack;-><init>(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;)V

    return-void
.end method


# virtual methods
.method public onChangeEvent(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarInfoCallBack;->mHelper:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CarInfoCallBack;->mHelper:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->onReceiveData(II)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method
