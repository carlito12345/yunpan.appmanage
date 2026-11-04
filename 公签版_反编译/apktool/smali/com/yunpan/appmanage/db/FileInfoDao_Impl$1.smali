.class Lcom/yunpan/appmanage/db/FileInfoDao_Impl$1;
.super Landroidx/room/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunpan/appmanage/db/FileInfoDao_Impl;-><init>(Landroidx/room/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/e;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunpan/appmanage/db/FileInfoDao_Impl;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/db/FileInfoDao_Impl;Landroidx/room/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$1;->this$0:Lcom/yunpan/appmanage/db/FileInfoDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/e;-><init>(Landroidx/room/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bind(Lc4/e;Lcom/yunpan/appmanage/db/FileInfo;)V
    .locals 4

    .line 2
    iget-object v0, p2, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lc4/c;->y(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Lc4/c;->e(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object v0, p2, Lcom/yunpan/appmanage/db/FileInfo;->name:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lc4/c;->y(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1, v1, v0}, Lc4/c;->e(ILjava/lang/String;)V

    .line 8
    :goto_1
    iget-object v0, p2, Lcom/yunpan/appmanage/db/FileInfo;->parent:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Lc4/c;->y(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {p1, v1, v0}, Lc4/c;->e(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x4

    .line 11
    iget-wide v1, p2, Lcom/yunpan/appmanage/db/FileInfo;->size:J

    invoke-interface {p1, v0, v1, v2}, Lc4/c;->m(IJ)V

    .line 12
    iget-object v0, p2, Lcom/yunpan/appmanage/db/FileInfo;->link:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 13
    invoke-interface {p1, v1}, Lc4/c;->y(I)V

    goto :goto_3

    .line 14
    :cond_3
    invoke-interface {p1, v1, v0}, Lc4/c;->e(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x6

    .line 15
    iget-wide v1, p2, Lcom/yunpan/appmanage/db/FileInfo;->lastModified:J

    invoke-interface {p1, v0, v1, v2}, Lc4/c;->m(IJ)V

    .line 16
    iget-boolean v0, p2, Lcom/yunpan/appmanage/db/FileInfo;->isDir:Z

    const/4 v1, 0x7

    int-to-long v2, v0

    .line 17
    invoke-interface {p1, v1, v2, v3}, Lc4/c;->m(IJ)V

    .line 18
    iget-boolean p2, p2, Lcom/yunpan/appmanage/db/FileInfo;->isExist:Z

    const/16 v0, 0x8

    int-to-long v1, p2

    .line 19
    invoke-interface {p1, v0, v1, v2}, Lc4/c;->m(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Lc4/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/yunpan/appmanage/db/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$1;->bind(Lc4/e;Lcom/yunpan/appmanage/db/FileInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `fileList` (`path`,`name`,`parent`,`size`,`link`,`lastModified`,`isDir`,`isExist`) VALUES (?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method
