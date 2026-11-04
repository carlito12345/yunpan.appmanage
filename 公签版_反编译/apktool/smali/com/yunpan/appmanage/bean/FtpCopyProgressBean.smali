.class public Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public failurePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/bean/WpPathBean;",
            ">;"
        }
    .end annotation
.end field

.field public filePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/bean/WpPathBean;",
            ">;"
        }
    .end annotation
.end field

.field public file_count:I

.field public file_success:Ljava/util/concurrent/atomic/AtomicInteger;

.field public isStop:Z

.field public paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yunpan/appmanage/bean/WpPathBean;",
            ">;"
        }
    .end annotation
.end field

.field public rootDirPath_form:Ljava/lang/String;

.field public rootDirPath_to:Ljava/lang/String;

.field public size_count:Ljava/util/concurrent/atomic/AtomicLong;

.field public size_success:Ljava/util/concurrent/atomic/AtomicLong;

.field public taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public userInfo:Lx9/n5;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_count:I

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->file_success:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 20
    .line 21
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_success:Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->failurePaths:Ljava/util/List;

    .line 43
    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->taskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    .line 51
    return-void
.end method
