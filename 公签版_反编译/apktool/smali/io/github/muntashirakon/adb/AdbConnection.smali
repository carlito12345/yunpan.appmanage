.class public Lio/github/muntashirakon/adb/AdbConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/muntashirakon/adb/AdbConnection$Builder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AdbConnection"


# instance fields
.field public isAuthIn:Z

.field private volatile mAbortOnUnauthorised:Z

.field private final mApi:I

.field private volatile mAuthorisationFailed:Z

.field private volatile mConnectAttempted:Z

.field private volatile mConnectionEstablished:Z

.field private volatile mConnectionException:Ljava/lang/Exception;

.field private final mConnectionThread:Ljava/lang/Thread;

.field private volatile mDeviceName:Ljava/lang/String;

.field private final mHost:Ljava/lang/String;

.field private volatile mIsTls:Z

.field private final mKeyPair:Lio/github/muntashirakon/adb/KeyPair;

.field private mLastLocalId:I

.field private final mLock:Ljava/lang/Object;

.field private volatile mMaxData:I

.field private final mOpenedStreams:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lio/github/muntashirakon/adb/AdbStream;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlainInputStream:Ljava/io/InputStream;

.field private final mPlainOutputStream:Ljava/io/OutputStream;

.field private final mPort:I

.field private volatile mProtocolVersion:I

.field private volatile mSentSignature:Z

.field private final mSocket:Ljava/net/Socket;

.field private volatile mTlsInputStream:Ljava/io/InputStream;

.field private volatile mTlsOutputStream:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILio/github/muntashirakon/adb/KeyPair;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Unknown Device"

    .line 5
    .line 6
    iput-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mDeviceName:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mIsTls:Z

    .line 10
    .line 11
    new-instance v1, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->isAuthIn:Z

    .line 19
    .line 20
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mHost:Ljava/lang/String;

    .line 24
    .line 25
    iput p2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPort:I

    .line 26
    .line 27
    iput p4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mApi:I

    .line 28
    .line 29
    invoke-static {p4}, Lio/github/muntashirakon/adb/AdbProtocol;->getProtocolVersion(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mProtocolVersion:I

    .line 34
    .line 35
    invoke-static {p4}, Lio/github/muntashirakon/adb/AdbProtocol;->getMaxData(I)I

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    iput p4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mMaxData:I

    .line 40
    .line 41
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iput-object p3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mKeyPair:Lio/github/muntashirakon/adb/KeyPair;

    .line 45
    .line 46
    :try_start_0
    new-instance p3, Ljava/net/Socket;

    .line 47
    .line 48
    invoke-direct {p3, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    iput-object p3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPlainInputStream:Ljava/io/InputStream;

    .line 58
    .line 59
    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPlainOutputStream:Ljava/io/OutputStream;

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    invoke-virtual {p3, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 70
    .line 71
    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Lj$/util/concurrent/ConcurrentHashMap;

    .line 75
    .line 76
    iput v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLastLocalId:I

    .line 77
    .line 78
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AdbConnection;->createConnectionThread()Ljava/lang/Thread;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionThread:Ljava/lang/Thread;

    .line 83
    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    new-instance p2, Ljava/io/IOException;

    .line 87
    .line 88
    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, Ljava/io/IOException;

    .line 96
    .line 97
    throw p1
.end method

.method private cleanupStreams()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lio/github/muntashirakon/adb/AdbStream;

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    nop

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Lj$/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static create(Ljava/lang/String;ILio/github/muntashirakon/adb/KeyPair;I)Lio/github/muntashirakon/adb/AdbConnection;
    .locals 1

    .line 3
    new-instance v0, Lio/github/muntashirakon/adb/AdbConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/github/muntashirakon/adb/AdbConnection;-><init>(Ljava/lang/String;ILio/github/muntashirakon/adb/KeyPair;I)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;ILjava/security/PrivateKey;Ljava/security/cert/Certificate;)Lio/github/muntashirakon/adb/AdbConnection;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lio/github/muntashirakon/adb/AdbConnection;->create(Ljava/lang/String;ILjava/security/PrivateKey;Ljava/security/cert/Certificate;I)Lio/github/muntashirakon/adb/AdbConnection;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;ILjava/security/PrivateKey;Ljava/security/cert/Certificate;I)Lio/github/muntashirakon/adb/AdbConnection;
    .locals 1

    .line 2
    new-instance v0, Lio/github/muntashirakon/adb/KeyPair;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/security/PrivateKey;

    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p2, p3}, Lio/github/muntashirakon/adb/KeyPair;-><init>(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;)V

    invoke-static {p0, p1, v0, p4}, Lio/github/muntashirakon/adb/AdbConnection;->create(Ljava/lang/String;ILio/github/muntashirakon/adb/KeyPair;I)Lio/github/muntashirakon/adb/AdbConnection;

    move-result-object p0

    return-object p0
