.class public final Lcom/hierynomus/smbfs/SmbPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/file/Path;


# static fields
.field public static final SEPARATOR:C = '\\'


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

.field private final root:Lcom/hierynomus/smbfs/SmbPath;


# direct methods
.method private constructor <init>(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/smbfs/SmbPath;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hierynomus/smbfs/SmbFileSystem;",
            "Lcom/hierynomus/smbfs/SmbPath;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hierynomus/smbfs/SmbPath;->fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/hierynomus/smbfs/SmbPath;->root:Lcom/hierynomus/smbfs/SmbPath;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(Lcom/hierynomus/smbfs/SmbPath;I)Ljava/nio/file/Path;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->lambda$iterator$0(I)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method private differentFileSystem(Ljava/nio/file/Path;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/video/i;->f(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method private isChild()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method private isRoot()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method private synthetic lambda$iterator$0(I)Ljava/nio/file/Path;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->getName(I)Lcom/hierynomus/smbfs/SmbPath;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private numberOfMatchingElements(Lcom/hierynomus/smbfs/SmbPath;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getRoot()Lcom/hierynomus/smbfs/SmbPath;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/hierynomus/smbfs/SmbPath;->getRoot()Lcom/hierynomus/smbfs/SmbPath;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 p1, -0x1

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getNameCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Lcom/hierynomus/smbfs/SmbPath;->getNameCount()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    if-ge v1, v0, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p1, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    return v1

    .line 49
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return v0
.end method

.method public static of(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/smbfs/SmbPath;Ljava/lang/String;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 0

    .line 5
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/hierynomus/smbfs/SmbPath;->of(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/smbfs/SmbPath;Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p0

    return-object p0
.end method

.method public static of(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/smbfs/SmbPath;Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hierynomus/smbfs/SmbFileSystem;",
            "Lcom/hierynomus/smbfs/SmbPath;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hierynomus/smbfs/SmbPath;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 4
    :cond_1
    new-instance v0, Lcom/hierynomus/smbfs/SmbPath;

    invoke-direct {v0, p0, p1, p2}, Lcom/hierynomus/smbfs/SmbPath;-><init>(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/smbfs/SmbPath;Ljava/util/List;)V

    return-object v0
.end method

.method public static parse(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/smbfs/SmbPath;Ljava/lang/String;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v1, "\\\\"

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, p1, v0}, Lcom/hierynomus/smbfs/SmbPath;->of(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/smbfs/SmbPath;Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 1

    .line 1
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Lcom/hierynomus/smbfs/SmbPath;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Lcom/hierynomus/smbfs/SmbPath;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p0, Ljava/nio/file/ProviderMismatchException;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public static root(Lcom/hierynomus/smbfs/SmbFileSystem;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 2

    .line 1
    new-instance v0, Lcom/hierynomus/smbfs/SmbPath;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1, v1}, Lcom/hierynomus/smbfs/SmbPath;-><init>(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/smbfs/SmbPath;Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private withNoRoot(Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hierynomus/smbfs/SmbPath;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/hierynomus/smbfs/SmbPath;->of(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/smbfs/SmbPath;Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method private withSameRoot(Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hierynomus/smbfs/SmbPath;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbPath;->root:Lcom/hierynomus/smbfs/SmbPath;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/hierynomus/smbfs/SmbPath;->of(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/smbfs/SmbPath;Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private withThisRoot(Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hierynomus/smbfs/SmbPath;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->of(Lcom/hierynomus/smbfs/SmbFileSystem;Lcom/hierynomus/smbfs/SmbPath;Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/media3/exoplayer/video/i;->g(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->compareTo(Ljava/nio/file/Path;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/nio/file/Path;)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/video/i;->c(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 2

    .line 10
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/hierynomus/smbfs/SmbFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->endsWith(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public endsWith(Ljava/nio/file/Path;)Z
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->differentFileSystem(Ljava/nio/file/Path;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/hierynomus/smbfs/SmbPath;->requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getNameCount()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/hierynomus/smbfs/SmbPath;->getNameCount()I

    move-result v2

    if-le v2, v0, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-gt v4, v2, :cond_3

    .line 5
    iget-object v5, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    sub-int v6, v0, v4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    iget-object v6, p1, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    sub-int v7, v2, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ne v2, v0, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/hierynomus/smbfs/SmbPath;->getRoot()Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getRoot()Lcom/hierynomus/smbfs/SmbPath;

    move-result-object v0

    if-ne p1, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/hierynomus/smbfs/SmbPath;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/hierynomus/smbfs/SmbPath;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbPath;->fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/hierynomus/smbfs/SmbPath;->fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbPath;->root:Lcom/hierynomus/smbfs/SmbPath;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/hierynomus/smbfs/SmbPath;->root:Lcom/hierynomus/smbfs/SmbPath;

    .line 26
    .line 27
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    .line 36
    .line 37
    invoke-static {v1, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0
.end method

.method public getFileName()Lcom/hierynomus/smbfs/SmbPath;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getNameCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hierynomus/smbfs/SmbPath;->withNoRoot(Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getFileName()Ljava/nio/file/Path;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getFileName()Lcom/hierynomus/smbfs/SmbPath;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

    return-object v0
.end method

.method public bridge synthetic getFileSystem()Ljava/nio/file/FileSystem;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    move-result-object v0

    return-object v0
.end method

.method public getName(I)Lcom/hierynomus/smbfs/SmbPath;
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/hierynomus/smbfs/SmbPath;->isRoot()Z

    move-result v0

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->withNoRoot(Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getName(I)Ljava/nio/file/Path;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->getName(I)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1
.end method

.method public getNameCount()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hierynomus/smbfs/SmbPath;->isChild()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getParent()Lcom/hierynomus/smbfs/SmbPath;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getNameCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    const/4 v3, 0x0

    sub-int/2addr v0, v1

    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hierynomus/smbfs/SmbPath;->withSameRoot(Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->root:Lcom/hierynomus/smbfs/SmbPath;

    return-object v0
.end method

.method public bridge synthetic getParent()Ljava/nio/file/Path;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getParent()Lcom/hierynomus/smbfs/SmbPath;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/hierynomus/smbfs/SmbPath;
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/hierynomus/smbfs/SmbPath;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->root:Lcom/hierynomus/smbfs/SmbPath;

    return-object v0
.end method

.method public bridge synthetic getRoot()Ljava/nio/file/Path;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getRoot()Lcom/hierynomus/smbfs/SmbPath;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->fileSystem:Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbPath;->root:Lcom/hierynomus/smbfs/SmbPath;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v0, v3, v4

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aput-object v1, v3, v0

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    aput-object v2, v3, v0

    .line 18
    .line 19
    invoke-static {v3}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->root:Lcom/hierynomus/smbfs/SmbPath;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/hierynomus/smbfs/SmbPath;->isRoot()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getNameCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    invoke-static {v1, v0}, Lj$/util/stream/IntStream$-CC;->range(II)Lj$/util/stream/IntStream;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/hierynomus/smbfs/a;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, v2, p0}, Lcom/hierynomus/smbfs/a;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Lj$/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Lj$/util/stream/Stream;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Lj$/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public normalize()Lcom/hierynomus/smbfs/SmbPath;
    .locals 1

    .line 2
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic normalize()Ljava/nio/file/Path;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->normalize()Lcom/hierynomus/smbfs/SmbPath;

    move-result-object v0

    return-object v0
.end method

.method public varargs register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchService;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;)",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/nio/file/WatchEvent$Modifier;

    invoke-virtual {p0, p1, p2, v0}, Lcom/hierynomus/smbfs/SmbPath;->register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;

    move-result-object p1

    return-object p1
.end method

.method public varargs register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchService;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .line 2
    instance-of p2, p1, Lcom/hierynomus/smbfs/SmbWatchService;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lcom/hierynomus/smbfs/SmbWatchService;

    invoke-virtual {p1, p0}, Lcom/hierynomus/smbfs/SmbWatchService;->register(Lcom/hierynomus/smbfs/SmbPath;)Ljava/nio/file/WatchKey;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Ljava/nio/file/ProviderMismatchException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/nio/file/ProviderMismatchException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public relativize(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 4

    .line 2
    invoke-static {p1}, Lcom/hierynomus/smbfs/SmbPath;->requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->numberOfMatchingElements(Lcom/hierynomus/smbfs/SmbPath;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getNameCount()I

    move-result v2

    :goto_0
    if-le v2, v0, :cond_0

    .line 6
    const-string v3, ".."

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/hierynomus/smbfs/SmbPath;->getNameCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 8
    iget-object v2, p1, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-direct {p0, v1}, Lcom/hierynomus/smbfs/SmbPath;->withNoRoot(Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public bridge synthetic relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->relativize(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Ljava/lang/String;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/hierynomus/smbfs/SmbFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->resolve(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 2

    .line 3
    invoke-static {p1}, Lcom/hierynomus/smbfs/SmbPath;->requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/hierynomus/smbfs/SmbPath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_1
    iget-object p1, p1, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    invoke-direct {p0}, Lcom/hierynomus/smbfs/SmbPath;->isRoot()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-direct {p0, v0}, Lcom/hierynomus/smbfs/SmbPath;->withThisRoot(Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1

    .line 11
    :cond_2
    invoke-direct {p0, v0}, Lcom/hierynomus/smbfs/SmbPath;->withSameRoot(Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resolve(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->resolve(Ljava/lang/String;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->resolve(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1
.end method

.method public resolveSibling(Ljava/lang/String;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 2

    .line 6
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/hierynomus/smbfs/SmbFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->resolveSibling(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1
.end method

.method public resolveSibling(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 2

    .line 3
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/i;->g(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lcom/hierynomus/smbfs/SmbPath;->requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getParent()Lcom/hierynomus/smbfs/SmbPath;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, p1}, Lcom/hierynomus/smbfs/SmbPath;->resolve(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->resolveSibling(Ljava/lang/String;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resolveSibling(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->resolveSibling(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getFileSystem()Lcom/hierynomus/smbfs/SmbFileSystem;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/hierynomus/smbfs/SmbFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->startsWith(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public startsWith(Ljava/nio/file/Path;)Z
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->differentFileSystem(Ljava/nio/file/Path;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/hierynomus/smbfs/SmbPath;->requireSmbPath(Ljava/nio/file/Path;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getRoot()Lcom/hierynomus/smbfs/SmbPath;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hierynomus/smbfs/SmbPath;->getRoot()Lcom/hierynomus/smbfs/SmbPath;

    move-result-object v2

    if-eq v0, v2, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/hierynomus/smbfs/SmbPath;->getNameCount()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->getNameCount()I

    move-result v2

    if-le v0, v2, :cond_2

    return v1

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->numberOfMatchingElements(Lcom/hierynomus/smbfs/SmbPath;)I

    move-result p1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public subpath(II)Lcom/hierynomus/smbfs/SmbPath;
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/hierynomus/smbfs/SmbPath;->isRoot()Z

    move-result v0

    if-nez v0, :cond_2

    if-ltz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-le p2, p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->withNoRoot(Ljava/util/List;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endIndex"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "beginIndex"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic subpath(II)Ljava/nio/file/Path;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hierynomus/smbfs/SmbPath;->subpath(II)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1
.end method

.method public toAbsolutePath()Lcom/hierynomus/smbfs/SmbPath;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No default dir"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic toAbsolutePath()Ljava/nio/file/Path;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->toAbsolutePath()Lcom/hierynomus/smbfs/SmbPath;

    move-result-object v0

    return-object v0
.end method

.method public toFile()Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "Path not associated with default file system"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public varargs toRealPath([Ljava/nio/file/LinkOption;)Lcom/hierynomus/smbfs/SmbPath;
    .locals 0

    .line 2
    invoke-static {}, Lcom/hierynomus/smbfs/ToBeImplementedException;->toBeImplemented()Lcom/hierynomus/smbfs/ToBeImplementedException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/hierynomus/smbfs/SmbPath;->toRealPath([Ljava/nio/file/LinkOption;)Lcom/hierynomus/smbfs/SmbPath;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "\\"

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/hierynomus/smbfs/SmbPath;->isAbsolute()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x5c

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    :cond_1
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object v3, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ge v1, v3, :cond_3

    .line 32
    .line 33
    if-lez v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v3, p0, Lcom/hierynomus/smbfs/SmbPath;->elements:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method public toUri()Ljava/net/URI;
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
