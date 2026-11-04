.class public final Landroidx/media3/exoplayer/video/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/ContextWrapper;

.field public b:Z

.field public c:Ld2/m;

.field public d:J

.field public e:Landroid/os/Handler;

.field public f:Ly1/t;

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/j;->a:Landroid/content/ContextWrapper;

    .line 5
    .line 6
    new-instance v0, Lc2/b;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p1, v1}, Lc2/b;-><init>(Landroid/content/ContextWrapper;I)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/media3/exoplayer/video/j;->c:Ld2/m;

    .line 13
    .line 14
    return-void
.end method
