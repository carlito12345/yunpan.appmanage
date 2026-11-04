.class public Lcom/rapid7/client/dcerpc/msrrp/RegistryService;
.super Lcom/rapid7/client/dcerpc/service/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rapid7/client/dcerpc/msrrp/RegistryService$RegistryHandleKey;
    }
.end annotation


# static fields
.field private static final ACCESS_SYSTEM_SECURITY:I = 0x1000000

.field private static final MAXIMUM_ALLOWED:I = 0x2000000

.field private static final MAX_REGISTRY_KEY_CLASS_SIZE:I = 0x7fff

.field private static final MAX_REGISTRY_KEY_NAME_SIZE:I = 0x7fff

.field private static final MAX_REGISTRY_VALUE_DATA_SIZE:I = 0x100000

.field private static final MAX_REGISTRY_VALUE_NAME_SIZE:I = 0x7fff


# instance fields
.field private final hiveCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;",
            "[B>;"
        }
    .end annotation
.end field

.field private final keyPathCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/rapid7/client/dcerpc/msrrp/RegistryService$RegistryHandleKey;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/rapid7/client/dcerpc/transport/RPCTransport;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/service/Service;-><init>(Lcom/rapid7/client/dcerpc/transport/RPCTransport;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->hiveCache:Ljava/util/Map;

    .line 10
    .line 11
    new-instance p1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->keyPathCache:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method private isFileNotFound(Lcom/rapid7/client/dcerpc/RPCException;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/RPCException;->getErrorCode()Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_FILE_NOT_FOUND:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method private openKey(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 4

    .line 2
    invoke-virtual {p0, p2}, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->openHive(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->keyPathCache:Ljava/util/Map;

    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Lcom/rapid7/client/dcerpc/msrrp/RegistryService$RegistryHandleKey;

    invoke-direct {v1, p2, p3}, Lcom/rapid7/client/dcerpc/msrrp/RegistryService$RegistryHandleKey;-><init>(Ljava/lang/String;I)V

    .line 7
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->keyPathCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->keyPathCache:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->openHive(Ljava/lang/String;)[B

    move-result-object p1

    .line 10
    new-instance v2, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegOpenKey;

    invoke-static {p2}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;->of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

    move-result-object p2

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3, p3}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegOpenKey;-><init>([BLcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;II)V

    .line 11
    const-string p1, "BaseRegOpenKey"

    invoke-virtual {p0, v2, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    move-result-object p1

    check-cast p1, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    .line 12
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/HandleResponse;->getHandle()[B

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->keyPathCache:Ljava/util/Map;

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    monitor-exit v0

    return-object p1

    .line 15
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    const-string v0, "\\\\"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "\\"

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {v0, v1, p1}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :cond_2
    return-object p1
.end method

.method public doesKeyExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->openKey(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/rapid7/client/dcerpc/RPCException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->isFileNotFound(Lcom/rapid7/client/dcerpc/RPCException;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    throw p1
.end method

.method public doesValueExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;
    :try_end_0
    .catch Lcom/rapid7/client/dcerpc/RPCException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    invoke-direct {p0, p1}, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->isFileNotFound(Lcom/rapid7/client/dcerpc/RPCException;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    throw p1
.end method

.method public getKeyInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;
    .locals 10

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->openKey(Ljava/lang/String;Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyRequest;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyRequest;-><init>([B)V

    .line 8
    .line 9
    .line 10
    const-string p1, "BaseRegQueryInfoKey"

    .line 11
    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;

    .line 17
    .line 18
    new-instance p2, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->getSubKeys()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->getMaxSubKeyLen()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->getMaxClassLen()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->getValues()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->getMaxValueNameLen()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->getMaxValueLen()I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->getSecurityDescriptor()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryInfoKeyResponse;->getLastWriteTime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v8

    .line 52
    move-object v0, p2

    .line 53
    invoke-direct/range {v0 .. v9}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;-><init>(IIIIIIIJ)V

    .line 54
    .line 55
    .line 56
    return-object p2
.end method

.method public getKeySecurity(Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 1

    .line 1
    const/high16 v0, 0x3000000

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->openKey(Ljava/lang/String;Ljava/lang/String;I)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->getKeyInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKeyInfo;->getSecurityDescriptor()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    new-instance p2, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityRequest;

    .line 16
    .line 17
    invoke-direct {p2, v0, p3, p1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityRequest;-><init>([BII)V

    .line 18
    .line 19
    .line 20
    const-string p1, "BaseRegGetKeySecurity"

    .line 21
    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityResponse;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegGetKeySecurityResponse;->getpRpcSecurityDescriptorOut()Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/objects/RPCSecurityDescriptor;->getLpSecurityDescriptor()[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public getSubKeys(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->openKey(Ljava/lang/String;Ljava/lang/String;)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    :goto_0
    new-instance v1, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyRequest;

    .line 12
    .line 13
    const/16 v2, 0x7fff

    .line 14
    .line 15
    invoke-direct {v1, p1, p2, v2, v2}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyRequest;-><init>([BIII)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/rapid7/client/dcerpc/service/Service;->call(Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    sget-object v3, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 29
    .line 30
    invoke-virtual {v3, v2}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    new-instance v2, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;->getLpNameOut()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {p0, v3}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-instance v4, Lcom/rapid7/client/dcerpc/msrrp/dto/FileTime;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumKeyResponse;->getLastWriteTime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    invoke-direct {v4, v5, v6}, Lcom/rapid7/client/dcerpc/msrrp/dto/FileTime;-><init>(J)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v2, v3, v4}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryKey;-><init>(Ljava/lang/String;Lcom/rapid7/client/dcerpc/msrrp/dto/FileTime;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    sget-object p1, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_NO_MORE_ITEMS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    new-instance p1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_1
    new-instance p1, Lcom/rapid7/client/dcerpc/RPCException;

    .line 83
    .line 84
    const-string p2, "BaseRegEnumKey"

    .line 85
    .line 86
    invoke-direct {p1, p2, v2}, Lcom/rapid7/client/dcerpc/RPCException;-><init>(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :goto_1
    throw p1

    .line 91
    :goto_2
    goto :goto_1
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;
    .locals 2

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const-string p3, ""

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->openKey(Ljava/lang/String;Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueRequest;

    .line 10
    .line 11
    invoke-static {p3}, Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;->of(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/high16 v1, 0x100000

    .line 16
    .line 17
    invoke-direct {p2, p1, v0, v1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueRequest;-><init>([BLcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;I)V

    .line 18
    .line 19
    .line 20
    const-string p1, "BaseRegQueryValue"

    .line 21
    .line 22
    invoke-virtual {p0, p2, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueResponse;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueResponse;->getData()Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    new-instance v0, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegQueryValueResponse;->getType()Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p1}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->getRegistryValueType(I)Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p2}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;->getArray()[B

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    :goto_0
    invoke-direct {v0, p3, p1, p2}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;-><init>(Ljava/lang/String;Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;[B)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method public getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->openKey(Ljava/lang/String;Ljava/lang/String;)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    :goto_0
    new-instance v1, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumValueRequest;

    .line 12
    .line 13
    const/16 v2, 0x7fff

    .line 14
    .line 15
    const/high16 v3, 0x100000

    .line 16
    .line 17
    invoke-direct {v1, p1, p2, v2, v3}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumValueRequest;-><init>([BIII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/rapid7/client/dcerpc/service/Service;->call(Lcom/rapid7/client/dcerpc/messages/RequestCall;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumValueResponse;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/messages/RequestResponse;->getReturnValue()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    sget-object v3, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_SUCCESS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    new-instance v2, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumValueResponse;->getName()Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString$NullTerminated;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {p0, v3}, Lcom/rapid7/client/dcerpc/service/Service;->parseRPCUnicodeString(Lcom/rapid7/client/dcerpc/objects/RPCUnicodeString;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumValueResponse;->getType()Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-static {v4}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;->getRegistryValueType(I)Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/msrrp/messages/BaseRegEnumValueResponse;->getData()Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/rapid7/client/dcerpc/io/ndr/arrays/RPCConformantVaryingByteArray;->getArray()[B

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v2, v3, v4, v1}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValue;-><init>(Ljava/lang/String;Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryValueType;[B)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    add-int/lit8 p2, p2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    sget-object p1, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->ERROR_NO_MORE_ITEMS:Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Lcom/rapid7/client/dcerpc/mserref/SystemErrorCode;->is(I)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    new-instance p1, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :cond_1
    new-instance p1, Lcom/rapid7/client/dcerpc/RPCException;

    .line 96
    .line 97
    const-string p2, "BaseRegEnumValue"

    .line 98
    .line 99
    invoke-direct {p1, p2, v2}, Lcom/rapid7/client/dcerpc/RPCException;-><init>(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :goto_1
    throw p1

    .line 104
    :goto_2
    goto :goto_1
.end method

.method public openHive(Ljava/lang/String;)[B
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-static {p1}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->getRegistryHiveByName(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->hiveCache:Ljava/util/Map;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->hiveCache:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->hiveCache:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, [B

    .line 27
    .line 28
    monitor-exit v1

    .line 29
    return-object p1

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->getOpNum()S

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    new-instance v2, Lcom/rapid7/client/dcerpc/msrrp/messages/HandleRequest;

    .line 37
    .line 38
    const/high16 v3, 0x2000000

    .line 39
    .line 40
    invoke-direct {v2, p1, v3}, Lcom/rapid7/client/dcerpc/msrrp/messages/HandleRequest;-><init>(SI)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/rapid7/client/dcerpc/msrrp/dto/RegistryHive;->getOpName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, v2, p1}, Lcom/rapid7/client/dcerpc/service/Service;->callExpectSuccess(Lcom/rapid7/client/dcerpc/messages/RequestCall;Ljava/lang/String;)Lcom/rapid7/client/dcerpc/messages/RequestResponse;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/rapid7/client/dcerpc/messages/HandleResponse;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/rapid7/client/dcerpc/messages/HandleResponse;->getHandle()[B

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v2, p0, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->hiveCache:Ljava/util/Map;

    .line 58
    .line 59
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    monitor-exit v1

    .line 63
    return-object p1

    .line 64
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p1

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string v1, "Unknown hive: "

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    const-string v0, "Invalid hive: null"

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method public openKey(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    const/high16 v0, 0x2000000

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/rapid7/client/dcerpc/msrrp/RegistryService;->openKey(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p1

    return-object p1
.end method
