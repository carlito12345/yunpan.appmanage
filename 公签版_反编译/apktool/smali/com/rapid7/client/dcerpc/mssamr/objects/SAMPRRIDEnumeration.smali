.class public Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRRIDEnumeration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;


# instance fields
.field private name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private relativeId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRRIDEnumeration;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRelativeId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRRIDEnumeration;->relativeId:I

    .line 2
    .line 3
    return v0
.end method

.method public setName(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRRIDEnumeration;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-void
.end method

.method public setRelativeId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRRIDEnumeration;->relativeId:I

    .line 2
    .line 3
    return-void
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRRIDEnumeration;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRRIDEnumeration;->relativeId:I

    .line 11
    .line 12
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRRIDEnumeration;->name:Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method
