.class public Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# instance fields
.field private lastWriteTime:J

.field private lpClassOut:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

.field private lpNameOut:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;


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
.method public getLastWriteTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;->lastWriteTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLpClassOut()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;->lpClassOut:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLpNameOut()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;->lpNameOut:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

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
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;->lpNameOut:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

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
    new-instance v1, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;->lpClassOut:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;->lpClassOut:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

    .line 38
    .line 39
    :goto_0
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readLong()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;->lastWriteTime:J

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const-wide/16 v0, 0x0

    .line 53
    .line 54
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;->lastWriteTime:J

    .line 55
    .line 56
    :goto_1
    return-void
.end method
