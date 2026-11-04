.class public abstract Lid/d;
.super Lid/b;
.source "SourceFile"

# interfaces
.implements Lad/d;


# instance fields
.field public A:Z

.field public B:Ljava/lang/Exception;

.field public C:Z

.field public x:Z

.field public y:Z

.field public z:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lvc/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lid/b;-><init>(Lvc/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lid/b;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lid/b;->j:I

    .line 6
    .line 7
    const/16 v1, 0x103

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lid/d;->x:Z

    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_1
    move-exception v0

    .line 30
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    throw v0
.end method

.method public final D()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lid/d;->y:Z

    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v0
.end method

.method public E(Lad/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lid/b;->w:Lid/b;

    .line 2
    .line 3
    check-cast v0, Lad/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lad/d;->E(Lad/c;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lid/d;->A:Z

    .line 2
    .line 3
    return v0
.end method

.method public final O()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lid/d;->x:Z

    .line 3
    .line 4
    return-void
.end method

.method public final P(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lid/d;->z:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final R()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lid/d;->z:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final T()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lid/d;->y:Z

    .line 2
    .line 3
    return v0
.end method

.method public final c0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lid/d;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lid/b;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public final getException()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lid/d;->B:Ljava/lang/Exception;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i0(II[B)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lid/b;->t:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-array v0, p2, [B

    .line 7
    .line 8
    invoke-static {p3, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lid/b;->v:[B

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lid/d;->q0(II[B)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iput-boolean v1, p0, Lid/d;->C:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Lid/d;->C()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    new-instance p1, Lad/g;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const-string p3, "Signature verification failed for "

    .line 36
    .line 37
    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-direct {p1, p2}, Lad/g;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public final l(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lid/d;->y:Z

    .line 3
    .line 4
    iput-object p1, p0, Lid/d;->B:Ljava/lang/Exception;

    .line 5
    .line 6
    iput-boolean v0, p0, Lid/d;->x:Z

    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1
.end method

.method public final q0(II[B)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lid/b;->g:Lid/f;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    iget-boolean v2, p0, Lid/b;->n:Z

    .line 7
    .line 8
    if-nez v2, :cond_4

    .line 9
    .line 10
    iget-object v2, p0, Lid/b;->h:Lvc/f;

    .line 11
    .line 12
    check-cast v2, Lwc/a;

    .line 13
    .line 14
    iget-boolean v2, v2, Lwc/a;->s0:Z

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget v2, p0, Lid/b;->j:I

    .line 19
    .line 20
    if-nez v2, :cond_4

    .line 21
    .line 22
    :cond_0
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v2, v0, Lid/f;->a:Ljavax/crypto/Mac;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljavax/crypto/Mac;->reset()V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, p1, 0x10

    .line 29
    .line 30
    invoke-static {v2, p3}, Lrd/a;->b(I[B)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    and-int/lit8 v2, v2, 0x8

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    sget-object p1, Lid/f;->b:Lorg/slf4j/Logger;

    .line 39
    .line 40
    const-string p2, "The server did not sign a message we expected to be signed"

    .line 41
    .line 42
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    monitor-exit v0

    .line 46
    :goto_0
    const/4 v5, 0x1

    .line 47
    goto :goto_2

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_3

    .line 50
    :cond_1
    const/16 v2, 0x10

    .line 51
    .line 52
    :try_start_1
    new-array v3, v2, [B

    .line 53
    .line 54
    add-int/lit8 v4, p1, 0x30

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    invoke-static {p3, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    :goto_1
    if-ge v6, v2, :cond_2

    .line 62
    .line 63
    add-int v7, v4, v6

    .line 64
    .line 65
    aput-byte v5, p3, v7

    .line 66
    .line 67
    add-int/lit8 v6, v6, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    iget-object v4, v0, Lid/f;->a:Ljavax/crypto/Mac;

    .line 71
    .line 72
    invoke-virtual {v4, p3, p1, p2}, Ljavax/crypto/Mac;->update([BII)V

    .line 73
    .line 74
    .line 75
    new-array p1, v2, [B

    .line 76
    .line 77
    iget-object p2, v0, Lid/f;->a:Ljavax/crypto/Mac;

    .line 78
    .line 79
    invoke-virtual {p2}, Ljavax/crypto/Mac;->doFinal()[B

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {p2, v5, p1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    .line 85
    .line 86
    invoke-static {v3, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 87
    .line 88
    .line 89
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    if-nez p1, :cond_3

    .line 91
    .line 92
    monitor-exit v0

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    monitor-exit v0

    .line 95
    :goto_2
    iput-boolean v5, p0, Lid/d;->A:Z

    .line 96
    .line 97
    xor-int/lit8 p1, v5, 0x1

    .line 98
    .line 99
    return p1

    .line 100
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    throw p1

    .line 102
    :cond_4
    return v1
.end method

.method public final r()I
    .locals 1

    .line 1
    iget v0, p0, Lid/b;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final reset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lid/b;->reset()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lid/d;->x:Z

    .line 6
    .line 7
    return-void
.end method

.method public final t()Lad/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lid/b;->w:Lid/b;

    .line 2
    .line 3
    check-cast v0, Lad/d;

    .line 4
    .line 5
    return-object v0
.end method
