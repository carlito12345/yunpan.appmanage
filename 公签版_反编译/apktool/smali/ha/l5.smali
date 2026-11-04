.class public final Lha/l5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Landroid/view/SurfaceView;

.field public final synthetic b:Lha/m5;


# direct methods
.method public constructor <init>(Lha/m5;Landroid/view/SurfaceView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/l5;->b:Lha/m5;

    .line 2
    .line 3
    iput-object p2, p0, Lha/l5;->a:Landroid/view/SurfaceView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/l5;->a:Landroid/view/SurfaceView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lha/l5;->b:Lha/m5;

    .line 16
    .line 17
    iget-object v3, v2, Lha/m5;->k:Landroid/view/Display;

    .line 18
    .line 19
    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iput v3, v2, Lha/m5;->p:I

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iput v3, v2, Lha/m5;->q:I

    .line 33
    .line 34
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 35
    .line 36
    iput v3, v2, Lha/m5;->r:I

    .line 37
    .line 38
    iget v3, v2, Lha/m5;->p:I

    .line 39
    .line 40
    if-lez v3, :cond_0

    .line 41
    .line 42
    iget v3, v2, Lha/m5;->q:I

    .line 43
    .line 44
    if-gtz v3, :cond_1

    .line 45
    .line 46
    :cond_0
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 47
    .line 48
    iput v3, v2, Lha/m5;->p:I

    .line 49
    .line 50
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 51
    .line 52
    iput v1, v2, Lha/m5;->q:I

    .line 53
    .line 54
    :cond_1
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v1, Lha/k5;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lha/k5;-><init>(Lha/l5;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
