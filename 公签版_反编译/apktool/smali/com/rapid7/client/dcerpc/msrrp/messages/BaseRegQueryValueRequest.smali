.class public Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataLen:I

.field private final hKey:[B

.field private final valueName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;


# direct methods
.method public constructor <init>([BLcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;I)V
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueRequest;->hKey:[B

    .line 7
    .line 8
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueRequest;->valueName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

    .line 9
    .line 10
    iput p3, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueRequest;->dataLen:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueResponse;-><init>()V

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueRequest;->hKey:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueRequest;->valueName:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID()V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueRequest;->dataLen:I

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeEmptyCVArray(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID()V

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueRequest;->dataLen:I

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
