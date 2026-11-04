.class public final synthetic Ly1/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/video/x;


# instance fields
.field public final synthetic a:Ly1/f0;

.field public final synthetic b:Landroidx/media3/exoplayer/video/x;


# direct methods
.method public synthetic constructor <init>(Ly1/f0;Landroidx/media3/exoplayer/video/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/z;->a:Ly1/f0;

    iput-object p2, p0, Ly1/z;->b:Landroidx/media3/exoplayer/video/x;

    return-void
.end method


# virtual methods
.method public final c(JJLr1/p;Landroid/media/MediaFormat;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ly1/z;->a:Ly1/f0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ly1/z;->b:Landroidx/media3/exoplayer/video/x;

    .line 7
    .line 8
    move-wide v2, p1

    .line 9
    move-wide v4, p3

    .line 10
    move-object v6, p5

    .line 11
    move-object v7, p6

    .line 12
    invoke-interface/range {v1 .. v7}, Landroidx/media3/exoplayer/video/x;->c(JJLr1/p;Landroid/media/MediaFormat;)V

    .line 13
    .line 14
    .line 15
    move-wide v1, p1

    .line 16
    move-wide v3, p3

    .line 17
    move-object v5, p5

    .line 18
    move-object v6, p6

    .line 19
    invoke-virtual/range {v0 .. v6}, Ly1/f0;->c(JJLr1/p;Landroid/media/MediaFormat;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
