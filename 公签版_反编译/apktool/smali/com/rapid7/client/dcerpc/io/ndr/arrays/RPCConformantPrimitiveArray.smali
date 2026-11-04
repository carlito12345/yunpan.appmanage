.class public abstract Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantPrimitiveArray;
.super Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
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
.method public marshalEntryDeferrals(Lcom/rapid7/client/dcerpc/io/PacketOutput;I)V
    .locals 0

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
    aget-object p2, v0, p2

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantPrimitiveArray;->marshalPrimitive(Lcom/rapid7/client/dcerpc/io/PacketOutput;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public marshalEntryPreamble(Lcom/rapid7/client/dcerpc/io/PacketOutput;I)V
    .locals 0

    return-void
.end method

.method public abstract marshalPrimitive(Lcom/rapid7/client/dcerpc/io/PacketOutput;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rapid7/client/dcerpc/io/PacketOutput;",
            "TT;)V"
        }
    .end annotation
.end method

.method public unmarshalEntryDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;I)V
    .locals 0

    return-void
.end method

.method public unmarshalEntryEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->getArray()[Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantPrimitiveArray;->unmarshalPrimitive(Lcom/rapid7/client/dcerpc/io/PacketInput;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, p2

    .line 10
    .line 11
    return-void
.end method

.method public unmarshalEntryPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;I)V
    .locals 0

    return-void
.end method

.method public abstract unmarshalPrimitive(Lcom/rapid7/client/dcerpc/io/PacketInput;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rapid7/client/dcerpc/io/PacketInput;",
            ")TT;"
        }
    .end annotation
.end method
