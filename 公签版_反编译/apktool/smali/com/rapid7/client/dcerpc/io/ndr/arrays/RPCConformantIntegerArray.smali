.class public Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;
.super Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantPrimitiveArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantPrimitiveArray<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantPrimitiveArray;-><init>([Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public marshalPrimitive(Lcom/rapid7/client/dcerpc/io/PacketOutput;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    return-void
.end method

.method public bridge synthetic marshalPrimitive(Lcom/rapid7/client/dcerpc/io/PacketOutput;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;->marshalPrimitive(Lcom/rapid7/client/dcerpc/io/PacketOutput;Ljava/lang/Integer;)V

    return-void
.end method

.method public unmarshalPrimitive(Lcom/rapid7/client/dcerpc/io/PacketInput;)Ljava/lang/Integer;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic unmarshalPrimitive(Lcom/rapid7/client/dcerpc/io/PacketInput;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantIntegerArray;->unmarshalPrimitive(Lcom/rapid7/client/dcerpc/io/PacketInput;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
