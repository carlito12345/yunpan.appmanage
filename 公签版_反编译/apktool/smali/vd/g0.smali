.class public final Lvd/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final d:Lorg/slf4j/Logger;


# instance fields
.field public final a:Lvd/y;

.field public final b:Lvd/e0;

.field public final c:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lvd/g0;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvd/g0;->d:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lvd/y;Lvd/e0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    const-wide/16 v1, 0x1

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lvd/g0;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    iput-object p1, p0, Lvd/g0;->a:Lvd/y;

    .line 14
    .line 15
    invoke-virtual {p2}, Lvd/e0;->a()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lvd/g0;->b:Lvd/e0;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "addSuppressed"

    .line 4
    .line 5
    const-class v3, Ljava/lang/Throwable;

    .line 6
    .line 7
    iget-object v4, p0, Lvd/g0;->b:Lvd/e0;

    .line 8
    .line 9
    invoke-virtual {v4}, Lvd/e0;->i()Lvd/z;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    :try_start_0
    iget-object v5, v4, Lvd/z;->d:Lvd/b0;

    .line 14
    .line 15
    invoke-virtual {v5}, Lvd/b0;->b0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v5}, Lvd/b0;->l0()Lad/k;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-interface {v6}, Lad/k;->m()Z

    .line 23
    .line 24
    .line 25
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    invoke-virtual {v5}, Lhe/e;->Y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Lvd/z;->O()V

    .line 30
    .line 31
    .line 32
    return v6

    .line 33
    :catchall_0
    move-exception v6

    .line 34
    :try_start_3
    invoke-virtual {v5}, Lhe/e;->Y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception v5

    .line 39
    :try_start_4
    new-array v7, v1, [Ljava/lang/Class;

    .line 40
    .line 41
    aput-object v3, v7, v0

    .line 42
    .line 43
    invoke-virtual {v3, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    new-array v8, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object v5, v8, v0

    .line 50
    .line 51
    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 52
    .line 53
    .line 54
    :catch_0
    :goto_0
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 55
    :catchall_2
    move-exception v5

    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    :try_start_6
    invoke-virtual {v4}, Lvd/z;->O()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_3
    move-exception v4

    .line 63
    :try_start_7
    new-array v6, v1, [Ljava/lang/Class;

    .line 64
    .line 65
    aput-object v3, v6, v0

    .line 66
    .line 67
    invoke-virtual {v3, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-array v1, v1, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v4, v1, v0

    .line 74
    .line 75
    invoke-virtual {v2, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 76
    .line 77
    .line 78
    :catch_1
    :cond_0
    :goto_1
    throw v5
.end method

.method public final J()Lvc/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/g0;->b:Lvd/e0;

    .line 2
    .line 3
    iget-object v0, v0, Lvd/e0;->a:Lvc/b;

    .line 4
    .line 5
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final K()I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "addSuppressed"

    .line 4
    .line 5
    const-class v3, Ljava/lang/Throwable;

    .line 6
    .line 7
    iget-object v4, p0, Lvd/g0;->b:Lvd/e0;

    .line 8
    .line 9
    invoke-virtual {v4}, Lvd/e0;->i()Lvd/z;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    :try_start_0
    iget-object v5, v4, Lvd/z;->d:Lvd/b0;

    .line 14
    .line 15
    invoke-virtual {v5}, Lvd/b0;->b0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v5}, Lvd/b0;->l0()Lad/k;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-interface {v6}, Lad/k;->H()I

    .line 23
    .line 24
    .line 25
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    invoke-virtual {v5}, Lhe/e;->Y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Lvd/z;->O()V

    .line 30
    .line 31
    .line 32
    return v6

    .line 33
    :catchall_0
    move-exception v6

    .line 34
    :try_start_3
    invoke-virtual {v5}, Lhe/e;->Y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception v5

    .line 39
    :try_start_4
    new-array v7, v1, [Ljava/lang/Class;

    .line 40
    .line 41
    aput-object v3, v7, v0

    .line 42
    .line 43
    invoke-virtual {v3, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    new-array v8, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object v5, v8, v0

    .line 50
    .line 51
    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 52
    .line 53
    .line 54
    :catch_0
    :goto_0
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 55
    :catchall_2
    move-exception v5

    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    :try_start_6
    invoke-virtual {v4}, Lvd/z;->O()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_3
    move-exception v4

    .line 63
    :try_start_7
    new-array v6, v1, [Ljava/lang/Class;

    .line 64
    .line 65
    aput-object v3, v6, v0

    .line 66
    .line 67
    invoke-virtual {v3, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-array v1, v1, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v4, v1, v0

    .line 74
    .line 75
    invoke-virtual {v2, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 76
    .line 77
    .line 78
    :catch_1
    :cond_0
    :goto_1
    throw v5
.end method

.method public final L()I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "addSuppressed"

    .line 4
    .line 5
    const-class v3, Ljava/lang/Throwable;

    .line 6
    .line 7
    iget-object v4, p0, Lvd/g0;->b:Lvd/e0;

    .line 8
    .line 9
    invoke-virtual {v4}, Lvd/e0;->i()Lvd/z;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    :try_start_0
    iget-object v5, v4, Lvd/z;->d:Lvd/b0;

    .line 14
    .line 15
    invoke-virtual {v5}, Lvd/b0;->b0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 16
    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v5}, Lvd/b0;->l0()Lad/k;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-interface {v6}, Lad/k;->o()I

    .line 23
    .line 24
    .line 25
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    invoke-virtual {v5}, Lhe/e;->Y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Lvd/z;->O()V

    .line 30
    .line 31
    .line 32
    return v6

    .line 33
    :catchall_0
    move-exception v6

    .line 34
    :try_start_3
    invoke-virtual {v5}, Lhe/e;->Y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_1
    move-exception v5

    .line 39
    :try_start_4
    new-array v7, v1, [Ljava/lang/Class;

    .line 40
    .line 41
    aput-object v3, v7, v0

    .line 42
    .line 43
    invoke-virtual {v3, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    new-array v8, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object v5, v8, v0

    .line 50
    .line 51
    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 52
    .line 53
    .line 54
    :catch_0
    :goto_0
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 55
    :catchall_2
    move-exception v5

    .line 56
    if-eqz v4, :cond_0

    .line 57
    .line 58
    :try_start_6
    invoke-virtual {v4}, Lvd/z;->O()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_3
    move-exception v4

    .line 63
    :try_start_7
    new-array v6, v1, [Ljava/lang/Class;

    .line 64
    .line 65
    aput-object v3, v6, v0

    .line 66
    .line 67
    invoke-virtual {v3, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-array v1, v1, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v4, v1, v0

    .line 74
    .line 75
    invoke-virtual {v2, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 76
    .line 77
    .line 78
    :catch_1
    :cond_0
    :goto_1
    throw v5
.end method

.method public final M()I
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lvd/g0;->b:Lvd/e0;

    .line 4
    .line 5
    invoke-virtual {v2}, Lvd/e0;->j()Lvd/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    :try_start_0
    iget-object v3, v2, Lvd/h0;->f:Ljava/lang/String;

    .line 10
    .line 11
    const-string v4, "LPT1:"

    .line 12
    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    const/16 v0, 0x20

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v4, "COMM"

    .line 23
    .line 24
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/16 v0, 0x40

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/16 v0, 0x8

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v2, v1}, Lvd/h0;->M(Z)V

    .line 36
    .line 37
    .line 38
    return v0

    .line 39
    :catchall_0
    move-exception v3

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    :try_start_1
    invoke-virtual {v2, v1}, Lvd/h0;->M(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_1
    move-exception v2

    .line 47
    const-class v4, Ljava/lang/Throwable;

    .line 48
    .line 49
    :try_start_2
    const-string v5, "addSuppressed"

    .line 50
    .line 51
    new-array v6, v0, [Ljava/lang/Class;

    .line 52
    .line 53
    aput-object v4, v6, v1

    .line 54
    .line 55
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    .line 61
    aput-object v2, v0, v1

    .line 62
    .line 63
    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    .line 65
    .line 66
    :catch_0
    :cond_2
    :goto_1
    throw v3
.end method

.method public final N(I)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lvd/g0;->b:Lvd/e0;

    .line 4
    .line 5
    invoke-virtual {v2}, Lvd/e0;->i()Lvd/z;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "addSuppressed"

    .line 10
    .line 11
    const-class v4, Ljava/lang/Throwable;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object v5, v2, Lvd/z;->d:Lvd/b0;

    .line 16
    .line 17
    invoke-virtual {v5}, Lvd/b0;->b0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 18
    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v5}, Lvd/b0;->l0()Lad/k;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-interface {v6, p1}, Lad/k;->x(I)Z

    .line 25
    .line 26
    .line 27
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :try_start_2
    invoke-virtual {v5}, Lhe/e;->Y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lvd/z;->O()V

    .line 32
    .line 33
    .line 34
    return p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    :try_start_3
    invoke-virtual {v5}, Lhe/e;->Y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_1
    move-exception v5

    .line 41
    :try_start_4
    new-array v6, v1, [Ljava/lang/Class;

    .line 42
    .line 43
    aput-object v4, v6, v0

    .line 44
    .line 45
    invoke-virtual {v4, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    new-array v7, v1, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object v5, v7, v0

    .line 52
    .line 53
    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 54
    .line 55
    .line 56
    :catch_0
    :goto_0
    :try_start_5
    throw p1

    .line 57
    :catchall_2
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    new-instance p1, Lvd/r;

    .line 60
    .line 61
    const-string v5, "Not connected"

    .line 62
    .line 63
    invoke-direct {p1, v5}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 67
    :goto_1
    if-eqz v2, :cond_1

    .line 68
    .line 69
    :try_start_6
    invoke-virtual {v2}, Lvd/z;->O()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catchall_3
    move-exception v2

    .line 74
    :try_start_7
    new-array v5, v1, [Ljava/lang/Class;

    .line 75
    .line 76
    aput-object v4, v5, v0

    .line 77
    .line 78
    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object v2, v1, v0

    .line 85
    .line 86
    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 87
    .line 88
    .line 89
    :catch_1
    :cond_1
    :goto_2
    throw p1
.end method

.method public final O()Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "addSuppressed"

    .line 4
    .line 5
    const-class v3, Ljava/lang/Throwable;

    .line 6
    .line 7
    :try_start_0
    iget-object v4, p0, Lvd/g0;->b:Lvd/e0;

    .line 8
    .line 9
    invoke-virtual {v4}, Lvd/e0;->i()Lvd/z;

    .line 10
    .line 11
    .line 12
    move-result-object v4
    :try_end_0
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_2

    .line 13
    :try_start_1
    iget-object v5, v4, Lvd/z;->d:Lvd/b0;

    .line 14
    .line 15
    invoke-virtual {v5}, Lvd/b0;->b0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 16
    .line 17
    .line 18
    :try_start_2
    invoke-virtual {v5}, Lvd/b0;->n0()Z

    .line 19
    .line 20
    .line 21
    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    :try_start_3
    invoke-virtual {v5}, Lhe/e;->Y()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 23
    .line 24
    .line 25
    :try_start_4
    invoke-virtual {v4}, Lvd/z;->O()V
    :try_end_4
    .catch Lvd/r; {:try_start_4 .. :try_end_4} :catch_2

    .line 26
    .line 27
    .line 28
    return v6

    .line 29
    :catchall_0
    move-exception v6

    .line 30
    :try_start_5
    invoke-virtual {v5}, Lhe/e;->Y()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_1
    move-exception v5

    .line 35
    :try_start_6
    new-array v7, v0, [Ljava/lang/Class;

    .line 36
    .line 37
    aput-object v3, v7, v1

    .line 38
    .line 39
    invoke-virtual {v3, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    new-array v8, v0, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object v5, v8, v1

    .line 46
    .line 47
    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 48
    .line 49
    .line 50
    :catch_0
    :goto_0
    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 51
    :catchall_2
    move-exception v5

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    :try_start_8
    invoke-virtual {v4}, Lvd/z;->O()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_3
    move-exception v4

    .line 59
    :try_start_9
    new-array v6, v0, [Ljava/lang/Class;

    .line 60
    .line 61
    aput-object v3, v6, v1

    .line 62
    .line 63
    invoke-virtual {v3, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    .line 69
    aput-object v4, v0, v1

    .line 70
    .line 71
    invoke-virtual {v2, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 72
    .line 73
    .line 74
    :catch_1
    :cond_0
    :goto_1
    :try_start_a
    throw v5
    :try_end_a
    .catch Lvd/r; {:try_start_a .. :try_end_a} :catch_2

    .line 75
    :catch_2
    move-exception v0

    .line 76
    sget-object v2, Lvd/g0;->d:Lorg/slf4j/Logger;

    .line 77
    .line 78
    const-string v3, "Failed to connect for determining SMB2 support"

    .line 79
    .line 80
    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    return v1
.end method

.method public final P()V
    .locals 12

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Lvd/g0;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 6
    .line 7
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    const-wide/16 v5, 0x0

    .line 12
    .line 13
    cmp-long v7, v3, v5

    .line 14
    .line 15
    if-nez v7, :cond_7

    .line 16
    .line 17
    iget-object v3, p0, Lvd/g0;->b:Lvd/e0;

    .line 18
    .line 19
    const-string v4, "Tree connection no longer in use, release tree "

    .line 20
    .line 21
    iget-object v7, v3, Lvd/e0;->e:Ljava/util/concurrent/atomic/AtomicLong;

    .line 22
    .line 23
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 24
    .line 25
    .line 26
    move-result-wide v7

    .line 27
    sget-object v9, Lvd/e0;->f:Lorg/slf4j/Logger;

    .line 28
    .line 29
    invoke-interface {v9}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 30
    .line 31
    .line 32
    move-result v10

    .line 33
    if-eqz v10, :cond_0

    .line 34
    .line 35
    new-instance v10, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v11, "Release tree connection "

    .line 38
    .line 39
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v11, " "

    .line 46
    .line 47
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    cmp-long v10, v7, v5

    .line 61
    .line 62
    if-nez v10, :cond_5

    .line 63
    .line 64
    monitor-enter v3

    .line 65
    :try_start_0
    invoke-virtual {v3}, Lvd/e0;->j()Lvd/h0;

    .line 66
    .line 67
    .line 68
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 69
    :try_start_1
    iget-boolean v5, v3, Lvd/e0;->c:Z

    .line 70
    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-interface {v9}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-interface {v9, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v4

    .line 98
    goto :goto_3

    .line 99
    :cond_1
    :goto_0
    iput-boolean v2, v3, Lvd/e0;->c:Z

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lvd/h0;->M(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    :cond_2
    if-eqz v0, :cond_3

    .line 105
    .line 106
    :try_start_2
    invoke-virtual {v0, v2}, Lvd/h0;->M(Z)V

    .line 107
    .line 108
    .line 109
    :cond_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 110
    iget-object v0, v3, Lvd/e0;->d:Lvd/c0;

    .line 111
    .line 112
    if-eqz v0, :cond_8

    .line 113
    .line 114
    monitor-enter v3

    .line 115
    :try_start_3
    const-string v1, "Disconnecting exclusive transport"

    .line 116
    .line 117
    invoke-interface {v9, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/4 v1, 0x0

    .line 121
    iput-object v1, v3, Lvd/e0;->d:Lvd/c0;

    .line 122
    .line 123
    iput-object v1, v3, Lvd/e0;->b:Lvd/h0;

    .line 124
    .line 125
    iput-boolean v2, v3, Lvd/e0;->c:Z

    .line 126
    .line 127
    move-object v1, v0

    .line 128
    check-cast v1, Lhe/e;

    .line 129
    .line 130
    invoke-virtual {v1}, Lhe/e;->Y()V

    .line 131
    .line 132
    .line 133
    check-cast v0, Lhe/e;

    .line 134
    .line 135
    invoke-virtual {v0, v2, v2}, Lhe/e;->K(ZZ)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :catchall_1
    move-exception v0

    .line 140
    goto :goto_2

    .line 141
    :catch_0
    move-exception v0

    .line 142
    :try_start_4
    sget-object v1, Lvd/e0;->f:Lorg/slf4j/Logger;

    .line 143
    .line 144
    const-string v2, "Failed to close exclusive transport"

    .line 145
    .line 146
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    :goto_1
    monitor-exit v3

    .line 150
    goto :goto_6

    .line 151
    :goto_2
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 152
    throw v0

    .line 153
    :catchall_2
    move-exception v0

    .line 154
    goto :goto_5

    .line 155
    :goto_3
    if-eqz v0, :cond_4

    .line 156
    .line 157
    :try_start_5
    invoke-virtual {v0, v2}, Lvd/h0;->M(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :catchall_3
    move-exception v0

    .line 162
    :try_start_6
    const-class v5, Ljava/lang/Throwable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 163
    .line 164
    :try_start_7
    const-string v6, "addSuppressed"

    .line 165
    .line 166
    new-array v7, v1, [Ljava/lang/Class;

    .line 167
    .line 168
    aput-object v5, v7, v2

    .line 169
    .line 170
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    new-array v1, v1, [Ljava/lang/Object;

    .line 175
    .line 176
    aput-object v0, v1, v2

    .line 177
    .line 178
    invoke-virtual {v5, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 179
    .line 180
    .line 181
    :catch_1
    :cond_4
    :goto_4
    :try_start_8
    throw v4

    .line 182
    :goto_5
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 183
    throw v0

    .line 184
    :cond_5
    cmp-long v1, v7, v5

    .line 185
    .line 186
    if-ltz v1, :cond_6

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v2, "Usage count dropped below zero "

    .line 192
    .line 193
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-interface {v9, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-instance v1, Landroidx/fragment/app/b0;

    .line 207
    .line 208
    const-string v2, "Usage count dropped below zero"

    .line 209
    .line 210
    invoke-direct {v1, v2, v0}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 211
    .line 212
    .line 213
    throw v1

    .line 214
    :cond_7
    cmp-long v1, v3, v5

    .line 215
    .line 216
    if-ltz v1, :cond_9

    .line 217
    .line 218
    :cond_8
    :goto_6
    return-void

    .line 219
    :cond_9
    new-instance v1, Landroidx/fragment/app/b0;

    .line 220
    .line 221
    const-string v2, "Usage count dropped below zero"

    .line 222
    .line 223
    invoke-direct {v1, v2, v0}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    throw v1
.end method

.method public final varargs Q(Lad/c;Lad/d;[Lvd/l;)Lad/d;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    iget-object v6, v1, Lvd/g0;->b:Lvd/e0;

    .line 8
    .line 9
    iget-object v7, v1, Lvd/g0;->a:Lvd/y;

    .line 10
    .line 11
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-object/from16 v0, p3

    .line 15
    .line 16
    array-length v8, v0

    .line 17
    if-nez v8, :cond_0

    .line 18
    .line 19
    const-class v0, Lvd/l;

    .line 20
    .line 21
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    move-object v8, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    const-string v9, "send"

    .line 37
    .line 38
    instance-of v0, v2, Lad/f;

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    move-object v0, v2

    .line 44
    check-cast v0, Lad/f;

    .line 45
    .line 46
    move-object v11, v0

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    move-object v11, v10

    .line 49
    :goto_2
    if-eqz v11, :cond_2

    .line 50
    .line 51
    invoke-interface {v11}, Lad/f;->getPath()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v12, v0

    .line 56
    goto :goto_3

    .line 57
    :cond_2
    move-object v12, v10

    .line 58
    :goto_3
    if-eqz v11, :cond_3

    .line 59
    .line 60
    invoke-interface {v11}, Lad/f;->W()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v13, v0

    .line 65
    goto :goto_4

    .line 66
    :cond_3
    move-object v13, v10

    .line 67
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v14, "\\"

    .line 70
    .line 71
    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v7}, Lvd/y;->c()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v15

    .line 78
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7}, Lvd/y;->d()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v7}, Lvd/y;->f()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v14

    .line 95
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    iget-object v0, v6, Lvd/e0;->a:Lvc/b;

    .line 103
    .line 104
    invoke-interface {v0}, Lvc/b;->e()Lvc/f;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lwc/a;

    .line 109
    .line 110
    iget v15, v0, Lwc/a;->m0:I

    .line 111
    .line 112
    move-object v0, v10

    .line 113
    const/4 v5, 0x1

    .line 114
    :goto_5
    sget-object v4, Lvd/e0;->f:Lorg/slf4j/Logger;

    .line 115
    .line 116
    if-gt v5, v15, :cond_d

    .line 117
    .line 118
    if-eqz v11, :cond_4

    .line 119
    .line 120
    invoke-interface {v11, v10, v10, v14}, Lad/f;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    :try_start_0
    invoke-virtual {v6, v7, v2, v3, v8}, Lvd/e0;->n(Lvd/y;Lad/c;Lad/d;Ljava/util/EnumSet;)Lad/d;

    .line 124
    .line 125
    .line 126
    move-result-object v0
    :try_end_0
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lvc/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    move-object v10, v0

    .line 130
    invoke-interface {v4, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    goto :goto_6

    .line 134
    :catch_1
    move-exception v0

    .line 135
    move-object v10, v0

    .line 136
    sget-object v0, Lvd/l;->b:Lvd/l;

    .line 137
    .line 138
    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_c

    .line 143
    .line 144
    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    instance-of v0, v0, Lhe/f;

    .line 149
    .line 150
    if-nez v0, :cond_5

    .line 151
    .line 152
    const v0, -0x3ffffff3    # -2.000003f

    .line 153
    .line 154
    .line 155
    iget v1, v10, Lvd/r;->a:I

    .line 156
    .line 157
    if-ne v1, v0, :cond_c

    .line 158
    .line 159
    :cond_5
    invoke-interface {v4, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    :goto_6
    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_6

    .line 167
    .line 168
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    move-object/from16 v18, v8

    .line 177
    .line 178
    const/4 v8, 0x3

    .line 179
    new-array v8, v8, [Ljava/lang/Object;

    .line 180
    .line 181
    const/16 v17, 0x0

    .line 182
    .line 183
    aput-object v0, v8, v17

    .line 184
    .line 185
    const/16 v16, 0x1

    .line 186
    .line 187
    aput-object v1, v8, v16

    .line 188
    .line 189
    const/4 v0, 0x2

    .line 190
    aput-object v2, v8, v0

    .line 191
    .line 192
    const-string v0, "Retrying (%d/%d) request %s"

    .line 193
    .line 194
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_6
    move-object/from16 v18, v8

    .line 203
    .line 204
    :goto_7
    const-string v0, "Disconnecting tree on send retry"

    .line 205
    .line 206
    invoke-interface {v4, v0, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v6}, Lvd/e0;->g()V

    .line 210
    .line 211
    .line 212
    if-lt v5, v15, :cond_7

    .line 213
    .line 214
    move-object v0, v10

    .line 215
    goto/16 :goto_c

    .line 216
    .line 217
    :cond_7
    const/4 v1, 0x1

    .line 218
    if-eq v5, v1, :cond_8

    .line 219
    .line 220
    :try_start_1
    sget-object v0, Lvd/e0;->g:Ljava/util/Random;

    .line 221
    .line 222
    const/16 v1, 0x3e8

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    add-int/lit16 v0, v0, 0x1f4

    .line 229
    .line 230
    int-to-long v0, v0

    .line 231
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 232
    .line 233
    .line 234
    goto :goto_8

    .line 235
    :catch_2
    move-exception v0

    .line 236
    const-string v1, "interrupted sleep in send"

    .line 237
    .line 238
    invoke-interface {v4, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    .line 240
    .line 241
    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    .line 242
    .line 243
    const-string v0, "Restting request"

    .line 244
    .line 245
    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-interface/range {p1 .. p1}, Lad/b;->reset()V

    .line 249
    .line 250
    .line 251
    :cond_9
    if-eqz v11, :cond_a

    .line 252
    .line 253
    invoke-interface {v11, v12}, Lad/f;->k(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-interface {v11}, Lad/f;->V()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-interface {v11}, Lad/f;->g()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-interface {v11, v0, v1, v13}, Lad/f;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    :cond_a
    if-eqz v3, :cond_b

    .line 268
    .line 269
    invoke-interface/range {p2 .. p2}, Lad/b;->reset()V

    .line 270
    .line 271
    .line 272
    :cond_b
    :try_start_2
    invoke-virtual {v6, v7}, Lvd/e0;->f(Lvd/y;)Lvd/g0;

    .line 273
    .line 274
    .line 275
    move-result-object v1
    :try_end_2
    .catch Lvd/r; {:try_start_2 .. :try_end_2} :catch_3

    .line 276
    :try_start_3
    const-string v0, "Have new tree connection for retry"

    .line 277
    .line 278
    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    .line 280
    .line 281
    :try_start_4
    invoke-virtual {v1}, Lvd/g0;->close()V
    :try_end_4
    .catch Lvd/r; {:try_start_4 .. :try_end_4} :catch_3

    .line 282
    .line 283
    .line 284
    move-object v0, v10

    .line 285
    const/4 v1, 0x1

    .line 286
    const/16 v17, 0x0

    .line 287
    .line 288
    goto :goto_b

    .line 289
    :catch_3
    move-exception v0

    .line 290
    const/16 v17, 0x0

    .line 291
    .line 292
    goto :goto_a

    .line 293
    :catchall_0
    move-exception v0

    .line 294
    move-object v8, v0

    .line 295
    :try_start_5
    invoke-virtual {v1}, Lvd/g0;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 296
    .line 297
    .line 298
    :catch_4
    const/16 v17, 0x0

    .line 299
    .line 300
    goto :goto_9

    .line 301
    :catchall_1
    move-exception v0

    .line 302
    move-object v1, v0

    .line 303
    :try_start_6
    const-class v0, Ljava/lang/Throwable;
    :try_end_6
    .catch Lvd/r; {:try_start_6 .. :try_end_6} :catch_3

    .line 304
    .line 305
    :try_start_7
    const-string v10, "addSuppressed"

    .line 306
    .line 307
    const/4 v2, 0x1

    .line 308
    new-array v3, v2, [Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 309
    .line 310
    const/16 v17, 0x0

    .line 311
    .line 312
    :try_start_8
    aput-object v0, v3, v17

    .line 313
    .line 314
    invoke-virtual {v0, v10, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    new-array v3, v2, [Ljava/lang/Object;

    .line 319
    .line 320
    aput-object v1, v3, v17

    .line 321
    .line 322
    invoke-virtual {v0, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 323
    .line 324
    .line 325
    :catch_5
    :goto_9
    :try_start_9
    throw v8
    :try_end_9
    .catch Lvd/r; {:try_start_9 .. :try_end_9} :catch_6

    .line 326
    :catch_6
    move-exception v0

    .line 327
    :goto_a
    const-string v1, "Failed to connect tree on retry"

    .line 328
    .line 329
    invoke-interface {v4, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    .line 331
    .line 332
    const/4 v1, 0x1

    .line 333
    :goto_b
    add-int/2addr v5, v1

    .line 334
    move-object/from16 v1, p0

    .line 335
    .line 336
    move-object/from16 v2, p1

    .line 337
    .line 338
    move-object/from16 v3, p2

    .line 339
    .line 340
    move-object/from16 v8, v18

    .line 341
    .line 342
    const/4 v10, 0x0

    .line 343
    goto/16 :goto_5

    .line 344
    .line 345
    :cond_c
    const-string v0, "Not retrying"

    .line 346
    .line 347
    invoke-interface {v4, v0, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    .line 349
    .line 350
    throw v10

    .line 351
    :cond_d
    :goto_c
    if-eqz v0, :cond_e

    .line 352
    .line 353
    const-string v1, "All attempts have failed, last exception"

    .line 354
    .line 355
    invoke-interface {v4, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    .line 357
    .line 358
    throw v0

    .line 359
    :cond_e
    new-instance v0, Lvd/r;

    .line 360
    .line 361
    const-string v1, "All attempts failed, but no exception"

    .line 362
    .line 363
    invoke-direct {v0, v1}, Lvd/r;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    goto :goto_e

    .line 367
    :goto_d
    throw v0

    .line 368
    :goto_e
    goto :goto_d
.end method

.method public final declared-synchronized close()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lvd/g0;->P()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    throw v0
.end method

.method public final finalize()V
    .locals 5

    .line 1
    iget-object v0, p0, Lvd/g0;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    sget-object v0, Lvd/g0;->d:Lorg/slf4j/Logger;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Tree handle was not properly released "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lvd/g0;->a:Lvd/y;

    .line 23
    .line 24
    iget-object v2, v2, Lvd/y;->a:Ljava/net/URL;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public final r()V
    .locals 5

    .line 1
    iget-object v0, p0, Lvd/g0;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x1

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lvd/g0;->b:Lvd/e0;

    .line 14
    .line 15
    invoke-virtual {v0}, Lvd/e0;->a()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
