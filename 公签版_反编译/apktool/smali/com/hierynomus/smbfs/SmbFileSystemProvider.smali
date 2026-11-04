.class public Lcom/hierynomus/smbfs/SmbFileSystemProvider;
.super Ljava/nio/file/spi/FileSystemProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hierynomus/smbfs/SmbFileSystemProvider$FactoryImpl;,
        Lcom/hierynomus/smbfs/SmbFileSystemProvider$Factory;
    }
.end annotation


# static fields
.field public static final DFS_ENABLED_PROPERTY:Ljava/lang/String; = "smbfs.dfsEnabled"

.field public static final DOMAIN_PROPERTY:Ljava/lang/String; = "smbfs.domain"

.field public static final PASSWORD_PROPERTY:Ljava/lang/String; = "smbfs.password"

.field private static final SCHEME:Ljava/lang/String; = "smb"

.field public static final USERNAME_PROPERTY:Ljava/lang/String; = "smbfs.username"


# instance fields
.field private final factory:Lcom/hierynomus/smbfs/SmbFileSystemProvider$Factory;

.field private final fileSystems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hierynomus/smbfs/SmbFileSystem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/hierynomus/smbfs/SmbFileSystemProvider$FactoryImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hierynomus/smbfs/SmbFileSystemProvider$FactoryImpl;-><init>(Lcom/hierynomus/smbfs/SmbFileSystemProvider$1;)V

    invoke-direct {p0, v0}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;-><init>(Lcom/hierynomus/smbfs/SmbFileSystemProvider$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/hierynomus/smbfs/SmbFileSystemProvider$Factory;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/nio/file/spi/FileSystemProvider;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->fileSystems:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->factory:Lcom/hierynomus/smbfs/SmbFileSystemProvider$Factory;

    return-void
.end method

.method private createAuthenticationContext(Ljava/net/URI;Ljava/util/Map;)Lcom/hierynomus/smbj/auth/AuthenticationContext;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/hierynomus/smbj/auth/AuthenticationContext;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->userInfo(Ljava/net/URI;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->splitUserInfo(Ljava/lang/String;)Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->extractDomain(Lcom/hierynomus/smbj/auth/AuthenticationContext;Ljava/util/Map;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->extractUser(Lcom/hierynomus/smbj/auth/AuthenticationContext;Ljava/util/Map;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->extractPassword(Lcom/hierynomus/smbj/auth/AuthenticationContext;Ljava/util/Map;)[C

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 22
    .line 23
    invoke-direct {p2, v1, p1, v0}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p2
.end method

.method private extractDfsEnabled(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "smbfs.dfsEnabled"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p1, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string v0, "smbfs.dfsEnabled must be a Boolean or String"

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_2
    const/4 p1, 0x0

    .line 44
    return p1
.end method

.method private extractDomain(Lcom/hierynomus/smbj/auth/AuthenticationContext;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hierynomus/smbj/auth/AuthenticationContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-string v0, "smbfs.domain"

    .line 2
    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->getDomain()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private extractHost(Ljava/net/URI;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lcom/hierynomus/smbfs/InvalidShareException;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Lcom/hierynomus/smbfs/InvalidShareException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method private extractPassword(Lcom/hierynomus/smbj/auth/AuthenticationContext;Ljava/util/Map;)[C
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hierynomus/smbj/auth/AuthenticationContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)[C"
        }
    .end annotation

    .line 1
    const-string v0, "smbfs.password"

    .line 2
    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->getPassword()[C

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    instance-of p2, p1, [C

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    check-cast p1, [C

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    instance-of p2, p1, Ljava/lang/String;

    .line 26
    .line 27
    if-eqz p2, :cond_2

    .line 28
    .line 29
    check-cast p1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string p2, "smbfs.password must be a String or char[]"

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method private extractShareName(Ljava/net/URI;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v1, "/"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    array-length v1, v0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-le v1, v2, :cond_0

    .line 22
    .line 23
    aget-object p1, v0, v2

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    new-instance v0, Lcom/hierynomus/smbfs/InvalidShareException;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Lcom/hierynomus/smbfs/InvalidShareException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method private extractUser(Lcom/hierynomus/smbj/auth/AuthenticationContext;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hierynomus/smbj/auth/AuthenticationContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-string v0, "smbfs.username"

    .line 2
    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/hierynomus/smbj/auth/AuthenticationContext;->getUsername()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private getKey(Ljava/net/URI;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->userInfo(Ljava/net/URI;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->extractHost(Ljava/net/URI;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, p1}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->extractShareName(Ljava/net/URI;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/16 v2, 0x3a

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ltz v2, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, "@"

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, "/"

    .line 43
    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method private splitUserInfo(Ljava/lang/String;)Lcom/hierynomus/smbj/auth/AuthenticationContext;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [C

    .line 3
    .line 4
    const/16 v2, 0x3a

    .line 5
    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ltz v2, :cond_0

    .line 11
    .line 12
    add-int/lit8 v1, v2, 0x1

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :cond_0
    const/16 v2, 0x3b

    .line 31
    .line 32
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ltz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    :goto_0
    new-instance v2, Lcom/hierynomus/smbj/auth/AuthenticationContext;

    .line 51
    .line 52
    invoke-direct {v2, p1, v1, v0}, Lcom/hierynomus/smbj/auth/AuthenticationContext;-><init>(Ljava/lang/String;[CLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v2
.end method

.method private static userInfo(Ljava/net/URI;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method


# virtual methods
.method public varargs checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/hierynomus/smbfs/SmbPath;->requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/hierynomus/smbfs/SmbPath;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/hierynomus/smbfs/SmbFileSystem;->checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public varargs copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1}, Lcom/hierynomus/smbfs/SmbPath;->requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {p2}, Lcom/hierynomus/smbfs/SmbPath;->requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v2}, Lcom/hierynomus/smbfs/SmbPath;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v3}, Lcom/hierynomus/smbfs/SmbPath;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    if-ne v4, v5, :cond_1

    .line 20
    .line 21
    array-length p1, p3

    .line 22
    if-gtz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v4, v2, v3}, Lcom/hierynomus/smbfs/SmbFileSystem;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    throw p1

    .line 33
    :cond_1
    new-array v2, v1, [Ljava/nio/file/OpenOption;

    .line 34
    .line 35
    invoke-static {p1, v2}, Landroidx/media3/exoplayer/video/i;->a(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :try_start_0
    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/video/i;->n(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void

    .line 48
    :catchall_0
    move-exception p2

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_1
    move-exception p1

    .line 56
    const-class p3, Ljava/lang/Throwable;

    .line 57
    .line 58
    :try_start_2
    const-string v2, "addSuppressed"

    .line 59
    .line 60
    new-array v3, v0, [Ljava/lang/Class;

    .line 61
    .line 62
    aput-object p3, v3, v1

    .line 63
    .line 64
    invoke-virtual {p3, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object p1, v0, v1

    .line 71
    .line 72
    invoke-virtual {p3, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    .line 74
    .line 75
    :catch_0
    :cond_3
    :goto_1
    throw p2
.end method

.method public varargs createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 2
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
    invoke-static {p1}, Lcom/hierynomus/smbfs/SmbPath;->requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, p2

    .line 6
    if-gtz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/hierynomus/smbfs/SmbPath;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/hierynomus/smbfs/SmbFileSystem;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    throw p1
.end method

.method public delete(Ljava/nio/file/Path;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/hierynomus/smbfs/SmbPath;->requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/hierynomus/smbfs/SmbPath;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/hierynomus/smbfs/SmbFileSystem;->delete(Lcom/hierynomus/smbfs/SmbPath;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public varargs getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class<",
            "TV;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    throw p1
.end method

.method public getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;
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

.method public getFileSystem(Ljava/net/URI;)Lcom/hierynomus/smbfs/SmbFileSystem;
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->getKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->fileSystems:Ljava/util/Map;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->fileSystems:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->fileSystems:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hierynomus/smbfs/SmbFileSystem;

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/nio/file/FileSystemNotFoundException;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/nio/file/FileSystemNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->getFileSystem(Ljava/net/URI;)Lcom/hierynomus/smbfs/SmbFileSystem;

    move-result-object p1

    return-object p1
.end method

.method public getPath(Ljava/net/URI;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->getFileSystem(Ljava/net/URI;)Lcom/hierynomus/smbfs/SmbFileSystem;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/hierynomus/smbfs/SmbFileSystem;->share()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/hierynomus/smbfs/SmbFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/hierynomus/smbfs/SmbFileSystem;->root()Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPath(Ljava/net/URI;)Ljava/nio/file/Path;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->getPath(Ljava/net/URI;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "smb"

    .line 2
    .line 3
    return-object v0
.end method

.method public isHidden(Ljava/nio/file/Path;)Z
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

.method public isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
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

.method public varargs move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p1}, Lcom/hierynomus/smbfs/SmbPath;->requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-static {p2}, Lcom/hierynomus/smbfs/SmbPath;->requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v2}, Lcom/hierynomus/smbfs/SmbPath;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v3}, Lcom/hierynomus/smbfs/SmbPath;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    if-ne v4, v5, :cond_1

    .line 20
    .line 21
    array-length p1, p3

    .line 22
    if-gtz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v4, v2, v3}, Lcom/hierynomus/smbfs/SmbFileSystem;->move(Lcom/hierynomus/smbfs/SmbPath;Lcom/hierynomus/smbfs/SmbPath;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    throw p1

    .line 33
    :cond_1
    new-array v3, v1, [Ljava/nio/file/OpenOption;

    .line 34
    .line 35
    invoke-static {p1, v3}, Landroidx/media3/exoplayer/video/i;->a(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :try_start_0
    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/video/i;->n(Ljava/io/InputStream;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-virtual {v4, v2}, Lcom/hierynomus/smbfs/SmbFileSystem;->delete(Lcom/hierynomus/smbfs/SmbPath;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :catchall_0
    move-exception p2

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    const-class p3, Ljava/lang/Throwable;

    .line 60
    .line 61
    :try_start_2
    const-string v2, "addSuppressed"

    .line 62
    .line 63
    new-array v3, v0, [Ljava/lang/Class;

    .line 64
    .line 65
    aput-object p3, v3, v1

    .line 66
    .line 67
    invoke-virtual {p3, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object p1, v0, v1

    .line 74
    .line 75
    invoke-virtual {p3, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    .line 77
    .line 78
    :catch_0
    :cond_3
    :goto_1
    throw p2
.end method

.method public varargs newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .locals 1
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
    invoke-static {p1}, Lcom/hierynomus/smbfs/SmbPath;->requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/hierynomus/smbfs/SmbPath;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/hierynomus/smbfs/SmbFileSystem;->newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .locals 1
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
    invoke-static {p1}, Lcom/hierynomus/smbfs/SmbPath;->requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/hierynomus/smbfs/SmbPath;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/hierynomus/smbfs/SmbFileSystem;->newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public newFileSystem(Ljava/net/URI;Ljava/util/Map;)Lcom/hierynomus/smbfs/SmbFileSystem;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/hierynomus/smbfs/SmbFileSystem;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->getKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->fileSystems:Ljava/util/Map;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->fileSystems:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->createAuthenticationContext(Ljava/net/URI;Ljava/util/Map;)Lcom/hierynomus/smbj/auth/AuthenticationContext;

    move-result-object v7

    .line 6
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v2

    if-gez v2, :cond_0

    const/16 v2, 0x1bd

    const/16 v6, 0x1bd

    goto :goto_0

    :cond_0
    move v6, v2

    .line 7
    :goto_0
    invoke-direct {p0, p2}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->extractDfsEnabled(Ljava/util/Map;)Z

    move-result v9

    .line 8
    iget-object v3, p0, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->factory:Lcom/hierynomus/smbfs/SmbFileSystemProvider$Factory;

    invoke-direct {p0, p1}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->extractHost(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->extractShareName(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v8

    move-object v4, p0

    invoke-interface/range {v3 .. v9}, Lcom/hierynomus/smbfs/SmbFileSystemProvider$Factory;->create(Lcom/hierynomus/smbfs/SmbFileSystemProvider;Ljava/lang/String;ILcom/hierynomus/smbj/auth/AuthenticationContext;Ljava/lang/String;Z)Lcom/hierynomus/smbfs/SmbFileSystem;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->fileSystems:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Ljava/nio/file/FileSystemAlreadyExistsException;

    invoke-direct {p1, v0}, Ljava/nio/file/FileSystemAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->newFileSystem(Ljava/net/URI;Ljava/util/Map;)Lcom/hierynomus/smbfs/SmbFileSystem;

    move-result-object p1

    return-object p1
.end method

.method public varargs readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class<",
            "TA;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TA;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/hierynomus/smbfs/SmbPath;->requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p3

    invoke-virtual {p3}, Lcom/hierynomus/smbfs/SmbPath;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    move-result-object p3

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/hierynomus/smbfs/SmbFileSystem;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public varargs readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    move-result-object p1

    throw p1
.end method

.method public removeFileSystem(Lcom/hierynomus/smbfs/SmbFileSystem;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->fileSystems:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->fileSystems:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-ne v3, p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/hierynomus/smbfs/SmbFileSystemProvider;->fileSystems:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_2

    .line 49
    :goto_1
    throw p1

    .line 50
    :goto_2
    goto :goto_1
.end method

.method public varargs setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)V
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
