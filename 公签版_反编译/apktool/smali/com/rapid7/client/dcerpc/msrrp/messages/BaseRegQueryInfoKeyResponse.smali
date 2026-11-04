.class public Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# instance fields
.field private lastWriteTime:J

.field private maxClassLen:I

.field private maxSubKeyLen:I

.field private maxValueLen:I

.field private maxValueNameLen:I

.field private securityDescriptor:I

.field private subKeys:I

.field private values:I


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
    iget-wide v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->lastWriteTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxClassLen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->maxClassLen:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxSubKeyLen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->maxSubKeyLen:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxValueLen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->maxValueLen:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxValueNameLen()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->maxValueNameLen:I

    .line 2
    .line 3
    return v0
.end method

.method public getSecurityDescriptor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->securityDescriptor:I

    .line 2
    .line 3
    return v0
.end method

.method public getSubKeys()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->subKeys:I

    .line 2
    .line 3
    return v0
.end method

.method public getValues()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->values:I

    .line 2
    .line 3
    return v0
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
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->subKeys:I

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->maxSubKeyLen:I

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->maxClassLen:I

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->values:I

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iput v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->maxValueNameLen:I

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->maxValueLen:I

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->securityDescriptor:I

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readLong()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    iput-wide v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->lastWriteTime:J

    .line 61
    .line 62
    return-void
.end method
