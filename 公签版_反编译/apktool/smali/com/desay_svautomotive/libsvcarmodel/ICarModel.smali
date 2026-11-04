.class public interface abstract Lcom/desay_svautomotive/libsvcarmodel/ICarModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/desay_svautomotive/libsvcarmodel/ICarModel$Stub;
    }
.end annotation


# virtual methods
.method public abstract getSurfaceIsCreate()Z
.end method

.method public abstract onSurfaceChanged(II)V
.end method

.method public abstract onSurfaceCreated(Landroid/view/Surface;)V
.end method

.method public abstract onSurfaceDestroyed()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract regCallBack(Lcom/desay_svautomotive/libsvcarmodel/ICarModelCallBack;)V
.end method

.method public abstract setDataBool(Ljava/lang/String;Z)V
.end method

.method public abstract setDataInt(Ljava/lang/String;I)V
.end method

.method public abstract setDataReal(Ljava/lang/String;D)V
.end method

.method public abstract setDataString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unRegCallBack(Lcom/desay_svautomotive/libsvcarmodel/ICarModelCallBack;)V
.end method
