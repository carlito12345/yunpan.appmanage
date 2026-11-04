.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainRequest$DomainLogOffInformation;
.super Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DomainLogOffInformation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainRequest<",
        "Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLogoffInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainRequest;-><init>([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getDomainInformationClass()Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;->DOMAIN_LOGOFF_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainRequest$DomainLogOffInformation;->getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse$DomainLogOffInformation;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse$DomainLogOffInformation;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse$DomainLogOffInformation;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse$DomainLogOffInformation;-><init>()V

    return-object v0
.end method
