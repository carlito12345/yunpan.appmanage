.class public Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumValueResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# instance fields
.field private data:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;

.field private name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

.field private type:Ljava/lang/Integer;


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
.method public getData()Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumValueResponse;->data:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumValueResponse;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumValueResponse;->type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumValueResponse;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumValueResponse;->type:Ljava/lang/Integer;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumValueResponse;->type:Ljava/lang/Integer;

    .line 35
    .line 36
    :goto_0
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 37
    .line 38
    .line 39
    new-instance v1, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;

    .line 40
    .line 41
    invoke-direct {v1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumValueResponse;->data:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 50
    .line 51
    .line 52
    const/16 v0, 0x8

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
