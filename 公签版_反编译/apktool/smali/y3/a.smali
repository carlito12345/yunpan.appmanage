.class public final Ly3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Ly3/b;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Ly3/a;->a:Z

    .line 29
    iput-object p2, p0, Ly3/a;->b:Ljava/lang/Object;

    .line 30
    iput-object p3, p0, Ly3/a;->c:Ljava/lang/Object;

    .line 31
    iput-object p4, p0, Ly3/a;->g:Ljava/lang/Object;

    .line 32
    iput-object p5, p0, Ly3/a;->f:Ljava/lang/Object;

    .line 33
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    const/4 p3, 0x0

    if-lt p1, p2, :cond_1

    const/16 p2, 0x21

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 34
    :pswitch_0
    sget-object p3, Ly3/c;->d:[B

    goto :goto_0

    .line 35
    :pswitch_1
    sget-object p3, Ly3/c;->e:[B

    goto :goto_0

    .line 36
    :pswitch_2
    sget-object p3, Ly3/c;->f:[B

    goto :goto_0

    .line 37
    :pswitch_3
    sget-object p3, Ly3/c;->g:[B

    goto :goto_0

    .line 38
    :pswitch_4
    sget-object p3, Ly3/c;->h:[B

    .line 39
    :cond_1
    :goto_0
    iput-object p3, p0, Ly3/a;->d:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/service/AccService;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    invoke-direct {v2}, Lcom/yunpan/appmanage/bean/FloatWindowInsets;-><init>()V

    iput-object v2, v0, Ly3/a;->d:Ljava/lang/Object;

    .line 3
    new-instance v2, Landroidx/emoji2/text/o;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroidx/emoji2/text/o;-><init>(I)V

    iput-object v2, v0, Ly3/a;->h:Ljava/lang/Object;

    .line 4
    iput-object v1, v0, Ly3/a;->b:Ljava/lang/Object;

    .line 5
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, v0, Ly3/a;->c:Ljava/lang/Object;

    .line 6
    invoke-static/range {p1 .. p1}, Lif/a;->R(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iput-object v3, v0, Ly3/a;->e:Ljava/lang/Object;

    .line 7
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Ly3/a;->f:Ljava/lang/Object;

    const/4 v4, 0x1

    .line 8
    invoke-virtual {v3, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 9
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    .line 10
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x7d2

    const/16 v13, 0x7f0

    const/16 v14, 0x16

    if-lt v11, v14, :cond_0

    const/16 v8, 0x7f0

    goto :goto_0

    :cond_0
    const/16 v8, 0x7d2

    :goto_0
    const/16 v9, 0x318

    const/4 v10, -0x3

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v5, 0x1c

    if-lt v11, v5, :cond_1

    .line 11
    invoke-static {v3}, Landroidx/emoji2/text/b;->x(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    const v6, 0x800033

    .line 12
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v6, 0x0

    .line 13
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 14
    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 15
    iget-object v7, v0, Ly3/a;->f:Ljava/lang/Object;

    check-cast v7, Landroid/view/View;

    invoke-interface {v2, v7, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v3, v0, Ly3/a;->f:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v7, Lya/a;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lya/a;-><init>(Ly3/a;I)V

    invoke-virtual {v3, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 17
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Ly3/a;->g:Ljava/lang/Object;

    .line 18
    invoke-virtual {v3, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 19
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    if-lt v11, v14, :cond_2

    const/16 v18, 0x7f0

    goto :goto_1

    :cond_2
    const/16 v18, 0x7d2

    :goto_1
    const/16 v19, 0x318

    const/16 v20, -0x3

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v15, v1

    .line 20
    invoke-direct/range {v15 .. v20}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    if-lt v11, v5, :cond_3

    .line 21
    invoke-static {v1}, Landroidx/emoji2/text/b;->x(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    const v3, 0x800055

    .line 22
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 23
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 24
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 25
    iget-object v3, v0, Ly3/a;->g:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-interface {v2, v3, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    iget-object v1, v0, Ly3/a;->g:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lya/a;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lya/a;-><init>(Ly3/a;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Ly3/a;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/yunpan/appmanage/bean/FloatWindowInsets;

    .line 4
    .line 5
    iget v1, v0, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->left:I

    .line 6
    .line 7
    if-gtz v1, :cond_1

    .line 8
    .line 9
    iget v1, v0, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->top:I

    .line 10
    .line 11
    if-gtz v1, :cond_1

    .line 12
    .line 13
    iget v1, v0, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->right:I

    .line 14
    .line 15
    if-gtz v1, :cond_1

    .line 16
    .line 17
    iget v0, v0, Lcom/yunpan/appmanage/bean/FloatWindowInsets;->bottom:I

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    iput-boolean v0, p0, Ly3/a;->a:Z

    .line 26
    .line 27
    iget-object v0, p0, Ly3/a;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Lcom/yunpan/appmanage/service/AccService;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 32
    .line 33
    iget-object v2, p0, Ly3/a;->h:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Landroidx/emoji2/text/o;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 41
    .line 42
    const-wide/16 v3, 0x64

    .line 43
    .line 44
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public b(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-string p2, "compressed"

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    return-object p1
.end method

.method public c(ILjava/io/Serializable;)V
    .locals 2

    .line 1
    new-instance v0, Lfa/v;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Lfa/v;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Ly3/a;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
