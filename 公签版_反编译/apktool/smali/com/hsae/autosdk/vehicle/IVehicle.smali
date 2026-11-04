.class public interface abstract Lcom/hsae/autosdk/vehicle/IVehicle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hsae/autosdk/vehicle/IVehicle$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDoorState()[Z
.end method

.method public abstract getGearId()I
.end method

.method public abstract getIgnState()Z
.end method

.method public abstract getKeyLeaveCarState()Z
.end method

.method public abstract getMeterSpeed()F
.end method

.method public abstract getOffScreenState()Z
.end method

.method public abstract getParkState()I
.end method

.method public abstract getSaftBelt()[I
.end method

.method public abstract getSpeed()I
.end method

.method public abstract getTpmsStatus()[I
.end method

.method public abstract getTurnLight()I
.end method

.method public abstract getUpdateState()Z
.end method

.method public abstract getVehicleType()I
.end method

.method public abstract isAccOn()Z
.end method

.method public abstract isL42PAVMType()Z
.end method

.method public abstract isSafetyLockEnabled()Z
.end method

.method public abstract registerVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setOffScreenState(Z)V
.end method

.method public abstract setUpdateState(Z)V
.end method

.method public abstract unregisterVehicleCallback(Lcom/hsae/autosdk/vehicle/IVehicleCallback;)V
.end method
