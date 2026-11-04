.class public Lcom/yunpan/appmanage/db/FileInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public isDir:Z

.field public isExist:Z

.field public lastModified:J

.field public link:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public parent:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/yunpan/appmanage/db/FileInfo;->isExist:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/yunpan/appmanage/db/FileInfo;->path:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/yunpan/appmanage/db/FileInfo;->name:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/yunpan/appmanage/db/FileInfo;->parent:Ljava/lang/String;

    .line 12
    .line 13
    iput-wide p4, p0, Lcom/yunpan/appmanage/db/FileInfo;->size:J

    .line 14
    .line 15
    iput-object p6, p0, Lcom/yunpan/appmanage/db/FileInfo;->link:Ljava/lang/String;

    .line 16
    .line 17
    iput-wide p7, p0, Lcom/yunpan/appmanage/db/FileInfo;->lastModified:J

    .line 18
    .line 19
    iput-boolean p9, p0, Lcom/yunpan/appmanage/db/FileInfo;->isDir:Z

    .line 20
    .line 21
    return-void
.end method
