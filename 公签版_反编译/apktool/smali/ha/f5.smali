.class public final Lha/f5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lha/j5;


# direct methods
.method public synthetic constructor <init>(Lha/j5;IIII)V
    .locals 0

    .line 1
    iput p5, p0, Lha/f5;->a:I

    iput-object p1, p0, Lha/f5;->e:Lha/j5;

    iput p2, p0, Lha/f5;->b:I

    iput p3, p0, Lha/f5;->c:I

    iput p4, p0, Lha/f5;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget p1, p0, Lha/f5;->a:I

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    .line 1
    iget v0, p0, Lha/f5;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lha/f5;->e:Lha/j5;

    .line 7
    .line 8
    iget-object v1, v0, Lha/j5;->h:Landroid/media/projection/MediaProjection;

    .line 9
    .line 10
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget v2, p0, Lha/f5;->c:I

    .line 15
    .line 16
    iget v3, p0, Lha/f5;->d:I

    .line 17
    .line 18
    iget v4, p0, Lha/f5;->b:I

    .line 19
    .line 20
    invoke-static {v1, v4, v2, v3, p1}, Lg7/d;->m(Landroid/media/projection/MediaProjection;IIILandroid/view/Surface;)Landroid/hardware/display/VirtualDisplay;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, v0, Lha/j5;->j:Landroid/hardware/display/VirtualDisplay;

    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lha/f5;->e:Lha/j5;

    .line 28
    .line 29
    iget-object v1, v0, Lha/j5;->h:Landroid/media/projection/MediaProjection;

    .line 30
    .line 31
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget v2, p0, Lha/f5;->c:I

    .line 36
    .line 37
    iget v3, p0, Lha/f5;->d:I

    .line 38
    .line 39
    iget v4, p0, Lha/f5;->b:I

    .line 40
    .line 41
    invoke-static {v1, v4, v2, v3, p1}, Lg7/d;->m(Landroid/media/projection/MediaProjection;IIILandroid/view/Surface;)Landroid/hardware/display/VirtualDisplay;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, v0, Lha/j5;->j:Landroid/hardware/display/VirtualDisplay;

    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_1
    iget-object v0, p0, Lha/f5;->e:Lha/j5;

    .line 49
    .line 50
    iget-object v1, v0, Lha/j5;->h:Landroid/media/projection/MediaProjection;

    .line 51
    .line 52
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget v2, p0, Lha/f5;->c:I

    .line 57
    .line 58
    iget v3, p0, Lha/f5;->d:I

    .line 59
    .line 60
    iget v4, p0, Lha/f5;->b:I

    .line 61
    .line 62
    invoke-static {v1, v4, v2, v3, p1}, Lg7/d;->m(Landroid/media/projection/MediaProjection;IIILandroid/view/Surface;)Landroid/hardware/display/VirtualDisplay;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, v0, Lha/j5;->j:Landroid/hardware/display/VirtualDisplay;

    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iget p1, p0, Lha/f5;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/f5;->e:Lha/j5;

    .line 7
    .line 8
    iget-object p1, p1, Lha/j5;->j:Landroid/hardware/display/VirtualDisplay;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lcom/hierynomus/security/jce/a;->p(Landroid/hardware/display/VirtualDisplay;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void

    .line 16
    :pswitch_0
    iget-object p1, p0, Lha/f5;->e:Lha/j5;

    .line 17
    .line 18
    iget-object p1, p1, Lha/j5;->j:Landroid/hardware/display/VirtualDisplay;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Lcom/hierynomus/security/jce/a;->p(Landroid/hardware/display/VirtualDisplay;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void

    .line 26
    :pswitch_1
    iget-object p1, p0, Lha/f5;->e:Lha/j5;

    .line 27
    .line 28
    iget-object p1, p1, Lha/j5;->j:Landroid/hardware/display/VirtualDisplay;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-static {p1}, Lcom/hierynomus/security/jce/a;->p(Landroid/hardware/display/VirtualDisplay;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
