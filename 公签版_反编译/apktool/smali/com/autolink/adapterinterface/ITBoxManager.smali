.class public interface abstract Lcom/autolink/adapterinterface/ITBoxManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/ITBoxManager$Stub;,
        Lcom/autolink/adapterinterface/ITBoxManager$Default;
    }
.end annotation


# virtual methods
.method public abstract changeCallStateRequest(III)V
.end method

.method public abstract chargeReserveSetRequest(ILcom/autolink/adapterinterface/ChargeSetReqeust;)V
.end method

.method public abstract chargeReserveStatuReportResponse(II)V
.end method

.method public abstract chargeReserveSyncResponse(II)V
.end method

.method public abstract fotaUserComfirmResponse(ILcom/autolink/adapterinterface/FotaUserComfResp;)V
.end method

.method public abstract getCarModelConfig()[B
.end method

.method public abstract getGeneralInfo()Lcom/autolink/adapterinterface/GeneralInfo;
.end method

.method public abstract getHardwareVersion()Ljava/lang/String;
.end method

.method public abstract getICCID()Ljava/lang/String;
.end method

.method public abstract getIMEI()Ljava/lang/String;
.end method

.method public abstract getIMSI()Ljava/lang/String;
.end method

.method public abstract getManufactureDate()I
.end method

.method public abstract getNetworkType()I
.end method

.method public abstract getPartNumber()Ljava/lang/String;
.end method

.method public abstract getSN()Ljava/lang/String;
.end method

.method public abstract getSignalStrength()I
.end method

.method public abstract getSoftVersion()Ljava/lang/String;
.end method

.method public abstract getSupplierIdertifier()Ljava/lang/String;
.end method

.method public abstract getVinCode()Ljava/lang/String;
.end method

.method public abstract inquireChargeReserveRequest(I)V
.end method

.method public abstract lightShowCtrlResponse(III)V
.end method

.method public abstract networkStateRequest(IZI)V
.end method

.method public abstract otaSubNodeRefreshNowResponse(IJLjava/lang/String;)V
.end method

.method public abstract registerFotaListener(ILcom/autolink/adapterinterface/IOtaStateListener;)Z
.end method

.method public abstract registerPkiListner(ILcom/autolink/adapterinterface/IPkiServiceListener;)Z
.end method

.method public abstract registerRemoteListner(ILcom/autolink/adapterinterface/ITBoxRemoteListner;)Z
.end method

.method public abstract registerRpaListner(ILcom/autolink/adapterinterface/IRpaServiceListener;)Z
.end method

.method public abstract registerTBoxCallback(ILcom/autolink/adapterinterface/ITBoxBaseListener;)Z
.end method

.method public abstract reportOtaSubNodeState(ILcom/autolink/adapterinterface/OtaSubNodeState;)V
.end method

.method public abstract sendCertificateStatusResp(II)V
.end method

.method public abstract sendCommand(ILcom/autolink/adapterinterface/TBoxCommandMsg;)V
.end method

.method public abstract sendDownloadCertificateRltReport(II)V
.end method

.method public abstract sendGetCertResp(IZ)V
.end method

.method public abstract sendGetGeneralInfoRequest(I)V
.end method

.method public abstract sendRpaReport(II[B)V
.end method

.method public abstract sendRpaResp(IIZ)V
.end method

.method public abstract sendSlotReport1(II[B)V
.end method

.method public abstract sendSlotReport2(II[B)V
.end method

.method public abstract sendSubNodeEnterFactory(ILcom/autolink/adapterinterface/SubNodeEnter;)V
.end method

.method public abstract sendSubNodeStartFactory(IZ)V
.end method

.method public abstract unregisterFotaListener(ILcom/autolink/adapterinterface/IOtaStateListener;)V
.end method

.method public abstract unregisterPkiListner(ILcom/autolink/adapterinterface/IPkiServiceListener;)V
.end method

.method public abstract unregisterRemoteListner(ILcom/autolink/adapterinterface/ITBoxRemoteListner;)V
.end method

.method public abstract unregisterRpaListner(ILcom/autolink/adapterinterface/IRpaServiceListener;)V
.end method

.method public abstract unregisterTBoxCallback(ILcom/autolink/adapterinterface/ITBoxBaseListener;)V
.end method
