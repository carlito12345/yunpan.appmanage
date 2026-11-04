.class public final Lf2/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/a0;
.implements Ll2/q;
.implements Li2/g;


# static fields
.field public static final X:Ljava/util/Map;

.field public static final Y:Lr1/p;


# instance fields
.field public A:Z

.field public B:Z

.field public C:La2/w0;

.field public D:Ll2/c0;

.field public E:J

.field public F:Z

.field public G:I

.field public final H:J

.field public I:Z

.field public K:Z

.field public L:Z

.field public M:I

.field public N:Z

.field public O:J

.field public P:J

.field public R:Z

.field public S:I

.field public T:Z

.field public V:Z

.field public final a:Landroid/net/Uri;

.field public final b:Lw1/h;

.field public final c:Lb2/g;

.field public final d:Lha/j2;

.field public final e:Lb2/d;

.field public final f:Lb2/d;

.field public final g:Lf2/x0;

.field public final h:Ls4/a;

.field public final i:J

.field public final j:Lr1/p;

.field public final k:J

.field public final l:Li2/j;

.field public final m:Lv3/f;

.field public final n:Lu1/e;

.field public final p:Lf2/n0;

.field public final q:Lf2/n0;

.field public final r:Landroid/os/Handler;

.field public s:Lf2/z;

.field public t:Ly2/b;

