.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasRequest$AliasGeneralInformation;
.super Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliasGeneralInformation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasRequest<",
        "Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRAliasGeneralInformation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasRequest;-><init>([B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAliasInformationClass()Lcom/rapid7/client/dcerpc/mssamr/objects/AliasInformationClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssamr/objects/AliasInformationClass;->ALIAS_GENERALINFORMATION:Lcom/rapid7/client/dcerpc/mssamr/objects/AliasInformationClass;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasRequest$AliasGeneralInformation;->getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasResponse$AliasGeneralInformation;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasResponse$AliasGeneralInformation;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasResponse$AliasGeneralInformation;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasResponse$AliasGeneralInformation;-><init>()V

    return-object v0
.end method
