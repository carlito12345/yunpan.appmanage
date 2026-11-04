.class public Lcom/yunpan/appmanage/bean/JcifsBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public client:Lcom/hierynomus/smbj/SMBClient;

.field public connection:Lcom/hierynomus/smbj/connection/Connection;

.field public in:Ljava/io/InputStream;

.field public session:Lcom/hierynomus/smbj/session/Session;

.field public share:Lcom/hierynomus/smbj/share/DiskShare;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/JcifsBean;->client:Lcom/hierynomus/smbj/SMBClient;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/JcifsBean;->connection:Lcom/hierynomus/smbj/connection/Connection;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/JcifsBean;->session:Lcom/hierynomus/smbj/session/Session;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/yunpan/appmanage/bean/JcifsBean;->share:Lcom/hierynomus/smbj/share/DiskShare;

    .line 12
    .line 13
    return-void
.end method
