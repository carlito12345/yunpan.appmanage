.class Lcom/yunpan/appmanage/db/FileInfoDao_Impl$2;
.super Landroidx/room/d;
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
        "Landroidx/room/d;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunpan/appmanage/db/FileInfoDao_Impl;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/db/FileInfoDao_Impl;Landroidx/room/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$2;->this$0:Lcom/yunpan/appmanage/db/FileInfoDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/d;-><init>(Landroidx/room/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bind(Lc4/e;Lcom/yunpan/appmanage/db/FileInfo;)V
    .locals 1

    .line 2
    iget-object p2, p2, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lc4/c;->y(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v0, p2}, Lc4/c;->e(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic bind(Lc4/e;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/yunpan/appmanage/db/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$2;->bind(Lc4/e;Lcom/yunpan/appmanage/db/FileInfo;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM `fileList` WHERE `path` = ?"

    .line 2
    .line 3
    return-object v0
.end method
