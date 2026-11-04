.class public final synthetic Ld2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/media3/exoplayer/video/l;

.field public final synthetic c:Ld2/n;


# direct methods
.method public synthetic constructor <init>(Ld2/n;Landroidx/media3/exoplayer/video/l;I)V
    .locals 0

    .line 1
    iput p3, p0, Ld2/d;->a:I

    iput-object p1, p0, Ld2/d;->c:Ld2/n;

    iput-object p2, p0, Ld2/d;->b:Landroidx/media3/exoplayer/video/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 0

    .line 1
    iget p1, p0, Ld2/d;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ld2/d;->c:Ld2/n;

    .line 7
    .line 8
    check-cast p1, La2/g1;

    .line 9
    .line 10
    iget-object p4, p0, Ld2/d;->b:Landroidx/media3/exoplayer/video/l;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 p5, 0x1e

    .line 18
    .line 19
    if-ge p1, p5, :cond_0

    .line 20
    .line 21
    iget-object p1, p4, Landroidx/media3/exoplayer/video/l;->a:Landroid/os/Handler;

    .line 22
    .line 23
    const/16 p4, 0x20

    .line 24
    .line 25
    shr-long p4, p2, p4

    .line 26
    .line 27
    long-to-int p5, p4

    .line 28
    long-to-int p3, p2

    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-static {p1, p2, p5, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p4, p2, p3}, Landroidx/media3/exoplayer/video/l;->a(J)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object p1, p0, Ld2/d;->c:Ld2/n;

    .line 43
    .line 44
    check-cast p1, Ld2/f;

    .line 45
    .line 46
    iget-object p4, p0, Ld2/d;->b:Landroidx/media3/exoplayer/video/l;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 p5, 0x1e

    .line 54
    .line 55
    if-ge p1, p5, :cond_1

    .line 56
    .line 57
    iget-object p1, p4, Landroidx/media3/exoplayer/video/l;->a:Landroid/os/Handler;

    .line 58
    .line 59
    const/16 p4, 0x20

    .line 60
    .line 61
    shr-long p4, p2, p4

    .line 62
    .line 63
    long-to-int p5, p4

    .line 64
    long-to-int p3, p2

    .line 65
    const/4 p2, 0x0

    .line 66
    invoke-static {p1, p2, p5, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p4, p2, p3}, Landroidx/media3/exoplayer/video/l;->a(J)V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
