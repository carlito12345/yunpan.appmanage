.class public Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainRequest;
.super Lcom/rapid7/client/dcerpc/messages/RequestCall;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
        "Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final OP_NUM:S = 0x11s


# instance fields
.field private final domainHandle:[B

.field private final names:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;


# direct methods
.method public constructor <init>([B[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V
    .locals 2

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/messages/RequestCall;-><init>(S)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    array-length v0, p2

    .line 11
    const/16 v1, 0x3e8

    .line 12
    .line 13
    if-gt v0, v1, :cond_0

    .line 14
    .line 15
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainRequest;->domainHandle:[B

    .line 16
    .line 17
    iput-object p2, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainRequest;->names:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    array-length p2, p2

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v0, 0x1

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    aput-object p2, v0, v1

    .line 32
    .line 33
    const-string p2, "names must not contain more than 1000 elements, got: %d"

    .line 34
    .line 35
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string p2, "names must not be null"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string p2, "domainHandle must not be null"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method


# virtual methods
.method public getDomainHandle()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainRequest;->domainHandle:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public getNames()[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainRequest;->names:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getResponseObject()Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainRequest;->getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainResponse;

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainResponse;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainResponse;

    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainResponse;-><init>()V

    return-object v0
.end method

.method public marshal(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainRequest;->domainHandle:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->write([B)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainRequest;->names:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 7
    .line 8
    array-length v0, v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0x3e8

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainRequest;->names:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 22
    .line 23
    array-length v1, v1

    .line 24
    invoke-virtual {p1, v1}, Lcom/rapid7/client/dcerpc/io/PrimitiveOutput;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainRequest;->names:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 28
    .line 29
    array-length v2, v1

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_0
    if-ge v3, v2, :cond_0

    .line 32
    .line 33
    aget-object v4, v1, v3

    .line 34
    .line 35
    invoke-virtual {v4, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->marshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainRequest;->names:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 42
    .line 43
    array-length v2, v1

    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_1
    if-ge v3, v2, :cond_1

    .line 46
    .line 47
    aget-object v4, v1, v3

    .line 48
    .line 49
    invoke-virtual {v4, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->marshalEntity(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainRequest;->names:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 56
    .line 57
    array-length v2, v1

    .line 58
    :goto_2
    if-ge v0, v2, :cond_2

    .line 59
    .line 60
    aget-object v3, v1, v0

    .line 61
    .line 62
    invoke-virtual {v3, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->marshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketOutput;)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    return-void
.end method
