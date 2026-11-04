.class public interface abstract Lcom/rapid7/client/dcerpc/msvcctl/dto/IServiceStatusInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getCheckPoint()I
.end method

.method public abstract getControlsAccepted()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServicesAcceptedControls;
.end method

.method public abstract getCurrentState()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceStatusType;
.end method

.method public abstract getServiceSpecificExitCode()I
.end method

.method public abstract getServiceType()Lcom/rapid7/client/dcerpc/msvcctl/dto/enums/ServiceType;
.end method

.method public abstract getWaitHint()I
.end method

.method public abstract getWin32ExitCode()I
.end method

.method public abstract hashCode()I
.end method
