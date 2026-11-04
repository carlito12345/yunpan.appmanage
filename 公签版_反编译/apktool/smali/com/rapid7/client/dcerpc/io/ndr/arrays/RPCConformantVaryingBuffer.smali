.class public Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingBuffer;
.super Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantBuffer;
.source "SourceFile"


# instance fields
.field private actualCount:I

.field private offset:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingBuffer;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantBuffer;-><init>(I)V

    .line 3
    iput p2, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingBuffer;->offset:I

    .line 4
    iput p3, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingBuffer;->actualCount:I

    return-void
.end method


# virtual methods
.method public getActualCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingBuffer;->actualCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingBuffer;->offset:I

    .line 2
    .line 3
    return v0
.end method

.method public marshalEntity(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantBuffer;->marshalEntity(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingBuffer;->getOffset()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingBuffer;->getActualCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantBuffer;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "Offset"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readIndex(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingBuffer;->offset:I

    .line 16
    .line 17
    const-string v0, "ActualCount"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readIndex(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingBuffer;->actualCount:I

    .line 24
    .line 25
    return-void
.end method
