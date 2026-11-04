.class Lcom/yunpan/appmanage/db/FileInfoDao_Impl$8;
.super Landroidx/room/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunpan/appmanage/db/FileInfoDao_Impl;-><init>(Landroidx/room/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunpan/appmanage/db/FileInfoDao_Impl;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/db/FileInfoDao_Impl;Landroidx/room/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yunpan/appmanage/db/FileInfoDao_Impl$8;->this$0:Lcom/yunpan/appmanage/db/FileInfoDao_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/v;-><init>(Landroidx/room/p;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "delete from fileList where path=?"

    .line 2
    .line 3
    return-object v0
.end method
