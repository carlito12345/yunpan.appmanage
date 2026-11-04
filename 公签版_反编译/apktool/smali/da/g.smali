.class public abstract Lda/g;
.super Lq/i;
.source "SourceFile"

# interfaces
.implements Lme/jessyan/autosize/internal/CustomAdapt;


# instance fields
.field public A:Lda/g;

.field public final B:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lq/i;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lda/g;->B:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lq/i;->attachBaseContext(Landroid/content/Context;)V
    return-void
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;



    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;



    move-result-object v1

    if-ne v0, v1, :cond_0


    invoke-super {p0}, Lq/i;->getResources()Landroid/content/res/Resources;



    move-result-object v0

    if-eqz v0, :cond_0


    invoke-super {p0}, Lq/i;->getResources()Landroid/content/res/Resources;



    move-result-object v0

    invoke-static {p0}, Lcom/yunpan/appmanage/carui/CarUi;->designWidth(Landroid/content/Context;)F

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensity(Landroid/content/res/Resources;FZ)V



    :cond_0
    invoke-super {p0}, Lq/i;->getResources()Landroid/content/res/Resources;



    move-result-object v0

    return-object v0
.end method

.method public final getSizeInDp()F
    .locals 1
    invoke-static {p0}, Lcom/yunpan/appmanage/carui/CarUi;->designWidth(Landroid/content/Context;)F
    move-result v0
    return v0
.end method

.method public final isBaseOnWidth()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lq/i;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lda/g;->v()V



    iget-object p1, p0, Lda/g;->B:Landroid/os/Handler;


    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V



    new-instance v0, Lda/e;


    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lda/e;-><init>(Lda/g;I)V



    const-wide/16 v1, 0x3e8


    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z



    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/j0;->onCreate(Landroid/os/Bundle;)V



    invoke-virtual {p0}, Lda/g;->t()I



    move-result p1

    invoke-virtual {p0, p1}, Lq/i;->setContentView(I)V



    iput-object p0, p0, Lda/g;->A:Lda/g;


    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;



    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;



    move-result-object p1

    new-instance v0, Lda/f;


    invoke-direct {v0, p0}, Lda/f;-><init>(Lda/g;)V



    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V



    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;



    move-result-object p1

    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;


    iget-object v0, v0, Lcom/yunpan/appmanage/base/AppStart;->b:Landroid/graphics/drawable/Drawable;


    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V



    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;



    move-result-object p1

    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;


    iget v0, v0, Lcom/yunpan/appmanage/util/w;->g0:I


    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lif/a;->A0(Landroid/view/Window;IZ)V



    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;



    move-result-object p1

    const/16 v0, 0x80


    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V



    sget-object p1, La9/o;->a:Ljava/util/Stack;


    if-nez p1, :cond_0


    new-instance p1, Ljava/util/Stack;


    invoke-direct {p1}, Ljava/util/Stack;-><init>()V



    sput-object p1, La9/o;->a:Ljava/util/Stack;


    :cond_0
    sget-object p1, La9/o;->a:Ljava/util/Stack;


    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z



    invoke-virtual {p0}, Lda/g;->v()V



    invoke-virtual {p0}, Lda/g;->u()V

    invoke-static {p0}, Lcom/yunpan/appmanage/carui/LegacyUi;->activity(Landroid/app/Activity;)V



    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lq/i;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lda/g;->B:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, La9/o;->a:Ljava/util/Stack;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 3

    .line 3
    invoke-super {p0, p1}, Landroidx/activity/m;->onMultiWindowModeChanged(Z)V

    .line 4
    iget-object p1, p0, Lda/g;->B:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lda/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lda/e;-><init>(Lda/g;I)V

    const-wide/16 v1, 0x14d

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    new-instance v0, Lda/e;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lda/e;-><init>(Lda/g;I)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/activity/m;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lda/g;->v()V

    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/m;->onPictureInPictureModeChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lda/g;->v()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/j0;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 22
    .line 23
    iget v1, v1, Lcom/yunpan/appmanage/util/w;->g0:I

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {v0, v1, v2}, Lif/a;->A0(Landroid/view/Window;IZ)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lda/g;->B:Landroid/os/Handler;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lda/e;

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    invoke-direct {v1, p0, v2}, Lda/e;-><init>(Lda/g;I)V

    .line 39
    .line 40
    .line 41
    const-wide/16 v2, 0x14d

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .line 45
    .line 46
    new-instance v1, Lda/e;

    .line 47
    .line 48
    const/4 v2, 0x4

    .line 49
    invoke-direct {v1, p0, v2}, Lda/e;-><init>(Lda/g;I)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v2, 0x3e8

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Lq/i;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lda/g;->B:Landroid/os/Handler;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public abstract t()I
.end method

.method public abstract u()V
.end method

.method public final v()V
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;


    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V



    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;



    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;



    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V



    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;



    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I


    invoke-virtual {v1, v2}, Lme/jessyan/autosize/AutoSizeConfig;->setScreenWidth(I)Lme/jessyan/autosize/AutoSizeConfig;



    move-result-object v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I


    invoke-virtual {v1, v0}, Lme/jessyan/autosize/AutoSizeConfig;->setScreenHeight(I)Lme/jessyan/autosize/AutoSizeConfig;



    invoke-static {p0}, Lcom/yunpan/appmanage/carui/CarUi;->designWidth(Landroid/content/Context;)F

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lme/jessyan/autosize/AutoSize;->autoConvertDensity(Landroid/app/Activity;FZ)V



    return-void
.end method

.method public final w(Ljava/lang/Class;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
