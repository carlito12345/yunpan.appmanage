.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response$DomainDisplayGroup;
.super Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DomainDisplayGroup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response<",
        "Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroupBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic createDisplayInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response$DomainDisplayGroup;->createDisplayInformation()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroupBuffer;

    move-result-object v0

    return-object v0
.end method

.method public createDisplayInformation()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroupBuffer;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroupBuffer;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroupBuffer;-><init>()V

    return-object v0
.end method

.method public getDisplayInformationClass()Lcom/rapid7/client/dcerpc/mssamr/objects/DisplayInformationClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssamr/objects/DisplayInformationClass;->DomainDisplayGroup:Lcom/rapid7/client/dcerpc/mssamr/objects/DisplayInformationClass;

    .line 2
    .line 3
    return-object v0
.end method
