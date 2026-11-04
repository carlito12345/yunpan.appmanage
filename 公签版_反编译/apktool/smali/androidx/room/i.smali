.class public final Landroidx/room/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La6/j;
.implements Lcom/bumptech/glide/manager/n;
.implements Ll2/q;


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 29
    new-array v0, p1, [Z

    iput-object v0, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 30
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    .line 2
    new-array p2, p1, [F

    iput-object p2, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 3
    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 4
    new-instance p1, Lu1/c0;

    invoke-direct {p1}, Lu1/c0;-><init>()V

    iput-object p1, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    return-void

    .line 5
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 8
    sget-object p1, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    iput-object p1, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroidx/room/i;->a:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(La6/i;Lcom/bumptech/glide/manager/m;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/bumptech/glide/manager/p;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/p;-><init>(Landroidx/room/i;)V

    iput-object v0, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;Landroid/os/Looper;Landroid/os/Looper;Ly1/t;Lu1/z;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p5, p2, p1}, Lu1/z;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lu1/b0;

    move-result-object p2

    iput-object p2, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 17
    new-instance p2, Ls1/a;

    .line 18
    invoke-virtual {p5, p3, p1}, Lu1/z;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lu1/b0;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Ls1/a;-><init>(Landroidx/room/i;Lu1/b0;Ly1/t;)V

    iput-object p2, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Ljava/util/List;Lq4/a;)V
    .locals 0

    .line 19
    iput-object p1, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Ltb/v;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 22
    iput-object p2, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ld5/d;Ld5/c;)V
    .locals 0

    .line 31
    iput-object p1, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 33
    iget-boolean p2, p2, Ld5/c;->e:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 34
    :cond_0
    iget p1, p1, Ld5/d;->g:I

    .line 35
    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll2/q;Li3/h;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 13
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    return-void
.end method

