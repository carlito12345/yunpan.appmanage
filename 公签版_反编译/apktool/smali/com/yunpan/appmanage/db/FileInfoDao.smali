.class public interface abstract Lcom/yunpan/appmanage/db/FileInfoDao;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract delete(Lcom/yunpan/appmanage/db/FileInfo;)I
.end method

.method public abstract delete(Ljava/lang/String;)V
.end method

.method public abstract deleteAll()V
.end method

.method public abstract deleteDir(Ljava/lang/String;)V
.end method

.method public abstract deleteFromDirFile(Ljava/lang/String;)V
.end method

.method public abstract deleteNoExist()V
.end method

.method public abstract getAllKeyLogDirs(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllLogFiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCount()I
.end method

.method public abstract getCurrentDirPaths(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDirCount()I
.end method

.method public abstract getDirDirCount(Ljava/lang/String;)J
.end method

.method public abstract getDirFileCount(Ljava/lang/String;)J
.end method

.method public abstract getDirFiles(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDirFiles_noHide_sortName(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDirFiles_noHide_sortTime(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDirFiles_sortName(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDirFiles_sortTime(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDirSize(Ljava/lang/String;)J
.end method

.method public abstract getFileCount()I
.end method

.method public abstract getFileInfo(Ljava/lang/String;)Lcom/yunpan/appmanage/db/FileInfo;
.end method

.method public abstract insert(Lcom/yunpan/appmanage/db/FileInfo;)J
.end method

.method public abstract sqlQuery(Lc4/d;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc4/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/db/FileInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateAllIsDelete()I
.end method

.method public abstract updateIsExist(Ljava/lang/String;)V
.end method

.method public abstract updateNameAndPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract updatePathsRecursively(Ljava/lang/String;Ljava/lang/String;)I
.end method
