.class Lcom/hierynomus/smbfs/FileTimes;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static fromSmb(Lcom/hierynomus/msdtyp/FileTime;)Ljava/nio/file/attribute/FileTime;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hierynomus/msdtyp/FileTime;->toEpochMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/i;->l(J)Ljava/nio/file/attribute/FileTime;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
