.class public final Lw5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw5/c;
.implements Lx5/d;


# static fields
.field public static final A:Z


# instance fields
.field public final a:Lb6/d;

.field public final b:Ljava/lang/Object;

.field public final c:Lw5/d;

.field public final d:Landroid/content/Context;

.field public final e:Lcom/bumptech/glide/f;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Class;

.field public final h:Lw5/a;

.field public final i:I

.field public final j:I

.field public final k:Lcom/bumptech/glide/i;

.field public final l:Lx5/e;

.field public final m:Ljava/util/ArrayList;

.field public final n:Ly5/a;

.field public final o:La6/g;

.field public p:Lh5/t;

.field public q:Lv3/f;

.field public volatile r:Lh5/n;

.field public s:Landroid/graphics/drawable/Drawable;

.field public t:Landroid/graphics/drawable/Drawable;

.field public u:Landroid/graphics/drawable/Drawable;

.field public v:I

.field public w:I

.field public x:Z

.field public final y:Ljava/lang/RuntimeException;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "GlideRequest"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lw5/f;->A:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/f;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lw5/a;IILcom/bumptech/glide/i;Lx5/e;Ljava/util/ArrayList;Lw5/d;Lh5/n;)V
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p2

    .line 3
    sget-object v2, Ly5/b;->a:Ly5/a;

    .line 4
    .line 5
    sget-object v3, La6/h;->a:La6/g;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-boolean v4, Lw5/f;->A:Z

    .line 11
    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance v4, Lb6/d;

    .line 22
    .line 23
    invoke-direct {v4}, Lb6/d;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v4, v0, Lw5/f;->a:Lb6/d;

    .line 27
    .line 28
    move-object v4, p3

    .line 29
    iput-object v4, v0, Lw5/f;->b:Ljava/lang/Object;

    .line 30
    .line 31
    move-object v4, p1

    .line 32
    iput-object v4, v0, Lw5/f;->d:Landroid/content/Context;

    .line 33
    .line 34
    iput-object v1, v0, Lw5/f;->e:Lcom/bumptech/glide/f;

    .line 35
    .line 36
    move-object v4, p4

    .line 37
    iput-object v4, v0, Lw5/f;->f:Ljava/lang/Object;

    .line 38
    .line 39
    move-object v4, p5

    .line 40
    iput-object v4, v0, Lw5/f;->g:Ljava/lang/Class;

    .line 41
    .line 42
    move-object v4, p6

    .line 43
    iput-object v4, v0, Lw5/f;->h:Lw5/a;

    .line 44
    .line 45
    move v4, p7

    .line 46
    iput v4, v0, Lw5/f;->i:I

    .line 47
    .line 48
    move v4, p8

    .line 49
    iput v4, v0, Lw5/f;->j:I

    .line 50
    .line 51
    move-object v4, p9

    .line 52
    iput-object v4, v0, Lw5/f;->k:Lcom/bumptech/glide/i;

    .line 53
    .line 54
    move-object v4, p10

    .line 55
    iput-object v4, v0, Lw5/f;->l:Lx5/e;

    .line 56
    .line 57
    move-object/from16 v4, p11

    .line 58
    .line 59
    iput-object v4, v0, Lw5/f;->m:Ljava/util/ArrayList;

    .line 60
    .line 61
    move-object/from16 v4, p12

    .line 62
    .line 63
    iput-object v4, v0, Lw5/f;->c:Lw5/d;

    .line 64
    .line 65
    move-object/from16 v4, p13

    .line 66
    .line 67
    iput-object v4, v0, Lw5/f;->r:Lh5/n;

    .line 68
    .line 69
    iput-object v2, v0, Lw5/f;->n:Ly5/a;

    .line 70
    .line 71
    iput-object v3, v0, Lw5/f;->o:La6/g;

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    iput v2, v0, Lw5/f;->z:I

    .line 75
    .line 76
    iget-object v2, v0, Lw5/f;->y:Ljava/lang/RuntimeException;

    .line 77
    .line 78
    if-nez v2, :cond_1

    .line 79
    .line 80
    iget-object v1, v1, Lcom/bumptech/glide/f;->h:Lcom/bumptech/glide/h;

    .line 81
    .line 82
    iget-object v1, v1, Lcom/bumptech/glide/h;->a:Ljava/util/Map;

    .line 83
    .line 84
    const-class v2, Lcom/bumptech/glide/d;

    .line 85
    .line 86
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_1

    .line 91
    .line 92
    new-instance v1, Ljava/lang/RuntimeException;

    .line 93
    .line 94
    const-string v2, "Glide request origin trace"

    .line 95
    .line 96
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iput-object v1, v0, Lw5/f;->y:Ljava/lang/RuntimeException;

    .line 100
    .line 101
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lw5/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lw5/f;->z:I

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public final b(Lw5/c;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    instance-of v2, v0, Lw5/f;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return v3

    .line 11
    :cond_0
    iget-object v2, v1, Lw5/f;->b:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget v4, v1, Lw5/f;->i:I

    .line 15
    .line 16
    iget v5, v1, Lw5/f;->j:I

    .line 17
    .line 18
    iget-object v6, v1, Lw5/f;->f:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v7, v1, Lw5/f;->g:Ljava/lang/Class;

    .line 21
    .line 22
    iget-object v8, v1, Lw5/f;->h:Lw5/a;

    .line 23
    .line 24
    iget-object v9, v1, Lw5/f;->k:Lcom/bumptech/glide/i;

    .line 25
    .line 26
    iget-object v10, v1, Lw5/f;->m:Ljava/util/ArrayList;

    .line 27
    .line 28
    if-eqz v10, :cond_1

    .line 29
    .line 30
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_6

    .line 37
    :cond_1
    const/4 v10, 0x0

    .line 38
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    check-cast v0, Lw5/f;

    .line 40
    .line 41
    iget-object v11, v0, Lw5/f;->b:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v11

    .line 44
    :try_start_1
    iget v2, v0, Lw5/f;->i:I

    .line 45
    .line 46
    iget v12, v0, Lw5/f;->j:I

    .line 47
    .line 48
    iget-object v13, v0, Lw5/f;->f:Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v14, v0, Lw5/f;->g:Ljava/lang/Class;

    .line 51
    .line 52
    iget-object v15, v0, Lw5/f;->h:Lw5/a;

    .line 53
    .line 54
    iget-object v3, v0, Lw5/f;->k:Lcom/bumptech/glide/i;

    .line 55
    .line 56
    iget-object v0, v0, Lw5/f;->m:Ljava/util/ArrayList;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    goto :goto_1

    .line 65
    :catchall_1
    move-exception v0

    .line 66
    goto :goto_5

    .line 67
    :cond_2
    const/4 v0, 0x0

    .line 68
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    if-ne v4, v2, :cond_7

    .line 70
    .line 71
    if-ne v5, v12, :cond_7

    .line 72
    .line 73
    sget-object v2, La6/q;->a:[C

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    if-nez v6, :cond_4

    .line 77
    .line 78
    if-nez v13, :cond_3

    .line 79
    .line 80
    const/4 v4, 0x1

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    const/4 v4, 0x0

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    :goto_2
    if-eqz v4, :cond_7

    .line 89
    .line 90
    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_7

    .line 95
    .line 96
    if-nez v8, :cond_6

    .line 97
    .line 98
    if-nez v15, :cond_5

    .line 99
    .line 100
    const/4 v4, 0x1

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    const/4 v4, 0x0

    .line 103
    goto :goto_3

    .line 104
    :cond_6
    invoke-virtual {v8, v15}, Lw5/a;->h(Lw5/a;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    :goto_3
    if-eqz v4, :cond_7

    .line 109
    .line 110
    if-ne v9, v3, :cond_7

    .line 111
    .line 112
    if-ne v10, v0, :cond_7

    .line 113
    .line 114
    const/4 v3, 0x1

    .line 115
    goto :goto_4

    .line 116
    :cond_7
    const/4 v3, 0x0

    .line 117
    :goto_4
    return v3

    .line 118
    :goto_5
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    throw v0

    .line 120
    :goto_6
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    throw v0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lw5/f;->x:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lw5/f;->a:Lb6/d;

    .line 6
    .line 7
    invoke-virtual {v0}, Lb6/d;->a()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lw5/f;->l:Lx5/e;

    .line 11
    .line 12
    invoke-interface {v0, p0}, Lx5/e;->a(Lw5/f;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lw5/f;->q:Lv3/f;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Lv3/f;->d:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lh5/n;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v2, v0, Lv3/f;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Lh5/r;

    .line 27
    .line 28
    iget-object v0, v0, Lv3/f;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Lw5/f;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Lh5/r;->j(Lw5/f;)V

    .line 33
    .line 34
    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lw5/f;->q:Lv3/f;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw v0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public final clear()V
    .locals 5

    .line 1
    iget-object v0, p0, Lw5/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lw5/f;->x:Z

    .line 5
    .line 6
    if-nez v1, :cond_5

    .line 7
    .line 8
    iget-object v1, p0, Lw5/f;->a:Lb6/d;

    .line 9
    .line 10
    invoke-virtual {v1}, Lb6/d;->a()V

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lw5/f;->z:I

    .line 14
    .line 15
    const/4 v2, 0x6

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p0}, Lw5/f;->c()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lw5/f;->p:Lh5/t;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iput-object v3, p0, Lw5/f;->p:Lh5/t;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v1, v3

    .line 34
    :goto_0
    iget-object v3, p0, Lw5/f;->c:Lw5/d;

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    invoke-interface {v3, p0}, Lw5/d;->e(Lw5/c;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    :cond_2
    iget-object v3, p0, Lw5/f;->l:Lx5/e;

    .line 45
    .line 46
    invoke-virtual {p0}, Lw5/f;->d()Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v3, v4}, Lx5/e;->i(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iput v2, p0, Lw5/f;->z:I

    .line 54
    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    if-eqz v1, :cond_4

    .line 57
    .line 58
    iget-object v0, p0, Lw5/f;->r:Lh5/n;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lh5/n;->f(Lh5/z;)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void

    .line 67
    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw v1
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lw5/f;->t:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lw5/f;->h:Lw5/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lw5/f;->t:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lw5/f;->t:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    return-object v0
.end method

.method public final e(Lh5/v;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lw5/f;->a:Lb6/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Lb6/d;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw5/f;->b:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lw5/f;->e:Lcom/bumptech/glide/f;

    .line 13
    .line 14
    iget v1, v1, Lcom/bumptech/glide/f;->i:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-gt v1, p2, :cond_1

    .line 18
    .line 19
    iget-object p2, p0, Lw5/f;->f:Ljava/lang/Object;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p2, 0x4

    .line 27
    if-gt v1, p2, :cond_1

    .line 28
    .line 29
    new-instance p2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {p1, p2}, Lh5/v;->a(Ljava/lang/Throwable;Ljava/util/ArrayList;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 v1, 0x0

    .line 42
    :goto_0
    if-ge v1, p1, :cond_1

    .line 43
    .line 44
    add-int/lit8 v3, v1, 0x1

    .line 45
    .line 46
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/lang/Throwable;

    .line 51
    .line 52
    move v1, v3

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto/16 :goto_7

    .line 56
    .line 57
    :cond_1
    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lw5/f;->q:Lv3/f;

    .line 59
    .line 60
    const/4 p2, 0x5

    .line 61
    iput p2, p0, Lw5/f;->z:I

    .line 62
    .line 63
    iget-object p2, p0, Lw5/f;->c:Lw5/d;

    .line 64
    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    invoke-interface {p2, p0}, Lw5/d;->i(Lw5/c;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    const/4 p2, 0x1

    .line 71
    iput-boolean p2, p0, Lw5/f;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    :try_start_1
    iget-object v1, p0, Lw5/f;->m:Ljava/util/ArrayList;

    .line 74
    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    if-nez p2, :cond_5

    .line 93
    .line 94
    iget-object p2, p0, Lw5/f;->c:Lw5/d;

    .line 95
    .line 96
    if-eqz p2, :cond_4

    .line 97
    .line 98
    invoke-interface {p2}, Lw5/d;->getRoot()Lw5/d;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-interface {p2}, Lw5/d;->a()Z

    .line 103
    .line 104
    .line 105
    :cond_4
    throw p1

    .line 106
    :catchall_1
    move-exception p1

    .line 107
    goto :goto_6

    .line 108
    :cond_5
    new-instance p1, Ljava/lang/ClassCastException;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_6
    :goto_1
    iget-object v1, p0, Lw5/f;->c:Lw5/d;

    .line 115
    .line 116
    if-eqz v1, :cond_8

    .line 117
    .line 118
    invoke-interface {v1, p0}, Lw5/d;->g(Lw5/c;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_7

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_7
    const/4 p2, 0x0

    .line 126
    :cond_8
    :goto_2
    if-nez p2, :cond_9

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_9
    iget-object p2, p0, Lw5/f;->f:Ljava/lang/Object;

    .line 130
    .line 131
    if-nez p2, :cond_b

    .line 132
    .line 133
    iget-object p2, p0, Lw5/f;->u:Landroid/graphics/drawable/Drawable;

    .line 134
    .line 135
    if-nez p2, :cond_a

    .line 136
    .line 137
    iget-object p2, p0, Lw5/f;->h:Lw5/a;

    .line 138
    .line 139
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    iput-object p1, p0, Lw5/f;->u:Landroid/graphics/drawable/Drawable;

    .line 143
    .line 144
    :cond_a
    iget-object p2, p0, Lw5/f;->u:Landroid/graphics/drawable/Drawable;

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_b
    move-object p2, p1

    .line 148
    :goto_3
    if-nez p2, :cond_e

    .line 149
    .line 150
    iget-object p2, p0, Lw5/f;->s:Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    if-nez p2, :cond_d

    .line 153
    .line 154
    iget-object p2, p0, Lw5/f;->h:Lw5/a;

    .line 155
    .line 156
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    iput-object p1, p0, Lw5/f;->s:Landroid/graphics/drawable/Drawable;

    .line 160
    .line 161
    iget p1, p2, Lw5/a;->d:I

    .line 162
    .line 163
    if-lez p1, :cond_d

    .line 164
    .line 165
    iget-object p2, p0, Lw5/f;->h:Lw5/a;

    .line 166
    .line 167
    iget-object p2, p2, Lw5/a;->n:Landroid/content/res/Resources$Theme;

    .line 168
    .line 169
    iget-object v1, p0, Lw5/f;->d:Landroid/content/Context;

    .line 170
    .line 171
    if-eqz p2, :cond_c

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_c
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    :goto_4
    invoke-static {v1, v1, p1, p2}, Ld/b;->D(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    iput-object p1, p0, Lw5/f;->s:Landroid/graphics/drawable/Drawable;

    .line 183
    .line 184
    :cond_d
    iget-object p2, p0, Lw5/f;->s:Landroid/graphics/drawable/Drawable;

    .line 185
    .line 186
    :cond_e
    if-nez p2, :cond_f

    .line 187
    .line 188
    invoke-virtual {p0}, Lw5/f;->d()Landroid/graphics/drawable/Drawable;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    :cond_f
    iget-object p1, p0, Lw5/f;->l:Lx5/e;

    .line 193
    .line 194
    invoke-interface {p1, p2}, Lx5/e;->d(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    .line 196
    .line 197
    :goto_5
    :try_start_2
    iput-boolean v2, p0, Lw5/f;->x:Z

    .line 198
    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 201
    :goto_6
    iput-boolean v2, p0, Lw5/f;->x:Z

    .line 202
    .line 203
    throw p1

    .line 204
    :goto_7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    goto :goto_9

    .line 206
    :goto_8
    throw p1

    .line 207
    :goto_9
    goto :goto_8
.end method

.method public final f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lw5/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lw5/f;->z:I

    .line 5
    .line 6
    const/4 v2, 0x6

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public final g(Lh5/t;Lf5/a;Z)V
    .locals 6

    .line 1
    const-string p3, "Expected to receive an object of "

    .line 2
    .line 3
    const-string v0, "Expected to receive a Resource<R> with an object of "

    .line 4
    .line 5
    iget-object v1, p0, Lw5/f;->a:Lb6/d;

    .line 6
    .line 7
    invoke-virtual {v1}, Lb6/d;->a()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    iget-object v2, p0, Lw5/f;->b:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14
    :try_start_1
    iput-object v1, p0, Lw5/f;->q:Lv3/f;

    .line 15
    .line 16
    const/4 v3, 0x5

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    new-instance p1, Lh5/v;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p3, p0, Lw5/f;->g:Ljava/lang/Class;

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p3, " inside, but instead got null."

    .line 32
    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-direct {p1, p2}, Lh5/v;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v3}, Lw5/f;->e(Lh5/v;I)V

    .line 44
    .line 45
    .line 46
    monitor-exit v2

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_0
    iget-object v0, p1, Lh5/t;->c:Lh5/z;

    .line 52
    .line 53
    invoke-interface {v0}, Lh5/z;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    iget-object v4, p0, Lw5/f;->g:Ljava/lang/Class;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget-object p3, p0, Lw5/f;->c:Lw5/d;

    .line 73
    .line 74
    if-eqz p3, :cond_3

    .line 75
    .line 76
    invoke-interface {p3, p0}, Lw5/d;->d(Lw5/c;)Z

    .line 77
    .line 78
    .line 79
    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    if-eqz p3, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    :try_start_2
    iput-object v1, p0, Lw5/f;->p:Lh5/t;

    .line 84
    .line 85
    const/4 p2, 0x4

    .line 86
    iput p2, p0, Lw5/f;->z:I

    .line 87
    .line 88
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 89
    iget-object p2, p0, Lw5/f;->r:Lh5/n;

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lh5/n;->f(Lh5/z;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :catchall_1
    move-exception p2

    .line 99
    move-object v1, p1

    .line 100
    move-object p1, p2

    .line 101
    goto :goto_4

    .line 102
    :cond_3
    :goto_0
    :try_start_3
    invoke-virtual {p0, p1, v0, p2}, Lw5/f;->i(Lh5/t;Ljava/lang/Object;Lf5/a;)V

    .line 103
    .line 104
    .line 105
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    return-void

    .line 107
    :cond_4
    :goto_1
    :try_start_4
    iput-object v1, p0, Lw5/f;->p:Lh5/t;

    .line 108
    .line 109
    new-instance p2, Lh5/v;

    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object p3, p0, Lw5/f;->g:Ljava/lang/Class;

    .line 117
    .line 118
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p3, " but instead got "

    .line 122
    .line 123
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    goto :goto_2

    .line 133
    :cond_5
    const-string p3, ""

    .line 134
    .line 135
    :goto_2
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p3, "{"

    .line 139
    .line 140
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p3, "} inside Resource{"

    .line 147
    .line 148
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string p3, "}."

    .line 155
    .line 156
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    const-string p3, ""

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_6
    const-string p3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 165
    .line 166
    :goto_3
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    invoke-direct {p2, p3}, Lh5/v;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p2, v3}, Lw5/f;->e(Lh5/v;I)V

    .line 177
    .line 178
    .line 179
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    iget-object p2, p0, Lw5/f;->r:Lh5/n;

    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-static {p1}, Lh5/n;->f(Lh5/z;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :goto_4
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 191
    :catchall_2
    move-exception p1

    .line 192
    if-eqz v1, :cond_7

    .line 193
    .line 194
    iget-object p2, p0, Lw5/f;->r:Lh5/n;

    .line 195
    .line 196
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-static {v1}, Lh5/n;->f(Lh5/z;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    throw p1
.end method

.method public final h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lw5/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lw5/f;->x:Z

    .line 5
    .line 6
    if-nez v1, :cond_f

    .line 7
    .line 8
    iget-object v1, p0, Lw5/f;->a:Lb6/d;

    .line 9
    .line 10
    invoke-virtual {v1}, Lb6/d;->a()V

    .line 11
    .line 12
    .line 13
    sget v1, La6/k;->a:I

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lw5/f;->f:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    iget v1, p0, Lw5/f;->i:I

    .line 24
    .line 25
    iget v3, p0, Lw5/f;->j:I

    .line 26
    .line 27
    invoke-static {v1, v3}, La6/q;->i(II)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget v1, p0, Lw5/f;->i:I

    .line 34
    .line 35
    iput v1, p0, Lw5/f;->v:I

    .line 36
    .line 37
    iget v1, p0, Lw5/f;->j:I

    .line 38
    .line 39
    iput v1, p0, Lw5/f;->w:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_0
    :goto_0
    iget-object v1, p0, Lw5/f;->u:Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lw5/f;->h:Lw5/a;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lw5/f;->u:Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    :cond_1
    iget-object v1, p0, Lw5/f;->u:Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    const/4 v2, 0x5

    .line 62
    :cond_2
    new-instance v1, Lh5/v;

    .line 63
    .line 64
    const-string v3, "Received null model"

    .line 65
    .line 66
    invoke-direct {v1, v3}, Lh5/v;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v1, v2}, Lw5/f;->e(Lh5/v;I)V

    .line 70
    .line 71
    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :cond_3
    iget v1, p0, Lw5/f;->z:I

    .line 75
    .line 76
    const/4 v3, 0x2

    .line 77
    if-eq v1, v3, :cond_e

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    const/4 v5, 0x4

    .line 81
    if-ne v1, v5, :cond_4

    .line 82
    .line 83
    iget-object v1, p0, Lw5/f;->p:Lh5/t;

    .line 84
    .line 85
    sget-object v2, Lf5/a;->e:Lf5/a;

    .line 86
    .line 87
    invoke-virtual {p0, v1, v2, v4}, Lw5/f;->g(Lh5/t;Lf5/a;Z)V

    .line 88
    .line 89
    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 92
    :cond_4
    iget-object v1, p0, Lw5/f;->m:Ljava/util/ArrayList;

    .line 93
    .line 94
    if-nez v1, :cond_5

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_7

    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    if-nez v5, :cond_6

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    new-instance v1, Ljava/lang/ClassCastException;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 117
    .line 118
    .line 119
    throw v1

    .line 120
    :cond_7
    :goto_2
    iput v2, p0, Lw5/f;->z:I

    .line 121
    .line 122
    iget v1, p0, Lw5/f;->i:I

    .line 123
    .line 124
    iget v5, p0, Lw5/f;->j:I

    .line 125
    .line 126
    invoke-static {v1, v5}, La6/q;->i(II)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_8

    .line 131
    .line 132
    iget v1, p0, Lw5/f;->i:I

    .line 133
    .line 134
    iget v5, p0, Lw5/f;->j:I

    .line 135
    .line 136
    invoke-virtual {p0, v1, v5}, Lw5/f;->k(II)V

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_8
    iget-object v1, p0, Lw5/f;->l:Lx5/e;

    .line 141
    .line 142
    invoke-interface {v1, p0}, Lx5/e;->h(Lw5/f;)V

    .line 143
    .line 144
    .line 145
    :goto_3
    iget v1, p0, Lw5/f;->z:I

    .line 146
    .line 147
    if-eq v1, v3, :cond_9

    .line 148
    .line 149
    if-ne v1, v2, :cond_c

    .line 150
    .line 151
    :cond_9
    iget-object v1, p0, Lw5/f;->c:Lw5/d;

    .line 152
    .line 153
    if-eqz v1, :cond_a

    .line 154
    .line 155
    invoke-interface {v1, p0}, Lw5/d;->g(Lw5/c;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_b

    .line 160
    .line 161
    :cond_a
    const/4 v4, 0x1

    .line 162
    :cond_b
    if-eqz v4, :cond_c

    .line 163
    .line 164
    iget-object v1, p0, Lw5/f;->l:Lx5/e;

    .line 165
    .line 166
    invoke-virtual {p0}, Lw5/f;->d()Landroid/graphics/drawable/Drawable;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-interface {v1, v2}, Lx5/e;->f(Landroid/graphics/drawable/Drawable;)V

    .line 171
    .line 172
    .line 173
    :cond_c
    sget-boolean v1, Lw5/f;->A:Z

    .line 174
    .line 175
    if-eqz v1, :cond_d

    .line 176
    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 178
    .line 179
    .line 180
    :cond_d
    monitor-exit v0

    .line 181
    return-void

    .line 182
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 183
    .line 184
    const-string v2, "Cannot restart a running request"

    .line 185
    .line 186
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw v1

    .line 190
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 191
    .line 192
    const-string v2, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    .line 193
    .line 194
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw v1

    .line 198
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    goto :goto_6

    .line 200
    :goto_5
    throw v1

    .line 201
    :goto_6
    goto :goto_5
.end method

.method public final i(Lh5/t;Ljava/lang/Object;Lf5/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lw5/f;->c:Lw5/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/d;->getRoot()Lw5/d;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Lw5/d;->a()Z

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v1, 0x4

    .line 13
    iput v1, p0, Lw5/f;->z:I

    .line 14
    .line 15
    iput-object p1, p0, Lw5/f;->p:Lh5/t;

    .line 16
    .line 17
    iget-object p1, p0, Lw5/f;->e:Lcom/bumptech/glide/f;

    .line 18
    .line 19
    iget p1, p1, Lcom/bumptech/glide/f;->i:I

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    if-gt p1, v1, :cond_3

    .line 23
    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Lw5/f;->f:Ljava/lang/Object;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    :cond_2
    sget p1, La6/k;->a:I

    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 39
    .line 40
    .line 41
    :cond_3
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-interface {v0, p0}, Lw5/d;->c(Lw5/c;)V

    .line 44
    .line 45
    .line 46
    :cond_4
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lw5/f;->x:Z

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    :try_start_0
    iget-object p3, p0, Lw5/f;->m:Ljava/util/ArrayList;

    .line 51
    .line 52
    if-eqz p3, :cond_7

    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_5

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    if-nez p2, :cond_6

    .line 70
    .line 71
    const/4 p2, 0x0

    .line 72
    throw p2

    .line 73
    :catchall_0
    move-exception p2

    .line 74
    goto :goto_1

    .line 75
    :cond_6
    new-instance p2, Ljava/lang/ClassCastException;

    .line 76
    .line 77
    invoke-direct {p2}, Ljava/lang/ClassCastException;-><init>()V

    .line 78
    .line 79
    .line 80
    throw p2

    .line 81
    :cond_7
    :goto_0
    iget-object p3, p0, Lw5/f;->n:Ly5/a;

    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    iget-object p3, p0, Lw5/f;->l:Lx5/e;

    .line 87
    .line 88
    invoke-interface {p3, p2}, Lx5/e;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    iput-boolean p1, p0, Lw5/f;->x:Z

    .line 92
    .line 93
    return-void

    .line 94
    :goto_1
    iput-boolean p1, p0, Lw5/f;->x:Z

    .line 95
    .line 96
    throw p2
.end method

.method public final isRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lw5/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lw5/f;->z:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 16
    :goto_1
    monitor-exit v0

    .line 17
    return v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public final j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lw5/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lw5/f;->z:I

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public final k(II)V
    .locals 21

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move/from16 v1, p2

    .line 6
    .line 7
    iget-object v2, v15, Lw5/f;->a:Lb6/d;

    .line 8
    .line 9
    invoke-virtual {v2}, Lb6/d;->a()V

    .line 10
    .line 11
    .line 12
    iget-object v14, v15, Lw5/f;->b:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v14

    .line 15
    :try_start_0
    sget-boolean v19, Lw5/f;->A:Z

    .line 16
    .line 17
    if-eqz v19, :cond_0

    .line 18
    .line 19
    sget v2, La6/k;->a:I

    .line 20
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :goto_0
    move-object/from16 v20, v14

    .line 26
    .line 27
    move-object v1, v15

    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_0
    :goto_1
    iget v2, v15, Lw5/f;->z:I

    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    if-eq v2, v3, :cond_1

    .line 34
    .line 35
    monitor-exit v14

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v13, 0x2

    .line 40
    iput v13, v15, Lw5/f;->z:I

    .line 41
    .line 42
    iget-object v2, v15, Lw5/f;->h:Lw5/a;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const/high16 v2, 0x3f800000    # 1.0f

    .line 48
    .line 49
    const/high16 v3, -0x80000000

    .line 50
    .line 51
    if-ne v0, v3, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    int-to-float v0, v0

    .line 55
    mul-float v0, v0, v2

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    :goto_2
    iput v0, v15, Lw5/f;->v:I

    .line 62
    .line 63
    if-ne v1, v3, :cond_3

    .line 64
    .line 65
    move v0, v1

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    int-to-float v0, v1

    .line 68
    mul-float v2, v2, v0

    .line 69
    .line 70
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    :goto_3
    iput v0, v15, Lw5/f;->w:I

    .line 75
    .line 76
    if-eqz v19, :cond_4

    .line 77
    .line 78
    sget v0, La6/k;->a:I

    .line 79
    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object v1, v15, Lw5/f;->r:Lh5/n;

    .line 84
    .line 85
    iget-object v2, v15, Lw5/f;->e:Lcom/bumptech/glide/f;

    .line 86
    .line 87
    iget-object v3, v15, Lw5/f;->f:Ljava/lang/Object;

    .line 88
    .line 89
    iget-object v0, v15, Lw5/f;->h:Lw5/a;

    .line 90
    .line 91
    iget-object v4, v0, Lw5/a;->h:Lf5/f;

    .line 92
    .line 93
    iget v5, v15, Lw5/f;->v:I

    .line 94
    .line 95
    iget v6, v15, Lw5/f;->w:I

    .line 96
    .line 97
    iget-object v7, v0, Lw5/a;->l:Ljava/lang/Class;

    .line 98
    .line 99
    iget-object v8, v15, Lw5/f;->g:Ljava/lang/Class;

    .line 100
    .line 101
    iget-object v9, v15, Lw5/f;->k:Lcom/bumptech/glide/i;

    .line 102
    .line 103
    iget-object v10, v0, Lw5/a;->b:Lh5/l;

    .line 104
    .line 105
    iget-object v11, v0, Lw5/a;->k:La6/d;

    .line 106
    .line 107
    iget-boolean v12, v0, Lw5/a;->i:Z

    .line 108
    .line 109
    iget-boolean v13, v0, Lw5/a;->q:Z

    .line 110
    .line 111
    move/from16 v17, v13

    .line 112
    .line 113
    iget-object v13, v0, Lw5/a;->j:Lf5/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    move-object/from16 v18, v14

    .line 116
    .line 117
    :try_start_1
    iget-boolean v14, v0, Lw5/a;->e:Z

    .line 118
    .line 119
    iget-boolean v0, v0, Lw5/a;->r:Z

    .line 120
    .line 121
    move/from16 p1, v0

    .line 122
    .line 123
    iget-object v0, v15, Lw5/f;->o:La6/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 124
    .line 125
    move-object/from16 v16, v13

    .line 126
    .line 127
    move/from16 v13, v17

    .line 128
    .line 129
    move/from16 v17, v14

    .line 130
    .line 131
    move-object/from16 v20, v18

    .line 132
    .line 133
    move-object/from16 v14, v16

    .line 134
    .line 135
    move/from16 v15, v17

    .line 136
    .line 137
    move/from16 v16, p1

    .line 138
    .line 139
    move-object/from16 v17, p0

    .line 140
    .line 141
    move-object/from16 v18, v0

    .line 142
    .line 143
    :try_start_2
    invoke-virtual/range {v1 .. v18}, Lh5/n;->a(Lcom/bumptech/glide/f;Ljava/lang/Object;Lf5/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/i;Lh5/l;La6/d;ZZLf5/i;ZZLw5/f;La6/g;)Lv3/f;

    .line 144
    .line 145
    .line 146
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 147
    move-object/from16 v1, p0

    .line 148
    .line 149
    :try_start_3
    iput-object v0, v1, Lw5/f;->q:Lv3/f;

    .line 150
    .line 151
    iget v0, v1, Lw5/f;->z:I

    .line 152
    .line 153
    const/4 v2, 0x2

    .line 154
    if-eq v0, v2, :cond_5

    .line 155
    .line 156
    const/4 v0, 0x0

    .line 157
    iput-object v0, v1, Lw5/f;->q:Lv3/f;

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :catchall_1
    move-exception v0

    .line 161
    goto :goto_5

    .line 162
    :cond_5
    :goto_4
    if-eqz v19, :cond_6

    .line 163
    .line 164
    sget v0, La6/k;->a:I

    .line 165
    .line 166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 167
    .line 168
    .line 169
    :cond_6
    monitor-exit v20

    .line 170
    return-void

    .line 171
    :catchall_2
    move-exception v0

    .line 172
    move-object/from16 v1, p0

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :catchall_3
    move-exception v0

    .line 176
    move-object v1, v15

    .line 177
    move-object/from16 v20, v18

    .line 178
    .line 179
    :goto_5
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 180
    goto :goto_7

    .line 181
    :goto_6
    throw v0

    .line 182
    :goto_7
    goto :goto_6
.end method

.method public final pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw5/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lw5/f;->isRunning()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lw5/f;->clear()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lw5/f;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lw5/f;->f:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, p0, Lw5/f;->g:Ljava/lang/Class;

    .line 7
    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, "[model="

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ", transcodeClass="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "]"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v1
.end method
