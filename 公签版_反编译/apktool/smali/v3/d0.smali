.class public final Lv3/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/window/SurfaceSyncGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lv3/d0;Landroid/view/SurfaceView;Lua/g8;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Landroid/window/SurfaceSyncGroup;

    .line 12
    .line 13
    const-string v1, "exo-sync-b-334901521"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lv3/d0;->a:Landroid/window/SurfaceSyncGroup;

    .line 19
    .line 20
    new-instance p0, Lcom/gj/server/a;

    .line 21
    .line 22
    const/4 v1, 0x7

    .line 23
    invoke-direct {p0, v1}, Lcom/gj/server/a;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p0}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/AttachedSurfaceControl;Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-static {p0}, La9/o;->t(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lua/g8;->run()V

    .line 34
    .line 35
    .line 36
    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    .line 37
    .line 38
    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, p0}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method
