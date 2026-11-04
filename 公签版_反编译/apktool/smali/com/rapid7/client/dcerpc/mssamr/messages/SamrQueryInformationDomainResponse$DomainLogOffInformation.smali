.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse$DomainLogOffInformation;
.super Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DomainLogOffInformation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse<",
        "Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLogoffInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic createDomainInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse$DomainLogOffInformation;->createDomainInformation()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLogoffInfo;

    move-result-object v0

    return-object v0
.end method

.method public createDomainInformation()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLogoffInfo;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLogoffInfo;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLogoffInfo;-><init>()V

    return-object v0
.end method

.method public getDomainInformationClass()Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;->DOMAIN_LOGOFF_INFORMATION:Lcom/rapid7/client/dcerpc/mslsad/objects/DomainInformationClass;

    .line 2
    .line 3
    return-object v0
.end method
