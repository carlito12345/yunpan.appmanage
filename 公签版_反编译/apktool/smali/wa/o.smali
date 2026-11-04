.class public final synthetic Lwa/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Lwa/s;

.field public final synthetic b:Landroid/media/AudioManager;


# direct methods
.method public synthetic constructor <init>(Lwa/s;Landroid/media/AudioManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwa/o;->a:Lwa/s;

    iput-object p2, p0, Lwa/o;->b:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lwa/o;->a:Lwa/s;

    .line 2
    .line 3
    iget-object v1, v0, Lwa/s;->K:Landroid/media/audiofx/LoudnessEnhancer;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-static {v1}, Lcom/hierynomus/security/jce/a;->r(Landroid/media/audiofx/LoudnessEnhancer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    iput-object v2, v0, Lwa/s;->K:Landroid/media/audiofx/LoudnessEnhancer;

    .line 12
    .line 13
    :cond_0
    iget v1, v0, Lwa/s;->J:I

    .line 14
    .line 15
    if-ltz v1, :cond_2

    .line 16
    .line 17
    iget v3, v0, Lwa/s;->I:I

    .line 18
    .line 19
    if-ltz v3, :cond_2

    .line 20
    .line 21
    const/16 v4, 0x64

    .line 22
    .line 23
    if-lt v3, v4, :cond_1

    .line 24
    .line 25
    sget-object v5, Lcom/yunpan/appmanage/carsdk/j0;->a:Lcom/yunpan/appmanage/carsdk/k0;

    .line 26
    .line 27
    sub-int/2addr v3, v4

    .line 28
    invoke-virtual {v5, v3, v1}, Lcom/yunpan/appmanage/carsdk/k0;->h(II)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v4, p0, Lwa/o;->b:Landroid/media/AudioManager;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-virtual {v4, v3, v1, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 36
    .line 37
    .line 38
    :goto_0
    const/4 v1, -0x1

    .line 39
    iput v1, v0, Lwa/s;->I:I

    .line 40
    .line 41
    iput v1, v0, Lwa/s;->J:I

    .line 42
    .line 43
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 v3, 0x15

    .line 46
    .line 47
    if-lt v1, v3, :cond_3

    .line 48
    .line 49
    iget-object v1, v0, Lwa/s;->B:Landroid/media/session/MediaController;

    .line 50
    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-static {v1}, Lt0/e;->d(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$TransportControls;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Lt0/e;->D(Landroid/media/session/MediaController$TransportControls;)V

    .line 58
    .line 59
    .line 60
    iput-object v2, v0, Lwa/s;->B:Landroid/media/session/MediaController;

    .line 61
    .line 62
    :cond_3
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lwa/s;->e()V

    .line 66
    .line 67
    .line 68
    return-void
.end method
