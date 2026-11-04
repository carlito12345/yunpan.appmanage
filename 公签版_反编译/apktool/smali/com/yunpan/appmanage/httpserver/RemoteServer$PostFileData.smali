.class Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunpan/appmanage/httpserver/RemoteServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostFileData"
.end annotation


# instance fields
.field alreadyReadSize:J

.field fileLength:J

.field fileName:Ljava/lang/String;

.field fileSaveSize:J

.field fileType:Ljava/lang/String;

.field isStartReadFile:Z

.field isWindows:Z

.field ls_filePath:Ljava/lang/String;

.field outputStream:Ljava/io/OutputStream;

.field readSize:I

.field residualBuffer:[B

.field final synthetic this$0:Lcom/yunpan/appmanage/httpserver/RemoteServer;

.field toDir:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/yunpan/appmanage/httpserver/RemoteServer;)V
    .locals 3

    .line 2
    iput-object p1, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->this$0:Lcom/yunpan/appmanage/httpserver/RemoteServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->outputStream:Ljava/io/OutputStream;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isWindows:Z

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->toDir:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->ls_filePath:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileLength:J

    .line 9
    iput-wide v1, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileSaveSize:J

    .line 10
    iput-object v0, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->fileType:Ljava/lang/String;

    .line 11
    iput-wide v1, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->alreadyReadSize:J

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->readSize:I

    .line 13
    iput-object p1, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->residualBuffer:[B

    .line 14
    iput-boolean v0, p0, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;->isStartReadFile:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yunpan/appmanage/httpserver/RemoteServer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yunpan/appmanage/httpserver/RemoteServer$PostFileData;-><init>(Lcom/yunpan/appmanage/httpserver/RemoteServer;)V

    return-void
.end method
