.class public Lcom/rapid7/client/dcerpc/io/PacketOutput;
.super Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;
.source "SourceFile"


# instance fields
.field private referentID:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;-><init>(Ljava/io/OutputStream;)V

    .line 2
    .line 3
    .line 4
    const/high16 p1, 0x20000

    .line 5
    .line 6
    iput p1, p0, Lcom/rapid7/client/dcerpc/io/PacketOutput;->referentID:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public writeEmptyCVArray(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public writeEmptyRPCUnicodeString(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 3
    .line 4
    .line 5
    int-to-short v1, p1

    .line 6
    shl-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;->marshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p0}, Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;->marshalEntity(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, p0}, Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;->marshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public writeNull()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public writeReferentID()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/rapid7/client/dcerpc/io/PacketOutput;->referentID:I

    add-int/lit8 v1, v0, 0x4

    .line 2
    iput v1, p0, Lcom/rapid7/client/dcerpc/io/PacketOutput;->referentID:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    return-void
.end method

.method public writeReferentID(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeNull()V

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID()V

    const/4 p1, 0x1

    return p1
.end method
