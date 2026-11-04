.class Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ServiceConnectListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/desay_svautomotive/libsvcarinfo/IServiceConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceConnectListener"
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ServiceConnectListener;->mHelper:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ServiceConnectListener;-><init>(Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;)V

    return-void
.end method


# virtual methods
.method public onServiceConnectedChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ServiceConnectListener;->mHelper:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$ServiceConnectListener;->mHelper:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;->onConnectSuccess()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method
