.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request$DomainDisplayGroup;
.super Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DomainDisplayGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request<",
        "Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroupBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([BIII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request;-><init>([BIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getDisplayInformationClass()Lcom/rapid7/client/dcerpc/mssamr/objects/DisplayInformationClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssamr/objects/DisplayInformationClass;->DomainDisplayGroup:Lcom/rapid7/client/dcerpc/mssamr/objects/DisplayInformationClass;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request$DomainDisplayGroup;->getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response$DomainDisplayGroup;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response$DomainDisplayGroup;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response$DomainDisplayGroup;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response$DomainDisplayGroup;-><init>()V

    return-object v0
.end method
