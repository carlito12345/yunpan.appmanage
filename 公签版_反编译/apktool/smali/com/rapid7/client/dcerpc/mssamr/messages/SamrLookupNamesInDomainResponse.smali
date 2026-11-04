.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# instance fields
.field private relativeIds:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;

.field private use:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getRelativeIds()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainResponse;->relativeIds:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUse()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainResponse;->use:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainResponse;->relativeIds:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainResponse;->use:Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 19
    .line 20
    .line 21
    return-void
.end method
