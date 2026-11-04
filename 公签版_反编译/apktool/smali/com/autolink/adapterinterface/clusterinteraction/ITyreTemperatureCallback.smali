.class public interface abstract Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback$Stub;,
        Lcom/autolink/adapterinterface/clusterinteraction/ITyreTemperatureCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onLFTyreTempChanged(I)V
.end method

.method public abstract onLRTyreTempChanged(I)V
.end method

.method public abstract onRFTyreTempChanged(I)V
.end method

.method public abstract onRRTyreTempChanged(I)V
.end method
