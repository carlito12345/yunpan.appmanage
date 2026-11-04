.class public Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountRightsResponse;
.super Lcom/rapid7/client/dcerpc/messages/RequestResponse;
.source "SourceFile"


# instance fields
.field private privNames:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getPrivNames()[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountRightsResponse;->privNames:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 2
    .line 3
    return-object v0
.end method

.method public unmarshalResponse(Lcom/rapid7/client/dcerpc/io/PacketInput;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/io/PacketInput;->readReferentID()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    new-array v0, v0, [Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountRightsResponse;->privNames:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p1, v0}, Lcom/rapid7/client/dcerpc/io/PacketInput;->fullySkipBytes(I)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountRightsResponse;->privNames:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 22
    .line 23
    array-length v3, v2

    .line 24
    if-ge v1, v3, :cond_0

    .line 25
    .line 26
    new-instance v3, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 27
    .line 28
    invoke-direct {v3}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;-><init>()V

    .line 29
    .line 30
    .line 31
    aput-object v3, v2, v1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountRightsResponse;->privNames:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 34
    .line 35
    aget-object v2, v2, v1

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalPreamble(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    array-length v1, v2

    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_1
    if-ge v3, v1, :cond_1

    .line 46
    .line 47
    aget-object v4, v2, v3

    .line 48
    .line 49
    invoke-virtual {v4, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalEntity(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v3, v3, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountRightsResponse;->privNames:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 56
    .line 57
    array-length v2, v1

    .line 58
    :goto_2
    if-ge v0, v2, :cond_3

    .line 59
    .line 60
    aget-object v3, v1, v0

    .line 61
    .line 62
    invoke-virtual {v3, p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->unmarshalDeferrals(Lcom/rapid7/client/dcerpc/io/PacketInput;)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/mslsad/messages/LsarEnumerateAccountRightsResponse;->privNames:[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 70
    .line 71
    :cond_3
    return-void
.end method
