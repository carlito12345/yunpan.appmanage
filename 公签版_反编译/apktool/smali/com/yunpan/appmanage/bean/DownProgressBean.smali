.class public Lcom/yunpan/appmanage/bean/DownProgressBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bfb:I

.field public downSize:J

.field public fileSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/yunpan/appmanage/bean/DownProgressBean;->fileSize:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/yunpan/appmanage/bean/DownProgressBean;->downSize:J

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/yunpan/appmanage/bean/DownProgressBean;->bfb:I

    .line 12
    .line 13
    return-void
.end method
