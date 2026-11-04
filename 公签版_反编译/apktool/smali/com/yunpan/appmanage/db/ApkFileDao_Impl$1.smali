.class Lcom/yunpan/appmanage/db/ApkFileDao_Impl$1;
.super Landroidx/room/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunpan/appmanage/db/ApkFileDao_Impl;-><init>(Landroidx/room/p;)V
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
.field final synthetic this$0:Lcom/yunpan/appmanage/db/ApkFileDao_Impl;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/db/ApkFileDao_Impl;Landroidx/room/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/db/ApkFileDao_Impl$1;->this$0:Lcom/yunpan/appmanage/db/ApkFileDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/e;-><init>(Landroidx/room/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bind(Lc4/e;Lcom/yunpan/appmanage/db/ApkFileBean;)V
    .locals 3

    .line 2
    iget-object v0, p2, Lcom/yunpan/appmanage/db/ApkFileBean;->path:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lc4/c;->y(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v1, v0}, Lc4/c;->e(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 5
    iget-wide v1, p2, Lcom/yunpan/appmanage/db/ApkFileBean;->lastModified:J

    invoke-interface {p1, v0, v1, v2}, Lc4/c;->m(IJ)V

    .line 6
    iget-object v0, p2, Lcom/yunpan/appmanage/db/ApkFileBean;->apkName:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 7
    invoke-interface {p1, v1}, Lc4/c;->y(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {p1, v1, v0}, Lc4/c;->e(ILjava/lang/String;)V

    .line 9
    :goto_1
    iget-object v0, p2, Lcom/yunpan/appmanage/db/ApkFileBean;->packageName:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 10
    invoke-interface {p1, v1}, Lc4/c;->y(I)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-interface {p1, v1, v0}, Lc4/c;->e(ILjava/lang/String;)V

    .line 12
    :goto_2
    iget-object v0, p2, Lcom/yunpan/appmanage/db/ApkFileBean;->versionName:Ljava/lang/String;

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
    iget-wide v1, p2, Lcom/yunpan/appmanage/db/ApkFileBean;->versionCode:J

    invoke-interface {p1, v0, v1, v2}, Lc4/c;->m(IJ)V

    .line 16
    iget v0, p2, Lcom/yunpan/appmanage/db/ApkFileBean;->minSdk:I

    int-to-long v0, v0

    const/4 v2, 0x7

    invoke-interface {p1, v2, v0, v1}, Lc4/c;->m(IJ)V

    .line 17
    iget-object v0, p2, Lcom/yunpan/appmanage/db/ApkFileBean;->abi:Ljava/lang/String;

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 18
    invoke-interface {p1, v1}, Lc4/c;->y(I)V

    goto :goto_4

    .line 19
    :cond_4
    invoke-interface {p1, v1, v0}, Lc4/c;->e(ILjava/lang/String;)V

    :goto_4
    const/16 v0, 0x9

    .line 20
    iget-wide v1, p2, Lcom/yunpan/appmanage/db/ApkFileBean;->insertTime:J

    invoke-interface {p1, v0, v1, v2}, Lc4/c;->m(IJ)V

    .line 21
    iget-object v0, p2, Lcom/yunpan/appmanage/db/ApkFileBean;->sign:Ljava/lang/String;

    const/16 v1, 0xa

    if-nez v0, :cond_5

    .line 22
    invoke-interface {p1, v1}, Lc4/c;->y(I)V

    goto :goto_5

    .line 23
    :cond_5
    invoke-interface {p1, v1, v0}, Lc4/c;->e(ILjava/lang/String;)V

    .line 24
    :goto_5
    iget-boolean p2, p2, Lcom/yunpan/appmanage/db/ApkFileBean;->isSystemUid:Z

    const/16 v0, 0xb

    int-to-long v1, p2

    .line 25
    invoke-interface {p1, v0, v1, v2}, Lc4/c;->m(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Lc4/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/yunpan/appmanage/db/ApkFileBean;

    invoke-virtual {p0, p1, p2}, Lcom/yunpan/appmanage/db/ApkFileDao_Impl$1;->bind(Lc4/e;Lcom/yunpan/appmanage/db/ApkFileBean;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `apkFiles` (`path`,`lastModified`,`apkName`,`packageName`,`versionName`,`versionCode`,`minSdk`,`abi`,`insertTime`,`sign`,`isSystemUid`) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method
