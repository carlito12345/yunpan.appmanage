.class public Lcom/hierynomus/smbfs/SmbFileSystem;
.super Ljava/nio/file/FileSystem;
.source "SourceFile"


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "\\"


# instance fields
.field private volatile open:Z

.field private final provider:Lcom/hierynomus/smbfs/SmbFileSystemProvider;

.field private final root:Lcom/hierynomus/smbfs/SmbPath;

.field private final share:Ljava/lang/String;

.field private final shares:Lcom/hierynomus/smbfs/ShareSource;


# direct methods
.method public constructor <init>(Lcom/hierynomus/smbfs/SmbFileSystemProvider;Lcom/hierynomus/smbfs/ShareSource;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/nio/file/FileSystem;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/hierynomus/smbfs/SmbPath;->root(Lcom/hierynomus/smbfs/SmbFileSystem;)Lcom/hierynomus/smbfs/SmbPath;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->root:Lcom/hierynomus/smbfs/SmbPath;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->provider:Lcom/hierynomus/smbfs/SmbFileSystemProvider;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->shares:Lcom/hierynomus/smbfs/ShareSource;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->share:Ljava/lang/String;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->open:Z

    .line 18
    .line 19
    return-void
.end method

.method private static accessMasks(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/hierynomus/msdtyp/AccessMask;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->i()Ljava/nio/file/StandardOpenOption;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->u()Ljava/nio/file/StandardOpenOption;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->y()Ljava/nio/file/StandardOpenOption;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    :goto_0
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->w()Ljava/nio/file/StandardOpenOption;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_5

    .line 41
    .line 42
    const-class p0, Lcom/hierynomus/msdtyp/AccessMask;

    .line 43
    .line 44
    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    sget-object v3, Lcom/hierynomus/msdtyp/AccessMask;->FILE_APPEND_DATA:Lcom/hierynomus/msdtyp/AccessMask;

    .line 51
    .line 52
    invoke-virtual {p0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    if-eqz v2, :cond_2

    .line 57
    .line 58
    sget-object v3, Lcom/hierynomus/msdtyp/AccessMask;->FILE_WRITE_DATA:Lcom/hierynomus/msdtyp/AccessMask;

    .line 59
    .line 60
    invoke-virtual {p0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 64
    .line 65
    if-nez v2, :cond_4

    .line 66
    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    :cond_3
    sget-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_READ_DATA:Lcom/hierynomus/msdtyp/AccessMask;

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_4
    return-object p0

    .line 75
    :cond_5
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    throw p0
.end method

.method private combine(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p2

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    array-length p1, p2

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, p1, :cond_3

    .line 13
    .line 14
    aget-object v2, p2, v1

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lez v3, :cond_2

    .line 28
    .line 29
    const/16 v3, 0x5c

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method private static createDisposition(Ljava/util/Set;)Lcom/hierynomus/mssmb2/SMB2CreateDisposition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;)",
            "Lcom/hierynomus/mssmb2/SMB2CreateDisposition;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->z()Ljava/nio/file/StandardOpenOption;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object p0, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_CREATE:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->y()Ljava/nio/file/StandardOpenOption;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->A()Ljava/nio/file/StandardOpenOption;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    sget-object p0, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OVERWRITE_IF:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->B()Ljava/nio/file/StandardOpenOption;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    sget-object p0, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN_IF:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_2
    sget-object p0, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OPEN:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 51
    .line 52
    return-object p0
.end method

.method private static createOptions(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/hierynomus/mssmb2/SMB2CreateOptions;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->C()Ljava/nio/file/StandardOpenOption;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->D()Ljava/nio/file/StandardOpenOption;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/hierynomus/mssmb2/SMB2CreateOptions;->FILE_WRITE_THROUGH:Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 25
    .line 26
    invoke-static {p0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method


# virtual methods
.method public varargs checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V
    .locals 2

    .line 1
    array-length p2, p2

    .line 2
    if-gtz p2, :cond_2

    .line 3
    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->shares:Lcom/hierynomus/smbfs/ShareSource;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->share:Ljava/lang/String;

    .line 7
    .line 8
    invoke-interface {p2, v0}, Lcom/hierynomus/smbfs/ShareSource;->getShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/DiskShare;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p2, v0}, Lcom/hierynomus/smbj/share/DiskShare;->getFileInformation(Ljava/lang/String;)Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;
    :try_end_0
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception p2

    .line 21
    invoke-virtual {p2}, Lcom/hierynomus/mssmb2/SMBApiException;->getStatus()Lcom/hierynomus/mserref/NtStatus;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/hierynomus/mserref/NtStatus;->STATUS_OBJECT_PATH_NOT_FOUND:Lcom/hierynomus/mserref/NtStatus;

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/hierynomus/mssmb2/SMBApiException;->getStatus()Lcom/hierynomus/mserref/NtStatus;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lcom/hierynomus/mserref/NtStatus;->STATUS_OBJECT_NAME_NOT_FOUND:Lcom/hierynomus/mserref/NtStatus;

    .line 34
    .line 35
    if-ne v0, v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    :goto_0
    new-instance p2, Ljava/nio/file/NoSuchFileException;

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p2, p1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2

    .line 54
    :cond_2
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    throw p1
.end method

.method public close()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->shares:Lcom/hierynomus/smbfs/ShareSource;

    .line 4
    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->open:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->provider:Lcom/hierynomus/smbfs/SmbFileSystemProvider;

    .line 8
    .line 9
    invoke-virtual {v3, p0}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->removeFileSystem(Lcom/hierynomus/smbfs/SmbFileSystem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :catchall_0
    move-exception v3

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    :try_start_1
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_1
    move-exception v2

    .line 26
    const-class v4, Ljava/lang/Throwable;

    .line 27
    .line 28
    :try_start_2
    const-string v5, "addSuppressed"

    .line 29
    .line 30
    new-array v6, v0, [Ljava/lang/Class;

    .line 31
    .line 32
    aput-object v4, v6, v1

    .line 33
    .line 34
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object v2, v0, v1

    .line 41
    .line 42
    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    .line 44
    .line 45
    :catch_0
    :cond_1
    :goto_0
    throw v3
.end method

.method public copy(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "addSuppressed"

    .line 4
    .line 5
    const-class v3, Ljava/lang/Throwable;

    .line 6
    .line 7
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->i()Ljava/nio/file/StandardOpenOption;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v4, Ljava/util/HashSet;

    .line 16
    .line 17
    const/4 v5, 0x2

    .line 18
    new-array v5, v5, [Ljava/nio/file/StandardOpenOption;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->y()Ljava/nio/file/StandardOpenOption;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    aput-object v7, v5, v6

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->z()Ljava/nio/file/StandardOpenOption;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    aput-object v8, v5, v7

    .line 33
    .line 34
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 39
    .line 40
    .line 41
    iget-object v5, v1, Lcom/hierynomus/smbfs/SmbFileSystem;->shares:Lcom/hierynomus/smbfs/ShareSource;

    .line 42
    .line 43
    iget-object v8, v1, Lcom/hierynomus/smbfs/SmbFileSystem;->share:Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v5, v8}, Lcom/hierynomus/smbfs/ShareSource;->getShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/DiskShare;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroidx/media3/exoplayer/video/i;->c(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-static {v0}, Lcom/hierynomus/smbfs/SmbFileSystem;->accessMasks(Ljava/util/Set;)Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    invoke-static {v0}, Lcom/hierynomus/smbfs/SmbFileSystem;->createDisposition(Ljava/util/Set;)Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 58
    .line 59
    .line 60
    move-result-object v14

    .line 61
    invoke-static {v0}, Lcom/hierynomus/smbfs/SmbFileSystem;->createOptions(Ljava/util/Set;)Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object v15

    .line 65
    const/4 v12, 0x0

    .line 66
    const/4 v13, 0x0

    .line 67
    move-object v9, v5

    .line 68
    invoke-virtual/range {v9 .. v15}, Lcom/hierynomus/smbj/share/DiskShare;->openFile(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/File;

    .line 69
    .line 70
    .line 71
    move-result-object v8
    :try_end_0
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroidx/media3/exoplayer/video/i;->c(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    invoke-static {v4}, Lcom/hierynomus/smbfs/SmbFileSystem;->accessMasks(Ljava/util/Set;)Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    invoke-static {v4}, Lcom/hierynomus/smbfs/SmbFileSystem;->createDisposition(Ljava/util/Set;)Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 81
    .line 82
    .line 83
    move-result-object v14

    .line 84
    invoke-static {v4}, Lcom/hierynomus/smbfs/SmbFileSystem;->createOptions(Ljava/util/Set;)Ljava/util/Set;

    .line 85
    .line 86
    .line 87
    move-result-object v15

    .line 88
    const/4 v12, 0x0

    .line 89
    const/4 v13, 0x0

    .line 90
    move-object v9, v5

    .line 91
    invoke-virtual/range {v9 .. v15}, Lcom/hierynomus/smbj/share/DiskShare;->openFile(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/File;

    .line 92
    .line 93
    .line 94
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :try_start_2
    invoke-virtual {v8, v4}, Lcom/hierynomus/smbj/share/File;->remoteCopyTo(Lcom/hierynomus/smbj/share/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    .line 97
    .line 98
    if-eqz v4, :cond_0

    .line 99
    .line 100
    :try_start_3
    invoke-virtual {v4}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    move-object v4, v0

    .line 106
    goto :goto_2

    .line 107
    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {v8}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_4
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_4 .. :try_end_4} :catch_0

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    goto :goto_4

    .line 113
    :catchall_1
    move-exception v0

    .line 114
    move-object v5, v0

    .line 115
    if-eqz v4, :cond_1

    .line 116
    .line 117
    :try_start_5
    invoke-virtual {v4}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :catchall_2
    move-exception v0

    .line 122
    move-object v4, v0

    .line 123
    :try_start_6
    new-array v0, v7, [Ljava/lang/Class;

    .line 124
    .line 125
    aput-object v3, v0, v6

    .line 126
    .line 127
    invoke-virtual {v3, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    new-array v9, v7, [Ljava/lang/Object;

    .line 132
    .line 133
    aput-object v4, v9, v6

    .line 134
    .line 135
    invoke-virtual {v0, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 136
    .line 137
    .line 138
    :catch_1
    :cond_1
    :goto_1
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 139
    :goto_2
    if-eqz v8, :cond_2

    .line 140
    .line 141
    :try_start_8
    invoke-virtual {v8}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :catchall_3
    move-exception v0

    .line 146
    move-object v5, v0

    .line 147
    :try_start_9
    new-array v0, v7, [Ljava/lang/Class;

    .line 148
    .line 149
    aput-object v3, v0, v6

    .line 150
    .line 151
    invoke-virtual {v3, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    new-array v2, v7, [Ljava/lang/Object;

    .line 156
    .line 157
    aput-object v5, v2, v6

    .line 158
    .line 159
    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 160
    .line 161
    .line 162
    :catch_2
    :cond_2
    :goto_3
    :try_start_a
    throw v4
    :try_end_a
    .catch Lcom/hierynomus/protocol/commons/buffer/Buffer$BufferException; {:try_start_a .. :try_end_a} :catch_0

    .line 163
    :goto_4
    new-instance v2, Ljava/io/IOException;

    .line 164
    .line 165
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    throw v2
.end method

.method public createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/hierynomus/msdtyp/AccessMask;->FILE_LIST_DIRECTORY:Lcom/hierynomus/msdtyp/AccessMask;

    .line 2
    .line 3
    sget-object v0, Lcom/hierynomus/msdtyp/AccessMask;->FILE_ADD_SUBDIRECTORY:Lcom/hierynomus/msdtyp/AccessMask;

    .line 4
    .line 5
    invoke-static {p2, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget-object p2, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->shares:Lcom/hierynomus/smbfs/ShareSource;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->share:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {p2, v0}, Lcom/hierynomus/smbfs/ShareSource;->getShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/DiskShare;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :try_start_0
    invoke-static {p1}, Landroidx/media3/exoplayer/video/i;->c(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    sget-object v6, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_CREATE:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-virtual/range {v1 .. v7}, Lcom/hierynomus/smbj/share/DiskShare;->openDirectory(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/Directory;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_0
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 39
    :goto_1
    new-instance p2, Ljava/io/IOException;

    .line 40
    .line 41
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw p2
.end method

.method public delete(Lcom/hierynomus/smbfs/SmbPath;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lcom/hierynomus/msdtyp/AccessMask;->DELETE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 4
    .line 5
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    iget-object v2, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->shares:Lcom/hierynomus/smbfs/ShareSource;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->share:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {v2, v3}, Lcom/hierynomus/smbfs/ShareSource;->getShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/DiskShare;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/hierynomus/smbfs/SmbPath;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    invoke-virtual/range {v3 .. v9}, Lcom/hierynomus/smbj/share/DiskShare;->openFile(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/File;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :try_start_0
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/DiskEntry;->deleteOnClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v2

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    :try_start_1
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_1
    move-exception p1

    .line 44
    const-class v3, Ljava/lang/Throwable;

    .line 45
    .line 46
    :try_start_2
    const-string v4, "addSuppressed"

    .line 47
    .line 48
    new-array v5, v1, [Ljava/lang/Class;

    .line 49
    .line 50
    aput-object v3, v5, v0

    .line 51
    .line 52
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    aput-object p1, v1, v0

    .line 59
    .line 60
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    .line 62
    .line 63
    :catch_0
    :cond_0
    :goto_0
    throw v2
.end method

.method public getFileStores()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/FileStore;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    throw v0
.end method

.method public varargs getPath(Ljava/lang/String;[Ljava/lang/String;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/hierynomus/smbfs/SmbFileSystem;->combine(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "/"

    const-string v0, "\\\\"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    const-string p2, "\\"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->root:Lcom/hierynomus/smbfs/SmbPath;

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/hierynomus/smbfs/SmbPath;->of(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/smbfs/SmbPath;Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->root:Lcom/hierynomus/smbfs/SmbPath;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/hierynomus/smbfs/SmbPath;->parse(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/smbfs/SmbPath;Ljava/lang/String;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-static {p0, v1, p1}, Lcom/hierynomus/smbfs/SmbPath;->parse(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/smbfs/SmbPath;Ljava/lang/String;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hierynomus/smbfs/SmbFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1
.end method

.method public getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;
    .locals 0

    .line 1
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    throw p1
.end method

.method public getRootDirectories()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->root:Lcom/hierynomus/smbfs/SmbPath;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "\\"

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->open:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public move(Lcom/hierynomus/smbfs/SmbPath;Lcom/hierynomus/smbfs/SmbPath;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lcom/hierynomus/msdtyp/AccessMask;->FILE_WRITE_ATTRIBUTES:Lcom/hierynomus/msdtyp/AccessMask;

    .line 4
    .line 5
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    iget-object v2, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->shares:Lcom/hierynomus/smbfs/ShareSource;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->share:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {v2, v3}, Lcom/hierynomus/smbfs/ShareSource;->getShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/DiskShare;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/hierynomus/smbfs/SmbPath;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    invoke-virtual/range {v3 .. v9}, Lcom/hierynomus/smbj/share/DiskShare;->openFile(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/File;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :try_start_0
    invoke-virtual {p2}, Lcom/hierynomus/smbfs/SmbPath;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Lcom/hierynomus/smbj/share/DiskEntry;->rename(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p2

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    :try_start_1
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_1
    move-exception p1

    .line 48
    const-class v2, Ljava/lang/Throwable;

    .line 49
    .line 50
    :try_start_2
    const-string v3, "addSuppressed"

    .line 51
    .line 52
    new-array v4, v1, [Ljava/lang/Class;

    .line 53
    .line 54
    aput-object v2, v4, v0

    .line 55
    .line 56
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-array v1, v1, [Ljava/lang/Object;

    .line 61
    .line 62
    aput-object p1, v1, v0

    .line 63
    .line 64
    invoke-virtual {v2, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 65
    .line 66
    .line 67
    :catch_0
    :cond_0
    :goto_0
    throw p2
.end method

.method public newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/hierynomus/smbfs/SmbFileSystem;->accessMasks(Ljava/util/Set;)Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-static {p2}, Lcom/hierynomus/smbfs/SmbFileSystem;->createDisposition(Ljava/util/Set;)Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    invoke-static {p2}, Lcom/hierynomus/smbfs/SmbFileSystem;->createOptions(Ljava/util/Set;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    iget-object p3, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->shares:Lcom/hierynomus/smbfs/ShareSource;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->share:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {p3, v0}, Lcom/hierynomus/smbfs/ShareSource;->getShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/DiskShare;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1}, Landroidx/media3/exoplayer/video/i;->c(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual/range {v0 .. v6}, Lcom/hierynomus/smbj/share/DiskShare;->openFile(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/File;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->u()Ljava/nio/file/StandardOpenOption;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/File;->getLength()J

    .line 42
    .line 43
    .line 44
    move-result-wide p2

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-wide/16 p2, 0x0

    .line 47
    .line 48
    :goto_0
    new-instance v0, Lcom/hierynomus/smbfs/SmbFileChannel;

    .line 49
    .line 50
    invoke-direct {v0, p1, p2, p3}, Lcom/hierynomus/smbfs/SmbFileChannel;-><init>(Lcom/hierynomus/smbj/share/File;J)V

    .line 51
    .line 52
    .line 53
    return-object v0
.end method

.method public newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/DirectoryStream$Filter<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->shares:Lcom/hierynomus/smbfs/ShareSource;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->share:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/hierynomus/smbfs/ShareSource;->getShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/DiskShare;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Landroidx/media3/exoplayer/video/i;->c(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Lcom/hierynomus/smbj/share/DiskShare;->list(Ljava/lang/String;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/hierynomus/msfscc/fileinformation/FileIdBothDirectoryInformation;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/hierynomus/msfscc/fileinformation/FileDirectoryQueryableInformation;->getFileName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "."

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_0

    .line 49
    .line 50
    const-string v3, ".."

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {p1, v2}, Landroidx/media3/exoplayer/video/i;->h(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {p2, v2}, Landroidx/media3/exoplayer/video/i;->t(Ljava/nio/file/DirectoryStream$Filter;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    new-instance p1, Lcom/hierynomus/smbfs/SmbDirectoryStream;

    .line 75
    .line 76
    invoke-direct {p1, v1}, Lcom/hierynomus/smbfs/SmbDirectoryStream;-><init>(Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    return-object p1
.end method

.method public newWatchService()Ljava/nio/file/WatchService;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/hierynomus/smbfs/SmbWatchService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->shares:Lcom/hierynomus/smbfs/ShareSource;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->share:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v1, v2}, Lcom/hierynomus/smbfs/ShareSource;->getShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/DiskShare;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1, p0}, Lcom/hierynomus/smbfs/SmbWatchService;-><init>(Lcom/hierynomus/smbj/share/DiskShare;Lcom/hierynomus/smbfs/SmbFileSystem;)V
    :try_end_0
    .catch Lcom/hierynomus/smbj/common/SMBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/io/IOException;

    .line 17
    .line 18
    const-string v2, "Can\'t connect share"

    .line 19
    .line 20
    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v1
.end method

.method public provider()Lcom/hierynomus/smbfs/SmbFileSystemProvider;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->provider:Lcom/hierynomus/smbfs/SmbFileSystemProvider;

    return-object v0
.end method

.method public bridge synthetic provider()Ljava/nio/file/spi/FileSystemProvider;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbFileSystem;->provider()Lcom/hierynomus/smbfs/SmbFileSystemProvider;

    move-result-object v0

    return-object v0
.end method

.method public readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/media3/exoplayer/video/i;->b()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->shares:Lcom/hierynomus/smbfs/ShareSource;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->share:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/hierynomus/smbfs/ShareSource;->getShare(Ljava/lang/String;)Lcom/hierynomus/smbj/share/DiskShare;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1}, Landroidx/media3/exoplayer/video/i;->c(Ljava/nio/file/Path;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/hierynomus/smbj/share/DiskShare;->getFileInformation(Ljava/lang/String;)Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lcom/hierynomus/smbfs/SmbFileAttributes;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lcom/hierynomus/smbfs/SmbFileAttributes;-><init>(Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Landroidx/media3/exoplayer/video/i;->k(Ljava/lang/Object;)Ljava/nio/file/attribute/BasicFileAttributes;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_0
    .catch Lcom/hierynomus/mssmb2/SMBApiException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object p1

    .line 37
    :catch_0
    move-exception p1

    .line 38
    new-instance p2, Ljava/io/IOException;

    .line 39
    .line 40
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p2

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
.end method

.method public root()Lcom/hierynomus/smbfs/SmbPath;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->root:Lcom/hierynomus/smbfs/SmbPath;

    .line 2
    .line 3
    return-object v0
.end method

.method public share()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileSystem;->share:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public supportedFileAttributeViews()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    throw v0
.end method
