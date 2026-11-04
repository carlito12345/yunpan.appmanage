.class Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheItem"
.end annotation


# instance fields
.field public cmdId:I

.field public data:[I

.field public moduleId:I


# direct methods
.method public constructor <init>(II[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;->moduleId:I

    .line 5
    .line 6
    iput p2, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;->cmdId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/desay_svautomotive/libsvcarinfo/CarInfoHelper$CacheItem;->data:[I

    .line 9
    .line 10
    return-void
.end method
