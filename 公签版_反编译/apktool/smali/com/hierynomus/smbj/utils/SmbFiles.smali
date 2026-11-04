.class public Lcom/hierynomus/smbj/utils/SmbFiles;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static copy(Ljava/io/File;Lcom/hierynomus/smbj/share/DiskShare;Ljava/lang/String;Z)J
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    new-instance v2, Ljava/io/FileInputStream;

    .line 24
    .line 25
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-static {v2, p1, p2, p3}, Lcom/hierynomus/smbj/utils/SmbFiles;->write(Ljava/io/InputStream;Lcom/hierynomus/smbj/share/DiskShare;Ljava/lang/String;Z)J

    .line 29
    .line 30
    .line 31
    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception p1

    .line 42
    const-class p2, Ljava/lang/Throwable;

    .line 43
    .line 44
    :try_start_2
    const-string p3, "addSuppressed"

    .line 45
    .line 46
    new-array v2, v1, [Ljava/lang/Class;

    .line 47
    .line 48
    aput-object p2, v2, v0

    .line 49
    .line 50
    invoke-virtual {p2, p3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    new-array p3, v1, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object p1, p3, v0

    .line 57
    .line 58
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    .line 60
    .line 61
    :catch_0
    :goto_0
    throw p0

    .line 62
    :cond_0
    const-wide/16 p0, 0x0

    .line 63
    .line 64
    :goto_1
    return-wide p0
.end method

.method public static write(Ljava/io/InputStream;Lcom/hierynomus/smbj/share/DiskShare;Ljava/lang/String;Z)J
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    if-eqz p0, :cond_2

    .line 6
    .line 7
    sget-object v2, Lcom/hierynomus/msdtyp/AccessMask;->GENERIC_WRITE:Lcom/hierynomus/msdtyp/AccessMask;

    .line 8
    .line 9
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    sget-object v2, Lcom/hierynomus/msfscc/FileAttributes;->FILE_ATTRIBUTE_NORMAL:Lcom/hierynomus/msfscc/FileAttributes;

    .line 14
    .line 15
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    sget-object v2, Lcom/hierynomus/mssmb2/SMB2ShareAccess;->FILE_SHARE_WRITE:Lcom/hierynomus/mssmb2/SMB2ShareAccess;

    .line 20
    .line 21
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    sget-object p3, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_OVERWRITE_IF:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 28
    .line 29
    :goto_0
    move-object v8, p3

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    sget-object p3, Lcom/hierynomus/mssmb2/SMB2CreateDisposition;->FILE_CREATE:Lcom/hierynomus/mssmb2/SMB2CreateDisposition;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :goto_1
    const-class p3, Lcom/hierynomus/mssmb2/SMB2CreateOptions;

    .line 35
    .line 36
    invoke-static {p3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    move-object v3, p1

    .line 41
    move-object v4, p2

    .line 42
    invoke-virtual/range {v3 .. v9}, Lcom/hierynomus/smbj/share/DiskShare;->openFile(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/hierynomus/mssmb2/SMB2CreateDisposition;Ljava/util/Set;)Lcom/hierynomus/smbj/share/File;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :try_start_0
    new-instance p2, Lcom/hierynomus/smbj/io/InputStreamByteChunkProvider;

    .line 47
    .line 48
    invoke-direct {p2, p0}, Lcom/hierynomus/smbj/io/InputStreamByteChunkProvider;-><init>(Ljava/io/InputStream;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/hierynomus/smbj/share/File;->write(Lcom/hierynomus/smbj/io/ByteChunkProvider;)J

    .line 52
    .line 53
    .line 54
    move-result-wide p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    :try_start_1
    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Open;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catchall_1
    move-exception p1

    .line 67
    const-class p2, Ljava/lang/Throwable;

    .line 68
    .line 69
    :try_start_2
    const-string p3, "addSuppressed"

    .line 70
    .line 71
    new-array v2, v1, [Ljava/lang/Class;

    .line 72
    .line 73
    aput-object p2, v2, v0

    .line 74
    .line 75
    invoke-virtual {p2, p3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    new-array p3, v1, [Ljava/lang/Object;

    .line 80
    .line 81
    aput-object p1, p3, v0

    .line 82
    .line 83
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    .line 85
    .line 86
    :catch_0
    :cond_1
    :goto_2
    throw p0

    .line 87
    :cond_2
    const-wide/16 p2, 0x0

    .line 88
    .line 89
    :goto_3
    return-wide p2
.end method


# virtual methods
.method public mkdirs(Lcom/hierynomus/smbj/share/DiskShare;Lcom/hierynomus/smbj/common/SmbPath;)V
    .locals 1

    .line 3
    invoke-virtual {p2}, Lcom/hierynomus/smbj/common/SmbPath;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hierynomus/smbj/share/DiskShare;->folderExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/hierynomus/smbj/common/SmbPath;->getParent()Lcom/hierynomus/smbj/common/SmbPath;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/hierynomus/smbj/utils/SmbFiles;->mkdirs(Lcom/hierynomus/smbj/share/DiskShare;Lcom/hierynomus/smbj/common/SmbPath;)V

    .line 5
    invoke-virtual {p2}, Lcom/hierynomus/smbj/common/SmbPath;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hierynomus/smbj/share/DiskShare;->mkdir(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public mkdirs(Lcom/hierynomus/smbj/share/DiskShare;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/hierynomus/smbj/common/SmbPath;

    invoke-virtual {p1}, Lcom/hierynomus/smbj/share/Share;->getSmbPath()Lcom/hierynomus/smbj/common/SmbPath;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/hierynomus/smbj/common/SmbPath;-><init>(Lcom/hierynomus/smbj/common/SmbPath;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/hierynomus/smbj/utils/SmbFiles;->mkdirs(Lcom/hierynomus/smbj/share/DiskShare;Lcom/hierynomus/smbj/common/SmbPath;)V

    return-void
.end method
