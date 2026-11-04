.class public Lcom/yunpan/appmanage/db/ApkFileBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public abi:Ljava/lang/String;

.field public apkName:Ljava/lang/String;

.field public insertTime:J

.field public isSystemUid:Z

.field public lastModified:J

.field public minSdk:I

.field public packageName:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public versionCode:J

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/yunpan/appmanage/db/ApkFileBean;->abi:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/yunpan/appmanage/db/ApkFileBean;->sign:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/yunpan/appmanage/db/ApkFileBean;->isSystemUid:Z

    .line 12
    .line 13
    return-void
.end method
