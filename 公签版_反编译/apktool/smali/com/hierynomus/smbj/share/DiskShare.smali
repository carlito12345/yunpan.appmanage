.class public Lcom/hierynomus/smbj/share/DiskShare;
.super Lcom/hierynomus/smbj/share/Share;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;
    }
.end annotation


# static fields
.field private static ALREADY_DELETED_STATUS_HANDLER:Lcom/hierynomus/smbj/share/StatusHandler;

.field private static final FILE_EXISTS_STATUS_HANDLER:Lcom/hierynomus/smbj/share/StatusHandler;

.field private static final FOLDER_EXISTS_STATUS_HANDLER:Lcom/hierynomus/smbj/share/StatusHandler;


# instance fields
.field private final resolver:Lcom/hierynomus/smbj/paths/PathResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hierynomus/smbj/share/DiskShare$3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hierynomus/smbj/share/DiskShare$3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hierynomus/smbj/share/DiskShare;->FILE_EXISTS_STATUS_HANDLER:Lcom/hierynomus/smbj/share/StatusHandler;

    .line 7
    .line 8
    new-instance v0, Lcom/hierynomus/smbj/share/DiskShare$4;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/hierynomus/smbj/share/DiskShare$4;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/hierynomus/smbj/share/DiskShare;->FOLDER_EXISTS_STATUS_HANDLER:Lcom/hierynomus/smbj/share/StatusHandler;

    .line 14
    .line 15
    new-instance v0, Lcom/hierynomus/smbj/share/DiskShare$5;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/hierynomus/smbj/share/DiskShare$5;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/hierynomus/smbj/share/DiskShare;->ALREADY_DELETED_STATUS_HANDLER:Lcom/hierynomus/smbj/share/StatusHandler;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/smbj/share/TreeConnect;Lcom/hierynomus/smbj/paths/PathResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hierynomus/smbj/share/Share;-><init>(Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/smbj/share/TreeConnect;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/hierynomus/smbj/share/DiskShare;->resolver:Lcom/hierynomus/smbj/paths/PathResolver;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic access$000(Lcom/hierynomus/smbj/share/DiskShare;Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/smbj/common/SmbPath;)Lcom/hierynomus/smbj/share/DiskShare;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hierynomus/smbj/share/DiskShare;->rerouteIfNeeded(Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/smbj/common/SmbPath;)Lcom/hierynomus/smbj/share/DiskShare;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$100(Lcom/hierynomus/smbj/share/DiskShare;Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2OplockLevel;Ljava/util/List;)Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/hierynomus/smbj/share/DiskShare;->createFileAndResolve(Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2OplockLevel;Ljava/util/List;)Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private createFileAndResolve(Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2OplockLevel;Ljava/util/List;)Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hierynomus/smbj/common/SmbPath;",
            "Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/AccessMask;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msfscc/FileAttributes;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2ShareAccess;",
            ">;",
            "Lcom/hierynomus/mssmb2/SMB2CreateDisposition;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2CreateOptions;",
            ">;",
            "Lcom/hierynomus/mssmb2/SMB2OplockLevel;",
            "Ljava/util/List<",
            "Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;",
            ">;)",
            "Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;"
        }
    .end annotation

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    invoke-super/range {p0 .. p9}, Lcom/hierynomus/smbj/share/Share;->createFile(Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2OplockLevel;Ljava/util/List;)Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :try_start_0
    iget-object v14, v12, Lcom/hierynomus/smbj/share/DiskShare;->resolver:Lcom/hierynomus/smbj/paths/PathResolver;

    .line 10
    .line 11
    iget-object v15, v12, Lcom/hierynomus/smbj/share/Share;->session:Lcom/hierynomus/smbj/session/Session;

    .line 12
    .line 13
    new-instance v11, Lcom/hierynomus/smbj/share/DiskShare$1;
    :try_end_0
    .catch Lcom/hierynomus/smbj/paths/PathResolveException; {:try_start_0 .. :try_end_0} :catch_2

    .line 14
    .line 15
    move-object v1, v11

    .line 16
    move-object/from16 v2, p0

    .line 17
    .line 18
    move-object/from16 v3, p1

    .line 19
    .line 20
    move-object/from16 v4, p2

    .line 21
    .line 22
    move-object/from16 v5, p3

    .line 23
    .line 24
    move-object/from16 v6, p4

    .line 25
    .line 26
    move-object/from16 v7, p5

    .line 27
    .line 28
    move-object/from16 v8, p6

    .line 29
    .line 30
    move-object/from16 v9, p7

    .line 31
    .line 32
    move-object/from16 v10, p8

    .line 33
    .line 34
    move-object v12, v11

    .line 35
    move-object/from16 v11, p9

    .line 36
    .line 37
    :try_start_1
    invoke-direct/range {v1 .. v11}, Lcom/hierynomus/smbj/share/DiskShare$1;-><init>(Lcom/hierynomus/smbj/share/DiskShare;Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2OplockLevel;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v14, v15, v0, v13, v12}, Lcom/hierynomus/smbj/paths/PathResolver;->resolve(Lcom/hierynomus/smbj/session/Session;Lcom/hierynomus/mssmb2/SMB2Packet;Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/smbj/paths/PathResolver$ResolveAction;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_0
    new-instance v1, Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;
    :try_end_1
    .catch Lcom/hierynomus/smbj/paths/PathResolveException; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    .line 51
    move-object/from16 v2, p0

    .line 52
    .line 53
    :try_start_2
    invoke-direct {v1, v0, v13, v2}, Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;-><init>(Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/smbj/share/DiskShare;)V
    :try_end_2
    .catch Lcom/hierynomus/smbj/paths/PathResolveException; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    .line 55
    .line 56
    return-object v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    .line 60
    move-object/from16 v2, p0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_2
    move-exception v0

    .line 64
    move-object v2, v12

    .line 65
    :goto_0
    new-instance v1, Lcom/hierynomus/mssmb2/SMBApiException;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/hierynomus/smbj/paths/PathResolveException;->getStatusCode()J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    sget-object v5, Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;->SMB2_CREATE:Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;

    .line 72
    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v7, "Cannot resolve path "

    .line 76
    .line 77
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    move-object/from16 p1, v1

    .line 88
    .line 89
    move-wide/from16 p2, v3

    .line 90
    .line 91
    move-object/from16 p4, v5

    .line 92
    .line 93
    move-object/from16 p5, v6

    .line 94
    .line 95
    move-object/from16 p6, v0

    .line 96
    .line 97
    invoke-direct/range {p1 .. p6}, Lcom/hierynomus/mssmb2/SMBApiException;-><init>(JLcom/hierynomus/mssmb2/SMB2MessageCommandCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw v1
.end method

.method private exists(Ljava/lang/String;Ljava/util/EnumSet;Lcom/hierynomus/smbj/share/StatusHandler;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/hierynomus/mssmb2/SMB2CreateOptions;",
            ">;",
            "Lcom/hierynomus/smbj/share/StatusHandler;",
            ")Z"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_ATTRIBUTES:Lcom/hierynomus/msdtyp/AccessMask;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    sget-object v0, Lcom/hierynomus/msfscc/FileAttributes;->FILE_ATTRIBUTE_NORMAL:Lcom/hierynomus/msfscc/FileAttributes;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    sget-object v5, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    .line 14
    .line 15
    sget-object v6, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 16
    .line 17
    move-object v1, p0

    .line 18
    move-object v2, p1

    .line 19
    move-object v7, p2

    .line 20
    invoke-virtual/range {v1 .. v7}, Lcom/hierynomus/smbj/share/DiskShare;->open(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/DiskEntry;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_0
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :goto_1
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/SMBApiException;->getStatusCode()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-interface {p3, v0, v1}, Lcom/hierynomus/smbj/share/StatusHandler;->isSuccess(J)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    return p1

    .line 46
    :cond_1
    throw p1
.end method

.method private openDirectoryWithLease(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/Directory;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/AccessMask;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msfscc/FileAttributes;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2ShareAccess;",
            ">;",
            "Lcom/hierynomus/mssmb2/SMB2CreateDisposition;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2CreateOptions;",
            ">;)",
            "Lcom/hierynomus/smbj/share/Directory;"
        }
    .end annotation

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    iget-object v0, v11, Lcom/hierynomus/smbj/share/Share;->session:Lcom/hierynomus/smbj/session/Session;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/hierynomus/smbj/session/Session;->getConnection()Lcom/hierynomus/smbj/connection/Connection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/Connection;->getLeaseManager()Lcom/hierynomus/smbj/connection/LeaseManager;

    .line 10
    .line 11
    .line 12
    move-result-object v12

    .line 13
    new-instance v2, Lcom/hierynomus/smbj/common/SmbPath;

    .line 14
    .line 15
    iget-object v0, v11, Lcom/hierynomus/smbj/share/Share;->smbPath:Lcom/hierynomus/smbj/common/SmbPath;

    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    invoke-direct {v2, v0, v1}, Lcom/hierynomus/smbj/common/SmbPath;-><init>(Lcom/hierynomus/smbj/common/SmbPath;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/hierynomus/smbj/common/SmbPath;->getPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, ""

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    move-object v8, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v2}, Lcom/hierynomus/smbj/common/SmbPath;->getPath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v8, v0

    .line 37
    :goto_0
    invoke-virtual {v12, v8}, Lcom/hierynomus/smbj/connection/LeaseManager;->leaseKeyForPath(Ljava/lang/String;)Lcom/hierynomus/mssmb2/LeaseKey;

    .line 38
    .line 39
    .line 40
    move-result-object v13

    .line 41
    invoke-virtual {v2}, Lcom/hierynomus/smbj/common/SmbPath;->getParent()Lcom/hierynomus/smbj/common/SmbPath;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/hierynomus/smbj/common/SmbPath;->getPath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v0}, Lcom/hierynomus/smbj/common/SmbPath;->getPath()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :goto_1
    invoke-virtual {v12, v1}, Lcom/hierynomus/smbj/connection/LeaseManager;->leaseKeyForExistingPath(Ljava/lang/String;)Lcom/hierynomus/mssmb2/LeaseKey;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    move-object v5, v0

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/4 v5, 0x0

    .line 65
    :goto_2
    invoke-static {}, Lcom/hierynomus/mssmb2/SMB2LeaseState;->readHandle()J

    .line 66
    .line 67
    .line 68
    move-result-wide v6

    .line 69
    invoke-static {v13, v6, v7, v5}, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->v2(Lcom/hierynomus/mssmb2/LeaseKey;JLcom/hierynomus/mssmb2/LeaseKey;)Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseCreateContext;->toCreateContext()Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v12, v8}, Lcom/hierynomus/smbj/connection/LeaseManager;->getByPath(Ljava/lang/String;)Lcom/hierynomus/smbj/connection/LeaseEntry;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v15, 0x1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/hierynomus/smbj/connection/LeaseEntry;->isBroken()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-nez v3, :cond_3

    .line 89
    .line 90
    const/16 v16, 0x1

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_3
    const/4 v3, 0x0

    .line 94
    const/16 v16, 0x0

    .line 95
    .line 96
    :goto_3
    if-eqz v16, :cond_4

    .line 97
    .line 98
    :goto_4
    move-object v10, v1

    .line 99
    goto :goto_5

    .line 100
    :cond_4
    new-instance v1, Lcom/hierynomus/smbj/connection/LeaseEntry;

    .line 101
    .line 102
    move-object v3, v1

    .line 103
    move-object v4, v13

    .line 104
    invoke-direct/range {v3 .. v8}, Lcom/hierynomus/smbj/connection/LeaseEntry;-><init>(Lcom/hierynomus/mssmb2/LeaseKey;Lcom/hierynomus/mssmb2/LeaseKey;JLjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :goto_5
    if-nez v16, :cond_5

    .line 109
    .line 110
    invoke-virtual {v12, v10}, Lcom/hierynomus/smbj/connection/LeaseManager;->register(Lcom/hierynomus/smbj/connection/LeaseEntry;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    :try_start_0
    sget-object v9, Lcom/hierynomus/mssmb2/SMB2OplockLevel;->SMB2_OPLOCK_LEVEL_LEASE:Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 114
    .line 115
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const/4 v3, 0x0

    .line 120
    move-object/from16 v1, p0

    .line 121
    .line 122
    move-object/from16 v4, p2

    .line 123
    .line 124
    move-object/from16 v5, p3

    .line 125
    .line 126
    move-object/from16 v6, p4

    .line 127
    .line 128
    move-object/from16 v7, p5

    .line 129
    .line 130
    move-object/from16 v8, p6

    .line 131
    .line 132
    move-object/from16 p1, v9

    .line 133
    .line 134
    move-object v14, v10

    .line 135
    move-object v10, v0

    .line 136
    invoke-direct/range {v1 .. v10}, Lcom/hierynomus/smbj/share/DiskShare;->resolveAndCreateFile(Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2OplockLevel;Ljava/util/List;)Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;

    .line 137
    .line 138
    .line 139
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    iget-object v1, v0, Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;->resp:Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;

    .line 141
    .line 142
    :try_start_1
    invoke-virtual {v1}, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->getLeaseResponseContext()Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;

    .line 143
    .line 144
    .line 145
    move-result-object v2
    :try_end_1
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    invoke-virtual {v1}, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->getOplockLevel()Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    move-object/from16 v4, p1

    .line 151
    .line 152
    if-ne v3, v4, :cond_6

    .line 153
    .line 154
    if-eqz v2, :cond_6

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->getFileId()Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v14, v3}, Lcom/hierynomus/smbj/connection/LeaseEntry;->setFileId(Lcom/hierynomus/mssmb2/SMB2FileId;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->getLeaseState()J

    .line 164
    .line 165
    .line 166
    move-result-wide v3

    .line 167
    invoke-virtual {v14, v3, v4}, Lcom/hierynomus/smbj/connection/LeaseEntry;->setGrantedState(J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2}, Lcom/hierynomus/mssmb2/messages/create/SMB2LeaseResponseContext;->getEpoch()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-virtual {v14, v2}, Lcom/hierynomus/smbj/connection/LeaseEntry;->setEpoch(I)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v14, v15}, Lcom/hierynomus/smbj/connection/LeaseEntry;->setGranted(Z)V

    .line 178
    .line 179
    .line 180
    iget-object v2, v11, Lcom/hierynomus/smbj/share/Share;->session:Lcom/hierynomus/smbj/session/Session;

    .line 181
    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/hierynomus/smbj/share/Share;->getTreeConnect()Lcom/hierynomus/smbj/share/TreeConnect;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v3}, Lcom/hierynomus/smbj/share/TreeConnect;->getTreeId()J

    .line 187
    .line 188
    .line 189
    move-result-wide v3

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/hierynomus/smbj/share/Share;->getTreeConnect()Lcom/hierynomus/smbj/share/TreeConnect;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v5}, Lcom/hierynomus/smbj/share/TreeConnect;->getNegotiatedProtocol()Lcom/hierynomus/smbj/connection/NegotiatedProtocol;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v5}, Lcom/hierynomus/smbj/connection/NegotiatedProtocol;->getDialect()Lcom/hierynomus/mssmb2/SMB2Dialect;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v14, v2, v3, v4, v5}, Lcom/hierynomus/smbj/connection/LeaseEntry;->setOwner(Lcom/hierynomus/smbj/session/Session;JLcom/hierynomus/mssmb2/SMB2Dialect;)V

    .line 203
    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_6
    if-nez v16, :cond_7

    .line 207
    .line 208
    invoke-virtual {v12, v13}, Lcom/hierynomus/smbj/connection/LeaseManager;->unregister(Lcom/hierynomus/mssmb2/LeaseKey;)V

    .line 209
    .line 210
    .line 211
    :cond_7
    const/4 v14, 0x0

    .line 212
    :goto_6
    new-instance v2, Lcom/hierynomus/smbj/share/Directory;

    .line 213
    .line 214
    invoke-virtual {v1}, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->getFileId()Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    iget-object v3, v0, Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;->share:Lcom/hierynomus/smbj/share/DiskShare;

    .line 219
    .line 220
    iget-object v0, v0, Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;->target:Lcom/hierynomus/smbj/common/SmbPath;

    .line 221
    .line 222
    invoke-direct {v2, v1, v3, v0, v14}, Lcom/hierynomus/smbj/share/Directory;-><init>(Lcom/hierynomus/mssmb2/SMB2FileId;Lcom/hierynomus/smbj/share/DiskShare;Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/smbj/connection/LeaseEntry;)V

    .line 223
    .line 224
    .line 225
    return-object v2

    .line 226
    :catch_0
    move-exception v0

    .line 227
    move-object v1, v0

    .line 228
    new-instance v0, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    .line 229
    .line 230
    const-string v2, "Failed to parse lease response context"

    .line 231
    .line 232
    invoke-direct {v0, v2, v1}, Lcom/hierynomus/smbj/common/SMBRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    throw v0

    .line 236
    :catch_1
    move-exception v0

    .line 237
    if-nez v16, :cond_8

    .line 238
    .line 239
    invoke-virtual {v12, v13}, Lcom/hierynomus/smbj/connection/LeaseManager;->unregister(Lcom/hierynomus/mssmb2/LeaseKey;)V

    .line 240
    .line 241
    .line 242
    :cond_8
    goto :goto_8

    .line 243
    :goto_7
    throw v0

    .line 244
    :goto_8
    goto :goto_7
