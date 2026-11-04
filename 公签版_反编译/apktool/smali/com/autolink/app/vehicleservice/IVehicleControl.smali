.class public interface abstract Lcom/autolink/app/vehicleservice/IVehicleControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/app/vehicleservice/IVehicleControl$Stub;,
        Lcom/autolink/app/vehicleservice/IVehicleControl$Default;
    }
.end annotation


# virtual methods
.method public abstract geCarModelColor(I)Lcom/autolink/app/vehicleservice/CarModelColorBean;
.end method

.method public abstract getChargeInfo(I)Lcom/autolink/app/vehicleservice/ChargeInfoBean;
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract registerCallback(Lcom/autolink/app/vehicleservice/IVehicleControlCallback;[I)V
.end method

.method public abstract registerRemoteCallback(Lcom/autolink/app/vehicleservice/IVehicleControlCallback;[ILjava/lang/String;)V
.end method

.method public abstract setAppointmentTime(ILcom/autolink/app/vehicleservice/AppointmentTimeBean;)V
.end method

.method public abstract setCarModelColor(ILcom/autolink/app/vehicleservice/CarModelColorBean;)V
.end method

.method public abstract setCustomCarSeat(ILcom/autolink/app/vehicleservice/CustomCarSeatBean;)V
.end method

.method public abstract setCustomWindow(ILcom/autolink/app/vehicleservice/CustomWindowBean;)V
.end method

.method public abstract setFloat(IF)V
.end method

.method public abstract setFloatData(IFLjava/lang/String;)V
.end method

.method public abstract setFloatDataImmediately(IFLjava/lang/String;)V
.end method

.method public abstract setInt(II)V
.end method

.method public abstract setIntData(IILjava/lang/String;)V
.end method

.method public abstract setIntDataImmediately(IILjava/lang/String;)V
.end method

.method public abstract setVehicleLicense(ILcom/autolink/app/vehicleservice/VehicleLicenseBean;)V
.end method

.method public abstract unregisterCallback(Lcom/autolink/app/vehicleservice/IVehicleControlCallback;)V
.end method
