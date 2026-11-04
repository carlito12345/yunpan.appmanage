.class Lcom/hierynomus/smbfs/SmbFileAttributes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributes;


# instance fields
.field private final fileInformation:Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;


# direct methods
.method public constructor <init>(Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/hierynomus/smbfs/SmbFileAttributes;->fileInformation:Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public creationTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileAttributes;->fileInformation:Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;->getBasicInformation()Lcom/hierynomus/msfscc/fileinformation/FileBasicInformation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/hierynomus/msfscc/fileinformation/FileBasicInformation;->getCreationTime()Lcom/hierynomus/msdtyp/FileTime;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/hierynomus/smbfs/FileTimes;->fromSmb(Lcom/hierynomus/msdtyp/FileTime;)Ljava/nio/file/attribute/FileTime;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public fileKey()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileAttributes;->fileInformation:Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;->getStandardInformation()Lcom/hierynomus/msfscc/fileinformation/FileStandardInformation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/hierynomus/msfscc/fileinformation/FileStandardInformation;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isOther()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRegularFile()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileAttributes;->fileInformation:Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;->getStandardInformation()Lcom/hierynomus/msfscc/fileinformation/FileStandardInformation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/hierynomus/msfscc/fileinformation/FileStandardInformation;->isDirectory()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    return v0
.end method

.method public isSymbolicLink()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lastAccessTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileAttributes;->fileInformation:Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;->getBasicInformation()Lcom/hierynomus/msfscc/fileinformation/FileBasicInformation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/hierynomus/msfscc/fileinformation/FileBasicInformation;->getLastAccessTime()Lcom/hierynomus/msdtyp/FileTime;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/hierynomus/smbfs/FileTimes;->fromSmb(Lcom/hierynomus/msdtyp/FileTime;)Ljava/nio/file/attribute/FileTime;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public lastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileAttributes;->fileInformation:Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;->getBasicInformation()Lcom/hierynomus/msfscc/fileinformation/FileBasicInformation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/hierynomus/msfscc/fileinformation/FileBasicInformation;->getLastWriteTime()Lcom/hierynomus/msdtyp/FileTime;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/hierynomus/smbfs/FileTimes;->fromSmb(Lcom/hierynomus/msdtyp/FileTime;)Ljava/nio/file/attribute/FileTime;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public size()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hierynomus/smbfs/SmbFileAttributes;->fileInformation:Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hierynomus/msfscc/fileinformation/FileAllInformation;->getStandardInformation()Lcom/hierynomus/msfscc/fileinformation/FileStandardInformation;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/hierynomus/msfscc/fileinformation/FileStandardInformation;->getEndOfFile()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method
