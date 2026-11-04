.class public Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final flags:I

.field private final outBufLen:I

.field private final pathName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

.field private final pathType:I

.field private final prefix:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

.field private final serverName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;


# direct methods
.method public constructor <init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;ILcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;II)V
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrOpCode;->NetprPathCanonicalize:Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrOpCode;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrOpCode;->getOpCode()S

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;->serverName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;->pathName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 13
    .line 14
    iput-object p4, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;->prefix:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 15
    .line 16
    iput p3, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;->outBufLen:I

    .line 17
    .line 18
    iput p5, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;->pathType:I

    .line 19
    .line 20
    iput p6, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;->flags:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeResponse;-><init>()V

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;->serverName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeReferentID(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;->serverName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;->pathName:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/rapid7/client/dcerpc/io/ndr/Alignment;->FOUR:Lcom/rapid7/client/dcerpc/io/ndr/Alignment;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;->outBufLen:I

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;->prefix:Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PacketOutput;->writeMarshallable(Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;)Lcom/rapid7/client/dcerpc/io/ndr/Marshallable;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->align(Lcom/rapid7/client/dcerpc/io/ndr/Alignment;)V

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;->pathType:I

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;->flags:I

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
