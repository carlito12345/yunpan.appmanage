.class public final Lv8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public b:Landroid/content/ContextWrapper;

.field public c:Lv8/h;

.field public d:Landroid/view/WindowManager;

.field public e:Landroid/view/WindowManager$LayoutParams;

.field public f:Z

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Lv8/g;

.field public j:Lw8/b;

.field public k:Lv8/d;

.field public final l:Ljava/lang/Object;

.field public final m:Ljava/lang/Runnable;

.field public final n:Ljava/lang/Runnable;

.field public final o:Ljava/lang/Runnable;

.field public final p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv8/a;->a:Ljava/lang/ref/WeakReference;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lv8/a;->l:Ljava/lang/Object;

    .line 41
    new-instance v0, Lha/if;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lha/if;-><init>(Lv8/a;IB)V

    iput-object v0, p0, Lv8/a;->m:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Lha/if;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, v2}, Lha/if;-><init>(Lv8/a;IB)V

    iput-object v0, p0, Lv8/a;->n:Ljava/lang/Runnable;

    .line 43
    new-instance v0, Lha/if;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, v2}, Lha/if;-><init>(Lv8/a;IB)V

    iput-object v0, p0, Lv8/a;->o:Ljava/lang/Runnable;

    .line 44
    new-instance v0, Lha/if;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, v2}, Lha/if;-><init>(Lv8/a;IB)V

    iput-object v0, p0, Lv8/a;->p:Ljava/lang/Runnable;

    .line 45
    invoke-virtual {p0, p1}, Lv8/a;->f(Landroid/content/ContextWrapper;)V

    .line 46
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x16

    if-lt p1, v0, :cond_0

    .line 47
    iget-object p1, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7f0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 48
    invoke-virtual {p0}, Lv8/a;->e()V

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7d3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 50
    invoke-virtual {p0}, Lv8/a;->e()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv8/a;->a:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lv8/a;->l:Ljava/lang/Object;

    .line 4
    new-instance v1, Lha/if;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lha/if;-><init>(Lv8/a;IB)V

    iput-object v1, p0, Lv8/a;->m:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Lha/if;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, v3}, Lha/if;-><init>(Lv8/a;IB)V

    iput-object v1, p0, Lv8/a;->n:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Lha/if;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2, v3}, Lha/if;-><init>(Lv8/a;IB)V

    iput-object v1, p0, Lv8/a;->o:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Lha/if;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2, v3}, Lha/if;-><init>(Lv8/a;IB)V

    iput-object v1, p0, Lv8/a;->p:Ljava/lang/Runnable;

    .line 8
    invoke-virtual {p0, p1}, Lv8/a;->f(Landroid/content/ContextWrapper;)V

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 12
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v4, 0x400

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    .line 14
    :cond_0
    invoke-virtual {p0, v4}, Lv8/a;->a(I)V

    .line 15
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_2

    .line 16
    invoke-static {v2}, Lo5/g;->d(Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    invoke-virtual {p0, v4}, Lv8/a;->l(I)V

    .line 17
    :cond_2
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    if-eqz v2, :cond_3

    .line 18
    iget-object v4, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 19
    invoke-virtual {p0}, Lv8/a;->e()V

    .line 20
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    .line 21
    iget-object v2, p0, Lv8/a;->c:Lv8/h;

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 22
    :cond_4
    new-instance v1, Lv8/g;

    invoke-direct {v1, v0, p1}, Lv8/g;-><init>(Ljava/lang/ref/WeakReference;Landroid/app/Activity;)V

    iput-object v1, p0, Lv8/a;->i:Lv8/g;

    const/16 v0, 0x1d

    if-lt v3, v0, :cond_5

    .line 23
    invoke-static {p1, v1}, Lh4/e0;->k(Landroid/app/Activity;Lv8/g;)V

    goto :goto_0

    .line 24
    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/yunpan/appmanage/base/AppStart;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lv8/a;->a:Ljava/lang/ref/WeakReference;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lv8/a;->l:Ljava/lang/Object;

    .line 28
    new-instance v0, Lha/if;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lha/if;-><init>(Lv8/a;IB)V

    iput-object v0, p0, Lv8/a;->m:Ljava/lang/Runnable;

    .line 29
    new-instance v0, Lha/if;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, v2}, Lha/if;-><init>(Lv8/a;IB)V

    iput-object v0, p0, Lv8/a;->n:Ljava/lang/Runnable;

    .line 30
    new-instance v0, Lha/if;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, v2}, Lha/if;-><init>(Lv8/a;IB)V

    iput-object v0, p0, Lv8/a;->o:Ljava/lang/Runnable;

    .line 31
    new-instance v0, Lha/if;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, v2}, Lha/if;-><init>(Lv8/a;IB)V

    iput-object v0, p0, Lv8/a;->p:Ljava/lang/Runnable;

    .line 32
    invoke-virtual {p0, p1}, Lv8/a;->f(Landroid/content/ContextWrapper;)V

    .line 33
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 34
    iget-object p1, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7f6

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 35
    invoke-virtual {p0}, Lv8/a;->e()V

    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7d3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 37
    invoke-virtual {p0}, Lv8/a;->e()V

    :goto_0
    return-void
