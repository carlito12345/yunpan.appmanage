.class public interface abstract Lcom/autolink/adapterinterface/car/IALCar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/car/IALCar$Stub;,
        Lcom/autolink/adapterinterface/car/IALCar$Default;
    }
.end annotation


# virtual methods
.method public abstract controlFraganceConcentration(II)V
.end method

.method public abstract controlUltravioletLuminance(II)V
.end method

.method public abstract factoryResetForAL()V
.end method

.method public abstract getFloatProperty(II)F
.end method

.method public abstract getIntProperty(II)I
.end method

.method public abstract registerAVMPropertyListener(Lcom/autolink/adapterinterface/car/IALCarAVMPropertyListener;)V
.end method

.method public abstract registerCarEngineSpeedListener(Lcom/autolink/adapterinterface/car/IALCarEngineSpeedListener;)V
.end method

.method public abstract registerCarSpeedListener(Lcom/autolink/adapterinterface/car/IALCarSpeedListener;)V
.end method

.method public abstract registerCarSteerListener(Lcom/autolink/adapterinterface/car/IALCarSteerListener;)V
.end method

.method public abstract registerCarTyreListener(Lcom/autolink/adapterinterface/car/IALCarTyreListener;)V
.end method

.method public abstract registerCarWindListener(Lcom/autolink/adapterinterface/car/IALCarWindListener;)V
.end method

.method public abstract registerExtPropertyListener(Lcom/autolink/adapterinterface/car/IALCarExtPropertyListener;)V
.end method

.method public abstract registerHvacPropertyListener(Lcom/autolink/adapterinterface/car/IALCarHvacPropertyListener;)V
.end method

.method public abstract registerVehicleControlPropertyListener(Lcom/autolink/adapterinterface/car/IALCarVehicleControlPropertyListener;)V
.end method

.method public abstract sendChargeTime(IIII)V
.end method

.method public abstract sendFrontCrashWarningSignals(II)V
.end method

.method public abstract sendHVACsignalsForSmartScene([B)V
.end method

.method public abstract sendIHU03signals([B)V
.end method

.method public abstract sendIHU11signals([B)V
.end method

.method public abstract sendTboxSignalGroupForT1J(IIIII)V
.end method

.method public abstract sendTboxSignalGroupForT1P(IIIII)V
.end method

.method public abstract setGroupPropertyForDriverSeatMassage(III)V
.end method

.method public abstract setGroupPropertyForHUD(IIIIIIII)V
.end method

.method public abstract setGroupPropertyForIHU14SUB1(III)V
.end method

.method public abstract setGroupPropertyForIHU14SUB2(II)V
.end method

.method public abstract setGroupPropertyForIHU14SUB3(II)V
.end method

.method public abstract setGroupPropertyForIHU14SUB4(II)V
.end method

.method public abstract setGroupPropertyForIHUDVR1(IIIIIIII)V
.end method

.method public abstract setGroupPropertyForIHUDVR2(IIIIIIII)V
.end method

.method public abstract setGroupPropertyForIHUDVR3(III)V
.end method

.method public abstract setGroupPropertyForIHUDVRT1L(IIIIIIII)V
.end method

.method public abstract setGroupPropertyForMusicLoud([B)V
.end method

.method public abstract setIntProperty(III)I
.end method

.method public abstract setIntPropertyReduceLog(II)I
.end method

.method public abstract setMultiWindow(IIII)V
.end method

.method public abstract setT1KMirrorFlip(I)V
.end method

.method public abstract setT1PSeatHeatAndVentilation(II)V
.end method

.method public abstract unregisterAVMPropertyListener(Lcom/autolink/adapterinterface/car/IALCarAVMPropertyListener;)V
.end method

.method public abstract unregisterCarEngineSpeedListener(Lcom/autolink/adapterinterface/car/IALCarEngineSpeedListener;)V
.end method

.method public abstract unregisterCarSpeedListener(Lcom/autolink/adapterinterface/car/IALCarSpeedListener;)V
.end method

.method public abstract unregisterCarSteerListener(Lcom/autolink/adapterinterface/car/IALCarSteerListener;)V
.end method

.method public abstract unregisterCarTyreListener(Lcom/autolink/adapterinterface/car/IALCarTyreListener;)V
.end method

.method public abstract unregisterCarWindListener(Lcom/autolink/adapterinterface/car/IALCarWindListener;)V
.end method

.method public abstract unregisterExtPropertyListener(Lcom/autolink/adapterinterface/car/IALCarExtPropertyListener;)V
.end method

.method public abstract unregisterHvacPropertyListener(Lcom/autolink/adapterinterface/car/IALCarHvacPropertyListener;)V
.end method

.method public abstract unregisterVehicleControlPropertyListener(Lcom/autolink/adapterinterface/car/IALCarVehicleControlPropertyListener;)V
.end method
