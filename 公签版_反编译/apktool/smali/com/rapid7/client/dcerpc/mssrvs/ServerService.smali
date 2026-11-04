.class public Lcom/rapid7/client/dcerpc/mssrvs/ServerService;
.super Lcom/rapid7/client/dcerpc/service/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;,
        Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest503;,
        Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest502;,
        Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest501;,
        Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest2;,
        Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest1;,
        Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest0;
    }
.end annotation


# static fields
.field private static final MAX_BUFFER_SIZE:I = 0x100000


# direct methods
.method public constructor <init>(Lcom/rapid7/client/dcerpc/transport/RPCTransport;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;-><init>(Lcom/rapid7/client/dcerpc/transport/RPCTransport;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo0;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo0;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;->parseShareInfo0(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo0;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;->parseShareInfo1(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;->parseShareInfo2(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo501;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;->parseShareInfo501(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo501;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$400(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;->parseShareInfo502(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$500(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;->parseShareInfo503(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$600(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;[Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/rapid7/client/dcerpc/service/Service;->callExpect(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;[Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private parseShareInfo0(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo0;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo0;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo0;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;->getNetName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo0;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method private parseShareInfo1(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;->getNetName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, v1}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getType()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getRemark()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, v1, v2, p1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private parseShareInfo2(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v9, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;->getNetName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getType()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getRemark()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getPermissions()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getMaxUses()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getCurrentUses()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getPath()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getPasswd()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    move-object v0, v9

    .line 56
    invoke-direct/range {v0 .. v8}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;-><init>(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v9
.end method

.method private parseShareInfo501(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo501;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;->getNetName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, v1}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getType()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getRemark()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p0, v3}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo501;->getFlags()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method private parseShareInfo502(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v10, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;->getNetName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getType()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getRemark()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getPermissions()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getMaxUses()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getCurrentUses()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getPath()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getPasswd()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;->getSecurityDescriptor()[B

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    move-object v0, v10

    .line 60
    invoke-direct/range {v0 .. v9}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;-><init>(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;[B)V

    .line 61
    .line 62
    .line 63
    return-object v10
.end method

.method private parseShareInfo503(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;
    .locals 12

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v11, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;->getNetName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getType()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;->getRemark()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getPermissions()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getMaxUses()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getCurrentUses()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getPath()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;->getPasswd()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->getServerName()Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseWChar(Lcom/rapid7/client/dcerpc/objects/WChar;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;->getSecurityDescriptor()[B

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    move-object v0, v11

    .line 68
    invoke-direct/range {v0 .. v10}, Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;-><init>(Ljava/lang/String;ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 69
    .line 70
    .line 71
    return-object v11
.end method


# virtual methods
.method public getCanonicalizedName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v7, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseWCharNT(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p2, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseWCharNT(Ljava/lang/String;Z)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0, p3, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseWCharNT(Ljava/lang/String;Z)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    move-object v0, v7

    .line 17
    move v3, p4

    .line 18
    move v5, p5

    .line 19
    move v6, p6

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeRequest;-><init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;ILcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;II)V

    .line 21
    .line 22
    .line 23
    const-string p1, "NetprPathCanonicalize"

    .line 24
    .line 25
    invoke-virtual {p0, v7, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeResponse;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetprPathCanonicalizeResponse;->getOutBuf()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public getShare0(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo0;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest0;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;->of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest0;-><init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "NetrShareGetInfo[0]"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;->getShareInfo()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo0;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;->parseShareInfo0(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo0;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public getShare1(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;->of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest1;-><init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "NetrShareGetInfo[1]"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;->getShareInfo()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;->parseShareInfo1(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo1;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public getShare2(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest2;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;->of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest2;-><init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "NetrShareGetInfo[2]"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;->getShareInfo()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;->parseShareInfo2(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo2;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public getShare501(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest501;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;->of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest501;-><init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "NetrShareGetInfo[501]"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;->getShareInfo()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo501;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;->parseShareInfo501(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo501;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public getShare502(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest502;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;->of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest502;-><init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "NetrShareGetInfo[502]"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;->getShareInfo()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;->parseShareInfo502(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo502;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public getShare503(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest503;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;->of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoRequest$NetrShareGetInfoRequest503;-><init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "NetrShareGetInfo[503]"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssrvs/messages/NetrShareGetInfoResponse;->getShareInfo()Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;

    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService;->parseShareInfo503(Lcom/rapid7/client/dcerpc/mssrvs/objects/ShareInfo503;)Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public getShares0()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest0;

    .line 2
    .line 3
    const-wide/32 v1, 0x100000

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest0;-><init>(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->call()Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->getShares()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getShares1()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest1;

    .line 2
    .line 3
    const-wide/32 v1, 0x100000

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest1;-><init>(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->call()Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->getShares()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getShares2()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo2;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest2;

    .line 2
    .line 3
    const-wide/32 v1, 0x100000

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest2;-><init>(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->call()Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->getShares()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getShares501()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo501;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest501;

    .line 2
    .line 3
    const-wide/32 v1, 0x100000

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest501;-><init>(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->call()Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->getShares()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getShares502()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo502;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest502;

    .line 2
    .line 3
    const-wide/32 v1, 0x100000

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest502;-><init>(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->call()Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->getShares()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getShares503()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rapid7/client/dcerpc/mssrvs/dto/NetShareInfo503;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest503;

    .line 2
    .line 3
    const-wide/32 v1, 0x100000

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1, v2}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest503;-><init>(Lcom/rapid7/client/dcerpc/mssrvs/ServerService;J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->call()Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssrvs/ServerService$GetSharesRequest;->getShares()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