.end method

.method public static v(Lcom/yunpan/appmanage/service/AccService;)Lv8/a;
    .locals 1

    .line 1
    new-instance v0, Lv8/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lv8/a;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4
    .line 5
    or-int/2addr p1, v1

    .line 6
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lv8/a;->e()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lv8/a;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Lv8/a;->d:Landroid/view/WindowManager;

    .line 8
    .line 9
    iget-object v2, p0, Lv8/a;->c:Lv8/h;

    .line 10
    .line 11
    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :goto_0
    iput-boolean v0, p0, Lv8/a;->f:Z

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_2

    .line 19
    :catch_0
    move-exception v1

    .line 20
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :goto_1
    return-void

    .line 25
    :goto_2
    iput-boolean v0, p0, Lv8/a;->f:Z

    .line 26
    .line 27
    goto :goto_4

    .line 28
    :goto_3
    throw v1

    .line 29
    :goto_4
    goto :goto_3
.end method

.method public final c(J)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lv8/a;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lv8/i;->a:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Lv8/a;->n:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1, p1, p2}, Lv8/a;->i(Ljava/lang/Runnable;J)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lv8/a;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lv8/i;->a:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Lv8/a;->m:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    invoke-virtual {p0, v1, v2, v3}, Lv8/a;->i(Ljava/lang/Runnable;J)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lv8/a;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lv8/i;->a:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Lv8/a;->o:Ljava/lang/Runnable;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    invoke-virtual {p0, v1, v2, v3}, Lv8/a;->i(Ljava/lang/Runnable;J)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final f(Landroid/content/ContextWrapper;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lv8/a;->b:Landroid/content/ContextWrapper;

    .line 2
    .line 3
    new-instance v0, Lv8/h;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lv8/h;-><init>(Landroid/content/ContextWrapper;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lv8/a;->c:Lv8/h;

    .line 9
    .line 10
    const-string v0, "window"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/WindowManager;

    .line 17
    .line 18
    iput-object v0, p0, Lv8/a;->d:Landroid/view/WindowManager;

    .line 19
    .line 20
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 26
    .line 27
    const/4 v1, -0x2

    .line 28
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 29
    .line 30
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 31
    .line 32
    const/4 v1, -0x3

    .line 33
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 34
    .line 35
    const v1, 0x1030004

    .line 36
    .line 37
    .line 38
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 45
    .line 46
    iget-object p1, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 47
    .line 48
    const/16 v0, 0x28

    .line 49
    .line 50
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 51
    .line 52
    iget-object p1, p0, Lv8/a;->a:Ljava/lang/ref/WeakReference;

    .line 53
    .line 54
    sget-object v0, Lv8/b;->a:Ljava/util/ArrayList;

    .line 55
    .line 56
    const-class v0, Lv8/b;

    .line 57
    .line 58
    monitor-enter v0

    .line 59
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lv8/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    monitor-exit v0

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    :try_start_1
    sget-object v1, Lv8/b;->a:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    monitor-exit v0

    .line 75
    :goto_0
    return-void

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    throw p1
.end method

.method public final g()V
    .locals 5

    .line 1
    sget-object v0, Lv8/i;->a:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lv8/a;->l:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lv8/a;->f:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lv8/a;->b()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lv8/a;->k:Lv8/d;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    iget-object v2, p0, Lv8/a;->b:Landroid/content/ContextWrapper;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v2, v0, Lv8/d;->b:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->clear()V

    .line 39
    .line 40
    .line 41
    :cond_3
    iput-object v1, v0, Lv8/d;->b:Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    :goto_0
    iput-object v1, p0, Lv8/a;->k:Lv8/d;

    .line 44
    .line 45
    :cond_4
    iget-object v0, p0, Lv8/a;->i:Lv8/g;

    .line 46
    .line 47
    if-eqz v0, :cond_7

    .line 48
    .line 49
    iget-object v2, v0, Lv8/g;->a:Landroid/app/Activity;

    .line 50
    .line 51
    if-nez v2, :cond_5

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 55
    .line 56
    const/16 v4, 0x1d

    .line 57
    .line 58
    if-lt v3, v4, :cond_6

    .line 59
    .line 60
    invoke-static {v2, v0}, La2/c;->g(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_6
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    iput-object v1, p0, Lv8/a;->i:Lv8/g;

    .line 72
    .line 73
    :cond_7
    iget-object v0, p0, Lv8/a;->j:Lw8/b;

    .line 74
    .line 75
    if-eqz v0, :cond_9

    .line 76
    .line 77
    iput-object v1, v0, Lw8/b;->a:Lv8/a;

    .line 78
    .line 79
    iget-object v2, v0, Lw8/b;->b:Lv8/h;

    .line 80
    .line 81
    if-eqz v2, :cond_8

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Lv8/h;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, v0, Lw8/b;->b:Lv8/h;

    .line 87
    .line 88
    :cond_8
    iput-object v1, p0, Lv8/a;->j:Lw8/b;

    .line 89
    .line 90
    :cond_9
    iput-object v1, p0, Lv8/a;->b:Landroid/content/ContextWrapper;

    .line 91
    .line 92
    iput-object v1, p0, Lv8/a;->c:Lv8/h;

    .line 93
    .line 94
    iget-object v0, p0, Lv8/a;->a:Ljava/lang/ref/WeakReference;

    .line 95
    .line 96
    sget-object v1, Lv8/b;->a:Ljava/util/ArrayList;

    .line 97
    .line 98
    const-class v1, Lv8/b;

    .line 99
    .line 100
    monitor-enter v1

    .line 101
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 102
    .line 103
    .line 104
    sget-object v2, Lv8/b;->a:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    monitor-exit v1

    .line 110
    return-void

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    throw v0
.end method

.method public final h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4
    .line 5
    xor-int/lit8 p1, p1, -0x1

    .line 6
    .line 7
    and-int/2addr p1, v1

    .line 8
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lv8/a;->e()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final i(Ljava/lang/Runnable;J)V
    .locals 3

    .line 1
    sget-object v0, Lv8/i;->a:Landroid/os/Handler;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v2, p2, v0

    .line 6
    .line 7
    if-gez v2, :cond_0

    .line 8
    .line 9
    move-wide p2, v0

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    add-long/2addr v0, p2

    .line 15
    sget-object p2, Lv8/i;->a:Landroid/os/Handler;

    .line 16
    .line 17
    iget-object p3, p0, Lv8/a;->l:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final j(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lv8/a;->b:Landroid/content/ContextWrapper;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lv8/a;->c:Lv8/h;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lv8/a;->c:Lv8/h;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lv8/a;->k(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public final k(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lv8/a;->c:Lv8/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lv8/a;->c:Lv8/h;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lv8/a;->c:Lv8/h;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    move-object v0, p1

    .line 31
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 35
    .line 36
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 37
    .line 38
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 39
    .line 40
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 43
    .line 44
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 45
    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    instance-of v1, p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .line 50
    const/4 v2, -0x1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    move-object v1, p1

    .line 54
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 55
    .line 56
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    .line 58
    if-eq v1, v2, :cond_4

    .line 59
    .line 60
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    instance-of v1, p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    move-object v1, p1

    .line 68
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    .line 70
    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 71
    .line 72
    if-eq v1, v2, :cond_4

    .line 73
    .line 74
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 75
    .line 76
    :cond_4
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 77
    .line 78
    if-nez v1, :cond_5

    .line 79
    .line 80
    const/16 v1, 0x11

    .line 81
    .line 82
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 83
    .line 84
    :cond_5
    if-eqz p1, :cond_7

    .line 85
    .line 86
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 87
    .line 88
    const/4 v2, -0x2

    .line 89
    if-ne v1, v2, :cond_6

    .line 90
    .line 91
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 92
    .line 93
    if-ne v3, v2, :cond_6

    .line 94
    .line 95
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 96
    .line 97
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 98
    .line 99
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 100
    .line 101
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_6
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 105
    .line 106
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 107
    .line 108
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    .line 110
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lv8/a;->e()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final l(I)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lo5/g;->q(Landroid/view/WindowManager$LayoutParams;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lv8/a;->e()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final m(ILv8/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv8/a;->c:Lv8/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    const/16 v0, 0x10

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lv8/a;->h(I)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lv8/e;

    .line 24
    .line 25
    invoke-direct {v0, p0, p2}, Lv8/e;-><init>(Lv8/a;Lv8/c;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    .line 30
    .line 31
    :goto_1
    return-void
.end method

.method public final n(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lv8/a;->e()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o(ILjava/lang/String;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p2, ""

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lv8/a;->c:Lv8/h;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    check-cast p1, Landroid/widget/TextView;

    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    :cond_2
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const v1, 0x1030003

    .line 4
    .line 5
    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lv8/a;->e()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final q(Lw8/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lv8/a;->j:Lw8/b;

    .line 2
    .line 3
    const/16 v0, 0x10

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lv8/a;->h(I)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x200

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lv8/a;->h(I)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lv8/a;->f:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lv8/a;->u()V

    .line 18
    .line 19
    .line 20
    iput-object p0, p1, Lw8/b;->a:Lv8/a;

    .line 21
    .line 22
    iget-object v0, p0, Lv8/a;->c:Lv8/h;

    .line 23
    .line 24
    iput-object v0, p1, Lw8/b;->b:Lv8/h;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0, p1}, Lv8/h;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lw8/b;->g()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lw8/b;->f()V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    iget-object p1, p0, Lv8/a;->b:Landroid/content/ContextWrapper;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object p1, v0

    .line 49
    :goto_1
    if-eqz p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_3
    if-eqz v0, :cond_7

    .line 56
    .line 57
    iget-object p1, p0, Lv8/a;->k:Lv8/d;

    .line 58
    .line 59
    if-nez p1, :cond_4

    .line 60
    .line 61
    new-instance p1, Lv8/d;

    .line 62
    .line 63
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 64
    .line 65
    invoke-direct {p1, v0}, Lv8/d;-><init>(I)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lv8/a;->k:Lv8/d;

    .line 69
    .line 70
    :cond_4
    iget-object p1, p0, Lv8/a;->k:Lv8/d;

    .line 71
    .line 72
    iget-object v0, p0, Lv8/a;->b:Landroid/content/ContextWrapper;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    invoke-virtual {v0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 87
    .line 88
    .line 89
    :cond_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p1, Lv8/d;->b:Ljava/lang/ref/WeakReference;

    .line 95
    .line 96
    :cond_7
    :goto_2
    return-void
.end method

.method public final r(I)V
    .locals 2

    .line 1
    iput p1, p0, Lv8/a;->g:I

    .line 2
    .line 3
    iget-boolean v0, p0, Lv8/a;->f:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    int-to-long v0, p1

    .line 10
    invoke-virtual {p0, v0, v1}, Lv8/a;->c(J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv8/a;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv8/a;->c:Lv8/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_8

    .line 11
    .line 12
    iget-boolean v0, p0, Lv8/a;->f:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lv8/a;->u()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lv8/a;->b:Landroid/content/ContextWrapper;

    .line 21
    .line 22
    instance-of v1, v0, Landroid/app/Activity;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    check-cast v0, Landroid/app/Activity;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    :cond_2
    return-void

    .line 41
    :cond_3
    :try_start_0
    iget-object v0, p0, Lv8/a;->c:Lv8/h;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lv8/a;->d:Landroid/view/WindowManager;

    .line 50
    .line 51
    iget-object v1, p0, Lv8/a;->c:Lv8/h;

    .line 52
    .line 53
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    :goto_0
    iget-object v0, p0, Lv8/a;->d:Landroid/view/WindowManager;

    .line 60
    .line 61
    iget-object v1, p0, Lv8/a;->c:Lv8/h;

    .line 62
    .line 63
    iget-object v2, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 64
    .line 65
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lv8/a;->f:Z

    .line 70
    .line 71
    iget v0, p0, Lv8/a;->g:I

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    int-to-long v0, v0

    .line 76
    invoke-virtual {p0, v0, v1}, Lv8/a;->c(J)V

    .line 77
    .line 78
    .line 79
    :cond_5
    iget-object v0, p0, Lv8/a;->j:Lw8/b;

    .line 80
    .line 81
    if-eqz v0, :cond_7

    .line 82
    .line 83
    iput-object p0, v0, Lw8/b;->a:Lv8/a;

    .line 84
    .line 85
    iget-object v1, p0, Lv8/a;->c:Lv8/h;

    .line 86
    .line 87
    iput-object v1, v0, Lw8/b;->b:Lv8/h;

    .line 88
    .line 89
    if-nez v1, :cond_6

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_6
    invoke-virtual {v1, v0}, Lv8/h;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lw8/b;->g()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lw8/b;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    :cond_7
    :goto_2
    return-void

    .line 106
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 107
    .line 108
    const-string v1, "WindowParams and view cannot be empty"

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lv8/a;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lv8/a;->d:Landroid/view/WindowManager;

    .line 7
    .line 8
    iget-object v1, p0, Lv8/a;->c:Lv8/h;

    .line 9
    .line 10
    iget-object v2, p0, Lv8/a;->e:Landroid/view/WindowManager$LayoutParams;

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
