.class public Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;
.super Lcom/rapid7/client/dcerpc/service/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$EnumerationCallback;
    }
.end annotation


# static fields
.field public static final MAXIMUM_ALLOWED:I = 0x2000000


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

.method public static synthetic access$000(Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->call(Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->call(Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->call(Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->call(Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private enumerate(Ljava/util/List;Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$EnumerationCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$EnumerationCallback;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p2, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$EnumerationCallback;->request(I)Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateResponse;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateResponse;->getResumeHandle()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrEnumerateResponse;->getList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    sget-object v4, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_MORE_ENTRIES:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 19
    .line 20
    invoke-virtual {v4, v1}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-nez v5, :cond_1

    .line 25
    .line 26
    sget-object v5, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_NO_MORE_ITEMS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 27
    .line 28
    invoke-virtual {v5, v1}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_1

    .line 33
    .line 34
    sget-object v5, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 35
    .line 36
    invoke-virtual {v5, v1}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    new-instance p1, Lcom/rapid7/client/dcerpc/RPCException;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p1, p2, v1}, Lcom/rapid7/client/dcerpc/RPCException;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-virtual {v4, v1}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    move v0, v2

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    return-void
.end method

.method private parseAliasHandle(Lcom/rapid7/client/dcerpc/messages/HandleResponse;)Lcom/rapid7/client/dcerpc/mssamr/dto/AliasHandle;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/dto/AliasHandle;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/HandleResponse;->getHandle()[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/AliasHandle;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private parseDomainHandle(Lcom/rapid7/client/dcerpc/messages/HandleResponse;)Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/HandleResponse;->getHandle()[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private parseGroupHandle(Lcom/rapid7/client/dcerpc/messages/HandleResponse;)Lcom/rapid7/client/dcerpc/mssamr/dto/GroupHandle;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/dto/GroupHandle;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/HandleResponse;->getHandle()[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/GroupHandle;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private parseGroupMemberships(Ljava/util/List;)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithAttributes;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rapid7/client/dcerpc/mssamr/objects/GroupMembership;",
            ">;)[",
            "Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithAttributes;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-array p1, v0, [Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithAttributes;

    .line 5
    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-array v2, v1, [Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithAttributes;

    .line 12
    .line 13
    :goto_0
    if-ge v0, v1, :cond_2

    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/rapid7/client/dcerpc/mssamr/objects/GroupMembership;

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object v3, v2, v0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    new-instance v4, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithAttributes;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/mssamr/objects/GroupMembership;->getRelativeID()I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    int-to-long v5, v5

    .line 34
    invoke-virtual {v3}, Lcom/rapid7/client/dcerpc/mssamr/objects/GroupMembership;->getAttributes()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-direct {v4, v5, v6, v3}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithAttributes;-><init>(JI)V

    .line 39
    .line 40
    .line 41
    aput-object v4, v2, v0

    .line 42
    .line 43
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-object v2
.end method

.method private parseSAMPRLogonHours(Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;)Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;->getLogonHours()[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private parseSAMPRRIDEnumerations(Ljava/util/List;)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRRIDEnumeration;",
            ">;)[",
            "Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRRIDEnumeration;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    add-int/lit8 v2, v1, 0x1

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aput-object v3, v0, v1

    .line 30
    .line 31
    move v1, v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 34
    .line 35
    new-instance v4, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRRIDEnumeration;->getRelativeId()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    int-to-long v5, v5

    .line 42
    invoke-virtual {v2}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRRIDEnumeration;->getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->getValue()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v4, v5, v6, v2}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;-><init>(JLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    aput-object v4, v0, v1

    .line 54
    .line 55
    move v1, v3

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-object v0
.end method

.method private parseSAMPRSRSecurityDescriptor(Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;)[B
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;->getSecurityDescriptor()[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private parseServerHandle(Lcom/rapid7/client/dcerpc/messages/HandleResponse;)Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/HandleResponse;->getHandle()[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private parseUserHandle(Lcom/rapid7/client/dcerpc/messages/HandleResponse;)Lcom/rapid7/client/dcerpc/mssamr/dto/UserHandle;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/dto/UserHandle;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/HandleResponse;->getHandle()[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/UserHandle;-><init>([B)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public closeHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrCloseHandleRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrCloseHandleRequest;-><init>([B)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->call(Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    .line 15
    .line 16
    sget-object v0, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    sget-object v0, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->STATUS_INVALID_HANDLE:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    return p1

    .line 44
    :cond_1
    new-instance v0, Lcom/rapid7/client/dcerpc/RPCException;

    .line 45
    .line 46
    const-string v1, "SamrCloseHandle"

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-direct {v0, v1, p1}, Lcom/rapid7/client/dcerpc/RPCException;-><init>(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public getAliasGeneralInformation(Lcom/rapid7/client/dcerpc/mssamr/dto/AliasHandle;)Lcom/rapid7/client/dcerpc/mssamr/dto/AliasGeneralInformation;
    .locals 4

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasRequest$AliasGeneralInformation;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasRequest$AliasGeneralInformation;-><init>([B)V

    .line 8
    .line 9
    .line 10
    const-string p1, "SamrQueryInformationAlias[1]"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationAliasResponse;->getAliasInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRAliasGeneralInformation;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/dto/AliasGeneralInformation;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRAliasGeneralInformation;->getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0, v1}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRAliasGeneralInformation;->getMemberCount()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRAliasGeneralInformation;->getAdminComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/rapid7/client/dcerpc/mssamr/dto/AliasGeneralInformation;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public varargs getAliasMembership(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;[Lcom/rapid7/client/dcerpc/dto/SID;)[Lcom/rapid7/client/dcerpc/mssamr/dto/Membership;
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Lcom/rapid7/client/dcerpc/service/Service;->parseSIDs([Lcom/rapid7/client/dcerpc/dto/SID;)[Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray;

    .line 6
    .line 7
    invoke-direct {v0, p2}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray;-><init>([Lcom/rapid7/client/dcerpc/objects/RPCSID;)V

    .line 8
    .line 9
    .line 10
    new-instance p2, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetAliasMembershipRequest;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p2, p1, v0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetAliasMembershipRequest;-><init>([BLcom/rapid7/client/dcerpc/mssamr/objects/SAMPRPSIDArray;)V

    .line 17
    .line 18
    .line 19
    const-string p1, "GetAliasMembership"

    .line 20
    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetAliasMembershipResponse;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetAliasMembershipResponse;->getMembership()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;->getArray()[J

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 p2, 0x0

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    new-array p1, p2, [J

    .line 39
    .line 40
    :cond_0
    array-length v0, p1

    .line 41
    new-array v1, v0, [Lcom/rapid7/client/dcerpc/mssamr/dto/Membership;

    .line 42
    .line 43
    :goto_0
    if-ge p2, v0, :cond_1

    .line 44
    .line 45
    new-instance v2, Lcom/rapid7/client/dcerpc/mssamr/dto/Membership;

    .line 46
    .line 47
    aget-wide v3, p1, p2

    .line 48
    .line 49
    invoke-direct {v2, v3, v4}, Lcom/rapid7/client/dcerpc/mssamr/dto/Membership;-><init>(J)V

    .line 50
    .line 51
    .line 52
    aput-object v2, v1, p2

    .line 53
    .line 54
    add-int/lit8 p2, p2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-object v1
.end method

.method public getAliasesForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;
    .locals 1

    const v0, 0xffff

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->getAliasesForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;I)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;

    move-result-object p1

    return-object p1
.end method

.method public getAliasesForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;I)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;
    .locals 2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    move-result-object p1

    .line 4
    new-instance v1, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$2;-><init>(Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;[BI)V

    invoke-direct {p0, v0, v1}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->enumerate(Ljava/util/List;Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$EnumerationCallback;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->parseSAMPRRIDEnumerations(Ljava/util/List;)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;

    move-result-object p1

    return-object p1
.end method

.method public getDomainGroupInformationForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;)[Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplayGroup;
    .locals 2

    const/4 v0, -0x1

    const v1, 0xffff

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->getDomainGroupInformationForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;II)[Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplayGroup;

    move-result-object p1

    return-object p1
.end method

.method public getDomainGroupInformationForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;II)[Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplayGroup;
    .locals 9

    .line 2
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    move-result-object p1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    new-instance v4, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request$DomainDisplayGroup;

    invoke-direct {v4, p1, v2, p2, p3}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Request$DomainDisplayGroup;-><init>([BIII)V

    .line 5
    invoke-virtual {p0, v4}, Lcom/rapid7/client/dcerpc/service/Service;->call(Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    move-result-object v4

    check-cast v4, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;

    .line 6
    invoke-virtual {v4}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;->getDisplayInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    move-result-object v5

    check-cast v5, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroupBuffer;

    invoke-virtual {v5}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPREnumerationBuffer;->getEntries()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v2, v6

    .line 9
    invoke-virtual {v4}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;->getTotalReturned()I

    move-result v6

    add-int/2addr v3, v6

    .line 10
    invoke-virtual {v4}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    move-result v6

    .line 11
    sget-object v7, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_MORE_ENTRIES:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    invoke-virtual {v7, v6}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 12
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 13
    :cond_1
    sget-object p1, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_NO_MORE_ITEMS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    invoke-virtual {p1, v6}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    invoke-virtual {p1, v6}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    invoke-virtual {v4}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryDisplayInformation2Response;->getTotalAvailable()I

    move-result p1

    if-ne v3, p1, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    new-instance p1, Lcom/rapid7/client/dcerpc/RPCException;

    const-string p2, "QueryDisplayInformation2"

    invoke-direct {p1, p2, v6}, Lcom/rapid7/client/dcerpc/RPCException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplayGroup;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;

    add-int/lit8 v0, v1, 0x1

    .line 19
    new-instance v8, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplayGroup;

    invoke-virtual {p3}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->getRid()I

    move-result v2

    int-to-long v3, v2

    .line 20
    invoke-virtual {p3}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->getAccountName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-virtual {p3}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->getDescription()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {p3}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainDisplayGroup;->getAttributes()I

    move-result v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainDisplayGroup;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    aput-object v8, p1, v1

    move v1, v0

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method public getDomainLockoutInfo(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;)Lcom/rapid7/client/dcerpc/mssamr/dto/DomainLockoutInfo;
    .locals 7

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomain2Request$DomainLockoutInformation;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomain2Request$DomainLockoutInformation;-><init>([B)V

    .line 8
    .line 9
    .line 10
    const-string p1, "SamrQueryInformationDomain2[12]"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;->getDomainInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance v6, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainLockoutInfo;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->getLockoutDuration()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->getLockoutObservationWindow()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLockoutInfo;->getLockoutThreshold()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    move-object v0, v6

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainLockoutInfo;-><init>(JJI)V

    .line 44
    .line 45
    .line 46
    return-object v6
.end method

.method public getDomainLogOffInfo(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;)Lcom/rapid7/client/dcerpc/mssamr/dto/DomainLogoffInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainRequest$DomainLogOffInformation;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainRequest$DomainLogOffInformation;-><init>([B)V

    .line 8
    .line 9
    .line 10
    const-string p1, "SamrQueryInformationDomain[3]"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;->getDomainInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLogoffInfo;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainLogoffInfo;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainLogoffInfo;->getForceLogoff()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-direct {v0, v1, v2}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainLogoffInfo;-><init>(J)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public getDomainPasswordInfo(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;)Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;
    .locals 9

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainRequest$DomainPasswordInformation;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainRequest$DomainPasswordInformation;-><init>([B)V

    .line 8
    .line 9
    .line 10
    const-string p1, "SamrQueryInformationDomain[1]"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationDomainResponse;->getDomainInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainPasswordInfo;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance v8, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainPasswordInfo;->getMinPasswordLength()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainPasswordInfo;->getPasswordHistoryLength()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainPasswordInfo;->getPasswordProperties()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainPasswordInfo;->getMaxPasswordAge()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRDomainPasswordInfo;->getMinPasswordAge()J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    move-object v0, v8

    .line 51
    invoke-direct/range {v0 .. v7}, Lcom/rapid7/client/dcerpc/mssamr/dto/DomainPasswordInfo;-><init>(IIIJJ)V

    .line 52
    .line 53
    .line 54
    return-object v8
.end method

.method public getDomainsForServer(Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;
    .locals 1

    const v0, 0xffff

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->getDomainsForServer(Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;I)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;

    move-result-object p1

    return-object p1
.end method

.method public getDomainsForServer(Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;I)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;
    .locals 2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    move-result-object p1

    .line 4
    new-instance v1, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$1;-><init>(Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;[BI)V

    invoke-direct {p0, v0, v1}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->enumerate(Ljava/util/List;Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$EnumerationCallback;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->parseSAMPRRIDEnumerations(Ljava/util/List;)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;

    move-result-object p1

    return-object p1
.end method

.method public getGroupGeneralInformation(Lcom/rapid7/client/dcerpc/mssamr/dto/GroupHandle;)Lcom/rapid7/client/dcerpc/mssamr/dto/GroupGeneralInformation;
    .locals 7

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupRequest$GroupGeneralInformation;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupRequest$GroupGeneralInformation;-><init>([B)V

    .line 8
    .line 9
    .line 10
    const-string p1, "SamrQueryInformationGroup[1]"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationGroupResponse;->getGroupInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance v6, Lcom/rapid7/client/dcerpc/mssamr/dto/GroupGeneralInformation;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getAttributes()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getMemberCount()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRGroupGeneralInformation;->getAdminComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    move-object v0, v6

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/rapid7/client/dcerpc/mssamr/dto/GroupGeneralInformation;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v6
.end method

.method public getGroupsForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;
    .locals 1

    const v0, 0xffff

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->getGroupsForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;I)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;

    move-result-object p1

    return-object p1
.end method

.method public getGroupsForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;I)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;
    .locals 2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    move-result-object p1

    .line 4
    new-instance v1, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$3;-><init>(Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;[BI)V

    invoke-direct {p0, v0, v1}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->enumerate(Ljava/util/List;Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$EnumerationCallback;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->parseSAMPRRIDEnumerations(Ljava/util/List;)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;

    move-result-object p1

    return-object p1
.end method

.method public getGroupsForUser(Lcom/rapid7/client/dcerpc/mssamr/dto/UserHandle;)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithAttributes;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetGroupsForUserRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetGroupsForUserRequest;-><init>([B)V

    .line 8
    .line 9
    .line 10
    const-string p1, "GetGroupsForUser"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetGroupsForUserResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetGroupsForUserResponse;->getGroups()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->parseGroupMemberships(Ljava/util/List;)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithAttributes;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public getMembersForGroup(Lcom/rapid7/client/dcerpc/mssamr/dto/GroupHandle;)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithAttributes;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetMembersInGroupRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetMembersInGroupRequest;-><init>([B)V

    .line 8
    .line 9
    .line 10
    const-string p1, "GetMembersForGroup"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetMembersInGroupResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetMembersInGroupResponse;->getList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->parseGroupMemberships(Ljava/util/List;)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithAttributes;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public getMembersInAlias(Lcom/rapid7/client/dcerpc/mssamr/dto/AliasHandle;)[Lcom/rapid7/client/dcerpc/dto/SID;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetMembersInAliasRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetMembersInAliasRequest;-><init>([B)V

    .line 8
    .line 9
    .line 10
    const-string p1, "SamrGetMembersInAlias"

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetMembersInAliasResponse;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrGetMembersInAliasResponse;->getSids()[Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCSIDs([Lcom/rapid7/client/dcerpc/objects/RPCSID;)[Lcom/rapid7/client/dcerpc/dto/SID;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public getSIDForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/dto/SID;
    .locals 1

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;->of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-direct {v0, p1, p2}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerRequest;-><init>([BLcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "SamrLookupDomainInSamServer"

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerResponse;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupDomainInSamServerResponse;->getDomainId()Lcom/rapid7/client/dcerpc/objects/RPCSID;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCSID(Lcom/rapid7/client/dcerpc/objects/RPCSID;)Lcom/rapid7/client/dcerpc/dto/SID;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public getSecurityObject(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->getSecurityObject(Lcom/rapid7/client/dcerpc/dto/ContextHandle;ZZZZ)[B

    move-result-object p1

    return-object p1
.end method

.method public getSecurityObject(Lcom/rapid7/client/dcerpc/dto/ContextHandle;ZZZZ)[B
    .locals 0

    if-eqz p3, :cond_0

    or-int/lit8 p2, p2, 0x2

    :cond_0
    if-eqz p4, :cond_1

    or-int/lit8 p2, p2, 0x4

    :cond_1
    if-eqz p5, :cond_2

    or-int/lit8 p2, p2, 0x8

    .line 2
    :cond_2
    new-instance p3, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectRequest;

    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectRequest;-><init>([BI)V

    .line 4
    const-string p1, "SamrQuerySecurityObject"

    invoke-virtual {p0, p3, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    move-result-object p1

    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectResponse;

    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQuerySecurityObjectResponse;->getSecurityDescriptor()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->parseSAMPRSRSecurityDescriptor(Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;)[B

    move-result-object p1

    return-object p1
.end method

.method public getUserAllInformation(Lcom/rapid7/client/dcerpc/mssamr/dto/UserHandle;)Lcom/rapid7/client/dcerpc/mssamr/dto/UserAllInformation;
    .locals 48

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserRequest$UserAllInformation;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v2}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserRequest$UserAllInformation;-><init>([B)V

    .line 10
    .line 11
    .line 12
    const-string v2, "SamrQueryInformationUser[21]"

    .line 13
    .line 14
    invoke-virtual {v1, v0, v2}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserResponse;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrQueryInformationUserResponse;->getUserInformation()Lcom/rapid7/client/dcerpc/io/ndr/Unmarshallable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    return-object v0

    .line 30
    :cond_0
    :try_start_0
    new-instance v46, Lcom/rapid7/client/dcerpc/mssamr/dto/UserAllInformation;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLastLogon()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLastLogoff()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordLastSet()J

    .line 41
    .line 42
    .line 43
    move-result-wide v7

    .line 44
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getAccountExpires()J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordCanChange()J

    .line 49
    .line 50
    .line 51
    move-result-wide v11

    .line 52
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordMustChange()J

    .line 53
    .line 54
    .line 55
    move-result-wide v13

    .line 56
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getFullName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v16

    .line 72
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getHomeDirectory()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v17

    .line 80
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getHomeDirectoryDrive()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v1, v2}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v18

    .line 88
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getScriptPath()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v19

    .line 96
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getProfilePath()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v20

    .line 104
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getAdminComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v21

    .line 112
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getWorkStations()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v1, v2}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v22

    .line 120
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserComment()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v23

    .line 128
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getParameters()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-virtual {v1, v2}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v24

    .line 136
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLmOwfPassword()Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2}, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->getBuffer()[I

    .line 141
    .line 142
    .line 143
    move-result-object v25

    .line 144
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getNtOwfPassword()Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2}, Lcom/rapid7/client/dcerpc/objects/RPCShortBlob;->getBuffer()[I

    .line 149
    .line 150
    .line 151
    move-result-object v26

    .line 152
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPrivateData()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v2}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;->getValue()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v27

    .line 160
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getSecurityDescriptor()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-direct {v1, v2}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->parseSAMPRSRSecurityDescriptor(Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRSRSecurityDescriptor;)[B

    .line 165
    .line 166
    .line 167
    move-result-object v28

    .line 168
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserId()J

    .line 169
    .line 170
    .line 171
    move-result-wide v29

    .line 172
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPrimaryGroupId()J

    .line 173
    .line 174
    .line 175
    move-result-wide v31

    .line 176
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getUserAccountControl()J

    .line 177
    .line 178
    .line 179
    move-result-wide v33

    .line 180
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getWhichFields()J

    .line 181
    .line 182
    .line 183
    move-result-wide v35

    .line 184
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLogonHours()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-direct {v1, v2}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->parseSAMPRLogonHours(Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRLogonHours;)Lcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;

    .line 189
    .line 190
    .line 191
    move-result-object v37

    .line 192
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getBadPasswordCount()I

    .line 193
    .line 194
    .line 195
    move-result v38

    .line 196
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLogonCount()I

    .line 197
    .line 198
    .line 199
    move-result v39

    .line 200
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getCountryCode()I

    .line 201
    .line 202
    .line 203
    move-result v40

    .line 204
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getCodePage()I

    .line 205
    .line 206
    .line 207
    move-result v41

    .line 208
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getLmPasswordPresent()C

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    const/16 v42, 0x0

    .line 213
    .line 214
    const/16 v43, 0x1

    .line 215
    .line 216
    if-eqz v2, :cond_1

    .line 217
    .line 218
    const/16 v44, 0x1

    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_1
    const/16 v44, 0x0

    .line 222
    .line 223
    :goto_0
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getNtPasswordPresent()C

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_2

    .line 228
    .line 229
    const/16 v45, 0x1

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_2
    const/16 v45, 0x0

    .line 233
    .line 234
    :goto_1
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPasswordExpired()C

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_3

    .line 239
    .line 240
    const/16 v47, 0x1

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_3
    const/16 v47, 0x0

    .line 244
    .line 245
    :goto_2
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRUserAllInformation;->getPrivateDataSensitive()C

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_4

    .line 250
    .line 251
    const/4 v0, 0x1

    .line 252
    goto :goto_3

    .line 253
    :cond_4
    const/4 v0, 0x0

    .line 254
    :goto_3
    move-object/from16 v2, v46

    .line 255
    .line 256
    move/from16 v42, v44

    .line 257
    .line 258
    move/from16 v43, v45

    .line 259
    .line 260
    move/from16 v44, v47

    .line 261
    .line 262
    move/from16 v45, v0

    .line 263
    .line 264
    invoke-direct/range {v2 .. v45}, Lcom/rapid7/client/dcerpc/mssamr/dto/UserAllInformation;-><init>(JJJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I[ILjava/lang/String;[BJJJJLcom/rapid7/client/dcerpc/mssamr/dto/LogonHours;IIIIZZZZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .line 266
    .line 267
    return-object v46

    .line 268
    :catch_0
    move-exception v0

    .line 269
    goto :goto_4

    .line 270
    :catch_1
    move-exception v0

    .line 271
    :goto_4
    new-instance v2, Ljava/rmi/UnmarshalException;

    .line 272
    .line 273
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    invoke-direct {v2, v3, v0}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 278
    .line 279
    .line 280
    throw v2
.end method

.method public getUsersForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->getUsersForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;I)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;

    move-result-object p1

    return-object p1
.end method

.method public getUsersForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;I)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;
    .locals 1

    const v0, 0xffff

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->getUsersForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;II)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;

    move-result-object p1

    return-object p1
.end method

.method public getUsersForDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;II)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;
    .locals 2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    move-result-object p1

    .line 5
    new-instance v1, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$4;-><init>(Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;[BII)V

    invoke-direct {p0, v0, v1}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->enumerate(Ljava/util/List;Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService$EnumerationCallback;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->parseSAMPRRIDEnumerations(Ljava/util/List;)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithName;

    move-result-object p1

    return-object p1
.end method

.method public varargs lookupNamesInDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;[Ljava/lang/String;)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;
    .locals 9

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p2}, Lcom/rapid7/client/dcerpc/service/Service;->parseNonNullTerminatedStrings([Ljava/lang/String;)[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-direct {v0, p1, p2}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainRequest;-><init>([B[Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NonNullTerminated;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    new-array p1, p1, [Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 16
    .line 17
    sget-object p2, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    aput-object p2, p1, v1

    .line 21
    .line 22
    sget-object p2, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->STATUS_SOME_NOT_MAPPED:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    aput-object p2, p1, v2

    .line 26
    .line 27
    sget-object p2, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->STATUS_NONE_MAPPED:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    aput-object p2, p1, v3

    .line 31
    .line 32
    const-string p2, "SamrLookupNamesInDomain"

    .line 33
    .line 34
    invoke-virtual {p0, v0, p2, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpect(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;[Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainResponse;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainResponse;->getRelativeIds()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;->getArray()[J

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-nez p2, :cond_0

    .line 49
    .line 50
    new-array p2, v1, [J

    .line 51
    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupNamesInDomainResponse;->getUse()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;->getArray()[J

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    new-array p1, v1, [J

    .line 63
    .line 64
    :cond_1
    array-length v0, p2

    .line 65
    array-length v4, p1

    .line 66
    if-ne v0, v4, :cond_4

    .line 67
    .line 68
    array-length v0, p2

    .line 69
    new-array v3, v0, [Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;

    .line 70
    .line 71
    :goto_0
    if-ge v1, v0, :cond_3

    .line 72
    .line 73
    aget-wide v4, p2, v1

    .line 74
    .line 75
    const-wide/16 v6, 0x0

    .line 76
    .line 77
    cmp-long v8, v4, v6

    .line 78
    .line 79
    if-nez v8, :cond_2

    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    aput-object v4, v3, v1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    new-instance v6, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;

    .line 86
    .line 87
    aget-wide v7, p1, v1

    .line 88
    .line 89
    long-to-int v8, v7

    .line 90
    invoke-direct {v6, v4, v5, v8}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithUse;-><init>(JI)V

    .line 91
    .line 92
    .line 93
    aput-object v6, v3, v1

    .line 94
    .line 95
    :goto_1
    add-int/2addr v1, v2

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    return-object v3

    .line 98
    :cond_4
    new-instance v0, Ljava/rmi/UnmarshalException;

    .line 99
    .line 100
    array-length p2, p2

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    array-length p1, p1

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-array v3, v3, [Ljava/lang/Object;

    .line 111
    .line 112
    aput-object p2, v3, v1

    .line 113
    .line 114
    aput-object p1, v3, v2

    .line 115
    .line 116
    const-string p1, "Expected RelativeIds.length == Uses.length but %d != %d"

    .line 117
    .line 118
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {v0, p1}, Ljava/rmi/UnmarshalException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :goto_2
    throw v0

    .line 127
    :goto_3
    goto :goto_2
.end method

.method public varargs lookupRIDsInDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;[J)[Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;
    .locals 10

    .line 1
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainRequest;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1, p2}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainRequest;-><init>([B[J)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    new-array p1, p1, [Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 12
    .line 13
    sget-object v1, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v1, p1, v2

    .line 17
    .line 18
    sget-object v1, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->STATUS_SOME_NOT_MAPPED:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    aput-object v1, p1, v3

    .line 22
    .line 23
    sget-object v1, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->STATUS_NONE_MAPPED:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    aput-object v1, p1, v4

    .line 27
    .line 28
    const-string v1, "SamrLookupIdsInDomain"

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpect(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;[Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainResponse;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainResponse;->getNames()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrLookupIdsInDomainResponse;->getUses()Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/mssamr/objects/SAMPRULongArray;->getArray()[J

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_0

    .line 49
    .line 50
    new-array p1, v2, [J

    .line 51
    .line 52
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    new-array v1, v1, [Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;

    .line 57
    .line 58
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-ge v2, v4, :cond_2

    .line 63
    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;

    .line 69
    .line 70
    invoke-virtual {p0, v4}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    if-nez v4, :cond_1

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    aput-object v4, v1, v2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    new-instance v5, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;

    .line 81
    .line 82
    aget-wide v6, p2, v2

    .line 83
    .line 84
    aget-wide v8, p1, v2

    .line 85
    .line 86
    long-to-int v9, v8

    .line 87
    invoke-direct {v5, v6, v7, v4, v9}, Lcom/rapid7/client/dcerpc/mssamr/dto/MembershipWithNameAndUse;-><init>(JLjava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    aput-object v5, v1, v2

    .line 91
    .line 92
    :goto_1
    add-int/2addr v2, v3

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    return-object v1
.end method

.method public openAlias(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;J)Lcom/rapid7/client/dcerpc/mssamr/dto/AliasHandle;
    .locals 1

    const v0, 0x2000c

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->openAlias(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;JI)Lcom/rapid7/client/dcerpc/mssamr/dto/AliasHandle;

    move-result-object p1

    return-object p1
.end method

.method public openAlias(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;JI)Lcom/rapid7/client/dcerpc/mssamr/dto/AliasHandle;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenAliasRequest;

    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    move-result-object p1

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenAliasRequest;-><init>([BIJ)V

    .line 4
    const-string p1, "SamrOpenAlias"

    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    move-result-object p1

    check-cast p1, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->parseAliasHandle(Lcom/rapid7/client/dcerpc/messages/HandleResponse;)Lcom/rapid7/client/dcerpc/mssamr/dto/AliasHandle;

    move-result-object p1

    return-object p1
.end method

.method public openDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;Lcom/rapid7/client/dcerpc/dto/SID;)Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;
    .locals 1

    const/high16 v0, 0x2000000

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->openDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;Lcom/rapid7/client/dcerpc/dto/SID;I)Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;

    move-result-object p1

    return-object p1
.end method

.method public openDomain(Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;Lcom/rapid7/client/dcerpc/dto/SID;I)Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenDomainRequest;

    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/rapid7/client/dcerpc/service/Service;->parseSID(Lcom/rapid7/client/dcerpc/dto/SID;)Lcom/rapid7/client/dcerpc/objects/RPCSID;

    move-result-object p2

    invoke-direct {v0, p1, p3, p2}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenDomainRequest;-><init>([BILcom/rapid7/client/dcerpc/objects/RPCSID;)V

    .line 4
    const-string p1, "SamrOpenDomain"

    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    move-result-object p1

    check-cast p1, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->parseDomainHandle(Lcom/rapid7/client/dcerpc/messages/HandleResponse;)Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;

    move-result-object p1

    return-object p1
.end method

.method public openGroup(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;J)Lcom/rapid7/client/dcerpc/mssamr/dto/GroupHandle;
    .locals 1

    const/high16 v0, 0x2000000

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->openGroup(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;JI)Lcom/rapid7/client/dcerpc/mssamr/dto/GroupHandle;

    move-result-object p1

    return-object p1
.end method

.method public openGroup(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;JI)Lcom/rapid7/client/dcerpc/mssamr/dto/GroupHandle;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenGroupRequest;

    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    move-result-object p1

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenGroupRequest;-><init>([BIJ)V

    .line 4
    const-string p1, "SamrOpenGroupRequest"

    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    move-result-object p1

    check-cast p1, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->parseGroupHandle(Lcom/rapid7/client/dcerpc/messages/HandleResponse;)Lcom/rapid7/client/dcerpc/mssamr/dto/GroupHandle;

    move-result-object p1

    return-object p1
.end method

.method public openServer()Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;
    .locals 1

    .line 1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->openServer(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;

    move-result-object v0

    return-object v0
.end method

.method public openServer(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;
    .locals 1

    const/high16 v0, 0x2000000

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->openServer(Ljava/lang/String;I)Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;

    move-result-object p1

    return-object p1
.end method

.method public openServer(Ljava/lang/String;I)Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;
    .locals 1

    .line 3
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrConnect2Request;

    .line 4
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseWCharNT(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrConnect2Request;-><init>(Lcom/rapid7/client/dcerpc/objects/WChar$NullTerminated;I)V

    .line 5
    const-string p1, "SamrConnect2"

    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    move-result-object p1

    check-cast p1, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->parseServerHandle(Lcom/rapid7/client/dcerpc/messages/HandleResponse;)Lcom/rapid7/client/dcerpc/mssamr/dto/ServerHandle;

    move-result-object p1

    return-object p1
.end method

.method public openUser(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;J)Lcom/rapid7/client/dcerpc/mssamr/dto/UserHandle;
    .locals 1

    const v0, 0x2011b

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->openUser(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;JI)Lcom/rapid7/client/dcerpc/mssamr/dto/UserHandle;

    move-result-object p1

    return-object p1
.end method

.method public openUser(Lcom/rapid7/client/dcerpc/mssamr/dto/DomainHandle;JI)Lcom/rapid7/client/dcerpc/mssamr/dto/UserHandle;
    .locals 1

    .line 2
    new-instance v0, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenUserRequest;

    .line 3
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->parseHandle(Lcom/rapid7/client/dcerpc/dto/ContextHandle;)[B

    move-result-object p1

    invoke-direct {v0, p1, p4, p2, p3}, Lcom/rapid7/client/dcerpc/mssamr/messages/SamrOpenUserRequest;-><init>([BIJ)V

    .line 4
    const-string p1, "SamrOpenUserRequest"

    invoke-virtual {p0, v0, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    move-result-object p1

    check-cast p1, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/mssamr/SecurityAccountManagerService;->parseUserHandle(Lcom/rapid7/client/dcerpc/messages/HandleResponse;)Lcom/rapid7/client/dcerpc/mssamr/dto/UserHandle;

    move-result-object p1

    return-object p1
.end method