.end method

.method private createConnectionThread()Ljava/lang/Thread;
    .locals 3

    .line 1
    new-instance v0, Lfg/b;

    .line 2
    .line 3
    new-instance v1, Lha/db;

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    invoke-direct {v1, v2, p0}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v0, v1, v2}, Lfg/b;-><init>(Ljava/lang/Runnable;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mIsTls:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mTlsInputStream:Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPlainInputStream:Ljava/io/InputStream;

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method private getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mIsTls:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mTlsOutputStream:Ljava/io/OutputStream;

    .line 6
    .line 7
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPlainOutputStream:Ljava/io/OutputStream;

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method private synthetic lambda$createConnectionThread$0()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionThread:Ljava/lang/Thread;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_8

    .line 10
    .line 11
    :try_start_0
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AdbConnection;->getInputStream()Ljava/io/InputStream;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mProtocolVersion:I

    .line 16
    .line 17
    iget v4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mMaxData:I

    .line 18
    .line 19
    invoke-static {v2, v3, v4}, Lio/github/muntashirakon/adb/AdbProtocol$Message;->parse(Ljava/io/InputStream;II)Lio/github/muntashirakon/adb/AdbProtocol$Message;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget v3, v2, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    .line 24
    .line 25
    sparse-switch v3, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    const-string v2, "Unrecognized command = 0x%x"

    .line 29
    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    new-array v4, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object v3, v4, v1

    .line 37
    .line 38
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :sswitch_0
    invoke-static {}, Lio/github/muntashirakon/adb/AdbProtocol;->generateStls()[B

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p0, v2}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mKeyPair:Lio/github/muntashirakon/adb/KeyPair;

    .line 53
    .line 54
    invoke-static {v2}, Lio/github/muntashirakon/adb/SslUtils;->getSslContext(Lio/github/muntashirakon/adb/KeyPair;)Ljavax/net/ssl/SSLContext;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-object v3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSocket:Ljava/net/Socket;

    .line 63
    .line 64
    iget-object v4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mHost:Ljava/lang/String;

    .line 65
    .line 66
    iget v5, p0, Lio/github/muntashirakon/adb/AdbConnection;->mPort:I

    .line 67
    .line 68
    invoke-virtual {v2, v3, v4, v5, v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .line 73
    .line 74
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 75
    .line 76
    .line 77
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iput-object v3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mTlsInputStream:Ljava/io/InputStream;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iput-object v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mTlsOutputStream:Ljava/io/OutputStream;

    .line 89
    .line 90
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mIsTls:Z

    .line 91
    .line 92
    monitor-exit p0

    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    throw v0

    .line 97
    :sswitch_1
    iput-boolean v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->isAuthIn:Z

    .line 98
    .line 99
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    :try_start_3
    iget v3, v2, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    .line 101
    .line 102
    iput v3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mProtocolVersion:I

    .line 103
    .line 104
    iget v2, v2, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    .line 105
    .line 106
    iput v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mMaxData:I

    .line 107
    .line 108
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 111
    .line 112
    .line 113
    monitor-exit p0

    .line 114
    goto :goto_0

    .line 115
    :catchall_1
    move-exception v0

    .line 116
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    :try_start_4
    throw v0

    .line 118
    :sswitch_2
    iget-boolean v3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mIsTls:Z

    .line 119
    .line 120
    if-eqz v3, :cond_0

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    iget v3, v2, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    .line 124
    .line 125
    if-eq v3, v0, :cond_1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->isAuthIn:Z

    .line 129
    .line 130
    iget-boolean v3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSentSignature:Z

    .line 131
    .line 132
    if-eqz v3, :cond_3

    .line 133
    .line 134
    iget-boolean v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mAbortOnUnauthorised:Z

    .line 135
    .line 136
    if-eqz v2, :cond_2

    .line 137
    .line 138
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mAuthorisationFailed:Z

    .line 139
    .line 140
    goto/16 :goto_5

    .line 141
    .line 142
    :cond_2
    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mKeyPair:Lio/github/muntashirakon/adb/KeyPair;

    .line 143
    .line 144
    invoke-virtual {v2}, Lio/github/muntashirakon/adb/KeyPair;->getPublicKey()Ljava/security/PublicKey;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    .line 149
    .line 150
    iget-object v3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mDeviceName:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v2, v3}, Lio/github/muntashirakon/adb/AndroidPubkey;->encodeWithName(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)[B

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const/4 v3, 0x3

    .line 157
    invoke-static {v3, v2}, Lio/github/muntashirakon/adb/AdbProtocol;->generateAuth(I[B)[B

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    goto :goto_1

    .line 162
    :cond_3
    iget-object v3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mKeyPair:Lio/github/muntashirakon/adb/KeyPair;

    .line 163
    .line 164
    invoke-virtual {v3}, Lio/github/muntashirakon/adb/KeyPair;->getPrivateKey()Ljava/security/PrivateKey;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    iget-object v2, v2, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    .line 169
    .line 170
    invoke-static {v3, v2}, Lio/github/muntashirakon/adb/AndroidPubkey;->adbAuthSign(Ljava/security/PrivateKey;[B)[B

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    const/4 v3, 0x2

    .line 175
    invoke-static {v3, v2}, Lio/github/muntashirakon/adb/AdbProtocol;->generateAuth(I[B)[B

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSentSignature:Z

    .line 180
    .line 181
    :goto_1
    invoke-virtual {p0, v2}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :sswitch_3
    iget-boolean v3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    .line 187
    .line 188
    if-nez v3, :cond_4

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_4
    iget-object v3, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Lj$/util/concurrent/ConcurrentHashMap;

    .line 193
    .line 194
    iget v4, v2, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    .line 195
    .line 196
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-virtual {v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Lio/github/muntashirakon/adb/AdbStream;

    .line 205
    .line 206
    if-nez v3, :cond_5

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_5
    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 211
    :try_start_5
    iget v4, v2, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    .line 212
    .line 213
    const v5, 0x59414b4f

    .line 214
    .line 215
    .line 216
    if-ne v4, v5, :cond_6

    .line 217
    .line 218
    iget v2, v2, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    .line 219
    .line 220
    invoke-virtual {v3, v2}, Lio/github/muntashirakon/adb/AdbStream;->updateRemoteId(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Lio/github/muntashirakon/adb/AdbStream;->readyForWrite()V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :catchall_2
    move-exception v0

    .line 231
    goto :goto_3

    .line 232
    :cond_6
    const v5, 0x45545257

    .line 233
    .line 234
    .line 235
    if-ne v4, v5, :cond_7

    .line 236
    .line 237
    iget-object v2, v2, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    .line 238
    .line 239
    invoke-virtual {v3, v2}, Lio/github/muntashirakon/adb/AdbStream;->addPayload([B)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3}, Lio/github/muntashirakon/adb/AdbStream;->sendReady()V

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_7
    iget-object v4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Lj$/util/concurrent/ConcurrentHashMap;

    .line 247
    .line 248
    iget v2, v2, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    .line 249
    .line 250
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v4, v2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v0}, Lio/github/muntashirakon/adb/AdbStream;->notifyClose(Z)V

    .line 258
    .line 259
    .line 260
    :goto_2
    monitor-exit v3

    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :goto_3
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 264
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 265
    :goto_4
    iput-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionException:Ljava/lang/Exception;

    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 268
    .line 269
    .line 270
    :cond_8
    :goto_5
    monitor-enter p0

    .line 271
    :try_start_7
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AdbConnection;->cleanupStreams()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 275
    .line 276
    .line 277
    iput-boolean v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    .line 278
    .line 279
    iput-boolean v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    .line 280
    .line 281
    monitor-exit p0

    .line 282
    return-void

    .line 283
    :catchall_3
    move-exception v0

    .line 284
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 285
    goto :goto_7

    .line 286
    :goto_6
    throw v0

    .line 287
    :goto_7
    goto :goto_6

    .line 288
    nop

    .line 289
    :sswitch_data_0
    .sparse-switch
        0x45534c43 -> :sswitch_3
        0x45545257 -> :sswitch_3
        0x48545541 -> :sswitch_2
        0x4e584e43 -> :sswitch_1
        0x534c5453 -> :sswitch_0
        0x59414b4f -> :sswitch_3
    .end sparse-switch
.end method

.method public static synthetic r(Lio/github/muntashirakon/adb/AdbConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AdbConnection;->lambda$createConnectionThread$0()V

    return-void
.end method

.method private waitForConnection(JLjava/util/concurrent/TimeUnit;)Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    add-long/2addr v2, p1

    .line 18
    :goto_0
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    sub-long p1, v2, p1

    .line 31
    .line 32
    const-wide/16 v4, 0x0

    .line 33
    .line 34
    cmp-long p3, p1, v4

    .line 35
    .line 36
    if-lez p3, :cond_0

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    sub-long p1, v2, p1

    .line 43
    .line 44
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    :goto_1
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide p1

    .line 62
    sub-long/2addr p1, v0

    .line 63
    const-wide/32 v2, 0xea60

    .line 64
    .line 65
    .line 66
    cmp-long p3, p1, v2

    .line 67
    .line 68
    if-gez p3, :cond_1

    .line 69
    .line 70
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->isAuthIn:Z

    .line 71
    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    const-wide/16 p1, 0x3e8

    .line 75
    .line 76
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    .line 81
    .line 82
    if-nez p1, :cond_5

    .line 83
    .line 84
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    monitor-exit p0

    .line 89
    const/4 p1, 0x0

    .line 90
    return p1

    .line 91
    :cond_2
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mAuthorisationFailed:Z

    .line 92
    .line 93
    if-nez p1, :cond_4

    .line 94
    .line 95
    iget-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionException:Ljava/lang/Exception;

    .line 96
    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    instance-of p2, p1, Ljavax/net/ssl/SSLProtocolException;

    .line 100
    .line 101
    if-eqz p2, :cond_3

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    if-eqz p2, :cond_3

    .line 108
    .line 109
    const-string p3, "protocol error"

    .line 110
    .line 111
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-eqz p2, :cond_3

    .line 116
    .line 117
    new-instance p2, Lio/github/muntashirakon/adb/AdbPairingRequiredException;

    .line 118
    .line 119
    const-string p3, "ADB pairing is required."

    .line 120
    .line 121
    invoke-direct {p2, p3}, Lio/github/muntashirakon/adb/AdbPairingRequiredException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Lio/github/muntashirakon/adb/AdbPairingRequiredException;

    .line 129
    .line 130
    throw p1

    .line 131
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 132
    .line 133
    const-string p2, "Connection failed"

    .line 134
    .line 135
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :cond_4
    new-instance p1, Lio/github/muntashirakon/adb/AdbAuthenticationFailedException;

    .line 140
    .line 141
    invoke-direct {p1}, Lio/github/muntashirakon/adb/AdbAuthenticationFailedException;-><init>()V

    .line 142
    .line 143
    .line 144
    throw p1

    .line 145
    :cond_5
    monitor-exit p0

    .line 146
    const/4 p1, 0x1

    .line 147
    return p1

    .line 148
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    goto :goto_4

    .line 150
    :goto_3
    throw p1

    .line 151
    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSocket:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionThread:Ljava/lang/Thread;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionThread:Ljava/lang/Thread;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    :try_start_1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mKeyPair:Lio/github/muntashirakon/adb/KeyPair;

    .line 17
    .line 18
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/KeyPair;->destroy()V
    :try_end_1
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    .line 20
    .line 21
    :catch_1
    return-void
.end method

.method public connect()Z
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {p0, v2, v3, v0, v1}, Lio/github/muntashirakon/adb/AdbConnection;->connect(JLjava/util/concurrent/TimeUnit;Z)Z

    move-result v0

    return v0
.end method

.method public connect(JLjava/util/concurrent/TimeUnit;Z)Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mApi:I

    invoke-static {v0}, Lio/github/muntashirakon/adb/AdbProtocol;->generateConnect(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    .line 5
    iput-boolean p4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mAbortOnUnauthorised:Z

    const/4 p4, 0x0

    .line 6
    iput-boolean p4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mAuthorisationFailed:Z

    .line 7
    iget-object p4, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionThread:Ljava/lang/Thread;

    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    .line 8
    invoke-static {p3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lio/github/muntashirakon/adb/AdbConnection;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already connected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public flushPacket()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AdbConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method public getMaxData()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide v0, 0x7fffffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    invoke-direct {p0, v0, v1, v2}, Lio/github/muntashirakon/adb/AdbConnection;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Z

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mMaxData:I

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "connect() must be called first"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mProtocolVersion:I

    .line 2
    .line 3
    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSocket:Ljava/net/Socket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mSocket:Ljava/net/Socket;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isConnectionEstablished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectionEstablished:Z

    .line 2
    .line 3
    return v0
.end method

.method public varargs open(I[Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    .line 1
    invoke-static {p1, p2}, Lio/github/muntashirakon/adb/LocalServices;->getDestination(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/muntashirakon/adb/AdbConnection;->open(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid service: "

    .line 3
    invoke-static {p1, v0}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public open(Ljava/lang/String;)Lio/github/muntashirakon/adb/AdbStream;
    .locals 4

    .line 9
    iget v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLastLocalId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLastLocalId:I

    .line 10
    iget-boolean v1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mConnectAttempted:Z

    if-eqz v1, :cond_1

    const-wide v1, 0x7fffffffffffffffL

    .line 11
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v1, v2, v3}, Lio/github/muntashirakon/adb/AdbConnection;->waitForConnection(JLjava/util/concurrent/TimeUnit;)Z

    .line 12
    new-instance v1, Lio/github/muntashirakon/adb/AdbStream;

    invoke-direct {v1, p0, v0}, Lio/github/muntashirakon/adb/AdbStream;-><init>(Lio/github/muntashirakon/adb/AdbConnection;I)V

    .line 13
    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p1}, Lio/github/muntashirakon/adb/AdbProtocol;->generateOpen(ILjava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/muntashirakon/adb/AdbConnection;->sendPacket([B)V

    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v1}, Lio/github/muntashirakon/adb/AdbStream;->isClosed()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v1

    .line 19
    :cond_0
    iget-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mOpenedStreams:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance p1, Ljava/net/ConnectException;

    const-string v0, "Stream open actively rejected by remote peer."

    invoke-direct {p1, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "connect() must be called first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendPacket([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lio/github/muntashirakon/adb/AdbConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection;->mDeviceName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method
