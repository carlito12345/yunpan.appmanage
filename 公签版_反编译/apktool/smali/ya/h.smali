.class public final Lya/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:Lya/h;


# instance fields
.field public a:Lcom/yunpan/appmanage/service/AccService;

.field public b:Lz7/s;

.field public c:Landroid/view/WindowManager;

.field public d:Landroid/view/View;

.field public e:Landroid/view/WindowManager$LayoutParams;

.field public f:Landroid/view/View;

.field public g:Landroid/view/WindowManager$LayoutParams;

.field public h:Landroid/view/View;

.field public i:Landroid/view/WindowManager$LayoutParams;

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:J

.field public o:I

.field public p:Z

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Lwa/a;

.field public x:I

.field public y:Lz7/o;

.field public final z:Landroidx/activity/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lya/h;->b:Lz7/s;

    .line 6
    .line 7
    iput-object v0, p0, Lya/h;->c:Landroid/view/WindowManager;

    .line 8
    .line 9
    iput-object v0, p0, Lya/h;->d:Landroid/view/View;

    .line 10
    .line 11
    iput-object v0, p0, Lya/h;->f:Landroid/view/View;

    .line 12
    .line 13
    iput-object v0, p0, Lya/h;->h:Landroid/view/View;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lya/h;->j:Z

    .line 17
    .line 18
    iput-boolean v1, p0, Lya/h;->k:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lya/h;->p:Z

    .line 21
    .line 22
    const/16 v1, 0x1e

    .line 23
    .line 24
    iput v1, p0, Lya/h;->q:I

    .line 25
    .line 26
    iput v1, p0, Lya/h;->r:I

    .line 27
    .line 28
    iput v1, p0, Lya/h;->s:I

    .line 29
    .line 30
    iput v1, p0, Lya/h;->t:I

    .line 31
    .line 32
    iput v1, p0, Lya/h;->u:I

    .line 33
    .line 34
    iput v1, p0, Lya/h;->v:I

    .line 35
    .line 36
    iput-object v0, p0, Lya/h;->y:Lz7/o;

    .line 37
    .line 38
    new-instance v0, Landroidx/activity/h;

    .line 39
    .line 40
    const/16 v1, 0x15

    .line 41
    .line 42
    invoke-direct {v0, v1, p0}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lya/h;->z:Landroidx/activity/h;

    .line 46
    .line 47
    return-void
.end method

.method public static declared-synchronized a()Lya/h;
    .locals 2

    .line 1
    const-class v0, Lya/h;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lya/h;->A:Lya/h;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lya/h;

    .line 9
    .line 10
    invoke-direct {v1}, Lya/h;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lya/h;->A:Lya/h;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lya/h;->A:Lya/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public final b(Lcom/yunpan/appmanage/service/AccService;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lya/h;->c()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lq4/a;->x(Landroid/content/ContextWrapper;)Lz7/s;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lya/h;->b:Lz7/s;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v1, "isOn"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lz7/p;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iput-object p1, p0, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 27
    .line 28
    :try_start_0
    iget-object v0, p1, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    new-instance v0, Ly3/a;

    .line 33
    .line 34
    invoke-direct {v0, p1}, Ly3/a;-><init>(Lcom/yunpan/appmanage/service/AccService;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p1, Lcom/yunpan/appmanage/service/AccService;->i:Ly3/a;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    :goto_0
    iget-object p1, p0, Lya/h;->a:Lcom/yunpan/appmanage/service/AccService;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/yunpan/appmanage/service/AccService;->G:Lta/e;

    .line 45
    .line 46
    new-instance v0, Lya/f;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-direct {v0, p0, v1}, Lya/f;-><init>(Lya/h;I)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v1, 0xc8

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_2
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lya/h;->d:Landroid/view/View;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lya/h;->c:Landroid/view/WindowManager;

    .line 7
    .line 8
    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lya/h;->d:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    :catch_0
    :cond_0
    :try_start_1
    iget-object v1, p0, Lya/h;->f:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lya/h;->c:Landroid/view/WindowManager;

    .line 18
    .line 19
    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lya/h;->f:Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 23
    .line 24
    :catch_1
    :cond_1
    :try_start_2
    iget-object v1, p0, Lya/h;->h:Landroid/view/View;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lya/h;->c:Landroid/view/WindowManager;

    .line 29
    .line 30
    invoke-interface {v2, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lya/h;->h:Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 34
    .line 35
    :catch_2
    :cond_2
    iput-object v0, p0, Lya/h;->c:Landroid/view/WindowManager;

    .line 36
    .line 37
    return-void
.end method
