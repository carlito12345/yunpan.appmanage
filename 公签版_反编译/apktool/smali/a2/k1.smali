.class public final La2/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwb/j;


# instance fields
.field public final a:I

.field public b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La2/g1;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, La2/g1;-><init>(I)V

    iput-object v0, p0, La2/k1;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Li5/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Li5/b;-><init>(I)V

    iput-object v0, p0, La2/k1;->d:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La2/k1;->e:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La2/k1;->f:Ljava/lang/Object;

    .line 6
    iput p1, p0, La2/k1;->a:I

    return-void
.end method

.method public constructor <init>(Lr1/p;Lr1/p;IILa2/x;Ls1/h;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, La2/k1;->c:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, La2/k1;->d:Ljava/lang/Object;

    .line 19
    iput p3, p0, La2/k1;->a:I

    .line 20
    iput p4, p0, La2/k1;->b:I

    .line 21
    iput-object p5, p0, La2/k1;->e:Ljava/lang/Object;

    .line 22
    iput-object p6, p0, La2/k1;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lwb/c;Lmb/g;ILandroid/util/SparseArray;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p3, p0, La2/k1;->b:I

    iput p3, p0, La2/k1;->a:I

    .line 9
    new-instance p3, Lwb/h;

    invoke-direct {p3}, Lwb/h;-><init>()V

    iput-object p3, p0, La2/k1;->d:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, La2/k1;->c:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, La2/k1;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p3, Lwb/h;->b:Z

    .line 13
    iput-boolean p1, p3, Lwb/h;->c:Z

    const/4 p1, 0x0

    .line 14
    iput p1, p3, Lwb/h;->d:I

    .line 15
    iput-object p4, p0, La2/k1;->e:Ljava/lang/Object;

    return-void
.end method

.method public static a(La2/k1;)Z
    .locals 1

    .line 1
    iget-object p0, p0, La2/k1;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lr1/p;

    .line 4
    .line 5
    iget-object p0, p0, Lr1/p;->o:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "audio/raw"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method


# virtual methods
.method public declared-synchronized b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, La2/k1;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public c(Ljava/lang/Class;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, La2/k1;->h(Ljava/lang/Class;)Ljava/util/NavigableMap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Integer;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sub-int/2addr v0, v2

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v1, "Tried to decrement empty size, size: "

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string p2, ", this: "

    .line 62
    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public d(I)V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget v0, p0, La2/k1;->b:I

    .line 2
    .line 3
    if-le v0, p1, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, La2/k1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, La2/g1;

    .line 8
    .line 9
    invoke-virtual {v0}, La2/g1;->Y()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, La6/h;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v1}, La2/k1;->f(Ljava/lang/Class;)Li5/d;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v2, p0, La2/k1;->b:I

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Li5/d;->a(Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v1}, Li5/d;->b()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    mul-int v4, v4, v3

    .line 35
    .line 36
    sub-int/2addr v2, v4

    .line 37
    iput v2, p0, La2/k1;->b:I

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Li5/d;->a(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {p0, v3, v2}, La2/k1;->c(Ljava/lang/Class;I)V

    .line 48
    .line 49
    .line 50
    iget v2, v1, Li5/d;->a:I

    .line 51
    .line 52
    packed-switch v2, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    const-string v2, "IntegerArrayPool"

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_0
    const-string v2, "ByteArrayPool"

    .line 59
    .line 60
    :goto_1
    const/4 v3, 0x2

    .line 61
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Li5/d;->a(Ljava/lang/Object;)I

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized e(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, La2/k1;->h(Ljava/lang/Class;)Ljava/util/NavigableMap;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Integer;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget v1, p0, La2/k1;->b:I

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget v2, p0, La2/k1;->a:I

    .line 23
    .line 24
    div-int/2addr v2, v1

    .line 25
    const/4 v1, 0x2

    .line 26
    if-lt v2, v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    mul-int/lit8 v2, p2, 0x8

    .line 34
    .line 35
    if-gt v1, v2, :cond_3

    .line 36
    .line 37
    :cond_1
    :goto_0
    iget-object p2, p0, La2/k1;->d:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p2, Li5/b;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p2, La/b;->a:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Ljava/util/ArrayDeque;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Li5/i;

    .line 54
    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2}, Li5/b;->t()Li5/i;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_2
    check-cast v1, Li5/f;

    .line 62
    .line 63
    iput v0, v1, Li5/f;->b:I

    .line 64
    .line 65
    iput-object p1, v1, Li5/f;->c:Ljava/lang/Class;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    iget-object v0, p0, La2/k1;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Li5/b;

    .line 73
    .line 74
    iget-object v1, v0, La/b;->a:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Ljava/util/ArrayDeque;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Li5/i;

    .line 83
    .line 84
    if-nez v1, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0}, Li5/b;->t()Li5/i;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :cond_4
    check-cast v1, Li5/f;

    .line 91
    .line 92
    iput p2, v1, Li5/f;->b:I

    .line 93
    .line 94
    iput-object p1, v1, Li5/f;->c:Ljava/lang/Class;

    .line 95
    .line 96
    :goto_1
    invoke-virtual {p0, v1, p1}, La2/k1;->g(Li5/f;Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    .line 101
    return-object p1

    .line 102
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    throw p1
.end method

.method public f(Ljava/lang/Class;)Li5/d;
    .locals 3

    .line 1
    iget-object v0, p0, La2/k1;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Li5/d;

    .line 10
    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    const-class v1, [I

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Li5/d;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, v2}, Li5/d;-><init>(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-class v1, [B

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    new-instance v1, Li5/d;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v1, v2}, Li5/d;-><init>(I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "No array pool found for: "

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_2
    :goto_1
    return-object v1
.end method

.method public g(Li5/f;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, La2/k1;->f(Ljava/lang/Class;)Li5/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, La2/k1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, La2/g1;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, La2/g1;->P(Li5/i;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget v2, p0, La2/k1;->b:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Li5/d;->a(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-virtual {v0}, Li5/d;->b()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    mul-int v4, v4, v3

    .line 26
    .line 27
    sub-int/2addr v2, v4

    .line 28
    iput v2, p0, La2/k1;->b:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Li5/d;->a(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {p0, p2, v2}, La2/k1;->c(Ljava/lang/Class;I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget p1, p1, Li5/f;->b:I

    .line 40
    .line 41
    iget p2, v0, Li5/d;->a:I

    .line 42
    .line 43
    packed-switch p2, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    new-array p1, p1, [I

    .line 47
    .line 48
    :goto_0
    move-object v1, p1

    .line 49
    goto :goto_1

    .line 50
    :pswitch_0
    new-array p1, p1, [B

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    return-object v1

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h(Ljava/lang/Class;)Ljava/util/NavigableMap;
    .locals 2

    .line 1
    iget-object v0, p0, La2/k1;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/util/NavigableMap;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/util/TreeMap;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v1
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, La2/k1;->b:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, La2/k1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lmb/g;

    .line 8
    .line 9
    iget-object v1, v1, Lmb/g;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public declared-synchronized i(Ljava/lang/Object;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, La2/k1;->f(Ljava/lang/Class;)Li5/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Li5/d;->a(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v1}, Li5/d;->b()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    mul-int v1, v1, v2

    .line 19
    .line 20
    iget v3, p0, La2/k1;->a:I

    .line 21
    .line 22
    div-int/lit8 v3, v3, 0x2

    .line 23
    .line 24
    if-gt v1, v3, :cond_2

    .line 25
    .line 26
    iget-object v3, p0, La2/k1;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Li5/b;

    .line 29
    .line 30
    iget-object v4, v3, La/b;->a:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v4, Ljava/util/ArrayDeque;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Li5/i;

    .line 39
    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v3}, Li5/b;->t()Li5/i;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    :cond_0
    check-cast v4, Li5/f;

    .line 47
    .line 48
    iput v2, v4, Li5/f;->b:I

    .line 49
    .line 50
    iput-object v0, v4, Li5/f;->c:Ljava/lang/Class;

    .line 51
    .line 52
    iget-object v2, p0, La2/k1;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, La2/g1;

    .line 55
    .line 56
    invoke-virtual {v2, v4, p1}, La2/g1;->W(Li5/i;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, La2/k1;->h(Ljava/lang/Class;)Ljava/util/NavigableMap;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget v0, v4, Li5/f;->b:I

    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/lang/Integer;

    .line 74
    .line 75
    iget v2, v4, Li5/f;->b:I

    .line 76
    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const/4 v3, 0x1

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    add-int/2addr v3, v0

    .line 90
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget p1, p0, La2/k1;->b:I

    .line 98
    .line 99
    add-int/2addr p1, v1

    .line 100
    iput p1, p0, La2/k1;->b:I

    .line 101
    .line 102
    iget p1, p0, La2/k1;->a:I

    .line 103
    .line 104
    invoke-virtual {p0, p1}, La2/k1;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    monitor-exit p0

    .line 108
    return-void

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    monitor-exit p0

    .line 112
    return-void

    .line 113
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    throw p1
.end method

.method public declared-synchronized j(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/16 v0, 0x28

    .line 3
    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, La2/k1;->b()V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/16 v0, 0x14

    .line 13
    .line 14
    if-ge p1, v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0xf

    .line 17
    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    .line 20
    :cond_1
    iget p1, p0, La2/k1;->a:I

    .line 21
    .line 22
    div-int/lit8 p1, p1, 0x2

    .line 23
    .line 24
    invoke-virtual {p0, p1}, La2/k1;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
.end method

.method public next()Lwb/h;
    .locals 3

    .line 1
    invoke-virtual {p0}, La2/k1;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget v0, p0, La2/k1;->b:I

    .line 8
    .line 9
    iget-object v1, p0, La2/k1;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lwb/h;

    .line 12
    .line 13
    iput v0, v1, Lwb/h;->a:I

    .line 14
    .line 15
    iget-object v2, p0, La2/k1;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Landroid/util/SparseArray;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lmb/h;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, La2/k1;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lmb/g;

    .line 34
    .line 35
    iget v2, p0, La2/k1;->b:I

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lmb/g;->o(I)Lmb/h;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_1
    iget v0, v0, Lmb/h;->c:I

    .line 42
    .line 43
    iput v0, v1, Lwb/h;->e:I

    .line 44
    .line 45
    iget-object v0, p0, La2/k1;->f:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lwb/c;

    .line 48
    .line 49
    invoke-virtual {v0}, Lwb/c;->t()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, v1, Lwb/h;->f:Ljava/util/List;

    .line 54
    .line 55
    iget v0, p0, La2/k1;->b:I

    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    iput v0, p0, La2/k1;->b:I

    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget v0, p0, La2/k1;->a:I

    .line 2
    .line 3
    iput v0, p0, La2/k1;->b:I

    .line 4
    .line 5
    return-void
.end method
