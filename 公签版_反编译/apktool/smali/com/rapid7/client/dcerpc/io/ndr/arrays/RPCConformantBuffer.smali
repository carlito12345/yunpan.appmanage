.class public Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
.implements Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;


# instance fields
.field private maximumCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantBuffer;->maximumCount:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getMaximumCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantBuffer;->maximumCount:I

    .line 2
    .line 3
    return v0
.end method

.method public marshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 0

    return-void
.end method

.method public marshalEntity(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 0

    return-void
.end method

.method public marshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantBuffer;->getMaximumCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method

.method public unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    const-string v0, "MaximumCount"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readIndex(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantBuffer;->maximumCount:I

    .line 8
    .line 9
    return-void
.end method
