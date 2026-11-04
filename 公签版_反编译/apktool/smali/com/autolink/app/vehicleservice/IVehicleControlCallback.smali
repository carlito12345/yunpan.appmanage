.class public interface abstract Lcom/autolink/app/vehicleservice/IVehicleControlCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Stub;,
        Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onOnlySyncFloatData(IF)V
.end method

.method public abstract onOnlySyncIntData(II)V
.end method

.method public abstract onReceiveFloat(IFZ)V
.end method

.method public abstract onReceiveInt(IIZ)V
.end method
