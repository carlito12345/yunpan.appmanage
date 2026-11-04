.class Lcom/hierynomus/smbfs/SmbFileSystemProvider$FactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hierynomus/smbfs/SmbFileSystemProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hierynomus/smbfs/SmbFileSystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FactoryImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hierynomus/smbfs/SmbFileSystemProvider$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hierynomus/smbfs/SmbFileSystemProvider$FactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/hierynomus/smbfs/SmbFileSystemProvider;Ljava/lang/String;ILcom/hierynomus/smbj/auth/AuthenticationContext;Ljava/lang/String;Z)Lcom/hierynomus/smbfs/SmbFileSystem;
    .locals 2

    .line 1
    invoke-static {}, Lcom/hierynomus/smbj/SmbConfig;->builder()Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p6}, Lcom/hierynomus/smbj/SmbConfig$Builder;->withDfsEnabled(Z)Lcom/hierynomus/smbj/SmbConfig$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p6

    .line 9
    invoke-virtual {p6}, Lcom/hierynomus/smbj/SmbConfig$Builder;->build()Lcom/hierynomus/smbj/SmbConfig;

    .line 10
    .line 11
    .line 12
    move-result-object p6

    .line 13
    new-instance v0, Lcom/hierynomus/smbfs/ShareSourceImpl;

    .line 14
    .line 15
    new-instance v1, Lcom/hierynomus/smbj/SMBClient;

    .line 16
    .line 17
    invoke-direct {v1, p6}, Lcom/hierynomus/smbj/SMBClient;-><init>(Lcom/hierynomus/smbj/SmbConfig;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, p2, p3, p4}, Lcom/hierynomus/smbfs/ShareSourceImpl;-><init>(Lcom/hierynomus/smbj/SMBClient;Ljava/lang/String;ILcom/hierynomus/smbj/auth/AuthenticationContext;)V

    .line 21
    .line 22
    .line 23
    new-instance p2, Lcom/hierynomus/smbfs/SmbFileSystem;

    .line 24
    .line 25
    invoke-direct {p2, p1, v0, p5}, Lcom/hierynomus/smbfs/SmbFileSystem;-><init>(Lcom/hierynomus/smbfs/SmbFileSystemProvider;Lcom/hierynomus/smbfs/ShareSource;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object p2
.end method
