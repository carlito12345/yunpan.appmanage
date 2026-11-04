.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasResponse$AliasGeneralInformation;
.super Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliasGeneralInformation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasResponse<",
        "Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRAliasGeneralInformation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasResponse;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic createAliasInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasResponse$AliasGeneralInformation;->createAliasInformation()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRAliasGeneralInformation;

    move-result-object v0

    return-object v0
.end method

.method public createAliasInformation()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRAliasGeneralInformation;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRAliasGeneralInformation;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRAliasGeneralInformation;-><init>()V

    return-object v0
.end method

.method public getAliasInformationClass()Lcom/rapid7/client/dcerpc/mssamr/objects/AliasInformationClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssamr/objects/AliasInformationClass;->ALIAS_GENERALINFORMATION:Lcom/rapid7/client/dcerpc/mssamr/objects/AliasInformationClass;

    .line 2
    .line 3
    return-object v0
.end method
