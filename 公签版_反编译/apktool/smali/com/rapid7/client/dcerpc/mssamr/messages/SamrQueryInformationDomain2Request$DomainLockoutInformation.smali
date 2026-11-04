.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomain2Request$DomainLockoutInformation;
.super Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomain2Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomain2Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DomainLockoutInformation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomain2Request<",
        "Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomain2Request;-><init>([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getDomainInformationClass()Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;->DOMAIN_LOCKOUT_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomain2Request$DomainLockoutInformation;->getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse$DomainLockoutInformation;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse$DomainLockoutInformation;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse$DomainLockoutInformation;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse$DomainLockoutInformation;-><init>()V

    return-object v0
.end method
