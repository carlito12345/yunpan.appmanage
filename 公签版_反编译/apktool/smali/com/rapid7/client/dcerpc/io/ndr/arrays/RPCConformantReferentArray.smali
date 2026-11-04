.class public abstract Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantReferentArray;
.super Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;",
        ":",
        "Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;",
        ">",
        "Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>([Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;-><init>([Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract createEntry()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public marshalEntryDeferrals(Lcom/rapid7/client/dcerpc/io/PacketOutput;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->getArray()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, [Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 6
    .line 7
    aget-object p2, v0, p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    check-cast p2, Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public marshalEntryEntity(Lcom/rapid7/client/dcerpc/io/PacketOutput;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->getArray()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, [Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 6
    .line 7
    aget-object p2, v0, p2

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public marshalEntryPreamble(Lcom/rapid7/client/dcerpc/io/PacketOutput;I)V
    .locals 0

    return-void
.end method

.method public unmarshalEntryDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->getArray()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, [Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 6
    .line 7
    aget-object p2, v0, p2

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readUnmarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public unmarshalEntryEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->getArray()[Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, [Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    aput-object v0, p1, p2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->getArray()[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, [Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantReferentArray;->createEntry()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    aput-object v0, p1, p2

    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public unmarshalEntryPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;I)V
    .locals 0

    return-void
.end method