.field public v:[Lf2/q0;

.field public w:[Lf2/b1;

.field public x:[Lf2/t0;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Icy-MetaData"

    .line 7
    .line 8
    const-string v2, "1"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lf2/u0;->X:Ljava/util/Map;

    .line 18
    .line 19
    new-instance v0, Lr1/o;

    .line 20
    .line 21
    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "icy"

    .line 25
    .line 26
    iput-object v1, v0, Lr1/o;->a:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "application/x-icy"

    .line 29
    .line 30
    invoke-static {v1}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lr1/o;->n:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v1, Lr1/p;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lr1/p;-><init>(Lr1/o;)V

    .line 39
    .line 40
    .line 41
    sput-object v1, Lf2/u0;->Y:Lr1/p;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lw1/h;Lv3/f;Lb2/g;Lb2/d;Lha/j2;Lb2/d;Lf2/x0;Ls4/a;ILr1/p;JLj2/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lf2/u0;->a:Landroid/net/Uri;

    .line 6
    .line 7
    iput-object p2, p0, Lf2/u0;->b:Lw1/h;

    .line 8
    .line 9
    iput-object p4, p0, Lf2/u0;->c:Lb2/g;

    .line 10
    .line 11
    iput-object p5, p0, Lf2/u0;->f:Lb2/d;

    .line 12
    .line 13
    iput-object p6, p0, Lf2/u0;->d:Lha/j2;

    .line 14
    .line 15
    iput-object p7, p0, Lf2/u0;->e:Lb2/d;

    .line 16
    .line 17
    iput-object p8, p0, Lf2/u0;->g:Lf2/x0;

    .line 18
    .line 19
    iput-object p9, p0, Lf2/u0;->h:Ls4/a;

    .line 20
    .line 21
    int-to-long p1, p10

    .line 22
    iput-wide p1, p0, Lf2/u0;->i:J

    .line 23
    .line 24
    iput-object p11, p0, Lf2/u0;->j:Lr1/p;

    .line 25
    .line 26
    const-wide/high16 p1, -0x8000000000000000L

    .line 27
    .line 28
    iput-wide p1, p0, Lf2/u0;->H:J

    .line 29
    .line 30
    if-eqz p14, :cond_0

    .line 31
    .line 32
    new-instance p1, Li2/j;

    .line 33
    .line 34
    invoke-direct {p1, p14}, Li2/j;-><init>(Lj2/a;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Li2/j;

    .line 39
    .line 40
    const-string p2, "ProgressiveMediaPeriod"

    .line 41
    .line 42
    const-string p4, "ExoPlayer:Loader:"

    .line 43
    .line 44
    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    sget-object p4, Lu1/f0;->a:Ljava/lang/String;

    .line 49
    .line 50
    new-instance p4, Landroidx/emoji2/text/a;

    .line 51
    .line 52
    invoke-direct {p4, p2, v0}, Landroidx/emoji2/text/a;-><init>(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {p4}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    new-instance p4, Lha/jd;

    .line 60
    .line 61
    const/16 p5, 0x9

    .line 62
    .line 63
    invoke-direct {p4, p5}, Lha/jd;-><init>(I)V

    .line 64
    .line 65
    .line 66
    new-instance p5, Lj2/a;

    .line 67
    .line 68
    invoke-direct {p5, p2, p4}, Lj2/a;-><init>(Ljava/util/concurrent/ExecutorService;Lha/jd;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p1, p5}, Li2/j;-><init>(Lj2/a;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    iput-object p1, p0, Lf2/u0;->l:Li2/j;

    .line 75
    .line 76
    iput-object p3, p0, Lf2/u0;->m:Lv3/f;

    .line 77
    .line 78
    iput-wide p12, p0, Lf2/u0;->k:J

    .line 79
    .line 80
    new-instance p1, Lu1/e;

    .line 81
    .line 82
    invoke-direct {p1}, Lu1/e;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object p1, p0, Lf2/u0;->n:Lu1/e;

    .line 86
    .line 87
    new-instance p1, Lf2/n0;

    .line 88
    .line 89
    invoke-direct {p1, p0, v0}, Lf2/n0;-><init>(Lf2/u0;I)V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lf2/u0;->p:Lf2/n0;

    .line 93
    .line 94
    new-instance p1, Lf2/n0;

    .line 95
    .line 96
    const/4 p2, 0x2

    .line 97
    invoke-direct {p1, p0, p2}, Lf2/n0;-><init>(Lf2/u0;I)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lf2/u0;->q:Lf2/n0;

    .line 101
    .line 102
    const/4 p1, 0x0

    .line 103
    invoke-static {p1}, Lu1/f0;->k(Landroidx/media3/exoplayer/video/l;)Landroid/os/Handler;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iput-object p1, p0, Lf2/u0;->r:Landroid/os/Handler;

    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    new-array p2, p1, [Lf2/t0;

    .line 111
    .line 112
    iput-object p2, p0, Lf2/u0;->x:[Lf2/t0;

    .line 113
    .line 114
    new-array p2, p1, [Lf2/b1;

    .line 115
    .line 116
    iput-object p2, p0, Lf2/u0;->w:[Lf2/b1;

    .line 117
    .line 118
    new-array p1, p1, [Lf2/q0;

    .line 119
    .line 120
    iput-object p1, p0, Lf2/u0;->v:[Lf2/q0;

    .line 121
    .line 122
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    iput-wide p1, p0, Lf2/u0;->P:J

    .line 128
    .line 129
    iput v0, p0, Lf2/u0;->G:I

    .line 130
    .line 131
    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf2/u0;->t()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lf2/u0;->R:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-boolean v0, p0, Lf2/u0;->A:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lf2/u0;->C:La2/w0;

    .line 13
    .line 14
    iget-object v0, v0, La2/w0;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, [Z

    .line 17
    .line 18
    aget-boolean v0, v0, p1

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lf2/u0;->w:[Lf2/b1;

    .line 23
    .line 24
    aget-object p1, v0, p1

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Lf2/b1;->o(Z)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-wide/16 v1, 0x0

    .line 35
    .line 36
    iput-wide v1, p0, Lf2/u0;->P:J

    .line 37
    .line 38
    iput-boolean v0, p0, Lf2/u0;->R:Z

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lf2/u0;->K:Z

    .line 42
    .line 43
    iput-wide v1, p0, Lf2/u0;->O:J

    .line 44
    .line 45
    iput v0, p0, Lf2/u0;->S:I

    .line 46
    .line 47
    iget-object p1, p0, Lf2/u0;->w:[Lf2/b1;

    .line 48
    .line 49
    array-length v1, p1

    .line 50
    const/4 v2, 0x0

    .line 51
    :goto_0
    if-ge v2, v1, :cond_2

    .line 52
    .line 53
    aget-object v3, p1, v2

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Lf2/b1;->r(Z)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p0, Lf2/u0;->s:Lf2/z;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, p0}, Lf2/z;->b(Lf2/d1;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    return-void
.end method

.method public final B(Lf2/t0;)Ll2/j0;
    .locals 5

    .line 1
    iget-object v0, p0, Lf2/u0;->w:[Lf2/b1;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lf2/u0;->x:[Lf2/t0;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Lf2/t0;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lf2/u0;->w:[Lf2/b1;

    .line 18
    .line 19
    aget-object p1, p1, v1

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-boolean v1, p0, Lf2/u0;->y:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "Extractor added new track (id="

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget p1, p1, Lf2/t0;->a:I

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, ") after finishing tracks."

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Ll2/n;

    .line 54
    .line 55
    invoke-direct {p1}, Ll2/n;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_2
    new-instance v1, Lf2/b1;

    .line 60
    .line 61
    iget-object v2, p0, Lf2/u0;->c:Lb2/g;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lf2/u0;->f:Lb2/d;

    .line 67
    .line 68
    iget-object v4, p0, Lf2/u0;->h:Ls4/a;

    .line 69
    .line 70
    invoke-direct {v1, v4, v2, v3}, Lf2/b1;-><init>(Ls4/a;Lb2/g;Lb2/d;)V

    .line 71
    .line 72
    .line 73
    new-instance v2, Lf2/q0;

    .line 74
    .line 75
    invoke-direct {v2, v1}, Lf2/q0;-><init>(Lf2/b1;)V

    .line 76
    .line 77
    .line 78
    iput-object p0, v1, Lf2/b1;->f:Lf2/u0;

    .line 79
    .line 80
    iget-object v3, p0, Lf2/u0;->x:[Lf2/t0;

    .line 81
    .line 82
    add-int/lit8 v4, v0, 0x1

    .line 83
    .line 84
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, [Lf2/t0;

    .line 89
    .line 90
    aput-object p1, v3, v0

    .line 91
    .line 92
    iput-object v3, p0, Lf2/u0;->x:[Lf2/t0;

    .line 93
    .line 94
    iget-object p1, p0, Lf2/u0;->w:[Lf2/b1;

    .line 95
    .line 96
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, [Lf2/b1;

    .line 101
    .line 102
    aput-object v1, p1, v0

    .line 103
    .line 104
    iput-object p1, p0, Lf2/u0;->w:[Lf2/b1;

    .line 105
    .line 106
    iget-object p1, p0, Lf2/u0;->v:[Lf2/q0;

    .line 107
    .line 108
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, [Lf2/q0;

    .line 113
    .line 114
    aput-object v2, p1, v0

    .line 115
    .line 116
    iput-object p1, p0, Lf2/u0;->v:[Lf2/q0;

    .line 117
    .line 118
    return-object v2
.end method

.method public final C(Ll2/c0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf2/u0;->t:Ly2/b;

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move-object v0, p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Ll2/s;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Ll2/s;-><init>(J)V

    .line 15
    .line 16
    .line 17
    :goto_0
    iput-object v0, p0, Lf2/u0;->D:Ll2/c0;

    .line 18
    .line 19
    invoke-interface {p1}, Ll2/c0;->h()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    iput-wide v3, p0, Lf2/u0;->E:J

    .line 24
    .line 25
    iget-boolean v0, p0, Lf2/u0;->N:Z

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p1}, Ll2/c0;->h()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    cmp-long v0, v4, v1

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_1
    iput-boolean v0, p0, Lf2/u0;->F:Z

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const/4 v3, 0x7

    .line 46
    :cond_2
    iput v3, p0, Lf2/u0;->G:I

    .line 47
    .line 48
    iget-boolean v1, p0, Lf2/u0;->z:Z

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    iget-object v1, p0, Lf2/u0;->g:Lf2/x0;

    .line 53
    .line 54
    iget-wide v2, p0, Lf2/u0;->E:J

    .line 55
    .line 56
    invoke-virtual {v1, v2, v3, p1, v0}, Lf2/x0;->t(JLl2/c0;Z)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    invoke-virtual {p0}, Lf2/u0;->x()V

    .line 61
    .line 62
    .line 63
    :goto_2
    return-void
.end method

.method public final D()V
    .locals 14

    .line 1
    new-instance v7, Lf2/r0;

    .line 2
    .line 3
    iget-object v2, p0, Lf2/u0;->a:Landroid/net/Uri;

    .line 4
    .line 5
    iget-object v3, p0, Lf2/u0;->b:Lw1/h;

    .line 6
    .line 7
    iget-object v4, p0, Lf2/u0;->m:Lv3/f;

    .line 8
    .line 9
    iget-object v6, p0, Lf2/u0;->n:Lu1/e;

    .line 10
    .line 11
    move-object v0, v7

    .line 12
    move-object v1, p0

    .line 13
    move-object v5, p0

    .line 14
    invoke-direct/range {v0 .. v6}, Lf2/r0;-><init>(Lf2/u0;Landroid/net/Uri;Lw1/h;Lv3/f;Lf2/u0;Lu1/e;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Lf2/u0;->z:Z

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x1

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Lf2/u0;->w()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, La9/o;->t(Z)V

    .line 28
    .line 29
    .line 30
    iget-wide v0, p0, Lf2/u0;->H:J

    .line 31
    .line 32
    const-wide/high16 v2, -0x8000000000000000L

    .line 33
    .line 34
    cmp-long v4, v0, v2

    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-wide v0, p0, Lf2/u0;->E:J

    .line 40
    .line 41
    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    cmp-long v4, v0, v2

    .line 47
    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    iget-wide v4, p0, Lf2/u0;->P:J

    .line 51
    .line 52
    cmp-long v6, v4, v0

    .line 53
    .line 54
    if-lez v6, :cond_1

    .line 55
    .line 56
    iput-boolean v9, p0, Lf2/u0;->T:Z

    .line 57
    .line 58
    iput-wide v2, p0, Lf2/u0;->P:J

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lf2/u0;->D:Ll2/c0;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-wide v4, p0, Lf2/u0;->P:J

    .line 67
    .line 68
    invoke-interface {v0, v4, v5}, Ll2/c0;->f(J)Ll2/b0;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v0, v0, Ll2/b0;->a:Ll2/d0;

    .line 73
    .line 74
    iget-wide v0, v0, Ll2/d0;->b:J

    .line 75
    .line 76
    iget-wide v4, p0, Lf2/u0;->P:J

    .line 77
    .line 78
    iget-object v6, v7, Lf2/r0;->g:Ldd/c;

    .line 79
    .line 80
    iput-wide v0, v6, Ldd/c;->b:J

    .line 81
    .line 82
    iput-wide v4, v7, Lf2/r0;->j:J

    .line 83
    .line 84
    iput-boolean v9, v7, Lf2/r0;->i:Z

    .line 85
    .line 86
    iput-boolean v8, v7, Lf2/r0;->m:Z

    .line 87
    .line 88
    iget-object v0, p0, Lf2/u0;->w:[Lf2/b1;

    .line 89
    .line 90
    array-length v1, v0

    .line 91
    const/4 v4, 0x0

    .line 92
    :goto_1
    if-ge v4, v1, :cond_2

    .line 93
    .line 94
    aget-object v5, v0, v4

    .line 95
    .line 96
    iget-wide v10, p0, Lf2/u0;->P:J

    .line 97
    .line 98
    iput-wide v10, v5, Lf2/b1;->t:J

    .line 99
    .line 100
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    iput-wide v2, p0, Lf2/u0;->P:J

    .line 104
    .line 105
    :cond_3
    invoke-virtual {p0}, Lf2/u0;->u()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iput v0, p0, Lf2/u0;->S:I

    .line 110
    .line 111
    iget-object v0, p0, Lf2/u0;->d:Lha/j2;

    .line 112
    .line 113
    iget v1, p0, Lf2/u0;->G:I

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lha/j2;->d(I)I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    iget-object v10, p0, Lf2/u0;->l:Li2/j;

    .line 120
    .line 121
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    const/4 v0, 0x0

    .line 132
    iput-object v0, v10, Li2/j;->c:Ljava/io/IOException;

    .line 133
    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 135
    .line 136
    .line 137
    move-result-wide v11

    .line 138
    new-instance v13, Li2/h;

    .line 139
    .line 140
    move-object v0, v13

    .line 141
    move-object v1, v10

    .line 142
    move-object v3, v7

    .line 143
    move-object v4, p0

    .line 144
    move-wide v6, v11

    .line 145
    invoke-direct/range {v0 .. v7}, Li2/h;-><init>(Li2/j;Landroid/os/Looper;Lf2/r0;Li2/g;IJ)V

    .line 146
    .line 147
    .line 148
    iget-object v0, v10, Li2/j;->b:Li2/h;

    .line 149
    .line 150
    if-nez v0, :cond_4

    .line 151
    .line 152
    const/4 v8, 0x1

    .line 153
    :cond_4
    invoke-static {v8}, La9/o;->t(Z)V

    .line 154
    .line 155
    .line 156
    iput-object v13, v10, Li2/j;->b:Li2/h;

    .line 157
    .line 158
    invoke-virtual {v13}, Li2/h;->b()V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public final E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf2/u0;->K:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lf2/u0;->w()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public final a(Ly1/j0;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lf2/u0;->T:Z

    .line 2
    .line 3
    if-nez p1, :cond_4

    .line 4
    .line 5
    iget-object p1, p0, Lf2/u0;->l:Li2/j;

    .line 6
    .line 7
    iget-object v0, p1, Li2/j;->c:Ljava/io/IOException;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v0, p0, Lf2/u0;->R:Z

    .line 13
    .line 14
    if-nez v0, :cond_4

    .line 15
    .line 16
    iget-boolean v0, p0, Lf2/u0;->z:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lf2/u0;->j:Lr1/p;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    :cond_1
    iget v0, p0, Lf2/u0;->M:I

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object v0, p0, Lf2/u0;->n:Lu1/e;

    .line 30
    .line 31
    invoke-virtual {v0}, Lu1/e;->e()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Li2/j;->a()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0}, Lf2/u0;->D()V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    :cond_3
    return v0

    .line 46
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 47
    return p1
.end method

.method public final b(Lf2/r0;JJI)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Lf2/r0;->c:Lw1/w;

    .line 6
    .line 7
    if-nez p6, :cond_0

    .line 8
    .line 9
    new-instance v2, Lf2/t;

    .line 10
    .line 11
    iget-object v4, v1, Lf2/r0;->k:Lw1/j;

    .line 12
    .line 13
    iget-wide v5, v1, Lf2/r0;->a:J

    .line 14
    .line 15
    iget-object v5, v4, Lw1/j;->a:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    const-wide/16 v9, 0x0

    .line 22
    .line 23
    move-object v3, v2

    .line 24
    move-wide/from16 v7, p2

    .line 25
    .line 26
    invoke-direct/range {v3 .. v10}, Lf2/t;-><init>(Lw1/j;Landroid/net/Uri;Ljava/util/Map;JJ)V

    .line 27
    .line 28
    .line 29
    move-object v5, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v3, Lf2/t;

    .line 32
    .line 33
    iget-object v12, v1, Lf2/r0;->k:Lw1/j;

    .line 34
    .line 35
    iget-object v13, v2, Lw1/w;->c:Landroid/net/Uri;

    .line 36
    .line 37
    iget-object v14, v2, Lw1/w;->d:Ljava/util/Map;

    .line 38
    .line 39
    iget-wide v4, v2, Lw1/w;->b:J

    .line 40
    .line 41
    move-object v11, v3

    .line 42
    move-wide/from16 v15, p2

    .line 43
    .line 44
    move-wide/from16 v17, v4

    .line 45
    .line 46
    invoke-direct/range {v11 .. v18}, Lf2/t;-><init>(Lw1/j;Landroid/net/Uri;Ljava/util/Map;JJ)V

    .line 47
    .line 48
    .line 49
    move-object v5, v3

    .line 50
    :goto_0
    iget-wide v1, v1, Lf2/r0;->j:J

    .line 51
    .line 52
    iget-wide v3, v0, Lf2/u0;->E:J

    .line 53
    .line 54
    iget-object v9, v0, Lf2/u0;->e:Lb2/d;

    .line 55
    .line 56
    new-instance v6, Lf2/y;

    .line 57
    .line 58
    invoke-static {v1, v2}, Lu1/f0;->R(J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v13

    .line 62
    invoke-static {v3, v4}, Lu1/f0;->R(J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v15

    .line 66
    const/4 v11, -0x1

    .line 67
    const/4 v12, 0x0

    .line 68
    move-object v10, v6

    .line 69
    invoke-direct/range {v10 .. v16}, Lf2/y;-><init>(ILr1/p;JJ)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lf2/e0;

    .line 73
    .line 74
    const/4 v8, 0x0

    .line 75
    move-object v3, v1

    .line 76
    move-object v4, v9

    .line 77
    move/from16 v7, p6

    .line 78
    .line 79
    invoke-direct/range {v3 .. v8}, Lf2/e0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, v1}, Lb2/d;->a(Lu1/f;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final c()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf2/u0;->p()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final d(Lf2/r0;JJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-wide v2, v0, Lf2/u0;->E:J

    .line 6
    .line 7
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    cmp-long v7, v2, v4

    .line 14
    .line 15
    if-nez v7, :cond_1

    .line 16
    .line 17
    iget-object v2, v0, Lf2/u0;->D:Ll2/c0;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v6}, Lf2/u0;->v(Z)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    const-wide/high16 v4, -0x8000000000000000L

    .line 26
    .line 27
    cmp-long v7, v2, v4

    .line 28
    .line 29
    if-nez v7, :cond_0

    .line 30
    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-wide/16 v4, 0x2710

    .line 35
    .line 36
    add-long/2addr v2, v4

    .line 37
    :goto_0
    iput-wide v2, v0, Lf2/u0;->E:J

    .line 38
    .line 39
    iget-object v4, v0, Lf2/u0;->D:Ll2/c0;

    .line 40
    .line 41
    iget-boolean v5, v0, Lf2/u0;->F:Z

    .line 42
    .line 43
    iget-object v7, v0, Lf2/u0;->g:Lf2/x0;

    .line 44
    .line 45
    invoke-virtual {v7, v2, v3, v4, v5}, Lf2/x0;->t(JLl2/c0;Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v2, v1, Lf2/r0;->c:Lw1/w;

    .line 49
    .line 50
    new-instance v3, Lf2/t;

    .line 51
    .line 52
    iget-object v8, v1, Lf2/r0;->k:Lw1/j;

    .line 53
    .line 54
    iget-object v9, v2, Lw1/w;->c:Landroid/net/Uri;

    .line 55
    .line 56
    iget-object v10, v2, Lw1/w;->d:Ljava/util/Map;

    .line 57
    .line 58
    iget-wide v13, v2, Lw1/w;->b:J

    .line 59
    .line 60
    move-object v7, v3

    .line 61
    move-wide/from16 v11, p2

    .line 62
    .line 63
    invoke-direct/range {v7 .. v14}, Lf2/t;-><init>(Lw1/j;Landroid/net/Uri;Ljava/util/Map;JJ)V

    .line 64
    .line 65
    .line 66
    iget-object v2, v0, Lf2/u0;->d:Lha/j2;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-wide v1, v1, Lf2/r0;->j:J

    .line 72
    .line 73
    iget-wide v4, v0, Lf2/u0;->E:J

    .line 74
    .line 75
    iget-object v7, v0, Lf2/u0;->e:Lb2/d;

    .line 76
    .line 77
    new-instance v15, Lf2/y;

    .line 78
    .line 79
    invoke-static {v1, v2}, Lu1/f0;->R(J)J

    .line 80
    .line 81
    .line 82
    move-result-wide v11

    .line 83
    invoke-static {v4, v5}, Lu1/f0;->R(J)J

    .line 84
    .line 85
    .line 86
    move-result-wide v13

    .line 87
    const/4 v9, -0x1

    .line 88
    const/4 v10, 0x0

    .line 89
    move-object v8, v15

    .line 90
    invoke-direct/range {v8 .. v14}, Lf2/y;-><init>(ILr1/p;JJ)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Lf2/f0;

    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    invoke-direct {v1, v7, v3, v15, v2}, Lf2/f0;-><init>(Lb2/d;Lf2/t;Lf2/y;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v7, v1}, Lb2/d;->a(Lu1/f;)V

    .line 100
    .line 101
    .line 102
    iput-boolean v6, v0, Lf2/u0;->T:Z

    .line 103
    .line 104
    iget-object v1, v0, Lf2/u0;->s:Lf2/z;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-interface {v1, v0}, Lf2/z;->b(Lf2/d1;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final e(Lf2/r0;JJZ)V
    .locals 9

    .line 1
    iget-object p4, p1, Lf2/r0;->c:Lw1/w;

    .line 2
    .line 3
    new-instance p5, Lf2/t;

    .line 4
    .line 5
    iget-object v1, p1, Lf2/r0;->k:Lw1/j;

    .line 6
    .line 7
    iget-object v2, p4, Lw1/w;->c:Landroid/net/Uri;

    .line 8
    .line 9
    iget-object v3, p4, Lw1/w;->d:Ljava/util/Map;

    .line 10
    .line 11
    iget-wide v6, p4, Lw1/w;->b:J

    .line 12
    .line 13
    move-object v0, p5

    .line 14
    move-wide v4, p2

    .line 15
    invoke-direct/range {v0 .. v7}, Lf2/t;-><init>(Lw1/j;Landroid/net/Uri;Ljava/util/Map;JJ)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lf2/u0;->d:Lha/j2;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-wide p1, p1, Lf2/r0;->j:J

    .line 24
    .line 25
    iget-wide p3, p0, Lf2/u0;->E:J

    .line 26
    .line 27
    iget-object v0, p0, Lf2/u0;->e:Lb2/d;

    .line 28
    .line 29
    new-instance v8, Lf2/y;

    .line 30
    .line 31
    invoke-static {p1, p2}, Lu1/f0;->R(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    invoke-static {p3, p4}, Lu1/f0;->R(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v6

    .line 39
    const/4 v2, -0x1

    .line 40
    const/4 v3, 0x0

    .line 41
    move-object v1, v8

    .line 42
    invoke-direct/range {v1 .. v7}, Lf2/y;-><init>(ILr1/p;JJ)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lf2/f0;

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    invoke-direct {p1, v0, p5, v8, p2}, Lf2/f0;-><init>(Lb2/d;Lf2/t;Lf2/y;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lb2/d;->a(Lu1/f;)V

    .line 52
    .line 53
    .line 54
    if-nez p6, :cond_1

    .line 55
    .line 56
    iget-object p1, p0, Lf2/u0;->w:[Lf2/b1;

    .line 57
    .line 58
    array-length p2, p1

    .line 59
    const/4 p3, 0x0

    .line 60
    const/4 p4, 0x0

    .line 61
    :goto_0
    if-ge p4, p2, :cond_0

    .line 62
    .line 63
    aget-object p5, p1, p4

    .line 64
    .line 65
    invoke-virtual {p5, p3}, Lf2/b1;->r(Z)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 p4, p4, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget p1, p0, Lf2/u0;->M:I

    .line 72
    .line 73
    if-lez p1, :cond_1

    .line 74
    .line 75
    iget-object p1, p0, Lf2/u0;->s:Lf2/z;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, p0}, Lf2/z;->b(Lf2/d1;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
.end method

.method public final f(Lf2/r0;JJLjava/io/IOException;I)Lai/a;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, v1, Lf2/r0;->c:Lw1/w;

    .line 7
    .line 8
    new-instance v12, Lf2/t;

    .line 9
    .line 10
    iget-object v5, v1, Lf2/r0;->k:Lw1/j;

    .line 11
    .line 12
    iget-object v6, v3, Lw1/w;->c:Landroid/net/Uri;

    .line 13
    .line 14
    iget-object v7, v3, Lw1/w;->d:Ljava/util/Map;

    .line 15
    .line 16
    iget-wide v10, v3, Lw1/w;->b:J

    .line 17
    .line 18
    move-object v4, v12

    .line 19
    move-wide/from16 v8, p2

    .line 20
    .line 21
    invoke-direct/range {v4 .. v11}, Lf2/t;-><init>(Lw1/j;Landroid/net/Uri;Ljava/util/Map;JJ)V

    .line 22
    .line 23
    .line 24
    sget-object v3, Lu1/f0;->a:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, v0, Lf2/u0;->d:Lha/j2;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-object/from16 v3, p6

    .line 32
    .line 33
    :goto_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    instance-of v6, v3, Lr1/f0;

    .line 41
    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    instance-of v6, v3, Ljava/io/FileNotFoundException;

    .line 45
    .line 46
    if-nez v6, :cond_1

    .line 47
    .line 48
    instance-of v6, v3, Lw1/p;

    .line 49
    .line 50
    if-nez v6, :cond_1

    .line 51
    .line 52
    instance-of v6, v3, Li2/i;

    .line 53
    .line 54
    if-nez v6, :cond_1

    .line 55
    .line 56
    instance-of v6, v3, Lw1/i;

    .line 57
    .line 58
    if-eqz v6, :cond_0

    .line 59
    .line 60
    move-object v6, v3

    .line 61
    check-cast v6, Lw1/i;

    .line 62
    .line 63
    iget v6, v6, Lw1/i;->a:I

    .line 64
    .line 65
    const/16 v7, 0x7d8

    .line 66
    .line 67
    if-ne v6, v7, :cond_0

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    :goto_1
    move-wide v6, v4

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    add-int/lit8 v3, p7, -0x1

    .line 78
    .line 79
    mul-int/lit16 v3, v3, 0x3e8

    .line 80
    .line 81
    const/16 v6, 0x1388

    .line 82
    .line 83
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    int-to-long v6, v3

    .line 88
    :goto_2
    const/4 v3, 0x0

    .line 89
    cmp-long v8, v6, v4

    .line 90
    .line 91
    if-nez v8, :cond_3

    .line 92
    .line 93
    sget-object v4, Li2/j;->e:Lai/a;

    .line 94
    .line 95
    :goto_3
    move-object v10, v4

    .line 96
    goto :goto_8

    .line 97
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lf2/u0;->u()I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    iget v9, v0, Lf2/u0;->S:I

    .line 102
    .line 103
    if-le v8, v9, :cond_4

    .line 104
    .line 105
    const/4 v9, 0x1

    .line 106
    goto :goto_4

    .line 107
    :cond_4
    const/4 v9, 0x0

    .line 108
    :goto_4
    iget-boolean v10, v0, Lf2/u0;->N:Z

    .line 109
    .line 110
    if-nez v10, :cond_8

    .line 111
    .line 112
    iget-object v10, v0, Lf2/u0;->D:Ll2/c0;

    .line 113
    .line 114
    if-eqz v10, :cond_5

    .line 115
    .line 116
    invoke-interface {v10}, Ll2/c0;->h()J

    .line 117
    .line 118
    .line 119
    move-result-wide v10

    .line 120
    cmp-long v13, v10, v4

    .line 121
    .line 122
    if-eqz v13, :cond_5

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_5
    iget-boolean v4, v0, Lf2/u0;->z:Z

    .line 126
    .line 127
    if-eqz v4, :cond_6

    .line 128
    .line 129
    invoke-virtual/range {p0 .. p0}, Lf2/u0;->E()Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-nez v4, :cond_6

    .line 134
    .line 135
    iput-boolean v2, v0, Lf2/u0;->R:Z

    .line 136
    .line 137
    sget-object v4, Li2/j;->d:Lai/a;

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_6
    iget-boolean v4, v0, Lf2/u0;->z:Z

    .line 141
    .line 142
    iput-boolean v4, v0, Lf2/u0;->K:Z

    .line 143
    .line 144
    const-wide/16 v4, 0x0

    .line 145
    .line 146
    iput-wide v4, v0, Lf2/u0;->O:J

    .line 147
    .line 148
    iput v3, v0, Lf2/u0;->S:I

    .line 149
    .line 150
    iget-object v8, v0, Lf2/u0;->w:[Lf2/b1;

    .line 151
    .line 152
    array-length v10, v8

    .line 153
    const/4 v11, 0x0

    .line 154
    :goto_5
    if-ge v11, v10, :cond_7

    .line 155
    .line 156
    aget-object v13, v8, v11

    .line 157
    .line 158
    invoke-virtual {v13, v3}, Lf2/b1;->r(Z)V

    .line 159
    .line 160
    .line 161
    add-int/2addr v11, v2

    .line 162
    goto :goto_5

    .line 163
    :cond_7
    iget-object v8, v1, Lf2/r0;->g:Ldd/c;

    .line 164
    .line 165
    iput-wide v4, v8, Ldd/c;->b:J

    .line 166
    .line 167
    iput-wide v4, v1, Lf2/r0;->j:J

    .line 168
    .line 169
    iput-boolean v2, v1, Lf2/r0;->i:Z

    .line 170
    .line 171
    iput-boolean v3, v1, Lf2/r0;->m:Z

    .line 172
    .line 173
    goto :goto_7

    .line 174
    :cond_8
    :goto_6
    iput v8, v0, Lf2/u0;->S:I

    .line 175
    .line 176
    :goto_7
    new-instance v4, Lai/a;

    .line 177
    .line 178
    invoke-direct {v4, v9, v6, v7}, Lai/a;-><init>(IJ)V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :goto_8
    iget v4, v10, Lai/a;->a:I

    .line 183
    .line 184
    if-eqz v4, :cond_9

    .line 185
    .line 186
    if-ne v4, v2, :cond_a

    .line 187
    .line 188
    :cond_9
    const/4 v3, 0x1

    .line 189
    :cond_a
    xor-int/lit8 v9, v3, 0x1

    .line 190
    .line 191
    iget-wide v1, v1, Lf2/r0;->j:J

    .line 192
    .line 193
    iget-wide v3, v0, Lf2/u0;->E:J

    .line 194
    .line 195
    iget-object v11, v0, Lf2/u0;->e:Lb2/d;

    .line 196
    .line 197
    new-instance v7, Lf2/y;

    .line 198
    .line 199
    invoke-static {v1, v2}, Lu1/f0;->R(J)J

    .line 200
    .line 201
    .line 202
    move-result-wide v16

    .line 203
    invoke-static {v3, v4}, Lu1/f0;->R(J)J

    .line 204
    .line 205
    .line 206
    move-result-wide v18

    .line 207
    const/4 v14, -0x1

    .line 208
    const/4 v15, 0x0

    .line 209
    move-object v13, v7

    .line 210
    invoke-direct/range {v13 .. v19}, Lf2/y;-><init>(ILr1/p;JJ)V

    .line 211
    .line 212
    .line 213
    new-instance v1, Lf2/g0;

    .line 214
    .line 215
    move-object v4, v1

    .line 216
    move-object v5, v11

    .line 217
    move-object v6, v12

    .line 218
    move-object/from16 v8, p6

    .line 219
    .line 220
    invoke-direct/range {v4 .. v9}, Lf2/g0;-><init>(Lb2/d;Lf2/t;Lf2/y;Ljava/io/IOException;Z)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v11, v1}, Lb2/d;->a(Lu1/f;)V

    .line 224
    .line 225
    .line 226
    return-object v10
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/u0;->d:Lha/j2;

    .line 2
    .line 3
    iget v1, p0, Lf2/u0;->G:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lha/j2;->d(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lf2/u0;->l:Li2/j;

    .line 10
    .line 11
    iget-object v2, v1, Li2/j;->c:Ljava/io/IOException;

    .line 12
    .line 13
    if-nez v2, :cond_5

    .line 14
    .line 15
    iget-object v1, v1, Li2/j;->b:Li2/h;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    const/high16 v2, -0x80000000

    .line 20
    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    .line 23
    iget v0, v1, Li2/h;->a:I

    .line 24
    .line 25
    :cond_0
    iget-object v2, v1, Li2/h;->e:Ljava/io/IOException;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget v1, v1, Li2/h;->f:I

    .line 30
    .line 31
    if-gt v1, v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    throw v2

    .line 35
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lf2/u0;->T:Z

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    iget-boolean v0, p0, Lf2/u0;->z:Z

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const-string v0, "Loading finished before preparation is complete."

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {v1, v0}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    throw v0

    .line 52
    :cond_4
    :goto_1
    return-void

    .line 53
    :cond_5
    throw v2
.end method

.method public final h(J)J
    .locals 11

    .line 1
    invoke-virtual {p0}, Lf2/u0;->t()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf2/u0;->C:La2/w0;

    .line 5
    .line 6
    iget-object v0, v0, La2/w0;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, [Z

    .line 9
    .line 10
    iget-object v1, p0, Lf2/u0;->D:Ll2/c0;

    .line 11
    .line 12
    invoke-interface {v1}, Ll2/c0;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide/16 p1, 0x0

    .line 20
    .line 21
    :goto_0
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lf2/u0;->K:Z

    .line 23
    .line 24
    iget-wide v2, p0, Lf2/u0;->O:J

    .line 25
    .line 26
    const/4 v4, 0x1

    .line 27
    cmp-long v5, v2, p1

    .line 28
    .line 29
    if-nez v5, :cond_1

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    const/4 v2, 0x0

    .line 34
    :goto_1
    iput-wide p1, p0, Lf2/u0;->O:J

    .line 35
    .line 36
    invoke-virtual {p0}, Lf2/u0;->w()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    iput-wide p1, p0, Lf2/u0;->P:J

    .line 43
    .line 44
    return-wide p1

    .line 45
    :cond_2
    iget v3, p0, Lf2/u0;->G:I

    .line 46
    .line 47
    const/4 v5, 0x7

    .line 48
    if-eq v3, v5, :cond_c

    .line 49
    .line 50
    iget-boolean v3, p0, Lf2/u0;->T:Z

    .line 51
    .line 52
    if-nez v3, :cond_3

    .line 53
    .line 54
    iget-object v3, p0, Lf2/u0;->l:Li2/j;

    .line 55
    .line 56
    invoke-virtual {v3}, Li2/j;->a()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_c

    .line 61
    .line 62
    :cond_3
    iget-object v3, p0, Lf2/u0;->w:[Lf2/b1;

    .line 63
    .line 64
    array-length v3, v3

    .line 65
    const/4 v5, 0x0

    .line 66
    :goto_2
    if-ge v5, v3, :cond_b

    .line 67
    .line 68
    iget-object v6, p0, Lf2/u0;->w:[Lf2/b1;

    .line 69
    .line 70
    aget-object v6, v6, v5

    .line 71
    .line 72
    iget-object v7, p0, Lf2/u0;->v:[Lf2/q0;

    .line 73
    .line 74
    aget-object v7, v7, v5

    .line 75
    .line 76
    iget-object v7, v7, Lf2/q0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    sget-object v8, Lf2/p0;->a:Lf2/p0;

    .line 83
    .line 84
    if-ne v7, v8, :cond_a

    .line 85
    .line 86
    iget v7, v6, Lf2/b1;->q:I

    .line 87
    .line 88
    iget v8, v6, Lf2/b1;->s:I

    .line 89
    .line 90
    add-int/2addr v8, v7

    .line 91
    if-nez v8, :cond_4

    .line 92
    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    goto :goto_7

    .line 96
    :cond_4
    iget-boolean v8, p0, Lf2/u0;->B:Z

    .line 97
    .line 98
    if-eqz v8, :cond_8

    .line 99
    .line 100
    monitor-enter v6

    .line 101
    :try_start_0
    invoke-virtual {v6}, Lf2/b1;->s()V

    .line 102
    .line 103
    .line 104
    iget v8, v6, Lf2/b1;->q:I

    .line 105
    .line 106
    if-lt v7, v8, :cond_7

    .line 107
    .line 108
    iget v9, v6, Lf2/b1;->p:I

    .line 109
    .line 110
    add-int/2addr v9, v8

    .line 111
    if-le v7, v9, :cond_5

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_5
    iget v9, v6, Lf2/b1;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .line 116
    const/4 v10, -0x1

    .line 117
    if-eq v9, v10, :cond_6

    .line 118
    .line 119
    if-lt v7, v9, :cond_6

    .line 120
    .line 121
    monitor-exit v6

    .line 122
    :goto_3
    const/4 v6, 0x0

    .line 123
    goto :goto_6

    .line 124
    :cond_6
    const-wide/high16 v9, -0x8000000000000000L

    .line 125
    .line 126
    :try_start_1
    iput-wide v9, v6, Lf2/b1;->t:J

    .line 127
    .line 128
    sub-int/2addr v7, v8

    .line 129
    iput v7, v6, Lf2/b1;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .line 131
    monitor-exit v6

    .line 132
    const/4 v6, 0x1

    .line 133
    goto :goto_6

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    goto :goto_5

    .line 136
    :cond_7
    :goto_4
    monitor-exit v6

    .line 137
    goto :goto_3

    .line 138
    :goto_5
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    throw p1

    .line 140
    :cond_8
    iget-boolean v7, p0, Lf2/u0;->T:Z

    .line 141
    .line 142
    invoke-virtual {v6, p1, p2, v7}, Lf2/b1;->t(JZ)Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    :goto_6
    if-nez v6, :cond_a

    .line 147
    .line 148
    aget-boolean v6, v0, v5

    .line 149
    .line 150
    if-nez v6, :cond_9

    .line 151
    .line 152
    iget-boolean v6, p0, Lf2/u0;->A:Z

    .line 153
    .line 154
    if-nez v6, :cond_a

    .line 155
    .line 156
    :cond_9
    const/4 v4, 0x0

    .line 157
    goto :goto_8

    .line 158
    :cond_a
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_b
    :goto_8
    if-eqz v4, :cond_c

    .line 162
    .line 163
    return-wide p1

    .line 164
    :cond_c
    iput-boolean v1, p0, Lf2/u0;->R:Z

    .line 165
    .line 166
    iput-wide p1, p0, Lf2/u0;->P:J

    .line 167
    .line 168
    iput-boolean v1, p0, Lf2/u0;->T:Z

    .line 169
    .line 170
    iput-boolean v1, p0, Lf2/u0;->L:Z

    .line 171
    .line 172
    iget-object v0, p0, Lf2/u0;->l:Li2/j;

    .line 173
    .line 174
    invoke-virtual {v0}, Li2/j;->a()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_e

    .line 179
    .line 180
    iget-object v0, p0, Lf2/u0;->w:[Lf2/b1;

    .line 181
    .line 182
    array-length v2, v0

    .line 183
    const/4 v3, 0x0

    .line 184
    :goto_9
    if-ge v3, v2, :cond_d

    .line 185
    .line 186
    aget-object v4, v0, v3

    .line 187
    .line 188
    invoke-virtual {v4}, Lf2/b1;->i()V

    .line 189
    .line 190
    .line 191
    add-int/lit8 v3, v3, 0x1

    .line 192
    .line 193
    goto :goto_9

    .line 194
    :cond_d
    iget-object v0, p0, Lf2/u0;->l:Li2/j;

    .line 195
    .line 196
    iget-object v0, v0, Li2/j;->b:Li2/h;

    .line 197
    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Li2/h;->a(Z)V

    .line 202
    .line 203
    .line 204
    goto :goto_b

    .line 205
    :cond_e
    iget-object v0, p0, Lf2/u0;->l:Li2/j;

    .line 206
    .line 207
    const/4 v2, 0x0

    .line 208
    iput-object v2, v0, Li2/j;->c:Ljava/io/IOException;

    .line 209
    .line 210
    iget-object v0, p0, Lf2/u0;->w:[Lf2/b1;

    .line 211
    .line 212
    array-length v2, v0

    .line 213
    const/4 v3, 0x0

    .line 214
    :goto_a
    if-ge v3, v2, :cond_f

    .line 215
    .line 216
    aget-object v4, v0, v3

    .line 217
    .line 218
    invoke-virtual {v4, v1}, Lf2/b1;->r(Z)V

    .line 219
    .line 220
    .line 221
    add-int/lit8 v3, v3, 0x1

    .line 222
    .line 223
    goto :goto_a

    .line 224
    :cond_f
    :goto_b
    return-wide p1
.end method

.method public final i(J)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lf2/u0;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lf2/u0;->t()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lf2/u0;->w()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lf2/u0;->C:La2/w0;

    .line 17
    .line 18
    iget-object v0, v0, La2/w0;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, [Z

    .line 21
    .line 22
    iget-object v1, p0, Lf2/u0;->w:[Lf2/b1;

    .line 23
    .line 24
    array-length v1, v1

    .line 25
    const/4 v2, 0x0

    .line 26
    :goto_0
    if-ge v2, v1, :cond_6

    .line 27
    .line 28
    iget-object v3, p0, Lf2/u0;->w:[Lf2/b1;

    .line 29
    .line 30
    aget-object v3, v3, v2

    .line 31
    .line 32
    aget-boolean v4, v0, v2

    .line 33
    .line 34
    iget-object v10, v3, Lf2/b1;->a:Lf2/z0;

    .line 35
    .line 36
    monitor-enter v3

    .line 37
    :try_start_0
    iget v5, v3, Lf2/b1;->p:I

    .line 38
    .line 39
    const-wide/16 v11, -0x1

    .line 40
    .line 41
    if-eqz v5, :cond_5

    .line 42
    .line 43
    iget-object v6, v3, Lf2/b1;->n:[J

    .line 44
    .line 45
    iget v7, v3, Lf2/b1;->r:I

    .line 46
    .line 47
    aget-wide v8, v6, v7

    .line 48
    .line 49
    cmp-long v6, p1, v8

    .line 50
    .line 51
    if-gez v6, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    if-eqz v4, :cond_3

    .line 55
    .line 56
    iget v4, v3, Lf2/b1;->s:I

    .line 57
    .line 58
    if-eq v4, v5, :cond_3

    .line 59
    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    move v6, v4

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_4

    .line 66
    :cond_3
    move v6, v5

    .line 67
    :goto_1
    const/4 v9, 0x0

    .line 68
    move-object v4, v3

    .line 69
    move v5, v7

    .line 70
    move-wide v7, p1

    .line 71
    invoke-virtual/range {v4 .. v9}, Lf2/b1;->k(IIJZ)I

    .line 72
    .line 73
    .line 74
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    const/4 v5, -0x1

    .line 76
    if-ne v4, v5, :cond_4

    .line 77
    .line 78
    monitor-exit v3

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    :try_start_1
    invoke-virtual {v3, v4}, Lf2/b1;->h(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    monitor-exit v3

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    :goto_2
    monitor-exit v3

    .line 87
    :goto_3
    invoke-virtual {v10, v11, v12}, Lf2/z0;->a(J)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    throw p1

    .line 95
    :cond_6
    return-void
.end method

.method public final j()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf2/u0;->T:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lf2/u0;->l:Li2/j;

    .line 6
    .line 7
    invoke-virtual {v0}, Li2/j;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lf2/u0;->n:Lu1/e;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-boolean v1, v0, Lu1/e;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method public final k(JLy1/e1;)J
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lf2/u0;->t()V

    .line 8
    .line 9
    .line 10
    iget-object v4, v0, Lf2/u0;->D:Ll2/c0;

    .line 11
    .line 12
    invoke-interface {v4}, Ll2/c0;->c()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const-wide/16 v5, 0x0

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    return-wide v5

    .line 21
    :cond_0
    iget-object v4, v0, Lf2/u0;->D:Ll2/c0;

    .line 22
    .line 23
    invoke-interface {v4, v1, v2}, Ll2/c0;->f(J)Ll2/b0;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v7, v4, Ll2/b0;->a:Ll2/d0;

    .line 28
    .line 29
    iget-wide v7, v7, Ll2/d0;->a:J

    .line 30
    .line 31
    iget-object v4, v4, Ll2/b0;->b:Ll2/d0;

    .line 32
    .line 33
    iget-wide v9, v4, Ll2/d0;->a:J

    .line 34
    .line 35
    iget-wide v11, v3, Ly1/e1;->b:J

    .line 36
    .line 37
    iget-wide v3, v3, Ly1/e1;->a:J

    .line 38
    .line 39
    cmp-long v13, v3, v5

    .line 40
    .line 41
    if-nez v13, :cond_1

    .line 42
    .line 43
    cmp-long v13, v11, v5

    .line 44
    .line 45
    if-nez v13, :cond_1

    .line 46
    .line 47
    move-wide v7, v1

    .line 48
    goto/16 :goto_a

    .line 49
    .line 50
    :cond_1
    sget-object v13, Lu1/f0;->a:Ljava/lang/String;

    .line 51
    .line 52
    sub-long v13, v1, v3

    .line 53
    .line 54
    xor-long/2addr v3, v1

    .line 55
    const/4 v15, 0x1

    .line 56
    const/16 v16, 0x0

    .line 57
    .line 58
    cmp-long v17, v3, v5

    .line 59
    .line 60
    if-ltz v17, :cond_2

    .line 61
    .line 62
    const/4 v3, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 v3, 0x0

    .line 65
    :goto_0
    xor-long v17, v1, v13

    .line 66
    .line 67
    cmp-long v4, v17, v5

    .line 68
    .line 69
    if-ltz v4, :cond_3

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const/4 v4, 0x0

    .line 74
    :goto_1
    or-int/2addr v3, v4

    .line 75
    const-wide/16 v17, 0x1

    .line 76
    .line 77
    const/16 v4, 0x3f

    .line 78
    .line 79
    const-wide v19, 0x7fffffffffffffffL

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    move-wide/from16 v21, v13

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    ushr-long v21, v13, v4

    .line 90
    .line 91
    xor-long v21, v21, v17

    .line 92
    .line 93
    add-long v21, v21, v19

    .line 94
    .line 95
    :goto_2
    const-wide/high16 v23, -0x8000000000000000L

    .line 96
    .line 97
    cmp-long v3, v21, v23

    .line 98
    .line 99
    if-nez v3, :cond_5

    .line 100
    .line 101
    cmp-long v3, v13, v23

    .line 102
    .line 103
    if-nez v3, :cond_6

    .line 104
    .line 105
    :cond_5
    cmp-long v3, v21, v19

    .line 106
    .line 107
    if-nez v3, :cond_7

    .line 108
    .line 109
    cmp-long v3, v13, v19

    .line 110
    .line 111
    if-eqz v3, :cond_7

    .line 112
    .line 113
    :cond_6
    move-wide/from16 v21, v23

    .line 114
    .line 115
    :cond_7
    add-long v13, v1, v11

    .line 116
    .line 117
    xor-long/2addr v11, v1

    .line 118
    cmp-long v3, v11, v5

    .line 119
    .line 120
    if-gez v3, :cond_8

    .line 121
    .line 122
    const/4 v3, 0x1

    .line 123
    goto :goto_3

    .line 124
    :cond_8
    const/4 v3, 0x0

    .line 125
    :goto_3
    xor-long v11, v1, v13

    .line 126
    .line 127
    cmp-long v25, v11, v5

    .line 128
    .line 129
    if-ltz v25, :cond_9

    .line 130
    .line 131
    const/4 v5, 0x1

    .line 132
    goto :goto_4

    .line 133
    :cond_9
    const/4 v5, 0x0

    .line 134
    :goto_4
    or-int/2addr v3, v5

    .line 135
    if-eqz v3, :cond_a

    .line 136
    .line 137
    move-wide v3, v13

    .line 138
    goto :goto_5

    .line 139
    :cond_a
    ushr-long v3, v13, v4

    .line 140
    .line 141
    xor-long v3, v3, v17

    .line 142
    .line 143
    add-long v3, v3, v19

    .line 144
    .line 145
    :goto_5
    cmp-long v5, v3, v23

    .line 146
    .line 147
    if-nez v5, :cond_b

    .line 148
    .line 149
    cmp-long v5, v13, v23

    .line 150
    .line 151
    if-nez v5, :cond_d

    .line 152
    .line 153
    :cond_b
    cmp-long v5, v3, v19

    .line 154
    .line 155
    if-nez v5, :cond_c

    .line 156
    .line 157
    cmp-long v5, v13, v19

    .line 158
    .line 159
    if-eqz v5, :cond_c

    .line 160
    .line 161
    goto :goto_6

    .line 162
    :cond_c
    move-wide/from16 v19, v3

    .line 163
    .line 164
    :cond_d
    :goto_6
    cmp-long v3, v21, v7

    .line 165
    .line 166
    if-gtz v3, :cond_e

    .line 167
    .line 168
    cmp-long v3, v7, v19

    .line 169
    .line 170
    if-gtz v3, :cond_e

    .line 171
    .line 172
    const/4 v3, 0x1

    .line 173
    goto :goto_7

    .line 174
    :cond_e
    const/4 v3, 0x0

    .line 175
    :goto_7
    cmp-long v4, v21, v9

    .line 176
    .line 177
    if-gtz v4, :cond_f

    .line 178
    .line 179
    cmp-long v4, v9, v19

    .line 180
    .line 181
    if-gtz v4, :cond_f

    .line 182
    .line 183
    goto :goto_8

    .line 184
    :cond_f
    const/4 v15, 0x0

    .line 185
    :goto_8
    if-eqz v3, :cond_11

    .line 186
    .line 187
    if-eqz v15, :cond_11

    .line 188
    .line 189
    sub-long v3, v7, v1

    .line 190
    .line 191
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 192
    .line 193
    .line 194
    move-result-wide v3

    .line 195
    sub-long v1, v9, v1

    .line 196
    .line 197
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 198
    .line 199
    .line 200
    move-result-wide v1

    .line 201
    cmp-long v5, v3, v1

    .line 202
    .line 203
    if-gtz v5, :cond_10

    .line 204
    .line 205
    goto :goto_a

    .line 206
    :cond_10
    :goto_9
    move-wide v7, v9

    .line 207
    goto :goto_a

    .line 208
    :cond_11
    if-eqz v3, :cond_12

    .line 209
    .line 210
    goto :goto_a

    .line 211
    :cond_12
    if-eqz v15, :cond_13

    .line 212
    .line 213
    goto :goto_9

    .line 214
    :cond_13
    move-wide/from16 v7, v21

    .line 215
    .line 216
    :goto_a
    return-wide v7
.end method

.method public final l(Lf2/z;J)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iput-object p1, p0, Lf2/u0;->s:Lf2/z;

    .line 4
    .line 5
    iget-object p1, p0, Lf2/u0;->j:Lr1/p;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-virtual {p0, v1, v2}, Lf2/u0;->z(II)Ll2/j0;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2, p1}, Ll2/j0;->g(Lr1/p;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Ll2/y;

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    new-array v4, v0, [J

    .line 22
    .line 23
    aput-wide v2, v4, v1

    .line 24
    .line 25
    new-array v0, v0, [J

    .line 26
    .line 27
    aput-wide v2, v0, v1

    .line 28
    .line 29
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v1, v2, v4, v0}, Ll2/y;-><init>(J[J[J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lf2/u0;->C(Ll2/c0;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lf2/u0;->q()V

    .line 41
    .line 42
    .line 43
    iput-wide p2, p0, Lf2/u0;->P:J

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lf2/u0;->n:Lu1/e;

    .line 47
    .line 48
    invoke-virtual {p1}, Lu1/e;->e()Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lf2/u0;->D()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public final m()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf2/u0;->L:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lf2/u0;->L:Z

    .line 7
    .line 8
    iget-wide v0, p0, Lf2/u0;->O:J

    .line 9
    .line 10
    return-wide v0

    .line 11
    :cond_0
    iget-boolean v0, p0, Lf2/u0;->K:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-boolean v0, p0, Lf2/u0;->T:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lf2/u0;->u()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v2, p0, Lf2/u0;->S:I

    .line 24
    .line 25
    if-le v0, v2, :cond_2

    .line 26
    .line 27
    :cond_1
    iput-boolean v1, p0, Lf2/u0;->K:Z

    .line 28
    .line 29
    iget-wide v0, p0, Lf2/u0;->O:J

    .line 30
    .line 31
    return-wide v0

    .line 32
    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    return-wide v0
.end method

.method public final n()Lf2/j1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf2/u0;->t()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf2/u0;->C:La2/w0;

    .line 5
    .line 6
    iget-object v0, v0, La2/w0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lf2/j1;

    .line 9
    .line 10
    return-object v0
.end method

.method public final o([Lh2/p;[Z[Lf2/c1;[ZJ)J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lf2/u0;->t()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf2/u0;->C:La2/w0;

    .line 5
    .line 6
    iget-object v1, v0, La2/w0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lf2/j1;

    .line 9
    .line 10
    iget-object v0, v0, La2/w0;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, [Z

    .line 13
    .line 14
    iget v2, p0, Lf2/u0;->M:I

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    array-length v5, p1

    .line 19
    const/4 v6, 0x1

    .line 20
    if-ge v4, v5, :cond_2

    .line 21
    .line 22
    aget-object v5, p3, v4

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    aget-object v7, p1, v4

    .line 27
    .line 28
    if-eqz v7, :cond_0

    .line 29
    .line 30
    aget-boolean v7, p2, v4

    .line 31
    .line 32
    if-nez v7, :cond_1

    .line 33
    .line 34
    :cond_0
    check-cast v5, Lf2/s0;

    .line 35
    .line 36
    iget v5, v5, Lf2/s0;->a:I

    .line 37
    .line 38
    aget-boolean v7, v0, v5

    .line 39
    .line 40
    invoke-static {v7}, La9/o;->t(Z)V

    .line 41
    .line 42
    .line 43
    iget v7, p0, Lf2/u0;->M:I

    .line 44
    .line 45
    sub-int/2addr v7, v6

    .line 46
    iput v7, p0, Lf2/u0;->M:I

    .line 47
    .line 48
    aput-boolean v3, v0, v5

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    aput-object v5, p3, v4

    .line 52
    .line 53
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-boolean p2, p0, Lf2/u0;->I:Z

    .line 57
    .line 58
    if-eqz p2, :cond_4

    .line 59
    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    :goto_1
    const/4 p2, 0x1

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    const/4 p2, 0x0

    .line 65
    goto :goto_2

    .line 66
    :cond_4
    const-wide/16 v4, 0x0

    .line 67
    .line 68
    cmp-long p2, p5, v4

    .line 69
    .line 70
    if-eqz p2, :cond_3

    .line 71
    .line 72
    iget-boolean p2, p0, Lf2/u0;->B:Z

    .line 73
    .line 74
    if-nez p2, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :goto_2
    const/4 v2, 0x0

    .line 78
    :goto_3
    array-length v4, p1

    .line 79
    if-ge v2, v4, :cond_a

    .line 80
    .line 81
    aget-object v4, p3, v2

    .line 82
    .line 83
    if-nez v4, :cond_9

    .line 84
    .line 85
    aget-object v4, p1, v2

    .line 86
    .line 87
    if-eqz v4, :cond_9

    .line 88
    .line 89
    invoke-interface {v4}, Lh2/p;->length()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-ne v5, v6, :cond_5

    .line 94
    .line 95
    const/4 v5, 0x1

    .line 96
    goto :goto_4

    .line 97
    :cond_5
    const/4 v5, 0x0

    .line 98
    :goto_4
    invoke-static {v5}, La9/o;->t(Z)V

    .line 99
    .line 100
    .line 101
    invoke-interface {v4, v3}, Lh2/p;->e(I)I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-nez v5, :cond_6

    .line 106
    .line 107
    const/4 v5, 0x1

    .line 108
    goto :goto_5

    .line 109
    :cond_6
    const/4 v5, 0x0

    .line 110
    :goto_5
    invoke-static {v5}, La9/o;->t(Z)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v4}, Lh2/p;->a()Lr1/r0;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    iget-object v7, v1, Lf2/j1;->b:Lu7/y0;

    .line 118
    .line 119
    invoke-virtual {v7, v5}, Lu7/g0;->indexOf(Ljava/lang/Object;)I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-ltz v5, :cond_7

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_7
    const/4 v5, -0x1

    .line 127
    :goto_6
    aget-boolean v7, v0, v5

    .line 128
    .line 129
    xor-int/2addr v7, v6

    .line 130
    invoke-static {v7}, La9/o;->t(Z)V

    .line 131
    .line 132
    .line 133
    iget v7, p0, Lf2/u0;->M:I

    .line 134
    .line 135
    add-int/2addr v7, v6

    .line 136
    iput v7, p0, Lf2/u0;->M:I

    .line 137
    .line 138
    aput-boolean v6, v0, v5

    .line 139
    .line 140
    iget-boolean v7, p0, Lf2/u0;->L:Z

    .line 141
    .line 142
    invoke-interface {v4}, Lh2/p;->h()Lr1/p;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    iget-boolean v4, v4, Lr1/p;->u:Z

    .line 147
    .line 148
    or-int/2addr v4, v7

    .line 149
    iput-boolean v4, p0, Lf2/u0;->L:Z

    .line 150
    .line 151
    new-instance v4, Lf2/s0;

    .line 152
    .line 153
    invoke-direct {v4, p0, v5}, Lf2/s0;-><init>(Lf2/u0;I)V

    .line 154
    .line 155
    .line 156
    aput-object v4, p3, v2

    .line 157
    .line 158
    aput-boolean v6, p4, v2

    .line 159
    .line 160
    if-nez p2, :cond_9

    .line 161
    .line 162
    iget-object p2, p0, Lf2/u0;->w:[Lf2/b1;

    .line 163
    .line 164
    aget-object p2, p2, v5

    .line 165
    .line 166
    iget v4, p2, Lf2/b1;->q:I

    .line 167
    .line 168
    iget v5, p2, Lf2/b1;->s:I

    .line 169
    .line 170
    add-int/2addr v4, v5

    .line 171
    if-eqz v4, :cond_8

    .line 172
    .line 173
    invoke-virtual {p2, p5, p6, v6}, Lf2/b1;->t(JZ)Z

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    if-nez p2, :cond_8

    .line 178
    .line 179
    const/4 p2, 0x1

    .line 180
    goto :goto_7

    .line 181
    :cond_8
    const/4 p2, 0x0

    .line 182
    :cond_9
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_a
    iget p1, p0, Lf2/u0;->M:I

    .line 186
    .line 187
    if-nez p1, :cond_d

    .line 188
    .line 189
    iput-boolean v3, p0, Lf2/u0;->R:Z

    .line 190
    .line 191
    iput-boolean v3, p0, Lf2/u0;->K:Z

    .line 192
    .line 193
    iput-boolean v3, p0, Lf2/u0;->L:Z

    .line 194
    .line 195
    iget-object p1, p0, Lf2/u0;->l:Li2/j;

    .line 196
    .line 197
    invoke-virtual {p1}, Li2/j;->a()Z

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    if-eqz p2, :cond_c

    .line 202
    .line 203
    iget-object p2, p0, Lf2/u0;->w:[Lf2/b1;

    .line 204
    .line 205
    array-length p3, p2

    .line 206
    const/4 p4, 0x0

    .line 207
    :goto_8
    if-ge p4, p3, :cond_b

    .line 208
    .line 209
    aget-object v0, p2, p4

    .line 210
    .line 211
    invoke-virtual {v0}, Lf2/b1;->i()V

    .line 212
    .line 213
    .line 214
    add-int/lit8 p4, p4, 0x1

    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_b
    iget-object p1, p1, Li2/j;->b:Li2/h;

    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v3}, Li2/h;->a(Z)V

    .line 223
    .line 224
    .line 225
    goto :goto_b

    .line 226
    :cond_c
    iput-boolean v3, p0, Lf2/u0;->T:Z

    .line 227
    .line 228
    iget-object p1, p0, Lf2/u0;->w:[Lf2/b1;

    .line 229
    .line 230
    array-length p2, p1

    .line 231
    const/4 p3, 0x0

    .line 232
    :goto_9
    if-ge p3, p2, :cond_f

    .line 233
    .line 234
    aget-object p4, p1, p3

    .line 235
    .line 236
    invoke-virtual {p4, v3}, Lf2/b1;->r(Z)V

    .line 237
    .line 238
    .line 239
    add-int/lit8 p3, p3, 0x1

    .line 240
    .line 241
    goto :goto_9

    .line 242
    :cond_d
    if-eqz p2, :cond_f

    .line 243
    .line 244
    invoke-virtual {p0, p5, p6}, Lf2/u0;->h(J)J

    .line 245
    .line 246
    .line 247
    move-result-wide p5

    .line 248
    :goto_a
    array-length p1, p3

    .line 249
    if-ge v3, p1, :cond_f

    .line 250
    .line 251
    aget-object p1, p3, v3

    .line 252
    .line 253
    if-eqz p1, :cond_e

    .line 254
    .line 255
    aput-boolean v6, p4, v3

    .line 256
    .line 257
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 258
    .line 259
    goto :goto_a

    .line 260
    :cond_f
    :goto_b
    iput-boolean v6, p0, Lf2/u0;->I:Z

    .line 261
    .line 262
    return-wide p5
.end method

.method public final p()J
    .locals 11

    .line 1
    invoke-virtual {p0}, Lf2/u0;->t()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lf2/u0;->T:Z

    .line 5
    .line 6
    const-wide/high16 v1, -0x8000000000000000L

    .line 7
    .line 8
    if-nez v0, :cond_7

    .line 9
    .line 10
    iget v0, p0, Lf2/u0;->M:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {p0}, Lf2/u0;->w()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-wide v0, p0, Lf2/u0;->P:J

    .line 22
    .line 23
    return-wide v0

    .line 24
    :cond_1
    iget-boolean v0, p0, Lf2/u0;->A:Z

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const-wide v4, 0x7fffffffffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lf2/u0;->w:[Lf2/b1;

    .line 35
    .line 36
    array-length v0, v0

    .line 37
    move-wide v7, v4

    .line 38
    const/4 v6, 0x0

    .line 39
    :goto_0
    if-ge v6, v0, :cond_4

    .line 40
    .line 41
    iget-object v9, p0, Lf2/u0;->C:La2/w0;

    .line 42
    .line 43
    iget-object v10, v9, La2/w0;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v10, [Z

    .line 46
    .line 47
    aget-boolean v10, v10, v6

    .line 48
    .line 49
    if-eqz v10, :cond_2

    .line 50
    .line 51
    iget-object v9, v9, La2/w0;->d:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v9, [Z

    .line 54
    .line 55
    aget-boolean v9, v9, v6

    .line 56
    .line 57
    if-eqz v9, :cond_2

    .line 58
    .line 59
    iget-object v9, p0, Lf2/u0;->w:[Lf2/b1;

    .line 60
    .line 61
    aget-object v9, v9, v6

    .line 62
    .line 63
    monitor-enter v9

    .line 64
    :try_start_0
    iget-boolean v10, v9, Lf2/b1;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    monitor-exit v9

    .line 67
    if-nez v10, :cond_2

    .line 68
    .line 69
    iget-object v9, p0, Lf2/u0;->w:[Lf2/b1;

    .line 70
    .line 71
    aget-object v9, v9, v6

    .line 72
    .line 73
    invoke-virtual {v9}, Lf2/b1;->l()J

    .line 74
    .line 75
    .line 76
    move-result-wide v9

    .line 77
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide v7

    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw v0

    .line 85
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    move-wide v7, v4

    .line 89
    :cond_4
    cmp-long v0, v7, v4

    .line 90
    .line 91
    if-nez v0, :cond_5

    .line 92
    .line 93
    invoke-virtual {p0, v3}, Lf2/u0;->v(Z)J

    .line 94
    .line 95
    .line 96
    move-result-wide v7

    .line 97
    :cond_5
    cmp-long v0, v7, v1

    .line 98
    .line 99
    if-nez v0, :cond_6

    .line 100
    .line 101
    iget-wide v7, p0, Lf2/u0;->O:J

    .line 102
    .line 103
    :cond_6
    return-wide v7

    .line 104
    :cond_7
    :goto_2
    return-wide v1
.end method

.method public final q()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf2/u0;->y:Z

    .line 3
    .line 4
    iget-object v0, p0, Lf2/u0;->r:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lf2/u0;->p:Lf2/n0;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final r(J)V
    .locals 5

    .line 1
    iget p1, p0, Lf2/u0;->M:I

    .line 2
    .line 3
    if-lez p1, :cond_5

    .line 4
    .line 5
    invoke-virtual {p0}, Lf2/u0;->w()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_5

    .line 10
    .line 11
    iget-wide p1, p0, Lf2/u0;->H:J

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    const-wide/high16 v1, -0x8000000000000000L

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    cmp-long v4, p1, v1

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_0
    invoke-virtual {p0}, Lf2/u0;->t()V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    const/4 p2, 0x1

    .line 27
    :goto_0
    iget-object v1, p0, Lf2/u0;->w:[Lf2/b1;

    .line 28
    .line 29
    array-length v2, v1

    .line 30
    if-ge p1, v2, :cond_4

    .line 31
    .line 32
    iget-object v2, p0, Lf2/u0;->C:La2/w0;

    .line 33
    .line 34
    iget-object v4, v2, La2/w0;->d:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v4, [Z

    .line 37
    .line 38
    aget-boolean v4, v4, p1

    .line 39
    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    iget-object v2, v2, La2/w0;->c:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, [Z

    .line 45
    .line 46
    aget-boolean v2, v2, p1

    .line 47
    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    iget-boolean v2, p0, Lf2/u0;->A:Z

    .line 51
    .line 52
    if-nez v2, :cond_3

    .line 53
    .line 54
    :cond_1
    aget-object v1, v1, p1

    .line 55
    .line 56
    monitor-enter v1

    .line 57
    :try_start_0
    iget v2, v1, Lf2/b1;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    const/4 v4, -0x1

    .line 60
    if-eq v2, v4, :cond_2

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 v2, 0x0

    .line 65
    :goto_1
    monitor-exit v1

    .line 66
    and-int/2addr p2, v2

    .line 67
    goto :goto_2

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p1

    .line 71
    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    move v3, p2

    .line 75
    :goto_3
    if-eqz v3, :cond_5

    .line 76
    .line 77
    iput-boolean v0, p0, Lf2/u0;->T:Z

    .line 78
    .line 79
    :cond_5
    return-void
.end method

.method public final s(Ll2/c0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/u0;->r:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, La2/c0;

    .line 4
    .line 5
    const/16 v2, 0x14

    .line 6
    .line 7
    invoke-direct {v1, p0, v2, p1}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final t()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf2/u0;->z:Z

    .line 2
    .line 3
    invoke-static {v0}, La9/o;->t(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf2/u0;->C:La2/w0;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lf2/u0;->D:Ll2/c0;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final u()I
    .locals 6

    .line 1
    iget-object v0, p0, Lf2/u0;->w:[Lf2/b1;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v2

    .line 9
    .line 10
    iget v5, v4, Lf2/b1;->q:I

    .line 11
    .line 12
    iget v4, v4, Lf2/b1;->p:I

    .line 13
    .line 14
    add-int/2addr v5, v4

    .line 15
    add-int/2addr v3, v5

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v3
.end method

.method public final v(Z)J
    .locals 5

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lf2/u0;->w:[Lf2/b1;

    .line 5
    .line 6
    array-length v3, v3

    .line 7
    if-ge v2, v3, :cond_2

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Lf2/u0;->C:La2/w0;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v3, v3, La2/w0;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, [Z

    .line 19
    .line 20
    aget-boolean v3, v3, v2

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    :cond_0
    iget-object v3, p0, Lf2/u0;->w:[Lf2/b1;

    .line 25
    .line 26
    aget-object v3, v3, v2

    .line 27
    .line 28
    invoke-virtual {v3}, Lf2/b1;->l()J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-wide v0
.end method

.method public final w()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lf2/u0;->P:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final x()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-boolean v3, v1, Lf2/u0;->V:Z

    .line 6
    .line 7
    if-nez v3, :cond_18

    .line 8
    .line 9
    iget-boolean v3, v1, Lf2/u0;->z:Z

    .line 10
    .line 11
    if-nez v3, :cond_18

    .line 12
    .line 13
    iget-boolean v3, v1, Lf2/u0;->y:Z

    .line 14
    .line 15
    if-eqz v3, :cond_18

    .line 16
    .line 17
    iget-object v3, v1, Lf2/u0;->D:Ll2/c0;

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto/16 :goto_a

    .line 22
    .line 23
    :cond_0
    iget-object v3, v1, Lf2/u0;->w:[Lf2/b1;

    .line 24
    .line 25
    array-length v4, v3

    .line 26
    const/4 v5, 0x0

    .line 27
    :goto_0
    if-ge v5, v4, :cond_2

    .line 28
    .line 29
    aget-object v6, v3, v5

    .line 30
    .line 31
    invoke-virtual {v6}, Lf2/b1;->n()Lr1/p;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    if-nez v6, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    add-int/2addr v5, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v3, v1, Lf2/u0;->n:Lu1/e;

    .line 41
    .line 42
    monitor-enter v3

    .line 43
    :try_start_0
    iput-boolean v0, v3, Lu1/e;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    monitor-exit v3

    .line 46
    iget-object v3, v1, Lf2/u0;->w:[Lf2/b1;

    .line 47
    .line 48
    array-length v3, v3

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, -0x1

    .line 51
    const/4 v7, 0x0

    .line 52
    :goto_1
    if-ge v5, v3, :cond_c

    .line 53
    .line 54
    iget-object v8, v1, Lf2/u0;->w:[Lf2/b1;

    .line 55
    .line 56
    aget-object v8, v8, v5

    .line 57
    .line 58
    invoke-virtual {v8}, Lf2/b1;->n()Lr1/p;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v8, v8, Lr1/p;->o:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v8}, Lr1/e0;->g(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    const/4 v9, 0x2

    .line 72
    const/4 v10, 0x4

    .line 73
    const/4 v11, 0x3

    .line 74
    if-eq v8, v2, :cond_6

    .line 75
    .line 76
    if-eq v8, v9, :cond_5

    .line 77
    .line 78
    if-eq v8, v11, :cond_4

    .line 79
    .line 80
    if-eq v8, v10, :cond_3

    .line 81
    .line 82
    const/4 v12, 0x0

    .line 83
    goto :goto_2

    .line 84
    :cond_3
    const/4 v12, 0x2

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    const/4 v12, 0x1

    .line 87
    goto :goto_2

    .line 88
    :cond_5
    const/4 v12, 0x4

    .line 89
    goto :goto_2

    .line 90
    :cond_6
    const/4 v12, 0x3

    .line 91
    :goto_2
    if-eq v6, v2, :cond_9

    .line 92
    .line 93
    if-eq v6, v9, :cond_8

    .line 94
    .line 95
    if-eq v6, v11, :cond_7

    .line 96
    .line 97
    if-eq v6, v10, :cond_a

    .line 98
    .line 99
    const/4 v9, 0x0

    .line 100
    goto :goto_3

    .line 101
    :cond_7
    const/4 v9, 0x1

    .line 102
    goto :goto_3

    .line 103
    :cond_8
    const/4 v9, 0x4

    .line 104
    goto :goto_3

    .line 105
    :cond_9
    const/4 v9, 0x3

    .line 106
    :cond_a
    :goto_3
    if-le v12, v9, :cond_b

    .line 107
    .line 108
    move v7, v5

    .line 109
    move v6, v8

    .line 110
    :cond_b
    add-int/2addr v5, v2

    .line 111
    goto :goto_1

    .line 112
    :cond_c
    new-array v5, v3, [Lr1/r0;

    .line 113
    .line 114
    new-array v6, v3, [Z

    .line 115
    .line 116
    const/4 v8, 0x0

    .line 117
    :goto_4
    iget-wide v9, v1, Lf2/u0;->k:J

    .line 118
    .line 119
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    if-ge v8, v3, :cond_16

    .line 125
    .line 126
    iget-object v13, v1, Lf2/u0;->w:[Lf2/b1;

    .line 127
    .line 128
    aget-object v13, v13, v8

    .line 129
    .line 130
    invoke-virtual {v13}, Lf2/b1;->n()Lr1/p;

    .line 131
    .line 132
    .line 133
    move-result-object v13

    .line 134
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iget-object v14, v13, Lr1/p;->o:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v14}, Lr1/e0;->h(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v15

    .line 143
    if-nez v15, :cond_e

    .line 144
    .line 145
    invoke-static {v14}, Lr1/e0;->k(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v16

    .line 149
    if-eqz v16, :cond_d

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_d
    const/16 v16, 0x0

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_e
    :goto_5
    const/16 v16, 0x1

    .line 156
    .line 157
    :goto_6
    aput-boolean v16, v6, v8

    .line 158
    .line 159
    iget-boolean v4, v1, Lf2/u0;->A:Z

    .line 160
    .line 161
    or-int v4, v4, v16

    .line 162
    .line 163
    iput-boolean v4, v1, Lf2/u0;->A:Z

    .line 164
    .line 165
    invoke-static {v14}, Lr1/e0;->i(Ljava/lang/String;)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    cmp-long v14, v9, v11

    .line 170
    .line 171
    if-eqz v14, :cond_f

    .line 172
    .line 173
    if-ne v3, v2, :cond_f

    .line 174
    .line 175
    if-eqz v4, :cond_f

    .line 176
    .line 177
    const/4 v4, 0x1

    .line 178
    goto :goto_7

    .line 179
    :cond_f
    const/4 v4, 0x0

    .line 180
    :goto_7
    iput-boolean v4, v1, Lf2/u0;->B:Z

    .line 181
    .line 182
    iget-object v4, v1, Lf2/u0;->t:Ly2/b;

    .line 183
    .line 184
    if-eqz v4, :cond_13

    .line 185
    .line 186
    if-nez v15, :cond_10

    .line 187
    .line 188
    iget-object v9, v1, Lf2/u0;->x:[Lf2/t0;

    .line 189
    .line 190
    aget-object v9, v9, v8

    .line 191
    .line 192
    iget-boolean v9, v9, Lf2/t0;->b:Z

    .line 193
    .line 194
    if-eqz v9, :cond_12

    .line 195
    .line 196
    :cond_10
    iget-object v9, v13, Lr1/p;->l:Lr1/d0;

    .line 197
    .line 198
    if-nez v9, :cond_11

    .line 199
    .line 200
    new-instance v9, Lr1/d0;

    .line 201
    .line 202
    new-array v10, v2, [Lr1/c0;

    .line 203
    .line 204
    aput-object v4, v10, v0

    .line 205
    .line 206
    invoke-direct {v9, v10}, Lr1/d0;-><init>([Lr1/c0;)V

    .line 207
    .line 208
    .line 209
    goto :goto_8

    .line 210
    :cond_11
    new-array v10, v2, [Lr1/c0;

    .line 211
    .line 212
    aput-object v4, v10, v0

    .line 213
    .line 214
    invoke-virtual {v9, v10}, Lr1/d0;->a([Lr1/c0;)Lr1/d0;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    :goto_8
    new-instance v10, Lr1/o;

    .line 219
    .line 220
    invoke-direct {v10, v13}, Lr1/o;-><init>(Lr1/p;)V

    .line 221
    .line 222
    .line 223
    iput-object v9, v10, Lr1/o;->k:Lr1/d0;

    .line 224
    .line 225
    new-instance v13, Lr1/p;

    .line 226
    .line 227
    invoke-direct {v13, v10}, Lr1/p;-><init>(Lr1/o;)V

    .line 228
    .line 229
    .line 230
    :cond_12
    if-eqz v15, :cond_13

    .line 231
    .line 232
    iget v9, v13, Lr1/p;->h:I

    .line 233
    .line 234
    const/4 v14, -0x1

    .line 235
    if-ne v9, v14, :cond_14

    .line 236
    .line 237
    iget v9, v13, Lr1/p;->i:I

    .line 238
    .line 239
    if-ne v9, v14, :cond_14

    .line 240
    .line 241
    iget v4, v4, Ly2/b;->a:I

    .line 242
    .line 243
    if-eq v4, v14, :cond_14

    .line 244
    .line 245
    new-instance v9, Lr1/o;

    .line 246
    .line 247
    invoke-direct {v9, v13}, Lr1/o;-><init>(Lr1/p;)V

    .line 248
    .line 249
    .line 250
    iput v4, v9, Lr1/o;->h:I

    .line 251
    .line 252
    new-instance v13, Lr1/p;

    .line 253
    .line 254
    invoke-direct {v13, v9}, Lr1/p;-><init>(Lr1/o;)V

    .line 255
    .line 256
    .line 257
    goto :goto_9

    .line 258
    :cond_13
    const/4 v14, -0x1

    .line 259
    :cond_14
    :goto_9
    iget-object v4, v1, Lf2/u0;->c:Lb2/g;

    .line 260
    .line 261
    invoke-interface {v4, v13}, Lb2/g;->q(Lr1/p;)I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    new-instance v9, Lr1/o;

    .line 266
    .line 267
    invoke-direct {v9, v13}, Lr1/o;-><init>(Lr1/p;)V

    .line 268
    .line 269
    .line 270
    iput v4, v9, Lr1/o;->O:I

    .line 271
    .line 272
    new-instance v4, Lr1/p;

    .line 273
    .line 274
    invoke-direct {v4, v9}, Lr1/p;-><init>(Lr1/o;)V

    .line 275
    .line 276
    .line 277
    if-eq v8, v7, :cond_15

    .line 278
    .line 279
    new-instance v9, Lr1/o;

    .line 280
    .line 281
    invoke-direct {v9, v4}, Lr1/o;-><init>(Lr1/p;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    iput-object v4, v9, Lr1/o;->l:Ljava/lang/String;

    .line 289
    .line 290
    new-instance v4, Lr1/p;

    .line 291
    .line 292
    invoke-direct {v4, v9}, Lr1/p;-><init>(Lr1/o;)V

    .line 293
    .line 294
    .line 295
    :cond_15
    new-instance v9, Lr1/r0;

    .line 296
    .line 297
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v10

    .line 301
    new-array v11, v2, [Lr1/p;

    .line 302
    .line 303
    aput-object v4, v11, v0

    .line 304
    .line 305
    invoke-direct {v9, v10, v11}, Lr1/r0;-><init>(Ljava/lang/String;[Lr1/p;)V

    .line 306
    .line 307
    .line 308
    aput-object v9, v5, v8

    .line 309
    .line 310
    iget-boolean v9, v1, Lf2/u0;->L:Z

    .line 311
    .line 312
    iget-boolean v4, v4, Lr1/p;->u:Z

    .line 313
    .line 314
    or-int/2addr v4, v9

    .line 315
    iput-boolean v4, v1, Lf2/u0;->L:Z

    .line 316
    .line 317
    iget-object v4, v1, Lf2/u0;->w:[Lf2/b1;

    .line 318
    .line 319
    aget-object v4, v4, v8

    .line 320
    .line 321
    iget-wide v9, v1, Lf2/u0;->H:J

    .line 322
    .line 323
    invoke-virtual {v4, v9, v10}, Lf2/b1;->u(J)V

    .line 324
    .line 325
    .line 326
    add-int/2addr v8, v2

    .line 327
    goto/16 :goto_4

    .line 328
    .line 329
    :cond_16
    new-instance v0, La2/w0;

    .line 330
    .line 331
    new-instance v3, Lf2/j1;

    .line 332
    .line 333
    invoke-direct {v3, v5}, Lf2/j1;-><init>([Lr1/r0;)V

    .line 334
    .line 335
    .line 336
    invoke-direct {v0, v3, v6}, La2/w0;-><init>(Lf2/j1;[Z)V

    .line 337
    .line 338
    .line 339
    iput-object v0, v1, Lf2/u0;->C:La2/w0;

    .line 340
    .line 341
    iget-boolean v0, v1, Lf2/u0;->B:Z

    .line 342
    .line 343
    if-eqz v0, :cond_17

    .line 344
    .line 345
    iget-wide v3, v1, Lf2/u0;->E:J

    .line 346
    .line 347
    cmp-long v0, v3, v11

    .line 348
    .line 349
    if-nez v0, :cond_17

    .line 350
    .line 351
    iput-wide v9, v1, Lf2/u0;->E:J

    .line 352
    .line 353
    new-instance v0, Lf2/o0;

    .line 354
    .line 355
    iget-object v3, v1, Lf2/u0;->D:Ll2/c0;

    .line 356
    .line 357
    invoke-direct {v0, v1, v3}, Lf2/o0;-><init>(Lf2/u0;Ll2/c0;)V

    .line 358
    .line 359
    .line 360
    iput-object v0, v1, Lf2/u0;->D:Ll2/c0;

    .line 361
    .line 362
    :cond_17
    iget-wide v3, v1, Lf2/u0;->E:J

    .line 363
    .line 364
    iget-object v0, v1, Lf2/u0;->D:Ll2/c0;

    .line 365
    .line 366
    iget-boolean v5, v1, Lf2/u0;->F:Z

    .line 367
    .line 368
    iget-object v6, v1, Lf2/u0;->g:Lf2/x0;

    .line 369
    .line 370
    invoke-virtual {v6, v3, v4, v0, v5}, Lf2/x0;->t(JLl2/c0;Z)V

    .line 371
    .line 372
    .line 373
    iput-boolean v2, v1, Lf2/u0;->z:Z

    .line 374
    .line 375
    iget-object v0, v1, Lf2/u0;->s:Lf2/z;

    .line 376
    .line 377
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    invoke-interface {v0, v1}, Lf2/z;->d(Lf2/a0;)V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :catchall_0
    move-exception v0

    .line 385
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    throw v0

    .line 387
    :cond_18
    :goto_a
    return-void
.end method

.method public final y(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lf2/u0;->t()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf2/u0;->C:La2/w0;

    .line 5
    .line 6
    iget-object v1, v0, La2/w0;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, [Z

    .line 9
    .line 10
    aget-boolean v2, v1, p1

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, La2/w0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lf2/j1;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lf2/j1;->a(I)Lr1/r0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v0, v0, Lr1/r0;->d:[Lr1/p;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    aget-object v5, v0, v2

    .line 26
    .line 27
    iget-object v0, v5, Lr1/p;->o:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0}, Lr1/e0;->g(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iget-wide v2, p0, Lf2/u0;->O:J

    .line 34
    .line 35
    iget-object v0, p0, Lf2/u0;->e:Lb2/d;

    .line 36
    .line 37
    new-instance v10, Lf2/y;

    .line 38
    .line 39
    invoke-static {v2, v3}, Lu1/f0;->R(J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    move-object v3, v10

    .line 49
    invoke-direct/range {v3 .. v9}, Lf2/y;-><init>(ILr1/p;JJ)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Ld2/w;

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    invoke-direct {v2, v0, v3, v10}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2}, Lb2/d;->a(Lu1/f;)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x1

    .line 62
    aput-boolean v0, v1, p1

    .line 63
    .line 64
    :cond_0
    return-void
.end method

.method public final z(II)Ll2/j0;
    .locals 1

    .line 1
    new-instance p2, Lf2/t0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p2, p1, v0}, Lf2/t0;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lf2/u0;->B(Lf2/t0;)Ll2/j0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
