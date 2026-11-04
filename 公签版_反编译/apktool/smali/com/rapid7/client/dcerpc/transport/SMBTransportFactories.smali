.class public final enum Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

.field public static final enum BROWSER_SRVSVC:Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

.field public static final enum LSASVC:Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

.field public static final enum SAMSVC:Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

.field public static final enum SRVSVC:Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

.field private static final STATUS_PIPE_NOT_AVAILABLE_BACKOFF_TIME_MS:I = 0xbb8

.field private static final STATUS_PIPE_NOT_AVAILABLE_RETRIES:I = 0x1

.field public static final enum SVCCTL:Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

.field public static final enum WINREG:Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;


# instance fields
.field private final abstractSyntax:Lcom/rapid7/client/dcerpc/Interface;

.field private final name:Ljava/lang/String;

.field private final transferSyntax:Lcom/rapid7/client/dcerpc/Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v6, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 2
    .line 3
    sget-object v4, Lcom/rapid7/client/dcerpc/Interface;->WINREG_V1_0:Lcom/rapid7/client/dcerpc/Interface;

    .line 4
    .line 5
    sget-object v13, Lcom/rapid7/client/dcerpc/Interface;->NDR_32BIT_V2:Lcom/rapid7/client/dcerpc/Interface;

    .line 6
    .line 7
    const-string v1, "WINREG"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "winreg"

    .line 11
    .line 12
    move-object v0, v6

    .line 13
    move-object v5, v13

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/rapid7/client/dcerpc/Interface;Lcom/rapid7/client/dcerpc/Interface;)V

    .line 15
    .line 16
    .line 17
    sput-object v6, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->WINREG:Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 18
    .line 19
    new-instance v0, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 20
    .line 21
    sget-object v1, Lcom/rapid7/client/dcerpc/Interface;->SRVSVC_V3_0:Lcom/rapid7/client/dcerpc/Interface;

    .line 22
    .line 23
    const-string v8, "SRVSVC"

    .line 24
    .line 25
    const/4 v9, 0x1

    .line 26
    const-string v10, "srvsvc"

    .line 27
    .line 28
    move-object v7, v0

    .line 29
    move-object v11, v1

    .line 30
    move-object v12, v13

    .line 31
    invoke-direct/range {v7 .. v12}, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/rapid7/client/dcerpc/Interface;Lcom/rapid7/client/dcerpc/Interface;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->SRVSVC:Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 35
    .line 36
    new-instance v2, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 37
    .line 38
    const-string v10, "lsarpc"

    .line 39
    .line 40
    sget-object v11, Lcom/rapid7/client/dcerpc/Interface;->LSASVC_V0_0:Lcom/rapid7/client/dcerpc/Interface;

    .line 41
    .line 42
    const-string v8, "LSASVC"

    .line 43
    .line 44
    const/4 v9, 0x2

    .line 45
    move-object v7, v2

    .line 46
    invoke-direct/range {v7 .. v12}, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/rapid7/client/dcerpc/Interface;Lcom/rapid7/client/dcerpc/Interface;)V

    .line 47
    .line 48
    .line 49
    sput-object v2, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->LSASVC:Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 50
    .line 51
    new-instance v3, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 52
    .line 53
    const-string v10, "samr"

    .line 54
    .line 55
    sget-object v11, Lcom/rapid7/client/dcerpc/Interface;->SAMSVC_V1_0:Lcom/rapid7/client/dcerpc/Interface;

    .line 56
    .line 57
    const-string v8, "SAMSVC"

    .line 58
    .line 59
    const/4 v9, 0x3

    .line 60
    move-object v7, v3

    .line 61
    invoke-direct/range {v7 .. v12}, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/rapid7/client/dcerpc/Interface;Lcom/rapid7/client/dcerpc/Interface;)V

    .line 62
    .line 63
    .line 64
    sput-object v3, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->SAMSVC:Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 65
    .line 66
    new-instance v4, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 67
    .line 68
    const/4 v9, 0x4

    .line 69
    const-string v10, "browser"

    .line 70
    .line 71
    const-string v8, "BROWSER_SRVSVC"

    .line 72
    .line 73
    move-object v7, v4

    .line 74
    move-object v11, v1

    .line 75
    invoke-direct/range {v7 .. v12}, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/rapid7/client/dcerpc/Interface;Lcom/rapid7/client/dcerpc/Interface;)V

    .line 76
    .line 77
    .line 78
    sput-object v4, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->BROWSER_SRVSVC:Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 79
    .line 80
    new-instance v1, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 81
    .line 82
    const-string v10, "svcctl"

    .line 83
    .line 84
    sget-object v11, Lcom/rapid7/client/dcerpc/Interface;->SVCCTL_V2_0:Lcom/rapid7/client/dcerpc/Interface;

    .line 85
    .line 86
    const-string v8, "SVCCTL"

    .line 87
    .line 88
    const/4 v9, 0x5

    .line 89
    move-object v7, v1

    .line 90
    invoke-direct/range {v7 .. v12}, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/rapid7/client/dcerpc/Interface;Lcom/rapid7/client/dcerpc/Interface;)V

    .line 91
    .line 92
    .line 93
    sput-object v1, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->SVCCTL:Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 94
    .line 95
    const/4 v5, 0x6

    .line 96
    new-array v5, v5, [Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    aput-object v6, v5, v7

    .line 100
    .line 101
    const/4 v6, 0x1

    .line 102
    aput-object v0, v5, v6

    .line 103
    .line 104
    const/4 v0, 0x2

    .line 105
    aput-object v2, v5, v0

    .line 106
    .line 107
    const/4 v0, 0x3

    .line 108
    aput-object v3, v5, v0

    .line 109
    .line 110
    const/4 v0, 0x4

    .line 111
    aput-object v4, v5, v0

    .line 112
    .line 113
    const/4 v0, 0x5

    .line 114
    aput-object v1, v5, v0

    .line 115
    .line 116
    sput-object v5, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->$VALUES:[Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 117
    .line 118
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/rapid7/client/dcerpc/Interface;Lcom/rapid7/client/dcerpc/Interface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/rapid7/client/dcerpc/Interface;",
            "Lcom/rapid7/client/dcerpc/Interface;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->abstractSyntax:Lcom/rapid7/client/dcerpc/Interface;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->transferSyntax:Lcom/rapid7/client/dcerpc/Interface;

    .line 9
    .line 10
    return-void
.end method

.method private openAndHandleStatusPipeNotAvailable(Lcom/hierynomus/smbj/session/Session;Lcom/hierynomus/smbj/share/PipeShare;)Lcom/rapid7/helper/smbj/share/NamedPipe;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    new-instance v2, Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v3, -0x1

    .line 9
    :goto_0
    if-ge v3, v1, :cond_1

    .line 10
    .line 11
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->openPipe(Lcom/hierynomus/smbj/session/Session;Lcom/hierynomus/smbj/share/PipeShare;)Lcom/rapid7/helper/smbj/share/NamedPipe;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Lcom/rapid7/helper/smbj/io/SMB2Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p1

    .line 16
    :catch_0
    move-exception v4

    .line 17
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    sget-object v5, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories$1;->$SwitchMap$com$hierynomus$mserref$NtStatus:[I

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/rapid7/helper/smbj/io/SMB2Exception;->getStatus()Lcom/hierynomus/mserref/NtStatus;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    aget v4, v5, v4

    .line 31
    .line 32
    if-ne v4, v1, :cond_0

    .line 33
    .line 34
    const-wide/16 v4, 0xbb8

    .line 35
    .line 36
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    .line 38
    .line 39
    add-int/2addr v3, v1

    .line 40
    goto :goto_0

    .line 41
    :catch_1
    move-exception p1

    .line 42
    new-instance p2, Ljava/io/InterruptedIOException;

    .line 43
    .line 44
    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 45
    .line 46
    .line 47
    const-class v2, Ljava/lang/Throwable;

    .line 48
    .line 49
    :try_start_2
    const-string v3, "addSuppressed"

    .line 50
    .line 51
    new-array v4, v1, [Ljava/lang/Class;

    .line 52
    .line 53
    aput-object v2, v4, v0

    .line 54
    .line 55
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-array v1, v1, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object p1, v1, v0

    .line 62
    .line 63
    invoke-virtual {v2, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 64
    .line 65
    .line 66
    :catch_2
    throw p2

    .line 67
    :cond_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/rapid7/helper/smbj/io/SMB2Exception;

    .line 72
    .line 73
    throw p1

    .line 74
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/rapid7/helper/smbj/io/SMB2Exception;

    .line 85
    .line 86
    throw p1

    .line 87
    :cond_2
    new-instance p1, Lcom/hierynomus/smbj/common/SMBException;

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "Unknown error when opening pipe: "

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/hierynomus/smbj/share/Share;->getSmbPath()Lcom/hierynomus/smbj/common/SmbPath;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p2}, Lcom/hierynomus/smbj/common/SmbPath;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-direct {p1, p2}, Lcom/hierynomus/smbj/common/SMBException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :goto_1
    throw p1

    .line 116
    :goto_2
    goto :goto_1
.end method

.method private openPipe(Lcom/hierynomus/smbj/session/Session;Lcom/hierynomus/smbj/share/PipeShare;)Lcom/rapid7/helper/smbj/share/NamedPipe;
    .locals 2

    .line 1
    new-instance v0, Lcom/rapid7/helper/smbj/share/NamedPipe;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->name:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, v1}, Lcom/rapid7/helper/smbj/share/NamedPipe;-><init>(Lcom/hierynomus/smbj/session/Session;Lcom/hierynomus/smbj/share/PipeShare;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;
    .locals 1

    .line 1
    const-class v0, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;
    .locals 1

    .line 1
    sget-object v0, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->$VALUES:[Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getTransport(Lcom/hierynomus/smbj/session/Session;)Lcom/rapid7/client/dcerpc/transport/RPCTransport;
    .locals 2

    .line 1
    const-string v0, "IPC$"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/hierynomus/smbj/session/Session;->connectShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/Share;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/hierynomus/smbj/share/PipeShare;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lcom/hierynomus/smbj/share/PipeShare;

    .line 12
    .line 13
    invoke-direct {p0, p1, v0}, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->openAndHandleStatusPipeNotAvailable(Lcom/hierynomus/smbj/session/Session;Lcom/hierynomus/smbj/share/PipeShare;)Lcom/rapid7/helper/smbj/share/NamedPipe;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Lcom/rapid7/client/dcerpc/transport/SMBTransport;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/rapid7/client/dcerpc/transport/SMBTransport;-><init>(Lcom/rapid7/helper/smbj/share/NamedPipe;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->abstractSyntax:Lcom/rapid7/client/dcerpc/Interface;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->transferSyntax:Lcom/rapid7/client/dcerpc/Interface;

    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Lcom/rapid7/client/dcerpc/transport/RPCTransport;->bind(Lcom/rapid7/client/dcerpc/Interface;Lcom/rapid7/client/dcerpc/Interface;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    new-instance p1, Lcom/hierynomus/protocol/transport/TransportException;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/rapid7/client/dcerpc/transport/SMBTransportFactories;->name:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, " not a named pipe."

    .line 35
    .line 36
    invoke-static {v0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Lcom/hierynomus/protocol/transport/TransportException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method
