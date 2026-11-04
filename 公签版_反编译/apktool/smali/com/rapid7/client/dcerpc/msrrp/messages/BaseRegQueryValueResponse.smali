.class public Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# instance fields
.field private data:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;

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
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueResponse;->data:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueResponse;->type:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueResponse;->type:Ljava/lang/Integer;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueResponse;->type:Ljava/lang/Integer;

    .line 20
    .line 21
    :goto_0
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueResponse;->data:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iput-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueResponse;->data:Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;

    .line 39
    .line 40
    :goto_1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x4

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 57
    .line 58
    .line 59
    :cond_3
    return-void
.end method
