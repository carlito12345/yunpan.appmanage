.class public interface abstract Lcom/desay_svautomotive/libsvcarinfo/ICarInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/desay_svautomotive/libsvcarinfo/ICarInfo$Stub;
    }
.end annotation


# virtual methods
.method public abstract getItemValues(II)[I
.end method

.method public abstract regCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;[I)V
.end method

.method public abstract sendItemValues(II[I)V
.end method

.method public abstract sendValues(I[I)V
.end method

.method public abstract unRegCallBack(ILcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack;)V
.end method