.method public static d([F[F)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3
    .line 4
    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    aget v2, p1, v1

    .line 8
    .line 9
    mul-float v2, v2, v2

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    aget v4, p1, v3

    .line 14
    .line 15
    mul-float v4, v4, v4

    .line 16
    .line 17
    add-float/2addr v4, v2

    .line 18
    float-to-double v4, v4

    .line 19
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    double-to-float v2, v4

    .line 24
    aget v4, p1, v1

    .line 25
    .line 26
    div-float/2addr v4, v2

    .line 27
    aput v4, p0, v0

    .line 28
    .line 29
    aget p1, p1, v3

    .line 30
    .line 31
    div-float v0, p1, v2

    .line 32
    .line 33
    const/4 v5, 0x2

    .line 34
    aput v0, p0, v5

    .line 35
    .line 36
    neg-float p1, p1

    .line 37
    div-float/2addr p1, v2

    .line 38
    aput p1, p0, v3

    .line 39
    .line 40
    aput v4, p0, v1

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La6/i;

    .line 4
    .line 5
    invoke-virtual {v0}, La6/i;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    invoke-static {v1}, La2/a;->h(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    iput-boolean v1, p0, Landroidx/room/i;->a:Z

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {v0}, La6/i;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v1, Lcom/bumptech/glide/manager/p;

    .line 33
    .line 34
    invoke-static {v0, v1}, La2/s0;->s(Landroid/net/ConnectivityManager;Lcom/bumptech/glide/manager/p;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    return v3

    .line 38
    :catch_0
    return v2
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La6/i;

    .line 4
    .line 5
    invoke-virtual {v0}, La6/i;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lcom/bumptech/glide/manager/p;

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/fragment/app/o1;->u(Landroid/net/ConnectivityManager;Lcom/bumptech/glide/manager/p;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld5/d;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p0, v1}, Ld5/d;->r(Ld5/d;Landroidx/room/i;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public e()Ljava/io/File;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld5/d;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ld5/c;

    .line 9
    .line 10
    iget-object v2, v1, Ld5/c;->f:Landroidx/room/i;

    .line 11
    .line 12
    if-ne v2, p0, :cond_1

    .line 13
    .line 14
    iget-boolean v2, v1, Ld5/c;->e:Z

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, [Z

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    aput-boolean v4, v2, v3

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    iget-object v1, v1, Ld5/c;->d:[Ljava/io/File;

    .line 30
    .line 31
    aget-object v1, v1, v3

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Ld5/d;

    .line 36
    .line 37
    iget-object v2, v2, Ld5/d;->a:Ljava/io/File;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-object v1

    .line 44
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw v1

    .line 50
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw v1
.end method

.method public f()[I
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/room/i;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, [J

    .line 12
    .line 13
    array-length v1, v0

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    if-ge v3, v1, :cond_4

    .line 18
    .line 19
    aget-wide v5, v0, v3

    .line 20
    .line 21
    add-int/lit8 v7, v4, 0x1

    .line 22
    .line 23
    const-wide/16 v8, 0x0

    .line 24
    .line 25
    const/4 v10, 0x1

    .line 26
    cmp-long v11, v5, v8

    .line 27
    .line 28
    if-lez v11, :cond_1

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v5, 0x0

    .line 33
    :goto_1
    iget-object v6, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v6, [Z

    .line 36
    .line 37
    aget-boolean v8, v6, v4

    .line 38
    .line 39
    if-eq v5, v8, :cond_3

    .line 40
    .line 41
    iget-object v8, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v8, [I

    .line 44
    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 v10, 0x2

    .line 49
    :goto_2
    aput v10, v8, v4

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_4

    .line 54
    :cond_3
    iget-object v8, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v8, [I

    .line 57
    .line 58
    aput v2, v8, v4

    .line 59
    .line 60
    :goto_3
    aput-boolean v5, v6, v4

    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    move v4, v7

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    iput-boolean v2, p0, Landroidx/room/i;->a:Z

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, [I

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 78
    monitor-exit p0

    .line 79
    return-object v0

    .line 80
    :goto_4
    monitor-exit p0

    .line 81
    goto :goto_6

    .line 82
    :goto_5
    throw v0

    .line 83
    :goto_6
    goto :goto_5
.end method

.method public g()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->i()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroidx/recyclerview/widget/m1;

    .line 12
    .line 13
    if-eqz v2, :cond_5

    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/recyclerview/widget/m1;->b()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    :goto_0
    if-ge v4, v2, :cond_4

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->g()Lp7/h;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    sget v6, Lcom/yunpan/appmanage/ui/ActivityAppDetails;->E:I

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    const-string v6, "\u9875\u9762"

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Lp7/h;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    if-ne v4, v0, :cond_1

    .line 38
    .line 39
    const-string v6, "\u670d\u52a1"

    .line 40
    .line 41
    invoke-virtual {v5, v6}, Lp7/h;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v6, 0x2

    .line 46
    if-ne v4, v6, :cond_2

    .line 47
    .line 48
    const-string v6, "\u5e7f\u64ad\u63a5\u6536\u5668"

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Lp7/h;->a(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 v6, 0x3

    .line 55
    if-ne v4, v6, :cond_3

    .line 56
    .line 57
    const-string v6, "\u5185\u5bb9\u63d0\u4f9b\u5668"

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Lp7/h;->a(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    invoke-virtual {v1, v5, v3}, Lcom/google/android/material/tabs/TabLayout;->a(Lp7/h;Z)V

    .line 63
    .line 64
    .line 65
    add-int/2addr v4, v0

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    if-lez v2, :cond_5

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    sub-int/2addr v2, v0

    .line 74
    iget-object v3, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v3, Landroidx/viewpager2/widget/ViewPager2;

    .line 77
    .line 78
    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eq v2, v3, :cond_5

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->f(I)Lp7/h;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/tabs/TabLayout;->j(Lp7/h;Z)V

    .line 97
    .line 98
    .line 99
    :cond_5
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/room/i;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x12

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "Glide registry"

    .line 12
    .line 13
    invoke-static {v0}, Lg4/a;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/room/i;->a:Z

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :try_start_0
    iget-object v1, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lcom/bumptech/glide/b;

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Ljava/util/List;

    .line 27
    .line 28
    iget-object v3, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Lq4/a;

    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Lnh/b;->p(Lcom/bumptech/glide/b;Ljava/util/List;Lq4/a;)Lcom/bumptech/glide/k;

    .line 33
    .line 34
    .line 35
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iput-boolean v0, p0, Landroidx/room/i;->a:Z

    .line 37
    .line 38
    invoke-static {}, Ld/b;->r()V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    iput-boolean v0, p0, Landroidx/room/i;->a:Z

    .line 44
    .line 45
    invoke-static {}, Ld/b;->r()V

    .line 46
    .line 47
    .line 48
    throw v1

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v1, "Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you\'re using the provided Registry rather calling glide.getRegistry()!"

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method public h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/room/i;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lha/db;

    .line 7
    .line 8
    const/16 v1, 0xd

    .line 9
    .line 10
    invoke-direct {v0, v1, p0}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lu1/b0;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lu1/b0;->d(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Landroidx/room/i;->a:Z

    .line 22
    .line 23
    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll2/q;

    .line 4
    .line 5
    invoke-interface {v0}, Ll2/q;->q()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/room/i;->a:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v0, v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Li3/l;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    iput-boolean v2, v1, Li3/l;->i:Z

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public s(Ll2/c0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll2/q;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ll2/q;->s(Ll2/c0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public z(II)Ll2/j0;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x5

    .line 5
    if-eq p2, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/room/i;->a:Z

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Landroidx/room/i;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ll2/q;

    .line 13
    .line 14
    if-eq p2, v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v1, p1, p2}, Ll2/q;->z(II)Ll2/j0;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    iget-object v0, p0, Landroidx/room/i;->d:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Li3/l;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_2
    new-instance v2, Li3/l;

    .line 35
    .line 36
    invoke-interface {v1, p1, p2}, Ll2/q;->z(II)Ll2/j0;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iget-object v1, p0, Landroidx/room/i;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Li3/h;

    .line 43
    .line 44
    invoke-direct {v2, p2, v1}, Li3/l;-><init>(Ll2/j0;Li3/h;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-object v2
.end method
