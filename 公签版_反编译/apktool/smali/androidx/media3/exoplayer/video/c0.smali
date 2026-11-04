.class public final synthetic Landroidx/media3/exoplayer/video/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/video/c0;->a:I

    iput-object p2, p0, Landroidx/media3/exoplayer/video/c0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/c0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/video/c0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/video/v;

    .line 9
    .line 10
    iget v1, v0, Landroidx/media3/exoplayer/video/v;->m:I

    .line 11
    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    iput v1, v0, Landroidx/media3/exoplayer/video/v;->m:I

    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/c0;->b:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroidx/media3/exoplayer/video/d;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/media3/exoplayer/video/d;->h:Landroidx/media3/exoplayer/video/h0;

    .line 22
    .line 23
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/h0;->s()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/c0;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33;

    .line 30
    .line 31
    invoke-static {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33;->a(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
