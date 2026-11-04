.class Lcom/yunpan/appmanage/db/AppDao_Impl$1;
.super Landroidx/room/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunpan/appmanage/db/AppDao_Impl;-><init>(Landroidx/room/p;)V
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
.field final synthetic this$0:Lcom/yunpan/appmanage/db/AppDao_Impl;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/db/AppDao_Impl;Landroidx/room/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/db/AppDao_Impl$1;->this$0:Lcom/yunpan/appmanage/db/AppDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/e;-><init>(Landroidx/room/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bind(Lc4/e;Lcom/yunpan/appmanage/db/AppBean;)V
    .locals 4

    .line 2
    iget-object v0, p2, Lcom/yunpan/appmanage/db/AppBean;->name:Ljava/lang/String;

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
    iget-object v0, p2, Lcom/yunpan/appmanage/db/AppBean;->pack:Ljava/lang/String;

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
    iget-object v0, p2, Lcom/yunpan/appmanage/db/AppBean;->apkPath:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Lc4/c;->y(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {p1, v1, v0}, Lc4/c;->e(ILjava/lang/String;)V

    .line 11
    :goto_2
    iget-object v0, p2, Lcom/yunpan/appmanage/db/AppBean;->apkParentPath:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 12
    invoke-interface {p1, v1}, Lc4/c;->y(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-interface {p1, v1, v0}, Lc4/c;->e(ILjava/lang/String;)V

    .line 14
    :goto_3
    iget-object v0, p2, Lcom/yunpan/appmanage/db/AppBean;->dataDir:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 15
    invoke-interface {p1, v1}, Lc4/c;->y(I)V

    goto :goto_4

    .line 16
    :cond_4
    invoke-interface {p1, v1, v0}, Lc4/c;->e(ILjava/lang/String;)V

    .line 17
    :goto_4
    iget v0, p2, Lcom/yunpan/appmanage/db/AppBean;->uid:I

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Lc4/c;->m(IJ)V

    .line 18
    iget-boolean v0, p2, Lcom/yunpan/appmanage/db/AppBean;->isSystem:Z

    const/4 v1, 0x7

    int-to-long v2, v0

    .line 19
    invoke-interface {p1, v1, v2, v3}, Lc4/c;->m(IJ)V

    .line 20
    iget-boolean v0, p2, Lcom/yunpan/appmanage/db/AppBean;->isHide:Z

    const/16 v1, 0x8

    int-to-long v2, v0

    .line 21
    invoke-interface {p1, v1, v2, v3}, Lc4/c;->m(IJ)V

    .line 22
    iget-boolean v0, p2, Lcom/yunpan/appmanage/db/AppBean;->isDisable:Z

    const/16 v1, 0x9

    int-to-long v2, v0

    .line 23
    invoke-interface {p1, v1, v2, v3}, Lc4/c;->m(IJ)V

    .line 24
    iget-boolean v0, p2, Lcom/yunpan/appmanage/db/AppBean;->isCanStart:Z

    const/16 v1, 0xa

    int-to-long v2, v0

    .line 25
    invoke-interface {p1, v1, v2, v3}, Lc4/c;->m(IJ)V

    .line 26
    iget-boolean p2, p2, Lcom/yunpan/appmanage/db/AppBean;->isUnInstall:Z

    const/16 v0, 0xb

    int-to-long v1, p2

    .line 27
    invoke-interface {p1, v0, v1, v2}, Lc4/c;->m(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Lc4/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/yunpan/appmanage/db/AppBean;

    invoke-virtual {p0, p1, p2}, Lcom/yunpan/appmanage/db/AppDao_Impl$1;->bind(Lc4/e;Lcom/yunpan/appmanage/db/AppBean;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "INSERT OR REPLACE INTO `app` (`name`,`pack`,`apkPath`,`apkParentPath`,`dataDir`,`uid`,`isSystem`,`isHide`,`isDisable`,`isCanStart`,`isUnInstall`) VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method
