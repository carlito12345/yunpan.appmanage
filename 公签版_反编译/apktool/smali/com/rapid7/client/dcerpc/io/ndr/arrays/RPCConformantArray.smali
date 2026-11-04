.class public abstract Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;
.super Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantBuffer;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantBuffer;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->array:[Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getArray()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->array:[Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public marshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->array:[Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->array:[Ljava/lang/Object;

    .line 9
    .line 10
    array-length v2, v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p1, v1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->marshalEntryPreamble(Lcom/rapid7/client/dcerpc/io/PacketOutput;I)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    :goto_1
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->array:[Ljava/lang/Object;

    .line 21
    .line 22
    array-length v2, v2

    .line 23
    if-ge v1, v2, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, p1, v1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->marshalEntryEntity(Lcom/rapid7/client/dcerpc/io/PacketOutput;I)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->array:[Ljava/lang/Object;

    .line 32
    .line 33
    array-length v1, v1

    .line 34
    if-ge v0, v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->marshalEntryDeferrals(Lcom/rapid7/client/dcerpc/io/PacketOutput;I)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    return-void
.end method

.method public marshalEntity(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 0

    return-void
.end method

.method public abstract marshalEntryDeferrals(Lcom/rapid7/client/dcerpc/io/PacketOutput;I)V
.end method

.method public abstract marshalEntryEntity(Lcom/rapid7/client/dcerpc/io/PacketOutput;I)V
.end method

.method public abstract marshalEntryPreamble(Lcom/rapid7/client/dcerpc/io/PacketOutput;I)V
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
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->array:[Ljava/lang/Object;

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1, v1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->unmarshalEntryPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;I)V

    .line 9
    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_1
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->array:[Ljava/lang/Object;

    .line 16
    .line 17
    array-length v2, v2

    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1, v1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->unmarshalEntryEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;I)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->array:[Ljava/lang/Object;

    .line 27
    .line 28
    array-length v1, v1

    .line 29
    if-ge v0, v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantArray;->unmarshalEntryDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;I)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    return-void
.end method

.method public unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 0

    return-void
.end method

.method public abstract unmarshalEntryDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;I)V
.end method

.method public abstract unmarshalEntryEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;I)V
.end method

.method public abstract unmarshalEntryPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;I)V
.end method
