.class public Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final OP_NUM:S = 0xes


# instance fields
.field private final lookupLevel:S

.field private final names:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

.field private final policyHandle:[B


# direct methods
.method public constructor <init>([B[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;S)V
    .locals 1

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesRequest;->policyHandle:[B

    .line 7
    .line 8
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesRequest;->names:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 9
    .line 10
    iput-short p3, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesRequest;->lookupLevel:S

    .line 11
    .line 12
    return-void
.end method

.method private writeNames(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesRequest;->names:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesRequest;->names:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_0

    .line 13
    .line 14
    aget-object v4, v0, v3

    .line 15
    .line 16
    invoke-virtual {v4, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->marshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v3, v3, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesRequest;->names:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 23
    .line 24
    array-length v1, v0

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_1
    if-ge v3, v1, :cond_1

    .line 27
    .line 28
    aget-object v4, v0, v3

    .line 29
    .line 30
    invoke-virtual {v4, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->marshalEntity(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesRequest;->names:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 37
    .line 38
    array-length v1, v0

    .line 39
    :goto_2
    if-ge v2, v1, :cond_2

    .line 40
    .line 41
    aget-object v3, v0, v2

    .line 42
    .line 43
    invoke-virtual {v3, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->marshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesResponse;-><init>()V

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesRequest;->policyHandle:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesRequest;->names:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesRequest;->writeNames(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeNull()V

    .line 25
    .line 26
    .line 27
    iget-short v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarLookupNamesRequest;->lookupLevel:S

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeShort(I)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v0, 0x2

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->pad(J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeNull()V

    .line 38
    .line 39
    .line 40
    return-void
.end method