.end method

.method private openLeasedCacheHandle(Ljava/lang/String;Ljava/util/Set;)Lcom/hierynomus/smbj/share/Directory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/AccessMask;",
            ">;)",
            "Lcom/hierynomus/smbj/share/Directory;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Lcom/hierynomus/msdtyp/AccessMask;->FILE_LIST_DIRECTORY:Lcom/hierynomus/msdtyp/AccessMask;

    .line 4
    .line 5
    sget-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_ATTRIBUTES:Lcom/hierynomus/msdtyp/AccessMask;

    .line 6
    .line 7
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_EA:Lcom/hierynomus/msdtyp/AccessMask;

    .line 8
    .line 9
    invoke-static {p2, v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :cond_0
    move-object v2, p2

    .line 14
    sget-object v4, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    .line 15
    .line 16
    sget-object v5, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    move-object v0, p0

    .line 21
    move-object v1, p1

    .line 22
    invoke-virtual/range {v0 .. v6}, Lcom/hierynomus/smbj/share/DiskShare;->openDirectory(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/Directory;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Directory;->getLeaseEntry()Lcom/hierynomus/smbj/connection/LeaseEntry;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/hierynomus/smbj/connection/LeaseEntry;->isGranted()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getGrantedState()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    invoke-static {v0, v1}, Lcom/hierynomus/mssmb2/SMB2LeaseState;->isReadHandle(J)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Lcom/hierynomus/smbj/connection/LeaseEntry;->setCacheDirectory(Lcom/hierynomus/smbj/share/Directory;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-object p1
.end method

.method private openLeasedCacheHandleAndList(Ljava/lang/String;Ljava/util/Set;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/hierynomus/msfscc/fileinformation/FileDirectoryQueryableInformation;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/AccessMask;",
            ">;",
            "Ljava/lang/Class<",
            "TI;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TI;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hierynomus/smbj/share/DiskShare;->openLeasedCacheHandle(Ljava/lang/String;Ljava/util/Set;)Lcom/hierynomus/smbj/share/Directory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    invoke-virtual {p1, p3, p4}, Lcom/hierynomus/smbj/share/Directory;->list(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p2

    .line 11
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Directory;->getLeaseEntry()Lcom/hierynomus/smbj/connection/LeaseEntry;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    const/4 p4, 0x0

    .line 18
    invoke-virtual {p3, p4}, Lcom/hierynomus/smbj/connection/LeaseEntry;->setCacheDirectory(Lcom/hierynomus/smbj/share/Directory;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->closeSilently()V

    .line 22
    .line 23
    .line 24
    throw p2
.end method

.method private rerouteIfNeeded(Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/smbj/common/SmbPath;)Lcom/hierynomus/smbj/share/DiskShare;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/share/Share;->session:Lcom/hierynomus/smbj/session/Session;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/hierynomus/smbj/common/SmbPath;->isOnSameHost(Lcom/hierynomus/smbj/common/SmbPath;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/hierynomus/smbj/session/Session;->getNestedSession(Lcom/hierynomus/smbj/common/SmbPath;)Lcom/hierynomus/smbj/session/Session;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-virtual {p1, p2}, Lcom/hierynomus/smbj/common/SmbPath;->isOnSameShare(Lcom/hierynomus/smbj/common/SmbPath;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/hierynomus/smbj/common/SmbPath;->getShareName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/hierynomus/smbj/share/DiskShare;

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_1
    return-object p0
.end method

.method private resolveAndCreateFile(Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2OplockLevel;Ljava/util/List;)Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hierynomus/smbj/common/SmbPath;",
            "Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/AccessMask;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msfscc/FileAttributes;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2ShareAccess;",
            ">;",
            "Lcom/hierynomus/mssmb2/SMB2CreateDisposition;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2CreateOptions;",
            ">;",
            "Lcom/hierynomus/mssmb2/SMB2OplockLevel;",
            "Ljava/util/List<",
            "Lcom/hierynomus/mssmb2/messages/create/SMB2CreateContext;",
            ">;)",
            "Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;"
        }
    .end annotation

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    :try_start_0
    iget-object v0, v12, Lcom/hierynomus/smbj/share/DiskShare;->resolver:Lcom/hierynomus/smbj/paths/PathResolver;

    .line 6
    .line 7
    iget-object v14, v12, Lcom/hierynomus/smbj/share/Share;->session:Lcom/hierynomus/smbj/session/Session;

    .line 8
    .line 9
    new-instance v15, Lcom/hierynomus/smbj/share/DiskShare$2;

    .line 10
    .line 11
    move-object v1, v15

    .line 12
    move-object/from16 v2, p0

    .line 13
    .line 14
    move-object/from16 v3, p1

    .line 15
    .line 16
    move-object/from16 v4, p2

    .line 17
    .line 18
    move-object/from16 v5, p3

    .line 19
    .line 20
    move-object/from16 v6, p4

    .line 21
    .line 22
    move-object/from16 v7, p5

    .line 23
    .line 24
    move-object/from16 v8, p6

    .line 25
    .line 26
    move-object/from16 v9, p7

    .line 27
    .line 28
    move-object/from16 v10, p8

    .line 29
    .line 30
    move-object/from16 v11, p9

    .line 31
    .line 32
    invoke-direct/range {v1 .. v11}, Lcom/hierynomus/smbj/share/DiskShare$2;-><init>(Lcom/hierynomus/smbj/share/DiskShare;Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2OplockLevel;Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v14, v13, v15}, Lcom/hierynomus/smbj/paths/PathResolver;->resolve(Lcom/hierynomus/smbj/session/Session;Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/smbj/paths/PathResolver$ResolveAction;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;
    :try_end_0
    .catch Lcom/hierynomus/smbj/paths/PathResolveException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Lcom/hierynomus/mssmb2/SMBApiException;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/hierynomus/smbj/paths/PathResolveException;->getStatus()Lcom/hierynomus/mserref/NtStatus;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/hierynomus/mserref/NtStatus;->getValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    sget-object v4, Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;->SMB2_CREATE:Lcom/hierynomus/mssmb2/SMB2MessageCommandCode;

    .line 54
    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v6, "Cannot resolve path "

    .line 58
    .line 59
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    move-object/from16 p1, v1

    .line 70
    .line 71
    move-wide/from16 p2, v2

    .line 72
    .line 73
    move-object/from16 p4, v4

    .line 74
    .line 75
    move-object/from16 p5, v5

    .line 76
    .line 77
    move-object/from16 p6, v0

    .line 78
    .line 79
    invoke-direct/range {p1 .. p6}, Lcom/hierynomus/mssmb2/SMBApiException;-><init>(JLcom/hierynomus/mssmb2/SMB2MessageCommandCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw v1
.end method


# virtual methods
.method public deleteOnClose(Lcom/hierynomus/mssmb2/SMB2FileId;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/hierynomus/msfscc/fileinformation/FileDispositionInformation;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/hierynomus/msfscc/fileinformation/FileDispositionInformation;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/hierynomus/smbj/share/DiskShare;->setFileInformation(Lcom/hierynomus/mssmb2/SMB2FileId;Lcom/hierynomus/msfscc/fileinformation/FileSettableInformation;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public fileExists(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_NON_DIRECTORY_FILE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/hierynomus/smbj/share/DiskShare;->FILE_EXISTS_STATUS_HANDLER:Lcom/hierynomus/smbj/share/StatusHandler;

    .line 8
    .line 9
    invoke-direct {p0, p1, v0, v1}, Lcom/hierynomus/smbj/share/DiskShare;->exists(Ljava/lang/String;Ljava/util/EnumSet;Lcom/hierynomus/smbj/share/StatusHandler;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public folderExists(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_DIRECTORY_FILE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/hierynomus/smbj/share/DiskShare;->FOLDER_EXISTS_STATUS_HANDLER:Lcom/hierynomus/smbj/share/StatusHandler;

    .line 8
    .line 9
    invoke-direct {p0, p1, v0, v1}, Lcom/hierynomus/smbj/share/DiskShare;->exists(Ljava/lang/String;Ljava/util/EnumSet;Lcom/hierynomus/smbj/share/StatusHandler;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getConnectionContext()Lcom/hierynomus/smbj/connection/ConnectionContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/share/Share;->session:Lcom/hierynomus/smbj/session/Session;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hierynomus/smbj/session/Session;->getConnection()Lcom/hierynomus/smbj/connection/Connection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/Connection;->getConnectionContext()Lcom/hierynomus/smbj/connection/ConnectionContext;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getCreateStatusHandler()Lcom/hierynomus/smbj/share/StatusHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbj/share/DiskShare;->resolver:Lcom/hierynomus/smbj/paths/PathResolver;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/hierynomus/smbj/paths/PathResolver;->statusHandler()Lcom/hierynomus/smbj/share/StatusHandler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDiskEntry(Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;)Lcom/hierynomus/smbj/share/DiskEntry;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;->resp:Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->getFileAttributes()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/hierynomus/msfscc/FileAttributes;->FILE_ATTRIBUTE_DIRECTORY:Lcom/hierynomus/msfscc/FileAttributes;

    .line 8
    .line 9
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Lcom/hierynomus/smbj/share/Directory;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->getFileId()Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p1, Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;->share:Lcom/hierynomus/smbj/share/DiskShare;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;->target:Lcom/hierynomus/smbj/common/SmbPath;

    .line 24
    .line 25
    invoke-direct {v1, v0, v2, p1}, Lcom/hierynomus/smbj/share/Directory;-><init>(Lcom/hierynomus/mssmb2/SMB2FileId;Lcom/hierynomus/smbj/share/DiskShare;Lcom/hierynomus/smbj/common/SmbPath;)V

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    new-instance v1, Lcom/hierynomus/smbj/share/File;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/hierynomus/mssmb2/messages/SMB2CreateResponse;->getFileId()Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p1, Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;->share:Lcom/hierynomus/smbj/share/DiskShare;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;->target:Lcom/hierynomus/smbj/common/SmbPath;

    .line 38
    .line 39
    invoke-direct {v1, v0, v2, p1}, Lcom/hierynomus/smbj/share/File;-><init>(Lcom/hierynomus/mssmb2/SMB2FileId;Lcom/hierynomus/smbj/share/DiskShare;Lcom/hierynomus/smbj/common/SmbPath;)V

    .line 40
    .line 41
    .line 42
    return-object v1
.end method

.method public getFileInformation(Lcom/hierynomus/mssmb2/SMB2FileId;)Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;
    .locals 1

    .line 6
    const-class v0, Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;

    invoke-virtual {p0, p1, v0}, Lcom/hierynomus/smbj/share/DiskShare;->getFileInformation(Lcom/hierynomus/mssmb2/SMB2FileId;Ljava/lang/Class;)Lcom/hierynomus/msfscc/fileinformation/FileQueryableInformation;

    move-result-object p1

    check-cast p1, Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;

    return-object p1
.end method

.method public getFileInformation(Ljava/lang/String;)Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;
    .locals 1

    .line 1
    const-class v0, Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;

    invoke-virtual {p0, p1, v0}, Lcom/hierynomus/smbj/share/DiskShare;->getFileInformation(Ljava/lang/String;Ljava/lang/Class;)Lcom/hierynomus/msfscc/fileinformation/FileQueryableInformation;

    move-result-object p1

    check-cast p1, Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;

    return-object p1
.end method

.method public getFileInformation(Lcom/hierynomus/mssmb2/SMB2FileId;Ljava/lang/Class;)Lcom/hierynomus/msfscc/fileinformation/FileQueryableInformation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/hierynomus/msfscc/fileinformation/FileQueryableInformation;",
            ">(",
            "Lcom/hierynomus/mssmb2/SMB2FileId;",
            "Ljava/lang/Class<",
            "TF;>;)TF;"
        }
    .end annotation

    .line 7
    invoke-static {p2}, Lcom/hierynomus/msfscc/fileinformation/FileInformationFactory;->getDecoder(Ljava/lang/Class;)Lcom/hierynomus/msfscc/fileinformation/FileInformation$Decoder;

    move-result-object p2

    .line 8
    sget-object v2, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;->SMB2_0_INFO_FILE:Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;

    .line 9
    invoke-interface {p2}, Lcom/hierynomus/msfscc/fileinformation/FileInformation$Decoder;->getInformationClass()Lcom/hierynomus/msfscc/FileInformationClass;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/hierynomus/smbj/share/Share;->queryInfo(Lcom/hierynomus/mssmb2/SMB2FileId;Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;Ljava/util/Set;Lcom/hierynomus/msfscc/FileInformationClass;Lcom/hierynomus/msfscc/FileSystemInformationClass;)Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoResponse;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoResponse;->getOutputBuffer()[B

    move-result-object p1

    .line 12
    :try_start_0
    new-instance v0, Lcom/hierynomus/protocol/commons/buffer/Buffer$PlainBuffer;

    sget-object v1, Lcom/hierynomus/protocol/commons/buffer/Endian;->LE:Lcom/hierynomus/protocol/commons/buffer/Endian;

    invoke-direct {v0, p1, v1}, Lcom/hierynomus/protocol/commons/buffer/Buffer$PlainBuffer;-><init>([BLcom/hierynomus/protocol/commons/buffer/Endian;)V

    invoke-interface {p2, v0}, Lcom/hierynomus/msfscc/fileinformation/FileInformation$Decoder;->read(Lcom/hierynomus/protocol/commons/buffer/Buffer;)Lcom/hierynomus/msfscc/fileinformation/FileInformation;

    move-result-object p1

    check-cast p1, Lcom/hierynomus/msfscc/fileinformation/FileQueryableInformation;
    :try_end_0
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    invoke-direct {p2, p1}, Lcom/hierynomus/smbj/common/SMBRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getFileInformation(Ljava/lang/String;Ljava/lang/Class;)Lcom/hierynomus/msfscc/fileinformation/FileQueryableInformation;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/hierynomus/msfscc/fileinformation/FileQueryableInformation;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TF;>;)TF;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    sget-object v2, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_ATTRIBUTES:Lcom/hierynomus/msdtyp/AccessMask;

    sget-object v3, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_EA:Lcom/hierynomus/msdtyp/AccessMask;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    sget-object v8, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    sget-object v9, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/hierynomus/smbj/share/DiskShare;->open(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/DiskEntry;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/hierynomus/smbj/share/DiskEntry;->getFileInformation(Ljava/lang/Class;)Lcom/hierynomus/msfscc/fileinformation/FileQueryableInformation;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    const-class v2, Ljava/lang/Throwable;

    :try_start_2
    const-string v3, "addSuppressed"

    new-array v4, v1, [Ljava/lang/Class;

    aput-object v2, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    throw p2
.end method

.method public getSecurityInfo(Lcom/hierynomus/mssmb2/SMB2FileId;Ljava/util/Set;)Lcom/hierynomus/msdtyp/SecurityDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hierynomus/mssmb2/SMB2FileId;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/SecurityInformation;",
            ">;)",
            "Lcom/hierynomus/msdtyp/SecurityDescriptor;"
        }
    .end annotation

    .line 8
    sget-object v2, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;->SMB2_0_INFO_SECURITY:Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/hierynomus/smbj/share/Share;->queryInfo(Lcom/hierynomus/mssmb2/SMB2FileId;Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;Ljava/util/Set;Lcom/hierynomus/msfscc/FileInformationClass;Lcom/hierynomus/msfscc/FileSystemInformationClass;)Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoResponse;->getOutputBuffer()[B

    move-result-object p1

    .line 9
    :try_start_0
    new-instance p2, Lcom/hierynomus/smb/SMBBuffer;

    invoke-direct {p2, p1}, Lcom/hierynomus/smb/SMBBuffer;-><init>([B)V

    invoke-static {p2}, Lcom/hierynomus/msdtyp/SecurityDescriptor;->read(Lcom/hierynomus/smb/SMBBuffer;)Lcom/hierynomus/msdtyp/SecurityDescriptor;

    move-result-object p1
    :try_end_0
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    invoke-direct {p2, p1}, Lcom/hierynomus/smbj/common/SMBRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getSecurityInfo(Ljava/lang/String;Ljava/util/Set;)Lcom/hierynomus/msdtyp/SecurityDescriptor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/SecurityInformation;",
            ">;)",
            "Lcom/hierynomus/msdtyp/SecurityDescriptor;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    sget-object v2, Lcom/hierynomus/msdtyp/AccessMask;->READ_CONTROL:Lcom/hierynomus/msdtyp/AccessMask;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    .line 2
    sget-object v2, Lcom/hierynomus/msdtyp/SecurityInformation;->SACL_SECURITY_INFORMATION:Lcom/hierynomus/msdtyp/SecurityInformation;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object v2, Lcom/hierynomus/msdtyp/AccessMask;->ACCESS_SYSTEM_SECURITY:Lcom/hierynomus/msdtyp/AccessMask;

    invoke-virtual {v5, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    sget-object v7, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    sget-object v8, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/hierynomus/smbj/share/DiskShare;->open(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/DiskEntry;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/hierynomus/smbj/share/DiskEntry;->getSecurityInformation(Ljava/util/Set;)Lcom/hierynomus/msdtyp/SecurityDescriptor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    const-class v2, Ljava/lang/Throwable;

    :try_start_2
    const-string v3, "addSuppressed"

    new-array v4, v1, [Ljava/lang/Class;

    aput-object v2, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    throw p2
.end method

.method public getShareInformation()Lcom/hierynomus/msfscc/fileinformation/ShareInfo;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_ATTRIBUTES:Lcom/hierynomus/msdtyp/AccessMask;

    .line 4
    .line 5
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    sget-object v7, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    .line 10
    .line 11
    sget-object v8, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 12
    .line 13
    const/4 v9, 0x0

    .line 14
    const-string v4, ""

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v3, p0

    .line 18
    invoke-virtual/range {v3 .. v9}, Lcom/hierynomus/smbj/share/DiskShare;->openDirectory(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/Directory;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :try_start_0
    invoke-virtual {v2}, Lcom/hierynomus/smbj/share/Directory;->getFileId()Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    sget-object v5, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;->SMB2_0_INFO_FILESYSTEM:Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;

    .line 27
    .line 28
    sget-object v8, Lcom/hierynomus/msfscc/FileSystemInformationClass;->FileFsFullSizeInformation:Lcom/hierynomus/msfscc/FileSystemInformationClass;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    move-object v3, p0

    .line 33
    invoke-virtual/range {v3 .. v8}, Lcom/hierynomus/smbj/share/Share;->queryInfo(Lcom/hierynomus/mssmb2/SMB2FileId;Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;Ljava/util/Set;Lcom/hierynomus/msfscc/FileInformationClass;Lcom/hierynomus/msfscc/FileSystemInformationClass;)Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoResponse;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoResponse;->getOutputBuffer()[B

    .line 38
    .line 39
    .line 40
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    new-instance v4, Lcom/hierynomus/protocol/commons/buffer/Buffer$PlainBuffer;

    .line 42
    .line 43
    sget-object v5, Lcom/hierynomus/protocol/commons/buffer/Endian;->LE:Lcom/hierynomus/protocol/commons/buffer/Endian;

    .line 44
    .line 45
    invoke-direct {v4, v3, v5}, Lcom/hierynomus/protocol/commons/buffer/Buffer$PlainBuffer;-><init>([BLcom/hierynomus/protocol/commons/buffer/Endian;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v4}, Lcom/hierynomus/msfscc/fileinformation/ShareInfo;->parseFsFullSizeInformation(Lcom/hierynomus/protocol/commons/buffer/Buffer$PlainBuffer;)Lcom/hierynomus/msfscc/fileinformation/ShareInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v0
    :try_end_1
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-virtual {v2}, Lcom/hierynomus/smbj/share/Open;->close()V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :catchall_0
    move-exception v3

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v3

    .line 59
    :try_start_2
    new-instance v4, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    .line 60
    .line 61
    invoke-direct {v4, v3}, Lcom/hierynomus/smbj/common/SMBRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :goto_0
    if-eqz v2, :cond_0

    .line 66
    .line 67
    :try_start_3
    invoke-virtual {v2}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception v2

    .line 72
    const-class v4, Ljava/lang/Throwable;

    .line 73
    .line 74
    :try_start_4
    const-string v5, "addSuppressed"

    .line 75
    .line 76
    new-array v6, v1, [Ljava/lang/Class;

    .line 77
    .line 78
    aput-object v4, v6, v0

    .line 79
    .line 80
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    new-array v1, v1, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object v2, v1, v0

    .line 87
    .line 88
    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 89
    .line 90
    .line 91
    :catch_1
    :cond_0
    :goto_1
    throw v3
.end method

.method public getVolumeInfo()Lcom/hierynomus/msfscc/fileinformation/VolumeInfo;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_ATTRIBUTES:Lcom/hierynomus/msdtyp/AccessMask;

    .line 4
    .line 5
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    sget-object v7, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    .line 10
    .line 11
    sget-object v8, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 12
    .line 13
    const/4 v9, 0x0

    .line 14
    const-string v4, ""

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    move-object v3, p0

    .line 18
    invoke-virtual/range {v3 .. v9}, Lcom/hierynomus/smbj/share/DiskShare;->openDirectory(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/Directory;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    :try_start_0
    invoke-virtual {v2}, Lcom/hierynomus/smbj/share/Directory;->getFileId()Lcom/hierynomus/mssmb2/SMB2FileId;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    sget-object v5, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;->SMB2_0_INFO_FILESYSTEM:Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;

    .line 27
    .line 28
    sget-object v8, Lcom/hierynomus/msfscc/FileSystemInformationClass;->FileFsVolumeInformation:Lcom/hierynomus/msfscc/FileSystemInformationClass;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v7, 0x0

    .line 32
    move-object v3, p0

    .line 33
    invoke-virtual/range {v3 .. v8}, Lcom/hierynomus/smbj/share/Share;->queryInfo(Lcom/hierynomus/mssmb2/SMB2FileId;Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoRequest$SMB2QueryInfoType;Ljava/util/Set;Lcom/hierynomus/msfscc/FileInformationClass;Lcom/hierynomus/msfscc/FileSystemInformationClass;)Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoResponse;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/hierynomus/mssmb2/messages/SMB2QueryInfoResponse;->getOutputBuffer()[B

    .line 38
    .line 39
    .line 40
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :try_start_1
    new-instance v4, Lcom/hierynomus/protocol/commons/buffer/Buffer$PlainBuffer;

    .line 42
    .line 43
    sget-object v5, Lcom/hierynomus/protocol/commons/buffer/Endian;->LE:Lcom/hierynomus/protocol/commons/buffer/Endian;

    .line 44
    .line 45
    invoke-direct {v4, v3, v5}, Lcom/hierynomus/protocol/commons/buffer/Buffer$PlainBuffer;-><init>([BLcom/hierynomus/protocol/commons/buffer/Endian;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v4}, Lcom/hierynomus/msfscc/fileinformation/VolumeInfo;->parseFileFsVolumeInformation(Lcom/hierynomus/protocol/commons/buffer/Buffer$PlainBuffer;)Lcom/hierynomus/msfscc/fileinformation/VolumeInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v0
    :try_end_1
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-virtual {v2}, Lcom/hierynomus/smbj/share/Open;->close()V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :catchall_0
    move-exception v3

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v3

    .line 59
    :try_start_2
    new-instance v4, Lcom/hierynomus/smbj/common/SMBRuntimeException;

    .line 60
    .line 61
    invoke-direct {v4, v3}, Lcom/hierynomus/smbj/common/SMBRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :goto_0
    if-eqz v2, :cond_0

    .line 66
    .line 67
    :try_start_3
    invoke-virtual {v2}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception v2

    .line 72
    const-class v4, Ljava/lang/Throwable;

    .line 73
    .line 74
    :try_start_4
    const-string v5, "addSuppressed"

    .line 75
    .line 76
    new-array v6, v1, [Ljava/lang/Class;

    .line 77
    .line 78
    aput-object v4, v6, v0

    .line 79
    .line 80
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    new-array v1, v1, [Ljava/lang/Object;

    .line 85
    .line 86
    aput-object v2, v1, v0

    .line 87
    .line 88
    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 89
    .line 90
    .line 91
    :catch_1
    :cond_0
    :goto_1
    throw v3
.end method

.method public list(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/hierynomus/smbj/share/DiskShare;->list(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/util/EnumSet;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public list(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/hierynomus/msfscc/fileinformation/FileDirectoryQueryableInformation;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TI;>;)",
            "Ljava/util/List<",
            "TI;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/hierynomus/smbj/share/DiskShare;->list(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/util/EnumSet;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public list(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/util/EnumSet;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/hierynomus/msfscc/fileinformation/FileDirectoryQueryableInformation;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TI;>;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/hierynomus/msdtyp/AccessMask;",
            ">;)",
            "Ljava/util/List<",
            "TI;>;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/hierynomus/smbj/share/DiskShare;->getConnectionContext()Lcom/hierynomus/smbj/connection/ConnectionContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/ConnectionContext;->supportsDirectoryLeasing()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p3}, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->isCacheable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5
    iget-object v0, p0, Lcom/hierynomus/smbj/share/Share;->session:Lcom/hierynomus/smbj/session/Session;

    invoke-virtual {v0}, Lcom/hierynomus/smbj/session/Session;->getConnection()Lcom/hierynomus/smbj/connection/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hierynomus/smbj/connection/Connection;->getLeaseManager()Lcom/hierynomus/smbj/connection/LeaseManager;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/hierynomus/smbj/common/SmbPath;

    iget-object v2, p0, Lcom/hierynomus/smbj/share/Share;->smbPath:Lcom/hierynomus/smbj/common/SmbPath;

    invoke-direct {v1, v2, p1}, Lcom/hierynomus/smbj/common/SmbPath;-><init>(Lcom/hierynomus/smbj/common/SmbPath;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcom/hierynomus/smbj/common/SmbPath;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/hierynomus/smbj/common/SmbPath;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Lcom/hierynomus/smbj/connection/LeaseManager;->getByPath(Ljava/lang/String;)Lcom/hierynomus/smbj/connection/LeaseEntry;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 9
    invoke-virtual {v2}, Lcom/hierynomus/smbj/connection/LeaseEntry;->isGranted()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Lcom/hierynomus/smbj/connection/LeaseEntry;->isBroken()Z

    move-result v4

    if-nez v4, :cond_5

    .line 10
    invoke-virtual {v2}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getGrantedState()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/hierynomus/mssmb2/SMB2LeaseState;->isReadHandle(J)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 11
    invoke-virtual {v2}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getCache()Lcom/hierynomus/smbj/share/LeasedDirectoryCache;

    move-result-object v4

    invoke-virtual {v4, v1, p2, p3}, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->serve(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    return-object v4

    .line 12
    :cond_1
    invoke-virtual {v2}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getCacheDirectory()Lcom/hierynomus/smbj/share/Directory;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 13
    :try_start_0
    invoke-virtual {v4, p2, p3}, Lcom/hierynomus/smbj/share/Directory;->list(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 14
    invoke-virtual {v4}, Lcom/hierynomus/mssmb2/SMBApiException;->getStatusCode()J

    move-result-wide v5

    sget-object v7, Lcom/hierynomus/mserref/NtStatus;->STATUS_FILE_CLOSED:Lcom/hierynomus/mserref/NtStatus;

    invoke-virtual {v7}, Lcom/hierynomus/mserref/NtStatus;->getValue()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    .line 15
    invoke-virtual {v2, v3}, Lcom/hierynomus/smbj/connection/LeaseEntry;->setCacheDirectory(Lcom/hierynomus/smbj/share/Directory;)V

    .line 16
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/hierynomus/smbj/share/DiskShare;->openLeasedCacheHandleAndList(Ljava/lang/String;Ljava/util/Set;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 17
    :cond_2
    throw v4

    .line 18
    :cond_3
    invoke-direct {p0, p1, p4, p2, p3}, Lcom/hierynomus/smbj/share/DiskShare;->openLeasedCacheHandleAndList(Ljava/lang/String;Ljava/util/Set;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 19
    :goto_1
    invoke-virtual {v0, v1}, Lcom/hierynomus/smbj/connection/LeaseManager;->getByPath(Ljava/lang/String;)Lcom/hierynomus/smbj/connection/LeaseEntry;

    move-result-object p4

    if-eqz p4, :cond_4

    .line 20
    invoke-virtual {p4}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getCache()Lcom/hierynomus/smbj/share/LeasedDirectoryCache;

    move-result-object p4

    invoke-virtual {p4, v1, p2, p3, p1}, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->populate(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    return-object p1

    .line 21
    :cond_5
    invoke-direct {p0, p1, p4}, Lcom/hierynomus/smbj/share/DiskShare;->openLeasedCacheHandle(Ljava/lang/String;Ljava/util/Set;)Lcom/hierynomus/smbj/share/Directory;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Directory;->getLeaseEntry()Lcom/hierynomus/smbj/connection/LeaseEntry;

    move-result-object p4

    if-eqz p4, :cond_6

    .line 23
    invoke-virtual {p4}, Lcom/hierynomus/smbj/connection/LeaseEntry;->isGranted()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p4}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getGrantedState()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/hierynomus/mssmb2/SMB2LeaseState;->isReadHandle(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lcom/hierynomus/smbj/share/Directory;->list(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 25
    invoke-virtual {p4}, Lcom/hierynomus/smbj/connection/LeaseEntry;->getCache()Lcom/hierynomus/smbj/share/LeasedDirectoryCache;

    move-result-object p4

    invoke-virtual {p4, v1, p2, p3, p1}, Lcom/hierynomus/smbj/share/LeasedDirectoryCache;->populate(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;)V

    return-object p1

    :catch_1
    move-exception p2

    .line 26
    invoke-virtual {p4, v3}, Lcom/hierynomus/smbj/connection/LeaseEntry;->setCacheDirectory(Lcom/hierynomus/smbj/share/Directory;)V

    .line 27
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->closeSilently()V

    .line 28
    throw p2

    .line 29
    :cond_6
    :try_start_2
    invoke-virtual {p1, p2, p3}, Lcom/hierynomus/smbj/share/Directory;->list(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->closeSilently()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->closeSilently()V

    .line 31
    throw p2

    :cond_7
    if-nez p4, :cond_8

    .line 32
    sget-object p4, Lcom/hierynomus/msdtyp/AccessMask;->FILE_LIST_DIRECTORY:Lcom/hierynomus/msdtyp/AccessMask;

    sget-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_ATTRIBUTES:Lcom/hierynomus/msdtyp/AccessMask;

    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_EA:Lcom/hierynomus/msdtyp/AccessMask;

    invoke-static {p4, v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p4

    :cond_8
    move-object v2, p4

    sget-object v4, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    sget-object v5, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 33
    invoke-virtual/range {v0 .. v6}, Lcom/hierynomus/smbj/share/DiskShare;->openDirectory(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/Directory;

    move-result-object p1

    .line 34
    :try_start_3
    invoke-virtual {p1, p2, p3}, Lcom/hierynomus/smbj/share/Directory;->list(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->closeSilently()V

    return-object p2

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->closeSilently()V

    .line 36
    :cond_9
    throw p2
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;",
            ">;"
        }
    .end annotation

    .line 2
    const-class v0, Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/hierynomus/smbj/share/DiskShare;->list(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/util/EnumSet;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public mkdir(Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_LIST_DIRECTORY:Lcom/hierynomus/msdtyp/AccessMask;

    .line 2
    .line 3
    sget-object v1, Lcom/hierynomus/msdtyp/AccessMask;->FILE_ADD_SUBDIRECTORY:Lcom/hierynomus/msdtyp/AccessMask;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    sget-object v0, Lcom/hierynomus/msfscc/FileAttributes;->FILE_ATTRIBUTE_DIRECTORY:Lcom/hierynomus/msfscc/FileAttributes;

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    sget-object v6, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    .line 16
    .line 17
    sget-object v7, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_CREATE:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 18
    .line 19
    sget-object v0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_DIRECTORY_FILE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    move-object v2, p0

    .line 26
    move-object v3, p1

    .line 27
    invoke-virtual/range {v2 .. v8}, Lcom/hierynomus/smbj/share/DiskShare;->openDirectory(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/Directory;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public open(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/DiskEntry;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/AccessMask;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msfscc/FileAttributes;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2ShareAccess;",
            ">;",
            "Lcom/hierynomus/mssmb2/SMB2CreateDisposition;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2CreateOptions;",
            ">;)",
            "Lcom/hierynomus/smbj/share/DiskEntry;"
        }
    .end annotation

    .line 1
    move-object v10, p0

    .line 2
    new-instance v1, Lcom/hierynomus/smbj/common/SmbPath;

    .line 3
    .line 4
    iget-object v0, v10, Lcom/hierynomus/smbj/share/Share;->smbPath:Lcom/hierynomus/smbj/common/SmbPath;

    .line 5
    .line 6
    move-object v2, p1

    .line 7
    invoke-direct {v1, v0, p1}, Lcom/hierynomus/smbj/common/SmbPath;-><init>(Lcom/hierynomus/smbj/common/SmbPath;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v8, Lcom/hierynomus/mssmb2/SMB2OplockLevel;->SMB2_OPLOCK_LEVEL_NONE:Lcom/hierynomus/mssmb2/SMB2OplockLevel;

    .line 11
    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v9

    .line 16
    const/4 v2, 0x0

    .line 17
    move-object v0, p0

    .line 18
    move-object v3, p2

    .line 19
    move-object v4, p3

    .line 20
    move-object v5, p4

    .line 21
    move-object/from16 v6, p5

    .line 22
    .line 23
    move-object/from16 v7, p6

    .line 24
    .line 25
    invoke-direct/range {v0 .. v9}, Lcom/hierynomus/smbj/share/DiskShare;->resolveAndCreateFile(Lcom/hierynomus/smbj/common/SmbPath;Lcom/hierynomus/mssmb2/SMB2ImpersonationLevel;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2OplockLevel;Ljava/util/List;)Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/hierynomus/smbj/share/DiskShare;->getDiskEntry(Lcom/hierynomus/smbj/share/DiskShare$SMB2CreateResponseContext;)Lcom/hierynomus/smbj/share/DiskEntry;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public openDirectory(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/Directory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/AccessMask;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msfscc/FileAttributes;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2ShareAccess;",
            ">;",
            "Lcom/hierynomus/mssmb2/SMB2CreateDisposition;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2CreateOptions;",
            ">;)",
            "Lcom/hierynomus/smbj/share/Directory;"
        }
    .end annotation

    .line 1
    if-eqz p6, :cond_0

    .line 2
    .line 3
    invoke-static {p6}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object p6

    .line 7
    :goto_0
    move-object v6, p6

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const-class p6, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 10
    .line 11
    invoke-static {p6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 12
    .line 13
    .line 14
    move-result-object p6

    .line 15
    goto :goto_0

    .line 16
    :goto_1
    sget-object p6, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_DIRECTORY_FILE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 17
    .line 18
    invoke-virtual {v6, p6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    sget-object p6, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_NON_DIRECTORY_FILE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 22
    .line 23
    invoke-virtual {v6, p6}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    invoke-static {p3}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    :goto_2
    move-object v3, p3

    .line 33
    goto :goto_3

    .line 34
    :cond_1
    const-class p3, Lcom/hierynomus/msfscc/FileAttributes;

    .line 35
    .line 36
    invoke-static {p3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    goto :goto_2

    .line 41
    :goto_3
    sget-object p3, Lcom/hierynomus/msfscc/FileAttributes;->FILE_ATTRIBUTE_DIRECTORY:Lcom/hierynomus/msfscc/FileAttributes;

    .line 42
    .line 43
    invoke-virtual {v3, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/hierynomus/smbj/share/DiskShare;->getConnectionContext()Lcom/hierynomus/smbj/connection/ConnectionContext;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p3}, Lcom/hierynomus/smbj/connection/ConnectionContext;->supportsDirectoryLeasing()Z

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    if-eqz p3, :cond_2

    .line 55
    .line 56
    move-object v0, p0

    .line 57
    move-object v1, p1

    .line 58
    move-object v2, p2

    .line 59
    move-object v4, p4

    .line 60
    move-object v5, p5

    .line 61
    invoke-direct/range {v0 .. v6}, Lcom/hierynomus/smbj/share/DiskShare;->openDirectoryWithLease(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/Directory;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    :cond_2
    move-object v0, p0

    .line 67
    move-object v1, p1

    .line 68
    move-object v2, p2

    .line 69
    move-object v4, p4

    .line 70
    move-object v5, p5

    .line 71
    invoke-virtual/range {v0 .. v6}, Lcom/hierynomus/smbj/share/DiskShare;->open(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/DiskEntry;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lcom/hierynomus/smbj/share/Directory;

    .line 76
    .line 77
    return-object p1
.end method

.method public openFile(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/File;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/AccessMask;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msfscc/FileAttributes;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2ShareAccess;",
            ">;",
            "Lcom/hierynomus/mssmb2/SMB2CreateDisposition;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2CreateOptions;",
            ">;)",
            "Lcom/hierynomus/smbj/share/File;"
        }
    .end annotation

    .line 1
    if-eqz p6, :cond_0

    .line 2
    .line 3
    invoke-static {p6}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 4
    .line 5
    .line 6
    move-result-object p6

    .line 7
    :goto_0
    move-object v6, p6

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const-class p6, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 10
    .line 11
    invoke-static {p6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 12
    .line 13
    .line 14
    move-result-object p6

    .line 15
    goto :goto_0

    .line 16
    :goto_1
    sget-object p6, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_NON_DIRECTORY_FILE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 17
    .line 18
    invoke-virtual {v6, p6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    sget-object p6, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_DIRECTORY_FILE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 22
    .line 23
    invoke-virtual {v6, p6}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    invoke-static {p3}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    :goto_2
    move-object v3, p3

    .line 33
    goto :goto_3

    .line 34
    :cond_1
    const-class p3, Lcom/hierynomus/msfscc/FileAttributes;

    .line 35
    .line 36
    invoke-static {p3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    goto :goto_2

    .line 41
    :goto_3
    sget-object p3, Lcom/hierynomus/msfscc/FileAttributes;->FILE_ATTRIBUTE_DIRECTORY:Lcom/hierynomus/msfscc/FileAttributes;

    .line 42
    .line 43
    invoke-virtual {v3, p3}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-object v0, p0

    .line 47
    move-object v1, p1

    .line 48
    move-object v2, p2

    .line 49
    move-object v4, p4

    .line 50
    move-object v5, p5

    .line 51
    invoke-virtual/range {v0 .. v6}, Lcom/hierynomus/smbj/share/DiskShare;->open(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/DiskEntry;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/hierynomus/smbj/share/File;

    .line 56
    .line 57
    return-object p1
.end method

.method public rm(Ljava/lang/String;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    sget-object v2, Lcom/hierynomus/msdtyp/AccessMask;->DELETE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 4
    .line 5
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    sget-object v2, Lcom/hierynomus/msfscc/FileAttributes;->FILE_ATTRIBUTE_NORMAL:Lcom/hierynomus/msfscc/FileAttributes;

    .line 10
    .line 11
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    sget-object v2, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->FILE_SHARE_DELETE:Lcom/hierynomus/mssmb2/SMB2ShareAccess;

    .line 16
    .line 17
    sget-object v3, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->FILE_SHARE_WRITE:Lcom/hierynomus/mssmb2/SMB2ShareAccess;

    .line 18
    .line 19
    sget-object v4, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->FILE_SHARE_READ:Lcom/hierynomus/mssmb2/SMB2ShareAccess;

    .line 20
    .line 21
    invoke-static {v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    sget-object v8, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 26
    .line 27
    sget-object v2, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_NON_DIRECTORY_FILE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 28
    .line 29
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    move-object v3, p0

    .line 34
    move-object v4, p1

    .line 35
    invoke-virtual/range {v3 .. v9}, Lcom/hierynomus/smbj/share/DiskShare;->open(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/DiskEntry;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/DiskEntry;->deleteOnClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    :try_start_2
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_2
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception v2

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    :try_start_3
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_1
    move-exception p1

    .line 56
    :try_start_4
    const-class v3, Ljava/lang/Throwable;
    :try_end_4
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_4 .. :try_end_4} :catch_0

    .line 57
    .line 58
    :try_start_5
    const-string v4, "addSuppressed"

    .line 59
    .line 60
    new-array v5, v1, [Ljava/lang/Class;

    .line 61
    .line 62
    aput-object v3, v5, v0

    .line 63
    .line 64
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object p1, v1, v0

    .line 71
    .line 72
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 73
    .line 74
    .line 75
    :catch_1
    :cond_0
    :goto_0
    :try_start_6
    throw v2
    :try_end_6
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_6 .. :try_end_6} :catch_0

    .line 76
    :goto_1
    sget-object v0, Lcom/hierynomus/smbj/share/DiskShare;->ALREADY_DELETED_STATUS_HANDLER:Lcom/hierynomus/smbj/share/StatusHandler;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/SMBApiException;->getStatusCode()J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    invoke-interface {v0, v1, v2}, Lcom/hierynomus/smbj/share/StatusHandler;->isSuccess(J)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    return-void

    .line 89
    :cond_1
    throw p1
.end method

.method public rmdir(Ljava/lang/String;Z)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_7

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_7

    .line 10
    .line 11
    if-eqz p2, :cond_4

    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hierynomus/smbj/share/DiskShare;->list(Ljava/lang/String;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/hierynomus/msfscc/fileinformation/FileDirectoryQueryableInformation;->getFileName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v4, "."

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/hierynomus/msfscc/fileinformation/FileDirectoryQueryableInformation;->getFileName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const-string v4, ".."

    .line 50
    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v4, "\\"

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lcom/hierynomus/msfscc/fileinformation/FileDirectoryQueryableInformation;->getFileName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2}, Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;->getFileAttributes()J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    sget-object v2, Lcom/hierynomus/msfscc/FileAttributes;->FILE_ATTRIBUTE_DIRECTORY:Lcom/hierynomus/msfscc/FileAttributes;

    .line 87
    .line 88
    invoke-static {v4, v5, v2}, Lcom/hierynomus/protocol/commons/EnumWithValue$EnumUtils;->isSet(JLcom/hierynomus/protocol/commons/EnumWithValue;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0, v3}, Lcom/hierynomus/smbj/share/DiskShare;->rm(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception p1

    .line 99
    goto :goto_3

    .line 100
    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/hierynomus/smbj/share/DiskShare;->rmdir(Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/hierynomus/smbj/share/DiskShare;->rmdir(Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    sget-object p2, Lcom/hierynomus/msdtyp/AccessMask;->DELETE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 109
    .line 110
    invoke-static {p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    sget-object p2, Lcom/hierynomus/msfscc/FileAttributes;->FILE_ATTRIBUTE_DIRECTORY:Lcom/hierynomus/msfscc/FileAttributes;

    .line 115
    .line 116
    invoke-static {p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    sget-object p2, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->FILE_SHARE_DELETE:Lcom/hierynomus/mssmb2/SMB2ShareAccess;

    .line 121
    .line 122
    sget-object v2, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->FILE_SHARE_WRITE:Lcom/hierynomus/mssmb2/SMB2ShareAccess;

    .line 123
    .line 124
    sget-object v3, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->FILE_SHARE_READ:Lcom/hierynomus/mssmb2/SMB2ShareAccess;

    .line 125
    .line 126
    invoke-static {p2, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    sget-object v7, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 131
    .line 132
    sget-object p2, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_DIRECTORY_FILE:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 133
    .line 134
    invoke-static {p2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    move-object v2, p0

    .line 139
    move-object v3, p1

    .line 140
    invoke-virtual/range {v2 .. v8}, Lcom/hierynomus/smbj/share/DiskShare;->open(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/DiskEntry;

    .line 141
    .line 142
    .line 143
    move-result-object p1
    :try_end_0
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :try_start_1
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/DiskEntry;->deleteOnClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .line 146
    .line 147
    :try_start_2
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_2
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_2 .. :try_end_2} :catch_0

    .line 148
    .line 149
    .line 150
    :goto_1
    return-void

    .line 151
    :catchall_0
    move-exception p2

    .line 152
    if-eqz p1, :cond_5

    .line 153
    .line 154
    :try_start_3
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :catchall_1
    move-exception p1

    .line 159
    :try_start_4
    const-class v2, Ljava/lang/Throwable;
    :try_end_4
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_4 .. :try_end_4} :catch_0

    .line 160
    .line 161
    :try_start_5
    const-string v3, "addSuppressed"

    .line 162
    .line 163
    new-array v4, v1, [Ljava/lang/Class;

    .line 164
    .line 165
    aput-object v2, v4, v0

    .line 166
    .line 167
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    new-array v1, v1, [Ljava/lang/Object;

    .line 172
    .line 173
    aput-object p1, v1, v0

    .line 174
    .line 175
    invoke-virtual {v2, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 176
    .line 177
    .line 178
    :catch_1
    :cond_5
    :goto_2
    :try_start_6
    throw p2
    :try_end_6
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_6 .. :try_end_6} :catch_0

    .line 179
    :goto_3
    sget-object p2, Lcom/hierynomus/smbj/share/DiskShare;->ALREADY_DELETED_STATUS_HANDLER:Lcom/hierynomus/smbj/share/StatusHandler;

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/hierynomus/mssmb2/SMBApiException;->getStatusCode()J

    .line 182
    .line 183
    .line 184
    move-result-wide v0

    .line 185
    invoke-interface {p2, v0, v1}, Lcom/hierynomus/smbj/share/StatusHandler;->isSuccess(J)Z

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    if-eqz p2, :cond_6

    .line 190
    .line 191
    return-void

    .line 192
    :cond_6
    throw p1

    .line 193
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 194
    .line 195
    const-string p2, "rmdir: path should be non-null and non-empty"

    .line 196
    .line 197
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :goto_4
    throw p1

    .line 202
    :goto_5
    goto :goto_4
.end method

.method public setFileInformation(Lcom/hierynomus/mssmb2/SMB2FileId;Lcom/hierynomus/msfscc/fileinformation/FileSettableInformation;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/hierynomus/msfscc/fileinformation/FileSettableInformation;",
            ">(",
            "Lcom/hierynomus/mssmb2/SMB2FileId;",
            "TF;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hierynomus/smb/SMBBuffer;

    invoke-direct {v0}, Lcom/hierynomus/smb/SMBBuffer;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/hierynomus/msfscc/fileinformation/FileInformationFactory;->getEncoder(Lcom/hierynomus/msfscc/fileinformation/FileInformation;)Lcom/hierynomus/msfscc/fileinformation/FileInformation$Encoder;

    move-result-object v1

    .line 3
    invoke-interface {v1, p2, v0}, Lcom/hierynomus/msfscc/fileinformation/FileInformation$Encoder;->write(Lcom/hierynomus/msfscc/fileinformation/FileInformation;Lcom/hierynomus/protocol/commons/buffer/Buffer;)V

    .line 4
    sget-object v4, Lcom/hierynomus/mssmb2/messages/SMB2SetInfoRequest$SMB2InfoType;->SMB2_0_INFO_FILE:Lcom/hierynomus/mssmb2/messages/SMB2SetInfoRequest$SMB2InfoType;

    .line 5
    invoke-interface {v1}, Lcom/hierynomus/msfscc/fileinformation/FileInformation$Encoder;->getInformationClass()Lcom/hierynomus/msfscc/FileInformationClass;

    move-result-object v6

    .line 6
    invoke-virtual {v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->getCompactData()[B

    move-result-object v7

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 7
    invoke-virtual/range {v2 .. v7}, Lcom/hierynomus/smbj/share/Share;->setInfo(Lcom/hierynomus/mssmb2/SMB2FileId;Lcom/hierynomus/mssmb2/messages/SMB2SetInfoRequest$SMB2InfoType;Ljava/util/Set;Lcom/hierynomus/msfscc/FileInformationClass;[B)V

    return-void
.end method

.method public setFileInformation(Ljava/lang/String;Lcom/hierynomus/msfscc/fileinformation/FileSettableInformation;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/hierynomus/msfscc/fileinformation/FileSettableInformation;",
            ">(",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 8
    sget-object v2, Lcom/hierynomus/msdtyp/AccessMask;->FILE_WRITE_ATTRIBUTES:Lcom/hierynomus/msdtyp/AccessMask;

    sget-object v3, Lcom/hierynomus/msdtyp/AccessMask;->FILE_WRITE_EA:Lcom/hierynomus/msdtyp/AccessMask;

    invoke-static {v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v6

    sget-object v8, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    sget-object v9, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/hierynomus/smbj/share/DiskShare;->open(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/DiskEntry;

    move-result-object p1

    .line 9
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/hierynomus/smbj/share/DiskEntry;->setFileInformation(Lcom/hierynomus/msfscc/fileinformation/FileSettableInformation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V

    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    .line 11
    :try_start_1
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    const-class v2, Ljava/lang/Throwable;

    :try_start_2
    const-string v3, "addSuppressed"

    new-array v4, v1, [Ljava/lang/Class;

    aput-object v2, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    throw p2
.end method

.method public setSecurityInfo(Lcom/hierynomus/mssmb2/SMB2FileId;Ljava/util/Set;Lcom/hierynomus/msdtyp/SecurityDescriptor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hierynomus/mssmb2/SMB2FileId;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/SecurityInformation;",
            ">;",
            "Lcom/hierynomus/msdtyp/SecurityDescriptor;",
            ")V"
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/hierynomus/smb/SMBBuffer;

    invoke-direct {v0}, Lcom/hierynomus/smb/SMBBuffer;-><init>()V

    .line 13
    invoke-virtual {p3, v0}, Lcom/hierynomus/msdtyp/SecurityDescriptor;->write(Lcom/hierynomus/smb/SMBBuffer;)V

    .line 14
    sget-object v3, Lcom/hierynomus/mssmb2/messages/SMB2SetInfoRequest$SMB2InfoType;->SMB2_0_INFO_SECURITY:Lcom/hierynomus/mssmb2/messages/SMB2SetInfoRequest$SMB2InfoType;

    const/4 v5, 0x0

    .line 15
    invoke-virtual {v0}, Lcom/hierynomus/protocol/commons/buffer/Buffer;->getCompactData()[B

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 16
    invoke-virtual/range {v1 .. v6}, Lcom/hierynomus/smbj/share/Share;->setInfo(Lcom/hierynomus/mssmb2/SMB2FileId;Lcom/hierynomus/mssmb2/messages/SMB2SetInfoRequest$SMB2InfoType;Ljava/util/Set;Lcom/hierynomus/msfscc/FileInformationClass;[B)V

    return-void
.end method

.method public setSecurityInfo(Ljava/lang/String;Ljava/util/Set;Lcom/hierynomus/msdtyp/SecurityDescriptor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/SecurityInformation;",
            ">;",
            "Lcom/hierynomus/msdtyp/SecurityDescriptor;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    const-class v2, Lcom/hierynomus/msdtyp/AccessMask;

    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 2
    sget-object v2, Lcom/hierynomus/msdtyp/SecurityInformation;->SACL_SECURITY_INFORMATION:Lcom/hierynomus/msdtyp/SecurityInformation;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object v2, Lcom/hierynomus/msdtyp/AccessMask;->ACCESS_SYSTEM_SECURITY:Lcom/hierynomus/msdtyp/AccessMask;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    sget-object v2, Lcom/hierynomus/msdtyp/SecurityInformation;->OWNER_SECURITY_INFORMATION:Lcom/hierynomus/msdtyp/SecurityInformation;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/hierynomus/msdtyp/SecurityInformation;->GROUP_SECURITY_INFORMATION:Lcom/hierynomus/msdtyp/SecurityInformation;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    :cond_1
    sget-object v2, Lcom/hierynomus/msdtyp/AccessMask;->WRITE_OWNER:Lcom/hierynomus/msdtyp/AccessMask;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    sget-object v2, Lcom/hierynomus/msdtyp/SecurityInformation;->DACL_SECURITY_INFORMATION:Lcom/hierynomus/msdtyp/SecurityInformation;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    sget-object v2, Lcom/hierynomus/msdtyp/AccessMask;->WRITE_DAC:Lcom/hierynomus/msdtyp/AccessMask;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_3
    sget-object v7, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->ALL:Ljava/util/Set;

    sget-object v8, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/hierynomus/smbj/share/DiskShare;->open(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/DiskEntry;

    move-result-object p1

    .line 9
    :try_start_0
    invoke-virtual {p1, p3, p2}, Lcom/hierynomus/smbj/share/DiskEntry;->setSecurityInformation(Lcom/hierynomus/msdtyp/SecurityDescriptor;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V

    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_4

    .line 11
    :try_start_1
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    const-class p3, Ljava/lang/Throwable;

    :try_start_2
    const-string v2, "addSuppressed"

    new-array v3, v1, [Ljava/lang/Class;

    aput-object p3, v3, v0

    invoke-virtual {p3, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p3, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_4
    :goto_0
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "["

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/hierynomus/smbj/share/Share;->getSmbPath()Lcom/hierynomus/smbj/common/SmbPath;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "]"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method
