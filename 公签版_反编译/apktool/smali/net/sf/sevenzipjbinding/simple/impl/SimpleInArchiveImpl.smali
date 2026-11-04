.class public Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/sevenzipjbinding/simple/ISimpleInArchive;


# instance fields
.field private final sevenZipInArchive:Lnet/sf/sevenzipjbinding/IInArchive;

.field private wasClosed:Z


# direct methods
.method public constructor <init>(Lnet/sf/sevenzipjbinding/IInArchive;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->wasClosed:Z

    .line 6
    .line 7
    iput-object p1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->sevenZipInArchive:Lnet/sf/sevenzipjbinding/IInArchive;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->sevenZipInArchive:Lnet/sf/sevenzipjbinding/IInArchive;

    .line 2
    .line 3
    invoke-interface {v0}, Lnet/sf/sevenzipjbinding/IInArchive;->close()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->wasClosed:Z

    .line 8
    .line 9
    return-void
.end method

.method public getArchiveItem(I)Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->sevenZipInArchive:Lnet/sf/sevenzipjbinding/IInArchive;

    .line 4
    .line 5
    invoke-interface {v0}, Lnet/sf/sevenzipjbinding/IInArchive;->getNumberOfItems()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;-><init>(Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;I)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 18
    .line 19
    const-string v1, "Index "

    .line 20
    .line 21
    const-string v2, " is out of range. Number of items in archive: "

    .line 22
    .line 23
    invoke-static {v1, p1, v2}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v1, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->sevenZipInArchive:Lnet/sf/sevenzipjbinding/IInArchive;

    .line 28
    .line 29
    invoke-interface {v1}, Lnet/sf/sevenzipjbinding/IInArchive;->getNumberOfItems()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public getArchiveItems()[Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->getNumberOfItems()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [Lnet/sf/sevenzipjbinding/simple/ISimpleInArchiveItem;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    new-instance v3, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;

    .line 11
    .line 12
    invoke-direct {v3, p0, v2}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveItemImpl;-><init>(Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;I)V

    .line 13
    .line 14
    .line 15
    aput-object v3, v1, v2

    .line 16
    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-object v1
.end method

.method public getNumberOfItems()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lnet/sf/sevenzipjbinding/IInArchive;->getNumberOfItems()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public testAndGetSafeSevenZipInArchive()Lnet/sf/sevenzipjbinding/IInArchive;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->wasClosed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lnet/sf/sevenzipjbinding/simple/impl/SimpleInArchiveImpl;->sevenZipInArchive:Lnet/sf/sevenzipjbinding/IInArchive;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Lnet/sf/sevenzipjbinding/SevenZipException;

    .line 9
    .line 10
    const-string v1, "Archive was closed"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lnet/sf/sevenzipjbinding/SevenZipException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method
