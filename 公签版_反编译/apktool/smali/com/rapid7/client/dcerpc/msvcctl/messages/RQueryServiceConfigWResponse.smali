.class public Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# instance fields
.field private lpServiceConfig:Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;

.field private pcbBytesNeeded:I


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
.method public getLpServiceConfig()Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWResponse;->lpServiceConfig:Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPcbBytesNeeded()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWResponse;->pcbBytesNeeded:I

    .line 2
    .line 3
    return v0
.end method

.method public unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWResponse;->lpServiceConfig:Lcom/rapid7/client/dcerpc/msvcctl/objects/LPQueryServiceConfigW;

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
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Lcom/rapid7/client/dcerpc/msvcctl/messages/RQueryServiceConfigWResponse;->pcbBytesNeeded:I

    .line 21
    .line 22
    return-void
.end method
