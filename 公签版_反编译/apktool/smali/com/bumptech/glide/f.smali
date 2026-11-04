.class public final Lcom/bumptech/glide/f;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# static fields
.field public static final k:Lcom/bumptech/glide/a;


# instance fields
.field public final a:La2/k1;

.field public final b:La6/i;

.field public final c:Ls9/a;

.field public final d:Lgf/g;

.field public final e:Ljava/util/List;

.field public final f:La0/e;

.field public final g:Lh5/n;

.field public final h:Lcom/bumptech/glide/h;

.field public final i:I

.field public j:Lw5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bumptech/glide/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bumptech/glide/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bumptech/glide/f;->k:Lcom/bumptech/glide/a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;La2/k1;Landroidx/room/i;Ls9/a;Lgf/g;La0/e;Ljava/util/List;Lh5/n;Lcom/bumptech/glide/h;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/bumptech/glide/f;->a:La2/k1;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bumptech/glide/f;->c:Ls9/a;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/bumptech/glide/f;->d:Lgf/g;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/bumptech/glide/f;->e:Ljava/util/List;

    .line 15
    .line 16
    iput-object p6, p0, Lcom/bumptech/glide/f;->f:La0/e;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/bumptech/glide/f;->g:Lh5/n;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/bumptech/glide/f;->h:Lcom/bumptech/glide/h;

    .line 21
    .line 22
    iput p10, p0, Lcom/bumptech/glide/f;->i:I

    .line 23
    .line 24
    new-instance p1, La6/i;

    .line 25
    .line 26
    invoke-direct {p1, p3}, La6/i;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/f;->b:La6/i;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lw5/e;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/f;->j:Lw5/e;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/f;->d:Lgf/g;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Lw5/e;

    .line 12
    .line 13
    invoke-direct {v0}, Lw5/e;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lw5/a;->m:Z

    .line 18
    .line 19
    iput-object v0, p0, Lcom/bumptech/glide/f;->j:Lw5/e;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/f;->j:Lw5/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw v0
.end method

.method public final b()Lcom/bumptech/glide/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/f;->b:La6/i;

    .line 2
    .line 3
    invoke-virtual {v0}, La6/i;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/bumptech/glide/k;

    .line 8
    .line 9
    return-object v0
.end method
