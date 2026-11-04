.class public abstract Lcom/rapid7/client/dcerpc/service/Service;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final transport:Lcom/rapid7/client/dcerpc/transport/RPCTransport;


# direct methods
.method public constructor <init>(Lcom/rapid7/client/dcerpc/transport/RPCTransport;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/service/Service;->transport:Lcom/rapid7/client/dcerpc/transport/RPCTransport;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "Expecting non-null transport"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public call(Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/rapid7/client/dcerpc/messages/RequestResponse;",
            ">(",
            "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/service/Service;->transport:Lcom/rapid7/client/dcerpc/transport/RPCTransport;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->call(Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public varargs callExpect(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;[Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/rapid7/client/dcerpc/messages/RequestResponse;",
            ">(",
            "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
            "TR;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;",
            ")TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->call(Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    array-length v1, p3

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_2

    .line 15
    .line 16
    aget-object v3, p3, v2

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {v3, v0}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    new-instance p1, Lcom/rapid7/client/dcerpc/RPCException;

    .line 31
    .line 32
    invoke-direct {p1, p2, v0}, Lcom/rapid7/client/dcerpc/RPCException;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :goto_1
    throw p1

    .line 37
    :goto_2
    goto :goto_1
.end method

.method public callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcom/rapid7/client/dcerpc/messages/RequestResponse;",
            ">(",
            "Lcom/rapid7/client/dcerpc/messages/RequestCall<",
            "TR;>;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 3
    .line 4
    sget-object v1, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/rapid7/client/dcerpc/service/Service;->callExpect(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;[Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/dto/ContextHandle;->getBytes()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public parseNonNullTerminatedStrings([Ljava/lang/String;)[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-array p1, v0, [Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 5
    .line 6
    return-object p1

    .line 7
    :cond_0
    array-length v1, p1

    .line 8
    new-array v1, v1, [Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 9
    .line 10
    :goto_0
    array-length v2, p1

    .line 11
    if-ge v0, v2, :cond_1

    .line 12
    .line 13
    aget-object v2, p1, v0

    .line 14
    .line 15
    invoke-static {v2}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;->of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    aput-object v2, v1, v0

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-object v1
.end method

.method public parseRPCSID(Lcom/rapid7/client/dcerpc/objects/RPCSID;)Lcom/rapid7/client/dcerpc/dto/SID;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCSID(Lcom/rapid7/client/dcerpc/objects/RPCSID;Z)Lcom/rapid7/client/dcerpc/dto/SID;

    move-result-object p1

    return-object p1
.end method

.method public parseRPCSID(Lcom/rapid7/client/dcerpc/objects/RPCSID;Z)Lcom/rapid7/client/dcerpc/dto/SID;
    .locals 2

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance p2, Lcom/rapid7/client/dcerpc/dto/SID;

    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getRevision()C

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getIdentifierAuthority()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->getSubAuthority()[J

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lcom/rapid7/client/dcerpc/dto/SID;-><init>(B[B[J)V

    return-object p2
.end method

.method public parseRPCSIDs([Lcom/rapid7/client/dcerpc/objects/RPCSID;)[Lcom/rapid7/client/dcerpc/dto/SID;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-array p1, v0, [Lcom/rapid7/client/dcerpc/dto/SID;

    .line 5
    .line 6
    new-array v1, v0, [Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 7
    .line 8
    move-object v3, v1

    .line 9
    move-object v1, p1

    .line 10
    move-object p1, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    array-length v1, p1

    .line 13
    new-array v1, v1, [Lcom/rapid7/client/dcerpc/dto/SID;

    .line 14
    .line 15
    :goto_0
    array-length v2, v1

    .line 16
    if-ge v0, v2, :cond_1

    .line 17
    .line 18
    aget-object v2, p1, v0

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCSID(Lcom/rapid7/client/dcerpc/objects/RPCSID;)Lcom/rapid7/client/dcerpc/dto/SID;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    aput-object v2, v1, v0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-object v1
.end method

.method public parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;Z)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Expecting non-null rpcUnicodeString"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs parseRPCUnicodeStrings([Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)[Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-array p1, v0, [Ljava/lang/String;

    .line 5
    .line 6
    return-object p1

    .line 7
    :cond_0
    array-length v1, p1

    .line 8
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    .line 10
    :goto_0
    array-length v2, p1

    .line 11
    if-ge v0, v2, :cond_2

    .line 12
    .line 13
    aget-object v2, p1, v0

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v2}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->getValue()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :goto_1
    aput-object v2, v1, v0

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    return-object v1
.end method

.method public parseSID(Lcom/rapid7/client/dcerpc/dto/SID;)Lcom/rapid7/client/dcerpc/objects/RPCSID;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/rapid7/client/dcerpc/objects/RPCSID;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/dto/SID;->getRevision()B

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-char v1, v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->setRevision(C)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/dto/SID;->getIdentifierAuthority()[B

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->setIdentifierAuthority([B)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/dto/SID;->getSubAuthorities()[J

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Lcom/rapid7/client/dcerpc/objects/RPCSID;->setSubAuthority([J)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public parseSIDs([Lcom/rapid7/client/dcerpc/dto/SID;)[Lcom/rapid7/client/dcerpc/objects/RPCSID;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-array p1, v0, [Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 5
    .line 6
    new-array v1, v0, [Lcom/rapid7/client/dcerpc/dto/SID;

    .line 7
    .line 8
    move-object v3, v1

    .line 9
    move-object v1, p1

    .line 10
    move-object p1, v3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    array-length v1, p1

    .line 13
    new-array v1, v1, [Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 14
    .line 15
    :goto_0
    array-length v2, v1

    .line 16
    if-ge v0, v2, :cond_1

    .line 17
    .line 18
    aget-object v2, p1, v0

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/rapid7/client/dcerpc/service/Service;->parseSID(Lcom/rapid7/client/dcerpc/dto/SID;)Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    aput-object v2, v1, v0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-object v1
.end method

.method public parseWChar(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NonNullTerminated;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Ljava/lang/String;Z)Lcom/rapid7/client/dcerpc/objects/WChar$NonNullTerminated;

    move-result-object p1

    return-object p1
.end method

.method public parseWChar(Ljava/lang/String;Z)Lcom/rapid7/client/dcerpc/objects/WChar$NonNullTerminated;
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/rapid7/client/dcerpc/objects/WChar$NonNullTerminated;->of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NonNullTerminated;

    move-result-object p1

    return-object p1
.end method

.method public parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;Z)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/objects/WChar;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseWCharNT(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWCharNT(Ljava/lang/String;Z)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    move-result-object p1

    return-object p1
.end method

.method public parseWCharNT(Ljava/lang/String;Z)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;->of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    move-result-object p1

    return-object p1
.end method
