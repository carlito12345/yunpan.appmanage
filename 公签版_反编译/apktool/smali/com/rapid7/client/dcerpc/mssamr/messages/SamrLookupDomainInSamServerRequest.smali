.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final OP_NUM:S = 0x5s


# instance fields
.field private final name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private final serverHandle:[B


# direct methods
.method public constructor <init>([BLcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerRequest;->serverHandle:[B

    .line 6
    .line 7
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerRequest;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerRequest;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerResponse;-><init>()V

    return-object v0
.end method

.method public getServerHandle()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerRequest;->serverHandle:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerRequest;->getServerHandle()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerRequest;->getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 13
    .line 14
    .line 15
    return-void
.end method
