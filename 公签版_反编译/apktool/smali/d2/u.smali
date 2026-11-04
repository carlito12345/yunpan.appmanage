.class public abstract Ld2/u;
.super Ly1/a;
.source "SourceFile"


# static fields
.field public static final y1:[B


# instance fields
.field public final A:Lx1/g;

.field public final B:Ld2/j;

.field public final C:Landroid/media/MediaCodec$BufferInfo;

.field public final D:Ljava/util/ArrayDeque;

.field public final E:La2/r1;

.field public final F:Ljava/util/concurrent/atomic/AtomicInteger;

.field public G:Lr1/p;

.field public H:Lr1/p;

.field public I:La1/i;

.field public K:La1/i;

.field public L:Ly1/b0;

.field public M:Landroid/media/MediaCrypto;

.field public M0:Z

.field public final N:J

.field public N0:Z

.field public O:F

.field public O0:Z

.field public P:F

.field public P0:Z

.field public Q0:Z

.field public R:Ld2/n;

.field public R0:J

.field public S:Lr1/p;

.field public S0:Z

.field public T:Landroid/media/MediaFormat;

.field public T0:J

.field public U0:I

.field public V:Z

.field public V0:I

.field public W0:Ljava/nio/ByteBuffer;

.field public X:F

.field public X0:Z

.field public Y:Ljava/util/ArrayDeque;

.field public Y0:Z

.field public Z:Ld2/s;

.field public Z0:Z

.field public a1:Z

.field public b1:Z

.field public c1:I

.field public d1:I

.field public e1:I

.field public f1:Z

.field public g1:Z

.field public h0:Ld2/q;

.field public h1:Z

.field public i1:J

.field public j1:Z

.field public k1:Z

.field public l1:Z

.field public m1:Z

.field public n1:Ly1/k;

.field public o1:Ly1/c;

.field public p1:Ld2/t;

.field public q1:J

.field public r1:Z

.field public s1:Z

.field public final t:Landroid/content/Context;

.field public t0:I

.field public t1:Z

.field public u1:J

.field public final v:Ld2/m;

.field public v1:Ly1/b;

.field public final w:Ld2/l;

.field public w1:Ly1/b;

.field public final x:F

.field public x1:Lu7/j0;

.field public final y:Lx1/g;

.field public final z:Lx1/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x26

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Ld2/u;->y1:[B

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILd2/m;F)V
    .locals 1

    .line 1
    sget-object v0, Ld2/l;->b:Ld2/l;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ly1/a;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Ld2/u;->t:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p3, p0, Ld2/u;->v:Ld2/m;

    .line 13
    .line 14
    iput-object v0, p0, Ld2/u;->w:Ld2/l;

    .line 15
    .line 16
    iput p4, p0, Ld2/u;->x:F

    .line 17
    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Ld2/u;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    new-instance p1, Lx1/g;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-direct {p1, p2}, Lx1/g;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Ld2/u;->y:Lx1/g;

    .line 32
    .line 33
    new-instance p1, Lx1/g;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Lx1/g;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Ld2/u;->z:Lx1/g;

    .line 39
    .line 40
    new-instance p1, Lx1/g;

    .line 41
    .line 42
    const/4 p3, 0x2

    .line 43
    invoke-direct {p1, p3}, Lx1/g;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Ld2/u;->A:Lx1/g;

    .line 47
    .line 48
    new-instance p1, Ld2/j;

    .line 49
    .line 50
    invoke-direct {p1}, Ld2/j;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Ld2/u;->B:Ld2/j;

    .line 54
    .line 55
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    .line 56
    .line 57
    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object p3, p0, Ld2/u;->C:Landroid/media/MediaCodec$BufferInfo;

    .line 61
    .line 62
    const/high16 p3, 0x3f800000    # 1.0f

    .line 63
    .line 64
    iput p3, p0, Ld2/u;->O:F

    .line 65
    .line 66
    iput p3, p0, Ld2/u;->P:F

    .line 67
    .line 68
    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    iput-wide p3, p0, Ld2/u;->N:J

    .line 74
    .line 75
    new-instance v0, Ljava/util/ArrayDeque;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Ld2/u;->D:Ljava/util/ArrayDeque;

    .line 81
    .line 82
    sget-object v0, Ld2/t;->g:Ld2/t;

    .line 83
    .line 84
    iput-object v0, p0, Ld2/u;->p1:Ld2/t;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Lx1/g;->k(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p1, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    new-instance p1, La2/r1;

    .line 99
    .line 100
    invoke-direct {p1}, La2/r1;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Ld2/u;->E:La2/r1;

    .line 104
    .line 105
    const/high16 p1, -0x40800000    # -1.0f

    .line 106
    .line 107
    iput p1, p0, Ld2/u;->X:F

    .line 108
    .line 109
    iput p2, p0, Ld2/u;->t0:I

    .line 110
    .line 111
    iput p2, p0, Ld2/u;->c1:I

    .line 112
    .line 113
    const/4 p1, -0x1

    .line 114
    iput p1, p0, Ld2/u;->U0:I

    .line 115
    .line 116
    iput p1, p0, Ld2/u;->V0:I

    .line 117
    .line 118
    iput-wide p3, p0, Ld2/u;->T0:J

    .line 119
    .line 120
    iput-wide p3, p0, Ld2/u;->i1:J

    .line 121
    .line 122
    iput-wide p3, p0, Ld2/u;->q1:J

    .line 123
    .line 124
    iput-wide p3, p0, Ld2/u;->R0:J

    .line 125
    .line 126
    iput p2, p0, Ld2/u;->d1:I

    .line 127
    .line 128
    iput p2, p0, Ld2/u;->e1:I

    .line 129
    .line 130
    new-instance p1, Ly1/c;

    .line 131
    .line 132
    invoke-direct {p1}, Ly1/c;-><init>()V

    .line 133
    .line 134
    .line 135
    iput-object p1, p0, Ld2/u;->o1:Ly1/c;

    .line 136
    .line 137
    iput-boolean p2, p0, Ld2/u;->t1:Z

    .line 138
    .line 139
    const-wide/16 p1, 0x0

    .line 140
    .line 141
    iput-wide p1, p0, Ld2/u;->u1:J

    .line 142
    .line 143
    sget p1, Lu7/j0;->c:I

    .line 144
    .line 145
    sget-object p1, Lu7/f1;->j:Lu7/f1;

    .line 146
    .line 147
    iput-object p1, p0, Ld2/u;->x1:Lu7/j0;

    .line 148
    .line 149
    sget-object p1, Ly1/b;->b:Ly1/b;

    .line 150
    .line 151
    iput-object p1, p0, Ld2/u;->v1:Ly1/b;

    .line 152
    .line 153
    iput-object p1, p0, Ld2/u;->w1:Ly1/b;

    .line 154
    .line 155
    return-void
.end method


# virtual methods
.method public A(FF)V
    .locals 0

    .line 1
    iput p1, p0, Ld2/u;->O:F

    .line 2
    .line 3
    iput p2, p0, Ld2/u;->P:F

    .line 4
    .line 5
    iget-object p1, p0, Ld2/u;->S:Lr1/p;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ld2/u;->z0(Lr1/p;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final A0()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld2/u;->K:La1/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, La1/i;->n()Lx1/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lb2/h;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    :try_start_0
    iget-object v1, p0, Ld2/u;->M:Landroid/media/MediaCrypto;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast v0, Lb2/h;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v3}, Ld2/c;->t(Landroid/media/MediaCrypto;[B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    iget-object v1, p0, Ld2/u;->G:Lr1/p;

    .line 32
    .line 33
    const/16 v3, 0x1776

    .line 34
    .line 35
    invoke-virtual {p0, v0, v1, v2, v3}, Ly1/a;->f(Ljava/lang/Exception;Lr1/p;ZI)Ly1/k;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    throw v0

    .line 40
    :cond_0
    :goto_0
    iget-object v0, p0, Ld2/u;->K:La1/i;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ld2/u;->r0(La1/i;)V

    .line 43
    .line 44
    .line 45
    iput v2, p0, Ld2/u;->d1:I

    .line 46
    .line 47
    iput v2, p0, Ld2/u;->e1:I

    .line 48
    .line 49
    return-void
.end method

.method public final B(Lr1/p;)I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Ld2/u;->w:Ld2/l;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Ld2/u;->y0(Ld2/l;Lr1/p;)I

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Ld2/y; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p1

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const/16 v1, 0xfa2

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v0, p1, v2, v1}, Ly1/a;->f(Ljava/lang/Exception;Lr1/p;ZI)Ly1/k;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    throw p1
.end method

.method public final B0(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld2/u;->p1:Ld2/t;

    .line 2
    .line 3
    iget-object v0, v0, Ld2/t;->d:Lu1/c0;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lu1/c0;->f(J)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lr1/p;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-boolean p2, p0, Ld2/u;->r1:Z

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Ld2/u;->T:Landroid/media/MediaFormat;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Ld2/u;->p1:Ld2/t;

    .line 22
    .line 23
    iget-object p1, p1, Ld2/t;->d:Lu1/c0;

    .line 24
    .line 25
    invoke-virtual {p1}, Lu1/c0;->e()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lr1/p;

    .line 30
    .line 31
    :cond_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iput-object p1, p0, Ld2/u;->H:Lr1/p;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-boolean p1, p0, Ld2/u;->V:Z

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Ld2/u;->H:Lr1/p;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    :goto_0
    iget-object p1, p0, Ld2/u;->H:Lr1/p;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Ld2/u;->T:Landroid/media/MediaFormat;

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Ld2/u;->e0(Lr1/p;Landroid/media/MediaFormat;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Ld2/u;->V:Z

    .line 56
    .line 57
    iput-boolean p1, p0, Ld2/u;->r1:Z

    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method public final C()I
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    return v0
.end method

.method public final E(Landroid/media/MediaFormat;)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_6

    .line 6
    .line 7
    iget-object v0, p0, Ld2/u;->v1:Ly1/b;

    .line 8
    .line 9
    iget-object v0, v0, Ly1/b;->a:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_6

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    instance-of v3, v1, Ljava/lang/Integer;

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    check-cast v1, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    instance-of v3, v1, Ljava/lang/Long;

    .line 63
    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    check-cast v1, Ljava/lang/Long;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    invoke-virtual {p1, v2, v3, v4}, Landroid/media/MediaFormat;->setLong(Ljava/lang/String;J)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    instance-of v3, v1, Ljava/lang/Float;

    .line 77
    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    check-cast v1, Ljava/lang/Float;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    instance-of v3, v1, Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    check-cast v1, Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    instance-of v3, v1, Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    if-eqz v3, :cond_0

    .line 103
    .line 104
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 105
    .line 106
    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    return-void
.end method

.method public final F(JJ)Z
    .locals 23

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    iget-boolean v0, v15, Ld2/u;->k1:Z

    .line 4
    .line 5
    const/4 v14, 0x1

    .line 6
    xor-int/2addr v0, v14

    .line 7
    invoke-static {v0}, La9/o;->t(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v13, v15, Ld2/u;->B:Ld2/j;

    .line 11
    .line 12
    invoke-virtual {v13}, Ld2/j;->n()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v12, 0x0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v6, v13, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    iget v7, v15, Ld2/u;->V0:I

    .line 22
    .line 23
    iget v9, v13, Ld2/j;->k:I

    .line 24
    .line 25
    iget-wide v3, v13, Lx1/g;->g:J

    .line 26
    .line 27
    iget-wide v0, v15, Ly1/a;->l:J

    .line 28
    .line 29
    iget-wide v10, v13, Ld2/j;->j:J

    .line 30
    .line 31
    invoke-virtual {v15, v0, v1, v10, v11}, Ld2/u;->V(JJ)Z

    .line 32
    .line 33
    .line 34
    move-result v17

    .line 35
    const/4 v10, 0x4

    .line 36
    invoke-virtual {v13, v10}, Lab/a;->c(I)Z

    .line 37
    .line 38
    .line 39
    move-result v16

    .line 40
    iget-object v11, v15, Ld2/u;->H:Lr1/p;

    .line 41
    .line 42
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v8, 0x0

    .line 47
    move-object/from16 v0, p0

    .line 48
    .line 49
    move-wide/from16 v1, p1

    .line 50
    .line 51
    move-wide/from16 v18, v3

    .line 52
    .line 53
    move-wide/from16 v3, p3

    .line 54
    .line 55
    move-object/from16 v21, v11

    .line 56
    .line 57
    move-wide/from16 v10, v18

    .line 58
    .line 59
    move/from16 v12, v17

    .line 60
    .line 61
    move-object/from16 v22, v13

    .line 62
    .line 63
    move/from16 v13, v16

    .line 64
    .line 65
    move-object/from16 v14, v21

    .line 66
    .line 67
    invoke-virtual/range {v0 .. v14}, Ld2/u;->k0(JJLd2/n;Ljava/nio/ByteBuffer;IIIJZZLr1/p;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    move-object/from16 v0, v22

    .line 74
    .line 75
    iget-wide v1, v0, Ld2/j;->j:J

    .line 76
    .line 77
    invoke-virtual {v15, v1, v2}, Ld2/u;->g0(J)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ld2/j;->g()V

    .line 81
    .line 82
    .line 83
    :goto_0
    const/4 v1, 0x0

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    const/4 v1, 0x0

    .line 86
    return v1

    .line 87
    :cond_1
    move-object v0, v13

    .line 88
    goto :goto_0

    .line 89
    :goto_1
    iget-boolean v2, v15, Ld2/u;->j1:Z

    .line 90
    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    iput-boolean v2, v15, Ld2/u;->k1:Z

    .line 95
    .line 96
    return v1

    .line 97
    :cond_2
    const/4 v2, 0x1

    .line 98
    iget-boolean v3, v15, Ld2/u;->Z0:Z

    .line 99
    .line 100
    iget-object v4, v15, Ld2/u;->A:Lx1/g;

    .line 101
    .line 102
    if-eqz v3, :cond_3

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Ld2/j;->m(Lx1/g;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-static {v3}, La9/o;->t(Z)V

    .line 109
    .line 110
    .line 111
    iput-boolean v1, v15, Ld2/u;->Z0:Z

    .line 112
    .line 113
    :cond_3
    iget-boolean v3, v15, Ld2/u;->a1:Z

    .line 114
    .line 115
    if-eqz v3, :cond_5

    .line 116
    .line 117
    invoke-virtual {v0}, Ld2/j;->n()Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_4

    .line 122
    .line 123
    return v2

    .line 124
    :cond_4
    iput-boolean v1, v15, Ld2/u;->Y0:Z

    .line 125
    .line 126
    invoke-virtual/range {p0 .. p0}, Ld2/u;->o0()V

    .line 127
    .line 128
    .line 129
    iput-boolean v1, v15, Ld2/u;->a1:Z

    .line 130
    .line 131
    invoke-virtual/range {p0 .. p0}, Ld2/u;->W()V

    .line 132
    .line 133
    .line 134
    iget-boolean v3, v15, Ld2/u;->Y0:Z

    .line 135
    .line 136
    if-nez v3, :cond_5

    .line 137
    .line 138
    return v1

    .line 139
    :cond_5
    iget-boolean v3, v15, Ld2/u;->j1:Z

    .line 140
    .line 141
    xor-int/2addr v3, v2

    .line 142
    invoke-static {v3}, La9/o;->t(Z)V

    .line 143
    .line 144
    .line 145
    iget-object v3, v15, Ly1/a;->c:Lua/i8;

    .line 146
    .line 147
    invoke-virtual {v3}, Lua/i8;->n()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4}, Lx1/g;->g()V

    .line 151
    .line 152
    .line 153
    :goto_2
    invoke-virtual {v4}, Lx1/g;->g()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v15, v3, v4, v1}, Ly1/a;->w(Lua/i8;Lx1/g;I)I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    const/4 v6, -0x5

    .line 161
    if-eq v5, v6, :cond_20

    .line 162
    .line 163
    const/4 v6, -0x4

    .line 164
    if-eq v5, v6, :cond_8

    .line 165
    .line 166
    const/4 v3, -0x3

    .line 167
    if-ne v5, v3, :cond_7

    .line 168
    .line 169
    invoke-virtual/range {p0 .. p0}, Ly1/a;->k()Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-eqz v3, :cond_6

    .line 174
    .line 175
    invoke-virtual/range {p0 .. p0}, Ld2/u;->R()Ld2/t;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    iget-wide v4, v15, Ld2/u;->i1:J

    .line 180
    .line 181
    iput-wide v4, v3, Ld2/t;->f:J

    .line 182
    .line 183
    :cond_6
    :goto_3
    const/4 v1, 0x1

    .line 184
    const/4 v8, 0x0

    .line 185
    goto/16 :goto_13

    .line 186
    .line 187
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 188
    .line 189
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 190
    .line 191
    .line 192
    throw v0

    .line 193
    :cond_8
    const/4 v5, 0x4

    .line 194
    invoke-virtual {v4, v5}, Lab/a;->c(I)Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-eqz v6, :cond_9

    .line 199
    .line 200
    iput-boolean v2, v15, Ld2/u;->j1:Z

    .line 201
    .line 202
    invoke-virtual/range {p0 .. p0}, Ld2/u;->R()Ld2/t;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    iget-wide v4, v15, Ld2/u;->i1:J

    .line 207
    .line 208
    iput-wide v4, v3, Ld2/t;->f:J

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_9
    iget-wide v6, v15, Ld2/u;->i1:J

    .line 212
    .line 213
    iget-wide v8, v4, Lx1/g;->g:J

    .line 214
    .line 215
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 216
    .line 217
    .line 218
    move-result-wide v6

    .line 219
    iput-wide v6, v15, Ld2/u;->i1:J

    .line 220
    .line 221
    invoke-virtual/range {p0 .. p0}, Ly1/a;->k()Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-nez v6, :cond_a

    .line 226
    .line 227
    iget-object v6, v15, Ld2/u;->z:Lx1/g;

    .line 228
    .line 229
    const/high16 v7, 0x20000000

    .line 230
    .line 231
    invoke-virtual {v6, v7}, Lab/a;->c(I)Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-eqz v6, :cond_b

    .line 236
    .line 237
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ld2/u;->R()Ld2/t;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    iget-wide v7, v15, Ld2/u;->i1:J

    .line 242
    .line 243
    iput-wide v7, v6, Ld2/t;->f:J

    .line 244
    .line 245
    :cond_b
    iget-boolean v6, v15, Ld2/u;->l1:Z

    .line 246
    .line 247
    const/16 v7, 0xff

    .line 248
    .line 249
    const/4 v8, 0x0

    .line 250
    const-string v9, "audio/opus"

    .line 251
    .line 252
    if-eqz v6, :cond_d

    .line 253
    .line 254
    iget-object v6, v15, Ld2/u;->G:Lr1/p;

    .line 255
    .line 256
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    iput-object v6, v15, Ld2/u;->H:Lr1/p;

    .line 260
    .line 261
    iget-object v6, v6, Lr1/p;->o:Ljava/lang/String;

    .line 262
    .line 263
    invoke-static {v6, v9}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-eqz v6, :cond_c

    .line 268
    .line 269
    iget-object v6, v15, Ld2/u;->H:Lr1/p;

    .line 270
    .line 271
    iget-object v6, v6, Lr1/p;->r:Ljava/util/List;

    .line 272
    .line 273
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-nez v6, :cond_c

    .line 278
    .line 279
    iget-object v6, v15, Ld2/u;->H:Lr1/p;

    .line 280
    .line 281
    iget-object v6, v6, Lr1/p;->r:Ljava/util/List;

    .line 282
    .line 283
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    check-cast v6, [B

    .line 288
    .line 289
    const/16 v10, 0xb

    .line 290
    .line 291
    aget-byte v10, v6, v10

    .line 292
    .line 293
    and-int/2addr v10, v7

    .line 294
    shl-int/lit8 v10, v10, 0x8

    .line 295
    .line 296
    const/16 v11, 0xa

    .line 297
    .line 298
    aget-byte v6, v6, v11

    .line 299
    .line 300
    and-int/2addr v6, v7

    .line 301
    or-int/2addr v6, v10

    .line 302
    iget-object v10, v15, Ld2/u;->H:Lr1/p;

    .line 303
    .line 304
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    new-instance v11, Lr1/o;

    .line 308
    .line 309
    invoke-direct {v11, v10}, Lr1/o;-><init>(Lr1/p;)V

    .line 310
    .line 311
    .line 312
    iput v6, v11, Lr1/o;->I:I

    .line 313
    .line 314
    new-instance v6, Lr1/p;

    .line 315
    .line 316
    invoke-direct {v6, v11}, Lr1/p;-><init>(Lr1/o;)V

    .line 317
    .line 318
    .line 319
    iput-object v6, v15, Ld2/u;->H:Lr1/p;

    .line 320
    .line 321
    :cond_c
    iget-object v6, v15, Ld2/u;->H:Lr1/p;

    .line 322
    .line 323
    invoke-virtual {v15, v6, v8}, Ld2/u;->e0(Lr1/p;Landroid/media/MediaFormat;)V

    .line 324
    .line 325
    .line 326
    iput-boolean v1, v15, Ld2/u;->l1:Z

    .line 327
    .line 328
    :cond_d
    invoke-virtual {v4}, Lx1/g;->l()V

    .line 329
    .line 330
    .line 331
    iget-object v6, v15, Ld2/u;->H:Lr1/p;

    .line 332
    .line 333
    if-eqz v6, :cond_1c

    .line 334
    .line 335
    iget-object v6, v6, Lr1/p;->o:Ljava/lang/String;

    .line 336
    .line 337
    invoke-static {v6, v9}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v6

    .line 341
    if-eqz v6, :cond_1c

    .line 342
    .line 343
    const/high16 v6, 0x10000000

    .line 344
    .line 345
    invoke-virtual {v4, v6}, Lab/a;->c(I)Z

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    if-eqz v6, :cond_e

    .line 350
    .line 351
    iget-object v6, v15, Ld2/u;->H:Lr1/p;

    .line 352
    .line 353
    iput-object v6, v4, Lx1/g;->c:Lr1/p;

    .line 354
    .line 355
    invoke-virtual {v15, v4}, Ld2/u;->T(Lx1/g;)V

    .line 356
    .line 357
    .line 358
    :cond_e
    iget-wide v9, v15, Ly1/a;->l:J

    .line 359
    .line 360
    iget-wide v11, v4, Lx1/g;->g:J

    .line 361
    .line 362
    sub-long/2addr v9, v11

    .line 363
    const-wide/32 v11, 0x13880

    .line 364
    .line 365
    .line 366
    cmp-long v6, v9, v11

    .line 367
    .line 368
    if-gtz v6, :cond_1c

    .line 369
    .line 370
    iget-object v6, v15, Ld2/u;->H:Lr1/p;

    .line 371
    .line 372
    iget-object v6, v6, Lr1/p;->r:Ljava/util/List;

    .line 373
    .line 374
    iget-object v9, v15, Ld2/u;->E:La2/r1;

    .line 375
    .line 376
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    iget-object v10, v4, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 380
    .line 381
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    iget-object v10, v4, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 385
    .line 386
    invoke-virtual {v10}, Ljava/nio/Buffer;->limit()I

    .line 387
    .line 388
    .line 389
    move-result v10

    .line 390
    iget-object v11, v4, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 391
    .line 392
    invoke-virtual {v11}, Ljava/nio/Buffer;->position()I

    .line 393
    .line 394
    .line 395
    move-result v11

    .line 396
    sub-int/2addr v10, v11

    .line 397
    if-nez v10, :cond_f

    .line 398
    .line 399
    goto/16 :goto_f

    .line 400
    .line 401
    :cond_f
    iget v10, v9, La2/r1;->b:I

    .line 402
    .line 403
    const/4 v11, 0x2

    .line 404
    if-ne v10, v11, :cond_11

    .line 405
    .line 406
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 407
    .line 408
    .line 409
    move-result v10

    .line 410
    if-eq v10, v2, :cond_10

    .line 411
    .line 412
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 413
    .line 414
    .line 415
    move-result v10

    .line 416
    const/4 v12, 0x3

    .line 417
    if-ne v10, v12, :cond_11

    .line 418
    .line 419
    :cond_10
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    move-object v8, v6

    .line 424
    check-cast v8, [B

    .line 425
    .line 426
    :cond_11
    iget-object v6, v4, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 427
    .line 428
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    .line 429
    .line 430
    .line 431
    move-result v10

    .line 432
    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    .line 433
    .line 434
    .line 435
    move-result v12

    .line 436
    sub-int v13, v12, v10

    .line 437
    .line 438
    add-int/lit16 v14, v13, 0xff

    .line 439
    .line 440
    div-int/2addr v14, v7

    .line 441
    add-int/lit8 v16, v14, 0x1b

    .line 442
    .line 443
    add-int v16, v16, v13

    .line 444
    .line 445
    iget v5, v9, La2/r1;->b:I

    .line 446
    .line 447
    if-ne v5, v11, :cond_13

    .line 448
    .line 449
    if-eqz v8, :cond_12

    .line 450
    .line 451
    array-length v5, v8

    .line 452
    add-int/lit8 v5, v5, 0x1c

    .line 453
    .line 454
    goto :goto_4

    .line 455
    :cond_12
    const/16 v5, 0x2f

    .line 456
    .line 457
    :goto_4
    add-int/lit8 v17, v5, 0x2c

    .line 458
    .line 459
    add-int v16, v17, v16

    .line 460
    .line 461
    move/from16 v7, v16

    .line 462
    .line 463
    goto :goto_5

    .line 464
    :cond_13
    move/from16 v7, v16

    .line 465
    .line 466
    const/4 v5, 0x0

    .line 467
    :goto_5
    iget-object v2, v9, La2/r1;->a:Ljava/nio/ByteBuffer;

    .line 468
    .line 469
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    if-ge v2, v7, :cond_14

    .line 474
    .line 475
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 480
    .line 481
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    iput-object v2, v9, La2/r1;->a:Ljava/nio/ByteBuffer;

    .line 486
    .line 487
    goto :goto_6

    .line 488
    :cond_14
    iget-object v2, v9, La2/r1;->a:Ljava/nio/ByteBuffer;

    .line 489
    .line 490
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 491
    .line 492
    .line 493
    :goto_6
    iget-object v2, v9, La2/r1;->a:Ljava/nio/ByteBuffer;

    .line 494
    .line 495
    iget v7, v9, La2/r1;->b:I

    .line 496
    .line 497
    const/16 v1, 0x16

    .line 498
    .line 499
    if-ne v7, v11, :cond_16

    .line 500
    .line 501
    if-eqz v8, :cond_15

    .line 502
    .line 503
    const-wide/16 v17, 0x0

    .line 504
    .line 505
    const/16 v19, 0x0

    .line 506
    .line 507
    const/16 v20, 0x1

    .line 508
    .line 509
    const/16 v21, 0x1

    .line 510
    .line 511
    move-object/from16 v16, v2

    .line 512
    .line 513
    invoke-static/range {v16 .. v21}, La2/r1;->a(Ljava/nio/ByteBuffer;JIIZ)V

    .line 514
    .line 515
    .line 516
    array-length v7, v8

    .line 517
    move/from16 p4, v12

    .line 518
    .line 519
    int-to-long v11, v7

    .line 520
    invoke-static {v11, v12}, Lnh/b;->j(J)B

    .line 521
    .line 522
    .line 523
    move-result v7

    .line 524
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 531
    .line 532
    .line 533
    move-result-object v7

    .line 534
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 535
    .line 536
    .line 537
    move-result v11

    .line 538
    array-length v12, v8

    .line 539
    add-int/lit8 v12, v12, 0x1c

    .line 540
    .line 541
    move/from16 v22, v10

    .line 542
    .line 543
    const/4 v10, 0x0

    .line 544
    invoke-static {v11, v12, v10, v7}, Lu1/f0;->j(III[B)I

    .line 545
    .line 546
    .line 547
    move-result v7

    .line 548
    invoke-virtual {v2, v1, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 549
    .line 550
    .line 551
    array-length v7, v8

    .line 552
    add-int/lit8 v7, v7, 0x1c

    .line 553
    .line 554
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 555
    .line 556
    .line 557
    goto :goto_7

    .line 558
    :cond_15
    move/from16 v22, v10

    .line 559
    .line 560
    move/from16 p4, v12

    .line 561
    .line 562
    sget-object v7, La2/r1;->d:[B

    .line 563
    .line 564
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 565
    .line 566
    .line 567
    :goto_7
    sget-object v7, La2/r1;->e:[B

    .line 568
    .line 569
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 570
    .line 571
    .line 572
    :goto_8
    const/4 v7, 0x0

    .line 573
    goto :goto_9

    .line 574
    :cond_16
    move/from16 v22, v10

    .line 575
    .line 576
    move/from16 p4, v12

    .line 577
    .line 578
    goto :goto_8

    .line 579
    :goto_9
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 580
    .line 581
    .line 582
    move-result v8

    .line 583
    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    .line 584
    .line 585
    .line 586
    move-result v7

    .line 587
    const/4 v10, 0x1

    .line 588
    if-le v7, v10, :cond_17

    .line 589
    .line 590
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 591
    .line 592
    .line 593
    move-result v12

    .line 594
    goto :goto_a

    .line 595
    :cond_17
    const/4 v12, 0x0

    .line 596
    :goto_a
    invoke-static {v8, v12}, Lv1/o;->e(BB)J

    .line 597
    .line 598
    .line 599
    move-result-wide v7

    .line 600
    const-wide/32 v10, 0xbb80

    .line 601
    .line 602
    .line 603
    mul-long v7, v7, v10

    .line 604
    .line 605
    const-wide/32 v10, 0xf4240

    .line 606
    .line 607
    .line 608
    div-long/2addr v7, v10

    .line 609
    long-to-int v8, v7

    .line 610
    iget v7, v9, La2/r1;->c:I

    .line 611
    .line 612
    add-int/2addr v7, v8

    .line 613
    iput v7, v9, La2/r1;->c:I

    .line 614
    .line 615
    int-to-long v7, v7

    .line 616
    iget v10, v9, La2/r1;->b:I

    .line 617
    .line 618
    const/16 v21, 0x0

    .line 619
    .line 620
    move-object/from16 v16, v2

    .line 621
    .line 622
    move-wide/from16 v17, v7

    .line 623
    .line 624
    move/from16 v19, v10

    .line 625
    .line 626
    move/from16 v20, v14

    .line 627
    .line 628
    invoke-static/range {v16 .. v21}, La2/r1;->a(Ljava/nio/ByteBuffer;JIIZ)V

    .line 629
    .line 630
    .line 631
    const/4 v12, 0x0

    .line 632
    :goto_b
    if-ge v12, v14, :cond_19

    .line 633
    .line 634
    const/16 v7, 0xff

    .line 635
    .line 636
    if-lt v13, v7, :cond_18

    .line 637
    .line 638
    const/4 v8, -0x1

    .line 639
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 640
    .line 641
    .line 642
    add-int/lit16 v8, v13, -0xff

    .line 643
    .line 644
    move v13, v8

    .line 645
    goto :goto_c

    .line 646
    :cond_18
    int-to-byte v8, v13

    .line 647
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 648
    .line 649
    .line 650
    const/4 v13, 0x0

    .line 651
    :goto_c
    add-int/lit8 v12, v12, 0x1

    .line 652
    .line 653
    goto :goto_b

    .line 654
    :cond_19
    move/from16 v7, p4

    .line 655
    .line 656
    move/from16 v10, v22

    .line 657
    .line 658
    :goto_d
    if-ge v10, v7, :cond_1a

    .line 659
    .line 660
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 661
    .line 662
    .line 663
    move-result v8

    .line 664
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 665
    .line 666
    .line 667
    add-int/lit8 v10, v10, 0x1

    .line 668
    .line 669
    goto :goto_d

    .line 670
    :cond_1a
    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    .line 671
    .line 672
    .line 673
    move-result v7

    .line 674
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 678
    .line 679
    .line 680
    iget v6, v9, La2/r1;->b:I

    .line 681
    .line 682
    const/4 v7, 0x2

    .line 683
    if-ne v6, v7, :cond_1b

    .line 684
    .line 685
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 690
    .line 691
    .line 692
    move-result v6

    .line 693
    add-int/2addr v6, v5

    .line 694
    add-int/lit8 v6, v6, 0x2c

    .line 695
    .line 696
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 697
    .line 698
    .line 699
    move-result v7

    .line 700
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 701
    .line 702
    .line 703
    move-result v8

    .line 704
    sub-int/2addr v7, v8

    .line 705
    const/4 v8, 0x0

    .line 706
    invoke-static {v6, v7, v8, v1}, Lu1/f0;->j(III[B)I

    .line 707
    .line 708
    .line 709
    move-result v1

    .line 710
    add-int/lit8 v5, v5, 0x42

    .line 711
    .line 712
    invoke-virtual {v2, v5, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 713
    .line 714
    .line 715
    goto :goto_e

    .line 716
    :cond_1b
    const/4 v8, 0x0

    .line 717
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 718
    .line 719
    .line 720
    move-result-object v5

    .line 721
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 722
    .line 723
    .line 724
    move-result v6

    .line 725
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 726
    .line 727
    .line 728
    move-result v7

    .line 729
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 730
    .line 731
    .line 732
    move-result v10

    .line 733
    sub-int/2addr v7, v10

    .line 734
    invoke-static {v6, v7, v8, v5}, Lu1/f0;->j(III[B)I

    .line 735
    .line 736
    .line 737
    move-result v5

    .line 738
    invoke-virtual {v2, v1, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 739
    .line 740
    .line 741
    :goto_e
    iget v1, v9, La2/r1;->b:I

    .line 742
    .line 743
    const/4 v5, 0x1

    .line 744
    add-int/2addr v1, v5

    .line 745
    iput v1, v9, La2/r1;->b:I

    .line 746
    .line 747
    iput-object v2, v9, La2/r1;->a:Ljava/nio/ByteBuffer;

    .line 748
    .line 749
    invoke-virtual {v4}, Lx1/g;->g()V

    .line 750
    .line 751
    .line 752
    iget-object v1, v9, La2/r1;->a:Ljava/nio/ByteBuffer;

    .line 753
    .line 754
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    invoke-virtual {v4, v1}, Lx1/g;->k(I)V

    .line 759
    .line 760
    .line 761
    iget-object v1, v4, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 762
    .line 763
    iget-object v2, v9, La2/r1;->a:Ljava/nio/ByteBuffer;

    .line 764
    .line 765
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v4}, Lx1/g;->l()V

    .line 769
    .line 770
    .line 771
    goto :goto_10

    .line 772
    :cond_1c
    :goto_f
    const/4 v8, 0x0

    .line 773
    :goto_10
    invoke-virtual {v0}, Ld2/j;->n()Z

    .line 774
    .line 775
    .line 776
    move-result v1

    .line 777
    if-nez v1, :cond_1d

    .line 778
    .line 779
    goto :goto_11

    .line 780
    :cond_1d
    iget-wide v1, v15, Ly1/a;->l:J

    .line 781
    .line 782
    iget-wide v5, v0, Ld2/j;->j:J

    .line 783
    .line 784
    invoke-virtual {v15, v1, v2, v5, v6}, Ld2/u;->V(JJ)Z

    .line 785
    .line 786
    .line 787
    move-result v5

    .line 788
    iget-wide v6, v4, Lx1/g;->g:J

    .line 789
    .line 790
    invoke-virtual {v15, v1, v2, v6, v7}, Ld2/u;->V(JJ)Z

    .line 791
    .line 792
    .line 793
    move-result v1

    .line 794
    if-ne v5, v1, :cond_1e

    .line 795
    .line 796
    :goto_11
    invoke-virtual {v0, v4}, Ld2/j;->m(Lx1/g;)Z

    .line 797
    .line 798
    .line 799
    move-result v1

    .line 800
    if-nez v1, :cond_1f

    .line 801
    .line 802
    :cond_1e
    const/4 v1, 0x1

    .line 803
    goto :goto_12

    .line 804
    :cond_1f
    const/4 v1, 0x0

    .line 805
    const/4 v2, 0x1

    .line 806
    goto/16 :goto_2

    .line 807
    .line 808
    :goto_12
    iput-boolean v1, v15, Ld2/u;->Z0:Z

    .line 809
    .line 810
    goto :goto_13

    .line 811
    :cond_20
    const/4 v1, 0x1

    .line 812
    const/4 v8, 0x0

    .line 813
    invoke-virtual {v15, v3}, Ld2/u;->d0(Lua/i8;)Ly1/d;

    .line 814
    .line 815
    .line 816
    :goto_13
    invoke-virtual {v0}, Ld2/j;->n()Z

    .line 817
    .line 818
    .line 819
    move-result v2

    .line 820
    if-eqz v2, :cond_21

    .line 821
    .line 822
    invoke-virtual {v0}, Lx1/g;->l()V

    .line 823
    .line 824
    .line 825
    :cond_21
    invoke-virtual {v0}, Ld2/j;->n()Z

    .line 826
    .line 827
    .line 828
    move-result v0

    .line 829
    if-nez v0, :cond_23

    .line 830
    .line 831
    iget-boolean v0, v15, Ld2/u;->j1:Z

    .line 832
    .line 833
    if-nez v0, :cond_23

    .line 834
    .line 835
    iget-boolean v0, v15, Ld2/u;->a1:Z

    .line 836
    .line 837
    if-eqz v0, :cond_22

    .line 838
    .line 839
    goto :goto_14

    .line 840
    :cond_22
    const/4 v14, 0x0

    .line 841
    goto :goto_15

    .line 842
    :cond_23
    :goto_14
    const/4 v14, 0x1

    .line 843
    :goto_15
    return v14
.end method

.method public abstract G(Ld2/q;Lr1/p;Lr1/p;Z)Ly1/d;
.end method

.method public H(Ljava/lang/IllegalStateException;Ld2/q;)Ld2/p;
    .locals 1

    .line 1
    new-instance v0, Ld2/p;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Ld2/p;-><init>(Ljava/lang/IllegalStateException;Ld2/q;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final I()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ld2/u;->f1:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iput v1, p0, Ld2/u;->d1:I

    .line 7
    .line 8
    iget-boolean v0, p0, Ld2/u;->N0:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    iput v0, p0, Ld2/u;->e1:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x2

    .line 18
    iput v0, p0, Ld2/u;->e1:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Ld2/u;->A0()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return v1
.end method

.method public final J(JJ)Z
    .locals 23

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    iget-object v5, v15, Ld2/u;->R:Ld2/n;

    .line 4
    .line 5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget v0, v15, Ld2/u;->V0:I

    .line 9
    .line 10
    const/4 v14, 0x0

    .line 11
    const/4 v13, 0x1

    .line 12
    if-ltz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    const/4 v12, 0x0

    .line 18
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    const/4 v10, 0x4

    .line 24
    iget-object v11, v15, Ld2/u;->C:Landroid/media/MediaCodec$BufferInfo;

    .line 25
    .line 26
    if-nez v0, :cond_15

    .line 27
    .line 28
    invoke-interface {v5, v11}, Ld2/n;->u(Landroid/media/MediaCodec$BufferInfo;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-gez v0, :cond_11

    .line 33
    .line 34
    const/4 v3, -0x2

    .line 35
    const/4 v4, 0x2

    .line 36
    if-ne v0, v3, :cond_d

    .line 37
    .line 38
    iput-boolean v13, v15, Ld2/u;->h1:Z

    .line 39
    .line 40
    iget-object v0, v15, Ld2/u;->R:Ld2/n;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Ld2/n;->k()Landroid/media/MediaFormat;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v1, v15, Ld2/u;->t0:I

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    const-string v1, "width"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    const/16 v2, 0x20

    .line 60
    .line 61
    if-ne v1, v2, :cond_1

    .line 62
    .line 63
    const-string v1, "height"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-ne v1, v2, :cond_1

    .line 70
    .line 71
    iput-boolean v13, v15, Ld2/u;->P0:Z

    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    const/16 v2, 0x1d

    .line 78
    .line 79
    if-lt v1, v2, :cond_c

    .line 80
    .line 81
    iget-object v1, v15, Ld2/u;->x1:Lu7/j0;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    goto/16 :goto_2

    .line 90
    .line 91
    :cond_2
    iget-object v1, v15, Ld2/u;->x1:Lu7/j0;

    .line 92
    .line 93
    sget-object v2, Ly1/b;->b:Ly1/b;

    .line 94
    .line 95
    new-instance v2, Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_a

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_3

    .line 121
    .line 122
    invoke-static {v0, v3}, Lwa/f;->c(Landroid/media/MediaFormat;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eq v5, v13, :cond_9

    .line 127
    .line 128
    if-eq v5, v4, :cond_8

    .line 129
    .line 130
    const/4 v6, 0x3

    .line 131
    if-eq v5, v6, :cond_7

    .line 132
    .line 133
    if-eq v5, v10, :cond_6

    .line 134
    .line 135
    const/4 v6, 0x5

    .line 136
    if-eq v5, v6, :cond_4

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    if-nez v5, :cond_5

    .line 144
    .line 145
    invoke-virtual {v2, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_5
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_6
    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_7
    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_8
    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    .line 192
    .line 193
    .line 194
    move-result-wide v5

    .line 195
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_9
    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_a
    new-instance v1, Ly1/b;

    .line 216
    .line 217
    invoke-direct {v1, v2}, Ly1/b;-><init>(Ljava/util/HashMap;)V

    .line 218
    .line 219
    .line 220
    iget-object v2, v15, Ld2/u;->w1:Ly1/b;

    .line 221
    .line 222
    invoke-virtual {v1, v2}, Ly1/b;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_b

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_b
    iput-object v1, v15, Ld2/u;->w1:Ly1/b;

    .line 230
    .line 231
    invoke-virtual {v15, v1}, Ld2/u;->b0(Ly1/b;)V

    .line 232
    .line 233
    .line 234
    :cond_c
    :goto_2
    iput-object v0, v15, Ld2/u;->T:Landroid/media/MediaFormat;

    .line 235
    .line 236
    iput-boolean v13, v15, Ld2/u;->V:Z

    .line 237
    .line 238
    :goto_3
    return v13

    .line 239
    :cond_d
    iget-boolean v0, v15, Ld2/u;->Q0:Z

    .line 240
    .line 241
    if-eqz v0, :cond_f

    .line 242
    .line 243
    iget-boolean v0, v15, Ld2/u;->j1:Z

    .line 244
    .line 245
    if-nez v0, :cond_e

    .line 246
    .line 247
    iget v0, v15, Ld2/u;->d1:I

    .line 248
    .line 249
    if-ne v0, v4, :cond_f

    .line 250
    .line 251
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ld2/u;->j0()V

    .line 252
    .line 253
    .line 254
    :cond_f
    iget-wide v3, v15, Ld2/u;->R0:J

    .line 255
    .line 256
    cmp-long v0, v3, v1

    .line 257
    .line 258
    if-eqz v0, :cond_10

    .line 259
    .line 260
    const-wide/16 v0, 0x64

    .line 261
    .line 262
    add-long/2addr v3, v0

    .line 263
    iget-object v0, v15, Ly1/a;->g:Lu1/z;

    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 269
    .line 270
    .line 271
    move-result-wide v0

    .line 272
    cmp-long v2, v3, v0

    .line 273
    .line 274
    if-gez v2, :cond_10

    .line 275
    .line 276
    invoke-virtual/range {p0 .. p0}, Ld2/u;->j0()V

    .line 277
    .line 278
    .line 279
    :cond_10
    return v14

    .line 280
    :cond_11
    iget-wide v3, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 281
    .line 282
    iget-wide v6, v15, Ld2/u;->u1:J

    .line 283
    .line 284
    sub-long/2addr v3, v6

    .line 285
    iput-wide v3, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 286
    .line 287
    iget-boolean v3, v15, Ld2/u;->P0:Z

    .line 288
    .line 289
    if-eqz v3, :cond_12

    .line 290
    .line 291
    iput-boolean v14, v15, Ld2/u;->P0:Z

    .line 292
    .line 293
    invoke-interface {v5, v0}, Ld2/n;->h(I)V

    .line 294
    .line 295
    .line 296
    return v13

    .line 297
    :cond_12
    iget v3, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 298
    .line 299
    if-nez v3, :cond_13

    .line 300
    .line 301
    iget v3, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 302
    .line 303
    and-int/2addr v3, v10

    .line 304
    if-eqz v3, :cond_13

    .line 305
    .line 306
    invoke-virtual/range {p0 .. p0}, Ld2/u;->j0()V

    .line 307
    .line 308
    .line 309
    return v14

    .line 310
    :cond_13
    iput v0, v15, Ld2/u;->V0:I

    .line 311
    .line 312
    invoke-interface {v5, v0}, Ld2/n;->H(I)Ljava/nio/ByteBuffer;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iput-object v0, v15, Ld2/u;->W0:Ljava/nio/ByteBuffer;

    .line 317
    .line 318
    if-eqz v0, :cond_14

    .line 319
    .line 320
    iget v3, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 321
    .line 322
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 323
    .line 324
    .line 325
    iget-object v0, v15, Ld2/u;->W0:Ljava/nio/ByteBuffer;

    .line 326
    .line 327
    iget v3, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 328
    .line 329
    iget v4, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 330
    .line 331
    add-int/2addr v3, v4

    .line 332
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 333
    .line 334
    .line 335
    :cond_14
    iget-wide v3, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 336
    .line 337
    invoke-virtual {v15, v3, v4}, Ld2/u;->B0(J)V

    .line 338
    .line 339
    .line 340
    :cond_15
    iget-boolean v0, v15, Ld2/u;->t1:Z

    .line 341
    .line 342
    if-nez v0, :cond_17

    .line 343
    .line 344
    iget-wide v3, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 345
    .line 346
    iget-wide v6, v15, Ly1/a;->l:J

    .line 347
    .line 348
    cmp-long v0, v3, v6

    .line 349
    .line 350
    if-gez v0, :cond_16

    .line 351
    .line 352
    goto :goto_4

    .line 353
    :cond_16
    const/16 v16, 0x0

    .line 354
    .line 355
    goto :goto_5

    .line 356
    :cond_17
    :goto_4
    const/16 v16, 0x1

    .line 357
    .line 358
    :goto_5
    iget-object v0, v15, Ld2/u;->p1:Ld2/t;

    .line 359
    .line 360
    iget-wide v3, v0, Ld2/t;->f:J

    .line 361
    .line 362
    cmp-long v0, v3, v1

    .line 363
    .line 364
    if-eqz v0, :cond_18

    .line 365
    .line 366
    iget-wide v0, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 367
    .line 368
    cmp-long v2, v3, v0

    .line 369
    .line 370
    if-gtz v2, :cond_18

    .line 371
    .line 372
    const/4 v9, 0x1

    .line 373
    goto :goto_6

    .line 374
    :cond_18
    const/4 v9, 0x0

    .line 375
    :goto_6
    iput-boolean v9, v15, Ld2/u;->X0:Z

    .line 376
    .line 377
    iget-object v6, v15, Ld2/u;->W0:Ljava/nio/ByteBuffer;

    .line 378
    .line 379
    iget v7, v15, Ld2/u;->V0:I

    .line 380
    .line 381
    iget v8, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 382
    .line 383
    iget-wide v3, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 384
    .line 385
    iget-object v1, v15, Ld2/u;->H:Lr1/p;

    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    const/16 v17, 0x1

    .line 391
    .line 392
    move-object/from16 v0, p0

    .line 393
    .line 394
    move-object/from16 v18, v1

    .line 395
    .line 396
    move-wide/from16 v1, p1

    .line 397
    .line 398
    move-wide/from16 v19, v3

    .line 399
    .line 400
    move-wide/from16 v3, p3

    .line 401
    .line 402
    move/from16 v21, v9

    .line 403
    .line 404
    move/from16 v9, v17

    .line 405
    .line 406
    move-object/from16 v22, v11

    .line 407
    .line 408
    const/16 v17, 0x4

    .line 409
    .line 410
    move-wide/from16 v10, v19

    .line 411
    .line 412
    move/from16 v12, v16

    .line 413
    .line 414
    const/16 v16, 0x1

    .line 415
    .line 416
    move/from16 v13, v21

    .line 417
    .line 418
    const/16 v19, 0x0

    .line 419
    .line 420
    move-object/from16 v14, v18

    .line 421
    .line 422
    invoke-virtual/range {v0 .. v14}, Ld2/u;->k0(JJLd2/n;Ljava/nio/ByteBuffer;IIIJZZLr1/p;)Z

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-eqz v0, :cond_1c

    .line 427
    .line 428
    move-object/from16 v0, v22

    .line 429
    .line 430
    iget-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 431
    .line 432
    invoke-virtual {v15, v1, v2}, Ld2/u;->g0(J)V

    .line 433
    .line 434
    .line 435
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 436
    .line 437
    and-int/lit8 v0, v0, 0x4

    .line 438
    .line 439
    if-eqz v0, :cond_19

    .line 440
    .line 441
    const/4 v14, 0x1

    .line 442
    goto :goto_7

    .line 443
    :cond_19
    const/4 v14, 0x0

    .line 444
    :goto_7
    if-nez v14, :cond_1a

    .line 445
    .line 446
    iget-boolean v0, v15, Ld2/u;->g1:Z

    .line 447
    .line 448
    if-eqz v0, :cond_1a

    .line 449
    .line 450
    iget-boolean v0, v15, Ld2/u;->X0:Z

    .line 451
    .line 452
    if-eqz v0, :cond_1a

    .line 453
    .line 454
    iget-object v0, v15, Ly1/a;->g:Lu1/z;

    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 460
    .line 461
    .line 462
    move-result-wide v0

    .line 463
    iput-wide v0, v15, Ld2/u;->R0:J

    .line 464
    .line 465
    :cond_1a
    const/4 v0, -0x1

    .line 466
    iput v0, v15, Ld2/u;->V0:I

    .line 467
    .line 468
    const/4 v0, 0x0

    .line 469
    iput-object v0, v15, Ld2/u;->W0:Ljava/nio/ByteBuffer;

    .line 470
    .line 471
    if-nez v14, :cond_1b

    .line 472
    .line 473
    return v16

    .line 474
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Ld2/u;->j0()V

    .line 475
    .line 476
    .line 477
    :cond_1c
    return v19
.end method

.method public final K()Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Ld2/u;->R:Ld2/n;

    .line 4
    .line 5
    const/4 v8, 0x0

    .line 6
    if-eqz v2, :cond_1d

    .line 7
    .line 8
    iget v0, v1, Ld2/u;->d1:I

    .line 9
    .line 10
    const/4 v9, 0x2

    .line 11
    if-eq v0, v9, :cond_1d

    .line 12
    .line 13
    iget-boolean v0, v1, Ld2/u;->j1:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_5

    .line 18
    .line 19
    :cond_0
    iget v0, v1, Ld2/u;->U0:I

    .line 20
    .line 21
    iget-object v10, v1, Ld2/u;->z:Lx1/g;

    .line 22
    .line 23
    if-gez v0, :cond_2

    .line 24
    .line 25
    invoke-interface {v2}, Ld2/n;->p()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, v1, Ld2/u;->U0:I

    .line 30
    .line 31
    if-gez v0, :cond_1

    .line 32
    .line 33
    return v8

    .line 34
    :cond_1
    invoke-interface {v2, v0}, Ld2/n;->C(I)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, v10, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    invoke-virtual {v10}, Lx1/g;->g()V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget v0, v1, Ld2/u;->d1:I

    .line 44
    .line 45
    const/4 v11, 0x1

    .line 46
    const/4 v12, 0x0

    .line 47
    const/4 v13, -0x1

    .line 48
    if-ne v0, v11, :cond_4

    .line 49
    .line 50
    iget-boolean v0, v1, Ld2/u;->Q0:Z

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iput-boolean v11, v1, Ld2/u;->g1:Z

    .line 56
    .line 57
    iget v3, v1, Ld2/u;->U0:I

    .line 58
    .line 59
    const/4 v7, 0x4

    .line 60
    const/4 v4, 0x0

    .line 61
    const-wide/16 v5, 0x0

    .line 62
    .line 63
    invoke-interface/range {v2 .. v7}, Ld2/n;->g(IIJI)V

    .line 64
    .line 65
    .line 66
    iput v13, v1, Ld2/u;->U0:I

    .line 67
    .line 68
    iput-object v12, v10, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    :goto_0
    iput v9, v1, Ld2/u;->d1:I

    .line 71
    .line 72
    return v8

    .line 73
    :cond_4
    iget-boolean v0, v1, Ld2/u;->O0:Z

    .line 74
    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    iput-boolean v8, v1, Ld2/u;->O0:Z

    .line 78
    .line 79
    iget-object v0, v10, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    sget-object v3, Ld2/u;->y1:[B

    .line 85
    .line 86
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 87
    .line 88
    .line 89
    iget v3, v1, Ld2/u;->U0:I

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    const/16 v4, 0x26

    .line 93
    .line 94
    const-wide/16 v5, 0x0

    .line 95
    .line 96
    invoke-interface/range {v2 .. v7}, Ld2/n;->g(IIJI)V

    .line 97
    .line 98
    .line 99
    iput v13, v1, Ld2/u;->U0:I

    .line 100
    .line 101
    iput-object v12, v10, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 102
    .line 103
    iput-boolean v11, v1, Ld2/u;->f1:Z

    .line 104
    .line 105
    return v11

    .line 106
    :cond_5
    iget v0, v1, Ld2/u;->c1:I

    .line 107
    .line 108
    if-ne v0, v11, :cond_7

    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    :goto_1
    iget-object v3, v1, Ld2/u;->S:Lr1/p;

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    iget-object v3, v3, Lr1/p;->r:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-ge v0, v3, :cond_6

    .line 123
    .line 124
    iget-object v3, v1, Ld2/u;->S:Lr1/p;

    .line 125
    .line 126
    iget-object v3, v3, Lr1/p;->r:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    check-cast v3, [B

    .line 133
    .line 134
    iget-object v4, v10, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 135
    .line 136
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 140
    .line 141
    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_6
    iput v9, v1, Ld2/u;->c1:I

    .line 146
    .line 147
    :cond_7
    iget-object v0, v10, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    iget-object v3, v1, Ly1/a;->c:Lua/i8;

    .line 157
    .line 158
    invoke-virtual {v3}, Lua/i8;->n()V

    .line 159
    .line 160
    .line 161
    :try_start_0
    new-instance v4, La2/c0;

    .line 162
    .line 163
    const/16 v5, 0x12

    .line 164
    .line 165
    invoke-direct {v4, v1, v5, v3}, La2/c0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v2, v4}, Ld2/n;->l(La2/c0;)V
    :try_end_0
    .catch Lx1/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .line 170
    .line 171
    iget-object v4, v1, Ld2/u;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    const/4 v5, -0x3

    .line 178
    if-ne v4, v5, :cond_9

    .line 179
    .line 180
    invoke-virtual/range {p0 .. p0}, Ly1/a;->k()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_8

    .line 185
    .line 186
    invoke-virtual/range {p0 .. p0}, Ld2/u;->R()Ld2/t;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-wide v2, v1, Ld2/u;->i1:J

    .line 191
    .line 192
    iput-wide v2, v0, Ld2/t;->f:J

    .line 193
    .line 194
    :cond_8
    return v8

    .line 195
    :cond_9
    const/4 v5, -0x5

    .line 196
    if-ne v4, v5, :cond_b

    .line 197
    .line 198
    iget v0, v1, Ld2/u;->c1:I

    .line 199
    .line 200
    if-ne v0, v9, :cond_a

    .line 201
    .line 202
    invoke-virtual {v10}, Lx1/g;->g()V

    .line 203
    .line 204
    .line 205
    iput v11, v1, Ld2/u;->c1:I

    .line 206
    .line 207
    :cond_a
    invoke-virtual {v1, v3}, Ld2/u;->d0(Lua/i8;)Ly1/d;

    .line 208
    .line 209
    .line 210
    return v11

    .line 211
    :cond_b
    const/4 v3, 0x4

    .line 212
    invoke-virtual {v10, v3}, Lab/a;->c(I)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_f

    .line 217
    .line 218
    invoke-virtual/range {p0 .. p0}, Ld2/u;->R()Ld2/t;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iget-wide v3, v1, Ld2/u;->i1:J

    .line 223
    .line 224
    iput-wide v3, v0, Ld2/t;->f:J

    .line 225
    .line 226
    iget v0, v1, Ld2/u;->c1:I

    .line 227
    .line 228
    if-ne v0, v9, :cond_c

    .line 229
    .line 230
    invoke-virtual {v10}, Lx1/g;->g()V

    .line 231
    .line 232
    .line 233
    iput v11, v1, Ld2/u;->c1:I

    .line 234
    .line 235
    :cond_c
    iput-boolean v11, v1, Ld2/u;->j1:Z

    .line 236
    .line 237
    iget-boolean v0, v1, Ld2/u;->f1:Z

    .line 238
    .line 239
    if-nez v0, :cond_d

    .line 240
    .line 241
    invoke-virtual/range {p0 .. p0}, Ld2/u;->j0()V

    .line 242
    .line 243
    .line 244
    return v8

    .line 245
    :cond_d
    iget-boolean v0, v1, Ld2/u;->Q0:Z

    .line 246
    .line 247
    if-eqz v0, :cond_e

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_e
    iput-boolean v11, v1, Ld2/u;->g1:Z

    .line 251
    .line 252
    iget v3, v1, Ld2/u;->U0:I

    .line 253
    .line 254
    const/4 v7, 0x4

    .line 255
    const/4 v4, 0x0

    .line 256
    const-wide/16 v5, 0x0

    .line 257
    .line 258
    invoke-interface/range {v2 .. v7}, Ld2/n;->g(IIJI)V

    .line 259
    .line 260
    .line 261
    iput v13, v1, Ld2/u;->U0:I

    .line 262
    .line 263
    iput-object v12, v10, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 264
    .line 265
    :goto_2
    return v8

    .line 266
    :cond_f
    iget-boolean v3, v1, Ld2/u;->f1:Z

    .line 267
    .line 268
    if-nez v3, :cond_11

    .line 269
    .line 270
    invoke-virtual {v10, v11}, Lab/a;->c(I)Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-nez v3, :cond_11

    .line 275
    .line 276
    invoke-virtual {v10}, Lx1/g;->g()V

    .line 277
    .line 278
    .line 279
    iget v0, v1, Ld2/u;->c1:I

    .line 280
    .line 281
    if-ne v0, v9, :cond_10

    .line 282
    .line 283
    iput v11, v1, Ld2/u;->c1:I

    .line 284
    .line 285
    :cond_10
    return v11

    .line 286
    :cond_11
    iget-wide v3, v10, Lx1/g;->g:J

    .line 287
    .line 288
    invoke-virtual {v1, v10}, Ld2/u;->t0(Lx1/g;)Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-eqz v5, :cond_12

    .line 293
    .line 294
    return v11

    .line 295
    :cond_12
    const/high16 v5, 0x40000000    # 2.0f

    .line 296
    .line 297
    invoke-virtual {v10, v5}, Lab/a;->c(I)Z

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    if-eqz v5, :cond_15

    .line 302
    .line 303
    iget-object v6, v10, Lx1/g;->d:Lx1/c;

    .line 304
    .line 305
    if-nez v0, :cond_13

    .line 306
    .line 307
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_13
    iget-object v7, v6, Lx1/c;->d:[I

    .line 312
    .line 313
    if-nez v7, :cond_14

    .line 314
    .line 315
    new-array v7, v11, [I

    .line 316
    .line 317
    iput-object v7, v6, Lx1/c;->d:[I

    .line 318
    .line 319
    iget-object v9, v6, Lx1/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 320
    .line 321
    iput-object v7, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 322
    .line 323
    :cond_14
    iget-object v6, v6, Lx1/c;->d:[I

    .line 324
    .line 325
    aget v7, v6, v8

    .line 326
    .line 327
    add-int/2addr v7, v0

    .line 328
    aput v7, v6, v8

    .line 329
    .line 330
    :cond_15
    :goto_3
    iget-boolean v0, v1, Ld2/u;->l1:Z

    .line 331
    .line 332
    if-eqz v0, :cond_16

    .line 333
    .line 334
    invoke-virtual/range {p0 .. p0}, Ld2/u;->R()Ld2/t;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    iget-object v6, v0, Ld2/t;->d:Lu1/c0;

    .line 339
    .line 340
    iget-object v7, v1, Ld2/u;->G:Lr1/p;

    .line 341
    .line 342
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v6, v7, v3, v4}, Lu1/c0;->a(Ljava/lang/Object;J)V

    .line 346
    .line 347
    .line 348
    iput-boolean v11, v0, Ld2/t;->e:Z

    .line 349
    .line 350
    iput-boolean v8, v1, Ld2/u;->l1:Z

    .line 351
    .line 352
    :cond_16
    iget-wide v6, v1, Ld2/u;->i1:J

    .line 353
    .line 354
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 355
    .line 356
    .line 357
    move-result-wide v6

    .line 358
    iput-wide v6, v1, Ld2/u;->i1:J

    .line 359
    .line 360
    invoke-virtual/range {p0 .. p0}, Ly1/a;->k()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-nez v0, :cond_17

    .line 365
    .line 366
    const/high16 v0, 0x20000000

    .line 367
    .line 368
    invoke-virtual {v10, v0}, Lab/a;->c(I)Z

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-eqz v0, :cond_18

    .line 373
    .line 374
    :cond_17
    invoke-virtual/range {p0 .. p0}, Ld2/u;->R()Ld2/t;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    iget-wide v6, v1, Ld2/u;->i1:J

    .line 379
    .line 380
    iput-wide v6, v0, Ld2/t;->f:J

    .line 381
    .line 382
    :cond_18
    invoke-virtual {v10}, Lx1/g;->l()V

    .line 383
    .line 384
    .line 385
    const/high16 v0, 0x10000000

    .line 386
    .line 387
    invoke-virtual {v10, v0}, Lab/a;->c(I)Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_19

    .line 392
    .line 393
    invoke-virtual {v1, v10}, Ld2/u;->T(Lx1/g;)V

    .line 394
    .line 395
    .line 396
    :cond_19
    iget-boolean v0, v1, Ld2/u;->t1:Z

    .line 397
    .line 398
    if-eqz v0, :cond_1b

    .line 399
    .line 400
    iget-wide v6, v1, Ld2/u;->i1:J

    .line 401
    .line 402
    cmp-long v0, v3, v6

    .line 403
    .line 404
    if-gtz v0, :cond_1a

    .line 405
    .line 406
    iget-wide v14, v1, Ld2/u;->u1:J

    .line 407
    .line 408
    sub-long/2addr v6, v3

    .line 409
    const-wide/16 v16, 0x1

    .line 410
    .line 411
    add-long v6, v6, v16

    .line 412
    .line 413
    add-long/2addr v6, v14

    .line 414
    iput-wide v6, v1, Ld2/u;->u1:J

    .line 415
    .line 416
    :cond_1a
    iput-wide v3, v1, Ld2/u;->i1:J

    .line 417
    .line 418
    iput-boolean v8, v1, Ld2/u;->t1:Z

    .line 419
    .line 420
    :cond_1b
    invoke-virtual {v1, v10}, Ld2/u;->i0(Lx1/g;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1, v10}, Ld2/u;->N(Lx1/g;)I

    .line 424
    .line 425
    .line 426
    move-result v7

    .line 427
    iget-wide v14, v1, Ld2/u;->u1:J

    .line 428
    .line 429
    add-long/2addr v14, v3

    .line 430
    if-eqz v5, :cond_1c

    .line 431
    .line 432
    iget v3, v1, Ld2/u;->U0:I

    .line 433
    .line 434
    iget-object v4, v10, Lx1/g;->d:Lx1/c;

    .line 435
    .line 436
    move-wide v5, v14

    .line 437
    invoke-interface/range {v2 .. v7}, Ld2/n;->d(ILx1/c;JI)V

    .line 438
    .line 439
    .line 440
    goto :goto_4

    .line 441
    :cond_1c
    iget v3, v1, Ld2/u;->U0:I

    .line 442
    .line 443
    iget-object v0, v10, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    move-wide v5, v14

    .line 453
    invoke-interface/range {v2 .. v7}, Ld2/n;->g(IIJI)V

    .line 454
    .line 455
    .line 456
    :goto_4
    iput v13, v1, Ld2/u;->U0:I

    .line 457
    .line 458
    iput-object v12, v10, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 459
    .line 460
    iput-boolean v11, v1, Ld2/u;->f1:Z

    .line 461
    .line 462
    iput v8, v1, Ld2/u;->c1:I

    .line 463
    .line 464
    iget-object v0, v1, Ld2/u;->o1:Ly1/c;

    .line 465
    .line 466
    iget v2, v0, Ly1/c;->c:I

    .line 467
    .line 468
    add-int/2addr v2, v11

    .line 469
    iput v2, v0, Ly1/c;->c:I

    .line 470
    .line 471
    return v11

    .line 472
    :catch_0
    move-exception v0

    .line 473
    invoke-virtual {v1, v0}, Ld2/u;->Z(Ljava/lang/Exception;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1, v8}, Ld2/u;->l0(I)Z

    .line 477
    .line 478
    .line 479
    invoke-virtual/range {p0 .. p0}, Ld2/u;->L()V

    .line 480
    .line 481
    .line 482
    return v11

    .line 483
    :cond_1d
    :goto_5
    return v8
.end method

.method public final L()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Ld2/u;->R:Ld2/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ld2/n;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ld2/u;->p0()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {p0}, Ld2/u;->p0()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final M(Z)Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Ld2/u;->G:Lr1/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ld2/u;->w:Ld2/l;

    .line 7
    .line 8
    invoke-virtual {p0, v1, v0, p1}, Ld2/u;->P(Ld2/l;Lr1/p;Z)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, v1, v0, p1}, Ld2/u;->P(Ld2/l;Lr1/p;Z)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v1, "Drm session requires secure decoder for "

    .line 34
    .line 35
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lr1/p;->o:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", but no secure decoder available. Trying to proceed with "

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, "."

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-object v2
.end method

.method public N(Lx1/g;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public abstract O(FLr1/p;[Lr1/p;)F
.end method

.method public abstract P(Ld2/l;Lr1/p;Z)Ljava/util/ArrayList;
.end method

.method public Q(JJZ)J
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Ly1/a;->h(JJ)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    return-wide p1
.end method

.method public final R()Ld2/t;
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/u;->D:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ld2/t;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Ld2/u;->p1:Ld2/t;

    .line 17
    .line 18
    return-object v0
.end method

.method public abstract S(Ld2/q;Lr1/p;Landroid/media/MediaCrypto;F)Lba/i;
.end method

.method public abstract T(Lx1/g;)V
.end method

.method public final U(Ld2/q;Landroid/media/MediaCrypto;)V
    .locals 12

    .line 1
    const-string v0, "createCodec:"

    .line 2
    .line 3
    iput-object p1, p0, Ld2/u;->h0:Ld2/q;

    .line 4
    .line 5
    iget-object v1, p0, Ld2/u;->G:Lr1/p;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v7, p1, Ld2/q;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget v2, p0, Ld2/u;->P:F

    .line 13
    .line 14
    iget-object v3, p0, Ly1/a;->j:[Lr1/p;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v2, v1, v3}, Ld2/u;->O(FLr1/p;[Lr1/p;)F

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget v3, p0, Ld2/u;->x:F

    .line 24
    .line 25
    cmpg-float v3, v2, v3

    .line 26
    .line 27
    if-gtz v3, :cond_0

    .line 28
    .line 29
    const/high16 v2, -0x40800000    # -1.0f

    .line 30
    .line 31
    :cond_0
    iget-object v3, p0, Ly1/a;->g:Lu1/z;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    invoke-virtual {p0, p1, v1, p2, v2}, Ld2/u;->S(Ld2/q;Lr1/p;Landroid/media/MediaCrypto;F)Lba/i;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    const/16 v6, 0x1f

    .line 47
    .line 48
    if-lt v5, v6, :cond_1

    .line 49
    .line 50
    iget-object v8, p0, Ly1/a;->f:Lz1/i;

    .line 51
    .line 52
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8}, Lz1/i;->a()Landroid/media/metrics/LogSessionId;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    invoke-static {}, Lx0/d;->c()Landroid/media/metrics/LogSessionId;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-static {v8, v9}, Lx0/d;->s(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    if-nez v9, :cond_1

    .line 68
    .line 69
    iget-object v9, p2, Lba/i;->b:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v9, Landroid/media/MediaFormat;

    .line 72
    .line 73
    const-string v10, "log-session-id"

    .line 74
    .line 75
    invoke-static {v8}, La2/b;->o(Landroid/media/metrics/LogSessionId;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v9, v10, v8}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0}, Ltb/a;->k(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Ld2/u;->v:Ld2/m;

    .line 98
    .line 99
    invoke-interface {v0, p2}, Ld2/m;->s(Lba/i;)Ld2/n;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    iput-object p2, p0, Ld2/u;->R:Ld2/n;

    .line 104
    .line 105
    new-instance v0, La1/i;

    .line 106
    .line 107
    const/16 v8, 0xe

    .line 108
    .line 109
    invoke-direct {v0, v8, p0}, La1/i;-><init>(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p2, v0}, Ld2/n;->m(La1/i;)Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    iput-boolean p2, p0, Ld2/u;->S0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    invoke-static {}, Ltb/a;->h()V

    .line 119
    .line 120
    .line 121
    iget-object p2, p0, Ly1/a;->g:Lu1/z;

    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 127
    .line 128
    .line 129
    move-result-wide v8

    .line 130
    iget-object p2, p0, Ld2/u;->t:Landroid/content/Context;

    .line 131
    .line 132
    invoke-virtual {p1, p2, v1}, Ld2/q;->e(Landroid/content/Context;Lr1/p;)Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-nez p2, :cond_2

    .line 137
    .line 138
    invoke-static {v1}, Lr1/p;->d(Lr1/p;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string v10, "Format exceeds selected codec\'s capabilities ["

    .line 147
    .line 148
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string p2, ", "

    .line 155
    .line 156
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string p2, "]"

    .line 163
    .line 164
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-static {p2}, Lu1/a;->p(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :cond_2
    iput v2, p0, Ld2/u;->X:F

    .line 175
    .line 176
    iput-object v1, p0, Ld2/u;->S:Lr1/p;

    .line 177
    .line 178
    const/4 p2, 0x2

    .line 179
    const/16 v0, 0x19

    .line 180
    .line 181
    const/4 v1, 0x0

    .line 182
    const/4 v2, 0x1

    .line 183
    if-gt v5, v0, :cond_4

    .line 184
    .line 185
    const-string v10, "OMX.Exynos.avc.dec.secure"

    .line 186
    .line 187
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-eqz v10, :cond_4

    .line 192
    .line 193
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 194
    .line 195
    const-string v11, "SM-T585"

    .line 196
    .line 197
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    if-nez v11, :cond_3

    .line 202
    .line 203
    const-string v11, "SM-A510"

    .line 204
    .line 205
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    if-nez v11, :cond_3

    .line 210
    .line 211
    const-string v11, "SM-A520"

    .line 212
    .line 213
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    if-nez v11, :cond_3

    .line 218
    .line 219
    const-string v11, "SM-J700"

    .line 220
    .line 221
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v10

    .line 225
    if-eqz v10, :cond_4

    .line 226
    .line 227
    :cond_3
    const/4 v10, 0x2

    .line 228
    goto :goto_0

    .line 229
    :cond_4
    const/16 v10, 0x18

    .line 230
    .line 231
    if-ge v5, v10, :cond_7

    .line 232
    .line 233
    const-string v10, "OMX.Nvidia.h264.decode"

    .line 234
    .line 235
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    if-nez v10, :cond_5

    .line 240
    .line 241
    const-string v10, "OMX.Nvidia.h264.decode.secure"

    .line 242
    .line 243
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v10

    .line 247
    if-eqz v10, :cond_7

    .line 248
    .line 249
    :cond_5
    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 250
    .line 251
    const-string v11, "flounder"

    .line 252
    .line 253
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v11

    .line 257
    if-nez v11, :cond_6

    .line 258
    .line 259
    const-string v11, "flounder_lte"

    .line 260
    .line 261
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v11

    .line 265
    if-nez v11, :cond_6

    .line 266
    .line 267
    const-string v11, "grouper"

    .line 268
    .line 269
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v11

    .line 273
    if-nez v11, :cond_6

    .line 274
    .line 275
    const-string v11, "tilapia"

    .line 276
    .line 277
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v10

    .line 281
    if-eqz v10, :cond_7

    .line 282
    .line 283
    :cond_6
    const/4 v10, 0x1

    .line 284
    goto :goto_0

    .line 285
    :cond_7
    const/4 v10, 0x0

    .line 286
    :goto_0
    iput v10, p0, Ld2/u;->t0:I

    .line 287
    .line 288
    const/16 v10, 0x1d

    .line 289
    .line 290
    if-ne v5, v10, :cond_8

    .line 291
    .line 292
    const-string v11, "c2.android.aac.decoder"

    .line 293
    .line 294
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v11

    .line 298
    if-eqz v11, :cond_8

    .line 299
    .line 300
    const/4 v11, 0x1

    .line 301
    goto :goto_1

    .line 302
    :cond_8
    const/4 v11, 0x0

    .line 303
    :goto_1
    iput-boolean v11, p0, Ld2/u;->M0:Z

    .line 304
    .line 305
    const/16 v11, 0x17

    .line 306
    .line 307
    if-ne v5, v11, :cond_9

    .line 308
    .line 309
    const-string v11, "OMX.google.vorbis.decoder"

    .line 310
    .line 311
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v11

    .line 315
    if-eqz v11, :cond_9

    .line 316
    .line 317
    const/4 v11, 0x1

    .line 318
    goto :goto_2

    .line 319
    :cond_9
    const/4 v11, 0x0

    .line 320
    :goto_2
    iput-boolean v11, p0, Ld2/u;->N0:Z

    .line 321
    .line 322
    iget-object v11, p1, Ld2/q;->a:Ljava/lang/String;

    .line 323
    .line 324
    if-gt v5, v0, :cond_a

    .line 325
    .line 326
    const-string v0, "OMX.rk.video_decoder.avc"

    .line 327
    .line 328
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-nez v0, :cond_c

    .line 333
    .line 334
    :cond_a
    if-gt v5, v10, :cond_b

    .line 335
    .line 336
    const-string v0, "OMX.broadcom.video_decoder.tunnel"

    .line 337
    .line 338
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-nez v0, :cond_c

    .line 343
    .line 344
    const-string v0, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 345
    .line 346
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-nez v0, :cond_c

    .line 351
    .line 352
    const-string v0, "OMX.bcm.vdec.avc.tunnel"

    .line 353
    .line 354
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-nez v0, :cond_c

    .line 359
    .line 360
    const-string v0, "OMX.bcm.vdec.avc.tunnel.secure"

    .line 361
    .line 362
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    if-nez v0, :cond_c

    .line 367
    .line 368
    const-string v0, "OMX.bcm.vdec.hevc.tunnel"

    .line 369
    .line 370
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-nez v0, :cond_c

    .line 375
    .line 376
    const-string v0, "OMX.bcm.vdec.hevc.tunnel.secure"

    .line 377
    .line 378
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-nez v0, :cond_c

    .line 383
    .line 384
    :cond_b
    const-string v0, "Amazon"

    .line 385
    .line 386
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_d

    .line 393
    .line 394
    const-string v0, "AFTS"

    .line 395
    .line 396
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 397
    .line 398
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-eqz v0, :cond_d

    .line 403
    .line 404
    iget-boolean p1, p1, Ld2/q;->f:Z

    .line 405
    .line 406
    if-eqz p1, :cond_d

    .line 407
    .line 408
    :cond_c
    const/4 v1, 0x1

    .line 409
    :cond_d
    iput-boolean v1, p0, Ld2/u;->Q0:Z

    .line 410
    .line 411
    iget-object p1, p0, Ld2/u;->R:Ld2/n;

    .line 412
    .line 413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    iget p1, p0, Ly1/a;->h:I

    .line 417
    .line 418
    if-ne p1, p2, :cond_e

    .line 419
    .line 420
    iget-object p1, p0, Ly1/a;->g:Lu1/z;

    .line 421
    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 426
    .line 427
    .line 428
    move-result-wide p1

    .line 429
    const-wide/16 v0, 0x3e8

    .line 430
    .line 431
    add-long/2addr p1, v0

    .line 432
    iput-wide p1, p0, Ld2/u;->T0:J

    .line 433
    .line 434
    :cond_e
    iget-object p1, p0, Ld2/u;->o1:Ly1/c;

    .line 435
    .line 436
    iget p2, p1, Ly1/c;->a:I

    .line 437
    .line 438
    add-int/2addr p2, v2

    .line 439
    iput p2, p1, Ly1/c;->a:I

    .line 440
    .line 441
    sub-long p1, v8, v3

    .line 442
    .line 443
    if-lt v5, v6, :cond_f

    .line 444
    .line 445
    iget-object v0, p0, Ld2/u;->x1:Lu7/j0;

    .line 446
    .line 447
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-nez v0, :cond_f

    .line 452
    .line 453
    iget-object v0, p0, Ld2/u;->R:Ld2/n;

    .line 454
    .line 455
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    new-instance v1, Ljava/util/ArrayList;

    .line 459
    .line 460
    iget-object v2, p0, Ld2/u;->x1:Lu7/j0;

    .line 461
    .line 462
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 463
    .line 464
    .line 465
    invoke-interface {v0, v1}, Ld2/n;->I(Ljava/util/ArrayList;)V

    .line 466
    .line 467
    .line 468
    :cond_f
    move-object v2, p0

    .line 469
    move-wide v3, v8

    .line 470
    move-wide v5, p1

    .line 471
    invoke-virtual/range {v2 .. v7}, Ld2/u;->a0(JJLjava/lang/String;)V

    .line 472
    .line 473
    .line 474
    return-void

    .line 475
    :catchall_0
    move-exception p1

    .line 476
    invoke-static {}, Ltb/a;->h()V

    .line 477
    .line 478
    .line 479
    throw p1
.end method

.method public final V(JJ)Z
    .locals 2

    .line 1
    cmp-long v0, p3, p1

    .line 2
    .line 3
    if-gez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Ld2/u;->H:Lr1/p;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lr1/p;->o:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "audio/opus"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sub-long/2addr p1, p3

    .line 20
    const-wide/32 p3, 0x13880

    .line 21
    .line 22
    .line 23
    cmp-long v0, p1, p3

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 31
    :goto_1
    return p1
.end method

.method public final W()V
    .locals 8

    .line 1
    iget-object v0, p0, Ld2/u;->R:Ld2/n;

    .line 2
    .line 3
    if-nez v0, :cond_d

    .line 4
    .line 5
    iget-boolean v0, p0, Ld2/u;->Y0:Z

    .line 6
    .line 7
    if-nez v0, :cond_d

    .line 8
    .line 9
    iget-object v0, p0, Ld2/u;->G:Lr1/p;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_8

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Ld2/u;->K:La1/i;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ld2/u;->x0(Lr1/p;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_0
    iget-object v4, v0, Lr1/p;->o:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    iput-boolean v3, p0, Ld2/u;->Y0:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Ld2/u;->o0()V

    .line 37
    .line 38
    .line 39
    const-string v0, "audio/mp4a-latm"

    .line 40
    .line 41
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget-object v1, p0, Ld2/u;->B:Ld2/j;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    const-string v0, "audio/mpeg"

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_2

    .line 56
    .line 57
    const-string v0, "audio/opus"

    .line 58
    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iput v2, v1, Ld2/j;->l:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    const/16 v0, 0x20

    .line 75
    .line 76
    iput v0, v1, Ld2/j;->l:I

    .line 77
    .line 78
    :goto_1
    iput-boolean v2, p0, Ld2/u;->Y0:Z

    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    iget-object v1, p0, Ld2/u;->K:La1/i;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Ld2/u;->r0(La1/i;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Ld2/u;->I:La1/i;

    .line 87
    .line 88
    const/4 v5, 0x4

    .line 89
    if-eqz v1, :cond_8

    .line 90
    .line 91
    iget-object v1, p0, Ld2/u;->M:Landroid/media/MediaCrypto;

    .line 92
    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    const/4 v1, 0x0

    .line 98
    :goto_2
    invoke-static {v1}, La9/o;->t(Z)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Ld2/u;->I:La1/i;

    .line 102
    .line 103
    invoke-virtual {v1}, La1/i;->n()Lx1/a;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    sget-boolean v7, Lb2/h;->a:Z

    .line 108
    .line 109
    if-eqz v7, :cond_6

    .line 110
    .line 111
    instance-of v7, v6, Lb2/h;

    .line 112
    .line 113
    if-eqz v7, :cond_6

    .line 114
    .line 115
    invoke-virtual {v1}, La1/i;->t()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-eq v7, v2, :cond_5

    .line 120
    .line 121
    if-eq v7, v5, :cond_6

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_5
    invoke-virtual {v1}, La1/i;->o()Lb2/b;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Ld2/u;->G:Lr1/p;

    .line 132
    .line 133
    iget v2, v0, Lb2/b;->a:I

    .line 134
    .line 135
    invoke-virtual {p0, v0, v1, v3, v2}, Ly1/a;->f(Ljava/lang/Exception;Lr1/p;ZI)Ly1/k;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    throw v0

    .line 140
    :cond_6
    if-nez v6, :cond_7

    .line 141
    .line 142
    invoke-virtual {v1}, La1/i;->o()Lb2/b;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    if-eqz v1, :cond_b

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_7
    instance-of v1, v6, Lb2/h;

    .line 150
    .line 151
    if-eqz v1, :cond_8

    .line 152
    .line 153
    check-cast v6, Lb2/h;

    .line 154
    .line 155
    :try_start_0
    new-instance v1, Landroid/media/MediaCrypto;

    .line 156
    .line 157
    const/4 v6, 0x0

    .line 158
    const/4 v7, 0x0

    .line 159
    invoke-direct {v1, v6, v7}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    .line 160
    .line 161
    .line 162
    iput-object v1, p0, Ld2/u;->M:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :catch_0
    move-exception v0

    .line 166
    iget-object v1, p0, Ld2/u;->G:Lr1/p;

    .line 167
    .line 168
    const/16 v2, 0x1776

    .line 169
    .line 170
    invoke-virtual {p0, v0, v1, v3, v2}, Ly1/a;->f(Ljava/lang/Exception;Lr1/p;ZI)Ly1/k;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    throw v0

    .line 175
    :cond_8
    :goto_3
    :try_start_1
    iget-object v1, p0, Ld2/u;->I:La1/i;

    .line 176
    .line 177
    if-eqz v1, :cond_a

    .line 178
    .line 179
    invoke-virtual {v1}, La1/i;->t()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    const/4 v6, 0x3

    .line 184
    if-eq v1, v6, :cond_9

    .line 185
    .line 186
    iget-object v1, p0, Ld2/u;->I:La1/i;

    .line 187
    .line 188
    invoke-virtual {v1}, La1/i;->t()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-ne v1, v5, :cond_a

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :catch_1
    move-exception v1

    .line 196
    goto :goto_7

    .line 197
    :cond_9
    :goto_4
    iget-object v1, p0, Ld2/u;->I:La1/i;

    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v4}, La1/i;->E(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_a

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_a
    const/4 v2, 0x0

    .line 210
    :goto_5
    iget-object v1, p0, Ld2/u;->M:Landroid/media/MediaCrypto;

    .line 211
    .line 212
    invoke-virtual {p0, v1, v2}, Ld2/u;->X(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Ld2/s; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    .line 214
    .line 215
    :cond_b
    :goto_6
    iget-object v0, p0, Ld2/u;->M:Landroid/media/MediaCrypto;

    .line 216
    .line 217
    if-eqz v0, :cond_c

    .line 218
    .line 219
    iget-object v1, p0, Ld2/u;->R:Ld2/n;

    .line 220
    .line 221
    if-nez v1, :cond_c

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 224
    .line 225
    .line 226
    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Ld2/u;->M:Landroid/media/MediaCrypto;

    .line 228
    .line 229
    :cond_c
    return-void

    .line 230
    :goto_7
    const/16 v2, 0xfa1

    .line 231
    .line 232
    invoke-virtual {p0, v1, v0, v3, v2}, Ly1/a;->f(Ljava/lang/Exception;Lr1/p;ZI)Ly1/k;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    throw v0

    .line 237
    :cond_d
    :goto_8
    return-void
.end method

.method public final X(Landroid/media/MediaCrypto;Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Ld2/u;->G:Lr1/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ld2/u;->Y:Ljava/util/ArrayDeque;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0, p2}, Ld2/u;->M(Z)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v3, Ljava/util/ArrayDeque;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v3, p0, Ld2/u;->Y:Ljava/util/ArrayDeque;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    iget-object v3, p0, Ld2/u;->Y:Ljava/util/ArrayDeque;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ld2/q;

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    iput-object v2, p0, Ld2/u;->Z:Ld2/s;
    :try_end_0
    .catch Ld2/y; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :goto_1
    new-instance v1, Ld2/s;

    .line 47
    .line 48
    const v2, -0xc34e

    .line 49
    .line 50
    .line 51
    invoke-direct {v1, v0, p1, p2, v2}, Ld2/s;-><init>(Lr1/p;Ld2/y;ZI)V

    .line 52
    .line 53
    .line 54
    throw v1

    .line 55
    :cond_1
    :goto_2
    iget-object v1, p0, Ld2/u;->Y:Ljava/util/ArrayDeque;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_8

    .line 62
    .line 63
    iget-object v1, p0, Ld2/u;->Y:Ljava/util/ArrayDeque;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    :goto_3
    iget-object v3, p0, Ld2/u;->R:Ld2/n;

    .line 69
    .line 70
    if-nez v3, :cond_7

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    move-object v9, v3

    .line 77
    check-cast v9, Ld2/q;

    .line 78
    .line 79
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ld2/u;->Y(Lr1/p;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_2

    .line 87
    .line 88
    return-void

    .line 89
    :cond_2
    invoke-virtual {p0, v9}, Ld2/u;->v0(Ld2/q;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-nez v3, :cond_3

    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    :try_start_1
    invoke-virtual {p0, v9, p1}, Ld2/u;->U(Ld2/q;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :catch_1
    move-exception v6

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v4, "Failed to initialize decoder: "

    .line 104
    .line 105
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v3, v6}, Lu1/a;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    new-instance v3, Ld2/s;

    .line 122
    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v5, "Decoder init failed: "

    .line 126
    .line 127
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v5, v9, Ld2/q;->a:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v5, ", "

    .line 136
    .line 137
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-static {v6}, Ld2/a;->y(Ljava/lang/Exception;)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_4

    .line 152
    .line 153
    invoke-static {v6}, Ld2/a;->d(Ljava/lang/Exception;)Landroid/media/MediaCodec$CodecException;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {v4}, Ld2/a;->l(Landroid/media/MediaCodec$CodecException;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    move-object v10, v4

    .line 162
    goto :goto_4

    .line 163
    :cond_4
    move-object v10, v2

    .line 164
    :goto_4
    iget-object v7, v0, Lr1/p;->o:Ljava/lang/String;

    .line 165
    .line 166
    move-object v4, v3

    .line 167
    move v8, p2

    .line 168
    invoke-direct/range {v4 .. v10}, Ld2/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLd2/q;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v3}, Ld2/u;->Z(Ljava/lang/Exception;)V

    .line 172
    .line 173
    .line 174
    iget-object v4, p0, Ld2/u;->Z:Ld2/s;

    .line 175
    .line 176
    if-nez v4, :cond_5

    .line 177
    .line 178
    iput-object v3, p0, Ld2/u;->Z:Ld2/s;

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_5
    new-instance v3, Ld2/s;

    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    iget-object v8, v4, Ld2/s;->a:Ljava/lang/String;

    .line 192
    .line 193
    iget-boolean v9, v4, Ld2/s;->b:Z

    .line 194
    .line 195
    iget-object v10, v4, Ld2/s;->c:Ld2/q;

    .line 196
    .line 197
    iget-object v11, v4, Ld2/s;->d:Ljava/lang/String;

    .line 198
    .line 199
    move-object v5, v3

    .line 200
    invoke-direct/range {v5 .. v11}, Ld2/s;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLd2/q;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iput-object v3, p0, Ld2/u;->Z:Ld2/s;

    .line 204
    .line 205
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-nez v3, :cond_6

    .line 210
    .line 211
    goto/16 :goto_3

    .line 212
    .line 213
    :cond_6
    iget-object p1, p0, Ld2/u;->Z:Ld2/s;

    .line 214
    .line 215
    throw p1

    .line 216
    :cond_7
    iput-object v2, p0, Ld2/u;->Y:Ljava/util/ArrayDeque;

    .line 217
    .line 218
    return-void

    .line 219
    :cond_8
    new-instance p1, Ld2/s;

    .line 220
    .line 221
    const v1, -0xc34f

    .line 222
    .line 223
    .line 224
    invoke-direct {p1, v0, v2, p2, v1}, Ld2/s;-><init>(Lr1/p;Ld2/y;ZI)V

    .line 225
    .line 226
    .line 227
    goto :goto_7

    .line 228
    :goto_6
    throw p1

    .line 229
    :goto_7
    goto :goto_6
.end method

.method public Y(Lr1/p;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public abstract Z(Ljava/lang/Exception;)V
.end method

.method public abstract a0(JJLjava/lang/String;)V
.end method

.method public abstract b0(Ly1/b;)V
.end method

.method public abstract c0(Ljava/lang/String;)V
.end method

.method public d(ILjava/lang/Object;)V
    .locals 5

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    if-eq p1, v0, :cond_e

    .line 4
    .line 5
    const/16 v0, 0x15

    .line 6
    .line 7
    const/16 v1, 0x1d

    .line 8
    .line 9
    if-eq p1, v0, :cond_6

    .line 10
    .line 11
    const/16 v0, 0x16

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    if-lt p1, v1, :cond_f

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    check-cast p2, Lu7/j0;

    .line 25
    .line 26
    iget-object v0, p0, Ld2/u;->x1:Lu7/j0;

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Lu7/j0;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_1
    const/16 v0, 0x1f

    .line 37
    .line 38
    if-lt p1, v0, :cond_5

    .line 39
    .line 40
    new-instance p1, Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/util/HashSet;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Ld2/u;->x1:Lu7/j0;

    .line 51
    .line 52
    invoke-virtual {v1}, Lu7/b0;->h()Lu7/o1;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_2

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-object v1, p0, Ld2/u;->R:Ld2/n;

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_4

    .line 87
    .line 88
    new-instance v2, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v1, v2}, Ld2/n;->L(Ljava/util/ArrayList;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_5

    .line 101
    .line 102
    new-instance v0, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v1, v0}, Ld2/n;->I(Ljava/util/ArrayList;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    iput-object p2, p0, Ld2/u;->x1:Lu7/j0;

    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 115
    .line 116
    if-lt p1, v1, :cond_f

    .line 117
    .line 118
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    check-cast p2, Ly1/b;

    .line 122
    .line 123
    iput-object p2, p0, Ld2/u;->v1:Ly1/b;

    .line 124
    .line 125
    iget-object p1, p0, Ld2/u;->R:Ld2/n;

    .line 126
    .line 127
    if-eqz p1, :cond_f

    .line 128
    .line 129
    new-instance v0, Landroid/os/Bundle;

    .line 130
    .line 131
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object p2, p2, Ly1/b;->a:Ljava/util/Map;

    .line 135
    .line 136
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    :cond_7
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_d

    .line 149
    .line 150
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Ljava/util/Map$Entry;

    .line 155
    .line 156
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    check-cast v2, Ljava/lang/String;

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    if-nez v1, :cond_8

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_8
    instance-of v3, v1, Ljava/lang/Integer;

    .line 170
    .line 171
    if-eqz v3, :cond_9

    .line 172
    .line 173
    check-cast v1, Ljava/lang/Integer;

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_9
    instance-of v3, v1, Ljava/lang/Long;

    .line 184
    .line 185
    if-eqz v3, :cond_a

    .line 186
    .line 187
    check-cast v1, Ljava/lang/Long;

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 190
    .line 191
    .line 192
    move-result-wide v3

    .line 193
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_a
    instance-of v3, v1, Ljava/lang/Float;

    .line 198
    .line 199
    if-eqz v3, :cond_b

    .line 200
    .line 201
    check-cast v1, Ljava/lang/Float;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_b
    instance-of v3, v1, Ljava/lang/String;

    .line 212
    .line 213
    if-eqz v3, :cond_c

    .line 214
    .line 215
    check-cast v1, Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_c
    instance-of v3, v1, Ljava/nio/ByteBuffer;

    .line 222
    .line 223
    if-eqz v3, :cond_7

    .line 224
    .line 225
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 226
    .line 227
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    new-array v3, v3, [B

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_d
    invoke-interface {p1, v0}, Ld2/n;->e(Landroid/os/Bundle;)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_e
    check-cast p2, Ly1/b0;

    .line 249
    .line 250
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    iput-object p2, p0, Ld2/u;->L:Ly1/b0;

    .line 254
    .line 255
    :cond_f
    :goto_2
    return-void
.end method

.method public d0(Lua/i8;)Ly1/d;
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ld2/u;->l1:Z

    .line 3
    .line 4
    iget-object v1, p1, Lua/i8;->c:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Lr1/p;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iget-object v3, v1, Lr1/p;->o:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v3, :cond_27

    .line 15
    .line 16
    const-string v4, "video/av01"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    const/4 v6, 0x0

    .line 23
    const/16 v7, 0x10

    .line 24
    .line 25
    if-nez v5, :cond_5

    .line 26
    .line 27
    const-string v5, "video/x-vnd.on2.vp9"

    .line 28
    .line 29
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_5

    .line 34
    .line 35
    const-string v5, "video/dolby-vision"

    .line 36
    .line 37
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    if-eqz v8, :cond_6

    .line 42
    .line 43
    sget-object v8, Lu1/c;->a:[B

    .line 44
    .line 45
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    :goto_0
    move-object v3, v6

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-static {v1}, Lu1/c;->b(Lr1/p;)Landroid/util/Pair;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v3, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eq v3, v7, :cond_4

    .line 69
    .line 70
    const/16 v5, 0x20

    .line 71
    .line 72
    if-eq v3, v5, :cond_4

    .line 73
    .line 74
    const/16 v5, 0x100

    .line 75
    .line 76
    if-eq v3, v5, :cond_4

    .line 77
    .line 78
    const/16 v5, 0x200

    .line 79
    .line 80
    if-eq v3, v5, :cond_3

    .line 81
    .line 82
    const/16 v5, 0x400

    .line 83
    .line 84
    if-eq v3, v5, :cond_2

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    move-object v3, v4

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const-string v3, "video/avc"

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    const-string v3, "video/hevc"

    .line 93
    .line 94
    :goto_1
    invoke-static {v3, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_6

    .line 99
    .line 100
    :cond_5
    iget-object v3, v1, Lr1/p;->r:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_6

    .line 107
    .line 108
    new-instance v3, Lr1/o;

    .line 109
    .line 110
    invoke-direct {v3, v1}, Lr1/o;-><init>(Lr1/p;)V

    .line 111
    .line 112
    .line 113
    iput-object v6, v3, Lr1/o;->q:Ljava/util/List;

    .line 114
    .line 115
    new-instance v1, Lr1/p;

    .line 116
    .line 117
    invoke-direct {v1, v3}, Lr1/p;-><init>(Lr1/o;)V

    .line 118
    .line 119
    .line 120
    :cond_6
    move-object v11, v1

    .line 121
    iget-object p1, p1, Lua/i8;->b:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p1, La1/i;

    .line 124
    .line 125
    iget-object v1, p0, Ld2/u;->K:La1/i;

    .line 126
    .line 127
    if-ne v1, p1, :cond_7

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_7
    if-eqz p1, :cond_8

    .line 131
    .line 132
    invoke-virtual {p1, v6}, La1/i;->j(Lb2/d;)V

    .line 133
    .line 134
    .line 135
    :cond_8
    if-eqz v1, :cond_9

    .line 136
    .line 137
    invoke-virtual {v1, v6}, La1/i;->C(Lb2/d;)V

    .line 138
    .line 139
    .line 140
    :cond_9
    :goto_2
    iput-object p1, p0, Ld2/u;->K:La1/i;

    .line 141
    .line 142
    iput-object v11, p0, Ld2/u;->G:Lr1/p;

    .line 143
    .line 144
    iget-boolean p1, p0, Ld2/u;->Y0:Z

    .line 145
    .line 146
    if-eqz p1, :cond_a

    .line 147
    .line 148
    iput-boolean v0, p0, Ld2/u;->a1:Z

    .line 149
    .line 150
    return-object v6

    .line 151
    :cond_a
    iget-object p1, p0, Ld2/u;->R:Ld2/n;

    .line 152
    .line 153
    if-nez p1, :cond_b

    .line 154
    .line 155
    iput-object v6, p0, Ld2/u;->Y:Ljava/util/ArrayDeque;

    .line 156
    .line 157
    invoke-virtual {p0}, Ld2/u;->W()V

    .line 158
    .line 159
    .line 160
    return-object v6

    .line 161
    :cond_b
    iget-object v1, p0, Ld2/u;->h0:Ld2/q;

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    iget-object v10, p0, Ld2/u;->S:Lr1/p;

    .line 167
    .line 168
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    iget-object v3, p0, Ld2/u;->I:La1/i;

    .line 172
    .line 173
    iget-object v4, p0, Ld2/u;->K:La1/i;

    .line 174
    .line 175
    const/4 v5, 0x3

    .line 176
    const/4 v6, 0x2

    .line 177
    if-ne v3, v4, :cond_c

    .line 178
    .line 179
    goto/16 :goto_3

    .line 180
    .line 181
    :cond_c
    if-eqz v4, :cond_25

    .line 182
    .line 183
    if-nez v3, :cond_d

    .line 184
    .line 185
    goto/16 :goto_a

    .line 186
    .line 187
    :cond_d
    invoke-virtual {v4}, La1/i;->n()Lx1/a;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    if-nez v8, :cond_e

    .line 192
    .line 193
    goto/16 :goto_a

    .line 194
    .line 195
    :cond_e
    invoke-virtual {v3}, La1/i;->n()Lx1/a;

    .line 196
    .line 197
    .line 198
    move-result-object v9

    .line 199
    if-eqz v9, :cond_25

    .line 200
    .line 201
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    invoke-virtual {v12, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    if-nez v9, :cond_f

    .line 214
    .line 215
    goto/16 :goto_a

    .line 216
    .line 217
    :cond_f
    instance-of v8, v8, Lb2/h;

    .line 218
    .line 219
    if-nez v8, :cond_10

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_10
    invoke-virtual {v4}, La1/i;->r()Ljava/util/UUID;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    invoke-virtual {v3}, La1/i;->r()Ljava/util/UUID;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    invoke-virtual {v8, v9}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    if-nez v8, :cond_11

    .line 235
    .line 236
    goto/16 :goto_a

    .line 237
    .line 238
    :cond_11
    sget-object v8, Lr1/f;->e:Ljava/util/UUID;

    .line 239
    .line 240
    invoke-virtual {v3}, La1/i;->r()Ljava/util/UUID;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v8, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-nez v3, :cond_25

    .line 249
    .line 250
    invoke-virtual {v4}, La1/i;->r()Ljava/util/UUID;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-virtual {v8, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-eqz v3, :cond_12

    .line 259
    .line 260
    goto/16 :goto_a

    .line 261
    .line 262
    :cond_12
    iget-boolean v3, v1, Ld2/q;->f:Z

    .line 263
    .line 264
    if-nez v3, :cond_14

    .line 265
    .line 266
    invoke-virtual {v4}, La1/i;->t()I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    if-eq v3, v6, :cond_25

    .line 271
    .line 272
    invoke-virtual {v4}, La1/i;->t()I

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-eq v3, v5, :cond_13

    .line 277
    .line 278
    invoke-virtual {v4}, La1/i;->t()I

    .line 279
    .line 280
    .line 281
    move-result v3

    .line 282
    const/4 v8, 0x4

    .line 283
    if-ne v3, v8, :cond_14

    .line 284
    .line 285
    :cond_13
    iget-object v3, v11, Lr1/p;->o:Ljava/lang/String;

    .line 286
    .line 287
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v4, v3}, La1/i;->E(Ljava/lang/String;)Z

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    if-eqz v3, :cond_14

    .line 295
    .line 296
    goto/16 :goto_a

    .line 297
    .line 298
    :cond_14
    :goto_3
    iget-object v3, p0, Ld2/u;->K:La1/i;

    .line 299
    .line 300
    iget-object v4, p0, Ld2/u;->I:La1/i;

    .line 301
    .line 302
    if-eq v3, v4, :cond_15

    .line 303
    .line 304
    const/4 v3, 0x1

    .line 305
    goto :goto_4

    .line 306
    :cond_15
    const/4 v3, 0x0

    .line 307
    :goto_4
    invoke-virtual {p0}, Ld2/u;->R()Ld2/t;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    iget-boolean v4, v4, Ld2/t;->e:Z

    .line 312
    .line 313
    invoke-virtual {p0, v1, v10, v11, v4}, Ld2/u;->G(Ld2/q;Lr1/p;Lr1/p;Z)Ly1/d;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    iget v8, v4, Ly1/d;->d:I

    .line 318
    .line 319
    if-eqz v8, :cond_20

    .line 320
    .line 321
    if-eq v8, v0, :cond_1c

    .line 322
    .line 323
    if-eq v8, v6, :cond_18

    .line 324
    .line 325
    if-ne v8, v5, :cond_17

    .line 326
    .line 327
    invoke-virtual {p0, v11}, Ld2/u;->z0(Lr1/p;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-nez v0, :cond_16

    .line 332
    .line 333
    :goto_5
    const/16 v13, 0x10

    .line 334
    .line 335
    goto/16 :goto_9

    .line 336
    .line 337
    :cond_16
    iput-object v11, p0, Ld2/u;->S:Lr1/p;

    .line 338
    .line 339
    if-eqz v3, :cond_22

    .line 340
    .line 341
    invoke-virtual {p0}, Ld2/u;->I()Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-nez v0, :cond_22

    .line 346
    .line 347
    :goto_6
    const/4 v13, 0x2

    .line 348
    goto/16 :goto_9

    .line 349
    .line 350
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 351
    .line 352
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 353
    .line 354
    .line 355
    throw p1

    .line 356
    :cond_18
    invoke-virtual {p0, v11}, Ld2/u;->z0(Lr1/p;)Z

    .line 357
    .line 358
    .line 359
    move-result v9

    .line 360
    if-nez v9, :cond_19

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_19
    iput-boolean v0, p0, Ld2/u;->b1:Z

    .line 364
    .line 365
    iput v0, p0, Ld2/u;->c1:I

    .line 366
    .line 367
    iget v7, p0, Ld2/u;->t0:I

    .line 368
    .line 369
    if-eq v7, v6, :cond_1b

    .line 370
    .line 371
    if-ne v7, v0, :cond_1a

    .line 372
    .line 373
    iget v7, v11, Lr1/p;->v:I

    .line 374
    .line 375
    iget v9, v10, Lr1/p;->v:I

    .line 376
    .line 377
    if-ne v7, v9, :cond_1a

    .line 378
    .line 379
    iget v7, v11, Lr1/p;->w:I

    .line 380
    .line 381
    iget v9, v10, Lr1/p;->w:I

    .line 382
    .line 383
    if-ne v7, v9, :cond_1a

    .line 384
    .line 385
    goto :goto_7

    .line 386
    :cond_1a
    const/4 v0, 0x0

    .line 387
    :cond_1b
    :goto_7
    iput-boolean v0, p0, Ld2/u;->O0:Z

    .line 388
    .line 389
    iput-object v11, p0, Ld2/u;->S:Lr1/p;

    .line 390
    .line 391
    if-eqz v3, :cond_22

    .line 392
    .line 393
    invoke-virtual {p0}, Ld2/u;->I()Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-nez v0, :cond_22

    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_1c
    invoke-virtual {p0, v11}, Ld2/u;->z0(Lr1/p;)Z

    .line 401
    .line 402
    .line 403
    move-result v9

    .line 404
    if-nez v9, :cond_1d

    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_1d
    iput-object v11, p0, Ld2/u;->S:Lr1/p;

    .line 408
    .line 409
    if-eqz v3, :cond_1e

    .line 410
    .line 411
    invoke-virtual {p0}, Ld2/u;->I()Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-nez v0, :cond_22

    .line 416
    .line 417
    goto :goto_6

    .line 418
    :cond_1e
    iget-boolean v3, p0, Ld2/u;->f1:Z

    .line 419
    .line 420
    if-eqz v3, :cond_22

    .line 421
    .line 422
    iput v0, p0, Ld2/u;->d1:I

    .line 423
    .line 424
    iget-boolean v3, p0, Ld2/u;->N0:Z

    .line 425
    .line 426
    if-eqz v3, :cond_1f

    .line 427
    .line 428
    iput v5, p0, Ld2/u;->e1:I

    .line 429
    .line 430
    goto :goto_6

    .line 431
    :cond_1f
    iput v0, p0, Ld2/u;->e1:I

    .line 432
    .line 433
    goto :goto_8

    .line 434
    :cond_20
    iget-boolean v3, p0, Ld2/u;->f1:Z

    .line 435
    .line 436
    if-eqz v3, :cond_21

    .line 437
    .line 438
    iput v0, p0, Ld2/u;->d1:I

    .line 439
    .line 440
    iput v5, p0, Ld2/u;->e1:I

    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_21
    invoke-virtual {p0}, Ld2/u;->m0()V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p0}, Ld2/u;->W()V

    .line 447
    .line 448
    .line 449
    :cond_22
    :goto_8
    const/4 v13, 0x0

    .line 450
    :goto_9
    if-eqz v8, :cond_24

    .line 451
    .line 452
    iget-object v0, p0, Ld2/u;->R:Ld2/n;

    .line 453
    .line 454
    if-ne v0, p1, :cond_23

    .line 455
    .line 456
    iget p1, p0, Ld2/u;->e1:I

    .line 457
    .line 458
    if-ne p1, v5, :cond_24

    .line 459
    .line 460
    :cond_23
    new-instance p1, Ly1/d;

    .line 461
    .line 462
    iget-object v9, v1, Ld2/q;->a:Ljava/lang/String;

    .line 463
    .line 464
    const/4 v12, 0x0

    .line 465
    move-object v8, p1

    .line 466
    invoke-direct/range {v8 .. v13}, Ly1/d;-><init>(Ljava/lang/String;Lr1/p;Lr1/p;II)V

    .line 467
    .line 468
    .line 469
    return-object p1

    .line 470
    :cond_24
    return-object v4

    .line 471
    :cond_25
    :goto_a
    iget-boolean p1, p0, Ld2/u;->f1:Z

    .line 472
    .line 473
    if-eqz p1, :cond_26

    .line 474
    .line 475
    iput v0, p0, Ld2/u;->d1:I

    .line 476
    .line 477
    iput v5, p0, Ld2/u;->e1:I

    .line 478
    .line 479
    goto :goto_b

    .line 480
    :cond_26
    invoke-virtual {p0}, Ld2/u;->m0()V

    .line 481
    .line 482
    .line 483
    invoke-virtual {p0}, Ld2/u;->W()V

    .line 484
    .line 485
    .line 486
    :goto_b
    new-instance p1, Ly1/d;

    .line 487
    .line 488
    const/16 v13, 0x80

    .line 489
    .line 490
    iget-object v9, v1, Ld2/q;->a:Ljava/lang/String;

    .line 491
    .line 492
    const/4 v12, 0x0

    .line 493
    move-object v8, p1

    .line 494
    invoke-direct/range {v8 .. v13}, Ly1/d;-><init>(Ljava/lang/String;Lr1/p;Lr1/p;II)V

    .line 495
    .line 496
    .line 497
    return-object p1

    .line 498
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 499
    .line 500
    const-string v0, "Sample MIME type is null."

    .line 501
    .line 502
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    const/16 v0, 0xfa5

    .line 506
    .line 507
    invoke-virtual {p0, p1, v1, v2, v0}, Ly1/a;->f(Ljava/lang/Exception;Lr1/p;ZI)Ly1/k;

    .line 508
    .line 509
    .line 510
    move-result-object p1

    .line 511
    goto :goto_d

    .line 512
    :goto_c
    throw p1

    .line 513
    :goto_d
    goto :goto_c
.end method

.method public abstract e0(Lr1/p;Landroid/media/MediaFormat;)V
.end method

.method public f0()V
    .locals 0

    .line 1
    return-void
.end method

.method public g0(J)V
    .locals 4

    .line 1
    iput-wide p1, p0, Ld2/u;->q1:J

    .line 2
    .line 3
    :goto_0
    iget-object v0, p0, Ld2/u;->D:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ld2/t;

    .line 16
    .line 17
    iget-wide v1, v1, Ld2/t;->a:J

    .line 18
    .line 19
    cmp-long v3, p1, v1

    .line 20
    .line 21
    if-ltz v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ld2/t;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ld2/u;->s0(Ld2/t;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ld2/u;->h0()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public final h(JJ)J
    .locals 6

    .line 1
    iget-boolean v5, p0, Ld2/u;->S0:Z

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-wide v1, p1

    .line 5
    move-wide v3, p3

    .line 6
    invoke-virtual/range {v0 .. v5}, Ld2/u;->Q(JJZ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    return-wide p1
.end method

.method public abstract h0()V
.end method

.method public i0(Lx1/g;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final j0()V
    .locals 3

    .line 1
    iget v0, p0, Ld2/u;->e1:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    iput-boolean v1, p0, Ld2/u;->k1:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Ld2/u;->n0()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ld2/u;->m0()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ld2/u;->W()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Ld2/u;->L()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ld2/u;->A0()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, Ld2/u;->L()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public abstract k0(JJLd2/n;Ljava/nio/ByteBuffer;IIIJZZLr1/p;)Z
.end method

.method public final l0(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ly1/a;->c:Lua/i8;

    .line 2
    .line 3
    invoke-virtual {v0}, Lua/i8;->n()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ld2/u;->y:Lx1/g;

    .line 7
    .line 8
    invoke-virtual {v1}, Lx1/g;->g()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    or-int/2addr p1, v2

    .line 13
    invoke-virtual {p0, v0, v1, p1}, Ly1/a;->w(Lua/i8;Lx1/g;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v3, -0x5

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne p1, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ld2/u;->d0(Lua/i8;)Ly1/d;

    .line 22
    .line 23
    .line 24
    return v4

    .line 25
    :cond_0
    const/4 v0, -0x4

    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lab/a;->c(I)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iput-boolean v4, p0, Ld2/u;->j1:Z

    .line 35
    .line 36
    invoke-virtual {p0}, Ld2/u;->j0()V

    .line 37
    .line 38
    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    return p1
.end method

.method public final m0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Ld2/u;->R:Ld2/n;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Ld2/n;->a()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Ld2/u;->o1:Ly1/c;

    .line 10
    .line 11
    iget v2, v1, Ly1/c;->b:I

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    iput v2, v1, Ly1/c;->b:I

    .line 16
    .line 17
    iget-object v1, p0, Ld2/u;->h0:Ld2/q;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    iget-object v1, v1, Ld2/q;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ld2/u;->c0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto :goto_3

    .line 30
    :cond_0
    :goto_0
    iput-object v0, p0, Ld2/u;->R:Ld2/n;

    .line 31
    .line 32
    :try_start_1
    iget-object v1, p0, Ld2/u;->M:Landroid/media/MediaCrypto;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_1
    move-exception v1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_1
    iput-object v0, p0, Ld2/u;->M:Landroid/media/MediaCrypto;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ld2/u;->r0(La1/i;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ld2/u;->q0()V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :goto_2
    iput-object v0, p0, Ld2/u;->M:Landroid/media/MediaCrypto;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Ld2/u;->r0(La1/i;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ld2/u;->q0()V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :goto_3
    iput-object v0, p0, Ld2/u;->R:Ld2/n;

    .line 61
    .line 62
    :try_start_2
    iget-object v2, p0, Ld2/u;->M:Landroid/media/MediaCrypto;

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    .line 68
    .line 69
    goto :goto_4

    .line 70
    :catchall_2
    move-exception v1

    .line 71
    goto :goto_5

    .line 72
    :cond_2
    :goto_4
    iput-object v0, p0, Ld2/u;->M:Landroid/media/MediaCrypto;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Ld2/u;->r0(La1/i;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Ld2/u;->q0()V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :goto_5
    iput-object v0, p0, Ld2/u;->M:Landroid/media/MediaCrypto;

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ld2/u;->r0(La1/i;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Ld2/u;->q0()V

    .line 87
    .line 88
    .line 89
    throw v1
.end method

.method public n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ld2/u;->G:Lr1/p;

    .line 3
    .line 4
    sget-object v0, Ld2/t;->g:Ld2/t;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ld2/u;->s0(Ld2/t;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ld2/u;->D:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Ld2/u;->Y0:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Ld2/u;->Y0:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Ld2/u;->o0()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Ld2/u;->R:Ld2/n;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Ld2/u;->w0()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Ld2/u;->m0()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p0}, Ld2/u;->u0()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Ld2/u;->L()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Ld2/u;->t1:Z

    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public abstract n0()V
.end method

.method public final o0()V
    .locals 3

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Ld2/u;->i1:J

    .line 7
    .line 8
    invoke-virtual {p0}, Ld2/u;->R()Ld2/t;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iput-wide v0, v2, Ld2/t;->f:J

    .line 13
    .line 14
    iput-wide v0, p0, Ld2/u;->q1:J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Ld2/u;->a1:Z

    .line 18
    .line 19
    iget-object v1, p0, Ld2/u;->B:Ld2/j;

    .line 20
    .line 21
    invoke-virtual {v1}, Ld2/j;->g()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Ld2/u;->A:Lx1/g;

    .line 25
    .line 26
    invoke-virtual {v1}, Lx1/g;->g()V

    .line 27
    .line 28
    .line 29
    iput-boolean v0, p0, Ld2/u;->Z0:Z

    .line 30
    .line 31
    iget-object v1, p0, Ld2/u;->E:La2/r1;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    sget-object v2, Ls1/l;->a:Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    iput-object v2, v1, La2/r1;->a:Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    iput v0, v1, La2/r1;->c:I

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    iput v0, v1, La2/r1;->b:I

    .line 44
    .line 45
    return-void
.end method

.method public p(JZZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Ld2/u;->D:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Ld2/t;

    .line 14
    .line 15
    iput-object p2, p0, Ld2/u;->p1:Ld2/t;

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 18
    .line 19
    .line 20
    if-nez p4, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Ld2/u;->j1:Z

    .line 25
    .line 26
    iput-boolean p1, p0, Ld2/u;->k1:Z

    .line 27
    .line 28
    iput-boolean p1, p0, Ld2/u;->m1:Z

    .line 29
    .line 30
    iget-boolean p2, p0, Ld2/u;->Y0:Z

    .line 31
    .line 32
    const/4 p3, 0x1

    .line 33
    if-eqz p2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Ld2/u;->o0()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object p2, p0, Ld2/u;->R:Ld2/n;

    .line 40
    .line 41
    if-nez p2, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    invoke-virtual {p0}, Ld2/u;->w0()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Ld2/u;->m0()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ld2/u;->W()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    invoke-virtual {p0}, Ld2/u;->u0()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_5

    .line 62
    .line 63
    invoke-virtual {p0}, Ld2/u;->L()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    iput-boolean p3, p0, Ld2/u;->t1:Z

    .line 68
    .line 69
    :goto_0
    iget-object p2, p0, Ld2/u;->p1:Ld2/t;

    .line 70
    .line 71
    iget-object p2, p2, Ld2/t;->d:Lu1/c0;

    .line 72
    .line 73
    invoke-virtual {p2}, Lu1/c0;->h()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-lez p2, :cond_6

    .line 78
    .line 79
    iput-boolean p3, p0, Ld2/u;->l1:Z

    .line 80
    .line 81
    :cond_6
    iget-object p2, p0, Ld2/u;->p1:Ld2/t;

    .line 82
    .line 83
    iget-object p2, p2, Ld2/t;->d:Lu1/c0;

    .line 84
    .line 85
    invoke-virtual {p2}, Lu1/c0;->b()V

    .line 86
    .line 87
    .line 88
    iget-object p2, p0, Ld2/u;->p1:Ld2/t;

    .line 89
    .line 90
    iput-boolean p1, p2, Ld2/t;->e:Z

    .line 91
    .line 92
    return-void
.end method

.method public p0()V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ld2/u;->U0:I

    .line 3
    .line 4
    iget-object v1, p0, Ld2/u;->z:Lx1/g;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    iput-object v2, v1, Lx1/g;->e:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iput v0, p0, Ld2/u;->V0:I

    .line 10
    .line 11
    iput-object v2, p0, Ld2/u;->W0:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v0, p0, Ld2/u;->i1:J

    .line 19
    .line 20
    invoke-virtual {p0}, Ld2/u;->R()Ld2/t;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-wide v0, v2, Ld2/t;->f:J

    .line 25
    .line 26
    iput-wide v0, p0, Ld2/u;->q1:J

    .line 27
    .line 28
    iput-wide v0, p0, Ld2/u;->T0:J

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    iput-boolean v2, p0, Ld2/u;->g1:Z

    .line 32
    .line 33
    iput-wide v0, p0, Ld2/u;->R0:J

    .line 34
    .line 35
    iput-boolean v2, p0, Ld2/u;->f1:Z

    .line 36
    .line 37
    iput-boolean v2, p0, Ld2/u;->O0:Z

    .line 38
    .line 39
    iput-boolean v2, p0, Ld2/u;->P0:Z

    .line 40
    .line 41
    iput-boolean v2, p0, Ld2/u;->X0:Z

    .line 42
    .line 43
    iput v2, p0, Ld2/u;->d1:I

    .line 44
    .line 45
    iput v2, p0, Ld2/u;->e1:I

    .line 46
    .line 47
    iget-boolean v0, p0, Ld2/u;->b1:Z

    .line 48
    .line 49
    iput v0, p0, Ld2/u;->c1:I

    .line 50
    .line 51
    iput-boolean v2, p0, Ld2/u;->t1:Z

    .line 52
    .line 53
    const-wide/16 v0, 0x0

    .line 54
    .line 55
    iput-wide v0, p0, Ld2/u;->u1:J

    .line 56
    .line 57
    return-void
.end method

.method public final q0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld2/u;->p0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ld2/u;->n1:Ly1/k;

    .line 6
    .line 7
    iput-object v0, p0, Ld2/u;->Y:Ljava/util/ArrayDeque;

    .line 8
    .line 9
    iput-object v0, p0, Ld2/u;->h0:Ld2/q;

    .line 10
    .line 11
    iput-object v0, p0, Ld2/u;->S:Lr1/p;

    .line 12
    .line 13
    iput-object v0, p0, Ld2/u;->T:Landroid/media/MediaFormat;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Ld2/u;->V:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Ld2/u;->h1:Z

    .line 19
    .line 20
    const/high16 v1, -0x40800000    # -1.0f

    .line 21
    .line 22
    iput v1, p0, Ld2/u;->X:F

    .line 23
    .line 24
    iput v0, p0, Ld2/u;->t0:I

    .line 25
    .line 26
    iput-boolean v0, p0, Ld2/u;->M0:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Ld2/u;->N0:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Ld2/u;->Q0:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Ld2/u;->S0:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Ld2/u;->b1:Z

    .line 35
    .line 36
    iput v0, p0, Ld2/u;->c1:I

    .line 37
    .line 38
    return-void
.end method

.method public final r0(La1/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/u;->I:La1/i;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v1}, La1/i;->j(Lb2/d;)V

    .line 10
    .line 11
    .line 12
    :cond_1
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0, v1}, La1/i;->C(Lb2/d;)V

    .line 15
    .line 16
    .line 17
    :cond_2
    :goto_0
    iput-object p1, p0, Ld2/u;->I:La1/i;

    .line 18
    .line 19
    return-void
.end method

.method public final s0(Ld2/t;)V
    .locals 4

    .line 1
    iput-object p1, p0, Ld2/u;->p1:Ld2/t;

    .line 2
    .line 3
    iget-wide v0, p1, Ld2/t;->c:J

    .line 4
    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long p1, v0, v2

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Ld2/u;->r1:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Ld2/u;->f0()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public t0(Lx1/g;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public u([Lr1/p;JJLf2/c0;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Ld2/u;->p1:Ld2/t;

    .line 3
    .line 4
    iget-wide v1, v1, Ld2/t;->c:J

    .line 5
    .line 6
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long v5, v1, v3

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    new-instance v1, Ld2/t;

    .line 16
    .line 17
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    move-object v6, v1

    .line 23
    move-wide v9, p2

    .line 24
    move-wide/from16 v11, p4

    .line 25
    .line 26
    invoke-direct/range {v6 .. v12}, Ld2/t;-><init>(JJJ)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ld2/u;->s0(Ld2/t;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, v0, Ld2/u;->s1:Z

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0}, Ld2/u;->h0()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, v0, Ld2/u;->D:Ljava/util/ArrayDeque;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    iget-wide v5, v0, Ld2/u;->i1:J

    .line 49
    .line 50
    cmp-long v2, v5, v3

    .line 51
    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    iget-wide v7, v0, Ld2/u;->q1:J

    .line 55
    .line 56
    cmp-long v2, v7, v3

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    cmp-long v2, v7, v5

    .line 61
    .line 62
    if-ltz v2, :cond_2

    .line 63
    .line 64
    :cond_1
    new-instance v1, Ld2/t;

    .line 65
    .line 66
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    move-object v5, v1

    .line 72
    move-wide v8, p2

    .line 73
    move-wide/from16 v10, p4

    .line 74
    .line 75
    invoke-direct/range {v5 .. v11}, Ld2/t;-><init>(JJJ)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Ld2/u;->s0(Ld2/t;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Ld2/u;->p1:Ld2/t;

    .line 82
    .line 83
    iget-wide v1, v1, Ld2/t;->c:J

    .line 84
    .line 85
    cmp-long v5, v1, v3

    .line 86
    .line 87
    if-eqz v5, :cond_3

    .line 88
    .line 89
    invoke-virtual {p0}, Ld2/u;->h0()V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    new-instance v2, Ld2/t;

    .line 94
    .line 95
    iget-wide v7, v0, Ld2/u;->i1:J

    .line 96
    .line 97
    move-object v6, v2

    .line 98
    move-wide v9, p2

    .line 99
    move-wide/from16 v11, p4

    .line 100
    .line 101
    invoke-direct/range {v6 .. v12}, Ld2/t;-><init>(JJJ)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_0
    return-void
.end method

.method public u0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public v0(Ld2/q;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public w0()Z
    .locals 3

    .line 1
    iget v0, p0, Ld2/u;->e1:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    .line 7
    iget-boolean v1, p0, Ld2/u;->M0:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-boolean v1, p0, Ld2/u;->h1:Z

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    :cond_0
    iget-boolean v1, p0, Ld2/u;->N0:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-boolean v1, p0, Ld2/u;->g1:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v1, 0x2

    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {p0}, Ld2/u;->A0()V
    :try_end_0
    .catch Ly1/k; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    const-string v1, "Failed to update the DRM session, releasing the codec instead."

    .line 33
    .line 34
    invoke-static {v1, v0}, Lu1/a;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return v2

    .line 38
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 39
    return v0

    .line 40
    :cond_3
    :goto_1
    return v2
.end method

.method public x(JJ)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Ld2/u;->m1:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Ld2/u;->m1:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Ld2/u;->j0()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Ld2/u;->n1:Ly1/k;

    .line 12
    .line 13
    if-nez v0, :cond_11

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    :try_start_0
    iget-boolean v2, p0, Ld2/u;->k1:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Ld2/u;->n0()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto/16 :goto_8

    .line 26
    .line 27
    :catch_1
    move-exception p1

    .line 28
    goto/16 :goto_b

    .line 29
    .line 30
    :cond_1
    iget-object v2, p0, Ld2/u;->G:Lr1/p;

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    invoke-virtual {p0, v2}, Ld2/u;->l0(I)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {p0}, Ld2/u;->W()V

    .line 43
    .line 44
    .line 45
    iget-boolean v2, p0, Ld2/u;->Y0:Z

    .line 46
    .line 47
    if-eqz v2, :cond_4

    .line 48
    .line 49
    const-string v2, "bypassRender"

    .line 50
    .line 51
    invoke-static {v2}, Ltb/a;->k(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ld2/u;->F(JJ)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-static {}, Ltb/a;->h()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_7

    .line 65
    .line 66
    :cond_4
    iget-object v2, p0, Ld2/u;->R:Ld2/n;

    .line 67
    .line 68
    if-eqz v2, :cond_b

    .line 69
    .line 70
    iget-object v2, p0, Ly1/a;->g:Lu1/z;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    const-string v4, "drainAndFeed"

    .line 80
    .line 81
    invoke-static {v4}, Ltb/a;->k(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ld2/u;->J(JJ)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    if-eqz v4, :cond_7

    .line 94
    .line 95
    iget-wide v7, p0, Ld2/u;->N:J

    .line 96
    .line 97
    cmp-long v4, v7, v5

    .line 98
    .line 99
    if-eqz v4, :cond_6

    .line 100
    .line 101
    iget-object v4, p0, Ly1/a;->g:Lu1/z;

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 107
    .line 108
    .line 109
    move-result-wide v9

    .line 110
    sub-long/2addr v9, v2

    .line 111
    cmp-long v4, v9, v7

    .line 112
    .line 113
    if-gez v4, :cond_5

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    const/4 v4, 0x0

    .line 117
    goto :goto_3

    .line 118
    :cond_6
    :goto_2
    const/4 v4, 0x1

    .line 119
    :goto_3
    if-eqz v4, :cond_7

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_7
    :goto_4
    invoke-virtual {p0}, Ld2/u;->K()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_a

    .line 127
    .line 128
    iget-wide p1, p0, Ld2/u;->N:J

    .line 129
    .line 130
    cmp-long p3, p1, v5

    .line 131
    .line 132
    if-eqz p3, :cond_9

    .line 133
    .line 134
    iget-object p3, p0, Ly1/a;->g:Lu1/z;

    .line 135
    .line 136
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 140
    .line 141
    .line 142
    move-result-wide p3

    .line 143
    sub-long/2addr p3, v2

    .line 144
    cmp-long v4, p3, p1

    .line 145
    .line 146
    if-gez v4, :cond_8

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_8
    const/4 p1, 0x0

    .line 150
    goto :goto_6

    .line 151
    :cond_9
    :goto_5
    const/4 p1, 0x1

    .line 152
    :goto_6
    if-eqz p1, :cond_a

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_a
    invoke-static {}, Ltb/a;->h()V

    .line 156
    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_b
    iget-object p3, p0, Ld2/u;->o1:Ly1/c;

    .line 160
    .line 161
    iget p4, p3, Ly1/c;->d:I

    .line 162
    .line 163
    iget-object v2, p0, Ly1/a;->i:Lf2/c1;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    iget-wide v3, p0, Ly1/a;->k:J

    .line 169
    .line 170
    sub-long/2addr p1, v3

    .line 171
    invoke-interface {v2, p1, p2}, Lf2/c1;->m(J)I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    add-int/2addr p4, p1

    .line 176
    iput p4, p3, Ly1/c;->d:I

    .line 177
    .line 178
    invoke-virtual {p0, v0}, Ld2/u;->l0(I)Z

    .line 179
    .line 180
    .line 181
    :goto_7
    iget-object p1, p0, Ld2/u;->o1:Ly1/c;

    .line 182
    .line 183
    monitor-enter p1

    .line 184
    monitor-exit p1
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-void

    .line 186
    :goto_8
    invoke-static {p1}, Ld2/a;->z(Ljava/lang/IllegalStateException;)Z

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    if-eqz p2, :cond_c

    .line 191
    .line 192
    goto :goto_9

    .line 193
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    array-length p3, p2

    .line 198
    if-lez p3, :cond_10

    .line 199
    .line 200
    aget-object p2, p2, v1

    .line 201
    .line 202
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    const-string p3, "android.media.MediaCodec"

    .line 207
    .line 208
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    if-eqz p2, :cond_10

    .line 213
    .line 214
    :goto_9
    invoke-virtual {p0, p1}, Ld2/u;->Z(Ljava/lang/Exception;)V

    .line 215
    .line 216
    .line 217
    invoke-static {p1}, Ld2/a;->z(Ljava/lang/IllegalStateException;)Z

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    if-eqz p2, :cond_d

    .line 222
    .line 223
    invoke-static {p1}, Ld2/a;->e(Ljava/lang/IllegalStateException;)Landroid/media/MediaCodec$CodecException;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-static {p2}, Ld2/a;->t(Landroid/media/MediaCodec$CodecException;)Z

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    if-eqz p2, :cond_d

    .line 232
    .line 233
    const/4 v1, 0x1

    .line 234
    :cond_d
    if-eqz v1, :cond_e

    .line 235
    .line 236
    invoke-virtual {p0}, Ld2/u;->m0()V

    .line 237
    .line 238
    .line 239
    :cond_e
    iget-object p2, p0, Ld2/u;->h0:Ld2/q;

    .line 240
    .line 241
    invoke-virtual {p0, p1, p2}, Ld2/u;->H(Ljava/lang/IllegalStateException;Ld2/q;)Ld2/p;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    iget p2, p1, Ld2/p;->a:I

    .line 246
    .line 247
    const/16 p3, 0x44d

    .line 248
    .line 249
    if-ne p2, p3, :cond_f

    .line 250
    .line 251
    const/16 p2, 0xfa6

    .line 252
    .line 253
    goto :goto_a

    .line 254
    :cond_f
    const/16 p2, 0xfa3

    .line 255
    .line 256
    :goto_a
    iget-object p3, p0, Ld2/u;->G:Lr1/p;

    .line 257
    .line 258
    invoke-virtual {p0, p1, p3, v1, p2}, Ly1/a;->f(Ljava/lang/Exception;Lr1/p;ZI)Ly1/k;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    throw p1

    .line 263
    :cond_10
    throw p1

    .line 264
    :goto_b
    iget-object p2, p0, Ld2/u;->G:Lr1/p;

    .line 265
    .line 266
    invoke-virtual {p1}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 267
    .line 268
    .line 269
    move-result p3

    .line 270
    invoke-static {p3}, Lu1/f0;->q(I)I

    .line 271
    .line 272
    .line 273
    move-result p3

    .line 274
    invoke-virtual {p0, p1, p2, v1, p3}, Ly1/a;->f(Ljava/lang/Exception;Lr1/p;ZI)Ly1/k;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    throw p1

    .line 279
    :cond_11
    const/4 p1, 0x0

    .line 280
    iput-object p1, p0, Ld2/u;->n1:Ly1/k;

    .line 281
    .line 282
    goto :goto_d

    .line 283
    :goto_c
    throw v0

    .line 284
    :goto_d
    goto :goto_c
.end method

.method public x0(Lr1/p;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public abstract y0(Ld2/l;Lr1/p;)I
.end method

.method public final z0(Lr1/p;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ld2/u;->R:Ld2/n;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_6

    .line 5
    .line 6
    iget v0, p0, Ld2/u;->e1:I

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    if-eq v0, v2, :cond_6

    .line 10
    .line 11
    iget v0, p0, Ly1/a;->h:I

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget v0, p0, Ld2/u;->P:F

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Ly1/a;->j:[Lr1/p;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0, p1, v3}, Ld2/u;->O(FLr1/p;[Lr1/p;)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget v0, p0, Ld2/u;->X:F

    .line 31
    .line 32
    cmpl-float v3, v0, p1

    .line 33
    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    const/high16 v3, -0x40800000    # -1.0f

    .line 38
    .line 39
    cmpl-float v4, p1, v3

    .line 40
    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    iget-boolean p1, p0, Ld2/u;->f1:Z

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iput v1, p0, Ld2/u;->d1:I

    .line 48
    .line 49
    iput v2, p0, Ld2/u;->e1:I

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0}, Ld2/u;->m0()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ld2/u;->W()V

    .line 56
    .line 57
    .line 58
    :goto_0
    const/4 p1, 0x0

    .line 59
    return p1

    .line 60
    :cond_3
    cmpl-float v0, v0, v3

    .line 61
    .line 62
    if-nez v0, :cond_5

    .line 63
    .line 64
    iget v0, p0, Ld2/u;->x:F

    .line 65
    .line 66
    cmpl-float v0, p1, v0

    .line 67
    .line 68
    if-lez v0, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    return v1

    .line 72
    :cond_5
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v2, "operating-rate"

    .line 78
    .line 79
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Ld2/u;->R:Ld2/n;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-interface {v2, v0}, Ld2/n;->e(Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    iput p1, p0, Ld2/u;->X:F

    .line 91
    .line 92
    :cond_6
    :goto_2
    return v1
.end method
