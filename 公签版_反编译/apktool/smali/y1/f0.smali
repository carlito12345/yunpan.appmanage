.class public final Ly1/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lf2/z;
.implements Ly1/w0;
.implements Landroidx/media3/exoplayer/video/x;


# static fields
.field public static final W0:J


# instance fields
.field public final A:Z

.field public final B:Ls1/b;

.field public final C:Z

.field public D:Ly1/e1;

.field public E:Ly1/d1;

.field public F:Z

.field public G:Z

.field public H:Ly1/e0;

.field public I:I

.field public K:Ly1/v0;

.field public L:Ls3/t;

.field public M:Z

.field public M0:J

.field public N:Z

.field public N0:J

.field public O:Z

.field public O0:I

.field public P:Z

.field public P0:Z

.field public Q0:Ly1/k;

.field public R:J

.field public R0:J

.field public S:Z

.field public S0:Ly1/n;

.field public T:I

.field public T0:J

.field public U0:Z

.field public V:Z

.field public V0:F

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public final a:[Lh4/m0;

.field public final b:[Ly1/a;

.field public final c:[Z

.field public final d:Lh2/q;

.field public final e:Lh2/r;

.field public final f:Ly1/h0;

.field public final g:Li2/c;

.field public final h:Lu1/b0;

.field public h0:I

.field public final i:Lha/u3;

.field public final j:Landroid/os/Looper;

.field public final k:Lr1/p0;

.field public final l:Lr1/o0;

.field public final m:J

.field public final n:Ly1/h;

.field public final p:Ljava/util/ArrayList;

.field public final q:Lu1/z;

.field public final r:Ly1/r;

.field public final s:Ly1/n0;

.field public final t:Lm7/l;

.field public t0:Ly1/e0;

.field public final v:Ly1/e;

.field public final w:J

.field public final x:Lz1/i;

.field public final y:Lz1/e;

.field public final z:Lu1/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x2710

    .line 2
    .line 3
    invoke-static {v0, v1}, Lu1/f0;->R(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Ly1/f0;->W0:J

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ly1/a;[Ly1/a;Lh2/q;Lh2/r;Ly1/h0;Li2/c;IZLz1/e;Ly1/e1;Ly1/e;JLandroid/os/Looper;Lu1/z;Ly1/r;Lz1/i;Ly1/n;Landroidx/media3/exoplayer/video/x;Z)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p10

    move-object/from16 v6, p16

    move-object/from16 v7, p18

    move-object/from16 v8, p19

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v9, v1, Ly1/f0;->T0:J

    move-object/from16 v11, p17

    .line 3
    iput-object v11, v1, Ly1/f0;->r:Ly1/r;

    .line 4
    iput-object v2, v1, Ly1/f0;->d:Lh2/q;

    move-object/from16 v11, p5

    .line 5
    iput-object v11, v1, Ly1/f0;->e:Lh2/r;

    .line 6
    iput-object v3, v1, Ly1/f0;->f:Ly1/h0;

    .line 7
    iput-object v4, v1, Ly1/f0;->g:Li2/c;

    move/from16 v12, p8

    .line 8
    iput v12, v1, Ly1/f0;->T:I

    move/from16 v12, p9

    .line 9
    iput-boolean v12, v1, Ly1/f0;->V:Z

    move-object/from16 v12, p11

    .line 10
    iput-object v12, v1, Ly1/f0;->D:Ly1/e1;

    move-object/from16 v12, p12

    .line 11
    iput-object v12, v1, Ly1/f0;->v:Ly1/e;

    move-wide/from16 v12, p13

    .line 12
    iput-wide v12, v1, Ly1/f0;->w:J

    const/4 v12, 0x0

    .line 13
    iput-boolean v12, v1, Ly1/f0;->N:Z

    .line 14
    iput-object v6, v1, Ly1/f0;->q:Lu1/z;

    .line 15
    iput-object v7, v1, Ly1/f0;->x:Lz1/i;

    .line 16
    iput-object v8, v1, Ly1/f0;->S0:Ly1/n;

    .line 17
    iput-object v5, v1, Ly1/f0;->y:Lz1/e;

    const/high16 v13, 0x3f800000    # 1.0f

    .line 18
    iput v13, v1, Ly1/f0;->V0:F

    .line 19
    sget-object v13, Ly1/d1;->g:Ly1/d1;

    iput-object v13, v1, Ly1/f0;->E:Ly1/d1;

    move/from16 v13, p21

    .line 20
    iput-boolean v13, v1, Ly1/f0;->C:Z

    .line 21
    iput-wide v9, v1, Ly1/f0;->R0:J

    .line 22
    iput-wide v9, v1, Ly1/f0;->R:J

    .line 23
    check-cast v3, Ly1/g;

    .line 24
    iget-wide v9, v3, Ly1/g;->n:J

    .line 25
    iput-wide v9, v1, Ly1/f0;->m:J

    .line 26
    sget-object v3, Lr1/q0;->a:Lr1/n0;

    .line 27
    invoke-static/range {p5 .. p5}, Ly1/v0;->k(Lh2/r;)Ly1/v0;

    move-result-object v3

    iput-object v3, v1, Ly1/f0;->K:Ly1/v0;

    .line 28
    new-instance v9, Ls3/t;

    invoke-direct {v9, v3}, Ls3/t;-><init>(Ly1/v0;)V

    iput-object v9, v1, Ly1/f0;->L:Ls3/t;

    .line 29
    array-length v3, v0

    new-array v3, v3, [Ly1/a;

    iput-object v3, v1, Ly1/f0;->b:[Ly1/a;

    .line 30
    array-length v3, v0

    new-array v3, v3, [Z

    iput-object v3, v1, Ly1/f0;->c:[Z

    .line 31
    move-object v3, v2

    check-cast v3, Lh2/n;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    array-length v9, v0

    new-array v9, v9, [Lh4/m0;

    iput-object v9, v1, Ly1/f0;->a:[Lh4/m0;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 33
    :goto_0
    array-length v11, v0

    const/4 v13, 0x1

    if-ge v9, v11, :cond_1

    .line 34
    aget-object v11, v0, v9

    .line 35
    iput v9, v11, Ly1/a;->e:I

    .line 36
    iput-object v7, v11, Ly1/a;->f:Lz1/i;

    .line 37
    iput-object v6, v11, Ly1/a;->g:Lu1/z;

    .line 38
    iget-object v14, v1, Ly1/f0;->b:[Ly1/a;

    aput-object v11, v14, v9

    .line 39
    iget-object v11, v1, Ly1/f0;->b:[Ly1/a;

    aget-object v11, v11, v9

    .line 40
    iget-object v14, v11, Ly1/a;->a:Ljava/lang/Object;

    monitor-enter v14

    .line 41
    :try_start_0
    iput-object v3, v11, Ly1/a;->s:Lh2/n;

    .line 42
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    aget-object v11, p3, v9

    if-eqz v11, :cond_0

    .line 44
    iput v9, v11, Ly1/a;->e:I

    .line 45
    iput-object v7, v11, Ly1/a;->f:Lz1/i;

    .line 46
    iput-object v6, v11, Ly1/a;->g:Lu1/z;

    const/4 v10, 0x1

    .line 47
    :cond_0
    iget-object v13, v1, Ly1/f0;->a:[Lh4/m0;

    new-instance v14, Lh4/m0;

    aget-object v15, v0, v9

    invoke-direct {v14, v15, v11, v9}, Lh4/m0;-><init>(Ly1/a;Ly1/a;I)V

    aput-object v14, v13, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 48
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 49
    :cond_1
    iput-boolean v10, v1, Ly1/f0;->A:Z

    .line 50
    new-instance v0, Ly1/h;

    invoke-direct {v0, v1, v6}, Ly1/h;-><init>(Ly1/f0;Lu1/z;)V

    iput-object v0, v1, Ly1/f0;->n:Ly1/h;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Ly1/f0;->p:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lr1/p0;

    invoke-direct {v0}, Lr1/p0;-><init>()V

    iput-object v0, v1, Ly1/f0;->k:Lr1/p0;

    .line 53
    new-instance v0, Lr1/o0;

    invoke-direct {v0}, Lr1/o0;-><init>()V

    iput-object v0, v1, Ly1/f0;->l:Lr1/o0;

    .line 54
    iget-object v0, v2, Lh2/q;->a:Ly1/f0;

    if-nez v0, :cond_2

    const/4 v12, 0x1

    :cond_2
    invoke-static {v12}, La9/o;->t(Z)V

    .line 55
    iput-object v1, v2, Lh2/q;->a:Ly1/f0;

    .line 56
    iput-object v4, v2, Lh2/q;->b:Li2/c;

    .line 57
    iput-boolean v13, v1, Ly1/f0;->P0:Z

    const/4 v0, 0x0

    move-object/from16 v2, p15

    .line 58
    invoke-virtual {v6, v2, v0}, Lu1/z;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lu1/b0;

    move-result-object v0

    iput-object v0, v1, Ly1/f0;->z:Lu1/b0;

    .line 59
    new-instance v2, Ly1/n0;

    new-instance v3, Ly1/y;

    invoke-direct {v3, v1}, Ly1/y;-><init>(Ly1/f0;)V

    invoke-direct {v2, v5, v0, v3, v8}, Ly1/n0;-><init>(Lz1/e;Lu1/b0;Ly1/y;Ly1/n;)V

    iput-object v2, v1, Ly1/f0;->s:Ly1/n0;

    .line 60
    new-instance v2, Lm7/l;

    invoke-direct {v2, v1, v5, v0, v7}, Lm7/l;-><init>(Ly1/f0;Lz1/e;Lu1/b0;Lz1/i;)V

    iput-object v2, v1, Ly1/f0;->t:Lm7/l;

    .line 61
    new-instance v0, Lha/u3;

    invoke-direct {v0}, Lha/u3;-><init>()V

    iput-object v0, v1, Ly1/f0;->i:Lha/u3;

    .line 62
    invoke-virtual {v0}, Lha/u3;->f()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, v1, Ly1/f0;->j:Landroid/os/Looper;

    .line 63
    invoke-virtual {v6, v0, v1}, Lu1/z;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lu1/b0;

    move-result-object v2

    iput-object v2, v1, Ly1/f0;->h:Lu1/b0;

    .line 64
    new-instance v3, Ls1/b;

    move-object/from16 v4, p1

    invoke-direct {v3, v4, v0, v1}, Ls1/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Ly1/f0;)V

    iput-object v3, v1, Ly1/f0;->B:Ls1/b;

    .line 65
    new-instance v0, Ly1/z;

    move-object/from16 v3, p20

    invoke-direct {v0, v1, v3}, Ly1/z;-><init>(Ly1/f0;Landroidx/media3/exoplayer/video/x;)V

    const/16 v3, 0x23

    .line 66
    invoke-virtual {v2, v3, v0}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lu1/a0;->b()V

    .line 68
    new-instance v0, Ly1/y;

    invoke-direct {v0, v1}, Ly1/y;-><init>(Ly1/f0;)V

    const/16 v3, 0x27

    .line 69
    invoke-virtual {v2, v3, v0}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lu1/a0;->b()V

    return-void
.end method

.method public static S(Lr1/q0;Ly1/e0;ZIZLr1/p0;Lr1/o0;)Landroid/util/Pair;
    .locals 13

    .line 1
    move-object v7, p0

    .line 2
    move-object v0, p1

    .line 3
    move-object/from16 v8, p6

    .line 4
    .line 5
    iget-object v1, v0, Ly1/e0;->a:Lr1/q0;

    .line 6
    .line 7
    invoke-virtual {p0}, Lr1/q0;->p()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v9, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    return-object v9

    .line 15
    :cond_0
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    move-object v10, v7

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v10, v1

    .line 24
    :goto_0
    :try_start_0
    iget v4, v0, Ly1/e0;->b:I

    .line 25
    .line 26
    iget-wide v5, v0, Ly1/e0;->c:J

    .line 27
    .line 28
    move-object v1, v10

    .line 29
    move-object/from16 v2, p5

    .line 30
    .line 31
    move-object/from16 v3, p6

    .line 32
    .line 33
    invoke-virtual/range {v1 .. v6}, Lr1/q0;->i(Lr1/p0;Lr1/o0;IJ)Landroid/util/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-virtual {p0, v10}, Lr1/q0;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v11, -0x1

    .line 51
    if-eq v2, v11, :cond_4

    .line 52
    .line 53
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {v10, v2, v8}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-boolean v2, v2, Lr1/o0;->f:Z

    .line 60
    .line 61
    if-eqz v2, :cond_3

    .line 62
    .line 63
    iget v2, v8, Lr1/o0;->c:I

    .line 64
    .line 65
    const-wide/16 v3, 0x0

    .line 66
    .line 67
    move-object/from16 v12, p5

    .line 68
    .line 69
    invoke-virtual {v10, v2, v12, v3, v4}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget v2, v2, Lr1/p0;->m:I

    .line 74
    .line 75
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 76
    .line 77
    invoke-virtual {v10, v3}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-ne v2, v3, :cond_3

    .line 82
    .line 83
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {p0, v1, v8}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget v3, v1, Lr1/o0;->c:I

    .line 90
    .line 91
    iget-wide v4, v0, Ly1/e0;->c:J

    .line 92
    .line 93
    move-object v0, p0

    .line 94
    move-object/from16 v1, p5

    .line 95
    .line 96
    move-object/from16 v2, p6

    .line 97
    .line 98
    invoke-virtual/range {v0 .. v5}, Lr1/q0;->i(Lr1/p0;Lr1/o0;IJ)Landroid/util/Pair;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    :cond_3
    return-object v1

    .line 103
    :cond_4
    move-object/from16 v12, p5

    .line 104
    .line 105
    if-eqz p2, :cond_5

    .line 106
    .line 107
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 108
    .line 109
    move-object/from16 v0, p5

    .line 110
    .line 111
    move-object/from16 v1, p6

    .line 112
    .line 113
    move/from16 v2, p3

    .line 114
    .line 115
    move/from16 v3, p4

    .line 116
    .line 117
    move-object v5, v10

    .line 118
    move-object v6, p0

    .line 119
    invoke-static/range {v0 .. v6}, Ly1/f0;->T(Lr1/p0;Lr1/o0;IZLjava/lang/Object;Lr1/q0;Lr1/q0;)I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eq v3, v11, :cond_5

    .line 124
    .line 125
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    move-object v0, p0

    .line 131
    move-object/from16 v1, p5

    .line 132
    .line 133
    move-object/from16 v2, p6

    .line 134
    .line 135
    invoke-virtual/range {v0 .. v5}, Lr1/q0;->i(Lr1/p0;Lr1/o0;IJ)Landroid/util/Pair;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    return-object v0

    .line 140
    :catch_0
    :cond_5
    return-object v9
.end method

.method public static T(Lr1/p0;Lr1/o0;IZLjava/lang/Object;Lr1/q0;Lr1/q0;)I
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    move-object/from16 v0, p4

    .line 5
    .line 6
    move-object/from16 v8, p5

    .line 7
    .line 8
    move-object/from16 v9, p6

    .line 9
    .line 10
    invoke-virtual {v8, v0, v7}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget v1, v1, Lr1/o0;->c:I

    .line 15
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    .line 18
    invoke-virtual {v8, v1, p0, v2, v3}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v1, v1, Lr1/p0;->a:Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    :goto_0
    invoke-virtual/range {p6 .. p6}, Lr1/q0;->o()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-ge v4, v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v9, v4, p0, v2, v3}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    iget-object v5, v5, Lr1/p0;->a:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    return v4

    .line 45
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v8, v0}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual/range {p5 .. p5}, Lr1/q0;->h()I

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    const/4 v12, -0x1

    .line 57
    move v1, v0

    .line 58
    const/4 v13, 0x0

    .line 59
    const/4 v14, -0x1

    .line 60
    :goto_1
    if-ge v13, v11, :cond_3

    .line 61
    .line 62
    if-ne v14, v12, :cond_3

    .line 63
    .line 64
    move-object/from16 v0, p5

    .line 65
    .line 66
    move-object/from16 v2, p1

    .line 67
    .line 68
    move-object v3, p0

    .line 69
    move/from16 v4, p2

    .line 70
    .line 71
    move/from16 v5, p3

    .line 72
    .line 73
    invoke-virtual/range {v0 .. v5}, Lr1/q0;->d(ILr1/o0;Lr1/p0;IZ)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-ne v1, v12, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    invoke-virtual {v8, v1}, Lr1/q0;->l(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v9, v0}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    add-int/lit8 v13, v13, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    :goto_2
    if-ne v14, v12, :cond_4

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_4
    invoke-virtual {v9, v14, v7, v10}, Lr1/q0;->f(ILr1/o0;Z)Lr1/o0;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget v12, v0, Lr1/o0;->c:I

    .line 99
    .line 100
    :goto_3
    return v12
.end method

.method public static z(Ly1/l0;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Ly1/l0;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iget-boolean v2, p0, Ly1/l0;->e:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-interface {v1}, Lf2/a0;->g()V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v2, p0, Ly1/l0;->c:[Lf2/c1;

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    if-ge v4, v3, :cond_2

    .line 19
    .line 20
    aget-object v5, v2, v4

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    invoke-interface {v5}, Lf2/c1;->j()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    :goto_1
    iget-boolean p0, p0, Ly1/l0;->e:Z

    .line 31
    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    const-wide/16 v1, 0x0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    invoke-interface {v1}, Lf2/d1;->c()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    :goto_2
    const-wide/high16 v3, -0x8000000000000000L

    .line 42
    .line 43
    cmp-long p0, v1, v3

    .line 44
    .line 45
    if-eqz p0, :cond_4

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    :catch_0
    :cond_4
    return v0
.end method


# virtual methods
.method public final A(ILf2/c0;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 2
    .line 3
    iget-object v1, v0, Ly1/n0;->k:Ly1/l0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_6

    .line 7
    .line 8
    iget-object v1, v1, Ly1/l0;->g:Ly1/m0;

    .line 9
    .line 10
    iget-object v1, v1, Ly1/m0;->a:Lf2/c0;

    .line 11
    .line 12
    invoke-virtual {v1, p2}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    goto :goto_4

    .line 19
    :cond_0
    iget-object p2, p0, Ly1/f0;->a:[Lh4/m0;

    .line 20
    .line 21
    aget-object p1, p2, p1

    .line 22
    .line 23
    iget-object p2, v0, Ly1/n0;->k:Ly1/l0;

    .line 24
    .line 25
    iget v0, p1, Lh4/m0;->b:I

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 38
    :goto_1
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lh4/m0;->d(Ly1/l0;)Ly1/a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p1, Lh4/m0;->e:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Ly1/a;

    .line 47
    .line 48
    if-ne v0, v1, :cond_3

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    const/4 v0, 0x0

    .line 53
    :goto_2
    iget v1, p1, Lh4/m0;->b:I

    .line 54
    .line 55
    const/4 v4, 0x3

    .line 56
    if-ne v1, v4, :cond_4

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lh4/m0;->d(Ly1/l0;)Ly1/a;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iget-object p1, p1, Lh4/m0;->f:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p1, Ly1/a;

    .line 65
    .line 66
    if-ne p2, p1, :cond_4

    .line 67
    .line 68
    const/4 p1, 0x1

    .line 69
    goto :goto_3

    .line 70
    :cond_4
    const/4 p1, 0x0

    .line 71
    :goto_3
    if-nez v0, :cond_5

    .line 72
    .line 73
    if-eqz p1, :cond_6

    .line 74
    .line 75
    :cond_5
    const/4 v2, 0x1

    .line 76
    :cond_6
    :goto_4
    return v2
.end method

.method public final A0(IIIZ)V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p4, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p4, 0x0

    .line 11
    :goto_0
    const/4 v3, 0x2

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    const/4 p3, 0x2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    if-ne p3, v3, :cond_2

    .line 17
    .line 18
    const/4 p3, 0x1

    .line 19
    :cond_2
    :goto_1
    iget-boolean v0, p0, Ly1/f0;->F:Z

    .line 20
    .line 21
    if-nez p1, :cond_3

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    goto :goto_2

    .line 25
    :cond_3
    if-ne p2, v1, :cond_5

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    const/4 p1, 0x4

    .line 30
    const/4 p2, 0x4

    .line 31
    goto :goto_2

    .line 32
    :cond_4
    const/4 p2, 0x0

    .line 33
    :cond_5
    :goto_2
    iget-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 34
    .line 35
    iget-boolean v0, p1, Ly1/v0;->l:Z

    .line 36
    .line 37
    if-ne v0, p4, :cond_6

    .line 38
    .line 39
    iget v0, p1, Ly1/v0;->n:I

    .line 40
    .line 41
    if-ne v0, p2, :cond_6

    .line 42
    .line 43
    iget v0, p1, Ly1/v0;->m:I

    .line 44
    .line 45
    if-ne v0, p3, :cond_6

    .line 46
    .line 47
    return-void

    .line 48
    :cond_6
    invoke-virtual {p1, p3, p2, p4}, Ly1/v0;->e(IIZ)Ly1/v0;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 53
    .line 54
    invoke-virtual {p0, v2, v2}, Ly1/f0;->D0(ZZ)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Ly1/f0;->s:Ly1/n0;

    .line 58
    .line 59
    iget-object p2, p1, Ly1/n0;->i:Ly1/l0;

    .line 60
    .line 61
    :goto_3
    if-eqz p2, :cond_9

    .line 62
    .line 63
    iget-object p3, p2, Ly1/l0;->o:Lh2/r;

    .line 64
    .line 65
    iget-object p3, p3, Lh2/r;->c:[Lh2/p;

    .line 66
    .line 67
    array-length v0, p3

    .line 68
    const/4 v4, 0x0

    .line 69
    :goto_4
    if-ge v4, v0, :cond_8

    .line 70
    .line 71
    aget-object v5, p3, v4

    .line 72
    .line 73
    if-eqz v5, :cond_7

    .line 74
    .line 75
    invoke-interface {v5, p4}, Lh2/p;->b(Z)V

    .line 76
    .line 77
    .line 78
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_8
    iget-object p2, p2, Ly1/l0;->m:Ly1/l0;

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_9
    invoke-virtual {p0}, Ly1/f0;->r0()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_b

    .line 89
    .line 90
    invoke-virtual {p0}, Ly1/f0;->v0()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Ly1/f0;->B0()V

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Ly1/f0;->K:Ly1/v0;

    .line 97
    .line 98
    iget-boolean p3, p2, Ly1/v0;->p:Z

    .line 99
    .line 100
    if-eqz p3, :cond_a

    .line 101
    .line 102
    invoke-virtual {p2, v2}, Ly1/v0;->i(Z)Ly1/v0;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    iput-object p2, p0, Ly1/f0;->K:Ly1/v0;

    .line 107
    .line 108
    :cond_a
    iget-wide p2, p0, Ly1/f0;->M0:J

    .line 109
    .line 110
    invoke-virtual {p1, p2, p3}, Ly1/n0;->m(J)V

    .line 111
    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_b
    iget-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 115
    .line 116
    iget p1, p1, Ly1/v0;->e:I

    .line 117
    .line 118
    const/4 p2, 0x3

    .line 119
    iget-object p3, p0, Ly1/f0;->h:Lu1/b0;

    .line 120
    .line 121
    if-ne p1, p2, :cond_c

    .line 122
    .line 123
    iget-object p1, p0, Ly1/f0;->n:Ly1/h;

    .line 124
    .line 125
    iput-boolean v1, p1, Ly1/h;->f:Z

    .line 126
    .line 127
    iget-object p1, p1, Ly1/h;->a:Lba/n;

    .line 128
    .line 129
    invoke-virtual {p1}, Lba/n;->f()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Ly1/f0;->t0()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, v3}, Lu1/b0;->f(I)Z

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_c
    if-ne p1, v3, :cond_d

    .line 140
    .line 141
    invoke-virtual {p3, v3}, Lu1/b0;->f(I)Z

    .line 142
    .line 143
    .line 144
    :cond_d
    :goto_5
    return-void
.end method

.method public final B()Z
    .locals 5

    .line 1
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 2
    .line 3
    iget-object v0, v0, Ly1/n0;->i:Ly1/l0;

    .line 4
    .line 5
    iget-object v1, v0, Ly1/l0;->g:Ly1/m0;

    .line 6
    .line 7
    iget-wide v1, v1, Ly1/m0;->f:J

    .line 8
    .line 9
    iget-boolean v0, v0, Ly1/l0;->e:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v0, v1, v3

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Ly1/f0;->K:Ly1/v0;

    .line 23
    .line 24
    iget-wide v3, v0, Ly1/v0;->s:J

    .line 25
    .line 26
    cmp-long v0, v3, v1

    .line 27
    .line 28
    if-ltz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Ly1/f0;->r0()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    :cond_0
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0
.end method

.method public final B0()V
    .locals 24

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    const/4 v11, 0x3

    .line 4
    const/4 v12, 0x2

    .line 5
    const/4 v13, 0x0

    .line 6
    const/4 v14, 0x1

    .line 7
    iget-object v0, v10, Ly1/f0;->s:Ly1/n0;

    .line 8
    .line 9
    iget-object v0, v0, Ly1/n0;->i:Ly1/l0;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-boolean v1, v0, Ly1/l0;->e:Z

    .line 15
    .line 16
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, v0, Ly1/l0;->a:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-interface {v1}, Lf2/a0;->m()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    move-wide v6, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-wide v6, v15

    .line 32
    :goto_0
    const/16 v9, 0x10

    .line 33
    .line 34
    cmp-long v1, v6, v15

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    invoke-virtual {v0}, Ly1/l0;->g()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    iget-object v1, v10, Ly1/f0;->s:Ly1/n0;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ly1/n0;->n(Ly1/l0;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {v10, v13}, Ly1/f0;->u(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->C()V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {v10, v6, v7, v14}, Ly1/f0;->Q(JZ)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 59
    .line 60
    iget-wide v0, v0, Ly1/v0;->s:J

    .line 61
    .line 62
    cmp-long v2, v6, v0

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 67
    .line 68
    iget-object v1, v0, Ly1/v0;->b:Lf2/c0;

    .line 69
    .line 70
    iget-wide v4, v0, Ly1/v0;->c:J

    .line 71
    .line 72
    const/4 v8, 0x1

    .line 73
    const/16 v17, 0x5

    .line 74
    .line 75
    move-object/from16 v0, p0

    .line 76
    .line 77
    move-wide v2, v6

    .line 78
    const/16 v15, 0x10

    .line 79
    .line 80
    move/from16 v9, v17

    .line 81
    .line 82
    invoke-virtual/range {v0 .. v9}, Ly1/f0;->y(Lf2/c0;JJJZI)Ly1/v0;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 87
    .line 88
    goto/16 :goto_7

    .line 89
    .line 90
    :cond_3
    const/16 v15, 0x10

    .line 91
    .line 92
    goto/16 :goto_7

    .line 93
    .line 94
    :cond_4
    const/16 v15, 0x10

    .line 95
    .line 96
    iget-object v1, v10, Ly1/f0;->n:Ly1/h;

    .line 97
    .line 98
    iget-object v2, v10, Ly1/f0;->s:Ly1/n0;

    .line 99
    .line 100
    iget-object v2, v2, Ly1/n0;->j:Ly1/l0;

    .line 101
    .line 102
    if-eq v0, v2, :cond_5

    .line 103
    .line 104
    const/4 v2, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_5
    const/4 v2, 0x0

    .line 107
    :goto_1
    iget-object v3, v1, Ly1/h;->c:Ly1/a;

    .line 108
    .line 109
    iget-object v4, v1, Ly1/h;->a:Lba/n;

    .line 110
    .line 111
    if-eqz v3, :cond_a

    .line 112
    .line 113
    invoke-virtual {v3}, Ly1/a;->l()Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-nez v3, :cond_a

    .line 118
    .line 119
    if-eqz v2, :cond_6

    .line 120
    .line 121
    iget-object v3, v1, Ly1/h;->c:Ly1/a;

    .line 122
    .line 123
    iget v3, v3, Ly1/a;->h:I

    .line 124
    .line 125
    if-ne v3, v12, :cond_a

    .line 126
    .line 127
    :cond_6
    iget-object v3, v1, Ly1/h;->c:Ly1/a;

    .line 128
    .line 129
    invoke-virtual {v3}, Ly1/a;->m()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_7

    .line 134
    .line 135
    if-nez v2, :cond_a

    .line 136
    .line 137
    iget-object v2, v1, Ly1/h;->c:Ly1/a;

    .line 138
    .line 139
    invoke-virtual {v2}, Ly1/a;->k()Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_7

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_7
    iget-object v2, v1, Ly1/h;->d:Ly1/k0;

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    .line 150
    .line 151
    invoke-interface {v2}, Ly1/k0;->a()J

    .line 152
    .line 153
    .line 154
    move-result-wide v5

    .line 155
    iget-boolean v3, v1, Ly1/h;->e:Z

    .line 156
    .line 157
    if-eqz v3, :cond_9

    .line 158
    .line 159
    invoke-virtual {v4}, Lba/n;->a()J

    .line 160
    .line 161
    .line 162
    move-result-wide v7

    .line 163
    cmp-long v3, v5, v7

    .line 164
    .line 165
    if-gez v3, :cond_8

    .line 166
    .line 167
    iget-boolean v2, v4, Lba/n;->a:Z

    .line 168
    .line 169
    if-eqz v2, :cond_b

    .line 170
    .line 171
    invoke-virtual {v4}, Lba/n;->a()J

    .line 172
    .line 173
    .line 174
    move-result-wide v2

    .line 175
    invoke-virtual {v4, v2, v3}, Lba/n;->d(J)V

    .line 176
    .line 177
    .line 178
    iput-boolean v13, v4, Lba/n;->a:Z

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_8
    iput-boolean v13, v1, Ly1/h;->e:Z

    .line 182
    .line 183
    iget-boolean v3, v1, Ly1/h;->f:Z

    .line 184
    .line 185
    if-eqz v3, :cond_9

    .line 186
    .line 187
    invoke-virtual {v4}, Lba/n;->f()V

    .line 188
    .line 189
    .line 190
    :cond_9
    invoke-virtual {v4, v5, v6}, Lba/n;->d(J)V

    .line 191
    .line 192
    .line 193
    invoke-interface {v2}, Ly1/k0;->c()Lr1/h0;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    iget-object v3, v4, Lba/n;->e:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v3, Lr1/h0;

    .line 200
    .line 201
    invoke-virtual {v2, v3}, Lr1/h0;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-nez v3, :cond_b

    .line 206
    .line 207
    invoke-virtual {v4, v2}, Lba/n;->e(Lr1/h0;)V

    .line 208
    .line 209
    .line 210
    iget-object v3, v1, Ly1/h;->b:Ly1/f0;

    .line 211
    .line 212
    iget-object v3, v3, Ly1/f0;->h:Lu1/b0;

    .line 213
    .line 214
    invoke-virtual {v3, v15, v2}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v2}, Lu1/a0;->b()V

    .line 219
    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_a
    :goto_2
    iput-boolean v14, v1, Ly1/h;->e:Z

    .line 223
    .line 224
    iget-boolean v2, v1, Ly1/h;->f:Z

    .line 225
    .line 226
    if-eqz v2, :cond_b

    .line 227
    .line 228
    invoke-virtual {v4}, Lba/n;->f()V

    .line 229
    .line 230
    .line 231
    :cond_b
    :goto_3
    invoke-virtual {v1}, Ly1/h;->a()J

    .line 232
    .line 233
    .line 234
    move-result-wide v1

    .line 235
    iput-wide v1, v10, Ly1/f0;->M0:J

    .line 236
    .line 237
    iget-wide v3, v0, Ly1/l0;->p:J

    .line 238
    .line 239
    sub-long v6, v1, v3

    .line 240
    .line 241
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 242
    .line 243
    iget-wide v0, v0, Ly1/v0;->s:J

    .line 244
    .line 245
    iget-object v0, v10, Ly1/f0;->p:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-nez v0, :cond_12

    .line 252
    .line 253
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 254
    .line 255
    iget-object v0, v0, Ly1/v0;->b:Lf2/c0;

    .line 256
    .line 257
    invoke-virtual {v0}, Lf2/c0;->b()Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_c

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_c
    iget-boolean v0, v10, Ly1/f0;->P0:Z

    .line 265
    .line 266
    if-eqz v0, :cond_d

    .line 267
    .line 268
    iput-boolean v13, v10, Ly1/f0;->P0:Z

    .line 269
    .line 270
    :cond_d
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 271
    .line 272
    iget-object v1, v0, Ly1/v0;->a:Lr1/q0;

    .line 273
    .line 274
    iget-object v0, v0, Ly1/v0;->b:Lf2/c0;

    .line 275
    .line 276
    iget-object v0, v0, Lf2/c0;->a:Ljava/lang/Object;

    .line 277
    .line 278
    invoke-virtual {v1, v0}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 279
    .line 280
    .line 281
    iget v0, v10, Ly1/f0;->O0:I

    .line 282
    .line 283
    iget-object v1, v10, Ly1/f0;->p:Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-lez v0, :cond_f

    .line 294
    .line 295
    iget-object v1, v10, Ly1/f0;->p:Ljava/util/ArrayList;

    .line 296
    .line 297
    add-int/lit8 v2, v0, -0x1

    .line 298
    .line 299
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    if-nez v1, :cond_e

    .line 304
    .line 305
    goto :goto_4

    .line 306
    :cond_e
    new-instance v0, Ljava/lang/ClassCastException;

    .line 307
    .line 308
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 309
    .line 310
    .line 311
    throw v0

    .line 312
    :cond_f
    :goto_4
    iget-object v1, v10, Ly1/f0;->p:Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-ge v0, v1, :cond_11

    .line 319
    .line 320
    iget-object v1, v10, Ly1/f0;->p:Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    if-nez v1, :cond_10

    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_10
    new-instance v0, Ljava/lang/ClassCastException;

    .line 330
    .line 331
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 332
    .line 333
    .line 334
    throw v0

    .line 335
    :cond_11
    :goto_5
    iput v0, v10, Ly1/f0;->O0:I

    .line 336
    .line 337
    :cond_12
    :goto_6
    iget-object v0, v10, Ly1/f0;->n:Ly1/h;

    .line 338
    .line 339
    invoke-virtual {v0}, Ly1/h;->b()Z

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    if-eqz v0, :cond_13

    .line 344
    .line 345
    iget-object v0, v10, Ly1/f0;->L:Ls3/t;

    .line 346
    .line 347
    iget-boolean v0, v0, Ls3/t;->c:Z

    .line 348
    .line 349
    xor-int/lit8 v8, v0, 0x1

    .line 350
    .line 351
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 352
    .line 353
    iget-object v1, v0, Ly1/v0;->b:Lf2/c0;

    .line 354
    .line 355
    iget-wide v4, v0, Ly1/v0;->c:J

    .line 356
    .line 357
    const/4 v9, 0x6

    .line 358
    move-object/from16 v0, p0

    .line 359
    .line 360
    move-wide v2, v6

    .line 361
    invoke-virtual/range {v0 .. v9}, Ly1/f0;->y(Lf2/c0;JJJZI)Ly1/v0;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    iput-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 366
    .line 367
    goto :goto_7

    .line 368
    :cond_13
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 369
    .line 370
    iput-wide v6, v0, Ly1/v0;->s:J

    .line 371
    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 373
    .line 374
    .line 375
    move-result-wide v1

    .line 376
    iput-wide v1, v0, Ly1/v0;->t:J

    .line 377
    .line 378
    :goto_7
    iget-object v0, v10, Ly1/f0;->s:Ly1/n0;

    .line 379
    .line 380
    iget-object v0, v0, Ly1/n0;->l:Ly1/l0;

    .line 381
    .line 382
    iget-object v1, v10, Ly1/f0;->K:Ly1/v0;

    .line 383
    .line 384
    invoke-virtual {v0}, Ly1/l0;->d()J

    .line 385
    .line 386
    .line 387
    move-result-wide v2

    .line 388
    iput-wide v2, v1, Ly1/v0;->q:J

    .line 389
    .line 390
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 391
    .line 392
    iget-wide v1, v0, Ly1/v0;->q:J

    .line 393
    .line 394
    invoke-virtual {v10, v1, v2}, Ly1/f0;->p(J)J

    .line 395
    .line 396
    .line 397
    move-result-wide v1

    .line 398
    iput-wide v1, v0, Ly1/v0;->r:J

    .line 399
    .line 400
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 401
    .line 402
    iget-boolean v1, v0, Ly1/v0;->l:Z

    .line 403
    .line 404
    if-eqz v1, :cond_1c

    .line 405
    .line 406
    iget v1, v0, Ly1/v0;->e:I

    .line 407
    .line 408
    if-ne v1, v11, :cond_1c

    .line 409
    .line 410
    iget-object v1, v0, Ly1/v0;->a:Lr1/q0;

    .line 411
    .line 412
    iget-object v0, v0, Ly1/v0;->b:Lf2/c0;

    .line 413
    .line 414
    invoke-virtual {v10, v1, v0}, Ly1/f0;->s0(Lr1/q0;Lf2/c0;)Z

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-eqz v0, :cond_1c

    .line 419
    .line 420
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 421
    .line 422
    iget-object v1, v0, Ly1/v0;->o:Lr1/h0;

    .line 423
    .line 424
    iget v1, v1, Lr1/h0;->a:F

    .line 425
    .line 426
    const/high16 v2, 0x3f800000    # 1.0f

    .line 427
    .line 428
    cmpl-float v1, v1, v2

    .line 429
    .line 430
    if-nez v1, :cond_1c

    .line 431
    .line 432
    iget-object v1, v10, Ly1/f0;->v:Ly1/e;

    .line 433
    .line 434
    iget-object v3, v0, Ly1/v0;->a:Lr1/q0;

    .line 435
    .line 436
    iget-object v4, v0, Ly1/v0;->b:Lf2/c0;

    .line 437
    .line 438
    iget-object v4, v4, Lf2/c0;->a:Ljava/lang/Object;

    .line 439
    .line 440
    iget-wide v5, v0, Ly1/v0;->s:J

    .line 441
    .line 442
    invoke-virtual {v10, v3, v4, v5, v6}, Ly1/f0;->m(Lr1/q0;Ljava/lang/Object;J)J

    .line 443
    .line 444
    .line 445
    move-result-wide v3

    .line 446
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 447
    .line 448
    iget-wide v5, v0, Ly1/v0;->r:J

    .line 449
    .line 450
    iget-wide v7, v1, Ly1/e;->c:J

    .line 451
    .line 452
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    cmp-long v0, v7, v16

    .line 458
    .line 459
    if-nez v0, :cond_14

    .line 460
    .line 461
    :goto_8
    move-object v0, v10

    .line 462
    goto/16 :goto_d

    .line 463
    .line 464
    :cond_14
    sub-long v5, v3, v5

    .line 465
    .line 466
    iget-wide v7, v1, Ly1/e;->m:J

    .line 467
    .line 468
    cmp-long v0, v7, v16

    .line 469
    .line 470
    if-nez v0, :cond_15

    .line 471
    .line 472
    iput-wide v5, v1, Ly1/e;->m:J

    .line 473
    .line 474
    const-wide/16 v5, 0x0

    .line 475
    .line 476
    iput-wide v5, v1, Ly1/e;->n:J

    .line 477
    .line 478
    goto :goto_9

    .line 479
    :cond_15
    long-to-float v0, v7

    .line 480
    const v7, 0x3f7fbe77    # 0.999f

    .line 481
    .line 482
    .line 483
    mul-float v0, v0, v7

    .line 484
    .line 485
    long-to-float v8, v5

    .line 486
    const v9, 0x3a831200    # 9.999871E-4f

    .line 487
    .line 488
    .line 489
    mul-float v8, v8, v9

    .line 490
    .line 491
    add-float/2addr v8, v0

    .line 492
    float-to-long v14, v8

    .line 493
    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 494
    .line 495
    .line 496
    move-result-wide v14

    .line 497
    iput-wide v14, v1, Ly1/e;->m:J

    .line 498
    .line 499
    sub-long/2addr v5, v14

    .line 500
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 501
    .line 502
    .line 503
    move-result-wide v5

    .line 504
    iget-wide v14, v1, Ly1/e;->n:J

    .line 505
    .line 506
    long-to-float v8, v14

    .line 507
    mul-float v7, v7, v8

    .line 508
    .line 509
    long-to-float v5, v5

    .line 510
    mul-float v9, v9, v5

    .line 511
    .line 512
    add-float/2addr v9, v7

    .line 513
    float-to-long v5, v9

    .line 514
    iput-wide v5, v1, Ly1/e;->n:J

    .line 515
    .line 516
    :goto_9
    iget-wide v5, v1, Ly1/e;->l:J

    .line 517
    .line 518
    const-wide/16 v7, 0x3e8

    .line 519
    .line 520
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    cmp-long v9, v5, v14

    .line 526
    .line 527
    if-eqz v9, :cond_16

    .line 528
    .line 529
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 530
    .line 531
    .line 532
    move-result-wide v5

    .line 533
    iget-wide v14, v1, Ly1/e;->l:J

    .line 534
    .line 535
    sub-long/2addr v5, v14

    .line 536
    cmp-long v9, v5, v7

    .line 537
    .line 538
    if-gez v9, :cond_16

    .line 539
    .line 540
    iget v2, v1, Ly1/e;->k:F

    .line 541
    .line 542
    goto :goto_8

    .line 543
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 544
    .line 545
    .line 546
    move-result-wide v5

    .line 547
    iput-wide v5, v1, Ly1/e;->l:J

    .line 548
    .line 549
    iget-wide v5, v1, Ly1/e;->m:J

    .line 550
    .line 551
    const-wide/16 v14, 0x3

    .line 552
    .line 553
    iget-wide v12, v1, Ly1/e;->n:J

    .line 554
    .line 555
    mul-long v12, v12, v14

    .line 556
    .line 557
    add-long v22, v12, v5

    .line 558
    .line 559
    iget-wide v5, v1, Ly1/e;->h:J

    .line 560
    .line 561
    const v12, 0x33d6bf95    # 1.0E-7f

    .line 562
    .line 563
    .line 564
    cmp-long v13, v5, v22

    .line 565
    .line 566
    if-lez v13, :cond_19

    .line 567
    .line 568
    invoke-static {v7, v8}, Lu1/f0;->G(J)J

    .line 569
    .line 570
    .line 571
    move-result-wide v5

    .line 572
    iget v7, v1, Ly1/e;->k:F

    .line 573
    .line 574
    sub-float/2addr v7, v2

    .line 575
    long-to-float v5, v5

    .line 576
    mul-float v7, v7, v5

    .line 577
    .line 578
    float-to-long v6, v7

    .line 579
    iget v8, v1, Ly1/e;->i:F

    .line 580
    .line 581
    sub-float/2addr v8, v2

    .line 582
    mul-float v8, v8, v5

    .line 583
    .line 584
    float-to-long v13, v8

    .line 585
    add-long/2addr v6, v13

    .line 586
    iget-wide v13, v1, Ly1/e;->e:J

    .line 587
    .line 588
    iget-wide v9, v1, Ly1/e;->h:J

    .line 589
    .line 590
    sub-long/2addr v9, v6

    .line 591
    new-array v6, v11, [J

    .line 592
    .line 593
    const/4 v5, 0x0

    .line 594
    aput-wide v22, v6, v5

    .line 595
    .line 596
    const/4 v0, 0x1

    .line 597
    aput-wide v13, v6, v0

    .line 598
    .line 599
    const/4 v7, 0x2

    .line 600
    aput-wide v9, v6, v7

    .line 601
    .line 602
    aget-wide v7, v6, v5

    .line 603
    .line 604
    const/4 v5, 0x1

    .line 605
    :goto_a
    if-ge v5, v11, :cond_18

    .line 606
    .line 607
    aget-wide v13, v6, v5

    .line 608
    .line 609
    cmp-long v10, v13, v7

    .line 610
    .line 611
    if-lez v10, :cond_17

    .line 612
    .line 613
    move-wide v7, v13

    .line 614
    :cond_17
    add-int/2addr v5, v0

    .line 615
    goto :goto_a

    .line 616
    :cond_18
    iput-wide v7, v1, Ly1/e;->h:J

    .line 617
    .line 618
    goto :goto_b

    .line 619
    :cond_19
    iget v0, v1, Ly1/e;->k:F

    .line 620
    .line 621
    sub-float/2addr v0, v2

    .line 622
    const/4 v5, 0x0

    .line 623
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    div-float/2addr v0, v12

    .line 628
    float-to-long v5, v0

    .line 629
    sub-long v18, v3, v5

    .line 630
    .line 631
    iget-wide v5, v1, Ly1/e;->h:J

    .line 632
    .line 633
    move-wide/from16 v20, v5

    .line 634
    .line 635
    invoke-static/range {v18 .. v23}, Lu1/f0;->h(JJJ)J

    .line 636
    .line 637
    .line 638
    move-result-wide v5

    .line 639
    iput-wide v5, v1, Ly1/e;->h:J

    .line 640
    .line 641
    iget-wide v7, v1, Ly1/e;->g:J

    .line 642
    .line 643
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    cmp-long v0, v7, v10

    .line 649
    .line 650
    if-eqz v0, :cond_1a

    .line 651
    .line 652
    cmp-long v0, v5, v7

    .line 653
    .line 654
    if-lez v0, :cond_1a

    .line 655
    .line 656
    iput-wide v7, v1, Ly1/e;->h:J

    .line 657
    .line 658
    :cond_1a
    :goto_b
    iget-wide v5, v1, Ly1/e;->h:J

    .line 659
    .line 660
    sub-long/2addr v3, v5

    .line 661
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 662
    .line 663
    .line 664
    move-result-wide v5

    .line 665
    iget-wide v7, v1, Ly1/e;->a:J

    .line 666
    .line 667
    cmp-long v0, v5, v7

    .line 668
    .line 669
    if-gez v0, :cond_1b

    .line 670
    .line 671
    iput v2, v1, Ly1/e;->k:F

    .line 672
    .line 673
    goto :goto_c

    .line 674
    :cond_1b
    long-to-float v0, v3

    .line 675
    mul-float v12, v12, v0

    .line 676
    .line 677
    add-float/2addr v12, v2

    .line 678
    iget v0, v1, Ly1/e;->j:F

    .line 679
    .line 680
    iget v2, v1, Ly1/e;->i:F

    .line 681
    .line 682
    invoke-static {v12, v0, v2}, Lu1/f0;->f(FFF)F

    .line 683
    .line 684
    .line 685
    move-result v0

    .line 686
    iput v0, v1, Ly1/e;->k:F

    .line 687
    .line 688
    :goto_c
    iget v2, v1, Ly1/e;->k:F

    .line 689
    .line 690
    move-object/from16 v0, p0

    .line 691
    .line 692
    :goto_d
    iget-object v1, v0, Ly1/f0;->n:Ly1/h;

    .line 693
    .line 694
    invoke-virtual {v1}, Ly1/h;->c()Lr1/h0;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    iget v1, v1, Lr1/h0;->a:F

    .line 699
    .line 700
    cmpl-float v1, v1, v2

    .line 701
    .line 702
    if-eqz v1, :cond_1d

    .line 703
    .line 704
    iget-object v1, v0, Ly1/f0;->K:Ly1/v0;

    .line 705
    .line 706
    iget-object v1, v1, Ly1/v0;->o:Lr1/h0;

    .line 707
    .line 708
    new-instance v3, Lr1/h0;

    .line 709
    .line 710
    iget v1, v1, Lr1/h0;->b:F

    .line 711
    .line 712
    invoke-direct {v3, v2, v1}, Lr1/h0;-><init>(FF)V

    .line 713
    .line 714
    .line 715
    iget-object v1, v0, Ly1/f0;->h:Lu1/b0;

    .line 716
    .line 717
    const/16 v2, 0x10

    .line 718
    .line 719
    invoke-virtual {v1, v2}, Lu1/b0;->e(I)V

    .line 720
    .line 721
    .line 722
    iget-object v1, v0, Ly1/f0;->n:Ly1/h;

    .line 723
    .line 724
    invoke-virtual {v1, v3}, Ly1/h;->e(Lr1/h0;)V

    .line 725
    .line 726
    .line 727
    iget-object v1, v0, Ly1/f0;->K:Ly1/v0;

    .line 728
    .line 729
    iget-object v1, v1, Ly1/v0;->o:Lr1/h0;

    .line 730
    .line 731
    iget-object v2, v0, Ly1/f0;->n:Ly1/h;

    .line 732
    .line 733
    invoke-virtual {v2}, Ly1/h;->c()Lr1/h0;

    .line 734
    .line 735
    .line 736
    move-result-object v2

    .line 737
    iget v2, v2, Lr1/h0;->a:F

    .line 738
    .line 739
    const/4 v3, 0x0

    .line 740
    invoke-virtual {v0, v1, v2, v3, v3}, Ly1/f0;->x(Lr1/h0;FZZ)V

    .line 741
    .line 742
    .line 743
    goto :goto_e

    .line 744
    :cond_1c
    move-object v0, v10

    .line 745
    :cond_1d
    :goto_e
    return-void
.end method

.method public final C()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ly1/f0;->s:Ly1/n0;

    .line 4
    .line 5
    iget-object v1, v1, Ly1/n0;->l:Ly1/l0;

    .line 6
    .line 7
    invoke-static {v1}, Ly1/f0;->z(Ly1/l0;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    iget-object v1, v0, Ly1/f0;->s:Ly1/n0;

    .line 24
    .line 25
    iget-object v1, v1, Ly1/n0;->l:Ly1/l0;

    .line 26
    .line 27
    iget-boolean v7, v1, Ly1/l0;->e:Z

    .line 28
    .line 29
    if-nez v7, :cond_1

    .line 30
    .line 31
    move-wide v7, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v7, v1, Ly1/l0;->a:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-interface {v7}, Lf2/d1;->c()J

    .line 36
    .line 37
    .line 38
    move-result-wide v7

    .line 39
    :goto_0
    invoke-virtual {v0, v7, v8}, Ly1/f0;->p(J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    iget-object v9, v0, Ly1/f0;->s:Ly1/n0;

    .line 44
    .line 45
    iget-object v9, v9, Ly1/n0;->i:Ly1/l0;

    .line 46
    .line 47
    iget-object v9, v0, Ly1/f0;->K:Ly1/v0;

    .line 48
    .line 49
    iget-object v9, v9, Ly1/v0;->a:Lr1/q0;

    .line 50
    .line 51
    iget-object v10, v1, Ly1/l0;->g:Ly1/m0;

    .line 52
    .line 53
    iget-object v10, v10, Ly1/m0;->a:Lf2/c0;

    .line 54
    .line 55
    invoke-virtual {v0, v9, v10}, Ly1/f0;->s0(Lr1/q0;Lf2/c0;)Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-eqz v9, :cond_2

    .line 60
    .line 61
    iget-object v9, v0, Ly1/f0;->v:Ly1/e;

    .line 62
    .line 63
    iget-wide v9, v9, Ly1/e;->h:J

    .line 64
    .line 65
    move-wide/from16 v17, v9

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move-wide/from16 v17, v2

    .line 69
    .line 70
    :goto_1
    new-instance v15, Ly1/g0;

    .line 71
    .line 72
    iget-object v10, v0, Ly1/f0;->x:Lz1/i;

    .line 73
    .line 74
    iget-object v9, v0, Ly1/f0;->K:Ly1/v0;

    .line 75
    .line 76
    iget-object v11, v9, Ly1/v0;->a:Lr1/q0;

    .line 77
    .line 78
    iget-object v1, v1, Ly1/l0;->g:Ly1/m0;

    .line 79
    .line 80
    iget-object v12, v1, Ly1/m0;->a:Lf2/c0;

    .line 81
    .line 82
    iget-object v1, v0, Ly1/f0;->n:Ly1/h;

    .line 83
    .line 84
    invoke-virtual {v1}, Ly1/h;->c()Lr1/h0;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget v1, v1, Lr1/h0;->a:F

    .line 89
    .line 90
    iget-object v9, v0, Ly1/f0;->K:Ly1/v0;

    .line 91
    .line 92
    iget-boolean v9, v9, Ly1/v0;->l:Z

    .line 93
    .line 94
    iget-boolean v13, v0, Ly1/f0;->P:Z

    .line 95
    .line 96
    move-object v9, v15

    .line 97
    move/from16 v16, v13

    .line 98
    .line 99
    move-wide v13, v7

    .line 100
    move-object v6, v15

    .line 101
    move v15, v1

    .line 102
    invoke-direct/range {v9 .. v18}, Ly1/g0;-><init>(Lz1/i;Lr1/q0;Lf2/c0;JFZJ)V

    .line 103
    .line 104
    .line 105
    iget-object v1, v0, Ly1/f0;->f:Ly1/h0;

    .line 106
    .line 107
    check-cast v1, Ly1/g;

    .line 108
    .line 109
    invoke-virtual {v1, v6}, Ly1/g;->b(Ly1/g0;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget-object v9, v0, Ly1/f0;->s:Ly1/n0;

    .line 114
    .line 115
    iget-object v9, v9, Ly1/n0;->i:Ly1/l0;

    .line 116
    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    iget-boolean v10, v9, Ly1/l0;->e:Z

    .line 120
    .line 121
    if-eqz v10, :cond_4

    .line 122
    .line 123
    const-wide/32 v10, 0x7a120

    .line 124
    .line 125
    .line 126
    cmp-long v12, v7, v10

    .line 127
    .line 128
    if-gez v12, :cond_4

    .line 129
    .line 130
    iget-wide v7, v0, Ly1/f0;->m:J

    .line 131
    .line 132
    cmp-long v10, v7, v4

    .line 133
    .line 134
    if-gtz v10, :cond_3

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    iget-object v1, v9, Ly1/l0;->a:Ljava/lang/Object;

    .line 138
    .line 139
    iget-object v7, v0, Ly1/f0;->K:Ly1/v0;

    .line 140
    .line 141
    iget-wide v7, v7, Ly1/v0;->s:J

    .line 142
    .line 143
    invoke-interface {v1, v7, v8}, Lf2/a0;->i(J)V

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Ly1/f0;->f:Ly1/h0;

    .line 147
    .line 148
    check-cast v1, Ly1/g;

    .line 149
    .line 150
    invoke-virtual {v1, v6}, Ly1/g;->b(Ly1/g0;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    :cond_4
    :goto_2
    iput-boolean v1, v0, Ly1/f0;->S:Z

    .line 155
    .line 156
    if-eqz v1, :cond_a

    .line 157
    .line 158
    iget-object v1, v0, Ly1/f0;->s:Ly1/n0;

    .line 159
    .line 160
    iget-object v1, v1, Ly1/n0;->l:Ly1/l0;

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    new-instance v6, Ly1/i0;

    .line 166
    .line 167
    invoke-direct {v6}, Ly1/i0;-><init>()V

    .line 168
    .line 169
    .line 170
    iget-wide v7, v0, Ly1/f0;->M0:J

    .line 171
    .line 172
    iget-wide v9, v1, Ly1/l0;->p:J

    .line 173
    .line 174
    sub-long/2addr v7, v9

    .line 175
    iput-wide v7, v6, Ly1/i0;->a:J

    .line 176
    .line 177
    iget-object v7, v0, Ly1/f0;->n:Ly1/h;

    .line 178
    .line 179
    invoke-virtual {v7}, Ly1/h;->c()Lr1/h0;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    iget v7, v7, Lr1/h0;->a:F

    .line 184
    .line 185
    const/4 v8, 0x0

    .line 186
    const/4 v9, 0x1

    .line 187
    cmpl-float v8, v7, v8

    .line 188
    .line 189
    if-gtz v8, :cond_6

    .line 190
    .line 191
    const v8, -0x800001

    .line 192
    .line 193
    .line 194
    cmpl-float v8, v7, v8

    .line 195
    .line 196
    if-nez v8, :cond_5

    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_5
    const/4 v8, 0x0

    .line 200
    goto :goto_4

    .line 201
    :cond_6
    :goto_3
    const/4 v8, 0x1

    .line 202
    :goto_4
    invoke-static {v8}, La9/o;->k(Z)V

    .line 203
    .line 204
    .line 205
    iput v7, v6, Ly1/i0;->b:F

    .line 206
    .line 207
    iget-wide v7, v0, Ly1/f0;->R:J

    .line 208
    .line 209
    cmp-long v10, v7, v4

    .line 210
    .line 211
    if-gez v10, :cond_8

    .line 212
    .line 213
    cmp-long v4, v7, v2

    .line 214
    .line 215
    if-nez v4, :cond_7

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_7
    const/4 v2, 0x0

    .line 219
    goto :goto_6

    .line 220
    :cond_8
    :goto_5
    const/4 v2, 0x1

    .line 221
    :goto_6
    invoke-static {v2}, La9/o;->k(Z)V

    .line 222
    .line 223
    .line 224
    iput-wide v7, v6, Ly1/i0;->c:J

    .line 225
    .line 226
    new-instance v2, Ly1/j0;

    .line 227
    .line 228
    invoke-direct {v2, v6}, Ly1/j0;-><init>(Ly1/i0;)V

    .line 229
    .line 230
    .line 231
    iget-object v3, v1, Ly1/l0;->m:Ly1/l0;

    .line 232
    .line 233
    if-nez v3, :cond_9

    .line 234
    .line 235
    const/4 v6, 0x1

    .line 236
    goto :goto_7

    .line 237
    :cond_9
    const/4 v6, 0x0

    .line 238
    :goto_7
    invoke-static {v6}, La9/o;->t(Z)V

    .line 239
    .line 240
    .line 241
    iget-object v1, v1, Ly1/l0;->a:Ljava/lang/Object;

    .line 242
    .line 243
    invoke-interface {v1, v2}, Lf2/d1;->a(Ly1/j0;)Z

    .line 244
    .line 245
    .line 246
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->w0()V

    .line 247
    .line 248
    .line 249
    return-void
.end method

.method public final C0(Lr1/q0;Lf2/c0;Lr1/q0;Lf2/c0;JZ)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Ly1/f0;->s0(Lr1/q0;Lf2/c0;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p2}, Lf2/c0;->b()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lr1/h0;->d:Lr1/h0;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 17
    .line 18
    iget-object p1, p1, Ly1/v0;->o:Lr1/h0;

    .line 19
    .line 20
    :goto_0
    iget-object p2, p0, Ly1/f0;->n:Ly1/h;

    .line 21
    .line 22
    invoke-virtual {p2}, Ly1/h;->c()Lr1/h0;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p3, p1}, Lr1/h0;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-nez p3, :cond_1

    .line 31
    .line 32
    iget-object p3, p0, Ly1/f0;->h:Lu1/b0;

    .line 33
    .line 34
    const/16 p4, 0x10

    .line 35
    .line 36
    invoke-virtual {p3, p4}, Lu1/b0;->e(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ly1/h;->e(Lr1/h0;)V

    .line 40
    .line 41
    .line 42
    iget-object p2, p0, Ly1/f0;->K:Ly1/v0;

    .line 43
    .line 44
    iget-object p2, p2, Ly1/v0;->o:Lr1/h0;

    .line 45
    .line 46
    iget p1, p1, Lr1/h0;->a:F

    .line 47
    .line 48
    const/4 p3, 0x0

    .line 49
    invoke-virtual {p0, p2, p1, p3, p3}, Ly1/f0;->x(Lr1/h0;FZZ)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void

    .line 53
    :cond_2
    iget-object p2, p2, Lf2/c0;->a:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object v0, p0, Ly1/f0;->l:Lr1/o0;

    .line 56
    .line 57
    invoke-virtual {p1, p2, v0}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget v1, v1, Lr1/o0;->c:I

    .line 62
    .line 63
    iget-object v2, p0, Ly1/f0;->k:Lr1/p0;

    .line 64
    .line 65
    invoke-virtual {p1, v1, v2}, Lr1/q0;->n(ILr1/p0;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v2, Lr1/p0;->i:Lr1/u;

    .line 69
    .line 70
    iget-object v3, p0, Ly1/f0;->v:Ly1/e;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    iget-wide v4, v1, Lr1/u;->a:J

    .line 76
    .line 77
    invoke-static {v4, v5}, Lu1/f0;->G(J)J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    iput-wide v4, v3, Ly1/e;->c:J

    .line 82
    .line 83
    iget-wide v4, v1, Lr1/u;->b:J

    .line 84
    .line 85
    invoke-static {v4, v5}, Lu1/f0;->G(J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    iput-wide v4, v3, Ly1/e;->f:J

    .line 90
    .line 91
    iget-wide v4, v1, Lr1/u;->c:J

    .line 92
    .line 93
    invoke-static {v4, v5}, Lu1/f0;->G(J)J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    iput-wide v4, v3, Ly1/e;->g:J

    .line 98
    .line 99
    iget v4, v1, Lr1/u;->d:F

    .line 100
    .line 101
    const v5, -0x800001

    .line 102
    .line 103
    .line 104
    cmpl-float v6, v4, v5

    .line 105
    .line 106
    if-eqz v6, :cond_3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const v4, 0x3f7851ec    # 0.97f

    .line 110
    .line 111
    .line 112
    :goto_1
    iput v4, v3, Ly1/e;->j:F

    .line 113
    .line 114
    iget v1, v1, Lr1/u;->e:F

    .line 115
    .line 116
    cmpl-float v5, v1, v5

    .line 117
    .line 118
    if-eqz v5, :cond_4

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    const v1, 0x3f83d70a    # 1.03f

    .line 122
    .line 123
    .line 124
    :goto_2
    iput v1, v3, Ly1/e;->i:F

    .line 125
    .line 126
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    const/high16 v7, 0x3f800000    # 1.0f

    .line 132
    .line 133
    cmpl-float v4, v4, v7

    .line 134
    .line 135
    if-nez v4, :cond_5

    .line 136
    .line 137
    cmpl-float v1, v1, v7

    .line 138
    .line 139
    if-nez v1, :cond_5

    .line 140
    .line 141
    iput-wide v5, v3, Ly1/e;->c:J

    .line 142
    .line 143
    :cond_5
    invoke-virtual {v3}, Ly1/e;->a()V

    .line 144
    .line 145
    .line 146
    cmp-long v1, p5, v5

    .line 147
    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    invoke-virtual {p0, p1, p2, p5, p6}, Ly1/f0;->m(Lr1/q0;Ljava/lang/Object;J)J

    .line 151
    .line 152
    .line 153
    move-result-wide p1

    .line 154
    iput-wide p1, v3, Ly1/e;->d:J

    .line 155
    .line 156
    invoke-virtual {v3}, Ly1/e;->a()V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_6
    iget-object p1, v2, Lr1/p0;->a:Ljava/lang/Object;

    .line 161
    .line 162
    invoke-virtual {p3}, Lr1/q0;->p()Z

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    if-nez p2, :cond_7

    .line 167
    .line 168
    iget-object p2, p4, Lf2/c0;->a:Ljava/lang/Object;

    .line 169
    .line 170
    invoke-virtual {p3, p2, v0}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    iget p2, p2, Lr1/o0;->c:I

    .line 175
    .line 176
    const-wide/16 p4, 0x0

    .line 177
    .line 178
    invoke-virtual {p3, p2, v2, p4, p5}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    iget-object p2, p2, Lr1/p0;->a:Ljava/lang/Object;

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_7
    const/4 p2, 0x0

    .line 186
    :goto_3
    invoke-static {p2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_8

    .line 191
    .line 192
    if-eqz p7, :cond_9

    .line 193
    .line 194
    :cond_8
    iput-wide v5, v3, Ly1/e;->d:J

    .line 195
    .line 196
    invoke-virtual {v3}, Ly1/e;->a()V

    .line 197
    .line 198
    .line 199
    :cond_9
    :goto_4
    return-void
.end method

.method public final D()V
    .locals 10

    .line 1
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly1/n0;->k()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Ly1/n0;->m:Ly1/l0;

    .line 7
    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    iget-boolean v1, v0, Ly1/l0;->d:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-boolean v1, v0, Ly1/l0;->e:Z

    .line 15
    .line 16
    if-eqz v1, :cond_a

    .line 17
    .line 18
    :cond_0
    iget-object v1, v0, Ly1/l0;->a:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-interface {v1}, Lf2/d1;->j()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_a

    .line 25
    .line 26
    iget-object v2, p0, Ly1/f0;->K:Ly1/v0;

    .line 27
    .line 28
    iget-object v2, v2, Ly1/v0;->a:Lr1/q0;

    .line 29
    .line 30
    iget-boolean v2, v0, Ly1/l0;->e:Z

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v1}, Lf2/d1;->p()J

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v2, p0, Ly1/f0;->f:Ly1/h0;

    .line 38
    .line 39
    check-cast v2, Ly1/g;

    .line 40
    .line 41
    iget-object v2, v2, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ly1/f;

    .line 62
    .line 63
    iget-boolean v3, v3, Ly1/f;->b:Z

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    goto :goto_5

    .line 68
    :cond_3
    iget-boolean v2, v0, Ly1/l0;->d:Z

    .line 69
    .line 70
    const/4 v3, 0x1

    .line 71
    if-nez v2, :cond_4

    .line 72
    .line 73
    iget-object v2, v0, Ly1/l0;->g:Ly1/m0;

    .line 74
    .line 75
    iput-boolean v3, v0, Ly1/l0;->d:Z

    .line 76
    .line 77
    iget-wide v2, v2, Ly1/m0;->b:J

    .line 78
    .line 79
    invoke-interface {v1, p0, v2, v3}, Lf2/a0;->l(Lf2/z;J)V

    .line 80
    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_4
    new-instance v2, Ly1/i0;

    .line 84
    .line 85
    invoke-direct {v2}, Ly1/i0;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-wide v4, p0, Ly1/f0;->M0:J

    .line 89
    .line 90
    iget-wide v6, v0, Ly1/l0;->p:J

    .line 91
    .line 92
    sub-long/2addr v4, v6

    .line 93
    iput-wide v4, v2, Ly1/i0;->a:J

    .line 94
    .line 95
    iget-object v4, p0, Ly1/f0;->n:Ly1/h;

    .line 96
    .line 97
    invoke-virtual {v4}, Ly1/h;->c()Lr1/h0;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget v4, v4, Lr1/h0;->a:F

    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    const/4 v6, 0x0

    .line 105
    cmpl-float v5, v4, v5

    .line 106
    .line 107
    if-gtz v5, :cond_6

    .line 108
    .line 109
    const v5, -0x800001

    .line 110
    .line 111
    .line 112
    cmpl-float v5, v4, v5

    .line 113
    .line 114
    if-nez v5, :cond_5

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    const/4 v5, 0x0

    .line 118
    goto :goto_1

    .line 119
    :cond_6
    :goto_0
    const/4 v5, 0x1

    .line 120
    :goto_1
    invoke-static {v5}, La9/o;->k(Z)V

    .line 121
    .line 122
    .line 123
    iput v4, v2, Ly1/i0;->b:F

    .line 124
    .line 125
    iget-wide v4, p0, Ly1/f0;->R:J

    .line 126
    .line 127
    const-wide/16 v7, 0x0

    .line 128
    .line 129
    cmp-long v9, v4, v7

    .line 130
    .line 131
    if-gez v9, :cond_8

    .line 132
    .line 133
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    cmp-long v9, v4, v7

    .line 139
    .line 140
    if-nez v9, :cond_7

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_7
    const/4 v7, 0x0

    .line 144
    goto :goto_3

    .line 145
    :cond_8
    :goto_2
    const/4 v7, 0x1

    .line 146
    :goto_3
    invoke-static {v7}, La9/o;->k(Z)V

    .line 147
    .line 148
    .line 149
    iput-wide v4, v2, Ly1/i0;->c:J

    .line 150
    .line 151
    new-instance v4, Ly1/j0;

    .line 152
    .line 153
    invoke-direct {v4, v2}, Ly1/j0;-><init>(Ly1/i0;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, v0, Ly1/l0;->m:Ly1/l0;

    .line 157
    .line 158
    if-nez v0, :cond_9

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_9
    const/4 v3, 0x0

    .line 162
    :goto_4
    invoke-static {v3}, La9/o;->t(Z)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v1, v4}, Lf2/d1;->a(Ly1/j0;)Z

    .line 166
    .line 167
    .line 168
    :cond_a
    :goto_5
    return-void
.end method

.method public final D0(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ly1/f0;->P:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Ly1/f0;->q:Lu1/z;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    :goto_0
    iput-wide p1, p0, Ly1/f0;->R:J

    .line 23
    .line 24
    return-void
.end method

.method public final E()V
    .locals 5

    .line 1
    iget-object v0, p0, Ly1/f0;->L:Ls3/t;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/f0;->K:Ly1/v0;

    .line 4
    .line 5
    iget-boolean v2, v0, Ls3/t;->a:Z

    .line 6
    .line 7
    iget-object v3, v0, Ls3/t;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Ly1/v0;

    .line 10
    .line 11
    if-eq v3, v1, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    :goto_0
    or-int/2addr v2, v3

    .line 17
    iput-boolean v2, v0, Ls3/t;->a:Z

    .line 18
    .line 19
    iput-object v1, v0, Ls3/t;->e:Ljava/lang/Object;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Ly1/f0;->r:Ly1/r;

    .line 24
    .line 25
    iget-object v1, v1, Ly1/r;->a:Ly1/x;

    .line 26
    .line 27
    iget-object v2, v1, Ly1/x;->j:Lu1/b0;

    .line 28
    .line 29
    new-instance v3, Ls1/f;

    .line 30
    .line 31
    const/16 v4, 0xf

    .line 32
    .line 33
    invoke-direct {v3, v1, v4, v0}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lu1/b0;->d(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    new-instance v0, Ls3/t;

    .line 40
    .line 41
    iget-object v1, p0, Ly1/f0;->K:Ly1/v0;

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ls3/t;-><init>(Ly1/v0;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Ly1/f0;->L:Ls3/t;

    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public final F(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Ly1/f0;->a:[Lh4/m0;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Ly1/f0;->s:Ly1/n0;

    .line 6
    .line 7
    iget-object v1, v1, Ly1/n0;->i:Ly1/l0;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lh4/m0;->d(Ly1/l0;)Ly1/a;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v1, v1, Ly1/a;->i:Lf2/c1;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Lf2/c1;->j()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :catch_0
    move-exception v1

    .line 29
    goto :goto_0

    .line 30
    :catch_1
    move-exception v1

    .line 31
    :goto_0
    iget-object v0, v0, Lh4/m0;->e:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Ly1/a;

    .line 34
    .line 35
    iget v0, v0, Ly1/a;->b:I

    .line 36
    .line 37
    const/4 v2, 0x3

    .line 38
    if-eq v0, v2, :cond_1

    .line 39
    .line 40
    const/4 v2, 0x5

    .line 41
    if-ne v0, v2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    throw v1

    .line 45
    :cond_1
    :goto_1
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 46
    .line 47
    iget-object v0, v0, Ly1/n0;->i:Ly1/l0;

    .line 48
    .line 49
    iget-object v0, v0, Ly1/l0;->o:Lh2/r;

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v3, "Disabling track due to error: "

    .line 54
    .line 55
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, v0, Lh2/r;->c:[Lh2/p;

    .line 59
    .line 60
    aget-object v3, v3, p1

    .line 61
    .line 62
    invoke-interface {v3}, Lh2/p;->h()Lr1/p;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-static {v3}, Lr1/p;->d(Lr1/p;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2, v1}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    new-instance v4, Lh2/r;

    .line 81
    .line 82
    iget-object v1, v0, Lh2/r;->b:[Ly1/b1;

    .line 83
    .line 84
    invoke-virtual {v1}, [Ly1/b1;->clone()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, [Ly1/b1;

    .line 89
    .line 90
    iget-object v2, v0, Lh2/r;->c:[Lh2/p;

    .line 91
    .line 92
    invoke-virtual {v2}, [Lh2/p;->clone()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, [Lh2/p;

    .line 97
    .line 98
    iget-object v3, v0, Lh2/r;->d:Lr1/x0;

    .line 99
    .line 100
    iget-object v0, v0, Lh2/r;->e:Lb5/i;

    .line 101
    .line 102
    invoke-direct {v4, v1, v2, v3, v0}, Lh2/r;-><init>([Ly1/b1;[Lh2/p;Lr1/x0;Lb5/i;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, v4, Lh2/r;->b:[Ly1/b1;

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    aput-object v1, v0, p1

    .line 109
    .line 110
    iget-object v0, v4, Lh2/r;->c:[Lh2/p;

    .line 111
    .line 112
    aput-object v1, v0, p1

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Ly1/f0;->i(I)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Ly1/f0;->s:Ly1/n0;

    .line 118
    .line 119
    iget-object v3, p1, Ly1/n0;->i:Ly1/l0;

    .line 120
    .line 121
    iget-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 122
    .line 123
    iget-wide v5, p1, Ly1/v0;->s:J

    .line 124
    .line 125
    iget-object p1, v3, Ly1/l0;->j:[Ly1/a;

    .line 126
    .line 127
    array-length p1, p1

    .line 128
    new-array v8, p1, [Z

    .line 129
    .line 130
    const/4 v7, 0x0

    .line 131
    invoke-virtual/range {v3 .. v8}, Ly1/l0;->a(Lh2/r;JZ[Z)J

    .line 132
    .line 133
    .line 134
    :goto_2
    return-void
.end method

.method public final G(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/f0;->c:[Z

    .line 2
    .line 3
    aget-boolean v1, v0, p1

    .line 4
    .line 5
    if-eq v1, p2, :cond_0

    .line 6
    .line 7
    aput-boolean p2, v0, p1

    .line 8
    .line 9
    new-instance v0, Ly1/a0;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2}, Ly1/a0;-><init>(Ly1/f0;IZ)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Ly1/f0;->z:Lu1/b0;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lu1/b0;->d(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final H()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/f0;->t:Lm7/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lm7/l;->c()Lr1/q0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Ly1/f0;->v(Lr1/q0;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final I()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/f0;->L:Ls3/t;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ls3/t;->c(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    throw v0
.end method

.method public final J()V
    .locals 10

    .line 1
    iget-object v0, p0, Ly1/f0;->L:Ls3/t;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ls3/t;->c(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0, v0, v0, v1}, Ly1/f0;->O(ZZZZ)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Ly1/f0;->f:Ly1/h0;

    .line 12
    .line 13
    check-cast v2, Ly1/g;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    iget-wide v5, v2, Ly1/g;->q:J

    .line 27
    .line 28
    const-wide/16 v7, -0x1

    .line 29
    .line 30
    cmp-long v9, v5, v7

    .line 31
    .line 32
    if-eqz v9, :cond_1

    .line 33
    .line 34
    cmp-long v7, v5, v3

    .line 35
    .line 36
    if-nez v7, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v5, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 42
    :goto_1
    const-string v6, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper)."

    .line 43
    .line 44
    invoke-static {v6, v5}, La9/o;->s(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    iput-wide v3, v2, Ly1/g;->q:J

    .line 48
    .line 49
    iget-object v3, v2, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    iget-object v4, p0, Ly1/f0;->x:Lz1/i;

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Ly1/f;

    .line 58
    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    new-instance v5, Ly1/f;

    .line 62
    .line 63
    invoke-direct {v5}, Ly1/f;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4, v5}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    iget v6, v5, Ly1/f;->a:I

    .line 71
    .line 72
    add-int/2addr v6, v1

    .line 73
    iput v6, v5, Ly1/f;->a:I

    .line 74
    .line 75
    :goto_2
    invoke-virtual {v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Ly1/f;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    iget-object v5, v2, Ly1/g;->o:Lu7/d1;

    .line 85
    .line 86
    iget-object v4, v4, Lz1/i;->a:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v5, v4}, Lu7/d1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/lang/Integer;

    .line 93
    .line 94
    const/4 v5, -0x1

    .line 95
    if-eqz v4, :cond_3

    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eq v6, v5, :cond_3

    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    goto :goto_3

    .line 108
    :cond_3
    iget v2, v2, Ly1/g;->l:I

    .line 109
    .line 110
    :goto_3
    if-eq v2, v5, :cond_4

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_4
    const/high16 v2, 0xc80000

    .line 114
    .line 115
    :goto_4
    iput v2, v3, Ly1/f;->c:I

    .line 116
    .line 117
    iput-boolean v0, v3, Ly1/f;->b:Z

    .line 118
    .line 119
    iget-object v2, p0, Ly1/f0;->K:Ly1/v0;

    .line 120
    .line 121
    iget-object v2, v2, Ly1/v0;->a:Lr1/q0;

    .line 122
    .line 123
    invoke-virtual {v2}, Lr1/q0;->p()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    const/4 v3, 0x2

    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    const/4 v2, 0x4

    .line 131
    goto :goto_5

    .line 132
    :cond_5
    const/4 v2, 0x2

    .line 133
    :goto_5
    invoke-virtual {p0, v2}, Ly1/f0;->n0(I)V

    .line 134
    .line 135
    .line 136
    iget-object v2, p0, Ly1/f0;->K:Ly1/v0;

    .line 137
    .line 138
    iget-boolean v4, v2, Ly1/v0;->l:Z

    .line 139
    .line 140
    iget v5, v2, Ly1/v0;->e:I

    .line 141
    .line 142
    iget-object v6, p0, Ly1/f0;->B:Ls1/b;

    .line 143
    .line 144
    invoke-virtual {v6, v5, v4}, Ls1/b;->d(IZ)I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    iget v6, v2, Ly1/v0;->n:I

    .line 149
    .line 150
    iget v2, v2, Ly1/v0;->m:I

    .line 151
    .line 152
    invoke-virtual {p0, v5, v6, v2, v4}, Ly1/f0;->A0(IIIZ)V

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Ly1/f0;->g:Li2/c;

    .line 156
    .line 157
    check-cast v2, Li2/f;

    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    iget-object v4, p0, Ly1/f0;->t:Lm7/l;

    .line 163
    .line 164
    iget-boolean v5, v4, Lm7/l;->a:Z

    .line 165
    .line 166
    xor-int/2addr v5, v1

    .line 167
    invoke-static {v5}, La9/o;->t(Z)V

    .line 168
    .line 169
    .line 170
    iput-object v2, v4, Lm7/l;->l:Ljava/lang/Object;

    .line 171
    .line 172
    :goto_6
    iget-object v2, v4, Lm7/l;->c:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v2, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-ge v0, v5, :cond_6

    .line 181
    .line 182
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    check-cast v2, Ly1/u0;

    .line 187
    .line 188
    invoke-virtual {v4, v2}, Lm7/l;->g(Ly1/u0;)V

    .line 189
    .line 190
    .line 191
    iget-object v5, v4, Lm7/l;->h:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v5, Ljava/util/HashSet;

    .line 194
    .line 195
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    add-int/lit8 v0, v0, 0x1

    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_6
    iput-boolean v1, v4, Lm7/l;->a:Z

    .line 202
    .line 203
    iget-object v0, p0, Ly1/f0;->h:Lu1/b0;

    .line 204
    .line 205
    invoke-virtual {v0, v3}, Lu1/b0;->f(I)Z

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public final K(Lu1/e;)V
    .locals 10

    .line 1
    iget-object v0, p0, Ly1/f0;->i:Lha/u3;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/f0;->h:Lu1/b0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0, v2, v4, v2, v4}, Ly1/f0;->O(ZZZZ)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ly1/f0;->L()V

    .line 12
    .line 13
    .line 14
    iget-object v5, p0, Ly1/f0;->f:Ly1/h0;

    .line 15
    .line 16
    iget-object v6, p0, Ly1/f0;->x:Lz1/i;

    .line 17
    .line 18
    check-cast v5, Ly1/g;

    .line 19
    .line 20
    iget-object v7, v5, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 21
    .line 22
    invoke-virtual {v7, v6}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    check-cast v8, Ly1/f;

    .line 27
    .line 28
    if-eqz v8, :cond_0

    .line 29
    .line 30
    iget v9, v8, Ly1/f;->a:I

    .line 31
    .line 32
    sub-int/2addr v9, v2

    .line 33
    iput v9, v8, Ly1/f;->a:I

    .line 34
    .line 35
    if-nez v9, :cond_0

    .line 36
    .line 37
    invoke-virtual {v7, v6}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Ly1/g;->c()V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v6, v5, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-virtual {v6}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_1

    .line 50
    .line 51
    const-wide/16 v6, -0x1

    .line 52
    .line 53
    iput-wide v6, v5, Ly1/g;->q:J

    .line 54
    .line 55
    :cond_1
    iget-object v5, p0, Ly1/f0;->B:Ls1/b;

    .line 56
    .line 57
    iput-object v3, v5, Ls1/b;->c:Ly1/f0;

    .line 58
    .line 59
    invoke-virtual {v5}, Ls1/b;->a()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, v4}, Ls1/b;->c(I)V

    .line 63
    .line 64
    .line 65
    iget-object v4, p0, Ly1/f0;->d:Lh2/q;

    .line 66
    .line 67
    invoke-virtual {v4}, Lh2/q;->a()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v2}, Ly1/f0;->n0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    iget-object v1, v1, Lu1/b0;->a:Landroid/os/Handler;

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lha/u3;->g()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lu1/e;->e()Z

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception v2

    .line 86
    iget-object v1, v1, Lu1/b0;->a:Landroid/os/Handler;

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lha/u3;->g()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lu1/e;->e()Z

    .line 95
    .line 96
    .line 97
    throw v2
.end method

.method public final L()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Ly1/f0;->a:[Lh4/m0;

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v1, v2, :cond_3

    .line 7
    .line 8
    iget-object v2, p0, Ly1/f0;->b:[Ly1/a;

    .line 9
    .line 10
    aget-object v2, v2, v1

    .line 11
    .line 12
    iget-object v3, v2, Ly1/a;->a:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v3

    .line 15
    const/4 v4, 0x0

    .line 16
    :try_start_0
    iput-object v4, v2, Ly1/a;->s:Lh2/n;

    .line 17
    .line 18
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object v2, p0, Ly1/f0;->a:[Lh4/m0;

    .line 20
    .line 21
    aget-object v2, v2, v1

    .line 22
    .line 23
    iget-object v3, v2, Lh4/m0;->e:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Ly1/a;

    .line 26
    .line 27
    iget v4, v3, Ly1/a;->h:I

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 v4, 0x0

    .line 35
    :goto_1
    invoke-static {v4}, La9/o;->t(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ly1/a;->q()V

    .line 39
    .line 40
    .line 41
    iput-boolean v0, v2, Lh4/m0;->c:Z

    .line 42
    .line 43
    iget-object v3, v2, Lh4/m0;->f:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v3, Ly1/a;

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    iget v4, v3, Ly1/a;->h:I

    .line 50
    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    const/4 v5, 0x0

    .line 55
    :goto_2
    invoke-static {v5}, La9/o;->t(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ly1/a;->q()V

    .line 59
    .line 60
    .line 61
    iput-boolean v0, v2, Lh4/m0;->d:Z

    .line 62
    .line 63
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw v0

    .line 69
    :cond_3
    return-void
.end method

.method public final M(IILf2/e1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/f0;->L:Ls3/t;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ls3/t;->c(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ly1/f0;->t:Lm7/l;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    if-gt p1, p2, :cond_0

    .line 16
    .line 17
    iget-object v3, v0, Lm7/l;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v3, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-gt p2, v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    invoke-static {v1}, La9/o;->k(Z)V

    .line 30
    .line 31
    .line 32
    iput-object p3, v0, Lm7/l;->k:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Lm7/l;->i(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lm7/l;->c()Lr1/q0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1, v2}, Ly1/f0;->v(Lr1/q0;Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final N()V
    .locals 20

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    iget-object v0, v10, Ly1/f0;->n:Ly1/h;

    .line 4
    .line 5
    invoke-virtual {v0}, Ly1/h;->c()Lr1/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lr1/h0;->a:F

    .line 10
    .line 11
    iget-object v1, v10, Ly1/f0;->s:Ly1/n0;

    .line 12
    .line 13
    iget-object v2, v1, Ly1/n0;->i:Ly1/l0;

    .line 14
    .line 15
    iget-object v1, v1, Ly1/n0;->j:Ly1/l0;

    .line 16
    .line 17
    const/4 v11, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    move-object v4, v2

    .line 20
    const/4 v2, 0x1

    .line 21
    :goto_0
    if-eqz v4, :cond_13

    .line 22
    .line 23
    iget-boolean v5, v4, Ly1/l0;->e:Z

    .line 24
    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto/16 :goto_a

    .line 28
    .line 29
    :cond_0
    iget-object v5, v10, Ly1/f0;->K:Ly1/v0;

    .line 30
    .line 31
    iget-object v6, v5, Ly1/v0;->a:Lr1/q0;

    .line 32
    .line 33
    iget-boolean v5, v5, Ly1/v0;->l:Z

    .line 34
    .line 35
    invoke-virtual {v4, v0, v6, v5}, Ly1/l0;->j(FLr1/q0;Z)Lh2/r;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget-object v6, v10, Ly1/f0;->s:Ly1/n0;

    .line 40
    .line 41
    iget-object v6, v6, Ly1/n0;->i:Ly1/l0;

    .line 42
    .line 43
    if-ne v4, v6, :cond_1

    .line 44
    .line 45
    move-object v13, v5

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v13, v3

    .line 48
    :goto_1
    iget-object v3, v4, Ly1/l0;->o:Lh2/r;

    .line 49
    .line 50
    const/4 v9, 0x0

    .line 51
    if-eqz v3, :cond_6

    .line 52
    .line 53
    iget-object v6, v3, Lh2/r;->c:[Lh2/p;

    .line 54
    .line 55
    array-length v6, v6

    .line 56
    iget-object v7, v5, Lh2/r;->c:[Lh2/p;

    .line 57
    .line 58
    array-length v8, v7

    .line 59
    if-eq v6, v8, :cond_2

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    const/4 v6, 0x0

    .line 63
    :goto_2
    array-length v8, v7

    .line 64
    if-ge v6, v8, :cond_4

    .line 65
    .line 66
    invoke-virtual {v5, v3, v6}, Lh2/r;->a(Lh2/r;I)Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-nez v8, :cond_3

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    if-ne v4, v1, :cond_5

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    :cond_5
    iget-object v4, v4, Ly1/l0;->m:Ly1/l0;

    .line 80
    .line 81
    move-object v3, v13

    .line 82
    goto :goto_0

    .line 83
    :cond_6
    :goto_3
    const/4 v8, 0x4

    .line 84
    if-eqz v2, :cond_10

    .line 85
    .line 86
    iget-object v0, v10, Ly1/f0;->s:Ly1/n0;

    .line 87
    .line 88
    iget-object v6, v0, Ly1/n0;->i:Ly1/l0;

    .line 89
    .line 90
    invoke-virtual {v0, v6}, Ly1/n0;->n(Ly1/l0;)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    and-int/2addr v0, v11

    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    const/16 v16, 0x1

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_7
    const/16 v16, 0x0

    .line 101
    .line 102
    :goto_4
    iget-object v0, v10, Ly1/f0;->a:[Lh4/m0;

    .line 103
    .line 104
    array-length v0, v0

    .line 105
    new-array v7, v0, [Z

    .line 106
    .line 107
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 111
    .line 112
    iget-wide v14, v0, Ly1/v0;->s:J

    .line 113
    .line 114
    move-object v12, v6

    .line 115
    move-object/from16 v17, v7

    .line 116
    .line 117
    invoke-virtual/range {v12 .. v17}, Ly1/l0;->a(Lh2/r;JZ[Z)J

    .line 118
    .line 119
    .line 120
    move-result-wide v12

    .line 121
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 122
    .line 123
    iget v1, v0, Ly1/v0;->e:I

    .line 124
    .line 125
    if-eq v1, v8, :cond_8

    .line 126
    .line 127
    iget-wide v0, v0, Ly1/v0;->s:J

    .line 128
    .line 129
    cmp-long v2, v12, v0

    .line 130
    .line 131
    if-eqz v2, :cond_8

    .line 132
    .line 133
    const/4 v14, 0x1

    .line 134
    goto :goto_5

    .line 135
    :cond_8
    const/4 v14, 0x0

    .line 136
    :goto_5
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 137
    .line 138
    iget-object v1, v0, Ly1/v0;->b:Lf2/c0;

    .line 139
    .line 140
    iget-wide v4, v0, Ly1/v0;->c:J

    .line 141
    .line 142
    iget-wide v2, v0, Ly1/v0;->d:J

    .line 143
    .line 144
    const/4 v15, 0x5

    .line 145
    move-object/from16 v0, p0

    .line 146
    .line 147
    move-wide/from16 v16, v2

    .line 148
    .line 149
    move-wide v2, v12

    .line 150
    move-object/from16 v18, v6

    .line 151
    .line 152
    move-object/from16 v19, v7

    .line 153
    .line 154
    move-wide/from16 v6, v16

    .line 155
    .line 156
    move v8, v14

    .line 157
    move v9, v15

    .line 158
    invoke-virtual/range {v0 .. v9}, Ly1/f0;->y(Lf2/c0;JJJZI)Ly1/v0;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    iput-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 163
    .line 164
    if-eqz v14, :cond_9

    .line 165
    .line 166
    invoke-virtual {v10, v12, v13, v11}, Ly1/f0;->Q(JZ)V

    .line 167
    .line 168
    .line 169
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->h()V

    .line 170
    .line 171
    .line 172
    iget-object v0, v10, Ly1/f0;->a:[Lh4/m0;

    .line 173
    .line 174
    array-length v0, v0

    .line 175
    new-array v0, v0, [Z

    .line 176
    .line 177
    const/4 v9, 0x0

    .line 178
    :goto_6
    iget-object v1, v10, Ly1/f0;->a:[Lh4/m0;

    .line 179
    .line 180
    array-length v2, v1

    .line 181
    if-ge v9, v2, :cond_f

    .line 182
    .line 183
    aget-object v1, v1, v9

    .line 184
    .line 185
    invoke-virtual {v1}, Lh4/m0;->c()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    iget-object v2, v10, Ly1/f0;->a:[Lh4/m0;

    .line 190
    .line 191
    aget-object v2, v2, v9

    .line 192
    .line 193
    invoke-virtual {v2}, Lh4/m0;->g()Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    aput-boolean v2, v0, v9

    .line 198
    .line 199
    iget-object v2, v10, Ly1/f0;->a:[Lh4/m0;

    .line 200
    .line 201
    aget-object v2, v2, v9

    .line 202
    .line 203
    move-object/from16 v3, v18

    .line 204
    .line 205
    iget-object v4, v3, Ly1/l0;->c:[Lf2/c1;

    .line 206
    .line 207
    aget-object v4, v4, v9

    .line 208
    .line 209
    iget-object v5, v10, Ly1/f0;->n:Ly1/h;

    .line 210
    .line 211
    iget-wide v6, v10, Ly1/f0;->M0:J

    .line 212
    .line 213
    aget-boolean v8, v19, v9

    .line 214
    .line 215
    iget-object v12, v2, Lh4/m0;->e:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v12, Ly1/a;

    .line 218
    .line 219
    invoke-static {v12}, Lh4/m0;->h(Ly1/a;)Z

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    if-eqz v13, :cond_a

    .line 224
    .line 225
    iget-object v13, v12, Ly1/a;->i:Lf2/c1;

    .line 226
    .line 227
    if-eq v4, v13, :cond_b

    .line 228
    .line 229
    invoke-virtual {v2, v12, v5}, Lh4/m0;->a(Ly1/a;Ly1/h;)V

    .line 230
    .line 231
    .line 232
    :cond_a
    const/4 v13, 0x0

    .line 233
    goto :goto_7

    .line 234
    :cond_b
    if-eqz v8, :cond_a

    .line 235
    .line 236
    const/4 v13, 0x0

    .line 237
    invoke-virtual {v12, v6, v7, v13, v11}, Ly1/a;->z(JZZ)V

    .line 238
    .line 239
    .line 240
    :goto_7
    iget-object v12, v2, Lh4/m0;->f:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v12, Ly1/a;

    .line 243
    .line 244
    if-eqz v12, :cond_d

    .line 245
    .line 246
    invoke-static {v12}, Lh4/m0;->h(Ly1/a;)Z

    .line 247
    .line 248
    .line 249
    move-result v14

    .line 250
    if-eqz v14, :cond_d

    .line 251
    .line 252
    iget-object v14, v12, Ly1/a;->i:Lf2/c1;

    .line 253
    .line 254
    if-eq v4, v14, :cond_c

    .line 255
    .line 256
    invoke-virtual {v2, v12, v5}, Lh4/m0;->a(Ly1/a;Ly1/h;)V

    .line 257
    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_c
    if-eqz v8, :cond_d

    .line 261
    .line 262
    invoke-virtual {v12, v6, v7, v13, v11}, Ly1/a;->z(JZZ)V

    .line 263
    .line 264
    .line 265
    :cond_d
    :goto_8
    iget-object v2, v10, Ly1/f0;->a:[Lh4/m0;

    .line 266
    .line 267
    aget-object v2, v2, v9

    .line 268
    .line 269
    invoke-virtual {v2}, Lh4/m0;->c()I

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    sub-int v2, v1, v2

    .line 274
    .line 275
    if-lez v2, :cond_e

    .line 276
    .line 277
    invoke-virtual {v10, v9, v13}, Ly1/f0;->G(IZ)V

    .line 278
    .line 279
    .line 280
    :cond_e
    iget v2, v10, Ly1/f0;->h0:I

    .line 281
    .line 282
    iget-object v4, v10, Ly1/f0;->a:[Lh4/m0;

    .line 283
    .line 284
    aget-object v4, v4, v9

    .line 285
    .line 286
    invoke-virtual {v4}, Lh4/m0;->c()I

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    sub-int/2addr v1, v4

    .line 291
    sub-int/2addr v2, v1

    .line 292
    iput v2, v10, Ly1/f0;->h0:I

    .line 293
    .line 294
    add-int/lit8 v9, v9, 0x1

    .line 295
    .line 296
    move-object/from16 v18, v3

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_f
    move-object/from16 v3, v18

    .line 300
    .line 301
    iget-wide v1, v10, Ly1/f0;->M0:J

    .line 302
    .line 303
    invoke-virtual {v10, v0, v1, v2}, Ly1/f0;->l([ZJ)V

    .line 304
    .line 305
    .line 306
    iput-boolean v11, v3, Ly1/l0;->h:Z

    .line 307
    .line 308
    goto :goto_9

    .line 309
    :cond_10
    iget-object v0, v10, Ly1/f0;->s:Ly1/n0;

    .line 310
    .line 311
    invoke-virtual {v0, v4}, Ly1/n0;->n(Ly1/l0;)I

    .line 312
    .line 313
    .line 314
    iget-boolean v0, v4, Ly1/l0;->e:Z

    .line 315
    .line 316
    if-eqz v0, :cond_12

    .line 317
    .line 318
    iget-object v0, v4, Ly1/l0;->g:Ly1/m0;

    .line 319
    .line 320
    iget-wide v0, v0, Ly1/m0;->b:J

    .line 321
    .line 322
    iget-wide v2, v10, Ly1/f0;->M0:J

    .line 323
    .line 324
    iget-wide v6, v4, Ly1/l0;->p:J

    .line 325
    .line 326
    sub-long/2addr v2, v6

    .line 327
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 328
    .line 329
    .line 330
    move-result-wide v6

    .line 331
    iget-boolean v0, v10, Ly1/f0;->A:Z

    .line 332
    .line 333
    if-eqz v0, :cond_11

    .line 334
    .line 335
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->f()Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-eqz v0, :cond_11

    .line 340
    .line 341
    iget-object v0, v10, Ly1/f0;->s:Ly1/n0;

    .line 342
    .line 343
    iget-object v0, v0, Ly1/n0;->k:Ly1/l0;

    .line 344
    .line 345
    if-ne v0, v4, :cond_11

    .line 346
    .line 347
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->h()V

    .line 348
    .line 349
    .line 350
    :cond_11
    iget-object v0, v4, Ly1/l0;->j:[Ly1/a;

    .line 351
    .line 352
    array-length v0, v0

    .line 353
    new-array v9, v0, [Z

    .line 354
    .line 355
    const/4 v8, 0x0

    .line 356
    invoke-virtual/range {v4 .. v9}, Ly1/l0;->a(Lh2/r;JZ[Z)J

    .line 357
    .line 358
    .line 359
    :cond_12
    :goto_9
    invoke-virtual {v10, v11}, Ly1/f0;->u(Z)V

    .line 360
    .line 361
    .line 362
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 363
    .line 364
    iget v0, v0, Ly1/v0;->e:I

    .line 365
    .line 366
    const/4 v1, 0x4

    .line 367
    if-eq v0, v1, :cond_13

    .line 368
    .line 369
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->C()V

    .line 370
    .line 371
    .line 372
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->B0()V

    .line 373
    .line 374
    .line 375
    iget-object v0, v10, Ly1/f0;->h:Lu1/b0;

    .line 376
    .line 377
    const/4 v1, 0x2

    .line 378
    invoke-virtual {v0, v1}, Lu1/b0;->f(I)Z

    .line 379
    .line 380
    .line 381
    :cond_13
    :goto_a
    return-void
.end method

.method public final O(ZZZZ)V
    .locals 37

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Ly1/f0;->h:Lu1/b0;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-virtual {v0, v2}, Lu1/b0;->e(I)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-boolean v2, v1, Ly1/f0;->G:Z

    .line 11
    .line 12
    iget-object v0, v1, Ly1/f0;->H:Ly1/e0;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, v1, Ly1/f0;->L:Ls3/t;

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Ls3/t;->c(I)V

    .line 21
    .line 22
    .line 23
    iput-object v3, v1, Ly1/f0;->H:Ly1/e0;

    .line 24
    .line 25
    :cond_0
    iput-object v3, v1, Ly1/f0;->Q0:Ly1/k;

    .line 26
    .line 27
    invoke-virtual {v1, v2, v4}, Ly1/f0;->D0(ZZ)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v1, Ly1/f0;->n:Ly1/h;

    .line 31
    .line 32
    iput-boolean v2, v0, Ly1/h;->f:Z

    .line 33
    .line 34
    iget-object v0, v0, Ly1/h;->a:Lba/n;

    .line 35
    .line 36
    iget-boolean v5, v0, Lba/n;->a:Z

    .line 37
    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lba/n;->a()J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    invoke-virtual {v0, v5, v6}, Lba/n;->d(J)V

    .line 45
    .line 46
    .line 47
    iput-boolean v2, v0, Lba/n;->a:Z

    .line 48
    .line 49
    :cond_1
    const-wide v5, 0xe8d4a51000L

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    iput-wide v5, v1, Ly1/f0;->M0:J

    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    :goto_0
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    :try_start_0
    iget-object v7, v1, Ly1/f0;->a:[Lh4/m0;

    .line 63
    .line 64
    array-length v7, v7

    .line 65
    if-ge v0, v7, :cond_2

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ly1/f0;->i(I)V

    .line 68
    .line 69
    .line 70
    add-int/2addr v0, v4

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iput-wide v5, v1, Ly1/f0;->T0:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ly1/k; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catch_0
    move-exception v0

    .line 76
    goto :goto_1

    .line 77
    :catch_1
    move-exception v0

    .line 78
    :goto_1
    const-string v7, "Disable failed."

    .line 79
    .line 80
    invoke-static {v7, v0}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    :goto_2
    if-eqz p1, :cond_3

    .line 84
    .line 85
    iget-object v7, v1, Ly1/f0;->a:[Lh4/m0;

    .line 86
    .line 87
    array-length v8, v7

    .line 88
    const/4 v9, 0x0

    .line 89
    :goto_3
    if-ge v9, v8, :cond_3

    .line 90
    .line 91
    aget-object v0, v7, v9

    .line 92
    .line 93
    :try_start_1
    invoke-virtual {v0}, Lh4/m0;->k()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :catch_2
    move-exception v0

    .line 98
    move-object v10, v0

    .line 99
    const-string v0, "Reset failed."

    .line 100
    .line 101
    invoke-static {v0, v10}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :goto_4
    add-int/2addr v9, v4

    .line 105
    goto :goto_3

    .line 106
    :cond_3
    iput v2, v1, Ly1/f0;->h0:I

    .line 107
    .line 108
    iget-object v0, v1, Ly1/f0;->K:Ly1/v0;

    .line 109
    .line 110
    iget-object v7, v0, Ly1/v0;->b:Lf2/c0;

    .line 111
    .line 112
    iget-wide v8, v0, Ly1/v0;->s:J

    .line 113
    .line 114
    iget-object v0, v1, Ly1/f0;->K:Ly1/v0;

    .line 115
    .line 116
    iget-object v0, v0, Ly1/v0;->b:Lf2/c0;

    .line 117
    .line 118
    invoke-virtual {v0}, Lf2/c0;->b()Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_5

    .line 123
    .line 124
    iget-object v0, v1, Ly1/f0;->K:Ly1/v0;

    .line 125
    .line 126
    iget-object v10, v1, Ly1/f0;->l:Lr1/o0;

    .line 127
    .line 128
    iget-object v11, v0, Ly1/v0;->b:Lf2/c0;

    .line 129
    .line 130
    iget-object v0, v0, Ly1/v0;->a:Lr1/q0;

    .line 131
    .line 132
    invoke-virtual {v0}, Lr1/q0;->p()Z

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    if-nez v12, :cond_5

    .line 137
    .line 138
    iget-object v11, v11, Lf2/c0;->a:Ljava/lang/Object;

    .line 139
    .line 140
    invoke-virtual {v0, v11, v10}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-boolean v0, v0, Lr1/o0;->f:Z

    .line 145
    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_4
    iget-object v0, v1, Ly1/f0;->K:Ly1/v0;

    .line 150
    .line 151
    iget-wide v10, v0, Ly1/v0;->s:J

    .line 152
    .line 153
    goto :goto_6

    .line 154
    :cond_5
    :goto_5
    iget-object v0, v1, Ly1/f0;->K:Ly1/v0;

    .line 155
    .line 156
    iget-wide v10, v0, Ly1/v0;->c:J

    .line 157
    .line 158
    :goto_6
    if-eqz p2, :cond_7

    .line 159
    .line 160
    iput-object v3, v1, Ly1/f0;->t0:Ly1/e0;

    .line 161
    .line 162
    iget-object v0, v1, Ly1/f0;->K:Ly1/v0;

    .line 163
    .line 164
    iget-object v0, v0, Ly1/v0;->a:Lr1/q0;

    .line 165
    .line 166
    invoke-virtual {v1, v0}, Ly1/f0;->o(Lr1/q0;)Landroid/util/Pair;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v7, Lf2/c0;

    .line 173
    .line 174
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v0, Ljava/lang/Long;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 179
    .line 180
    .line 181
    move-result-wide v8

    .line 182
    iget-object v0, v1, Ly1/f0;->K:Ly1/v0;

    .line 183
    .line 184
    iget-object v0, v0, Ly1/v0;->b:Lf2/c0;

    .line 185
    .line 186
    invoke-virtual {v7, v0}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    move-wide v13, v5

    .line 191
    move-wide/from16 v32, v8

    .line 192
    .line 193
    if-nez v0, :cond_6

    .line 194
    .line 195
    const/4 v0, 0x1

    .line 196
    goto :goto_8

    .line 197
    :cond_6
    :goto_7
    const/4 v0, 0x0

    .line 198
    goto :goto_8

    .line 199
    :cond_7
    move-wide/from16 v32, v8

    .line 200
    .line 201
    move-wide v13, v10

    .line 202
    goto :goto_7

    .line 203
    :goto_8
    iget-object v5, v1, Ly1/f0;->s:Ly1/n0;

    .line 204
    .line 205
    invoke-virtual {v5}, Ly1/n0;->b()V

    .line 206
    .line 207
    .line 208
    iput-boolean v2, v1, Ly1/f0;->S:Z

    .line 209
    .line 210
    iget-object v5, v1, Ly1/f0;->K:Ly1/v0;

    .line 211
    .line 212
    iget-object v5, v5, Ly1/v0;->a:Lr1/q0;

    .line 213
    .line 214
    if-eqz p3, :cond_a

    .line 215
    .line 216
    instance-of v6, v5, Ly1/a1;

    .line 217
    .line 218
    if-eqz v6, :cond_a

    .line 219
    .line 220
    check-cast v5, Ly1/a1;

    .line 221
    .line 222
    iget-object v6, v1, Ly1/f0;->t:Lm7/l;

    .line 223
    .line 224
    iget-object v6, v6, Lm7/l;->k:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v6, Lf2/e1;

    .line 227
    .line 228
    iget-object v8, v5, Ly1/a1;->h:[Lr1/q0;

    .line 229
    .line 230
    array-length v9, v8

    .line 231
    new-array v9, v9, [Lr1/q0;

    .line 232
    .line 233
    const/4 v10, 0x0

    .line 234
    :goto_9
    array-length v11, v8

    .line 235
    if-ge v10, v11, :cond_8

    .line 236
    .line 237
    new-instance v11, Ly1/z0;

    .line 238
    .line 239
    aget-object v12, v8, v10

    .line 240
    .line 241
    invoke-direct {v11, v12}, Ly1/z0;-><init>(Lr1/q0;)V

    .line 242
    .line 243
    .line 244
    aput-object v11, v9, v10

    .line 245
    .line 246
    add-int/2addr v10, v4

    .line 247
    goto :goto_9

    .line 248
    :cond_8
    new-instance v8, Ly1/a1;

    .line 249
    .line 250
    iget-object v5, v5, Ly1/a1;->i:[Ljava/lang/Object;

    .line 251
    .line 252
    invoke-direct {v8, v9, v5, v6}, Ly1/a1;-><init>([Lr1/q0;[Ljava/lang/Object;Lf2/e1;)V

    .line 253
    .line 254
    .line 255
    iget v5, v7, Lf2/c0;->b:I

    .line 256
    .line 257
    const/4 v6, -0x1

    .line 258
    if-eq v5, v6, :cond_9

    .line 259
    .line 260
    iget-object v5, v7, Lf2/c0;->a:Ljava/lang/Object;

    .line 261
    .line 262
    iget-object v6, v1, Ly1/f0;->l:Lr1/o0;

    .line 263
    .line 264
    invoke-virtual {v8, v5, v6}, Ly1/a1;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 265
    .line 266
    .line 267
    iget-object v5, v1, Ly1/f0;->l:Lr1/o0;

    .line 268
    .line 269
    iget v5, v5, Lr1/o0;->c:I

    .line 270
    .line 271
    iget-object v6, v1, Ly1/f0;->k:Lr1/p0;

    .line 272
    .line 273
    const-wide/16 v9, 0x0

    .line 274
    .line 275
    invoke-virtual {v8, v5, v6, v9, v10}, Ly1/a1;->m(ILr1/p0;J)Lr1/p0;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v6}, Lr1/p0;->a()Z

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    if-eqz v5, :cond_9

    .line 283
    .line 284
    new-instance v5, Lf2/c0;

    .line 285
    .line 286
    iget-object v6, v7, Lf2/c0;->a:Ljava/lang/Object;

    .line 287
    .line 288
    iget-wide v9, v7, Lf2/c0;->d:J

    .line 289
    .line 290
    invoke-direct {v5, v6, v9, v10}, Lf2/c0;-><init>(Ljava/lang/Object;J)V

    .line 291
    .line 292
    .line 293
    move-object/from16 v23, v5

    .line 294
    .line 295
    :goto_a
    move-object v11, v8

    .line 296
    goto :goto_b

    .line 297
    :cond_9
    move-object/from16 v23, v7

    .line 298
    .line 299
    goto :goto_a

    .line 300
    :cond_a
    move-object v11, v5

    .line 301
    move-object/from16 v23, v7

    .line 302
    .line 303
    :goto_b
    new-instance v5, Ly1/v0;

    .line 304
    .line 305
    iget-object v6, v1, Ly1/f0;->K:Ly1/v0;

    .line 306
    .line 307
    iget v7, v6, Ly1/v0;->e:I

    .line 308
    .line 309
    if-eqz p4, :cond_b

    .line 310
    .line 311
    move-object/from16 v18, v3

    .line 312
    .line 313
    goto :goto_c

    .line 314
    :cond_b
    iget-object v8, v6, Ly1/v0;->f:Ly1/k;

    .line 315
    .line 316
    move-object/from16 v18, v8

    .line 317
    .line 318
    :goto_c
    if-eqz v0, :cond_c

    .line 319
    .line 320
    sget-object v8, Lf2/j1;->d:Lf2/j1;

    .line 321
    .line 322
    :goto_d
    move-object/from16 v20, v8

    .line 323
    .line 324
    goto :goto_e

    .line 325
    :cond_c
    iget-object v8, v6, Ly1/v0;->h:Lf2/j1;

    .line 326
    .line 327
    goto :goto_d

    .line 328
    :goto_e
    if-eqz v0, :cond_d

    .line 329
    .line 330
    iget-object v8, v1, Ly1/f0;->e:Lh2/r;

    .line 331
    .line 332
    :goto_f
    move-object/from16 v21, v8

    .line 333
    .line 334
    goto :goto_10

    .line 335
    :cond_d
    iget-object v8, v6, Ly1/v0;->i:Lh2/r;

    .line 336
    .line 337
    goto :goto_f

    .line 338
    :goto_10
    if-eqz v0, :cond_e

    .line 339
    .line 340
    sget-object v0, Lu7/g0;->b:Lu7/e0;

    .line 341
    .line 342
    sget-object v0, Lu7/y0;->e:Lu7/y0;

    .line 343
    .line 344
    :goto_11
    move-object/from16 v22, v0

    .line 345
    .line 346
    goto :goto_12

    .line 347
    :cond_e
    iget-object v0, v6, Ly1/v0;->j:Ljava/util/List;

    .line 348
    .line 349
    goto :goto_11

    .line 350
    :goto_12
    iget-boolean v0, v6, Ly1/v0;->l:Z

    .line 351
    .line 352
    move/from16 v24, v0

    .line 353
    .line 354
    iget v0, v6, Ly1/v0;->m:I

    .line 355
    .line 356
    move/from16 v25, v0

    .line 357
    .line 358
    iget v0, v6, Ly1/v0;->n:I

    .line 359
    .line 360
    move/from16 v26, v0

    .line 361
    .line 362
    iget-object v0, v6, Ly1/v0;->o:Lr1/h0;

    .line 363
    .line 364
    move-object/from16 v27, v0

    .line 365
    .line 366
    const/16 v19, 0x0

    .line 367
    .line 368
    const-wide/16 v30, 0x0

    .line 369
    .line 370
    const-wide/16 v34, 0x0

    .line 371
    .line 372
    const/16 v36, 0x0

    .line 373
    .line 374
    move-object v10, v5

    .line 375
    move-object/from16 v12, v23

    .line 376
    .line 377
    move-wide/from16 v15, v32

    .line 378
    .line 379
    move/from16 v17, v7

    .line 380
    .line 381
    move-wide/from16 v28, v32

    .line 382
    .line 383
    invoke-direct/range {v10 .. v36}, Ly1/v0;-><init>(Lr1/q0;Lf2/c0;JJILy1/k;ZLf2/j1;Lh2/r;Ljava/util/List;Lf2/c0;ZIILr1/h0;JJJJZ)V

    .line 384
    .line 385
    .line 386
    iput-object v5, v1, Ly1/f0;->K:Ly1/v0;

    .line 387
    .line 388
    if-eqz p3, :cond_12

    .line 389
    .line 390
    iget-object v0, v1, Ly1/f0;->s:Ly1/n0;

    .line 391
    .line 392
    iget-object v5, v0, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 393
    .line 394
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 395
    .line 396
    .line 397
    move-result v5

    .line 398
    if-nez v5, :cond_10

    .line 399
    .line 400
    new-instance v5, Ljava/util/ArrayList;

    .line 401
    .line 402
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .line 404
    .line 405
    const/4 v6, 0x0

    .line 406
    :goto_13
    iget-object v7, v0, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 407
    .line 408
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 409
    .line 410
    .line 411
    move-result v7

    .line 412
    if-ge v6, v7, :cond_f

    .line 413
    .line 414
    iget-object v7, v0, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 415
    .line 416
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    check-cast v7, Ly1/l0;

    .line 421
    .line 422
    invoke-virtual {v7}, Ly1/l0;->i()V

    .line 423
    .line 424
    .line 425
    add-int/2addr v6, v4

    .line 426
    goto :goto_13

    .line 427
    :cond_f
    iput-object v5, v0, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 428
    .line 429
    iput-object v3, v0, Ly1/n0;->m:Ly1/l0;

    .line 430
    .line 431
    invoke-virtual {v0}, Ly1/n0;->k()V

    .line 432
    .line 433
    .line 434
    :cond_10
    iget-object v3, v1, Ly1/f0;->t:Lm7/l;

    .line 435
    .line 436
    iget-object v0, v3, Lm7/l;->g:Ljava/lang/Object;

    .line 437
    .line 438
    move-object v4, v0

    .line 439
    check-cast v4, Ljava/util/HashMap;

    .line 440
    .line 441
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    if-eqz v0, :cond_11

    .line 454
    .line 455
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    move-object v6, v0

    .line 460
    check-cast v6, Ly1/t0;

    .line 461
    .line 462
    :try_start_2
    iget-object v0, v6, Ly1/t0;->a:Lf2/a;

    .line 463
    .line 464
    iget-object v7, v6, Ly1/t0;->b:Ly1/p0;

    .line 465
    .line 466
    invoke-virtual {v0, v7}, Lf2/a;->n(Lf2/d0;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 467
    .line 468
    .line 469
    goto :goto_15

    .line 470
    :catch_3
    move-exception v0

    .line 471
    const-string v7, "Failed to release child source."

    .line 472
    .line 473
    invoke-static {v7, v0}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 474
    .line 475
    .line 476
    :goto_15
    iget-object v0, v6, Ly1/t0;->a:Lf2/a;

    .line 477
    .line 478
    iget-object v7, v6, Ly1/t0;->c:Ly1/s0;

    .line 479
    .line 480
    invoke-virtual {v0, v7}, Lf2/a;->q(Lf2/i0;)V

    .line 481
    .line 482
    .line 483
    iget-object v0, v6, Ly1/t0;->a:Lf2/a;

    .line 484
    .line 485
    invoke-virtual {v0, v7}, Lf2/a;->p(Lb2/e;)V

    .line 486
    .line 487
    .line 488
    goto :goto_14

    .line 489
    :cond_11
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 490
    .line 491
    .line 492
    iget-object v0, v3, Lm7/l;->h:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast v0, Ljava/util/HashSet;

    .line 495
    .line 496
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 497
    .line 498
    .line 499
    iput-boolean v2, v3, Lm7/l;->a:Z

    .line 500
    .line 501
    :cond_12
    return-void
.end method

.method public final P()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 2
    .line 3
    iget-object v0, v0, Ly1/n0;->i:Ly1/l0;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Ly1/l0;->g:Ly1/m0;

    .line 8
    .line 9
    iget-boolean v0, v0, Ly1/m0;->j:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Ly1/f0;->N:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

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
    iput-boolean v0, p0, Ly1/f0;->O:Z

    .line 21
    .line 22
    return-void
.end method

.method public final Q(JZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 2
    .line 3
    iget-object v1, v0, Ly1/n0;->i:Ly1/l0;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-wide v2, 0xe8d4a51000L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    :goto_0
    add-long/2addr p1, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-wide v2, v1, Ly1/l0;->p:J

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :goto_1
    iput-wide p1, p0, Ly1/f0;->M0:J

    .line 18
    .line 19
    iget-object v2, p0, Ly1/f0;->n:Ly1/h;

    .line 20
    .line 21
    iget-object v2, v2, Ly1/h;->a:Lba/n;

    .line 22
    .line 23
    invoke-virtual {v2, p1, p2}, Lba/n;->d(J)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Ly1/f0;->a:[Lh4/m0;

    .line 27
    .line 28
    array-length p2, p1

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    :goto_2
    if-ge v3, p2, :cond_2

    .line 32
    .line 33
    aget-object v4, p1, v3

    .line 34
    .line 35
    iget-wide v5, p0, Ly1/f0;->M0:J

    .line 36
    .line 37
    invoke-virtual {v4, v1}, Lh4/m0;->d(Ly1/l0;)Ly1/a;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v4, v5, v6, v2, p3}, Ly1/a;->z(JZZ)V

    .line 44
    .line 45
    .line 46
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    iget-object p1, v0, Ly1/n0;->i:Ly1/l0;

    .line 50
    .line 51
    :goto_3
    if-eqz p1, :cond_5

    .line 52
    .line 53
    iget-object p2, p1, Ly1/l0;->o:Lh2/r;

    .line 54
    .line 55
    iget-object p2, p2, Lh2/r;->c:[Lh2/p;

    .line 56
    .line 57
    array-length p3, p2

    .line 58
    const/4 v0, 0x0

    .line 59
    :goto_4
    if-ge v0, p3, :cond_4

    .line 60
    .line 61
    aget-object v1, p2, v0

    .line 62
    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-interface {v1}, Lh2/p;->j()V

    .line 66
    .line 67
    .line 68
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_4

    .line 71
    :cond_4
    iget-object p1, p1, Ly1/l0;->m:Ly1/l0;

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_5
    return-void
.end method

.method public final R(Lr1/q0;Lr1/q0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lr1/q0;->p()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lr1/q0;->p()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Ly1/f0;->p:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    add-int/lit8 p2, p2, -0x1

    .line 21
    .line 22
    if-gez p2, :cond_1

    .line 23
    .line 24
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lg/b;->t(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    throw p1
.end method

.method public final U(J)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Ly1/f0;->F:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Ly1/f0;->E:Ly1/d1;

    .line 9
    .line 10
    iget-boolean v1, v1, Ly1/d1;->d:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    const-wide/16 v3, 0x3e8

    .line 18
    .line 19
    sget-wide v5, Ly1/f0;->W0:J

    .line 20
    .line 21
    const/4 v7, 0x3

    .line 22
    if-eqz v1, :cond_6

    .line 23
    .line 24
    iget-object v1, v0, Ly1/f0;->K:Ly1/v0;

    .line 25
    .line 26
    iget v1, v1, Ly1/v0;->e:I

    .line 27
    .line 28
    if-ne v1, v7, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-wide v3, v5

    .line 32
    :goto_1
    iget-object v1, v0, Ly1/f0;->a:[Lh4/m0;

    .line 33
    .line 34
    array-length v7, v1

    .line 35
    :goto_2
    if-ge v2, v7, :cond_4

    .line 36
    .line 37
    aget-object v8, v1, v2

    .line 38
    .line 39
    iget-wide v9, v0, Ly1/f0;->M0:J

    .line 40
    .line 41
    iget-wide v11, v0, Ly1/f0;->N0:J

    .line 42
    .line 43
    iget-object v13, v8, Lh4/m0;->e:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v13, Ly1/a;

    .line 46
    .line 47
    invoke-static {v13}, Lh4/m0;->h(Ly1/a;)Z

    .line 48
    .line 49
    .line 50
    move-result v14

    .line 51
    if-eqz v14, :cond_2

    .line 52
    .line 53
    invoke-virtual {v13, v9, v10, v11, v12}, Ly1/a;->h(JJ)J

    .line 54
    .line 55
    .line 56
    move-result-wide v13

    .line 57
    goto :goto_3

    .line 58
    :cond_2
    const-wide v13, 0x7fffffffffffffffL

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :goto_3
    iget-object v8, v8, Lh4/m0;->f:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v8, Ly1/a;

    .line 66
    .line 67
    if-eqz v8, :cond_3

    .line 68
    .line 69
    iget v15, v8, Ly1/a;->h:I

    .line 70
    .line 71
    if-eqz v15, :cond_3

    .line 72
    .line 73
    invoke-virtual {v8, v9, v10, v11, v12}, Ly1/a;->h(JJ)J

    .line 74
    .line 75
    .line 76
    move-result-wide v8

    .line 77
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide v13

    .line 81
    :cond_3
    invoke-static {v13, v14}, Lu1/f0;->R(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v8

    .line 85
    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    iget-object v1, v0, Ly1/f0;->K:Ly1/v0;

    .line 93
    .line 94
    invoke-virtual {v1}, Ly1/v0;->m()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_8

    .line 99
    .line 100
    iget-object v1, v0, Ly1/f0;->s:Ly1/n0;

    .line 101
    .line 102
    iget-object v1, v1, Ly1/n0;->i:Ly1/l0;

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    iget-object v1, v1, Ly1/l0;->m:Ly1/l0;

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_5
    const/4 v1, 0x0

    .line 110
    :goto_4
    if-eqz v1, :cond_8

    .line 111
    .line 112
    iget-wide v7, v0, Ly1/f0;->M0:J

    .line 113
    .line 114
    long-to-float v2, v7

    .line 115
    invoke-static {v3, v4}, Lu1/f0;->G(J)J

    .line 116
    .line 117
    .line 118
    move-result-wide v7

    .line 119
    long-to-float v7, v7

    .line 120
    iget-object v8, v0, Ly1/f0;->K:Ly1/v0;

    .line 121
    .line 122
    iget-object v8, v8, Ly1/v0;->o:Lr1/h0;

    .line 123
    .line 124
    iget v8, v8, Lr1/h0;->a:F

    .line 125
    .line 126
    mul-float v7, v7, v8

    .line 127
    .line 128
    add-float/2addr v7, v2

    .line 129
    invoke-virtual {v1}, Ly1/l0;->e()J

    .line 130
    .line 131
    .line 132
    move-result-wide v1

    .line 133
    long-to-float v1, v1

    .line 134
    cmpl-float v1, v7, v1

    .line 135
    .line 136
    if-ltz v1, :cond_8

    .line 137
    .line 138
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 139
    .line 140
    .line 141
    move-result-wide v3

    .line 142
    goto :goto_5

    .line 143
    :cond_6
    iget-object v1, v0, Ly1/f0;->K:Ly1/v0;

    .line 144
    .line 145
    iget v1, v1, Ly1/v0;->e:I

    .line 146
    .line 147
    if-ne v1, v7, :cond_7

    .line 148
    .line 149
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->r0()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_7

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_7
    move-wide v3, v5

    .line 157
    :cond_8
    :goto_5
    add-long v1, p1, v3

    .line 158
    .line 159
    iget-object v3, v0, Ly1/f0;->h:Lu1/b0;

    .line 160
    .line 161
    iget-object v3, v3, Lu1/b0;->a:Landroid/os/Handler;

    .line 162
    .line 163
    const/4 v4, 0x2

    .line 164
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public final V(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 2
    .line 3
    iget-object v0, v0, Ly1/n0;->i:Ly1/l0;

    .line 4
    .line 5
    iget-object v0, v0, Ly1/l0;->g:Ly1/m0;

    .line 6
    .line 7
    iget-object v0, v0, Ly1/m0;->a:Lf2/c0;

    .line 8
    .line 9
    iget-object v1, p0, Ly1/f0;->K:Ly1/v0;

    .line 10
    .line 11
    iget-wide v3, v1, Ly1/v0;->s:J

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v1, p0

    .line 16
    move-object v2, v0

    .line 17
    invoke-virtual/range {v1 .. v6}, Ly1/f0;->X(Lf2/c0;JZZ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    iget-object v1, p0, Ly1/f0;->K:Ly1/v0;

    .line 22
    .line 23
    iget-wide v1, v1, Ly1/v0;->s:J

    .line 24
    .line 25
    cmp-long v5, v3, v1

    .line 26
    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Ly1/f0;->K:Ly1/v0;

    .line 30
    .line 31
    iget-wide v5, v1, Ly1/v0;->c:J

    .line 32
    .line 33
    iget-wide v7, v1, Ly1/v0;->d:J

    .line 34
    .line 35
    const/4 v10, 0x5

    .line 36
    move-object v1, p0

    .line 37
    move-object v2, v0

    .line 38
    move v9, p1

    .line 39
    invoke-virtual/range {v1 .. v10}, Ly1/f0;->y(Lf2/c0;JJJZI)Ly1/v0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final W(Ly1/e0;)V
    .locals 21

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-boolean v1, v11, Ly1/f0;->G:Z

    .line 6
    .line 7
    const/4 v8, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, v11, Ly1/f0;->H:Ly1/e0;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget v1, v11, Ly1/f0;->I:I

    .line 15
    .line 16
    add-int/2addr v1, v8

    .line 17
    iput v1, v11, Ly1/f0;->I:I

    .line 18
    .line 19
    iget-object v1, v11, Ly1/f0;->L:Ls3/t;

    .line 20
    .line 21
    invoke-virtual {v1, v8}, Ls3/t;->c(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-object v0, v11, Ly1/f0;->H:Ly1/e0;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v1, v11, Ly1/f0;->L:Ls3/t;

    .line 28
    .line 29
    invoke-virtual {v1, v8}, Ls3/t;->c(I)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v11, Ly1/f0;->K:Ly1/v0;

    .line 33
    .line 34
    iget-object v1, v1, Ly1/v0;->a:Lr1/q0;

    .line 35
    .line 36
    iget v4, v11, Ly1/f0;->T:I

    .line 37
    .line 38
    iget-boolean v5, v11, Ly1/f0;->V:Z

    .line 39
    .line 40
    iget-object v6, v11, Ly1/f0;->k:Lr1/p0;

    .line 41
    .line 42
    iget-object v7, v11, Ly1/f0;->l:Lr1/o0;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    move-object/from16 v2, p1

    .line 46
    .line 47
    invoke-static/range {v1 .. v7}, Ly1/f0;->S(Lr1/q0;Ly1/e0;ZIZLr1/p0;Lr1/o0;)Landroid/util/Pair;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v7, 0x0

    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .line 54
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    iget-object v6, v11, Ly1/f0;->K:Ly1/v0;

    .line 62
    .line 63
    iget-object v6, v6, Ly1/v0;->a:Lr1/q0;

    .line 64
    .line 65
    invoke-virtual {v11, v6}, Ly1/f0;->o(Lr1/q0;)Landroid/util/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v9, Lf2/c0;

    .line 72
    .line 73
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v6, Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v12

    .line 81
    iget-object v6, v11, Ly1/f0;->K:Ly1/v0;

    .line 82
    .line 83
    iget-object v6, v6, Ly1/v0;->a:Lr1/q0;

    .line 84
    .line 85
    invoke-virtual {v6}, Lr1/q0;->p()Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    xor-int/2addr v6, v8

    .line 90
    move v14, v6

    .line 91
    move-wide/from16 v19, v4

    .line 92
    .line 93
    move-wide v4, v12

    .line 94
    move-wide/from16 v12, v19

    .line 95
    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :cond_2
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 99
    .line 100
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v9, Ljava/lang/Long;

    .line 103
    .line 104
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v12

    .line 108
    iget-wide v9, v0, Ly1/e0;->c:J

    .line 109
    .line 110
    cmp-long v14, v9, v4

    .line 111
    .line 112
    if-nez v14, :cond_3

    .line 113
    .line 114
    move-wide v9, v4

    .line 115
    goto :goto_0

    .line 116
    :cond_3
    move-wide v9, v12

    .line 117
    :goto_0
    iget-object v14, v11, Ly1/f0;->s:Ly1/n0;

    .line 118
    .line 119
    iget-object v15, v11, Ly1/f0;->K:Ly1/v0;

    .line 120
    .line 121
    iget-object v15, v15, Ly1/v0;->a:Lr1/q0;

    .line 122
    .line 123
    invoke-virtual {v14, v15, v6, v12, v13}, Ly1/n0;->p(Lr1/q0;Ljava/lang/Object;J)Lf2/c0;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-virtual {v6}, Lf2/c0;->b()Z

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    if-eqz v14, :cond_5

    .line 132
    .line 133
    iget-object v12, v11, Ly1/f0;->K:Ly1/v0;

    .line 134
    .line 135
    iget-object v12, v12, Ly1/v0;->a:Lr1/q0;

    .line 136
    .line 137
    iget-object v13, v6, Lf2/c0;->a:Ljava/lang/Object;

    .line 138
    .line 139
    iget-object v14, v11, Ly1/f0;->l:Lr1/o0;

    .line 140
    .line 141
    invoke-virtual {v12, v13, v14}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 142
    .line 143
    .line 144
    iget-object v12, v11, Ly1/f0;->l:Lr1/o0;

    .line 145
    .line 146
    iget v13, v6, Lf2/c0;->b:I

    .line 147
    .line 148
    invoke-virtual {v12, v13}, Lr1/o0;->e(I)I

    .line 149
    .line 150
    .line 151
    move-result v12

    .line 152
    iget v13, v6, Lf2/c0;->c:I

    .line 153
    .line 154
    if-ne v12, v13, :cond_4

    .line 155
    .line 156
    iget-object v12, v11, Ly1/f0;->l:Lr1/o0;

    .line 157
    .line 158
    iget-object v12, v12, Lr1/o0;->g:Lr1/c;

    .line 159
    .line 160
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    :cond_4
    iget-object v12, v11, Ly1/f0;->l:Lr1/o0;

    .line 164
    .line 165
    iget-object v12, v12, Lr1/o0;->g:Lr1/c;

    .line 166
    .line 167
    iget v13, v6, Lf2/c0;->b:I

    .line 168
    .line 169
    invoke-virtual {v12, v13}, Lr1/c;->a(I)Lr1/a;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 177
    .line 178
    .line 179
    move-result-wide v9

    .line 180
    move-wide v4, v2

    .line 181
    move-wide v12, v9

    .line 182
    const/4 v14, 0x1

    .line 183
    :goto_1
    move-object v9, v6

    .line 184
    goto :goto_3

    .line 185
    :cond_5
    iget-wide v14, v0, Ly1/e0;->c:J

    .line 186
    .line 187
    cmp-long v16, v14, v4

    .line 188
    .line 189
    if-nez v16, :cond_6

    .line 190
    .line 191
    const/4 v14, 0x1

    .line 192
    goto :goto_2

    .line 193
    :cond_6
    const/4 v14, 0x0

    .line 194
    :goto_2
    move-wide v4, v12

    .line 195
    move-wide v12, v9

    .line 196
    goto :goto_1

    .line 197
    :goto_3
    :try_start_0
    iget-object v6, v11, Ly1/f0;->K:Ly1/v0;

    .line 198
    .line 199
    iget-object v6, v6, Ly1/v0;->a:Lr1/q0;

    .line 200
    .line 201
    invoke-virtual {v6}, Lr1/q0;->p()Z

    .line 202
    .line 203
    .line 204
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 205
    if-eqz v6, :cond_7

    .line 206
    .line 207
    :try_start_1
    iput-object v0, v11, Ly1/f0;->t0:Ly1/e0;

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :catchall_0
    move-exception v0

    .line 211
    move-wide v7, v4

    .line 212
    goto/16 :goto_c

    .line 213
    .line 214
    :cond_7
    const/4 v0, 0x4

    .line 215
    if-nez v1, :cond_9

    .line 216
    .line 217
    iget-object v1, v11, Ly1/f0;->K:Ly1/v0;

    .line 218
    .line 219
    iget v1, v1, Ly1/v0;->e:I

    .line 220
    .line 221
    if-eq v1, v8, :cond_8

    .line 222
    .line 223
    invoke-virtual {v11, v0}, Ly1/f0;->n0(I)V

    .line 224
    .line 225
    .line 226
    :cond_8
    invoke-virtual {v11, v7, v8, v7, v8}, Ly1/f0;->O(ZZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .line 228
    .line 229
    :goto_4
    move-wide v7, v4

    .line 230
    goto/16 :goto_a

    .line 231
    .line 232
    :cond_9
    :try_start_2
    iget-object v1, v11, Ly1/f0;->K:Ly1/v0;

    .line 233
    .line 234
    iget-object v1, v1, Ly1/v0;->b:Lf2/c0;

    .line 235
    .line 236
    invoke-virtual {v9, v1}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 240
    if-eqz v1, :cond_e

    .line 241
    .line 242
    :try_start_3
    iget-object v1, v11, Ly1/f0;->s:Ly1/n0;

    .line 243
    .line 244
    iget-object v1, v1, Ly1/n0;->i:Ly1/l0;

    .line 245
    .line 246
    if-eqz v1, :cond_b

    .line 247
    .line 248
    iget-boolean v6, v1, Ly1/l0;->e:Z

    .line 249
    .line 250
    if-eqz v6, :cond_b

    .line 251
    .line 252
    cmp-long v6, v4, v2

    .line 253
    .line 254
    if-eqz v6, :cond_b

    .line 255
    .line 256
    iget-object v1, v1, Ly1/l0;->a:Ljava/lang/Object;

    .line 257
    .line 258
    iget-object v2, v11, Ly1/f0;->k:Lr1/p0;

    .line 259
    .line 260
    iget-wide v2, v2, Lr1/p0;->l:J

    .line 261
    .line 262
    iget-boolean v6, v11, Ly1/f0;->F:Z

    .line 263
    .line 264
    if-eqz v6, :cond_a

    .line 265
    .line 266
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    cmp-long v6, v2, v15

    .line 272
    .line 273
    if-eqz v6, :cond_a

    .line 274
    .line 275
    iget-object v2, v11, Ly1/f0;->E:Ly1/d1;

    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    :cond_a
    iget-object v2, v11, Ly1/f0;->D:Ly1/e1;

    .line 281
    .line 282
    invoke-interface {v1, v4, v5, v2}, Lf2/a0;->k(JLy1/e1;)J

    .line 283
    .line 284
    .line 285
    move-result-wide v1

    .line 286
    goto :goto_5

    .line 287
    :cond_b
    move-wide v1, v4

    .line 288
    :goto_5
    invoke-static {v1, v2}, Lu1/f0;->R(J)J

    .line 289
    .line 290
    .line 291
    move-result-wide v15

    .line 292
    iget-object v3, v11, Ly1/f0;->K:Ly1/v0;

    .line 293
    .line 294
    iget-wide v7, v3, Ly1/v0;->s:J

    .line 295
    .line 296
    invoke-static {v7, v8}, Lu1/f0;->R(J)J

    .line 297
    .line 298
    .line 299
    move-result-wide v6

    .line 300
    cmp-long v3, v15, v6

    .line 301
    .line 302
    if-nez v3, :cond_d

    .line 303
    .line 304
    iget-object v3, v11, Ly1/f0;->K:Ly1/v0;

    .line 305
    .line 306
    iget v6, v3, Ly1/v0;->e:I

    .line 307
    .line 308
    const/4 v7, 0x2

    .line 309
    if-eq v6, v7, :cond_c

    .line 310
    .line 311
    const/4 v7, 0x3

    .line 312
    if-ne v6, v7, :cond_d

    .line 313
    .line 314
    :cond_c
    iget-wide v7, v3, Ly1/v0;->s:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    .line 316
    const/4 v10, 0x2

    .line 317
    move-object/from16 v1, p0

    .line 318
    .line 319
    move-object v2, v9

    .line 320
    move-wide v3, v7

    .line 321
    move-wide v5, v12

    .line 322
    move v9, v14

    .line 323
    invoke-virtual/range {v1 .. v10}, Ly1/f0;->y(Lf2/c0;JJJZI)Ly1/v0;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    iput-object v0, v11, Ly1/f0;->K:Ly1/v0;

    .line 328
    .line 329
    return-void

    .line 330
    :cond_d
    move-wide v6, v1

    .line 331
    goto :goto_6

    .line 332
    :cond_e
    move-wide v6, v4

    .line 333
    :goto_6
    :try_start_4
    iget-object v1, v11, Ly1/f0;->K:Ly1/v0;

    .line 334
    .line 335
    iget v1, v1, Ly1/v0;->e:I

    .line 336
    .line 337
    if-ne v1, v0, :cond_f

    .line 338
    .line 339
    const/4 v0, 0x1

    .line 340
    goto :goto_7

    .line 341
    :cond_f
    const/4 v0, 0x0

    .line 342
    :goto_7
    iget-object v1, v11, Ly1/f0;->s:Ly1/n0;

    .line 343
    .line 344
    iget-object v2, v1, Ly1/n0;->i:Ly1/l0;

    .line 345
    .line 346
    iget-object v1, v1, Ly1/n0;->j:Ly1/l0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 347
    .line 348
    if-eq v2, v1, :cond_10

    .line 349
    .line 350
    const/4 v8, 0x1

    .line 351
    goto :goto_8

    .line 352
    :cond_10
    const/4 v8, 0x0

    .line 353
    :goto_8
    move-object/from16 v1, p0

    .line 354
    .line 355
    move-object v2, v9

    .line 356
    move-wide v15, v4

    .line 357
    move-wide v3, v6

    .line 358
    move v5, v8

    .line 359
    move v6, v0

    .line 360
    :try_start_5
    invoke-virtual/range {v1 .. v6}, Ly1/f0;->X(Lf2/c0;JZZ)J

    .line 361
    .line 362
    .line 363
    move-result-wide v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 364
    cmp-long v0, v15, v17

    .line 365
    .line 366
    if-eqz v0, :cond_11

    .line 367
    .line 368
    const/4 v8, 0x1

    .line 369
    goto :goto_9

    .line 370
    :cond_11
    const/4 v8, 0x0

    .line 371
    :goto_9
    or-int v10, v14, v8

    .line 372
    .line 373
    :try_start_6
    iget-object v0, v11, Ly1/f0;->K:Ly1/v0;

    .line 374
    .line 375
    iget-object v4, v0, Ly1/v0;->a:Lr1/q0;

    .line 376
    .line 377
    iget-object v5, v0, Ly1/v0;->b:Lf2/c0;

    .line 378
    .line 379
    const/4 v8, 0x1

    .line 380
    move-object/from16 v1, p0

    .line 381
    .line 382
    move-object v2, v4

    .line 383
    move-object v3, v9

    .line 384
    move-wide v6, v12

    .line 385
    invoke-virtual/range {v1 .. v8}, Ly1/f0;->C0(Lr1/q0;Lf2/c0;Lr1/q0;Lf2/c0;JZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 386
    .line 387
    .line 388
    move v14, v10

    .line 389
    move-wide/from16 v7, v17

    .line 390
    .line 391
    :goto_a
    const/4 v10, 0x2

    .line 392
    move-object/from16 v1, p0

    .line 393
    .line 394
    move-object v2, v9

    .line 395
    move-wide v3, v7

    .line 396
    move-wide v5, v12

    .line 397
    move v9, v14

    .line 398
    invoke-virtual/range {v1 .. v10}, Ly1/f0;->y(Lf2/c0;JJJZI)Ly1/v0;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    iput-object v0, v11, Ly1/f0;->K:Ly1/v0;

    .line 403
    .line 404
    return-void

    .line 405
    :catchall_1
    move-exception v0

    .line 406
    move v14, v10

    .line 407
    move-wide/from16 v7, v17

    .line 408
    .line 409
    goto :goto_c

    .line 410
    :catchall_2
    move-exception v0

    .line 411
    :goto_b
    move-wide v7, v15

    .line 412
    goto :goto_c

    .line 413
    :catchall_3
    move-exception v0

    .line 414
    move-wide v15, v4

    .line 415
    goto :goto_b

    .line 416
    :goto_c
    const/4 v10, 0x2

    .line 417
    move-object/from16 v1, p0

    .line 418
    .line 419
    move-object v2, v9

    .line 420
    move-wide v3, v7

    .line 421
    move-wide v5, v12

    .line 422
    move v9, v14

    .line 423
    invoke-virtual/range {v1 .. v10}, Ly1/f0;->y(Lf2/c0;JJJZI)Ly1/v0;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    iput-object v1, v11, Ly1/f0;->K:Ly1/v0;

    .line 428
    .line 429
    goto :goto_e

    .line 430
    :goto_d
    throw v0

    .line 431
    :goto_e
    goto :goto_d
.end method

.method public final X(Lf2/c0;JZZ)J
    .locals 9

    .line 1
    invoke-virtual {p0}, Ly1/f0;->v0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Ly1/f0;->D0(ZZ)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-nez p5, :cond_0

    .line 11
    .line 12
    iget-object p5, p0, Ly1/f0;->K:Ly1/v0;

    .line 13
    .line 14
    iget p5, p5, Ly1/v0;->e:I

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    if-ne p5, v3, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, v2}, Ly1/f0;->n0(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p5, p0, Ly1/f0;->s:Ly1/n0;

    .line 23
    .line 24
    iget-object p5, p5, Ly1/n0;->i:Ly1/l0;

    .line 25
    .line 26
    move-object v3, p5

    .line 27
    :goto_0
    if-eqz v3, :cond_3

    .line 28
    .line 29
    iget-object v4, v3, Ly1/l0;->g:Ly1/m0;

    .line 30
    .line 31
    iget-object v4, v4, Ly1/m0;->a:Lf2/c0;

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-object v3, v3, Ly1/l0;->m:Ly1/l0;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    :goto_1
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    if-nez p4, :cond_4

    .line 49
    .line 50
    if-ne p5, v3, :cond_4

    .line 51
    .line 52
    if-eqz v3, :cond_7

    .line 53
    .line 54
    iget-wide p4, v3, Ly1/l0;->p:J

    .line 55
    .line 56
    add-long/2addr p4, p2

    .line 57
    const-wide/16 v6, 0x0

    .line 58
    .line 59
    cmp-long p1, p4, v6

    .line 60
    .line 61
    if-gez p1, :cond_7

    .line 62
    .line 63
    :cond_4
    const/4 p1, 0x0

    .line 64
    :goto_2
    iget-object p4, p0, Ly1/f0;->a:[Lh4/m0;

    .line 65
    .line 66
    array-length p4, p4

    .line 67
    if-ge p1, p4, :cond_5

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ly1/f0;->i(I)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 p1, p1, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    iput-wide v4, p0, Ly1/f0;->T0:J

    .line 76
    .line 77
    if-eqz v3, :cond_7

    .line 78
    .line 79
    :goto_3
    iget-object p1, p0, Ly1/f0;->s:Ly1/n0;

    .line 80
    .line 81
    iget-object p4, p1, Ly1/n0;->i:Ly1/l0;

    .line 82
    .line 83
    if-eq p4, v3, :cond_6

    .line 84
    .line 85
    invoke-virtual {p1}, Ly1/n0;->a()Ly1/l0;

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_6
    invoke-virtual {p1, v3}, Ly1/n0;->n(Ly1/l0;)I

    .line 90
    .line 91
    .line 92
    const-wide p4, 0xe8d4a51000L

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    iput-wide p4, v3, Ly1/l0;->p:J

    .line 98
    .line 99
    iget-object p1, p0, Ly1/f0;->a:[Lh4/m0;

    .line 100
    .line 101
    array-length p1, p1

    .line 102
    new-array p1, p1, [Z

    .line 103
    .line 104
    iget-object p4, p0, Ly1/f0;->s:Ly1/n0;

    .line 105
    .line 106
    iget-object p4, p4, Ly1/n0;->j:Ly1/l0;

    .line 107
    .line 108
    invoke-virtual {p4}, Ly1/l0;->e()J

    .line 109
    .line 110
    .line 111
    move-result-wide p4

    .line 112
    invoke-virtual {p0, p1, p4, p5}, Ly1/f0;->l([ZJ)V

    .line 113
    .line 114
    .line 115
    iput-boolean v1, v3, Ly1/l0;->h:Z

    .line 116
    .line 117
    :cond_7
    invoke-virtual {p0}, Ly1/f0;->h()V

    .line 118
    .line 119
    .line 120
    iget-boolean p1, p0, Ly1/f0;->F:Z

    .line 121
    .line 122
    if-eqz p1, :cond_a

    .line 123
    .line 124
    iget-object p1, p0, Ly1/f0;->a:[Lh4/m0;

    .line 125
    .line 126
    array-length p4, p1

    .line 127
    const/4 p5, 0x0

    .line 128
    :goto_4
    if-ge p5, p4, :cond_a

    .line 129
    .line 130
    aget-object v6, p1, p5

    .line 131
    .line 132
    invoke-virtual {v6}, Lh4/m0;->g()Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_9

    .line 137
    .line 138
    iget-object v6, v6, Lh4/m0;->e:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v6, Ly1/a;

    .line 141
    .line 142
    iget v6, v6, Ly1/a;->b:I

    .line 143
    .line 144
    if-eq v6, v2, :cond_8

    .line 145
    .line 146
    const/4 v7, 0x4

    .line 147
    if-ne v6, v7, :cond_9

    .line 148
    .line 149
    :cond_8
    iput-boolean v1, p0, Ly1/f0;->G:Z

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_9
    add-int/lit8 p5, p5, 0x1

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_a
    :goto_5
    if-eqz v3, :cond_13

    .line 156
    .line 157
    iget-object p1, p0, Ly1/f0;->s:Ly1/n0;

    .line 158
    .line 159
    invoke-virtual {p1, v3}, Ly1/n0;->n(Ly1/l0;)I

    .line 160
    .line 161
    .line 162
    iget-boolean p1, v3, Ly1/l0;->e:Z

    .line 163
    .line 164
    if-nez p1, :cond_b

    .line 165
    .line 166
    iget-object p1, v3, Ly1/l0;->g:Ly1/m0;

    .line 167
    .line 168
    invoke-virtual {p1, p2, p3, v4, v5}, Ly1/m0;->b(JJ)Ly1/m0;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iput-object p1, v3, Ly1/l0;->g:Ly1/m0;

    .line 173
    .line 174
    goto/16 :goto_9

    .line 175
    .line 176
    :cond_b
    iget-boolean p1, v3, Ly1/l0;->f:Z

    .line 177
    .line 178
    if-eqz p1, :cond_12

    .line 179
    .line 180
    iget-boolean p1, p0, Ly1/f0;->F:Z

    .line 181
    .line 182
    if-eqz p1, :cond_11

    .line 183
    .line 184
    iget-object p1, p0, Ly1/f0;->E:Ly1/d1;

    .line 185
    .line 186
    iget-boolean p1, p1, Ly1/d1;->f:Z

    .line 187
    .line 188
    if-eqz p1, :cond_11

    .line 189
    .line 190
    iget-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 191
    .line 192
    iget-object p1, p1, Ly1/v0;->a:Lr1/q0;

    .line 193
    .line 194
    invoke-virtual {p1}, Lr1/q0;->p()Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-nez p1, :cond_11

    .line 199
    .line 200
    iget-object p1, v3, Ly1/l0;->g:Ly1/m0;

    .line 201
    .line 202
    iget-object p1, p1, Ly1/m0;->a:Lf2/c0;

    .line 203
    .line 204
    iget-object p4, p0, Ly1/f0;->K:Ly1/v0;

    .line 205
    .line 206
    iget-object p4, p4, Ly1/v0;->b:Lf2/c0;

    .line 207
    .line 208
    invoke-virtual {p1, p4}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result p1

    .line 212
    if-nez p1, :cond_c

    .line 213
    .line 214
    goto :goto_8

    .line 215
    :cond_c
    iget-wide p4, v3, Ly1/l0;->p:J

    .line 216
    .line 217
    add-long/2addr p4, p2

    .line 218
    iget-object p1, p0, Ly1/f0;->a:[Lh4/m0;

    .line 219
    .line 220
    array-length v4, p1

    .line 221
    const/4 v5, 0x0

    .line 222
    const/4 v6, 0x1

    .line 223
    :goto_6
    if-ge v5, v4, :cond_f

    .line 224
    .line 225
    aget-object v7, p1, v5

    .line 226
    .line 227
    invoke-virtual {v7}, Lh4/m0;->g()Z

    .line 228
    .line 229
    .line 230
    move-result v8

    .line 231
    if-eqz v8, :cond_e

    .line 232
    .line 233
    invoke-virtual {v7, v3}, Lh4/m0;->d(Ly1/l0;)Ly1/a;

    .line 234
    .line 235
    .line 236
    move-result-object v7

    .line 237
    if-eqz v7, :cond_d

    .line 238
    .line 239
    invoke-virtual {v7, p4, p5}, Ly1/a;->D(J)Z

    .line 240
    .line 241
    .line 242
    move-result v7

    .line 243
    if-eqz v7, :cond_d

    .line 244
    .line 245
    const/4 v7, 0x1

    .line 246
    goto :goto_7

    .line 247
    :cond_d
    const/4 v7, 0x0

    .line 248
    :goto_7
    and-int/2addr v6, v7

    .line 249
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_f
    if-nez v6, :cond_10

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_10
    iget-object p1, v3, Ly1/l0;->a:Ljava/lang/Object;

    .line 256
    .line 257
    iget-object p4, p0, Ly1/f0;->K:Ly1/v0;

    .line 258
    .line 259
    iget-wide p4, p4, Ly1/v0;->s:J

    .line 260
    .line 261
    sget-object v4, Ly1/e1;->c:Ly1/e1;

    .line 262
    .line 263
    invoke-interface {p1, p4, p5, v4}, Lf2/a0;->k(JLy1/e1;)J

    .line 264
    .line 265
    .line 266
    move-result-wide p4

    .line 267
    iget-object p1, v3, Ly1/l0;->a:Ljava/lang/Object;

    .line 268
    .line 269
    invoke-interface {p1, p2, p3, v4}, Lf2/a0;->k(JLy1/e1;)J

    .line 270
    .line 271
    .line 272
    move-result-wide v4

    .line 273
    cmp-long p1, p4, v4

    .line 274
    .line 275
    if-nez p1, :cond_11

    .line 276
    .line 277
    const/4 v1, 0x0

    .line 278
    goto :goto_9

    .line 279
    :cond_11
    :goto_8
    iget-object p1, v3, Ly1/l0;->a:Ljava/lang/Object;

    .line 280
    .line 281
    invoke-interface {p1, p2, p3}, Lf2/a0;->h(J)J

    .line 282
    .line 283
    .line 284
    move-result-wide p2

    .line 285
    iget-object p1, v3, Ly1/l0;->a:Ljava/lang/Object;

    .line 286
    .line 287
    iget-wide p4, p0, Ly1/f0;->m:J

    .line 288
    .line 289
    sub-long p4, p2, p4

    .line 290
    .line 291
    invoke-interface {p1, p4, p5}, Lf2/a0;->i(J)V

    .line 292
    .line 293
    .line 294
    :cond_12
    :goto_9
    invoke-virtual {p0, p2, p3, v1}, Ly1/f0;->Q(JZ)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0}, Ly1/f0;->C()V

    .line 298
    .line 299
    .line 300
    goto :goto_a

    .line 301
    :cond_13
    iget-object p1, p0, Ly1/f0;->s:Ly1/n0;

    .line 302
    .line 303
    invoke-virtual {p1}, Ly1/n0;->b()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0, p2, p3, v1}, Ly1/f0;->Q(JZ)V

    .line 307
    .line 308
    .line 309
    :goto_a
    invoke-virtual {p0, v0}, Ly1/f0;->u(Z)V

    .line 310
    .line 311
    .line 312
    iget-object p1, p0, Ly1/f0;->h:Lu1/b0;

    .line 313
    .line 314
    invoke-virtual {p1, v2}, Lu1/b0;->f(I)Z

    .line 315
    .line 316
    .line 317
    return-wide p2
.end method

.method public final Y(Ly1/y0;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Ly1/y0;->e:Landroid/os/Looper;

    .line 5
    .line 6
    iget-object v1, p0, Ly1/f0;->j:Landroid/os/Looper;

    .line 7
    .line 8
    iget-object v2, p0, Ly1/f0;->h:Lu1/b0;

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    monitor-exit p1

    .line 14
    const/4 v0, 0x1

    .line 15
    :try_start_0
    iget-object v1, p1, Ly1/y0;->a:Ly1/x0;

    .line 16
    .line 17
    iget v3, p1, Ly1/y0;->c:I

    .line 18
    .line 19
    iget-object v4, p1, Ly1/y0;->d:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-interface {v1, v3, v4}, Ly1/x0;->d(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ly1/y0;->a(Z)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 28
    .line 29
    iget p1, p1, Ly1/v0;->e:I

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    const/4 v1, 0x2

    .line 33
    if-eq p1, v0, :cond_0

    .line 34
    .line 35
    if-ne p1, v1, :cond_2

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v2, v1}, Lu1/b0;->f(I)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    invoke-virtual {p1, v0}, Ly1/y0;->a(Z)V

    .line 43
    .line 44
    .line 45
    throw v1

    .line 46
    :cond_1
    const/16 v0, 0xf

    .line 47
    .line 48
    invoke-virtual {v2, v0, p1}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lu1/a0;->b()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method public final Z(Ly1/y0;)V
    .locals 3

    .line 1
    iget-object v0, p1, Ly1/y0;->e:Landroid/os/Looper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string v0, "Trying to send message on a dead thread."

    .line 14
    .line 15
    invoke-static {v0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Ly1/y0;->a(Z)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    iget-object v2, p0, Ly1/f0;->q:Lu1/z;

    .line 25
    .line 26
    invoke-virtual {v2, v0, v1}, Lu1/z;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lu1/b0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Ls1/f;

    .line 31
    .line 32
    const/16 v2, 0x10

    .line 33
    .line 34
    invoke-direct {v1, p0, v2, p1}, Ls1/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lu1/b0;->d(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final a(Ly1/c0;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/f0;->L:Ls3/t;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ls3/t;->c(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iget-object v1, p0, Ly1/f0;->t:Lm7/l;

    .line 9
    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    iget-object p2, v1, Lm7/l;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    :cond_0
    iget-object v0, p1, Ly1/c0;->a:Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object p1, p1, Ly1/c0;->b:Lf2/e1;

    .line 23
    .line 24
    invoke-virtual {v1, p2, v0, p1}, Lm7/l;->a(ILjava/util/ArrayList;Lf2/e1;)Lr1/q0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-virtual {p0, p1, p2}, Ly1/f0;->v(Lr1/q0;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final a0(Lr1/d;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Ly1/f0;->d:Lh2/q;

    .line 2
    .line 3
    check-cast v0, Lh2/n;

    .line 4
    .line 5
    iget-object v1, v0, Lh2/n;->i:Lr1/d;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lr1/d;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-object p1, v0, Lh2/n;->i:Lr1/d;

    .line 15
    .line 16
    invoke-virtual {v0}, Lh2/n;->l()V

    .line 17
    .line 18
    .line 19
    :goto_0
    if-eqz p2, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_1
    iget-object p2, p0, Ly1/f0;->B:Ls1/b;

    .line 24
    .line 25
    iget-object v0, p2, Ls1/b;->d:Lr1/d;

    .line 26
    .line 27
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_6

    .line 32
    .line 33
    iput-object p1, p2, Ls1/b;->d:Lr1/d;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    const/4 v1, 0x1

    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    :goto_2
    :pswitch_0
    const/4 v2, 0x0

    .line 40
    goto :goto_4

    .line 41
    :cond_2
    const/4 v2, 0x3

    .line 42
    const/4 v3, 0x2

    .line 43
    iget v4, p1, Lr1/d;->b:I

    .line 44
    .line 45
    packed-switch v4, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    :pswitch_1
    const-string p1, "Unidentified audio usage: "

    .line 49
    .line 50
    invoke-static {v4, p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :pswitch_2
    const/4 v2, 0x4

    .line 55
    goto :goto_4

    .line 56
    :pswitch_3
    iget p1, p1, Lr1/d;->a:I

    .line 57
    .line 58
    if-ne p1, v1, :cond_3

    .line 59
    .line 60
    :pswitch_4
    const/4 v2, 0x2

    .line 61
    goto :goto_4

    .line 62
    :goto_3
    :pswitch_5
    const/4 v2, 0x1

    .line 63
    goto :goto_4

    .line 64
    :pswitch_6
    const-string p1, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    .line 65
    .line 66
    invoke-static {p1}, Lu1/a;->p(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    :goto_4
    :pswitch_7
    iput v2, p2, Ls1/b;->f:I

    .line 71
    .line 72
    if-eq v2, v1, :cond_4

    .line 73
    .line 74
    if-nez v2, :cond_5

    .line 75
    .line 76
    :cond_4
    const/4 v0, 0x1

    .line 77
    :cond_5
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    .line 78
    .line 79
    invoke-static {p1, v0}, La9/o;->i(Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    :cond_6
    iget-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 83
    .line 84
    iget-boolean v0, p1, Ly1/v0;->l:Z

    .line 85
    .line 86
    iget v1, p1, Ly1/v0;->e:I

    .line 87
    .line 88
    invoke-virtual {p2, v1, v0}, Ls1/b;->d(IZ)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    iget v1, p1, Ly1/v0;->n:I

    .line 93
    .line 94
    iget p1, p1, Ly1/v0;->m:I

    .line 95
    .line 96
    invoke-virtual {p0, p2, v1, p1, v0}, Ly1/f0;->A0(IIIZ)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Lf2/d1;)V
    .locals 2

    .line 1
    check-cast p1, Lf2/a0;

    .line 2
    .line 3
    iget-object v0, p0, Ly1/f0;->h:Lu1/b0;

    .line 4
    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lu1/a0;->b()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final b0(ZLu1/e;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ly1/f0;->X:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Ly1/f0;->X:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Ly1/f0;->a:[Lh4/m0;

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    invoke-virtual {v2}, Lh4/m0;->k()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Lu1/e;->e()Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final c(JJLr1/p;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Ly1/f0;->G:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Ly1/f0;->h:Lu1/b0;

    .line 6
    .line 7
    const/16 p2, 0x25

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lu1/b0;->a(I)Lu1/a0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lu1/a0;->b()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final c0(Ly1/y;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ly1/f0;->a:[Lh4/m0;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_2

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    iget-object v4, v3, Lh4/m0;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Ly1/a;

    .line 12
    .line 13
    iget v5, v4, Ly1/a;->b:I

    .line 14
    .line 15
    const/4 v6, 0x4

    .line 16
    if-eq v5, v6, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/16 v5, 0x17

    .line 20
    .line 21
    invoke-interface {v4, v5, p1}, Ly1/x0;->d(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, v3, Lh4/m0;->f:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Ly1/a;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-interface {v3, v5, p1}, Ly1/x0;->d(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-void
.end method

.method public final d(Lf2/a0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/f0;->h:Lu1/b0;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lu1/a0;->b()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final d0(Ly1/c0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ly1/f0;->L:Ls3/t;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ls3/t;->c(I)V

    .line 5
    .line 6
    .line 7
    iget v0, p1, Ly1/c0;->c:I

    .line 8
    .line 9
    iget-object v1, p1, Ly1/c0;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    iget-object v3, p1, Ly1/c0;->b:Lf2/e1;

    .line 13
    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    new-instance v0, Ly1/e0;

    .line 17
    .line 18
    new-instance v2, Ly1/a1;

    .line 19
    .line 20
    invoke-direct {v2, v1, v3}, Ly1/a1;-><init>(Ljava/util/List;Lf2/e1;)V

    .line 21
    .line 22
    .line 23
    iget v4, p1, Ly1/c0;->c:I

    .line 24
    .line 25
    iget-wide v5, p1, Ly1/c0;->d:J

    .line 26
    .line 27
    invoke-direct {v0, v2, v4, v5, v6}, Ly1/e0;-><init>(Lr1/q0;IJ)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Ly1/f0;->t0:Ly1/e0;

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Ly1/f0;->t:Lm7/l;

    .line 33
    .line 34
    iget-object v0, p1, Lm7/l;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-virtual {p1, v4, v2}, Lm7/l;->i(II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p1, v0, v1, v3}, Lm7/l;->a(ILjava/util/ArrayList;Lf2/e1;)Lr1/q0;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1, v4}, Ly1/f0;->v(Lr1/q0;Z)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Ly1/f0;->a:[Lh4/m0;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_2

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    iget-boolean v4, p0, Ly1/f0;->F:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    iget-object v4, p0, Ly1/f0;->E:Ly1/d1;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 v4, 0x0

    .line 17
    :goto_1
    iget-object v5, v3, Lh4/m0;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v5, Ly1/a;

    .line 20
    .line 21
    const/16 v6, 0x12

    .line 22
    .line 23
    invoke-interface {v5, v6, v4}, Ly1/x0;->d(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, v3, Lh4/m0;->f:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v3, Ly1/a;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-interface {v3, v6, v4}, Ly1/x0;->d(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return-void
.end method

.method public final e0(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Ly1/f0;->N:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Ly1/f0;->P()V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Ly1/f0;->O:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Ly1/f0;->s:Ly1/n0;

    .line 11
    .line 12
    iget-object v0, p1, Ly1/n0;->j:Ly1/l0;

    .line 13
    .line 14
    iget-object p1, p1, Ly1/n0;->i:Ly1/l0;

    .line 15
    .line 16
    if-eq v0, p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Ly1/f0;->V(Z)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Ly1/f0;->u(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Ly1/f0;->A:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Ly1/f0;->a:[Lh4/m0;

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v3, v2, :cond_2

    .line 12
    .line 13
    aget-object v4, v0, v3

    .line 14
    .line 15
    invoke-virtual {v4}, Lh4/m0;->f()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    return v1
.end method

.method public final f0(Lr1/h0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/f0;->h:Lu1/b0;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lu1/b0;->e(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ly1/f0;->n:Ly1/h;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ly1/h;->e(Lr1/h0;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ly1/h;->c()Lr1/h0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget v0, p1, Lr1/h0;->a:F

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {p0, p1, v0, v1, v1}, Ly1/f0;->x(Lr1/h0;FZZ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly1/f0;->N()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Ly1/f0;->V(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g0(Ly1/n;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ly1/f0;->S0:Ly1/n;

    .line 2
    .line 3
    iget-object v0, p0, Ly1/f0;->K:Ly1/v0;

    .line 4
    .line 5
    iget-object v0, v0, Ly1/v0;->a:Lr1/q0;

    .line 6
    .line 7
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p1, v0, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    iget-object v2, v0, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ge v1, v2, :cond_0

    .line 36
    .line 37
    iget-object v2, v0, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ly1/l0;

    .line 44
    .line 45
    invoke-virtual {v2}, Ly1/l0;->i()V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iput-object p1, v0, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    iput-object p1, v0, Ly1/n0;->m:Ly1/l0;

    .line 55
    .line 56
    invoke-virtual {v0}, Ly1/n0;->k()V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public final h()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Ly1/f0;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Ly1/f0;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_8

    .line 12
    :cond_0
    iget-object v0, p0, Ly1/f0;->a:[Lh4/m0;

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v1, :cond_6

    .line 18
    .line 19
    aget-object v4, v0, v3

    .line 20
    .line 21
    invoke-virtual {v4}, Lh4/m0;->c()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    iget-object v6, p0, Ly1/f0;->n:Ly1/h;

    .line 26
    .line 27
    invoke-virtual {v4}, Lh4/m0;->f()Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-nez v7, :cond_1

    .line 32
    .line 33
    goto :goto_7

    .line 34
    :cond_1
    iget v7, v4, Lh4/m0;->b:I

    .line 35
    .line 36
    const/4 v8, 0x1

    .line 37
    const/4 v9, 0x4

    .line 38
    if-eq v7, v9, :cond_3

    .line 39
    .line 40
    const/4 v10, 0x2

    .line 41
    if-ne v7, v10, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v10, 0x0

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    :goto_1
    const/4 v10, 0x1

    .line 47
    :goto_2
    if-ne v7, v9, :cond_4

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_4
    const/4 v8, 0x0

    .line 51
    :goto_3
    if-eqz v10, :cond_5

    .line 52
    .line 53
    :try_start_0
    iget-object v7, v4, Lh4/m0;->e:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v7, Ly1/a;

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_5
    iget-object v7, v4, Lh4/m0;->f:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v7, Ly1/a;

    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    :goto_4
    invoke-virtual {v4, v7, v6}, Lh4/m0;->a(Ly1/a;Ly1/h;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_5

    .line 69
    :catch_0
    move-exception v6

    .line 70
    const-string v7, "Disable prewarming failed."

    .line 71
    .line 72
    invoke-static {v7, v6}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_5
    :try_start_1
    invoke-virtual {v4, v10}, Lh4/m0;->i(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .line 77
    .line 78
    goto :goto_6

    .line 79
    :catch_1
    move-exception v6

    .line 80
    const-string v7, "Reset prewarming failed."

    .line 81
    .line 82
    invoke-static {v7, v6}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :goto_6
    iput v8, v4, Lh4/m0;->b:I

    .line 86
    .line 87
    :goto_7
    iget v6, p0, Ly1/f0;->h0:I

    .line 88
    .line 89
    invoke-virtual {v4}, Lh4/m0;->c()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    sub-int/2addr v5, v4

    .line 94
    sub-int/2addr v6, v5

    .line 95
    iput v6, p0, Ly1/f0;->h0:I

    .line 96
    .line 97
    add-int/lit8 v3, v3, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    iput-wide v0, p0, Ly1/f0;->T0:J

    .line 106
    .line 107
    :cond_7
    :goto_8
    return-void
.end method

.method public final h0(I)V
    .locals 2

    .line 1
    iput p1, p0, Ly1/f0;->T:I

    .line 2
    .line 3
    iget-object v0, p0, Ly1/f0;->K:Ly1/v0;

    .line 4
    .line 5
    iget-object v0, v0, Ly1/v0;->a:Lr1/q0;

    .line 6
    .line 7
    iget-object v1, p0, Ly1/f0;->s:Ly1/n0;

    .line 8
    .line 9
    iput p1, v1, Ly1/n0;->g:I

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ly1/n0;->r(Lr1/q0;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    and-int/lit8 v0, p1, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Ly1/f0;->V(Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    and-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Ly1/f0;->h()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Ly1/f0;->u(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 17

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v12, "Playback error"

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x4

    .line 9
    const/4 v13, 0x1

    .line 10
    const/16 v4, 0x3e8

    .line 11
    .line 12
    const/4 v14, 0x0

    .line 13
    :try_start_0
    iget v5, v1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    packed-switch v5, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    :pswitch_0
    return v14

    .line 20
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ly1/y;

    .line 23
    .line 24
    invoke-virtual {v11, v1}, Ly1/f0;->c0(Ly1/y;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :catch_0
    move-exception v0

    .line 30
    move-object v1, v0

    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :catch_1
    move-exception v0

    .line 34
    move-object v1, v0

    .line 35
    goto/16 :goto_7

    .line 36
    .line 37
    :catch_2
    move-exception v0

    .line 38
    move-object v1, v0

    .line 39
    goto/16 :goto_8

    .line 40
    .line 41
    :catch_3
    move-exception v0

    .line 42
    move-object v1, v0

    .line 43
    goto/16 :goto_9

    .line 44
    .line 45
    :catch_4
    move-exception v0

    .line 46
    move-object v1, v0

    .line 47
    goto/16 :goto_b

    .line 48
    .line 49
    :catch_5
    move-exception v0

    .line 50
    move-object v1, v0

    .line 51
    goto/16 :goto_c

    .line 52
    .line 53
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v1, Ly1/d1;

    .line 56
    .line 57
    invoke-virtual {v11, v1}, Ly1/f0;->j0(Ly1/d1;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :pswitch_3
    iput-boolean v14, v11, Ly1/f0;->G:Z

    .line 63
    .line 64
    iget-object v1, v11, Ly1/f0;->H:Ly1/e0;

    .line 65
    .line 66
    if-eqz v1, :cond_5

    .line 67
    .line 68
    invoke-virtual {v11, v1}, Ly1/f0;->W(Ly1/e0;)V

    .line 69
    .line 70
    .line 71
    iput-object v6, v11, Ly1/f0;->H:Ly1/e0;

    .line 72
    .line 73
    goto/16 :goto_5

    .line 74
    .line 75
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Ljava/lang/Boolean;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-virtual {v11, v1}, Ly1/f0;->i0(Z)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_5

    .line 87
    .line 88
    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v1, Landroidx/media3/exoplayer/video/x;

    .line 91
    .line 92
    invoke-virtual {v11, v1}, Ly1/f0;->o0(Landroidx/media3/exoplayer/video/x;)V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_5

    .line 96
    .line 97
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->r()V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_5

    .line 101
    .line 102
    :pswitch_7
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 103
    .line 104
    invoke-virtual {v11, v1}, Ly1/f0;->q(I)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_5

    .line 108
    .line 109
    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v1, Ljava/lang/Float;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {v11, v1}, Ly1/f0;->q0(F)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_5

    .line 121
    .line 122
    :pswitch_9
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v5, Lr1/d;

    .line 125
    .line 126
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 127
    .line 128
    if-eqz v1, :cond_0

    .line 129
    .line 130
    const/4 v1, 0x1

    .line 131
    goto :goto_0

    .line 132
    :cond_0
    const/4 v1, 0x0

    .line 133
    :goto_0
    invoke-virtual {v11, v5, v1}, Ly1/f0;->a0(Lr1/d;Z)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v1, Landroid/util/Pair;

    .line 141
    .line 142
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 143
    .line 144
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast v1, Lu1/e;

    .line 147
    .line 148
    invoke-virtual {v11, v5, v1}, Ly1/f0;->p0(Ljava/lang/Object;Lu1/e;)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_5

    .line 152
    .line 153
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->J()V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_5

    .line 157
    .line 158
    :pswitch_c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v1, Ly1/n;

    .line 161
    .line 162
    invoke-virtual {v11, v1}, Ly1/f0;->g0(Ly1/n;)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_5

    .line 166
    .line 167
    :pswitch_d
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 168
    .line 169
    iget v6, v1, Landroid/os/Message;->arg2:I

    .line 170
    .line 171
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v1, Ljava/util/List;

    .line 174
    .line 175
    invoke-virtual {v11, v5, v6, v1}, Ly1/f0;->y0(IILjava/util/List;)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_5

    .line 179
    .line 180
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->N()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v11, v13}, Ly1/f0;->V(Z)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_5

    .line 187
    .line 188
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->g()V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_5

    .line 192
    .line 193
    :pswitch_10
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 194
    .line 195
    if-eqz v1, :cond_1

    .line 196
    .line 197
    const/4 v1, 0x1

    .line 198
    goto :goto_1

    .line 199
    :cond_1
    const/4 v1, 0x0

    .line 200
    :goto_1
    invoke-virtual {v11, v1}, Ly1/f0;->e0(Z)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_5

    .line 204
    .line 205
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->H()V

    .line 206
    .line 207
    .line 208
    goto/16 :goto_5

    .line 209
    .line 210
    :pswitch_12
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v1, Lf2/e1;

    .line 213
    .line 214
    invoke-virtual {v11, v1}, Ly1/f0;->m0(Lf2/e1;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_5

    .line 218
    .line 219
    :pswitch_13
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 220
    .line 221
    iget v6, v1, Landroid/os/Message;->arg2:I

    .line 222
    .line 223
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v1, Lf2/e1;

    .line 226
    .line 227
    invoke-virtual {v11, v5, v6, v1}, Ly1/f0;->M(IILf2/e1;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_5

    .line 231
    .line 232
    :pswitch_14
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    .line 234
    invoke-static {v1}, Lg/b;->t(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->I()V

    .line 238
    .line 239
    .line 240
    throw v6

    .line 241
    :pswitch_15
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v5, Ly1/c0;

    .line 244
    .line 245
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 246
    .line 247
    invoke-virtual {v11, v5, v1}, Ly1/f0;->a(Ly1/c0;I)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_5

    .line 251
    .line 252
    :pswitch_16
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v1, Ly1/c0;

    .line 255
    .line 256
    invoke-virtual {v11, v1}, Ly1/f0;->d0(Ly1/c0;)V

    .line 257
    .line 258
    .line 259
    goto/16 :goto_5

    .line 260
    .line 261
    :pswitch_17
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v1, Lr1/h0;

    .line 264
    .line 265
    iget v5, v1, Lr1/h0;->a:F

    .line 266
    .line 267
    invoke-virtual {v11, v1, v5, v13, v14}, Ly1/f0;->x(Lr1/h0;FZZ)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_5

    .line 271
    .line 272
    :pswitch_18
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v1, Ly1/y0;

    .line 275
    .line 276
    invoke-virtual {v11, v1}, Ly1/f0;->Z(Ly1/y0;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_5

    .line 280
    .line 281
    :pswitch_19
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v1, Ly1/y0;

    .line 284
    .line 285
    invoke-virtual {v11, v1}, Ly1/f0;->Y(Ly1/y0;)V

    .line 286
    .line 287
    .line 288
    goto/16 :goto_5

    .line 289
    .line 290
    :pswitch_1a
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 291
    .line 292
    if-eqz v5, :cond_2

    .line 293
    .line 294
    const/4 v5, 0x1

    .line 295
    goto :goto_2

    .line 296
    :cond_2
    const/4 v5, 0x0

    .line 297
    :goto_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v1, Lu1/e;

    .line 300
    .line 301
    invoke-virtual {v11, v5, v1}, Ly1/f0;->b0(ZLu1/e;)V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_5

    .line 305
    .line 306
    :pswitch_1b
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 307
    .line 308
    if-eqz v1, :cond_3

    .line 309
    .line 310
    const/4 v1, 0x1

    .line 311
    goto :goto_3

    .line 312
    :cond_3
    const/4 v1, 0x0

    .line 313
    :goto_3
    invoke-virtual {v11, v1}, Ly1/f0;->l0(Z)V

    .line 314
    .line 315
    .line 316
    goto :goto_5

    .line 317
    :pswitch_1c
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 318
    .line 319
    invoke-virtual {v11, v1}, Ly1/f0;->h0(I)V

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->N()V

    .line 324
    .line 325
    .line 326
    goto :goto_5

    .line 327
    :pswitch_1e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v1, Lf2/a0;

    .line 330
    .line 331
    invoke-virtual {v11, v1}, Ly1/f0;->s(Lf2/a0;)V

    .line 332
    .line 333
    .line 334
    goto :goto_5

    .line 335
    :pswitch_1f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v1, Lf2/a0;

    .line 338
    .line 339
    invoke-virtual {v11, v1}, Ly1/f0;->w(Lf2/a0;)V

    .line 340
    .line 341
    .line 342
    goto :goto_5

    .line 343
    :pswitch_20
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v1, Lu1/e;

    .line 346
    .line 347
    invoke-virtual {v11, v1}, Ly1/f0;->K(Lu1/e;)V

    .line 348
    .line 349
    .line 350
    return v13

    .line 351
    :pswitch_21
    invoke-virtual {v11, v14, v13}, Ly1/f0;->u0(ZZ)V

    .line 352
    .line 353
    .line 354
    goto :goto_5

    .line 355
    :pswitch_22
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v1, Ly1/e1;

    .line 358
    .line 359
    invoke-virtual {v11, v1}, Ly1/f0;->k0(Ly1/e1;)V

    .line 360
    .line 361
    .line 362
    goto :goto_5

    .line 363
    :pswitch_23
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v1, Lr1/h0;

    .line 366
    .line 367
    invoke-virtual {v11, v1}, Ly1/f0;->f0(Lr1/h0;)V

    .line 368
    .line 369
    .line 370
    goto :goto_5

    .line 371
    :pswitch_24
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v1, Ly1/e0;

    .line 374
    .line 375
    invoke-virtual {v11, v1}, Ly1/f0;->W(Ly1/e0;)V

    .line 376
    .line 377
    .line 378
    goto :goto_5

    .line 379
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->j()V

    .line 380
    .line 381
    .line 382
    goto :goto_5

    .line 383
    :pswitch_26
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 384
    .line 385
    if-eqz v5, :cond_4

    .line 386
    .line 387
    const/4 v5, 0x1

    .line 388
    goto :goto_4

    .line 389
    :cond_4
    const/4 v5, 0x0

    .line 390
    :goto_4
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 391
    .line 392
    shr-int/lit8 v6, v1, 0x4

    .line 393
    .line 394
    and-int/lit8 v1, v1, 0xf

    .line 395
    .line 396
    iget-object v7, v11, Ly1/f0;->L:Ls3/t;

    .line 397
    .line 398
    invoke-virtual {v7, v13}, Ls3/t;->c(I)V

    .line 399
    .line 400
    .line 401
    iget-object v7, v11, Ly1/f0;->K:Ly1/v0;

    .line 402
    .line 403
    iget v7, v7, Ly1/v0;->e:I

    .line 404
    .line 405
    iget-object v8, v11, Ly1/f0;->B:Ls1/b;

    .line 406
    .line 407
    invoke-virtual {v8, v7, v5}, Ls1/b;->d(IZ)I

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    invoke-virtual {v11, v7, v6, v1, v5}, Ly1/f0;->A0(IIIZ)V
    :try_end_0
    .catch Ly1/k; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lb2/b; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lr1/f0; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lw1/i; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .line 413
    .line 414
    :cond_5
    :goto_5
    const/4 v1, 0x1

    .line 415
    goto/16 :goto_10

    .line 416
    .line 417
    :goto_6
    instance-of v3, v1, Ljava/lang/IllegalStateException;

    .line 418
    .line 419
    if-nez v3, :cond_6

    .line 420
    .line 421
    instance-of v3, v1, Ljava/lang/IllegalArgumentException;

    .line 422
    .line 423
    if-eqz v3, :cond_7

    .line 424
    .line 425
    :cond_6
    const/16 v4, 0x3ec

    .line 426
    .line 427
    :cond_7
    new-instance v3, Ly1/k;

    .line 428
    .line 429
    invoke-direct {v3, v2, v1, v4}, Ly1/k;-><init>(ILjava/lang/Exception;I)V

    .line 430
    .line 431
    .line 432
    invoke-static {v12, v3}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v11, v13, v14}, Ly1/f0;->u0(ZZ)V

    .line 436
    .line 437
    .line 438
    iget-object v1, v11, Ly1/f0;->K:Ly1/v0;

    .line 439
    .line 440
    invoke-virtual {v1, v3}, Ly1/v0;->f(Ly1/k;)Ly1/v0;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    iput-object v1, v11, Ly1/f0;->K:Ly1/v0;

    .line 445
    .line 446
    goto :goto_5

    .line 447
    :goto_7
    const/16 v2, 0x7d0

    .line 448
    .line 449
    invoke-virtual {v11, v1, v2}, Ly1/f0;->t(Ljava/io/IOException;I)V

    .line 450
    .line 451
    .line 452
    goto :goto_5

    .line 453
    :goto_8
    iget v2, v1, Lw1/i;->a:I

    .line 454
    .line 455
    invoke-virtual {v11, v1, v2}, Ly1/f0;->t(Ljava/io/IOException;I)V

    .line 456
    .line 457
    .line 458
    goto :goto_5

    .line 459
    :goto_9
    iget-boolean v2, v1, Lr1/f0;->a:Z

    .line 460
    .line 461
    iget v5, v1, Lr1/f0;->b:I

    .line 462
    .line 463
    if-ne v5, v13, :cond_9

    .line 464
    .line 465
    if-eqz v2, :cond_8

    .line 466
    .line 467
    const/16 v2, 0xbb9

    .line 468
    .line 469
    const/16 v4, 0xbb9

    .line 470
    .line 471
    goto :goto_a

    .line 472
    :cond_8
    const/16 v2, 0xbbb

    .line 473
    .line 474
    const/16 v4, 0xbbb

    .line 475
    .line 476
    goto :goto_a

    .line 477
    :cond_9
    if-ne v5, v3, :cond_b

    .line 478
    .line 479
    if-eqz v2, :cond_a

    .line 480
    .line 481
    const/16 v2, 0xbba

    .line 482
    .line 483
    const/16 v4, 0xbba

    .line 484
    .line 485
    goto :goto_a

    .line 486
    :cond_a
    const/16 v2, 0xbbc

    .line 487
    .line 488
    const/16 v4, 0xbbc

    .line 489
    .line 490
    :cond_b
    :goto_a
    invoke-virtual {v11, v1, v4}, Ly1/f0;->t(Ljava/io/IOException;I)V

    .line 491
    .line 492
    .line 493
    goto :goto_5

    .line 494
    :goto_b
    iget v2, v1, Lb2/b;->a:I

    .line 495
    .line 496
    invoke-virtual {v11, v1, v2}, Ly1/f0;->t(Ljava/io/IOException;I)V

    .line 497
    .line 498
    .line 499
    goto :goto_5

    .line 500
    :goto_c
    iget v4, v1, Ly1/k;->c:I

    .line 501
    .line 502
    iget-object v5, v11, Ly1/f0;->s:Ly1/n0;

    .line 503
    .line 504
    if-ne v4, v13, :cond_c

    .line 505
    .line 506
    iget-object v4, v5, Ly1/n0;->j:Ly1/l0;

    .line 507
    .line 508
    if-eqz v4, :cond_c

    .line 509
    .line 510
    iget-object v6, v1, Ly1/k;->h:Lf2/c0;

    .line 511
    .line 512
    if-nez v6, :cond_c

    .line 513
    .line 514
    iget-object v4, v4, Ly1/l0;->g:Ly1/m0;

    .line 515
    .line 516
    iget-object v4, v4, Ly1/m0;->a:Lf2/c0;

    .line 517
    .line 518
    invoke-virtual {v1, v4}, Ly1/k;->a(Lf2/c0;)Ly1/k;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    :cond_c
    iget v4, v1, Ly1/k;->c:I

    .line 523
    .line 524
    iget-object v15, v11, Ly1/f0;->h:Lu1/b0;

    .line 525
    .line 526
    if-ne v4, v13, :cond_e

    .line 527
    .line 528
    iget-object v4, v1, Ly1/k;->h:Lf2/c0;

    .line 529
    .line 530
    if-eqz v4, :cond_e

    .line 531
    .line 532
    iget v6, v1, Ly1/k;->e:I

    .line 533
    .line 534
    invoke-virtual {v11, v6, v4}, Ly1/f0;->A(ILf2/c0;)Z

    .line 535
    .line 536
    .line 537
    move-result v4

    .line 538
    if-eqz v4, :cond_e

    .line 539
    .line 540
    iput-boolean v13, v11, Ly1/f0;->U0:Z

    .line 541
    .line 542
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->h()V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v5}, Ly1/n0;->g()Ly1/l0;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    iget-object v4, v5, Ly1/n0;->i:Ly1/l0;

    .line 550
    .line 551
    if-eq v4, v1, :cond_d

    .line 552
    .line 553
    :goto_d
    if-eqz v4, :cond_d

    .line 554
    .line 555
    iget-object v6, v4, Ly1/l0;->m:Ly1/l0;

    .line 556
    .line 557
    if-eq v6, v1, :cond_d

    .line 558
    .line 559
    move-object v4, v6

    .line 560
    goto :goto_d

    .line 561
    :cond_d
    invoke-virtual {v5, v4}, Ly1/n0;->n(Ly1/l0;)I

    .line 562
    .line 563
    .line 564
    iget-object v1, v11, Ly1/f0;->K:Ly1/v0;

    .line 565
    .line 566
    iget v1, v1, Ly1/v0;->e:I

    .line 567
    .line 568
    if-eq v1, v3, :cond_5

    .line 569
    .line 570
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->C()V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v15, v2}, Lu1/b0;->f(I)Z

    .line 574
    .line 575
    .line 576
    goto/16 :goto_5

    .line 577
    .line 578
    :cond_e
    iget-object v2, v11, Ly1/f0;->Q0:Ly1/k;

    .line 579
    .line 580
    if-eqz v2, :cond_f

    .line 581
    .line 582
    invoke-static {v2, v1}, Lta/q;->v(Ljava/lang/Throwable;Ly1/k;)V

    .line 583
    .line 584
    .line 585
    iget-object v1, v11, Ly1/f0;->Q0:Ly1/k;

    .line 586
    .line 587
    :cond_f
    move-object v10, v1

    .line 588
    iget v1, v10, Ly1/k;->c:I

    .line 589
    .line 590
    if-ne v1, v13, :cond_11

    .line 591
    .line 592
    iget-object v1, v5, Ly1/n0;->i:Ly1/l0;

    .line 593
    .line 594
    iget-object v2, v5, Ly1/n0;->j:Ly1/l0;

    .line 595
    .line 596
    if-eq v1, v2, :cond_11

    .line 597
    .line 598
    :goto_e
    iget-object v1, v5, Ly1/n0;->i:Ly1/l0;

    .line 599
    .line 600
    iget-object v2, v5, Ly1/n0;->j:Ly1/l0;

    .line 601
    .line 602
    if-eq v1, v2, :cond_10

    .line 603
    .line 604
    invoke-virtual {v5}, Ly1/n0;->a()Ly1/l0;

    .line 605
    .line 606
    .line 607
    goto :goto_e

    .line 608
    :cond_10
    invoke-static {v1}, La9/o;->n(Ljava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->E()V

    .line 612
    .line 613
    .line 614
    iget-object v1, v1, Ly1/l0;->g:Ly1/m0;

    .line 615
    .line 616
    const/4 v9, 0x1

    .line 617
    const/16 v16, 0x0

    .line 618
    .line 619
    iget-object v2, v1, Ly1/m0;->a:Lf2/c0;

    .line 620
    .line 621
    iget-wide v7, v1, Ly1/m0;->b:J

    .line 622
    .line 623
    iget-wide v5, v1, Ly1/m0;->d:J

    .line 624
    .line 625
    move-object/from16 v1, p0

    .line 626
    .line 627
    move-wide v3, v7

    .line 628
    move-object v13, v10

    .line 629
    move/from16 v10, v16

    .line 630
    .line 631
    invoke-virtual/range {v1 .. v10}, Ly1/f0;->y(Lf2/c0;JJJZI)Ly1/v0;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    iput-object v1, v11, Ly1/f0;->K:Ly1/v0;

    .line 636
    .line 637
    goto :goto_f

    .line 638
    :cond_11
    move-object v13, v10

    .line 639
    :goto_f
    iget-boolean v1, v13, Ly1/k;->i:Z

    .line 640
    .line 641
    if-eqz v1, :cond_14

    .line 642
    .line 643
    iget-object v1, v11, Ly1/f0;->Q0:Ly1/k;

    .line 644
    .line 645
    if-eqz v1, :cond_12

    .line 646
    .line 647
    const/16 v1, 0x138c

    .line 648
    .line 649
    iget v2, v13, Lr1/g0;->a:I

    .line 650
    .line 651
    if-eq v2, v1, :cond_12

    .line 652
    .line 653
    const/16 v1, 0x138b

    .line 654
    .line 655
    if-ne v2, v1, :cond_14

    .line 656
    .line 657
    :cond_12
    const-string v1, "Recoverable renderer error"

    .line 658
    .line 659
    invoke-static {v1, v13}, Lu1/a;->q(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 660
    .line 661
    .line 662
    iget-object v1, v11, Ly1/f0;->Q0:Ly1/k;

    .line 663
    .line 664
    if-nez v1, :cond_13

    .line 665
    .line 666
    iput-object v13, v11, Ly1/f0;->Q0:Ly1/k;

    .line 667
    .line 668
    :cond_13
    const/16 v1, 0x19

    .line 669
    .line 670
    invoke-virtual {v15, v1, v13}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 675
    .line 676
    .line 677
    iget-object v2, v1, Lu1/a0;->a:Landroid/os/Message;

    .line 678
    .line 679
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 680
    .line 681
    .line 682
    iget-object v3, v15, Lu1/b0;->a:Landroid/os/Handler;

    .line 683
    .line 684
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 685
    .line 686
    .line 687
    invoke-virtual {v1}, Lu1/a0;->a()V

    .line 688
    .line 689
    .line 690
    goto/16 :goto_5

    .line 691
    .line 692
    :cond_14
    invoke-static {v12, v13}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 693
    .line 694
    .line 695
    const/4 v1, 0x1

    .line 696
    invoke-virtual {v11, v1, v14}, Ly1/f0;->u0(ZZ)V

    .line 697
    .line 698
    .line 699
    iget-object v2, v11, Ly1/f0;->K:Ly1/v0;

    .line 700
    .line 701
    invoke-virtual {v2, v13}, Ly1/v0;->f(Ly1/k;)Ly1/v0;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    iput-object v2, v11, Ly1/f0;->K:Ly1/v0;

    .line 706
    .line 707
    :goto_10
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->E()V

    .line 708
    .line 709
    .line 710
    return v1

    .line 711
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final i(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Ly1/f0;->a:[Lh4/m0;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Lh4/m0;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget-object v0, v0, p1

    .line 10
    .line 11
    iget-object v2, v0, Lh4/m0;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Ly1/a;

    .line 14
    .line 15
    iget-object v3, p0, Ly1/f0;->n:Ly1/h;

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3}, Lh4/m0;->a(Ly1/a;Ly1/h;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    iget-object v4, v0, Lh4/m0;->f:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v4, Ly1/a;

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    iget v5, v4, Ly1/a;->h:I

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v5, 0x0

    .line 35
    :goto_0
    if-eqz v5, :cond_1

    .line 36
    .line 37
    iget v5, v0, Lh4/m0;->b:I

    .line 38
    .line 39
    const/4 v7, 0x3

    .line 40
    if-eq v5, v7, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v6, 0x0

    .line 44
    :goto_1
    invoke-virtual {v0, v4, v3}, Lh4/m0;->a(Ly1/a;Ly1/h;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Lh4/m0;->i(Z)V

    .line 48
    .line 49
    .line 50
    if-eqz v6, :cond_2

    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const/16 v3, 0x11

    .line 56
    .line 57
    iget-object v5, v0, Lh4/m0;->e:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v5, Ly1/a;

    .line 60
    .line 61
    invoke-interface {v4, v3, v5}, Ly1/x0;->d(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iput v2, v0, Lh4/m0;->b:I

    .line 65
    .line 66
    invoke-virtual {p0, p1, v2}, Ly1/f0;->G(IZ)V

    .line 67
    .line 68
    .line 69
    iget p1, p0, Ly1/f0;->h0:I

    .line 70
    .line 71
    sub-int/2addr p1, v1

    .line 72
    iput p1, p0, Ly1/f0;->h0:I

    .line 73
    .line 74
    return-void
.end method

.method public final i0(Z)V
    .locals 5

    .line 1
    if-nez p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Ly1/f0;->H:Ly1/e0;

    .line 4
    .line 5
    const/16 v1, 0x25

    .line 6
    .line 7
    iget-object v2, p0, Ly1/f0;->h:Lu1/b0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Ly1/f0;->G:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, v2, Lu1/b0;->a:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget v0, p0, Ly1/f0;->I:I

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    iput v0, p0, Ly1/f0;->I:I

    .line 28
    .line 29
    :cond_0
    iget v0, p0, Ly1/f0;->I:I

    .line 30
    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    new-instance v3, La2/g0;

    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    invoke-direct {v3, v0, v4, p0}, La2/g0;-><init>(IILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Ly1/f0;->z:Lu1/b0;

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Lu1/b0;->d(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    iput v0, p0, Ly1/f0;->I:I

    .line 46
    .line 47
    iput-boolean v0, p0, Ly1/f0;->G:Z

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Lu1/b0;->e(I)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Ly1/f0;->H:Ly1/e0;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0, v1}, Ly1/f0;->W(Ly1/e0;)V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Ly1/f0;->H:Ly1/e0;

    .line 61
    .line 62
    iput-boolean v0, p0, Ly1/f0;->G:Z

    .line 63
    .line 64
    :cond_2
    iput-boolean p1, p0, Ly1/f0;->F:Z

    .line 65
    .line 66
    invoke-virtual {p0}, Ly1/f0;->e()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final j()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Ly1/f0;->q:Lu1/z;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iget-object v0, v1, Ly1/f0;->h:Lu1/b0;

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    invoke-virtual {v0, v4}, Lu1/b0;->e(I)V

    .line 16
    .line 17
    .line 18
    iget-boolean v0, v1, Ly1/f0;->C:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->z0()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, v1, Ly1/f0;->K:Ly1/v0;

    .line 26
    .line 27
    iget v0, v0, Ly1/v0;->e:I

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    if-eq v0, v5, :cond_40

    .line 31
    .line 32
    const/4 v6, 0x4

    .line 33
    if-ne v0, v6, :cond_1

    .line 34
    .line 35
    goto/16 :goto_20

    .line 36
    .line 37
    :cond_1
    iget-boolean v0, v1, Ly1/f0;->C:Z

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->z0()V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v0, v1, Ly1/f0;->s:Ly1/n0;

    .line 45
    .line 46
    iget-object v0, v0, Ly1/n0;->i:Ly1/l0;

    .line 47
    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Ly1/f0;->U(J)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    const-string v7, "doSomeWork"

    .line 55
    .line 56
    invoke-static {v7}, Ltb/a;->k(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->B0()V

    .line 60
    .line 61
    .line 62
    iget-boolean v7, v0, Ly1/l0;->e:Z

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    if-eqz v7, :cond_e

    .line 66
    .line 67
    iget-object v7, v1, Ly1/f0;->q:Lu1/z;

    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 73
    .line 74
    .line 75
    move-result-wide v9

    .line 76
    invoke-static {v9, v10}, Lu1/f0;->G(J)J

    .line 77
    .line 78
    .line 79
    move-result-wide v9

    .line 80
    iput-wide v9, v1, Ly1/f0;->N0:J

    .line 81
    .line 82
    iget-object v7, v0, Ly1/l0;->a:Ljava/lang/Object;

    .line 83
    .line 84
    iget-object v9, v1, Ly1/f0;->K:Ly1/v0;

    .line 85
    .line 86
    iget-wide v9, v9, Ly1/v0;->s:J

    .line 87
    .line 88
    iget-wide v11, v1, Ly1/f0;->m:J

    .line 89
    .line 90
    sub-long/2addr v9, v11

    .line 91
    invoke-interface {v7, v9, v10}, Lf2/a0;->i(J)V

    .line 92
    .line 93
    .line 94
    const/4 v7, 0x0

    .line 95
    const/4 v9, 0x1

    .line 96
    const/4 v10, 0x1

    .line 97
    :goto_0
    iget-object v11, v1, Ly1/f0;->a:[Lh4/m0;

    .line 98
    .line 99
    array-length v12, v11

    .line 100
    if-ge v7, v12, :cond_f

    .line 101
    .line 102
    aget-object v11, v11, v7

    .line 103
    .line 104
    invoke-virtual {v11}, Lh4/m0;->c()I

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    if-nez v12, :cond_4

    .line 109
    .line 110
    invoke-virtual {v1, v7, v8}, Ly1/f0;->G(IZ)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_6

    .line 114
    .line 115
    :cond_4
    iget-wide v12, v1, Ly1/f0;->M0:J

    .line 116
    .line 117
    iget-wide v14, v1, Ly1/f0;->N0:J

    .line 118
    .line 119
    iget-object v5, v11, Lh4/m0;->e:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v5, Ly1/a;

    .line 122
    .line 123
    invoke-static {v5}, Lh4/m0;->h(Ly1/a;)Z

    .line 124
    .line 125
    .line 126
    move-result v16

    .line 127
    if-eqz v16, :cond_5

    .line 128
    .line 129
    invoke-virtual {v5, v12, v13, v14, v15}, Ly1/a;->x(JJ)V

    .line 130
    .line 131
    .line 132
    :cond_5
    iget-object v5, v11, Lh4/m0;->f:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v5, Ly1/a;

    .line 135
    .line 136
    if-eqz v5, :cond_6

    .line 137
    .line 138
    iget v4, v5, Ly1/a;->h:I

    .line 139
    .line 140
    if-eqz v4, :cond_6

    .line 141
    .line 142
    invoke-virtual {v5, v12, v13, v14, v15}, Ly1/a;->x(JJ)V

    .line 143
    .line 144
    .line 145
    :cond_6
    if-eqz v9, :cond_9

    .line 146
    .line 147
    iget-object v4, v11, Lh4/m0;->e:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v4, Ly1/a;

    .line 150
    .line 151
    invoke-static {v4}, Lh4/m0;->h(Ly1/a;)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-eqz v5, :cond_7

    .line 156
    .line 157
    invoke-virtual {v4}, Ly1/a;->l()Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    goto :goto_1

    .line 162
    :cond_7
    const/4 v4, 0x1

    .line 163
    :goto_1
    iget-object v5, v11, Lh4/m0;->f:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v5, Ly1/a;

    .line 166
    .line 167
    if-eqz v5, :cond_8

    .line 168
    .line 169
    iget v9, v5, Ly1/a;->h:I

    .line 170
    .line 171
    if-eqz v9, :cond_8

    .line 172
    .line 173
    invoke-virtual {v5}, Ly1/a;->l()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    and-int/2addr v4, v5

    .line 178
    :cond_8
    if-eqz v4, :cond_9

    .line 179
    .line 180
    const/4 v9, 0x1

    .line 181
    goto :goto_2

    .line 182
    :cond_9
    const/4 v9, 0x0

    .line 183
    :goto_2
    invoke-virtual {v11, v0}, Lh4/m0;->d(Ly1/l0;)Ly1/a;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    if-eqz v4, :cond_b

    .line 188
    .line 189
    invoke-virtual {v4}, Ly1/a;->k()Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-nez v5, :cond_b

    .line 194
    .line 195
    invoke-virtual {v4}, Ly1/a;->m()Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-nez v5, :cond_b

    .line 200
    .line 201
    invoke-virtual {v4}, Ly1/a;->l()Z

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    if-eqz v4, :cond_a

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_a
    const/4 v4, 0x0

    .line 209
    goto :goto_4

    .line 210
    :cond_b
    :goto_3
    const/4 v4, 0x1

    .line 211
    :goto_4
    invoke-virtual {v1, v7, v4}, Ly1/f0;->G(IZ)V

    .line 212
    .line 213
    .line 214
    if-eqz v10, :cond_c

    .line 215
    .line 216
    if-eqz v4, :cond_c

    .line 217
    .line 218
    const/4 v10, 0x1

    .line 219
    goto :goto_5

    .line 220
    :cond_c
    const/4 v10, 0x0

    .line 221
    :goto_5
    if-nez v4, :cond_d

    .line 222
    .line 223
    invoke-virtual {v1, v7}, Ly1/f0;->F(I)V

    .line 224
    .line 225
    .line 226
    :cond_d
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 227
    .line 228
    const/4 v4, 0x2

    .line 229
    const/4 v5, 0x1

    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_e
    iget-object v4, v0, Ly1/l0;->a:Ljava/lang/Object;

    .line 233
    .line 234
    invoke-interface {v4}, Lf2/a0;->g()V

    .line 235
    .line 236
    .line 237
    const/4 v9, 0x1

    .line 238
    const/4 v10, 0x1

    .line 239
    :cond_f
    iget-object v4, v0, Ly1/l0;->g:Ly1/m0;

    .line 240
    .line 241
    iget-wide v4, v4, Ly1/m0;->f:J

    .line 242
    .line 243
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    if-eqz v9, :cond_11

    .line 249
    .line 250
    iget-boolean v7, v0, Ly1/l0;->e:Z

    .line 251
    .line 252
    if-eqz v7, :cond_11

    .line 253
    .line 254
    cmp-long v7, v4, v11

    .line 255
    .line 256
    if-eqz v7, :cond_10

    .line 257
    .line 258
    iget-object v7, v1, Ly1/f0;->K:Ly1/v0;

    .line 259
    .line 260
    iget-wide v13, v7, Ly1/v0;->s:J

    .line 261
    .line 262
    cmp-long v7, v4, v13

    .line 263
    .line 264
    if-gtz v7, :cond_11

    .line 265
    .line 266
    :cond_10
    const/4 v4, 0x1

    .line 267
    goto :goto_7

    .line 268
    :cond_11
    const/4 v4, 0x0

    .line 269
    :goto_7
    if-eqz v4, :cond_12

    .line 270
    .line 271
    iget-boolean v5, v1, Ly1/f0;->O:Z

    .line 272
    .line 273
    if-eqz v5, :cond_12

    .line 274
    .line 275
    iput-boolean v8, v1, Ly1/f0;->O:Z

    .line 276
    .line 277
    iget-object v5, v1, Ly1/f0;->K:Ly1/v0;

    .line 278
    .line 279
    iget v5, v5, Ly1/v0;->n:I

    .line 280
    .line 281
    iget-object v7, v1, Ly1/f0;->L:Ls3/t;

    .line 282
    .line 283
    invoke-virtual {v7, v8}, Ls3/t;->c(I)V

    .line 284
    .line 285
    .line 286
    iget-object v7, v1, Ly1/f0;->K:Ly1/v0;

    .line 287
    .line 288
    iget v7, v7, Ly1/v0;->e:I

    .line 289
    .line 290
    iget-object v9, v1, Ly1/f0;->B:Ls1/b;

    .line 291
    .line 292
    invoke-virtual {v9, v7, v8}, Ls1/b;->d(IZ)I

    .line 293
    .line 294
    .line 295
    move-result v7

    .line 296
    const/4 v9, 0x5

    .line 297
    invoke-virtual {v1, v7, v5, v9, v8}, Ly1/f0;->A0(IIIZ)V

    .line 298
    .line 299
    .line 300
    :cond_12
    if-eqz v4, :cond_14

    .line 301
    .line 302
    iget-object v4, v0, Ly1/l0;->g:Ly1/m0;

    .line 303
    .line 304
    iget-boolean v4, v4, Ly1/m0;->k:Z

    .line 305
    .line 306
    if-eqz v4, :cond_14

    .line 307
    .line 308
    invoke-virtual {v1, v6}, Ly1/f0;->n0(I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->v0()V

    .line 312
    .line 313
    .line 314
    move-wide/from16 v17, v2

    .line 315
    .line 316
    :cond_13
    const/4 v3, 0x1

    .line 317
    goto/16 :goto_18

    .line 318
    .line 319
    :cond_14
    iget-object v4, v1, Ly1/f0;->K:Ly1/v0;

    .line 320
    .line 321
    iget v7, v4, Ly1/v0;->e:I

    .line 322
    .line 323
    const/4 v9, 0x2

    .line 324
    if-ne v7, v9, :cond_29

    .line 325
    .line 326
    iget v7, v1, Ly1/f0;->h0:I

    .line 327
    .line 328
    if-nez v7, :cond_15

    .line 329
    .line 330
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->B()Z

    .line 331
    .line 332
    .line 333
    move-result v4

    .line 334
    move-wide/from16 v17, v2

    .line 335
    .line 336
    goto/16 :goto_12

    .line 337
    .line 338
    :cond_15
    if-nez v10, :cond_17

    .line 339
    .line 340
    move-wide/from16 v17, v2

    .line 341
    .line 342
    :cond_16
    const/4 v4, 0x0

    .line 343
    goto/16 :goto_12

    .line 344
    .line 345
    :cond_17
    iget-boolean v7, v4, Ly1/v0;->g:Z

    .line 346
    .line 347
    if-nez v7, :cond_1a

    .line 348
    .line 349
    :cond_18
    :goto_8
    move-wide/from16 v17, v2

    .line 350
    .line 351
    :cond_19
    :goto_9
    const/4 v4, 0x1

    .line 352
    goto/16 :goto_12

    .line 353
    .line 354
    :cond_1a
    iget-object v7, v1, Ly1/f0;->s:Ly1/n0;

    .line 355
    .line 356
    iget-object v9, v7, Ly1/n0;->i:Ly1/l0;

    .line 357
    .line 358
    iget-object v4, v4, Ly1/v0;->a:Lr1/q0;

    .line 359
    .line 360
    iget-object v13, v9, Ly1/l0;->g:Ly1/m0;

    .line 361
    .line 362
    iget-object v13, v13, Ly1/m0;->a:Lf2/c0;

    .line 363
    .line 364
    invoke-virtual {v1, v4, v13}, Ly1/f0;->s0(Lr1/q0;Lf2/c0;)Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-eqz v4, :cond_1b

    .line 369
    .line 370
    iget-object v4, v1, Ly1/f0;->v:Ly1/e;

    .line 371
    .line 372
    iget-wide v13, v4, Ly1/e;->h:J

    .line 373
    .line 374
    goto :goto_a

    .line 375
    :cond_1b
    move-wide v13, v11

    .line 376
    :goto_a
    iget-object v4, v7, Ly1/n0;->l:Ly1/l0;

    .line 377
    .line 378
    invoke-virtual {v4}, Ly1/l0;->g()Z

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    if-eqz v7, :cond_1c

    .line 383
    .line 384
    iget-object v7, v4, Ly1/l0;->g:Ly1/m0;

    .line 385
    .line 386
    iget-boolean v7, v7, Ly1/m0;->k:Z

    .line 387
    .line 388
    if-eqz v7, :cond_1c

    .line 389
    .line 390
    const/4 v7, 0x1

    .line 391
    goto :goto_b

    .line 392
    :cond_1c
    const/4 v7, 0x0

    .line 393
    :goto_b
    iget-object v15, v4, Ly1/l0;->g:Ly1/m0;

    .line 394
    .line 395
    iget-object v15, v15, Ly1/m0;->a:Lf2/c0;

    .line 396
    .line 397
    invoke-virtual {v15}, Lf2/c0;->b()Z

    .line 398
    .line 399
    .line 400
    move-result v15

    .line 401
    if-eqz v15, :cond_1d

    .line 402
    .line 403
    iget-boolean v15, v4, Ly1/l0;->e:Z

    .line 404
    .line 405
    if-nez v15, :cond_1d

    .line 406
    .line 407
    const/4 v15, 0x1

    .line 408
    goto :goto_c

    .line 409
    :cond_1d
    const/4 v15, 0x0

    .line 410
    :goto_c
    if-nez v7, :cond_18

    .line 411
    .line 412
    if-eqz v15, :cond_1e

    .line 413
    .line 414
    goto :goto_8

    .line 415
    :cond_1e
    invoke-virtual {v4}, Ly1/l0;->d()J

    .line 416
    .line 417
    .line 418
    move-result-wide v6

    .line 419
    invoke-virtual {v1, v6, v7}, Ly1/f0;->p(J)J

    .line 420
    .line 421
    .line 422
    move-result-wide v6

    .line 423
    iget-object v4, v1, Ly1/f0;->K:Ly1/v0;

    .line 424
    .line 425
    iget-object v4, v4, Ly1/v0;->a:Lr1/q0;

    .line 426
    .line 427
    iget-object v9, v9, Ly1/l0;->g:Ly1/m0;

    .line 428
    .line 429
    iget-object v9, v9, Ly1/m0;->a:Lf2/c0;

    .line 430
    .line 431
    iget-object v15, v1, Ly1/f0;->n:Ly1/h;

    .line 432
    .line 433
    invoke-virtual {v15}, Ly1/h;->c()Lr1/h0;

    .line 434
    .line 435
    .line 436
    move-result-object v15

    .line 437
    iget v15, v15, Lr1/h0;->a:F

    .line 438
    .line 439
    iget-object v8, v1, Ly1/f0;->K:Ly1/v0;

    .line 440
    .line 441
    iget-boolean v8, v8, Ly1/v0;->l:Z

    .line 442
    .line 443
    iget-boolean v8, v1, Ly1/f0;->P:Z

    .line 444
    .line 445
    iget-object v5, v1, Ly1/f0;->f:Ly1/h0;

    .line 446
    .line 447
    check-cast v5, Ly1/g;

    .line 448
    .line 449
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    iget-object v9, v9, Lf2/c0;->a:Ljava/lang/Object;

    .line 453
    .line 454
    iget-object v11, v5, Ly1/g;->b:Lr1/o0;

    .line 455
    .line 456
    invoke-virtual {v4, v9, v11}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 457
    .line 458
    .line 459
    move-result-object v9

    .line 460
    iget v9, v9, Lr1/o0;->c:I

    .line 461
    .line 462
    iget-object v11, v5, Ly1/g;->a:Lr1/p0;

    .line 463
    .line 464
    move-wide/from16 v17, v2

    .line 465
    .line 466
    const-wide/16 v2, 0x0

    .line 467
    .line 468
    invoke-virtual {v4, v9, v11, v2, v3}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 469
    .line 470
    .line 471
    move-result-object v4

    .line 472
    iget-object v4, v4, Lr1/p0;->c:Lr1/y;

    .line 473
    .line 474
    iget-object v4, v4, Lr1/y;->b:Lr1/v;

    .line 475
    .line 476
    if-nez v4, :cond_20

    .line 477
    .line 478
    :cond_1f
    const/4 v4, 0x0

    .line 479
    goto :goto_d

    .line 480
    :cond_20
    iget-object v4, v4, Lr1/v;->a:Landroid/net/Uri;

    .line 481
    .line 482
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 487
    .line 488
    .line 489
    move-result v9

    .line 490
    if-nez v9, :cond_21

    .line 491
    .line 492
    sget-object v9, Ly1/g;->r:Lu7/y0;

    .line 493
    .line 494
    invoke-virtual {v9, v4}, Lu7/g0;->contains(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    if-eqz v4, :cond_1f

    .line 499
    .line 500
    :cond_21
    const/4 v4, 0x1

    .line 501
    :goto_d
    const/high16 v9, 0x3f800000    # 1.0f

    .line 502
    .line 503
    cmpl-float v9, v15, v9

    .line 504
    .line 505
    if-nez v9, :cond_22

    .line 506
    .line 507
    goto :goto_e

    .line 508
    :cond_22
    long-to-double v6, v6

    .line 509
    float-to-double v11, v15

    .line 510
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 511
    .line 512
    .line 513
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    .line 514
    .line 515
    .line 516
    div-double/2addr v6, v11

    .line 517
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    .line 518
    .line 519
    .line 520
    move-result-wide v6

    .line 521
    :goto_e
    if-eqz v8, :cond_24

    .line 522
    .line 523
    if-eqz v4, :cond_23

    .line 524
    .line 525
    iget-wide v8, v5, Ly1/g;->k:J

    .line 526
    .line 527
    goto :goto_f

    .line 528
    :cond_23
    iget-wide v8, v5, Ly1/g;->j:J

    .line 529
    .line 530
    :goto_f
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    goto :goto_10

    .line 536
    :cond_24
    if-eqz v4, :cond_25

    .line 537
    .line 538
    iget-wide v8, v5, Ly1/g;->i:J

    .line 539
    .line 540
    goto :goto_f

    .line 541
    :cond_25
    iget-wide v8, v5, Ly1/g;->h:J

    .line 542
    .line 543
    goto :goto_f

    .line 544
    :goto_10
    cmp-long v15, v13, v11

    .line 545
    .line 546
    if-eqz v15, :cond_26

    .line 547
    .line 548
    const-wide/16 v11, 0x2

    .line 549
    .line 550
    div-long/2addr v13, v11

    .line 551
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 552
    .line 553
    .line 554
    move-result-wide v8

    .line 555
    :cond_26
    cmp-long v11, v8, v2

    .line 556
    .line 557
    if-lez v11, :cond_19

    .line 558
    .line 559
    cmp-long v2, v6, v8

    .line 560
    .line 561
    if-gez v2, :cond_19

    .line 562
    .line 563
    if-eqz v4, :cond_27

    .line 564
    .line 565
    iget-boolean v2, v5, Ly1/g;->m:Z

    .line 566
    .line 567
    goto :goto_11

    .line 568
    :cond_27
    const/4 v2, 0x0

    .line 569
    :goto_11
    if-nez v2, :cond_16

    .line 570
    .line 571
    iget-object v2, v1, Ly1/f0;->x:Lz1/i;

    .line 572
    .line 573
    iget-object v3, v5, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 574
    .line 575
    invoke-virtual {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    check-cast v3, Ly1/f;

    .line 580
    .line 581
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    monitor-enter v3

    .line 585
    :try_start_0
    iget v4, v3, Ly1/f;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    .line 587
    monitor-exit v3

    .line 588
    iget-object v3, v5, Ly1/g;->c:Li2/d;

    .line 589
    .line 590
    iget v3, v3, Li2/d;->b:I

    .line 591
    .line 592
    mul-int v4, v4, v3

    .line 593
    .line 594
    iget-object v3, v5, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 595
    .line 596
    invoke-virtual {v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v2

    .line 600
    check-cast v2, Ly1/f;

    .line 601
    .line 602
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    iget v2, v2, Ly1/f;->c:I

    .line 606
    .line 607
    if-lt v4, v2, :cond_16

    .line 608
    .line 609
    goto/16 :goto_9

    .line 610
    .line 611
    :catchall_0
    move-exception v0

    .line 612
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    throw v0

    .line 614
    :goto_12
    if-eqz v4, :cond_28

    .line 615
    .line 616
    const/4 v2, 0x3

    .line 617
    invoke-virtual {v1, v2}, Ly1/f0;->n0(I)V

    .line 618
    .line 619
    .line 620
    const/4 v2, 0x0

    .line 621
    iput-object v2, v1, Ly1/f0;->Q0:Ly1/k;

    .line 622
    .line 623
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->r0()Z

    .line 624
    .line 625
    .line 626
    move-result v2

    .line 627
    if-eqz v2, :cond_13

    .line 628
    .line 629
    const/4 v2, 0x0

    .line 630
    invoke-virtual {v1, v2, v2}, Ly1/f0;->D0(ZZ)V

    .line 631
    .line 632
    .line 633
    iget-object v2, v1, Ly1/f0;->n:Ly1/h;

    .line 634
    .line 635
    const/4 v3, 0x1

    .line 636
    iput-boolean v3, v2, Ly1/h;->f:Z

    .line 637
    .line 638
    iget-object v2, v2, Ly1/h;->a:Lba/n;

    .line 639
    .line 640
    invoke-virtual {v2}, Lba/n;->f()V

    .line 641
    .line 642
    .line 643
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->t0()V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_18

    .line 647
    .line 648
    :cond_28
    :goto_13
    const/4 v3, 0x1

    .line 649
    goto :goto_14

    .line 650
    :cond_29
    move-wide/from16 v17, v2

    .line 651
    .line 652
    goto :goto_13

    .line 653
    :goto_14
    iget-object v2, v1, Ly1/f0;->K:Ly1/v0;

    .line 654
    .line 655
    iget v2, v2, Ly1/v0;->e:I

    .line 656
    .line 657
    const/4 v4, 0x3

    .line 658
    if-ne v2, v4, :cond_32

    .line 659
    .line 660
    iget v2, v1, Ly1/f0;->h0:I

    .line 661
    .line 662
    if-nez v2, :cond_2a

    .line 663
    .line 664
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->B()Z

    .line 665
    .line 666
    .line 667
    move-result v2

    .line 668
    if-eqz v2, :cond_2b

    .line 669
    .line 670
    goto :goto_18

    .line 671
    :cond_2a
    if-nez v10, :cond_32

    .line 672
    .line 673
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->r0()Z

    .line 674
    .line 675
    .line 676
    move-result v2

    .line 677
    const/4 v4, 0x0

    .line 678
    invoke-virtual {v1, v2, v4}, Ly1/f0;->D0(ZZ)V

    .line 679
    .line 680
    .line 681
    const/4 v2, 0x2

    .line 682
    invoke-virtual {v1, v2}, Ly1/f0;->n0(I)V

    .line 683
    .line 684
    .line 685
    iget-boolean v2, v1, Ly1/f0;->P:Z

    .line 686
    .line 687
    if-eqz v2, :cond_31

    .line 688
    .line 689
    iget-object v2, v1, Ly1/f0;->s:Ly1/n0;

    .line 690
    .line 691
    iget-object v2, v2, Ly1/n0;->i:Ly1/l0;

    .line 692
    .line 693
    :goto_15
    if-eqz v2, :cond_2e

    .line 694
    .line 695
    iget-object v4, v2, Ly1/l0;->o:Lh2/r;

    .line 696
    .line 697
    iget-object v4, v4, Lh2/r;->c:[Lh2/p;

    .line 698
    .line 699
    array-length v5, v4

    .line 700
    const/4 v6, 0x0

    .line 701
    :goto_16
    if-ge v6, v5, :cond_2d

    .line 702
    .line 703
    aget-object v7, v4, v6

    .line 704
    .line 705
    if-eqz v7, :cond_2c

    .line 706
    .line 707
    invoke-interface {v7}, Lh2/p;->k()V

    .line 708
    .line 709
    .line 710
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    .line 711
    .line 712
    goto :goto_16

    .line 713
    :cond_2d
    iget-object v2, v2, Ly1/l0;->m:Ly1/l0;

    .line 714
    .line 715
    goto :goto_15

    .line 716
    :cond_2e
    iget-object v2, v1, Ly1/f0;->v:Ly1/e;

    .line 717
    .line 718
    iget-wide v4, v2, Ly1/e;->h:J

    .line 719
    .line 720
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    cmp-long v8, v4, v6

    .line 726
    .line 727
    if-nez v8, :cond_2f

    .line 728
    .line 729
    goto :goto_17

    .line 730
    :cond_2f
    iget-wide v8, v2, Ly1/e;->b:J

    .line 731
    .line 732
    add-long/2addr v4, v8

    .line 733
    iput-wide v4, v2, Ly1/e;->h:J

    .line 734
    .line 735
    iget-wide v8, v2, Ly1/e;->g:J

    .line 736
    .line 737
    cmp-long v10, v8, v6

    .line 738
    .line 739
    if-eqz v10, :cond_30

    .line 740
    .line 741
    cmp-long v10, v4, v8

    .line 742
    .line 743
    if-lez v10, :cond_30

    .line 744
    .line 745
    iput-wide v8, v2, Ly1/e;->h:J

    .line 746
    .line 747
    :cond_30
    iput-wide v6, v2, Ly1/e;->l:J

    .line 748
    .line 749
    :cond_31
    :goto_17
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->v0()V

    .line 750
    .line 751
    .line 752
    :cond_32
    :goto_18
    iget-object v2, v1, Ly1/f0;->K:Ly1/v0;

    .line 753
    .line 754
    iget v2, v2, Ly1/v0;->e:I

    .line 755
    .line 756
    const/4 v4, 0x2

    .line 757
    if-ne v2, v4, :cond_36

    .line 758
    .line 759
    const/4 v2, 0x0

    .line 760
    :goto_19
    iget-object v4, v1, Ly1/f0;->a:[Lh4/m0;

    .line 761
    .line 762
    array-length v5, v4

    .line 763
    if-ge v2, v5, :cond_35

    .line 764
    .line 765
    aget-object v4, v4, v2

    .line 766
    .line 767
    invoke-virtual {v4, v0}, Lh4/m0;->d(Ly1/l0;)Ly1/a;

    .line 768
    .line 769
    .line 770
    move-result-object v4

    .line 771
    if-eqz v4, :cond_33

    .line 772
    .line 773
    const/4 v4, 0x1

    .line 774
    goto :goto_1a

    .line 775
    :cond_33
    const/4 v4, 0x0

    .line 776
    :goto_1a
    if-eqz v4, :cond_34

    .line 777
    .line 778
    invoke-virtual {v1, v2}, Ly1/f0;->F(I)V

    .line 779
    .line 780
    .line 781
    :cond_34
    add-int/lit8 v2, v2, 0x1

    .line 782
    .line 783
    goto :goto_19

    .line 784
    :cond_35
    iget-object v0, v1, Ly1/f0;->K:Ly1/v0;

    .line 785
    .line 786
    iget-boolean v2, v0, Ly1/v0;->g:Z

    .line 787
    .line 788
    if-nez v2, :cond_36

    .line 789
    .line 790
    iget-wide v4, v0, Ly1/v0;->r:J

    .line 791
    .line 792
    const-wide/32 v6, 0x7a120

    .line 793
    .line 794
    .line 795
    cmp-long v0, v4, v6

    .line 796
    .line 797
    if-gez v0, :cond_36

    .line 798
    .line 799
    iget-object v0, v1, Ly1/f0;->s:Ly1/n0;

    .line 800
    .line 801
    iget-object v0, v0, Ly1/n0;->l:Ly1/l0;

    .line 802
    .line 803
    invoke-static {v0}, Ly1/f0;->z(Ly1/l0;)Z

    .line 804
    .line 805
    .line 806
    move-result v0

    .line 807
    if-eqz v0, :cond_36

    .line 808
    .line 809
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->r0()Z

    .line 810
    .line 811
    .line 812
    move-result v0

    .line 813
    if-eqz v0, :cond_36

    .line 814
    .line 815
    const/4 v0, 0x1

    .line 816
    goto :goto_1b

    .line 817
    :cond_36
    const/4 v0, 0x0

    .line 818
    :goto_1b
    if-nez v0, :cond_37

    .line 819
    .line 820
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    iput-wide v4, v1, Ly1/f0;->R0:J

    .line 826
    .line 827
    goto :goto_1c

    .line 828
    :cond_37
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    iget-wide v6, v1, Ly1/f0;->R0:J

    .line 834
    .line 835
    cmp-long v0, v6, v4

    .line 836
    .line 837
    if-nez v0, :cond_38

    .line 838
    .line 839
    iget-object v0, v1, Ly1/f0;->q:Lu1/z;

    .line 840
    .line 841
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 842
    .line 843
    .line 844
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 845
    .line 846
    .line 847
    move-result-wide v4

    .line 848
    iput-wide v4, v1, Ly1/f0;->R0:J

    .line 849
    .line 850
    goto :goto_1c

    .line 851
    :cond_38
    iget-object v0, v1, Ly1/f0;->q:Lu1/z;

    .line 852
    .line 853
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 854
    .line 855
    .line 856
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 857
    .line 858
    .line 859
    move-result-wide v4

    .line 860
    iget-wide v6, v1, Ly1/f0;->R0:J

    .line 861
    .line 862
    sub-long/2addr v4, v6

    .line 863
    const-wide/16 v6, 0xfa0

    .line 864
    .line 865
    cmp-long v0, v4, v6

    .line 866
    .line 867
    if-gez v0, :cond_3f

    .line 868
    .line 869
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->r0()Z

    .line 870
    .line 871
    .line 872
    move-result v0

    .line 873
    if-eqz v0, :cond_39

    .line 874
    .line 875
    iget-object v0, v1, Ly1/f0;->K:Ly1/v0;

    .line 876
    .line 877
    iget v0, v0, Ly1/v0;->e:I

    .line 878
    .line 879
    const/4 v2, 0x3

    .line 880
    if-ne v0, v2, :cond_39

    .line 881
    .line 882
    const/4 v0, 0x1

    .line 883
    goto :goto_1d

    .line 884
    :cond_39
    const/4 v0, 0x0

    .line 885
    :goto_1d
    iget-boolean v2, v1, Ly1/f0;->Z:Z

    .line 886
    .line 887
    if-eqz v2, :cond_3a

    .line 888
    .line 889
    iget-boolean v2, v1, Ly1/f0;->Y:Z

    .line 890
    .line 891
    if-eqz v2, :cond_3a

    .line 892
    .line 893
    if-eqz v0, :cond_3a

    .line 894
    .line 895
    const/4 v5, 0x1

    .line 896
    goto :goto_1e

    .line 897
    :cond_3a
    const/4 v5, 0x0

    .line 898
    :goto_1e
    iget-object v2, v1, Ly1/f0;->K:Ly1/v0;

    .line 899
    .line 900
    iget-boolean v3, v2, Ly1/v0;->p:Z

    .line 901
    .line 902
    if-eq v3, v5, :cond_3b

    .line 903
    .line 904
    invoke-virtual {v2, v5}, Ly1/v0;->i(Z)Ly1/v0;

    .line 905
    .line 906
    .line 907
    move-result-object v2

    .line 908
    iput-object v2, v1, Ly1/f0;->K:Ly1/v0;

    .line 909
    .line 910
    :cond_3b
    const/4 v2, 0x0

    .line 911
    iput-boolean v2, v1, Ly1/f0;->Y:Z

    .line 912
    .line 913
    if-nez v5, :cond_3e

    .line 914
    .line 915
    iget-object v2, v1, Ly1/f0;->K:Ly1/v0;

    .line 916
    .line 917
    iget v2, v2, Ly1/v0;->e:I

    .line 918
    .line 919
    const/4 v3, 0x4

    .line 920
    if-ne v2, v3, :cond_3c

    .line 921
    .line 922
    goto :goto_1f

    .line 923
    :cond_3c
    if-nez v0, :cond_3d

    .line 924
    .line 925
    const/4 v0, 0x2

    .line 926
    if-eq v2, v0, :cond_3d

    .line 927
    .line 928
    const/4 v0, 0x3

    .line 929
    if-ne v2, v0, :cond_3e

    .line 930
    .line 931
    iget v0, v1, Ly1/f0;->h0:I

    .line 932
    .line 933
    if-eqz v0, :cond_3e

    .line 934
    .line 935
    :cond_3d
    move-wide/from16 v2, v17

    .line 936
    .line 937
    invoke-virtual {v1, v2, v3}, Ly1/f0;->U(J)V

    .line 938
    .line 939
    .line 940
    :cond_3e
    :goto_1f
    invoke-static {}, Ltb/a;->h()V

    .line 941
    .line 942
    .line 943
    return-void

    .line 944
    :cond_3f
    new-instance v0, Lu1/y;

    .line 945
    .line 946
    const/16 v2, 0xfa0

    .line 947
    .line 948
    const/4 v3, 0x0

    .line 949
    invoke-direct {v0, v3, v2}, Lu1/y;-><init>(II)V

    .line 950
    .line 951
    .line 952
    throw v0

    .line 953
    :cond_40
    :goto_20
    return-void
.end method

.method public final j0(Ly1/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly1/f0;->E:Ly1/d1;

    .line 2
    .line 3
    invoke-virtual {p0}, Ly1/f0;->e()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final k(Ly1/l0;IZJ)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v10, p4

    .line 6
    .line 7
    iget-object v2, v0, Ly1/f0;->a:[Lh4/m0;

    .line 8
    .line 9
    aget-object v12, v2, p2

    .line 10
    .line 11
    invoke-virtual {v12}, Lh4/m0;->g()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v2, v0, Ly1/f0;->s:Ly1/n0;

    .line 19
    .line 20
    iget-object v2, v2, Ly1/n0;->i:Ly1/l0;

    .line 21
    .line 22
    const/4 v13, 0x1

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    const/4 v14, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v14, 0x0

    .line 28
    :goto_0
    iget-object v2, v1, Ly1/l0;->o:Lh2/r;

    .line 29
    .line 30
    iget-object v4, v2, Lh2/r;->b:[Ly1/b1;

    .line 31
    .line 32
    aget-object v4, v4, p2

    .line 33
    .line 34
    iget-object v2, v2, Lh2/r;->c:[Lh2/p;

    .line 35
    .line 36
    aget-object v2, v2, p2

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->r0()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    iget-object v5, v0, Ly1/f0;->K:Ly1/v0;

    .line 45
    .line 46
    iget v5, v5, Ly1/v0;->e:I

    .line 47
    .line 48
    const/4 v6, 0x3

    .line 49
    if-ne v5, v6, :cond_2

    .line 50
    .line 51
    const/4 v15, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 v15, 0x0

    .line 54
    :goto_1
    if-nez p3, :cond_3

    .line 55
    .line 56
    if-eqz v15, :cond_3

    .line 57
    .line 58
    const/4 v9, 0x1

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    const/4 v9, 0x0

    .line 61
    :goto_2
    iget v5, v0, Ly1/f0;->h0:I

    .line 62
    .line 63
    add-int/2addr v5, v13

    .line 64
    iput v5, v0, Ly1/f0;->h0:I

    .line 65
    .line 66
    iget-object v5, v1, Ly1/l0;->c:[Lf2/c1;

    .line 67
    .line 68
    aget-object v5, v5, p2

    .line 69
    .line 70
    iget-wide v7, v1, Ly1/l0;->p:J

    .line 71
    .line 72
    iget-object v6, v1, Ly1/l0;->g:Ly1/m0;

    .line 73
    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    invoke-interface {v2}, Lh2/p;->length()I

    .line 77
    .line 78
    .line 79
    move-result v16

    .line 80
    move/from16 v3, v16

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    const/4 v3, 0x0

    .line 84
    :goto_3
    new-array v13, v3, [Lr1/p;

    .line 85
    .line 86
    move/from16 v17, v15

    .line 87
    .line 88
    const/4 v15, 0x0

    .line 89
    :goto_4
    if-ge v15, v3, :cond_5

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-interface {v2, v15}, Lh2/p;->c(I)Lr1/p;

    .line 95
    .line 96
    .line 97
    move-result-object v18

    .line 98
    aput-object v18, v13, v15

    .line 99
    .line 100
    add-int/lit8 v15, v15, 0x1

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    iget v2, v12, Lh4/m0;->b:I

    .line 104
    .line 105
    iget-object v15, v6, Ly1/m0;->a:Lf2/c0;

    .line 106
    .line 107
    iget-object v6, v0, Ly1/f0;->n:Ly1/h;

    .line 108
    .line 109
    if-eqz v2, :cond_6

    .line 110
    .line 111
    const/4 v3, 0x2

    .line 112
    if-eq v2, v3, :cond_6

    .line 113
    .line 114
    const/4 v3, 0x4

    .line 115
    if-ne v2, v3, :cond_7

    .line 116
    .line 117
    :cond_6
    move v0, v9

    .line 118
    const/4 v1, 0x1

    .line 119
    move-object v9, v6

    .line 120
    goto :goto_6

    .line 121
    :cond_7
    const/4 v2, 0x1

    .line 122
    iput-boolean v2, v12, Lh4/m0;->d:Z

    .line 123
    .line 124
    iget-object v2, v12, Lh4/m0;->f:Ljava/lang/Object;

    .line 125
    .line 126
    move-object v3, v2

    .line 127
    check-cast v3, Ly1/a;

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    iget v2, v3, Ly1/a;->h:I

    .line 133
    .line 134
    if-nez v2, :cond_8

    .line 135
    .line 136
    const/16 v16, 0x1

    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_8
    const/16 v16, 0x0

    .line 140
    .line 141
    :goto_5
    invoke-static/range {v16 .. v16}, La9/o;->t(Z)V

    .line 142
    .line 143
    .line 144
    iput-object v4, v3, Ly1/a;->d:Ly1/b1;

    .line 145
    .line 146
    iput-object v15, v3, Ly1/a;->r:Lf2/c0;

    .line 147
    .line 148
    const/4 v4, 0x1

    .line 149
    iput v4, v3, Ly1/a;->h:I

    .line 150
    .line 151
    invoke-virtual {v3, v9, v14}, Ly1/a;->o(ZZ)V

    .line 152
    .line 153
    .line 154
    move-object v2, v3

    .line 155
    move-object v1, v3

    .line 156
    move-object v3, v13

    .line 157
    const/4 v13, 0x1

    .line 158
    move-object v4, v5

    .line 159
    move-object/from16 v19, v6

    .line 160
    .line 161
    move-wide/from16 v5, p4

    .line 162
    .line 163
    move v0, v9

    .line 164
    move-object v9, v15

    .line 165
    invoke-virtual/range {v2 .. v9}, Ly1/a;->y([Lr1/p;Lf2/c1;JJLf2/c0;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v10, v11, v0, v13}, Ly1/a;->z(JZZ)V

    .line 169
    .line 170
    .line 171
    move-object/from16 v9, v19

    .line 172
    .line 173
    invoke-virtual {v9, v1}, Ly1/h;->d(Ly1/a;)V

    .line 174
    .line 175
    .line 176
    goto :goto_8

    .line 177
    :goto_6
    iput-boolean v1, v12, Lh4/m0;->c:Z

    .line 178
    .line 179
    iget-object v2, v12, Lh4/m0;->e:Ljava/lang/Object;

    .line 180
    .line 181
    move-object v6, v2

    .line 182
    check-cast v6, Ly1/a;

    .line 183
    .line 184
    iget v2, v6, Ly1/a;->h:I

    .line 185
    .line 186
    if-nez v2, :cond_9

    .line 187
    .line 188
    const/4 v3, 0x1

    .line 189
    goto :goto_7

    .line 190
    :cond_9
    const/4 v3, 0x0

    .line 191
    :goto_7
    invoke-static {v3}, La9/o;->t(Z)V

    .line 192
    .line 193
    .line 194
    iput-object v4, v6, Ly1/a;->d:Ly1/b1;

    .line 195
    .line 196
    iput-object v15, v6, Ly1/a;->r:Lf2/c0;

    .line 197
    .line 198
    iput v1, v6, Ly1/a;->h:I

    .line 199
    .line 200
    invoke-virtual {v6, v0, v14}, Ly1/a;->o(ZZ)V

    .line 201
    .line 202
    .line 203
    move-object v2, v6

    .line 204
    move-object v3, v13

    .line 205
    move-object v4, v5

    .line 206
    move-object v13, v6

    .line 207
    move-wide/from16 v5, p4

    .line 208
    .line 209
    move-object/from16 v20, v9

    .line 210
    .line 211
    move-object v9, v15

    .line 212
    invoke-virtual/range {v2 .. v9}, Ly1/a;->y([Lr1/p;Lf2/c1;JJLf2/c0;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v13, v10, v11, v0, v1}, Ly1/a;->z(JZZ)V

    .line 216
    .line 217
    .line 218
    move-object/from16 v0, v20

    .line 219
    .line 220
    invoke-virtual {v0, v13}, Ly1/h;->d(Ly1/a;)V

    .line 221
    .line 222
    .line 223
    :goto_8
    new-instance v0, Ly1/b0;

    .line 224
    .line 225
    move-object/from16 v1, p0

    .line 226
    .line 227
    invoke-direct {v0, v1}, Ly1/b0;-><init>(Ly1/f0;)V

    .line 228
    .line 229
    .line 230
    move-object/from16 v2, p1

    .line 231
    .line 232
    invoke-virtual {v12, v2}, Lh4/m0;->d(Ly1/l0;)Ly1/a;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    const/16 v3, 0xb

    .line 240
    .line 241
    invoke-interface {v2, v3, v0}, Ly1/x0;->d(ILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    if-eqz v17, :cond_a

    .line 245
    .line 246
    if-eqz v14, :cond_a

    .line 247
    .line 248
    invoke-virtual {v12}, Lh4/m0;->m()V

    .line 249
    .line 250
    .line 251
    :cond_a
    return-void
.end method

.method public final k0(Ly1/e1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly1/f0;->D:Ly1/e1;

    .line 2
    .line 3
    return-void
.end method

.method public final l([ZJ)V
    .locals 10

    .line 1
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 2
    .line 3
    iget-object v0, v0, Ly1/n0;->j:Ly1/l0;

    .line 4
    .line 5
    iget-object v7, v0, Ly1/l0;->o:Lh2/r;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v8, p0, Ly1/f0;->a:[Lh4/m0;

    .line 10
    .line 11
    array-length v3, v8

    .line 12
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    invoke-virtual {v7, v2}, Lh2/r;->b(I)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    aget-object v3, v8, v2

    .line 21
    .line 22
    invoke-virtual {v3}, Lh4/m0;->k()V

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v9, 0x0

    .line 29
    :goto_1
    array-length v1, v8

    .line 30
    if-ge v9, v1, :cond_4

    .line 31
    .line 32
    invoke-virtual {v7, v9}, Lh2/r;->b(I)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    aget-object v1, v8, v9

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lh4/m0;->d(Ly1/l0;)Ly1/a;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    aget-boolean v4, p1, v9

    .line 48
    .line 49
    move-object v1, p0

    .line 50
    move-object v2, v0

    .line 51
    move v3, v9

    .line 52
    move-wide v5, p2

    .line 53
    invoke-virtual/range {v1 .. v6}, Ly1/f0;->k(Ly1/l0;IZJ)V

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    return-void
.end method

.method public final l0(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Ly1/f0;->V:Z

    .line 2
    .line 3
    iget-object v0, p0, Ly1/f0;->K:Ly1/v0;

    .line 4
    .line 5
    iget-object v0, v0, Ly1/v0;->a:Lr1/q0;

    .line 6
    .line 7
    iget-object v1, p0, Ly1/f0;->s:Ly1/n0;

    .line 8
    .line 9
    iput-boolean p1, v1, Ly1/n0;->h:Z

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ly1/n0;->r(Lr1/q0;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    and-int/lit8 v0, p1, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Ly1/f0;->V(Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    and-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Ly1/f0;->h()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Ly1/f0;->u(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final m(Lr1/q0;Ljava/lang/Object;J)J
    .locals 5

    .line 1
    iget-object v0, p0, Ly1/f0;->l:Lr1/o0;

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget p2, p2, Lr1/o0;->c:I

    .line 8
    .line 9
    iget-object v1, p0, Ly1/f0;->k:Lr1/p0;

    .line 10
    .line 11
    invoke-virtual {p1, p2, v1}, Lr1/q0;->n(ILr1/p0;)V

    .line 12
    .line 13
    .line 14
    iget-wide p1, v1, Lr1/p0;->e:J

    .line 15
    .line 16
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    cmp-long v4, p1, v2

    .line 22
    .line 23
    if-eqz v4, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1}, Lr1/p0;->a()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-boolean p1, v1, Lr1/p0;->h:Z

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-wide p1, v1, Lr1/p0;->f:J

    .line 37
    .line 38
    cmp-long v4, p1, v2

    .line 39
    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    add-long/2addr p1, v2

    .line 52
    :goto_0
    iget-wide v1, v1, Lr1/p0;->e:J

    .line 53
    .line 54
    sub-long/2addr p1, v1

    .line 55
    invoke-static {p1, p2}, Lu1/f0;->G(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide p1

    .line 59
    iget-wide v0, v0, Lr1/o0;->e:J

    .line 60
    .line 61
    add-long/2addr p3, v0

    .line 62
    sub-long/2addr p1, p3

    .line 63
    return-wide p1

    .line 64
    :cond_2
    :goto_1
    return-wide v2
.end method

.method public final m0(Lf2/e1;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ly1/f0;->L:Ls3/t;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ls3/t;->c(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ly1/f0;->t:Lm7/l;

    .line 8
    .line 9
    iget-object v1, v0, Lm7/l;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p1, Lf2/e1;->b:[I

    .line 18
    .line 19
    array-length v2, v2

    .line 20
    if-eq v2, v1, :cond_0

    .line 21
    .line 22
    new-instance v2, Lf2/e1;

    .line 23
    .line 24
    new-instance v3, Ljava/util/Random;

    .line 25
    .line 26
    iget-object p1, p1, Lf2/e1;->a:Ljava/util/Random;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v3}, Lf2/e1;-><init>(Ljava/util/Random;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lf2/e1;->a(I)Lf2/e1;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :cond_0
    iput-object p1, v0, Lm7/l;->k:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v0}, Lm7/l;->c()Lr1/q0;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Ly1/f0;->v(Lr1/q0;Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final n(Ly1/l0;)J
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    iget-wide v0, p1, Ly1/l0;->p:J

    .line 7
    .line 8
    iget-boolean v2, p1, Ly1/l0;->e:Z

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_1
    const/4 v2, 0x0

    .line 14
    :goto_0
    iget-object v3, p0, Ly1/f0;->a:[Lh4/m0;

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    if-ge v2, v4, :cond_4

    .line 18
    .line 19
    aget-object v4, v3, v2

    .line 20
    .line 21
    invoke-virtual {v4, p1}, Lh4/m0;->d(Ly1/l0;)Ly1/a;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    aget-object v3, v3, v2

    .line 28
    .line 29
    invoke-virtual {v3, p1}, Lh4/m0;->d(Ly1/l0;)Ly1/a;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-wide v3, v3, Ly1/a;->m:J

    .line 37
    .line 38
    const-wide/high16 v5, -0x8000000000000000L

    .line 39
    .line 40
    cmp-long v7, v3, v5

    .line 41
    .line 42
    if-nez v7, :cond_2

    .line 43
    .line 44
    return-wide v5

    .line 45
    :cond_2
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    return-wide v0
.end method

.method public final n0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/f0;->K:Ly1/v0;

    .line 2
    .line 3
    iget v1, v0, Ly1/v0;->e:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide v1, p0, Ly1/f0;->R0:J

    .line 16
    .line 17
    :cond_0
    const/4 v1, 0x3

    .line 18
    if-eq p1, v1, :cond_1

    .line 19
    .line 20
    iget-boolean v1, v0, Ly1/v0;->p:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Ly1/v0;->i(Z)Ly1/v0;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Ly1/f0;->K:Ly1/v0;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Ly1/f0;->K:Ly1/v0;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ly1/v0;->h(I)Ly1/v0;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final o(Lr1/q0;)Landroid/util/Pair;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lr1/q0;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Ly1/v0;->u:Lf2/c0;

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    iget-boolean v0, p0, Ly1/f0;->V:Z

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lr1/q0;->a(Z)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Ly1/f0;->k:Lr1/p0;

    .line 32
    .line 33
    iget-object v5, p0, Ly1/f0;->l:Lr1/o0;

    .line 34
    .line 35
    move-object v3, p1

    .line 36
    invoke-virtual/range {v3 .. v8}, Lr1/q0;->i(Lr1/p0;Lr1/o0;IJ)Landroid/util/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v3, p0, Ly1/f0;->s:Ly1/n0;

    .line 41
    .line 42
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v3, p1, v4, v1, v2}, Ly1/n0;->p(Lr1/q0;Ljava/lang/Object;J)Lf2/c0;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Ljava/lang/Long;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    invoke-virtual {v3}, Lf2/c0;->b()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v0, v3, Lf2/c0;->a:Ljava/lang/Object;

    .line 63
    .line 64
    iget-object v4, p0, Ly1/f0;->l:Lr1/o0;

    .line 65
    .line 66
    invoke-virtual {p1, v0, v4}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 67
    .line 68
    .line 69
    iget p1, v3, Lf2/c0;->b:I

    .line 70
    .line 71
    invoke-virtual {v4, p1}, Lr1/o0;->e(I)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iget v0, v3, Lf2/c0;->c:I

    .line 76
    .line 77
    if-ne v0, p1, :cond_2

    .line 78
    .line 79
    iget-object p1, v4, Lr1/o0;->g:Lr1/c;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    move-wide v1, v4

    .line 86
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1
.end method

.method public final o0(Landroidx/media3/exoplayer/video/x;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ly1/f0;->a:[Lh4/m0;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_2

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    iget-object v4, v3, Lh4/m0;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Ly1/a;

    .line 12
    .line 13
    iget v5, v4, Ly1/a;->b:I

    .line 14
    .line 15
    const/4 v6, 0x2

    .line 16
    if-eq v5, v6, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v5, 0x7

    .line 20
    invoke-interface {v4, v5, p1}, Ly1/x0;->d(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v3, v3, Lh4/m0;->f:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Ly1/a;

    .line 26
    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-interface {v3, v5, p1}, Ly1/x0;->d(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-void
.end method

.method public final p(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 2
    .line 3
    iget-object v0, v0, Ly1/n0;->l:Ly1/l0;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    iget-wide v3, p0, Ly1/f0;->M0:J

    .line 11
    .line 12
    iget-wide v5, v0, Ly1/l0;->p:J

    .line 13
    .line 14
    sub-long/2addr v3, v5

    .line 15
    sub-long/2addr p1, v3

    .line 16
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    return-wide p1
.end method

.method public final p0(Ljava/lang/Object;Lu1/e;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ly1/f0;->a:[Lh4/m0;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    const/4 v3, 0x2

    .line 6
    if-ge v2, v1, :cond_3

    .line 7
    .line 8
    aget-object v4, v0, v2

    .line 9
    .line 10
    iget-object v5, v4, Lh4/m0;->e:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v5, Ly1/a;

    .line 13
    .line 14
    iget v6, v5, Ly1/a;->b:I

    .line 15
    .line 16
    if-eq v6, v3, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget v3, v4, Lh4/m0;->b:I

    .line 20
    .line 21
    const/4 v6, 0x4

    .line 22
    const/4 v7, 0x1

    .line 23
    if-eq v3, v6, :cond_2

    .line 24
    .line 25
    if-ne v3, v7, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-interface {v5, v7, p1}, Ly1/x0;->d(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    :goto_1
    iget-object v3, v4, Lh4/m0;->f:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Ly1/a;

    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-interface {v3, v7, p1}, Ly1/x0;->d(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 46
    .line 47
    iget p1, p1, Ly1/v0;->e:I

    .line 48
    .line 49
    const/4 v0, 0x3

    .line 50
    if-eq p1, v0, :cond_4

    .line 51
    .line 52
    if-ne p1, v3, :cond_5

    .line 53
    .line 54
    :cond_4
    iget-object p1, p0, Ly1/f0;->h:Lu1/b0;

    .line 55
    .line 56
    invoke-virtual {p1, v3}, Lu1/b0;->f(I)Z

    .line 57
    .line 58
    .line 59
    :cond_5
    if-eqz p2, :cond_6

    .line 60
    .line 61
    invoke-virtual {p2}, Lu1/e;->e()Z

    .line 62
    .line 63
    .line 64
    :cond_6
    return-void
.end method

.method public final q(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/f0;->K:Ly1/v0;

    .line 2
    .line 3
    iget-boolean v1, v0, Ly1/v0;->l:Z

    .line 4
    .line 5
    iget v2, v0, Ly1/v0;->n:I

    .line 6
    .line 7
    iget v0, v0, Ly1/v0;->m:I

    .line 8
    .line 9
    invoke-virtual {p0, p1, v2, v0, v1}, Ly1/f0;->A0(IIIZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final q0(F)V
    .locals 7

    .line 1
    iput p1, p0, Ly1/f0;->V0:F

    .line 2
    .line 3
    iget-object v0, p0, Ly1/f0;->B:Ls1/b;

    .line 4
    .line 5
    iget v0, v0, Ls1/b;->g:F

    .line 6
    .line 7
    mul-float p1, p1, v0

    .line 8
    .line 9
    iget-object v0, p0, Ly1/f0;->a:[Lh4/m0;

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    .line 15
    aget-object v3, v0, v2

    .line 16
    .line 17
    iget-object v4, v3, Lh4/m0;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v4, Ly1/a;

    .line 20
    .line 21
    iget v5, v4, Ly1/a;->b:I

    .line 22
    .line 23
    const/4 v6, 0x1

    .line 24
    if-eq v5, v6, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const/4 v6, 0x2

    .line 32
    invoke-interface {v4, v6, v5}, Ly1/x0;->d(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, v3, Lh4/m0;->f:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Ly1/a;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v3, v6, v4}, Ly1/x0;->d(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-void
.end method

.method public final r()V
    .locals 1

    .line 1
    iget v0, p0, Ly1/f0;->V0:F

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ly1/f0;->q0(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final r0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/f0;->K:Ly1/v0;

    .line 2
    .line 3
    iget-boolean v1, v0, Ly1/v0;->l:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Ly1/v0;->n:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final s(Lf2/a0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 2
    .line 3
    iget-object v1, v0, Ly1/n0;->l:Ly1/l0;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Ly1/l0;->a:Ljava/lang/Object;

    .line 8
    .line 9
    if-ne v1, p1, :cond_0

    .line 10
    .line 11
    iget-wide v1, p0, Ly1/f0;->M0:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ly1/n0;->m(J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ly1/f0;->C()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, v0, Ly1/n0;->m:Ly1/l0;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Ly1/l0;->a:Ljava/lang/Object;

    .line 25
    .line 26
    if-ne v0, p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Ly1/f0;->D()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public final s0(Lr1/q0;Lf2/c0;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Lf2/c0;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Lr1/q0;->p()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p2, Lf2/c0;->a:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v0, p0, Ly1/f0;->l:Lr1/o0;

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iget p2, p2, Lr1/o0;->c:I

    .line 24
    .line 25
    iget-object v0, p0, Ly1/f0;->k:Lr1/p0;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lr1/q0;->n(ILr1/p0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lr1/p0;->a()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-boolean p1, v0, Lr1/p0;->h:Z

    .line 37
    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    iget-wide p1, v0, Lr1/p0;->e:J

    .line 41
    .line 42
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    cmp-long v0, p1, v2

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    :cond_1
    :goto_0
    return v1
.end method

.method public final t(Ljava/io/IOException;I)V
    .locals 2

    .line 1
    new-instance v0, Ly1/k;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1, p2}, Ly1/k;-><init>(ILjava/lang/Exception;I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Ly1/f0;->s:Ly1/n0;

    .line 8
    .line 9
    iget-object p1, p1, Ly1/n0;->i:Ly1/l0;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Ly1/l0;->g:Ly1/m0;

    .line 14
    .line 15
    iget-object p1, p1, Ly1/m0;->a:Lf2/c0;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ly1/k;->a(Lf2/c0;)Ly1/k;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    const-string p1, "Playback error"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lu1/a;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1, v1}, Ly1/f0;->u0(ZZ)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ly1/v0;->f(Ly1/k;)Ly1/v0;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 36
    .line 37
    return-void
.end method

.method public final t0()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 2
    .line 3
    iget-object v0, v0, Ly1/n0;->i:Ly1/l0;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, v0, Ly1/l0;->o:Lh2/r;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, Ly1/f0;->a:[Lh4/m0;

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    if-ge v1, v3, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lh2/r;->b(I)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    aget-object v2, v2, v1

    .line 24
    .line 25
    invoke-virtual {v2}, Lh4/m0;->m()V

    .line 26
    .line 27
    .line 28
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return-void
.end method

.method public final u(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 2
    .line 3
    iget-object v0, v0, Ly1/n0;->l:Ly1/l0;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Ly1/f0;->K:Ly1/v0;

    .line 8
    .line 9
    iget-object v1, v1, Ly1/v0;->b:Lf2/c0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Ly1/l0;->g:Ly1/m0;

    .line 13
    .line 14
    iget-object v1, v1, Ly1/m0;->a:Lf2/c0;

    .line 15
    .line 16
    :goto_0
    iget-object v2, p0, Ly1/f0;->K:Ly1/v0;

    .line 17
    .line 18
    iget-object v2, v2, Ly1/v0;->k:Lf2/c0;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    iget-object v3, p0, Ly1/f0;->K:Ly1/v0;

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ly1/v0;->c(Lf2/c0;)Ly1/v0;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Ly1/f0;->K:Ly1/v0;

    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Ly1/f0;->K:Ly1/v0;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-wide v3, v1, Ly1/v0;->s:J

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v0}, Ly1/l0;->d()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    :goto_1
    iput-wide v3, v1, Ly1/v0;->q:J

    .line 46
    .line 47
    iget-object v1, p0, Ly1/f0;->K:Ly1/v0;

    .line 48
    .line 49
    iget-wide v3, v1, Ly1/v0;->q:J

    .line 50
    .line 51
    invoke-virtual {p0, v3, v4}, Ly1/f0;->p(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    iput-wide v3, v1, Ly1/v0;->r:J

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    :cond_3
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-boolean p1, v0, Ly1/l0;->e:Z

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    iget-object p1, v0, Ly1/l0;->g:Ly1/m0;

    .line 68
    .line 69
    iget-object p1, p1, Ly1/m0;->a:Lf2/c0;

    .line 70
    .line 71
    iget-object v0, v0, Ly1/l0;->o:Lh2/r;

    .line 72
    .line 73
    invoke-virtual {p0, p1, v0}, Ly1/f0;->x0(Lf2/c0;Lh2/r;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    return-void
.end method

.method public final u0(ZZ)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Ly1/f0;->X:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 13
    :goto_1
    invoke-virtual {p0, p1, v0, v1, v0}, Ly1/f0;->O(ZZZZ)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Ly1/f0;->L:Ls3/t;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ls3/t;->c(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Ly1/f0;->f:Ly1/h0;

    .line 22
    .line 23
    check-cast p1, Ly1/g;

    .line 24
    .line 25
    iget-object p2, p0, Ly1/f0;->x:Lz1/i;

    .line 26
    .line 27
    iget-object v0, p1, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ly1/f;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget v3, v2, Ly1/f;->a:I

    .line 38
    .line 39
    sub-int/2addr v3, v1

    .line 40
    iput v3, v2, Ly1/f;->a:I

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ly1/g;->c()V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 51
    .line 52
    iget-boolean p1, p1, Ly1/v0;->l:Z

    .line 53
    .line 54
    iget-object p2, p0, Ly1/f0;->B:Ls1/b;

    .line 55
    .line 56
    invoke-virtual {p2, v1, p1}, Ls1/b;->d(IZ)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1}, Ly1/f0;->n0(I)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final v(Lr1/q0;Z)V
    .locals 49

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    iget-object v0, v11, Ly1/f0;->K:Ly1/v0;

    .line 6
    .line 7
    iget-object v8, v11, Ly1/f0;->t0:Ly1/e0;

    .line 8
    .line 9
    iget-object v9, v11, Ly1/f0;->s:Ly1/n0;

    .line 10
    .line 11
    iget v4, v11, Ly1/f0;->T:I

    .line 12
    .line 13
    iget-boolean v10, v11, Ly1/f0;->V:Z

    .line 14
    .line 15
    iget-object v13, v11, Ly1/f0;->k:Lr1/p0;

    .line 16
    .line 17
    iget-object v14, v11, Ly1/f0;->l:Lr1/o0;

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Lr1/q0;->p()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    sget-object v1, Ly1/v0;->u:Lf2/c0;

    .line 34
    .line 35
    iget-object v4, v0, Ly1/v0;->b:Lf2/c0;

    .line 36
    .line 37
    invoke-virtual {v1, v4}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    iget-wide v8, v0, Ly1/v0;->s:J

    .line 44
    .line 45
    cmp-long v4, v8, v6

    .line 46
    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/16 v27, 0x0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    const/16 v27, 0x1

    .line 54
    .line 55
    :goto_1
    if-eqz v27, :cond_2

    .line 56
    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    iget-object v4, v0, Ly1/v0;->a:Lr1/q0;

    .line 60
    .line 61
    invoke-virtual {v4}, Lr1/q0;->p()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_2

    .line 66
    .line 67
    iget-object v4, v0, Ly1/v0;->a:Lr1/q0;

    .line 68
    .line 69
    iget-object v0, v0, Ly1/v0;->b:Lf2/c0;

    .line 70
    .line 71
    iget-object v0, v0, Lf2/c0;->a:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {v4, v0, v14}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-boolean v0, v0, Lr1/o0;->f:Z

    .line 78
    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    const/16 v28, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const/16 v28, 0x0

    .line 85
    .line 86
    :goto_2
    new-instance v0, Ly1/d0;

    .line 87
    .line 88
    const/16 v26, 0x0

    .line 89
    .line 90
    const/16 v29, 0x4

    .line 91
    .line 92
    const-wide/16 v20, 0x0

    .line 93
    .line 94
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    const/16 v24, 0x0

    .line 100
    .line 101
    const/16 v25, 0x1

    .line 102
    .line 103
    move-object/from16 v18, v0

    .line 104
    .line 105
    move-object/from16 v19, v1

    .line 106
    .line 107
    invoke-direct/range {v18 .. v29}, Ly1/d0;-><init>(Lf2/c0;JJZZZZZI)V

    .line 108
    .line 109
    .line 110
    move-object v9, v0

    .line 111
    move-wide/from16 v33, v6

    .line 112
    .line 113
    const/4 v4, 0x2

    .line 114
    goto/16 :goto_21

    .line 115
    .line 116
    :cond_3
    iget-object v1, v0, Ly1/v0;->b:Lf2/c0;

    .line 117
    .line 118
    iget-object v15, v1, Lf2/c0;->a:Ljava/lang/Object;

    .line 119
    .line 120
    iget-object v2, v0, Ly1/v0;->a:Lr1/q0;

    .line 121
    .line 122
    invoke-virtual {v2}, Lr1/q0;->p()Z

    .line 123
    .line 124
    .line 125
    move-result v20

    .line 126
    if-nez v20, :cond_5

    .line 127
    .line 128
    iget-object v3, v1, Lf2/c0;->a:Ljava/lang/Object;

    .line 129
    .line 130
    invoke-virtual {v2, v3, v14}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iget-boolean v2, v2, Lr1/o0;->f:Z

    .line 135
    .line 136
    if-eqz v2, :cond_4

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_4
    const/16 v21, 0x0

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_5
    :goto_3
    const/16 v21, 0x1

    .line 143
    .line 144
    :goto_4
    iget-object v2, v0, Ly1/v0;->b:Lf2/c0;

    .line 145
    .line 146
    invoke-virtual {v2}, Lf2/c0;->b()Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-nez v2, :cond_7

    .line 151
    .line 152
    if-eqz v21, :cond_6

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_6
    iget-wide v2, v0, Ly1/v0;->s:J

    .line 156
    .line 157
    :goto_5
    move-wide/from16 v28, v2

    .line 158
    .line 159
    goto :goto_7

    .line 160
    :cond_7
    :goto_6
    iget-wide v2, v0, Ly1/v0;->c:J

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :goto_7
    const-wide/16 v30, 0x1

    .line 164
    .line 165
    const/4 v3, -0x1

    .line 166
    if-eqz v8, :cond_b

    .line 167
    .line 168
    const/16 v22, 0x1

    .line 169
    .line 170
    move-object v2, v1

    .line 171
    move-object/from16 v1, p1

    .line 172
    .line 173
    move-object v11, v2

    .line 174
    move-object v2, v8

    .line 175
    move-object/from16 v32, v9

    .line 176
    .line 177
    const/4 v9, 0x4

    .line 178
    move/from16 v3, v22

    .line 179
    .line 180
    move v5, v10

    .line 181
    move-object v6, v13

    .line 182
    move-object v7, v14

    .line 183
    invoke-static/range {v1 .. v7}, Ly1/f0;->S(Lr1/q0;Ly1/e0;ZIZLr1/p0;Lr1/o0;)Landroid/util/Pair;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    if-nez v1, :cond_8

    .line 188
    .line 189
    invoke-virtual {v12, v10}, Lr1/q0;->a(Z)I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    move-wide/from16 v2, v28

    .line 194
    .line 195
    const/4 v4, 0x0

    .line 196
    const/4 v5, 0x1

    .line 197
    const/4 v6, 0x0

    .line 198
    goto :goto_a

    .line 199
    :cond_8
    iget-wide v2, v8, Ly1/e0;->c:J

    .line 200
    .line 201
    cmp-long v4, v2, v16

    .line 202
    .line 203
    if-nez v4, :cond_9

    .line 204
    .line 205
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 206
    .line 207
    invoke-virtual {v12, v1, v14}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    iget v3, v1, Lr1/o0;->c:I

    .line 212
    .line 213
    move-wide/from16 v1, v28

    .line 214
    .line 215
    const/4 v5, 0x0

    .line 216
    goto :goto_8

    .line 217
    :cond_9
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 218
    .line 219
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v1, Ljava/lang/Long;

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 224
    .line 225
    .line 226
    move-result-wide v1

    .line 227
    const/4 v3, -0x1

    .line 228
    const/4 v5, 0x1

    .line 229
    :goto_8
    iget v4, v0, Ly1/v0;->e:I

    .line 230
    .line 231
    if-ne v4, v9, :cond_a

    .line 232
    .line 233
    const/4 v4, 0x1

    .line 234
    goto :goto_9

    .line 235
    :cond_a
    const/4 v4, 0x0

    .line 236
    :goto_9
    move v6, v4

    .line 237
    move v4, v5

    .line 238
    const/4 v5, 0x0

    .line 239
    move-wide/from16 v47, v1

    .line 240
    .line 241
    move v1, v3

    .line 242
    move-wide/from16 v2, v47

    .line 243
    .line 244
    :goto_a
    move/from16 v43, v4

    .line 245
    .line 246
    move/from16 v42, v5

    .line 247
    .line 248
    move/from16 v41, v6

    .line 249
    .line 250
    const/4 v8, -0x1

    .line 251
    const-wide/16 v33, 0x0

    .line 252
    .line 253
    move v4, v1

    .line 254
    goto/16 :goto_11

    .line 255
    .line 256
    :cond_b
    move-object v11, v1

    .line 257
    move-object/from16 v32, v9

    .line 258
    .line 259
    const/4 v9, 0x4

    .line 260
    iget-object v1, v0, Ly1/v0;->a:Lr1/q0;

    .line 261
    .line 262
    invoke-virtual {v1}, Lr1/q0;->p()Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_c

    .line 267
    .line 268
    invoke-virtual {v12, v10}, Lr1/q0;->a(Z)I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    move v4, v1

    .line 273
    move-wide/from16 v2, v28

    .line 274
    .line 275
    const/4 v8, -0x1

    .line 276
    :goto_b
    const-wide/16 v33, 0x0

    .line 277
    .line 278
    :goto_c
    const/16 v41, 0x0

    .line 279
    .line 280
    const/16 v42, 0x0

    .line 281
    .line 282
    :goto_d
    const/16 v43, 0x0

    .line 283
    .line 284
    goto/16 :goto_11

    .line 285
    .line 286
    :cond_c
    invoke-virtual {v12, v15}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    const/4 v8, -0x1

    .line 291
    if-ne v1, v8, :cond_e

    .line 292
    .line 293
    iget-object v6, v0, Ly1/v0;->a:Lr1/q0;

    .line 294
    .line 295
    move-object v1, v13

    .line 296
    move-object v2, v14

    .line 297
    move v3, v4

    .line 298
    move v4, v10

    .line 299
    move-object v5, v15

    .line 300
    move-object/from16 v7, p1

    .line 301
    .line 302
    invoke-static/range {v1 .. v7}, Ly1/f0;->T(Lr1/p0;Lr1/o0;IZLjava/lang/Object;Lr1/q0;Lr1/q0;)I

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-ne v1, v8, :cond_d

    .line 307
    .line 308
    invoke-virtual {v12, v10}, Lr1/q0;->a(Z)I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    const/4 v5, 0x1

    .line 313
    goto :goto_e

    .line 314
    :cond_d
    const/4 v5, 0x0

    .line 315
    :goto_e
    move v4, v1

    .line 316
    move/from16 v42, v5

    .line 317
    .line 318
    move-wide/from16 v2, v28

    .line 319
    .line 320
    const-wide/16 v33, 0x0

    .line 321
    .line 322
    const/16 v41, 0x0

    .line 323
    .line 324
    goto :goto_d

    .line 325
    :cond_e
    cmp-long v1, v28, v16

    .line 326
    .line 327
    if-nez v1, :cond_f

    .line 328
    .line 329
    invoke-virtual {v12, v15, v14}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    iget v1, v1, Lr1/o0;->c:I

    .line 334
    .line 335
    move v4, v1

    .line 336
    move-wide/from16 v2, v28

    .line 337
    .line 338
    goto :goto_b

    .line 339
    :cond_f
    if-eqz v21, :cond_12

    .line 340
    .line 341
    iget-object v1, v0, Ly1/v0;->a:Lr1/q0;

    .line 342
    .line 343
    iget-object v2, v11, Lf2/c0;->a:Ljava/lang/Object;

    .line 344
    .line 345
    invoke-virtual {v1, v2, v14}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 346
    .line 347
    .line 348
    iget-object v1, v0, Ly1/v0;->a:Lr1/q0;

    .line 349
    .line 350
    iget v2, v14, Lr1/o0;->c:I

    .line 351
    .line 352
    const-wide/16 v5, 0x0

    .line 353
    .line 354
    invoke-virtual {v1, v2, v13, v5, v6}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    iget v1, v1, Lr1/p0;->m:I

    .line 359
    .line 360
    iget-object v2, v0, Ly1/v0;->a:Lr1/q0;

    .line 361
    .line 362
    iget-object v3, v11, Lf2/c0;->a:Ljava/lang/Object;

    .line 363
    .line 364
    invoke-virtual {v2, v3}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    if-ne v1, v2, :cond_10

    .line 369
    .line 370
    iget-wide v1, v14, Lr1/o0;->e:J

    .line 371
    .line 372
    add-long v22, v28, v1

    .line 373
    .line 374
    invoke-virtual {v12, v15, v14}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    iget v4, v1, Lr1/o0;->c:I

    .line 379
    .line 380
    move-object/from16 v1, p1

    .line 381
    .line 382
    move-object v2, v13

    .line 383
    move-object v3, v14

    .line 384
    move-wide/from16 v33, v5

    .line 385
    .line 386
    move-wide/from16 v5, v22

    .line 387
    .line 388
    invoke-virtual/range {v1 .. v6}, Lr1/q0;->i(Lr1/p0;Lr1/o0;IJ)Landroid/util/Pair;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 393
    .line 394
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v1, Ljava/lang/Long;

    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 399
    .line 400
    .line 401
    move-result-wide v1

    .line 402
    :goto_f
    move-wide v2, v1

    .line 403
    goto :goto_10

    .line 404
    :cond_10
    move-wide/from16 v33, v5

    .line 405
    .line 406
    invoke-virtual {v12, v15, v14}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 407
    .line 408
    .line 409
    move-result-object v1

    .line 410
    iget-wide v1, v1, Lr1/o0;->d:J

    .line 411
    .line 412
    cmp-long v3, v1, v16

    .line 413
    .line 414
    if-eqz v3, :cond_11

    .line 415
    .line 416
    iget-wide v1, v14, Lr1/o0;->d:J

    .line 417
    .line 418
    sub-long v26, v1, v30

    .line 419
    .line 420
    const-wide/16 v24, 0x0

    .line 421
    .line 422
    move-wide/from16 v22, v28

    .line 423
    .line 424
    invoke-static/range {v22 .. v27}, Lu1/f0;->h(JJJ)J

    .line 425
    .line 426
    .line 427
    move-result-wide v1

    .line 428
    goto :goto_f

    .line 429
    :cond_11
    move-wide/from16 v2, v28

    .line 430
    .line 431
    :goto_10
    const/4 v4, -0x1

    .line 432
    const/16 v41, 0x0

    .line 433
    .line 434
    const/16 v42, 0x0

    .line 435
    .line 436
    const/16 v43, 0x1

    .line 437
    .line 438
    goto :goto_11

    .line 439
    :cond_12
    const-wide/16 v33, 0x0

    .line 440
    .line 441
    move-wide/from16 v2, v28

    .line 442
    .line 443
    const/4 v4, -0x1

    .line 444
    goto/16 :goto_c

    .line 445
    .line 446
    :goto_11
    if-eq v4, v8, :cond_13

    .line 447
    .line 448
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    move-object/from16 v1, p1

    .line 454
    .line 455
    move-object v2, v13

    .line 456
    move-object v3, v14

    .line 457
    invoke-virtual/range {v1 .. v6}, Lr1/q0;->i(Lr1/p0;Lr1/o0;IJ)Landroid/util/Pair;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 462
    .line 463
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast v1, Ljava/lang/Long;

    .line 466
    .line 467
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 468
    .line 469
    .line 470
    move-result-wide v1

    .line 471
    move-wide v6, v1

    .line 472
    move-wide/from16 v2, v16

    .line 473
    .line 474
    :goto_12
    move-object/from16 v1, v32

    .line 475
    .line 476
    goto :goto_13

    .line 477
    :cond_13
    move-wide v6, v2

    .line 478
    goto :goto_12

    .line 479
    :goto_13
    invoke-virtual {v1, v12, v15, v6, v7}, Ly1/n0;->p(Lr1/q0;Ljava/lang/Object;J)Lf2/c0;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    iget v4, v1, Lf2/c0;->e:I

    .line 484
    .line 485
    if-eq v4, v8, :cond_15

    .line 486
    .line 487
    iget v5, v11, Lf2/c0;->e:I

    .line 488
    .line 489
    if-eq v5, v8, :cond_14

    .line 490
    .line 491
    if-lt v4, v5, :cond_14

    .line 492
    .line 493
    goto :goto_14

    .line 494
    :cond_14
    const/4 v5, 0x0

    .line 495
    goto :goto_15

    .line 496
    :cond_15
    :goto_14
    const/4 v5, 0x1

    .line 497
    :goto_15
    iget-object v4, v11, Lf2/c0;->a:Ljava/lang/Object;

    .line 498
    .line 499
    invoke-virtual {v4, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v4

    .line 503
    if-eqz v4, :cond_16

    .line 504
    .line 505
    invoke-virtual {v11}, Lf2/c0;->b()Z

    .line 506
    .line 507
    .line 508
    move-result v10

    .line 509
    if-nez v10, :cond_16

    .line 510
    .line 511
    invoke-virtual {v1}, Lf2/c0;->b()Z

    .line 512
    .line 513
    .line 514
    move-result v10

    .line 515
    if-nez v10, :cond_16

    .line 516
    .line 517
    if-eqz v5, :cond_16

    .line 518
    .line 519
    const/4 v5, 0x1

    .line 520
    goto :goto_16

    .line 521
    :cond_16
    const/4 v5, 0x0

    .line 522
    :goto_16
    invoke-virtual {v12, v15, v14}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 523
    .line 524
    .line 525
    move-result-object v10

    .line 526
    if-nez v21, :cond_19

    .line 527
    .line 528
    cmp-long v13, v28, v2

    .line 529
    .line 530
    if-nez v13, :cond_19

    .line 531
    .line 532
    iget-object v13, v11, Lf2/c0;->a:Ljava/lang/Object;

    .line 533
    .line 534
    iget-object v9, v1, Lf2/c0;->a:Ljava/lang/Object;

    .line 535
    .line 536
    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    move-result v9

    .line 540
    if-nez v9, :cond_17

    .line 541
    .line 542
    goto :goto_17

    .line 543
    :cond_17
    invoke-virtual {v11}, Lf2/c0;->b()Z

    .line 544
    .line 545
    .line 546
    move-result v9

    .line 547
    if-eqz v9, :cond_18

    .line 548
    .line 549
    iget v9, v11, Lf2/c0;->b:I

    .line 550
    .line 551
    invoke-virtual {v10, v9}, Lr1/o0;->g(I)Z

    .line 552
    .line 553
    .line 554
    :cond_18
    invoke-virtual {v1}, Lf2/c0;->b()Z

    .line 555
    .line 556
    .line 557
    move-result v9

    .line 558
    if-eqz v9, :cond_19

    .line 559
    .line 560
    iget v9, v1, Lf2/c0;->b:I

    .line 561
    .line 562
    invoke-virtual {v10, v9}, Lr1/o0;->g(I)Z

    .line 563
    .line 564
    .line 565
    :cond_19
    :goto_17
    if-nez v5, :cond_1a

    .line 566
    .line 567
    goto :goto_18

    .line 568
    :cond_1a
    move-object v1, v11

    .line 569
    :goto_18
    invoke-virtual {v1}, Lf2/c0;->b()Z

    .line 570
    .line 571
    .line 572
    move-result v5

    .line 573
    if-eqz v5, :cond_1e

    .line 574
    .line 575
    invoke-virtual {v1, v11}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v4

    .line 579
    if-eqz v4, :cond_1c

    .line 580
    .line 581
    iget-wide v6, v0, Ly1/v0;->s:J

    .line 582
    .line 583
    :cond_1b
    :goto_19
    move-wide/from16 v39, v2

    .line 584
    .line 585
    move-wide/from16 v37, v6

    .line 586
    .line 587
    goto :goto_1a

    .line 588
    :cond_1c
    iget-object v4, v1, Lf2/c0;->a:Ljava/lang/Object;

    .line 589
    .line 590
    invoke-virtual {v12, v4, v14}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 591
    .line 592
    .line 593
    iget v4, v1, Lf2/c0;->c:I

    .line 594
    .line 595
    iget v5, v1, Lf2/c0;->b:I

    .line 596
    .line 597
    invoke-virtual {v14, v5}, Lr1/o0;->e(I)I

    .line 598
    .line 599
    .line 600
    move-result v5

    .line 601
    if-ne v4, v5, :cond_1d

    .line 602
    .line 603
    iget-object v4, v14, Lr1/o0;->g:Lr1/c;

    .line 604
    .line 605
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    :cond_1d
    move-wide/from16 v39, v2

    .line 609
    .line 610
    move-wide/from16 v37, v33

    .line 611
    .line 612
    goto :goto_1a

    .line 613
    :cond_1e
    if-eqz v4, :cond_1b

    .line 614
    .line 615
    invoke-virtual {v11}, Lf2/c0;->b()Z

    .line 616
    .line 617
    .line 618
    move-result v4

    .line 619
    if-eqz v4, :cond_1b

    .line 620
    .line 621
    invoke-virtual {v12, v15, v14}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    iget-object v4, v4, Lr1/o0;->g:Lr1/c;

    .line 626
    .line 627
    iget v5, v11, Lf2/c0;->b:I

    .line 628
    .line 629
    invoke-virtual {v4, v5}, Lr1/c;->a(I)Lr1/a;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    .line 635
    .line 636
    iget-wide v9, v0, Ly1/v0;->c:J

    .line 637
    .line 638
    cmp-long v5, v9, v16

    .line 639
    .line 640
    if-eqz v5, :cond_1f

    .line 641
    .line 642
    cmp-long v5, v33, v9

    .line 643
    .line 644
    if-gtz v5, :cond_1f

    .line 645
    .line 646
    goto :goto_19

    .line 647
    :cond_1f
    iget v5, v4, Lr1/a;->a:I

    .line 648
    .line 649
    iget v9, v11, Lf2/c0;->c:I

    .line 650
    .line 651
    if-le v5, v9, :cond_1b

    .line 652
    .line 653
    iget-object v4, v4, Lr1/a;->e:[I

    .line 654
    .line 655
    aget v4, v4, v9

    .line 656
    .line 657
    const/4 v5, 0x2

    .line 658
    if-ne v4, v5, :cond_1b

    .line 659
    .line 660
    invoke-virtual {v12, v15, v14}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 661
    .line 662
    .line 663
    move-result-object v2

    .line 664
    iget-wide v2, v2, Lr1/o0;->d:J

    .line 665
    .line 666
    cmp-long v4, v2, v16

    .line 667
    .line 668
    if-eqz v4, :cond_20

    .line 669
    .line 670
    sub-long v2, v2, v30

    .line 671
    .line 672
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 673
    .line 674
    .line 675
    move-result-wide v2

    .line 676
    move-wide v6, v2

    .line 677
    :cond_20
    move-wide/from16 v37, v6

    .line 678
    .line 679
    move-wide/from16 v39, v37

    .line 680
    .line 681
    :goto_1a
    iget-object v2, v0, Ly1/v0;->b:Lf2/c0;

    .line 682
    .line 683
    invoke-virtual {v1, v2}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    if-eqz v2, :cond_22

    .line 688
    .line 689
    iget-wide v2, v0, Ly1/v0;->s:J

    .line 690
    .line 691
    cmp-long v4, v37, v2

    .line 692
    .line 693
    if-eqz v4, :cond_21

    .line 694
    .line 695
    goto :goto_1b

    .line 696
    :cond_21
    const/16 v44, 0x0

    .line 697
    .line 698
    goto :goto_1c

    .line 699
    :cond_22
    :goto_1b
    const/16 v44, 0x1

    .line 700
    .line 701
    :goto_1c
    iget-object v2, v0, Ly1/v0;->b:Lf2/c0;

    .line 702
    .line 703
    iget-object v2, v2, Lf2/c0;->a:Ljava/lang/Object;

    .line 704
    .line 705
    invoke-virtual {v12, v2}, Lr1/q0;->b(Ljava/lang/Object;)I

    .line 706
    .line 707
    .line 708
    move-result v2

    .line 709
    if-ne v2, v8, :cond_23

    .line 710
    .line 711
    const/4 v3, 0x4

    .line 712
    goto :goto_1d

    .line 713
    :cond_23
    const/4 v3, 0x3

    .line 714
    :goto_1d
    iget-object v2, v1, Lf2/c0;->a:Ljava/lang/Object;

    .line 715
    .line 716
    iget-object v4, v0, Ly1/v0;->b:Lf2/c0;

    .line 717
    .line 718
    iget-object v4, v4, Lf2/c0;->a:Ljava/lang/Object;

    .line 719
    .line 720
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 721
    .line 722
    .line 723
    move-result v2

    .line 724
    if-eqz v2, :cond_25

    .line 725
    .line 726
    iget v2, v1, Lf2/c0;->b:I

    .line 727
    .line 728
    if-eq v2, v8, :cond_25

    .line 729
    .line 730
    iget-object v2, v1, Lf2/c0;->a:Ljava/lang/Object;

    .line 731
    .line 732
    invoke-virtual {v12, v2, v14}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    iget-object v2, v2, Lr1/o0;->g:Lr1/c;

    .line 737
    .line 738
    iget v4, v1, Lf2/c0;->b:I

    .line 739
    .line 740
    invoke-virtual {v2, v4}, Lr1/c;->a(I)Lr1/a;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    iget v4, v1, Lf2/c0;->c:I

    .line 745
    .line 746
    iget-object v2, v2, Lr1/a;->e:[I

    .line 747
    .line 748
    array-length v5, v2

    .line 749
    if-ge v4, v5, :cond_24

    .line 750
    .line 751
    aget v2, v2, v4

    .line 752
    .line 753
    const/4 v4, 0x2

    .line 754
    if-eq v2, v4, :cond_26

    .line 755
    .line 756
    goto :goto_1e

    .line 757
    :cond_24
    const/4 v4, 0x2

    .line 758
    :goto_1e
    const/16 v46, 0x0

    .line 759
    .line 760
    goto :goto_1f

    .line 761
    :cond_25
    const/4 v4, 0x2

    .line 762
    :cond_26
    move/from16 v46, v3

    .line 763
    .line 764
    :goto_1f
    if-eqz v44, :cond_27

    .line 765
    .line 766
    if-eqz p2, :cond_27

    .line 767
    .line 768
    iget-object v2, v0, Ly1/v0;->a:Lr1/q0;

    .line 769
    .line 770
    invoke-virtual {v2}, Lr1/q0;->p()Z

    .line 771
    .line 772
    .line 773
    move-result v2

    .line 774
    if-nez v2, :cond_27

    .line 775
    .line 776
    iget-object v2, v0, Ly1/v0;->a:Lr1/q0;

    .line 777
    .line 778
    iget-object v0, v0, Ly1/v0;->b:Lf2/c0;

    .line 779
    .line 780
    iget-object v0, v0, Lf2/c0;->a:Ljava/lang/Object;

    .line 781
    .line 782
    invoke-virtual {v2, v0, v14}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    iget-boolean v0, v0, Lr1/o0;->f:Z

    .line 787
    .line 788
    if-nez v0, :cond_27

    .line 789
    .line 790
    const/16 v45, 0x1

    .line 791
    .line 792
    goto :goto_20

    .line 793
    :cond_27
    const/16 v45, 0x0

    .line 794
    .line 795
    :goto_20
    new-instance v0, Ly1/d0;

    .line 796
    .line 797
    move-object/from16 v35, v0

    .line 798
    .line 799
    move-object/from16 v36, v1

    .line 800
    .line 801
    invoke-direct/range {v35 .. v46}, Ly1/d0;-><init>(Lf2/c0;JJZZZZZI)V

    .line 802
    .line 803
    .line 804
    move-object v9, v0

    .line 805
    :goto_21
    iget-object v10, v9, Ly1/d0;->a:Lf2/c0;

    .line 806
    .line 807
    iget-wide v13, v9, Ly1/d0;->b:J

    .line 808
    .line 809
    :try_start_0
    iget-boolean v0, v9, Ly1/d0;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 810
    .line 811
    if-eqz v0, :cond_29

    .line 812
    .line 813
    move-object/from16 v15, p0

    .line 814
    .line 815
    const/4 v7, 0x2

    .line 816
    :try_start_1
    iget-object v0, v15, Ly1/f0;->K:Ly1/v0;

    .line 817
    .line 818
    iget v0, v0, Ly1/v0;->e:I

    .line 819
    .line 820
    const/4 v1, 0x1

    .line 821
    if-eq v0, v1, :cond_28

    .line 822
    .line 823
    const/4 v0, 0x4

    .line 824
    invoke-virtual {v15, v0}, Ly1/f0;->n0(I)V

    .line 825
    .line 826
    .line 827
    :cond_28
    const/4 v2, 0x0

    .line 828
    goto :goto_23

    .line 829
    :catchall_0
    move-exception v0

    .line 830
    :goto_22
    const/4 v11, 0x2

    .line 831
    goto/16 :goto_2d

    .line 832
    .line 833
    :goto_23
    invoke-virtual {v15, v2, v2, v2, v1}, Ly1/f0;->O(ZZZZ)V

    .line 834
    .line 835
    .line 836
    goto :goto_24

    .line 837
    :cond_29
    const/4 v1, 0x1

    .line 838
    move-object/from16 v15, p0

    .line 839
    .line 840
    const/4 v7, 0x2

    .line 841
    :goto_24
    iget-object v0, v15, Ly1/f0;->a:[Lh4/m0;

    .line 842
    .line 843
    array-length v2, v0

    .line 844
    const/4 v3, 0x0

    .line 845
    :goto_25
    if-ge v3, v2, :cond_2c

    .line 846
    .line 847
    aget-object v4, v0, v3

    .line 848
    .line 849
    iget-object v5, v4, Lh4/m0;->e:Ljava/lang/Object;

    .line 850
    .line 851
    check-cast v5, Ly1/a;

    .line 852
    .line 853
    iget-object v6, v5, Ly1/a;->q:Lr1/q0;

    .line 854
    .line 855
    invoke-static {v6, v12}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 856
    .line 857
    .line 858
    move-result v6

    .line 859
    if-nez v6, :cond_2a

    .line 860
    .line 861
    iput-object v12, v5, Ly1/a;->q:Lr1/q0;

    .line 862
    .line 863
    invoke-virtual {v5}, Ly1/a;->v()V

    .line 864
    .line 865
    .line 866
    :cond_2a
    iget-object v4, v4, Lh4/m0;->f:Ljava/lang/Object;

    .line 867
    .line 868
    check-cast v4, Ly1/a;

    .line 869
    .line 870
    if-eqz v4, :cond_2b

    .line 871
    .line 872
    iget-object v5, v4, Ly1/a;->q:Lr1/q0;

    .line 873
    .line 874
    invoke-static {v5, v12}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 875
    .line 876
    .line 877
    move-result v5

    .line 878
    if-nez v5, :cond_2b

    .line 879
    .line 880
    iput-object v12, v4, Ly1/a;->q:Lr1/q0;

    .line 881
    .line 882
    invoke-virtual {v4}, Ly1/a;->v()V

    .line 883
    .line 884
    .line 885
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    .line 886
    .line 887
    goto :goto_25

    .line 888
    :cond_2c
    iget-boolean v0, v9, Ly1/d0;->g:Z

    .line 889
    .line 890
    if-nez v0, :cond_31

    .line 891
    .line 892
    iget-object v0, v15, Ly1/f0;->s:Ly1/n0;

    .line 893
    .line 894
    iget-object v0, v0, Ly1/n0;->j:Ly1/l0;

    .line 895
    .line 896
    if-nez v0, :cond_2d

    .line 897
    .line 898
    move-wide/from16 v5, v33

    .line 899
    .line 900
    goto :goto_26

    .line 901
    :cond_2d
    invoke-virtual {v15, v0}, Ly1/f0;->n(Ly1/l0;)J

    .line 902
    .line 903
    .line 904
    move-result-wide v0

    .line 905
    move-wide v5, v0

    .line 906
    :goto_26
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->f()Z

    .line 907
    .line 908
    .line 909
    move-result v0

    .line 910
    if-eqz v0, :cond_2f

    .line 911
    .line 912
    iget-object v0, v15, Ly1/f0;->s:Ly1/n0;

    .line 913
    .line 914
    iget-object v0, v0, Ly1/n0;->k:Ly1/l0;

    .line 915
    .line 916
    if-nez v0, :cond_2e

    .line 917
    .line 918
    goto :goto_27

    .line 919
    :cond_2e
    invoke-virtual {v15, v0}, Ly1/f0;->n(Ly1/l0;)J

    .line 920
    .line 921
    .line 922
    move-result-wide v0

    .line 923
    move-wide/from16 v33, v0

    .line 924
    .line 925
    :cond_2f
    :goto_27
    iget-object v1, v15, Ly1/f0;->s:Ly1/n0;

    .line 926
    .line 927
    iget-wide v3, v15, Ly1/f0;->M0:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    .line 929
    move-object/from16 v2, p1

    .line 930
    .line 931
    const/4 v11, 0x2

    .line 932
    move-wide/from16 v7, v33

    .line 933
    .line 934
    :try_start_2
    invoke-virtual/range {v1 .. v8}, Ly1/n0;->s(Lr1/q0;JJJ)I

    .line 935
    .line 936
    .line 937
    move-result v0

    .line 938
    and-int/lit8 v1, v0, 0x1

    .line 939
    .line 940
    if-eqz v1, :cond_30

    .line 941
    .line 942
    const/4 v1, 0x0

    .line 943
    invoke-virtual {v15, v1}, Ly1/f0;->V(Z)V

    .line 944
    .line 945
    .line 946
    goto :goto_2a

    .line 947
    :catchall_1
    move-exception v0

    .line 948
    goto/16 :goto_2d

    .line 949
    .line 950
    :cond_30
    and-int/2addr v0, v11

    .line 951
    if-eqz v0, :cond_35

    .line 952
    .line 953
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->h()V

    .line 954
    .line 955
    .line 956
    goto :goto_2a

    .line 957
    :cond_31
    const/4 v11, 0x2

    .line 958
    invoke-virtual/range {p1 .. p1}, Lr1/q0;->p()Z

    .line 959
    .line 960
    .line 961
    move-result v0

    .line 962
    if-nez v0, :cond_35

    .line 963
    .line 964
    iget-object v0, v15, Ly1/f0;->s:Ly1/n0;

    .line 965
    .line 966
    iget-object v0, v0, Ly1/n0;->i:Ly1/l0;

    .line 967
    .line 968
    :goto_28
    if-eqz v0, :cond_33

    .line 969
    .line 970
    iget-object v2, v0, Ly1/l0;->g:Ly1/m0;

    .line 971
    .line 972
    iget-object v2, v2, Ly1/m0;->a:Lf2/c0;

    .line 973
    .line 974
    invoke-virtual {v2, v10}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 975
    .line 976
    .line 977
    move-result v2

    .line 978
    if-eqz v2, :cond_32

    .line 979
    .line 980
    iget-object v2, v15, Ly1/f0;->s:Ly1/n0;

    .line 981
    .line 982
    iget-object v3, v0, Ly1/l0;->g:Ly1/m0;

    .line 983
    .line 984
    invoke-virtual {v2, v12, v3}, Ly1/n0;->h(Lr1/q0;Ly1/m0;)Ly1/m0;

    .line 985
    .line 986
    .line 987
    move-result-object v2

    .line 988
    iput-object v2, v0, Ly1/l0;->g:Ly1/m0;

    .line 989
    .line 990
    invoke-virtual {v0}, Ly1/l0;->k()V

    .line 991
    .line 992
    .line 993
    :cond_32
    iget-object v0, v0, Ly1/l0;->m:Ly1/l0;

    .line 994
    .line 995
    goto :goto_28

    .line 996
    :cond_33
    iget-boolean v6, v9, Ly1/d0;->d:Z

    .line 997
    .line 998
    iget-object v0, v15, Ly1/f0;->s:Ly1/n0;

    .line 999
    .line 1000
    iget-object v2, v0, Ly1/n0;->i:Ly1/l0;

    .line 1001
    .line 1002
    iget-object v0, v0, Ly1/n0;->j:Ly1/l0;

    .line 1003
    .line 1004
    if-eq v2, v0, :cond_34

    .line 1005
    .line 1006
    const/4 v5, 0x1

    .line 1007
    goto :goto_29

    .line 1008
    :cond_34
    const/4 v5, 0x0

    .line 1009
    :goto_29
    move-object/from16 v1, p0

    .line 1010
    .line 1011
    move-object v2, v10

    .line 1012
    move-wide v3, v13

    .line 1013
    invoke-virtual/range {v1 .. v6}, Ly1/f0;->X(Lf2/c0;JZZ)J

    .line 1014
    .line 1015
    .line 1016
    move-result-wide v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1017
    move-wide v13, v0

    .line 1018
    :cond_35
    :goto_2a
    iget-object v0, v15, Ly1/f0;->K:Ly1/v0;

    .line 1019
    .line 1020
    iget-object v4, v0, Ly1/v0;->a:Lr1/q0;

    .line 1021
    .line 1022
    iget-object v5, v0, Ly1/v0;->b:Lf2/c0;

    .line 1023
    .line 1024
    iget-boolean v0, v9, Ly1/d0;->f:Z

    .line 1025
    .line 1026
    if-eqz v0, :cond_36

    .line 1027
    .line 1028
    move-wide v6, v13

    .line 1029
    goto :goto_2b

    .line 1030
    :cond_36
    move-wide/from16 v6, v16

    .line 1031
    .line 1032
    :goto_2b
    const/4 v8, 0x0

    .line 1033
    move-object/from16 v1, p0

    .line 1034
    .line 1035
    move-object/from16 v2, p1

    .line 1036
    .line 1037
    move-object v3, v10

    .line 1038
    invoke-virtual/range {v1 .. v8}, Ly1/f0;->C0(Lr1/q0;Lf2/c0;Lr1/q0;Lf2/c0;JZ)V

    .line 1039
    .line 1040
    .line 1041
    iget-boolean v0, v9, Ly1/d0;->g:Z

    .line 1042
    .line 1043
    if-nez v0, :cond_37

    .line 1044
    .line 1045
    iget-wide v0, v9, Ly1/d0;->c:J

    .line 1046
    .line 1047
    iget-object v2, v15, Ly1/f0;->K:Ly1/v0;

    .line 1048
    .line 1049
    iget-wide v2, v2, Ly1/v0;->c:J

    .line 1050
    .line 1051
    cmp-long v4, v0, v2

    .line 1052
    .line 1053
    if-eqz v4, :cond_39

    .line 1054
    .line 1055
    :cond_37
    iget-wide v5, v9, Ly1/d0;->c:J

    .line 1056
    .line 1057
    iget-boolean v0, v9, Ly1/d0;->h:Z

    .line 1058
    .line 1059
    if-eqz v0, :cond_38

    .line 1060
    .line 1061
    move-wide v7, v13

    .line 1062
    goto :goto_2c

    .line 1063
    :cond_38
    iget-object v1, v15, Ly1/f0;->K:Ly1/v0;

    .line 1064
    .line 1065
    iget-wide v1, v1, Ly1/v0;->d:J

    .line 1066
    .line 1067
    move-wide v7, v1

    .line 1068
    :goto_2c
    iget v9, v9, Ly1/d0;->i:I

    .line 1069
    .line 1070
    move-object/from16 v1, p0

    .line 1071
    .line 1072
    move-object v2, v10

    .line 1073
    move-wide v3, v13

    .line 1074
    move v10, v9

    .line 1075
    move v9, v0

    .line 1076
    invoke-virtual/range {v1 .. v10}, Ly1/f0;->y(Lf2/c0;JJJZI)Ly1/v0;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    iput-object v0, v15, Ly1/f0;->K:Ly1/v0;

    .line 1081
    .line 1082
    :cond_39
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->P()V

    .line 1083
    .line 1084
    .line 1085
    iget-object v0, v15, Ly1/f0;->K:Ly1/v0;

    .line 1086
    .line 1087
    iget-object v0, v0, Ly1/v0;->a:Lr1/q0;

    .line 1088
    .line 1089
    invoke-virtual {v15, v12, v0}, Ly1/f0;->R(Lr1/q0;Lr1/q0;)V

    .line 1090
    .line 1091
    .line 1092
    iget-object v0, v15, Ly1/f0;->K:Ly1/v0;

    .line 1093
    .line 1094
    invoke-virtual {v0, v12}, Ly1/v0;->j(Lr1/q0;)Ly1/v0;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    iput-object v0, v15, Ly1/f0;->K:Ly1/v0;

    .line 1099
    .line 1100
    invoke-virtual/range {p1 .. p1}, Lr1/q0;->p()Z

    .line 1101
    .line 1102
    .line 1103
    move-result v0

    .line 1104
    if-nez v0, :cond_3a

    .line 1105
    .line 1106
    const/4 v1, 0x0

    .line 1107
    iput-object v1, v15, Ly1/f0;->t0:Ly1/e0;

    .line 1108
    .line 1109
    :cond_3a
    const/4 v1, 0x0

    .line 1110
    invoke-virtual {v15, v1}, Ly1/f0;->u(Z)V

    .line 1111
    .line 1112
    .line 1113
    iget-object v0, v15, Ly1/f0;->h:Lu1/b0;

    .line 1114
    .line 1115
    invoke-virtual {v0, v11}, Lu1/b0;->f(I)Z

    .line 1116
    .line 1117
    .line 1118
    return-void

    .line 1119
    :catchall_2
    move-exception v0

    .line 1120
    move-object/from16 v15, p0

    .line 1121
    .line 1122
    goto/16 :goto_22

    .line 1123
    .line 1124
    :goto_2d
    iget-object v1, v15, Ly1/f0;->K:Ly1/v0;

    .line 1125
    .line 1126
    iget-object v4, v1, Ly1/v0;->a:Lr1/q0;

    .line 1127
    .line 1128
    iget-object v5, v1, Ly1/v0;->b:Lf2/c0;

    .line 1129
    .line 1130
    iget-boolean v1, v9, Ly1/d0;->f:Z

    .line 1131
    .line 1132
    if-eqz v1, :cond_3b

    .line 1133
    .line 1134
    move-wide v6, v13

    .line 1135
    goto :goto_2e

    .line 1136
    :cond_3b
    move-wide/from16 v6, v16

    .line 1137
    .line 1138
    :goto_2e
    const/4 v8, 0x0

    .line 1139
    move-object/from16 v1, p0

    .line 1140
    .line 1141
    move-object/from16 v2, p1

    .line 1142
    .line 1143
    move-object v3, v10

    .line 1144
    invoke-virtual/range {v1 .. v8}, Ly1/f0;->C0(Lr1/q0;Lf2/c0;Lr1/q0;Lf2/c0;JZ)V

    .line 1145
    .line 1146
    .line 1147
    iget-boolean v1, v9, Ly1/d0;->g:Z

    .line 1148
    .line 1149
    if-nez v1, :cond_3c

    .line 1150
    .line 1151
    iget-wide v1, v9, Ly1/d0;->c:J

    .line 1152
    .line 1153
    iget-object v3, v15, Ly1/f0;->K:Ly1/v0;

    .line 1154
    .line 1155
    iget-wide v3, v3, Ly1/v0;->c:J

    .line 1156
    .line 1157
    cmp-long v5, v1, v3

    .line 1158
    .line 1159
    if-eqz v5, :cond_3e

    .line 1160
    .line 1161
    :cond_3c
    iget-wide v5, v9, Ly1/d0;->c:J

    .line 1162
    .line 1163
    iget-boolean v7, v9, Ly1/d0;->h:Z

    .line 1164
    .line 1165
    if-eqz v7, :cond_3d

    .line 1166
    .line 1167
    move-wide/from16 v16, v13

    .line 1168
    .line 1169
    goto :goto_2f

    .line 1170
    :cond_3d
    iget-object v1, v15, Ly1/f0;->K:Ly1/v0;

    .line 1171
    .line 1172
    iget-wide v1, v1, Ly1/v0;->d:J

    .line 1173
    .line 1174
    move-wide/from16 v16, v1

    .line 1175
    .line 1176
    :goto_2f
    iget v9, v9, Ly1/d0;->i:I

    .line 1177
    .line 1178
    move-object/from16 v1, p0

    .line 1179
    .line 1180
    move-object v2, v10

    .line 1181
    move-wide v3, v13

    .line 1182
    move v10, v7

    .line 1183
    move-wide/from16 v7, v16

    .line 1184
    .line 1185
    move v13, v9

    .line 1186
    move v9, v10

    .line 1187
    move v10, v13

    .line 1188
    invoke-virtual/range {v1 .. v10}, Ly1/f0;->y(Lf2/c0;JJJZI)Ly1/v0;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v1

    .line 1192
    iput-object v1, v15, Ly1/f0;->K:Ly1/v0;

    .line 1193
    .line 1194
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->P()V

    .line 1195
    .line 1196
    .line 1197
    iget-object v1, v15, Ly1/f0;->K:Ly1/v0;

    .line 1198
    .line 1199
    iget-object v1, v1, Ly1/v0;->a:Lr1/q0;

    .line 1200
    .line 1201
    invoke-virtual {v15, v12, v1}, Ly1/f0;->R(Lr1/q0;Lr1/q0;)V

    .line 1202
    .line 1203
    .line 1204
    iget-object v1, v15, Ly1/f0;->K:Ly1/v0;

    .line 1205
    .line 1206
    invoke-virtual {v1, v12}, Ly1/v0;->j(Lr1/q0;)Ly1/v0;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v1

    .line 1210
    iput-object v1, v15, Ly1/f0;->K:Ly1/v0;

    .line 1211
    .line 1212
    invoke-virtual/range {p1 .. p1}, Lr1/q0;->p()Z

    .line 1213
    .line 1214
    .line 1215
    move-result v1

    .line 1216
    if-nez v1, :cond_3f

    .line 1217
    .line 1218
    const/4 v1, 0x0

    .line 1219
    iput-object v1, v15, Ly1/f0;->t0:Ly1/e0;

    .line 1220
    .line 1221
    :cond_3f
    const/4 v1, 0x0

    .line 1222
    invoke-virtual {v15, v1}, Ly1/f0;->u(Z)V

    .line 1223
    .line 1224
    .line 1225
    iget-object v1, v15, Ly1/f0;->h:Lu1/b0;

    .line 1226
    .line 1227
    invoke-virtual {v1, v11}, Lu1/b0;->f(I)Z

    .line 1228
    .line 1229
    .line 1230
    goto :goto_31

    .line 1231
    :goto_30
    throw v0

    .line 1232
    :goto_31
    goto :goto_30
.end method

.method public final v0()V
    .locals 6

    .line 1
    iget-object v0, p0, Ly1/f0;->n:Ly1/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Ly1/h;->f:Z

    .line 5
    .line 6
    iget-object v0, v0, Ly1/h;->a:Lba/n;

    .line 7
    .line 8
    iget-boolean v2, v0, Lba/n;->a:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lba/n;->a()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v0, v2, v3}, Lba/n;->d(J)V

    .line 17
    .line 18
    .line 19
    iput-boolean v1, v0, Lba/n;->a:Z

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Ly1/f0;->a:[Lh4/m0;

    .line 22
    .line 23
    array-length v2, v0

    .line 24
    :goto_0
    if-ge v1, v2, :cond_3

    .line 25
    .line 26
    aget-object v3, v0, v1

    .line 27
    .line 28
    iget-object v4, v3, Lh4/m0;->e:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v4, Ly1/a;

    .line 31
    .line 32
    invoke-static {v4}, Lh4/m0;->h(Ly1/a;)Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-static {v4}, Lh4/m0;->b(Ly1/a;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v3, v3, Lh4/m0;->f:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v3, Ly1/a;

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    iget v4, v3, Ly1/a;->h:I

    .line 48
    .line 49
    if-eqz v4, :cond_2

    .line 50
    .line 51
    invoke-static {v3}, Lh4/m0;->b(Ly1/a;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    return-void
.end method

.method public final w(Lf2/a0;)V
    .locals 12

    .line 1
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 2
    .line 3
    iget-object v1, v0, Ly1/n0;->l:Ly1/l0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v4, v1, Ly1/l0;->a:Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v4, p1, :cond_0

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v4, 0x0

    .line 16
    :goto_0
    iget-object v5, p0, Ly1/f0;->n:Ly1/h;

    .line 17
    .line 18
    if-eqz v4, :cond_3

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-boolean p1, v1, Ly1/l0;->e:Z

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v5}, Ly1/h;->c()Lr1/h0;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget p1, p1, Lr1/h0;->a:F

    .line 32
    .line 33
    iget-object v2, p0, Ly1/f0;->K:Ly1/v0;

    .line 34
    .line 35
    iget-object v4, v2, Ly1/v0;->a:Lr1/q0;

    .line 36
    .line 37
    iget-boolean v2, v2, Ly1/v0;->l:Z

    .line 38
    .line 39
    invoke-virtual {v1, p1, v4, v2}, Ly1/l0;->f(FLr1/q0;Z)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object p1, v1, Ly1/l0;->g:Ly1/m0;

    .line 43
    .line 44
    iget-object v2, v1, Ly1/l0;->o:Lh2/r;

    .line 45
    .line 46
    iget-object p1, p1, Ly1/m0;->a:Lf2/c0;

    .line 47
    .line 48
    invoke-virtual {p0, p1, v2}, Ly1/f0;->x0(Lf2/c0;Lh2/r;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v0, Ly1/n0;->i:Ly1/l0;

    .line 52
    .line 53
    if-ne v1, p1, :cond_2

    .line 54
    .line 55
    iget-object p1, v1, Ly1/l0;->g:Ly1/m0;

    .line 56
    .line 57
    iget-wide v4, p1, Ly1/m0;->b:J

    .line 58
    .line 59
    invoke-virtual {p0, v4, v5, v3}, Ly1/f0;->Q(JZ)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Ly1/f0;->a:[Lh4/m0;

    .line 63
    .line 64
    array-length p1, p1

    .line 65
    new-array p1, p1, [Z

    .line 66
    .line 67
    iget-object v0, v0, Ly1/n0;->j:Ly1/l0;

    .line 68
    .line 69
    invoke-virtual {v0}, Ly1/l0;->e()J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    invoke-virtual {p0, p1, v4, v5}, Ly1/f0;->l([ZJ)V

    .line 74
    .line 75
    .line 76
    iput-boolean v3, v1, Ly1/l0;->h:Z

    .line 77
    .line 78
    iget-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 79
    .line 80
    iget-object v3, p1, Ly1/v0;->b:Lf2/c0;

    .line 81
    .line 82
    iget-object v0, v1, Ly1/l0;->g:Ly1/m0;

    .line 83
    .line 84
    const/4 v11, 0x5

    .line 85
    iget-wide v6, p1, Ly1/v0;->c:J

    .line 86
    .line 87
    iget-wide v8, v0, Ly1/m0;->b:J

    .line 88
    .line 89
    const/4 v10, 0x0

    .line 90
    move-object v2, p0

    .line 91
    move-wide v4, v8

    .line 92
    invoke-virtual/range {v2 .. v11}, Ly1/f0;->y(Lf2/c0;JJJZI)Ly1/v0;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Ly1/f0;->K:Ly1/v0;

    .line 97
    .line 98
    :cond_2
    invoke-virtual {p0}, Ly1/f0;->C()V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_3
    :goto_1
    iget-object v1, v0, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-ge v2, v1, :cond_5

    .line 109
    .line 110
    iget-object v1, v0, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Ly1/l0;

    .line 117
    .line 118
    iget-object v4, v1, Ly1/l0;->a:Ljava/lang/Object;

    .line 119
    .line 120
    if-ne v4, p1, :cond_4

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    const/4 v1, 0x0

    .line 127
    :goto_2
    if-eqz v1, :cond_6

    .line 128
    .line 129
    iget-boolean v2, v1, Ly1/l0;->e:Z

    .line 130
    .line 131
    xor-int/2addr v2, v3

    .line 132
    invoke-static {v2}, La9/o;->t(Z)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v5}, Ly1/h;->c()Lr1/h0;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iget v2, v2, Lr1/h0;->a:F

    .line 140
    .line 141
    iget-object v3, p0, Ly1/f0;->K:Ly1/v0;

    .line 142
    .line 143
    iget-object v4, v3, Ly1/v0;->a:Lr1/q0;

    .line 144
    .line 145
    iget-boolean v3, v3, Ly1/v0;->l:Z

    .line 146
    .line 147
    invoke-virtual {v1, v2, v4, v3}, Ly1/l0;->f(FLr1/q0;Z)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v0, Ly1/n0;->m:Ly1/l0;

    .line 151
    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    iget-object v0, v0, Ly1/l0;->a:Ljava/lang/Object;

    .line 155
    .line 156
    if-ne v0, p1, :cond_6

    .line 157
    .line 158
    invoke-virtual {p0}, Ly1/f0;->D()V

    .line 159
    .line 160
    .line 161
    :cond_6
    :goto_3
    return-void
.end method

.method public final w0()V
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 2
    .line 3
    iget-object v0, v0, Ly1/n0;->l:Ly1/l0;

    .line 4
    .line 5
    iget-boolean v1, p0, Ly1/f0;->S:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Ly1/l0;->a:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-interface {v0}, Lf2/d1;->j()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    iget-object v1, p0, Ly1/f0;->K:Ly1/v0;

    .line 24
    .line 25
    iget-boolean v2, v1, Ly1/v0;->g:Z

    .line 26
    .line 27
    if-eq v0, v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ly1/v0;->b(Z)Ly1/v0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Ly1/f0;->K:Ly1/v0;

    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final x(Lr1/h0;FZZ)V
    .locals 4

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p3, p0, Ly1/f0;->L:Ls3/t;

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    invoke-virtual {p3, p4}, Ls3/t;->c(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p3, p0, Ly1/f0;->K:Ly1/v0;

    .line 12
    .line 13
    invoke-virtual {p3, p1}, Ly1/v0;->g(Lr1/h0;)Ly1/v0;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iput-object p3, p0, Ly1/f0;->K:Ly1/v0;

    .line 18
    .line 19
    :cond_1
    iget p3, p1, Lr1/h0;->a:F

    .line 20
    .line 21
    iget-object p4, p0, Ly1/f0;->s:Ly1/n0;

    .line 22
    .line 23
    iget-object p4, p4, Ly1/n0;->i:Ly1/l0;

    .line 24
    .line 25
    :goto_0
    const/4 v0, 0x0

    .line 26
    if-eqz p4, :cond_4

    .line 27
    .line 28
    iget-object v1, p4, Ly1/l0;->o:Lh2/r;

    .line 29
    .line 30
    iget-object v1, v1, Lh2/r;->c:[Lh2/p;

    .line 31
    .line 32
    array-length v2, v1

    .line 33
    :goto_1
    if-ge v0, v2, :cond_3

    .line 34
    .line 35
    aget-object v3, v1, v0

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-interface {v3, p3}, Lh2/p;->i(F)V

    .line 40
    .line 41
    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    iget-object p4, p4, Ly1/l0;->m:Ly1/l0;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    iget-object p3, p0, Ly1/f0;->a:[Lh4/m0;

    .line 49
    .line 50
    array-length p4, p3

    .line 51
    :goto_2
    if-ge v0, p4, :cond_6

    .line 52
    .line 53
    aget-object v1, p3, v0

    .line 54
    .line 55
    iget-object v2, v1, Lh4/m0;->e:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Ly1/a;

    .line 58
    .line 59
    iget v3, p1, Lr1/h0;->a:F

    .line 60
    .line 61
    invoke-virtual {v2, p2, v3}, Ly1/a;->A(FF)V

    .line 62
    .line 63
    .line 64
    iget-object v1, v1, Lh4/m0;->f:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Ly1/a;

    .line 67
    .line 68
    if-eqz v1, :cond_5

    .line 69
    .line 70
    invoke-virtual {v1, p2, v3}, Ly1/a;->A(FF)V

    .line 71
    .line 72
    .line 73
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_6
    return-void
.end method

.method public final x0(Lf2/c0;Lh2/r;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ly1/f0;->s:Ly1/n0;

    .line 2
    .line 3
    iget-object v0, v0, Ly1/n0;->l:Ly1/l0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ly1/l0;->d()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {p0, v1, v2}, Ly1/f0;->p(J)J

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Ly1/f0;->K:Ly1/v0;

    .line 16
    .line 17
    iget-object v1, v1, Ly1/v0;->a:Lr1/q0;

    .line 18
    .line 19
    iget-object v0, v0, Ly1/l0;->g:Ly1/m0;

    .line 20
    .line 21
    iget-object v0, v0, Ly1/m0;->a:Lf2/c0;

    .line 22
    .line 23
    invoke-virtual {p0, v1, v0}, Ly1/f0;->s0(Lr1/q0;Lf2/c0;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Ly1/f0;->v:Ly1/e;

    .line 30
    .line 31
    iget-wide v0, v0, Ly1/e;->h:J

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Ly1/f0;->K:Ly1/v0;

    .line 34
    .line 35
    iget-object v0, v0, Ly1/v0;->a:Lr1/q0;

    .line 36
    .line 37
    iget-object v1, p0, Ly1/f0;->n:Ly1/h;

    .line 38
    .line 39
    invoke-virtual {v1}, Ly1/h;->c()Lr1/h0;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget v1, v1, Lr1/h0;->a:F

    .line 44
    .line 45
    iget-object v1, p0, Ly1/f0;->K:Ly1/v0;

    .line 46
    .line 47
    iget-boolean v1, v1, Ly1/v0;->l:Z

    .line 48
    .line 49
    iget-object p2, p2, Lh2/r;->c:[Lh2/p;

    .line 50
    .line 51
    iget-object v1, p0, Ly1/f0;->f:Ly1/h0;

    .line 52
    .line 53
    check-cast v1, Ly1/g;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Ly1/f0;->x:Lz1/i;

    .line 59
    .line 60
    iget-object v3, v1, Ly1/g;->o:Lu7/d1;

    .line 61
    .line 62
    iget-object v4, v2, Lz1/i;->a:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Lu7/d1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Ljava/lang/Integer;

    .line 69
    .line 70
    const/4 v4, -0x1

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eq v5, v4, :cond_1

    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget v3, v1, Ly1/g;->l:I

    .line 85
    .line 86
    :goto_0
    iget-object v5, v1, Ly1/g;->p:Lj$/util/concurrent/ConcurrentHashMap;

    .line 87
    .line 88
    invoke-virtual {v5, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Ly1/f;

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    if-ne v3, v4, :cond_8

    .line 98
    .line 99
    iget-object p1, p1, Lf2/c0;->a:Ljava/lang/Object;

    .line 100
    .line 101
    iget-object v3, v1, Ly1/g;->b:Lr1/o0;

    .line 102
    .line 103
    invoke-virtual {v0, p1, v3}, Lr1/q0;->g(Ljava/lang/Object;Lr1/o0;)Lr1/o0;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget p1, p1, Lr1/o0;->c:I

    .line 108
    .line 109
    const-wide/16 v3, 0x0

    .line 110
    .line 111
    iget-object v5, v1, Ly1/g;->a:Lr1/p0;

    .line 112
    .line 113
    invoke-virtual {v0, p1, v5, v3, v4}, Lr1/q0;->m(ILr1/p0;J)Lr1/p0;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object p1, p1, Lr1/p0;->c:Lr1/y;

    .line 118
    .line 119
    iget-object p1, p1, Lr1/y;->b:Lr1/v;

    .line 120
    .line 121
    const/4 v0, 0x0

    .line 122
    if-nez p1, :cond_3

    .line 123
    .line 124
    :cond_2
    const/4 p1, 0x0

    .line 125
    goto :goto_1

    .line 126
    :cond_3
    iget-object p1, p1, Lr1/v;->a:Landroid/net/Uri;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-nez v3, :cond_4

    .line 137
    .line 138
    sget-object v3, Ly1/g;->r:Lu7/y0;

    .line 139
    .line 140
    invoke-virtual {v3, p1}, Lu7/g0;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_2

    .line 145
    .line 146
    :cond_4
    const/4 p1, 0x1

    .line 147
    :goto_1
    array-length v3, p2

    .line 148
    const/4 v4, 0x0

    .line 149
    const/4 v5, 0x0

    .line 150
    :goto_2
    const/high16 v6, 0xc80000

    .line 151
    .line 152
    if-ge v4, v3, :cond_7

    .line 153
    .line 154
    aget-object v7, p2, v4

    .line 155
    .line 156
    if-eqz v7, :cond_6

    .line 157
    .line 158
    invoke-interface {v7}, Lh2/p;->a()Lr1/r0;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    iget v7, v7, Lr1/r0;->c:I

    .line 163
    .line 164
    const/high16 v8, 0x20000

    .line 165
    .line 166
    packed-switch v7, :pswitch_data_0

    .line 167
    .line 168
    .line 169
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 170
    .line 171
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :pswitch_0
    const/high16 v6, 0x20000

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :pswitch_1
    const/high16 v6, 0x1900000

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :pswitch_2
    if-eqz p1, :cond_5

    .line 182
    .line 183
    const/high16 v6, 0x12c0000

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_5
    const/high16 v6, 0x7d00000

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :pswitch_3
    const/high16 v6, 0x89a0000

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :pswitch_4
    const/4 v6, 0x0

    .line 193
    :goto_3
    :pswitch_5
    add-int/2addr v5, v6

    .line 194
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_7
    const/high16 p1, 0xc880000

    .line 198
    .line 199
    invoke-static {v5, v6, p1}, Lu1/f0;->g(III)I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    :cond_8
    iput v3, v2, Ly1/f;->c:I

    .line 204
    .line 205
    invoke-virtual {v1}, Ly1/g;->c()V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final y(Lf2/c0;JJJZI)Ly1/v0;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-wide/from16 v5, p4

    .line 6
    .line 7
    move/from16 v1, p9

    .line 8
    .line 9
    iget-boolean v3, v0, Ly1/f0;->P0:Z

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    iget-object v3, v0, Ly1/f0;->K:Ly1/v0;

    .line 15
    .line 16
    iget-wide v8, v3, Ly1/v0;->s:J

    .line 17
    .line 18
    cmp-long v3, p2, v8

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    iget-object v3, v0, Ly1/f0;->K:Ly1/v0;

    .line 23
    .line 24
    iget-object v3, v3, Ly1/v0;->b:Lf2/c0;

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v3, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 36
    :goto_1
    iput-boolean v3, v0, Ly1/f0;->P0:Z

    .line 37
    .line 38
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->P()V

    .line 39
    .line 40
    .line 41
    iget-object v3, v0, Ly1/f0;->K:Ly1/v0;

    .line 42
    .line 43
    iget-object v8, v3, Ly1/v0;->h:Lf2/j1;

    .line 44
    .line 45
    iget-object v9, v3, Ly1/v0;->i:Lh2/r;

    .line 46
    .line 47
    iget-object v10, v3, Ly1/v0;->j:Ljava/util/List;

    .line 48
    .line 49
    iget-object v11, v0, Ly1/f0;->t:Lm7/l;

    .line 50
    .line 51
    iget-boolean v11, v11, Lm7/l;->a:Z

    .line 52
    .line 53
    if-eqz v11, :cond_11

    .line 54
    .line 55
    iget-object v3, v0, Ly1/f0;->s:Ly1/n0;

    .line 56
    .line 57
    iget-object v3, v3, Ly1/n0;->i:Ly1/l0;

    .line 58
    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    sget-object v8, Lf2/j1;->d:Lf2/j1;

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    iget-object v8, v3, Ly1/l0;->n:Lf2/j1;

    .line 65
    .line 66
    :goto_2
    if-nez v3, :cond_3

    .line 67
    .line 68
    iget-object v9, v0, Ly1/f0;->e:Lh2/r;

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iget-object v9, v3, Ly1/l0;->o:Lh2/r;

    .line 72
    .line 73
    :goto_3
    iget-object v10, v9, Lh2/r;->c:[Lh2/p;

    .line 74
    .line 75
    new-instance v11, Lu7/d0;

    .line 76
    .line 77
    invoke-direct {v11}, Lu7/d0;-><init>()V

    .line 78
    .line 79
    .line 80
    array-length v12, v10

    .line 81
    const/4 v13, 0x0

    .line 82
    const/4 v14, 0x0

    .line 83
    :goto_4
    if-ge v13, v12, :cond_6

    .line 84
    .line 85
    aget-object v15, v10, v13

    .line 86
    .line 87
    if-eqz v15, :cond_5

    .line 88
    .line 89
    invoke-interface {v15, v4}, Lh2/p;->c(I)Lr1/p;

    .line 90
    .line 91
    .line 92
    move-result-object v15

    .line 93
    iget-object v15, v15, Lr1/p;->l:Lr1/d0;

    .line 94
    .line 95
    if-nez v15, :cond_4

    .line 96
    .line 97
    new-instance v15, Lr1/d0;

    .line 98
    .line 99
    new-array v7, v4, [Lr1/c0;

    .line 100
    .line 101
    invoke-direct {v15, v7}, Lr1/d0;-><init>([Lr1/c0;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v11, v15}, Lu7/a0;->b(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_4
    invoke-virtual {v11, v15}, Lu7/a0;->b(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    const/4 v7, 0x1

    .line 112
    const/4 v14, 0x1

    .line 113
    goto :goto_6

    .line 114
    :cond_5
    :goto_5
    const/4 v7, 0x1

    .line 115
    :goto_6
    add-int/2addr v13, v7

    .line 116
    goto :goto_4

    .line 117
    :cond_6
    if-eqz v14, :cond_7

    .line 118
    .line 119
    invoke-virtual {v11}, Lu7/d0;->g()Lu7/y0;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    goto :goto_7

    .line 124
    :cond_7
    sget-object v7, Lu7/g0;->b:Lu7/e0;

    .line 125
    .line 126
    sget-object v7, Lu7/y0;->e:Lu7/y0;

    .line 127
    .line 128
    :goto_7
    if-eqz v3, :cond_8

    .line 129
    .line 130
    iget-object v10, v3, Ly1/l0;->g:Ly1/m0;

    .line 131
    .line 132
    iget-wide v11, v10, Ly1/m0;->d:J

    .line 133
    .line 134
    cmp-long v13, v11, v5

    .line 135
    .line 136
    if-eqz v13, :cond_8

    .line 137
    .line 138
    invoke-virtual {v10, v5, v6}, Ly1/m0;->a(J)Ly1/m0;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    iput-object v10, v3, Ly1/l0;->g:Ly1/m0;

    .line 143
    .line 144
    :cond_8
    iget-object v3, v0, Ly1/f0;->s:Ly1/n0;

    .line 145
    .line 146
    iget-object v10, v3, Ly1/n0;->i:Ly1/l0;

    .line 147
    .line 148
    iget-object v3, v3, Ly1/n0;->j:Ly1/l0;

    .line 149
    .line 150
    if-eq v10, v3, :cond_9

    .line 151
    .line 152
    goto :goto_c

    .line 153
    :cond_9
    if-eqz v10, :cond_10

    .line 154
    .line 155
    iget-object v3, v10, Ly1/l0;->o:Lh2/r;

    .line 156
    .line 157
    const/4 v10, 0x0

    .line 158
    const/4 v11, 0x0

    .line 159
    :goto_8
    iget-object v12, v0, Ly1/f0;->a:[Lh4/m0;

    .line 160
    .line 161
    array-length v13, v12

    .line 162
    if-ge v11, v13, :cond_d

    .line 163
    .line 164
    invoke-virtual {v3, v11}, Lh2/r;->b(I)Z

    .line 165
    .line 166
    .line 167
    move-result v13

    .line 168
    if-eqz v13, :cond_b

    .line 169
    .line 170
    aget-object v12, v12, v11

    .line 171
    .line 172
    iget-object v12, v12, Lh4/m0;->e:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v12, Ly1/a;

    .line 175
    .line 176
    iget v12, v12, Ly1/a;->b:I

    .line 177
    .line 178
    const/4 v13, 0x1

    .line 179
    if-eq v12, v13, :cond_a

    .line 180
    .line 181
    const/4 v3, 0x0

    .line 182
    goto :goto_a

    .line 183
    :cond_a
    iget-object v12, v3, Lh2/r;->b:[Ly1/b1;

    .line 184
    .line 185
    aget-object v12, v12, v11

    .line 186
    .line 187
    iget v12, v12, Ly1/b1;->a:I

    .line 188
    .line 189
    if-eqz v12, :cond_c

    .line 190
    .line 191
    const/4 v10, 0x1

    .line 192
    goto :goto_9

    .line 193
    :cond_b
    const/4 v13, 0x1

    .line 194
    :cond_c
    :goto_9
    add-int/2addr v11, v13

    .line 195
    goto :goto_8

    .line 196
    :cond_d
    const/4 v3, 0x1

    .line 197
    :goto_a
    if-eqz v10, :cond_e

    .line 198
    .line 199
    if-eqz v3, :cond_e

    .line 200
    .line 201
    const/4 v3, 0x1

    .line 202
    goto :goto_b

    .line 203
    :cond_e
    const/4 v3, 0x0

    .line 204
    :goto_b
    iget-boolean v10, v0, Ly1/f0;->Z:Z

    .line 205
    .line 206
    if-ne v3, v10, :cond_f

    .line 207
    .line 208
    goto :goto_c

    .line 209
    :cond_f
    iput-boolean v3, v0, Ly1/f0;->Z:Z

    .line 210
    .line 211
    if-nez v3, :cond_10

    .line 212
    .line 213
    iget-object v3, v0, Ly1/f0;->K:Ly1/v0;

    .line 214
    .line 215
    iget-boolean v3, v3, Ly1/v0;->p:Z

    .line 216
    .line 217
    if-eqz v3, :cond_10

    .line 218
    .line 219
    iget-object v3, v0, Ly1/f0;->h:Lu1/b0;

    .line 220
    .line 221
    const/4 v10, 0x2

    .line 222
    invoke-virtual {v3, v10}, Lu1/b0;->f(I)Z

    .line 223
    .line 224
    .line 225
    :cond_10
    :goto_c
    move-object v13, v7

    .line 226
    move-object v11, v8

    .line 227
    move-object v12, v9

    .line 228
    goto :goto_d

    .line 229
    :cond_11
    iget-object v3, v3, Ly1/v0;->b:Lf2/c0;

    .line 230
    .line 231
    invoke-virtual {v2, v3}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-nez v3, :cond_12

    .line 236
    .line 237
    sget-object v3, Lf2/j1;->d:Lf2/j1;

    .line 238
    .line 239
    iget-object v7, v0, Ly1/f0;->e:Lh2/r;

    .line 240
    .line 241
    sget-object v8, Lu7/y0;->e:Lu7/y0;

    .line 242
    .line 243
    move-object v11, v3

    .line 244
    move-object v12, v7

    .line 245
    move-object v13, v8

    .line 246
    goto :goto_d

    .line 247
    :cond_12
    move-object v11, v8

    .line 248
    move-object v12, v9

    .line 249
    move-object v13, v10

    .line 250
    :goto_d
    if-eqz p8, :cond_15

    .line 251
    .line 252
    iget-object v3, v0, Ly1/f0;->L:Ls3/t;

    .line 253
    .line 254
    iget-boolean v7, v3, Ls3/t;->c:Z

    .line 255
    .line 256
    if-eqz v7, :cond_14

    .line 257
    .line 258
    iget v7, v3, Ls3/t;->d:I

    .line 259
    .line 260
    const/4 v8, 0x5

    .line 261
    if-eq v7, v8, :cond_14

    .line 262
    .line 263
    if-ne v1, v8, :cond_13

    .line 264
    .line 265
    const/4 v4, 0x1

    .line 266
    :cond_13
    invoke-static {v4}, La9/o;->k(Z)V

    .line 267
    .line 268
    .line 269
    goto :goto_e

    .line 270
    :cond_14
    const/4 v4, 0x1

    .line 271
    iput-boolean v4, v3, Ls3/t;->a:Z

    .line 272
    .line 273
    iput-boolean v4, v3, Ls3/t;->c:Z

    .line 274
    .line 275
    iput v1, v3, Ls3/t;->d:I

    .line 276
    .line 277
    :cond_15
    :goto_e
    iget-object v1, v0, Ly1/f0;->K:Ly1/v0;

    .line 278
    .line 279
    iget-wide v3, v1, Ly1/v0;->q:J

    .line 280
    .line 281
    invoke-virtual {v0, v3, v4}, Ly1/f0;->p(J)J

    .line 282
    .line 283
    .line 284
    move-result-wide v9

    .line 285
    move-object/from16 v2, p1

    .line 286
    .line 287
    move-wide/from16 v3, p2

    .line 288
    .line 289
    move-wide/from16 v5, p4

    .line 290
    .line 291
    move-wide/from16 v7, p6

    .line 292
    .line 293
    invoke-virtual/range {v1 .. v13}, Ly1/v0;->d(Lf2/c0;JJJJLf2/j1;Lh2/r;Ljava/util/List;)Ly1/v0;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    return-object v1
.end method

.method public final y0(IILjava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ly1/f0;->L:Ls3/t;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ls3/t;->c(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ly1/f0;->t:Lm7/l;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lm7/l;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    if-gt p1, p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-gt p2, v4, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v4, 0x0

    .line 30
    :goto_0
    invoke-static {v4}, La9/o;->k(Z)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    sub-int v5, p2, p1

    .line 38
    .line 39
    if-ne v4, v5, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    :goto_1
    invoke-static {v1}, La9/o;->k(Z)V

    .line 44
    .line 45
    .line 46
    move v1, p1

    .line 47
    :goto_2
    if-ge v1, p2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ly1/u0;

    .line 54
    .line 55
    iget-object v4, v4, Ly1/u0;->a:Lf2/x;

    .line 56
    .line 57
    sub-int v5, v1, p1

    .line 58
    .line 59
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lr1/y;

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Lf2/x;->r(Lr1/y;)V

    .line 66
    .line 67
    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    invoke-virtual {v0}, Lm7/l;->c()Lr1/q0;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1, v3}, Ly1/f0;->v(Lr1/q0;Z)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final z0()V
    .locals 23

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 4
    .line 5
    iget-object v0, v0, Ly1/v0;->a:Lr1/q0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lr1/q0;->p()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_54

    .line 12
    .line 13
    iget-object v0, v10, Ly1/f0;->t:Lm7/l;

    .line 14
    .line 15
    iget-boolean v0, v0, Lm7/l;->a:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_2e

    .line 20
    .line 21
    :cond_0
    iget-object v0, v10, Ly1/f0;->s:Ly1/n0;

    .line 22
    .line 23
    iget-wide v1, v10, Ly1/f0;->M0:J

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Ly1/n0;->m(J)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v10, Ly1/f0;->s:Ly1/n0;

    .line 29
    .line 30
    iget-object v1, v0, Ly1/n0;->l:Ly1/l0;

    .line 31
    .line 32
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v2, v1, Ly1/l0;->g:Ly1/m0;

    .line 42
    .line 43
    iget-boolean v2, v2, Ly1/m0;->k:Z

    .line 44
    .line 45
    if-nez v2, :cond_d

    .line 46
    .line 47
    invoke-virtual {v1}, Ly1/l0;->g()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_d

    .line 52
    .line 53
    iget-object v1, v0, Ly1/n0;->l:Ly1/l0;

    .line 54
    .line 55
    iget-object v1, v1, Ly1/l0;->g:Ly1/m0;

    .line 56
    .line 57
    iget-wide v1, v1, Ly1/m0;->f:J

    .line 58
    .line 59
    cmp-long v3, v1, v8

    .line 60
    .line 61
    if-eqz v3, :cond_d

    .line 62
    .line 63
    iget v0, v0, Ly1/n0;->n:I

    .line 64
    .line 65
    const/16 v1, 0x64

    .line 66
    .line 67
    if-ge v0, v1, :cond_d

    .line 68
    .line 69
    :cond_1
    iget-object v13, v10, Ly1/f0;->s:Ly1/n0;

    .line 70
    .line 71
    iget-wide v0, v10, Ly1/f0;->M0:J

    .line 72
    .line 73
    iget-object v2, v10, Ly1/f0;->K:Ly1/v0;

    .line 74
    .line 75
    iget-object v3, v13, Ly1/n0;->l:Ly1/l0;

    .line 76
    .line 77
    if-nez v3, :cond_2

    .line 78
    .line 79
    iget-object v14, v2, Ly1/v0;->a:Lr1/q0;

    .line 80
    .line 81
    iget-object v15, v2, Ly1/v0;->b:Lf2/c0;

    .line 82
    .line 83
    iget-wide v0, v2, Ly1/v0;->c:J

    .line 84
    .line 85
    iget-wide v2, v2, Ly1/v0;->s:J

    .line 86
    .line 87
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    move-wide/from16 v16, v0

    .line 93
    .line 94
    move-wide/from16 v18, v2

    .line 95
    .line 96
    invoke-virtual/range {v13 .. v21}, Ly1/n0;->d(Lr1/q0;Lf2/c0;JJJ)Ly1/m0;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget-object v2, v2, Ly1/v0;->a:Lr1/q0;

    .line 102
    .line 103
    invoke-virtual {v13, v2, v3, v0, v1}, Ly1/n0;->c(Lr1/q0;Ly1/l0;J)Ly1/m0;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :goto_0
    if-eqz v0, :cond_d

    .line 108
    .line 109
    iget-object v1, v10, Ly1/f0;->s:Ly1/n0;

    .line 110
    .line 111
    iget-object v2, v1, Ly1/n0;->l:Ly1/l0;

    .line 112
    .line 113
    if-nez v2, :cond_3

    .line 114
    .line 115
    const-wide v2, 0xe8d4a51000L

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    iget-wide v3, v2, Ly1/l0;->p:J

    .line 122
    .line 123
    iget-object v2, v2, Ly1/l0;->g:Ly1/m0;

    .line 124
    .line 125
    iget-wide v5, v2, Ly1/m0;->f:J

    .line 126
    .line 127
    add-long/2addr v3, v5

    .line 128
    iget-wide v5, v0, Ly1/m0;->b:J

    .line 129
    .line 130
    sub-long/2addr v3, v5

    .line 131
    move-wide v2, v3

    .line 132
    :goto_1
    const/4 v4, 0x0

    .line 133
    :goto_2
    iget-object v5, v1, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    const/4 v6, 0x0

    .line 140
    if-ge v4, v5, :cond_6

    .line 141
    .line 142
    iget-object v5, v1, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    check-cast v5, Ly1/l0;

    .line 149
    .line 150
    iget-object v5, v5, Ly1/l0;->g:Ly1/m0;

    .line 151
    .line 152
    iget-wide v13, v5, Ly1/m0;->f:J

    .line 153
    .line 154
    cmp-long v7, v13, v8

    .line 155
    .line 156
    if-eqz v7, :cond_4

    .line 157
    .line 158
    iget-wide v8, v0, Ly1/m0;->f:J

    .line 159
    .line 160
    cmp-long v7, v13, v8

    .line 161
    .line 162
    if-nez v7, :cond_5

    .line 163
    .line 164
    :cond_4
    iget-wide v7, v5, Ly1/m0;->b:J

    .line 165
    .line 166
    iget-wide v13, v0, Ly1/m0;->b:J

    .line 167
    .line 168
    cmp-long v9, v7, v13

    .line 169
    .line 170
    if-nez v9, :cond_5

    .line 171
    .line 172
    iget-object v5, v5, Ly1/m0;->a:Lf2/c0;

    .line 173
    .line 174
    iget-object v7, v0, Ly1/m0;->a:Lf2/c0;

    .line 175
    .line 176
    invoke-virtual {v5, v7}, Lf2/c0;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_5

    .line 181
    .line 182
    iget-object v5, v1, Ly1/n0;->q:Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    check-cast v4, Ly1/l0;

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 192
    .line 193
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_6
    move-object v4, v6

    .line 200
    :goto_3
    if-nez v4, :cond_7

    .line 201
    .line 202
    iget-object v4, v1, Ly1/n0;->e:Ly1/y;

    .line 203
    .line 204
    new-instance v5, Ly1/l0;

    .line 205
    .line 206
    iget-object v4, v4, Ly1/y;->a:Ly1/f0;

    .line 207
    .line 208
    iget-object v7, v4, Ly1/f0;->f:Ly1/h0;

    .line 209
    .line 210
    check-cast v7, Ly1/g;

    .line 211
    .line 212
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    new-instance v8, Ls4/a;

    .line 216
    .line 217
    iget-object v9, v4, Ly1/f0;->x:Lz1/i;

    .line 218
    .line 219
    invoke-direct {v8, v7, v9}, Ls4/a;-><init>(Ly1/g;Lz1/i;)V

    .line 220
    .line 221
    .line 222
    iget-object v7, v4, Ly1/f0;->S0:Ly1/n;

    .line 223
    .line 224
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    iget-object v7, v4, Ly1/f0;->t:Lm7/l;

    .line 228
    .line 229
    iget-object v9, v4, Ly1/f0;->e:Lh2/r;

    .line 230
    .line 231
    iget-object v14, v4, Ly1/f0;->b:[Ly1/a;

    .line 232
    .line 233
    iget-object v4, v4, Ly1/f0;->d:Lh2/q;

    .line 234
    .line 235
    move-object v13, v5

    .line 236
    move-wide v15, v2

    .line 237
    move-object/from16 v17, v4

    .line 238
    .line 239
    move-object/from16 v18, v8

    .line 240
    .line 241
    move-object/from16 v19, v7

    .line 242
    .line 243
    move-object/from16 v20, v0

    .line 244
    .line 245
    move-object/from16 v21, v9

    .line 246
    .line 247
    invoke-direct/range {v13 .. v21}, Ly1/l0;-><init>([Ly1/a;JLh2/q;Ls4/a;Lm7/l;Ly1/m0;Lh2/r;)V

    .line 248
    .line 249
    .line 250
    move-object v4, v5

    .line 251
    goto :goto_4

    .line 252
    :cond_7
    iput-object v0, v4, Ly1/l0;->g:Ly1/m0;

    .line 253
    .line 254
    iput-wide v2, v4, Ly1/l0;->p:J

    .line 255
    .line 256
    :goto_4
    iget-object v2, v1, Ly1/n0;->l:Ly1/l0;

    .line 257
    .line 258
    if-eqz v2, :cond_9

    .line 259
    .line 260
    iget-object v3, v2, Ly1/l0;->m:Ly1/l0;

    .line 261
    .line 262
    if-ne v4, v3, :cond_8

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_8
    invoke-virtual {v2}, Ly1/l0;->b()V

    .line 266
    .line 267
    .line 268
    iput-object v4, v2, Ly1/l0;->m:Ly1/l0;

    .line 269
    .line 270
    invoke-virtual {v2}, Ly1/l0;->c()V

    .line 271
    .line 272
    .line 273
    goto :goto_5

    .line 274
    :cond_9
    iput-object v4, v1, Ly1/n0;->i:Ly1/l0;

    .line 275
    .line 276
    iput-object v4, v1, Ly1/n0;->j:Ly1/l0;

    .line 277
    .line 278
    iput-object v4, v1, Ly1/n0;->k:Ly1/l0;

    .line 279
    .line 280
    :goto_5
    iput-object v6, v1, Ly1/n0;->o:Ljava/lang/Object;

    .line 281
    .line 282
    iput-object v4, v1, Ly1/n0;->l:Ly1/l0;

    .line 283
    .line 284
    iget v2, v1, Ly1/n0;->n:I

    .line 285
    .line 286
    add-int/2addr v2, v12

    .line 287
    iput v2, v1, Ly1/n0;->n:I

    .line 288
    .line 289
    invoke-virtual {v1}, Ly1/n0;->l()V

    .line 290
    .line 291
    .line 292
    iget-boolean v1, v4, Ly1/l0;->d:Z

    .line 293
    .line 294
    if-nez v1, :cond_a

    .line 295
    .line 296
    iget-wide v1, v0, Ly1/m0;->b:J

    .line 297
    .line 298
    iput-boolean v12, v4, Ly1/l0;->d:Z

    .line 299
    .line 300
    iget-object v3, v4, Ly1/l0;->a:Ljava/lang/Object;

    .line 301
    .line 302
    invoke-interface {v3, v10, v1, v2}, Lf2/a0;->l(Lf2/z;J)V

    .line 303
    .line 304
    .line 305
    goto :goto_6

    .line 306
    :cond_a
    iget-boolean v1, v4, Ly1/l0;->e:Z

    .line 307
    .line 308
    if-eqz v1, :cond_b

    .line 309
    .line 310
    iget-object v1, v10, Ly1/f0;->h:Lu1/b0;

    .line 311
    .line 312
    iget-object v2, v4, Ly1/l0;->a:Ljava/lang/Object;

    .line 313
    .line 314
    const/16 v3, 0x8

    .line 315
    .line 316
    invoke-virtual {v1, v3, v2}, Lu1/b0;->b(ILjava/lang/Object;)Lu1/a0;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v1}, Lu1/a0;->b()V

    .line 321
    .line 322
    .line 323
    :cond_b
    :goto_6
    iget-object v1, v10, Ly1/f0;->s:Ly1/n0;

    .line 324
    .line 325
    iget-object v1, v1, Ly1/n0;->i:Ly1/l0;

    .line 326
    .line 327
    if-ne v1, v4, :cond_c

    .line 328
    .line 329
    iget-wide v0, v0, Ly1/m0;->b:J

    .line 330
    .line 331
    invoke-virtual {v10, v0, v1, v12}, Ly1/f0;->Q(JZ)V

    .line 332
    .line 333
    .line 334
    :cond_c
    invoke-virtual {v10, v11}, Ly1/f0;->u(Z)V

    .line 335
    .line 336
    .line 337
    :cond_d
    iget-boolean v0, v10, Ly1/f0;->S:Z

    .line 338
    .line 339
    if-eqz v0, :cond_e

    .line 340
    .line 341
    iget-object v0, v10, Ly1/f0;->s:Ly1/n0;

    .line 342
    .line 343
    iget-object v0, v0, Ly1/n0;->l:Ly1/l0;

    .line 344
    .line 345
    invoke-static {v0}, Ly1/f0;->z(Ly1/l0;)Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    iput-boolean v0, v10, Ly1/f0;->S:Z

    .line 350
    .line 351
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->w0()V

    .line 352
    .line 353
    .line 354
    goto :goto_7

    .line 355
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->C()V

    .line 356
    .line 357
    .line 358
    :goto_7
    iget-boolean v0, v10, Ly1/f0;->O:Z

    .line 359
    .line 360
    const/4 v13, 0x2

    .line 361
    const-wide/32 v6, 0x989680

    .line 362
    .line 363
    .line 364
    const/4 v14, 0x4

    .line 365
    const/4 v15, 0x3

    .line 366
    if-nez v0, :cond_17

    .line 367
    .line 368
    iget-boolean v0, v10, Ly1/f0;->A:Z

    .line 369
    .line 370
    if-eqz v0, :cond_17

    .line 371
    .line 372
    iget-boolean v0, v10, Ly1/f0;->U0:Z

    .line 373
    .line 374
    if-nez v0, :cond_17

    .line 375
    .line 376
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->f()Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-eqz v0, :cond_f

    .line 381
    .line 382
    goto/16 :goto_b

    .line 383
    .line 384
    :cond_f
    iget-object v8, v10, Ly1/f0;->s:Ly1/n0;

    .line 385
    .line 386
    iget-object v0, v8, Ly1/n0;->k:Ly1/l0;

    .line 387
    .line 388
    if-eqz v0, :cond_17

    .line 389
    .line 390
    iget-object v1, v8, Ly1/n0;->j:Ly1/l0;

    .line 391
    .line 392
    if-ne v0, v1, :cond_17

    .line 393
    .line 394
    iget-object v0, v0, Ly1/l0;->m:Ly1/l0;

    .line 395
    .line 396
    if-eqz v0, :cond_17

    .line 397
    .line 398
    iget-boolean v1, v0, Ly1/l0;->e:Z

    .line 399
    .line 400
    if-nez v1, :cond_10

    .line 401
    .line 402
    goto/16 :goto_b

    .line 403
    .line 404
    :cond_10
    invoke-static {v1}, La9/o;->t(Z)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0}, Ly1/l0;->e()J

    .line 408
    .line 409
    .line 410
    move-result-wide v0

    .line 411
    iget-wide v2, v10, Ly1/f0;->M0:J

    .line 412
    .line 413
    sub-long/2addr v0, v2

    .line 414
    long-to-float v0, v0

    .line 415
    iget-object v1, v10, Ly1/f0;->n:Ly1/h;

    .line 416
    .line 417
    invoke-virtual {v1}, Ly1/h;->c()Lr1/h0;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    iget v1, v1, Lr1/h0;->a:F

    .line 422
    .line 423
    div-float/2addr v0, v1

    .line 424
    float-to-long v0, v0

    .line 425
    cmp-long v2, v0, v6

    .line 426
    .line 427
    if-lez v2, :cond_11

    .line 428
    .line 429
    goto/16 :goto_b

    .line 430
    .line 431
    :cond_11
    iget-object v0, v8, Ly1/n0;->k:Ly1/l0;

    .line 432
    .line 433
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    iget-object v0, v0, Ly1/l0;->m:Ly1/l0;

    .line 437
    .line 438
    iput-object v0, v8, Ly1/n0;->k:Ly1/l0;

    .line 439
    .line 440
    invoke-virtual {v8}, Ly1/n0;->l()V

    .line 441
    .line 442
    .line 443
    iget-object v0, v8, Ly1/n0;->k:Ly1/l0;

    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    .line 447
    .line 448
    iget-object v9, v8, Ly1/n0;->k:Ly1/l0;

    .line 449
    .line 450
    if-nez v9, :cond_12

    .line 451
    .line 452
    goto/16 :goto_b

    .line 453
    .line 454
    :cond_12
    iget-object v4, v9, Ly1/l0;->o:Lh2/r;

    .line 455
    .line 456
    const/4 v5, 0x0

    .line 457
    :goto_8
    iget-object v0, v10, Ly1/f0;->a:[Lh4/m0;

    .line 458
    .line 459
    array-length v1, v0

    .line 460
    if-ge v5, v1, :cond_16

    .line 461
    .line 462
    invoke-virtual {v4, v5}, Lh2/r;->b(I)Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-eqz v1, :cond_15

    .line 467
    .line 468
    aget-object v1, v0, v5

    .line 469
    .line 470
    iget-object v2, v1, Lh4/m0;->f:Ljava/lang/Object;

    .line 471
    .line 472
    check-cast v2, Ly1/a;

    .line 473
    .line 474
    if-eqz v2, :cond_15

    .line 475
    .line 476
    invoke-virtual {v1}, Lh4/m0;->f()Z

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    if-nez v1, :cond_15

    .line 481
    .line 482
    aget-object v0, v0, v5

    .line 483
    .line 484
    invoke-virtual {v0}, Lh4/m0;->f()Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    xor-int/2addr v1, v12

    .line 489
    invoke-static {v1}, La9/o;->t(Z)V

    .line 490
    .line 491
    .line 492
    iget-object v1, v0, Lh4/m0;->e:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast v1, Ly1/a;

    .line 495
    .line 496
    invoke-static {v1}, Lh4/m0;->h(Ly1/a;)Z

    .line 497
    .line 498
    .line 499
    move-result v1

    .line 500
    if-eqz v1, :cond_13

    .line 501
    .line 502
    const/4 v1, 0x3

    .line 503
    goto :goto_9

    .line 504
    :cond_13
    iget-object v1, v0, Lh4/m0;->f:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v1, Ly1/a;

    .line 507
    .line 508
    if-eqz v1, :cond_14

    .line 509
    .line 510
    iget v1, v1, Ly1/a;->h:I

    .line 511
    .line 512
    if-eqz v1, :cond_14

    .line 513
    .line 514
    const/4 v1, 0x4

    .line 515
    goto :goto_9

    .line 516
    :cond_14
    const/4 v1, 0x2

    .line 517
    :goto_9
    iput v1, v0, Lh4/m0;->b:I

    .line 518
    .line 519
    const/4 v3, 0x0

    .line 520
    invoke-virtual {v9}, Ly1/l0;->e()J

    .line 521
    .line 522
    .line 523
    move-result-wide v16

    .line 524
    move-object/from16 v0, p0

    .line 525
    .line 526
    move-object v1, v9

    .line 527
    move v2, v5

    .line 528
    move-object/from16 v18, v4

    .line 529
    .line 530
    move/from16 v19, v5

    .line 531
    .line 532
    move-wide/from16 v4, v16

    .line 533
    .line 534
    invoke-virtual/range {v0 .. v5}, Ly1/f0;->k(Ly1/l0;IZJ)V

    .line 535
    .line 536
    .line 537
    goto :goto_a

    .line 538
    :cond_15
    move-object/from16 v18, v4

    .line 539
    .line 540
    move/from16 v19, v5

    .line 541
    .line 542
    :goto_a
    add-int/lit8 v5, v19, 0x1

    .line 543
    .line 544
    move-object/from16 v4, v18

    .line 545
    .line 546
    goto :goto_8

    .line 547
    :cond_16
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->f()Z

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    if-eqz v0, :cond_17

    .line 552
    .line 553
    iget-object v0, v9, Ly1/l0;->a:Ljava/lang/Object;

    .line 554
    .line 555
    invoke-interface {v0}, Lf2/a0;->m()J

    .line 556
    .line 557
    .line 558
    move-result-wide v0

    .line 559
    iput-wide v0, v10, Ly1/f0;->T0:J

    .line 560
    .line 561
    invoke-virtual {v9}, Ly1/l0;->g()Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-nez v0, :cond_17

    .line 566
    .line 567
    invoke-virtual {v8, v9}, Ly1/n0;->n(Ly1/l0;)I

    .line 568
    .line 569
    .line 570
    invoke-virtual {v10, v11}, Ly1/f0;->u(Z)V

    .line 571
    .line 572
    .line 573
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->C()V

    .line 574
    .line 575
    .line 576
    :cond_17
    :goto_b
    iget-object v8, v10, Ly1/f0;->s:Ly1/n0;

    .line 577
    .line 578
    iget-object v0, v8, Ly1/n0;->j:Ly1/l0;

    .line 579
    .line 580
    if-nez v0, :cond_18

    .line 581
    .line 582
    goto/16 :goto_1b

    .line 583
    .line 584
    :cond_18
    iget-object v1, v0, Ly1/l0;->m:Ly1/l0;

    .line 585
    .line 586
    iget-object v9, v10, Ly1/f0;->a:[Lh4/m0;

    .line 587
    .line 588
    if-eqz v1, :cond_30

    .line 589
    .line 590
    iget-boolean v1, v10, Ly1/f0;->O:Z

    .line 591
    .line 592
    if-eqz v1, :cond_19

    .line 593
    .line 594
    goto/16 :goto_16

    .line 595
    .line 596
    :cond_19
    iget-boolean v1, v0, Ly1/l0;->e:Z

    .line 597
    .line 598
    if-nez v1, :cond_1a

    .line 599
    .line 600
    goto/16 :goto_1b

    .line 601
    .line 602
    :cond_1a
    const/4 v1, 0x0

    .line 603
    :goto_c
    array-length v2, v9

    .line 604
    if-ge v1, v2, :cond_1b

    .line 605
    .line 606
    aget-object v2, v9, v1

    .line 607
    .line 608
    iget-object v3, v2, Lh4/m0;->e:Ljava/lang/Object;

    .line 609
    .line 610
    check-cast v3, Ly1/a;

    .line 611
    .line 612
    invoke-virtual {v2, v0, v3}, Lh4/m0;->e(Ly1/l0;Ly1/a;)Z

    .line 613
    .line 614
    .line 615
    move-result v3

    .line 616
    if-eqz v3, :cond_36

    .line 617
    .line 618
    iget-object v3, v2, Lh4/m0;->f:Ljava/lang/Object;

    .line 619
    .line 620
    check-cast v3, Ly1/a;

    .line 621
    .line 622
    invoke-virtual {v2, v0, v3}, Lh4/m0;->e(Ly1/l0;Ly1/a;)Z

    .line 623
    .line 624
    .line 625
    move-result v2

    .line 626
    if-eqz v2, :cond_36

    .line 627
    .line 628
    add-int/lit8 v1, v1, 0x1

    .line 629
    .line 630
    goto :goto_c

    .line 631
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->f()Z

    .line 632
    .line 633
    .line 634
    move-result v1

    .line 635
    if-eqz v1, :cond_1c

    .line 636
    .line 637
    iget-object v1, v8, Ly1/n0;->k:Ly1/l0;

    .line 638
    .line 639
    iget-object v2, v8, Ly1/n0;->j:Ly1/l0;

    .line 640
    .line 641
    if-ne v1, v2, :cond_1c

    .line 642
    .line 643
    goto/16 :goto_1b

    .line 644
    .line 645
    :cond_1c
    iget-object v1, v0, Ly1/l0;->m:Ly1/l0;

    .line 646
    .line 647
    iget-boolean v2, v1, Ly1/l0;->e:Z

    .line 648
    .line 649
    if-nez v2, :cond_1d

    .line 650
    .line 651
    iget-wide v2, v10, Ly1/f0;->M0:J

    .line 652
    .line 653
    invoke-virtual {v1}, Ly1/l0;->e()J

    .line 654
    .line 655
    .line 656
    move-result-wide v4

    .line 657
    cmp-long v1, v2, v4

    .line 658
    .line 659
    if-gez v1, :cond_1d

    .line 660
    .line 661
    goto/16 :goto_1b

    .line 662
    .line 663
    :cond_1d
    iget-object v1, v0, Ly1/l0;->m:Ly1/l0;

    .line 664
    .line 665
    iget-boolean v2, v1, Ly1/l0;->e:Z

    .line 666
    .line 667
    if-eqz v2, :cond_1e

    .line 668
    .line 669
    invoke-static {v2}, La9/o;->t(Z)V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v1}, Ly1/l0;->e()J

    .line 673
    .line 674
    .line 675
    move-result-wide v1

    .line 676
    iget-wide v3, v10, Ly1/f0;->M0:J

    .line 677
    .line 678
    sub-long/2addr v1, v3

    .line 679
    long-to-float v1, v1

    .line 680
    iget-object v2, v10, Ly1/f0;->n:Ly1/h;

    .line 681
    .line 682
    invoke-virtual {v2}, Ly1/h;->c()Lr1/h0;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    iget v2, v2, Lr1/h0;->a:F

    .line 687
    .line 688
    div-float/2addr v1, v2

    .line 689
    float-to-long v1, v1

    .line 690
    cmp-long v3, v1, v6

    .line 691
    .line 692
    if-lez v3, :cond_1e

    .line 693
    .line 694
    goto/16 :goto_1b

    .line 695
    .line 696
    :cond_1e
    iget-object v7, v0, Ly1/l0;->o:Lh2/r;

    .line 697
    .line 698
    iget-object v1, v8, Ly1/n0;->k:Ly1/l0;

    .line 699
    .line 700
    iget-object v2, v8, Ly1/n0;->j:Ly1/l0;

    .line 701
    .line 702
    if-ne v1, v2, :cond_1f

    .line 703
    .line 704
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 705
    .line 706
    .line 707
    iget-object v1, v2, Ly1/l0;->m:Ly1/l0;

    .line 708
    .line 709
    iput-object v1, v8, Ly1/n0;->k:Ly1/l0;

    .line 710
    .line 711
    :cond_1f
    iget-object v1, v8, Ly1/n0;->j:Ly1/l0;

    .line 712
    .line 713
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 714
    .line 715
    .line 716
    iget-object v1, v1, Ly1/l0;->m:Ly1/l0;

    .line 717
    .line 718
    iput-object v1, v8, Ly1/n0;->j:Ly1/l0;

    .line 719
    .line 720
    invoke-virtual {v8}, Ly1/n0;->l()V

    .line 721
    .line 722
    .line 723
    iget-object v5, v8, Ly1/n0;->j:Ly1/l0;

    .line 724
    .line 725
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 726
    .line 727
    .line 728
    iget-object v6, v5, Ly1/l0;->o:Lh2/r;

    .line 729
    .line 730
    iget-object v1, v10, Ly1/f0;->K:Ly1/v0;

    .line 731
    .line 732
    iget-object v3, v1, Ly1/v0;->a:Lr1/q0;

    .line 733
    .line 734
    iget-object v1, v5, Ly1/l0;->g:Ly1/m0;

    .line 735
    .line 736
    iget-object v2, v1, Ly1/m0;->a:Lf2/c0;

    .line 737
    .line 738
    iget-object v0, v0, Ly1/l0;->g:Ly1/m0;

    .line 739
    .line 740
    iget-object v4, v0, Ly1/m0;->a:Lf2/c0;

    .line 741
    .line 742
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    const/16 v18, 0x0

    .line 748
    .line 749
    move-object/from16 v0, p0

    .line 750
    .line 751
    move-object v1, v3

    .line 752
    move-object v12, v5

    .line 753
    move-object v11, v6

    .line 754
    move-wide/from16 v5, v16

    .line 755
    .line 756
    move-object/from16 v22, v7

    .line 757
    .line 758
    move/from16 v7, v18

    .line 759
    .line 760
    invoke-virtual/range {v0 .. v7}, Ly1/f0;->C0(Lr1/q0;Lf2/c0;Lr1/q0;Lf2/c0;JZ)V

    .line 761
    .line 762
    .line 763
    iget-boolean v0, v12, Ly1/l0;->e:Z

    .line 764
    .line 765
    const/4 v1, -0x2

    .line 766
    if-eqz v0, :cond_2a

    .line 767
    .line 768
    iget-boolean v0, v10, Ly1/f0;->A:Z

    .line 769
    .line 770
    if-eqz v0, :cond_20

    .line 771
    .line 772
    iget-wide v2, v10, Ly1/f0;->T0:J

    .line 773
    .line 774
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    cmp-long v6, v2, v4

    .line 780
    .line 781
    if-nez v6, :cond_21

    .line 782
    .line 783
    goto :goto_d

    .line 784
    :cond_20
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    :goto_d
    iget-object v2, v12, Ly1/l0;->a:Ljava/lang/Object;

    .line 790
    .line 791
    invoke-interface {v2}, Lf2/a0;->m()J

    .line 792
    .line 793
    .line 794
    move-result-wide v2

    .line 795
    cmp-long v6, v2, v4

    .line 796
    .line 797
    if-eqz v6, :cond_2a

    .line 798
    .line 799
    :cond_21
    iput-wide v4, v10, Ly1/f0;->T0:J

    .line 800
    .line 801
    if-eqz v0, :cond_22

    .line 802
    .line 803
    iget-boolean v0, v10, Ly1/f0;->U0:Z

    .line 804
    .line 805
    if-nez v0, :cond_22

    .line 806
    .line 807
    const/4 v0, 0x1

    .line 808
    goto :goto_e

    .line 809
    :cond_22
    const/4 v0, 0x0

    .line 810
    :goto_e
    if-eqz v0, :cond_25

    .line 811
    .line 812
    const/4 v2, 0x0

    .line 813
    :goto_f
    array-length v3, v9

    .line 814
    if-ge v2, v3, :cond_25

    .line 815
    .line 816
    invoke-virtual {v11, v2}, Lh2/r;->b(I)Z

    .line 817
    .line 818
    .line 819
    move-result v3

    .line 820
    if-eqz v3, :cond_24

    .line 821
    .line 822
    aget-object v3, v9, v2

    .line 823
    .line 824
    iget-object v3, v3, Lh4/m0;->e:Ljava/lang/Object;

    .line 825
    .line 826
    check-cast v3, Ly1/a;

    .line 827
    .line 828
    iget v3, v3, Ly1/a;->b:I

    .line 829
    .line 830
    if-ne v3, v1, :cond_23

    .line 831
    .line 832
    goto :goto_10

    .line 833
    :cond_23
    iget-object v3, v11, Lh2/r;->c:[Lh2/p;

    .line 834
    .line 835
    aget-object v4, v3, v2

    .line 836
    .line 837
    invoke-interface {v4}, Lh2/p;->h()Lr1/p;

    .line 838
    .line 839
    .line 840
    move-result-object v4

    .line 841
    iget-object v4, v4, Lr1/p;->o:Ljava/lang/String;

    .line 842
    .line 843
    aget-object v3, v3, v2

    .line 844
    .line 845
    invoke-interface {v3}, Lh2/p;->h()Lr1/p;

    .line 846
    .line 847
    .line 848
    move-result-object v3

    .line 849
    iget-object v3, v3, Lr1/p;->k:Ljava/lang/String;

    .line 850
    .line 851
    invoke-static {v4, v3}, Lr1/e0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 852
    .line 853
    .line 854
    move-result v3

    .line 855
    if-nez v3, :cond_24

    .line 856
    .line 857
    aget-object v3, v9, v2

    .line 858
    .line 859
    invoke-virtual {v3}, Lh4/m0;->f()Z

    .line 860
    .line 861
    .line 862
    move-result v3

    .line 863
    if-nez v3, :cond_24

    .line 864
    .line 865
    const/4 v0, 0x0

    .line 866
    goto :goto_11

    .line 867
    :cond_24
    :goto_10
    add-int/lit8 v2, v2, 0x1

    .line 868
    .line 869
    goto :goto_f

    .line 870
    :cond_25
    :goto_11
    if-nez v0, :cond_2a

    .line 871
    .line 872
    invoke-virtual {v12}, Ly1/l0;->e()J

    .line 873
    .line 874
    .line 875
    move-result-wide v0

    .line 876
    array-length v2, v9

    .line 877
    const/4 v3, 0x0

    .line 878
    :goto_12
    if-ge v3, v2, :cond_29

    .line 879
    .line 880
    aget-object v4, v9, v3

    .line 881
    .line 882
    iget-object v5, v4, Lh4/m0;->e:Ljava/lang/Object;

    .line 883
    .line 884
    check-cast v5, Ly1/a;

    .line 885
    .line 886
    invoke-static {v5}, Lh4/m0;->h(Ly1/a;)Z

    .line 887
    .line 888
    .line 889
    move-result v6

    .line 890
    if-eqz v6, :cond_26

    .line 891
    .line 892
    iget v6, v4, Lh4/m0;->b:I

    .line 893
    .line 894
    if-eq v6, v14, :cond_26

    .line 895
    .line 896
    if-eq v6, v13, :cond_26

    .line 897
    .line 898
    invoke-static {v5, v0, v1}, Lh4/m0;->l(Ly1/a;J)V

    .line 899
    .line 900
    .line 901
    :cond_26
    iget-object v5, v4, Lh4/m0;->f:Ljava/lang/Object;

    .line 902
    .line 903
    check-cast v5, Ly1/a;

    .line 904
    .line 905
    if-eqz v5, :cond_28

    .line 906
    .line 907
    iget v6, v5, Ly1/a;->h:I

    .line 908
    .line 909
    if-eqz v6, :cond_27

    .line 910
    .line 911
    const/4 v6, 0x1

    .line 912
    goto :goto_13

    .line 913
    :cond_27
    const/4 v6, 0x0

    .line 914
    :goto_13
    if-eqz v6, :cond_28

    .line 915
    .line 916
    iget v4, v4, Lh4/m0;->b:I

    .line 917
    .line 918
    if-eq v4, v15, :cond_28

    .line 919
    .line 920
    invoke-static {v5, v0, v1}, Lh4/m0;->l(Ly1/a;J)V

    .line 921
    .line 922
    .line 923
    :cond_28
    add-int/lit8 v3, v3, 0x1

    .line 924
    .line 925
    goto :goto_12

    .line 926
    :cond_29
    invoke-virtual {v12}, Ly1/l0;->g()Z

    .line 927
    .line 928
    .line 929
    move-result v0

    .line 930
    if-nez v0, :cond_36

    .line 931
    .line 932
    invoke-virtual {v8, v12}, Ly1/n0;->n(Ly1/l0;)I

    .line 933
    .line 934
    .line 935
    const/4 v0, 0x0

    .line 936
    invoke-virtual {v10, v0}, Ly1/f0;->u(Z)V

    .line 937
    .line 938
    .line 939
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->C()V

    .line 940
    .line 941
    .line 942
    goto/16 :goto_1b

    .line 943
    .line 944
    :cond_2a
    array-length v0, v9

    .line 945
    const/4 v2, 0x0

    .line 946
    :goto_14
    if-ge v2, v0, :cond_36

    .line 947
    .line 948
    aget-object v3, v9, v2

    .line 949
    .line 950
    invoke-virtual {v12}, Ly1/l0;->e()J

    .line 951
    .line 952
    .line 953
    move-result-wide v4

    .line 954
    iget v6, v3, Lh4/m0;->a:I

    .line 955
    .line 956
    move-object/from16 v7, v22

    .line 957
    .line 958
    invoke-virtual {v7, v6}, Lh2/r;->b(I)Z

    .line 959
    .line 960
    .line 961
    move-result v8

    .line 962
    invoke-virtual {v11, v6}, Lh2/r;->b(I)Z

    .line 963
    .line 964
    .line 965
    move-result v16

    .line 966
    iget-object v14, v3, Lh4/m0;->e:Ljava/lang/Object;

    .line 967
    .line 968
    check-cast v14, Ly1/a;

    .line 969
    .line 970
    iget-object v13, v3, Lh4/m0;->f:Ljava/lang/Object;

    .line 971
    .line 972
    check-cast v13, Ly1/a;

    .line 973
    .line 974
    if-eqz v13, :cond_2b

    .line 975
    .line 976
    iget v1, v3, Lh4/m0;->b:I

    .line 977
    .line 978
    if-eq v1, v15, :cond_2b

    .line 979
    .line 980
    if-nez v1, :cond_2c

    .line 981
    .line 982
    invoke-static {v14}, Lh4/m0;->h(Ly1/a;)Z

    .line 983
    .line 984
    .line 985
    move-result v1

    .line 986
    if-eqz v1, :cond_2c

    .line 987
    .line 988
    :cond_2b
    move-object v13, v14

    .line 989
    :cond_2c
    if-eqz v8, :cond_2f

    .line 990
    .line 991
    iget-boolean v1, v13, Ly1/a;->n:Z

    .line 992
    .line 993
    if-nez v1, :cond_2f

    .line 994
    .line 995
    iget v1, v14, Ly1/a;->b:I

    .line 996
    .line 997
    const/4 v8, -0x2

    .line 998
    if-ne v1, v8, :cond_2d

    .line 999
    .line 1000
    const/4 v1, 0x1

    .line 1001
    goto :goto_15

    .line 1002
    :cond_2d
    const/4 v1, 0x0

    .line 1003
    :goto_15
    iget-object v14, v7, Lh2/r;->b:[Ly1/b1;

    .line 1004
    .line 1005
    aget-object v14, v14, v6

    .line 1006
    .line 1007
    iget-object v8, v11, Lh2/r;->b:[Ly1/b1;

    .line 1008
    .line 1009
    aget-object v6, v8, v6

    .line 1010
    .line 1011
    if-eqz v16, :cond_2e

    .line 1012
    .line 1013
    invoke-static {v6, v14}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v6

    .line 1017
    if-eqz v6, :cond_2e

    .line 1018
    .line 1019
    if-nez v1, :cond_2e

    .line 1020
    .line 1021
    invoke-virtual {v3}, Lh4/m0;->f()Z

    .line 1022
    .line 1023
    .line 1024
    move-result v1

    .line 1025
    if-eqz v1, :cond_2f

    .line 1026
    .line 1027
    :cond_2e
    invoke-static {v13, v4, v5}, Lh4/m0;->l(Ly1/a;J)V

    .line 1028
    .line 1029
    .line 1030
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    .line 1031
    .line 1032
    move-object/from16 v22, v7

    .line 1033
    .line 1034
    const/4 v1, -0x2

    .line 1035
    const/4 v13, 0x2

    .line 1036
    const/4 v14, 0x4

    .line 1037
    goto :goto_14

    .line 1038
    :cond_30
    :goto_16
    iget-object v1, v0, Ly1/l0;->g:Ly1/m0;

    .line 1039
    .line 1040
    iget-boolean v1, v1, Ly1/m0;->k:Z

    .line 1041
    .line 1042
    if-nez v1, :cond_31

    .line 1043
    .line 1044
    iget-boolean v1, v10, Ly1/f0;->O:Z

    .line 1045
    .line 1046
    if-eqz v1, :cond_36

    .line 1047
    .line 1048
    :cond_31
    array-length v1, v9

    .line 1049
    const/4 v2, 0x0

    .line 1050
    :goto_17
    if-ge v2, v1, :cond_36

    .line 1051
    .line 1052
    aget-object v3, v9, v2

    .line 1053
    .line 1054
    invoke-virtual {v3, v0}, Lh4/m0;->d(Ly1/l0;)Ly1/a;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v4

    .line 1058
    if-eqz v4, :cond_32

    .line 1059
    .line 1060
    const/4 v4, 0x1

    .line 1061
    goto :goto_18

    .line 1062
    :cond_32
    const/4 v4, 0x0

    .line 1063
    :goto_18
    if-nez v4, :cond_34

    .line 1064
    .line 1065
    :cond_33
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    goto :goto_1a

    .line 1071
    :cond_34
    invoke-virtual {v3, v0}, Lh4/m0;->d(Ly1/l0;)Ly1/a;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v4

    .line 1075
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v4}, Ly1/a;->k()Z

    .line 1079
    .line 1080
    .line 1081
    move-result v4

    .line 1082
    if-eqz v4, :cond_33

    .line 1083
    .line 1084
    iget-object v4, v0, Ly1/l0;->g:Ly1/m0;

    .line 1085
    .line 1086
    iget-wide v4, v4, Ly1/m0;->f:J

    .line 1087
    .line 1088
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    cmp-long v8, v4, v6

    .line 1094
    .line 1095
    if-eqz v8, :cond_35

    .line 1096
    .line 1097
    const-wide/high16 v11, -0x8000000000000000L

    .line 1098
    .line 1099
    cmp-long v8, v4, v11

    .line 1100
    .line 1101
    if-eqz v8, :cond_35

    .line 1102
    .line 1103
    iget-wide v11, v0, Ly1/l0;->p:J

    .line 1104
    .line 1105
    add-long/2addr v4, v11

    .line 1106
    goto :goto_19

    .line 1107
    :cond_35
    move-wide v4, v6

    .line 1108
    :goto_19
    invoke-virtual {v3, v0}, Lh4/m0;->d(Ly1/l0;)Ly1/a;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v3

    .line 1112
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1113
    .line 1114
    .line 1115
    invoke-static {v3, v4, v5}, Lh4/m0;->l(Ly1/a;J)V

    .line 1116
    .line 1117
    .line 1118
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    .line 1119
    .line 1120
    goto :goto_17

    .line 1121
    :cond_36
    :goto_1b
    iget-object v6, v10, Ly1/f0;->s:Ly1/n0;

    .line 1122
    .line 1123
    iget-object v7, v6, Ly1/n0;->j:Ly1/l0;

    .line 1124
    .line 1125
    if-eqz v7, :cond_40

    .line 1126
    .line 1127
    iget-object v0, v6, Ly1/n0;->i:Ly1/l0;

    .line 1128
    .line 1129
    if-eq v0, v7, :cond_40

    .line 1130
    .line 1131
    iget-boolean v0, v7, Ly1/l0;->h:Z

    .line 1132
    .line 1133
    if-eqz v0, :cond_37

    .line 1134
    .line 1135
    goto/16 :goto_21

    .line 1136
    .line 1137
    :cond_37
    iget-object v8, v7, Ly1/l0;->o:Lh2/r;

    .line 1138
    .line 1139
    const/4 v0, 0x0

    .line 1140
    const/4 v9, 0x1

    .line 1141
    :goto_1c
    iget-object v11, v10, Ly1/f0;->a:[Lh4/m0;

    .line 1142
    .line 1143
    array-length v1, v11

    .line 1144
    if-ge v0, v1, :cond_3c

    .line 1145
    .line 1146
    aget-object v1, v11, v0

    .line 1147
    .line 1148
    invoke-virtual {v1}, Lh4/m0;->c()I

    .line 1149
    .line 1150
    .line 1151
    move-result v1

    .line 1152
    aget-object v2, v11, v0

    .line 1153
    .line 1154
    iget-object v3, v2, Lh4/m0;->e:Ljava/lang/Object;

    .line 1155
    .line 1156
    check-cast v3, Ly1/a;

    .line 1157
    .line 1158
    iget-object v4, v10, Ly1/f0;->n:Ly1/h;

    .line 1159
    .line 1160
    invoke-virtual {v2, v3, v7, v8, v4}, Lh4/m0;->j(Ly1/a;Ly1/l0;Lh2/r;Ly1/h;)I

    .line 1161
    .line 1162
    .line 1163
    move-result v3

    .line 1164
    iget-object v5, v2, Lh4/m0;->f:Ljava/lang/Object;

    .line 1165
    .line 1166
    check-cast v5, Ly1/a;

    .line 1167
    .line 1168
    invoke-virtual {v2, v5, v7, v8, v4}, Lh4/m0;->j(Ly1/a;Ly1/l0;Lh2/r;Ly1/h;)I

    .line 1169
    .line 1170
    .line 1171
    move-result v2

    .line 1172
    const/4 v4, 0x1

    .line 1173
    if-ne v3, v4, :cond_38

    .line 1174
    .line 1175
    move v3, v2

    .line 1176
    :cond_38
    and-int/lit8 v2, v3, 0x2

    .line 1177
    .line 1178
    if-eqz v2, :cond_3a

    .line 1179
    .line 1180
    iget-boolean v2, v10, Ly1/f0;->Z:Z

    .line 1181
    .line 1182
    if-eqz v2, :cond_3a

    .line 1183
    .line 1184
    if-nez v2, :cond_39

    .line 1185
    .line 1186
    goto :goto_1d

    .line 1187
    :cond_39
    const/4 v2, 0x0

    .line 1188
    iput-boolean v2, v10, Ly1/f0;->Z:Z

    .line 1189
    .line 1190
    iget-object v2, v10, Ly1/f0;->K:Ly1/v0;

    .line 1191
    .line 1192
    iget-boolean v2, v2, Ly1/v0;->p:Z

    .line 1193
    .line 1194
    if-eqz v2, :cond_3a

    .line 1195
    .line 1196
    iget-object v2, v10, Ly1/f0;->h:Lu1/b0;

    .line 1197
    .line 1198
    const/4 v4, 0x2

    .line 1199
    invoke-virtual {v2, v4}, Lu1/b0;->f(I)Z

    .line 1200
    .line 1201
    .line 1202
    :cond_3a
    :goto_1d
    iget v2, v10, Ly1/f0;->h0:I

    .line 1203
    .line 1204
    aget-object v4, v11, v0

    .line 1205
    .line 1206
    invoke-virtual {v4}, Lh4/m0;->c()I

    .line 1207
    .line 1208
    .line 1209
    move-result v4

    .line 1210
    sub-int/2addr v1, v4

    .line 1211
    sub-int/2addr v2, v1

    .line 1212
    iput v2, v10, Ly1/f0;->h0:I

    .line 1213
    .line 1214
    and-int/lit8 v1, v3, 0x1

    .line 1215
    .line 1216
    if-eqz v1, :cond_3b

    .line 1217
    .line 1218
    const/4 v1, 0x1

    .line 1219
    goto :goto_1e

    .line 1220
    :cond_3b
    const/4 v1, 0x0

    .line 1221
    :goto_1e
    and-int/2addr v9, v1

    .line 1222
    add-int/lit8 v0, v0, 0x1

    .line 1223
    .line 1224
    goto :goto_1c

    .line 1225
    :cond_3c
    if-eqz v9, :cond_3f

    .line 1226
    .line 1227
    const/4 v12, 0x0

    .line 1228
    :goto_1f
    array-length v0, v11

    .line 1229
    if-ge v12, v0, :cond_3f

    .line 1230
    .line 1231
    invoke-virtual {v8, v12}, Lh2/r;->b(I)Z

    .line 1232
    .line 1233
    .line 1234
    move-result v0

    .line 1235
    if-eqz v0, :cond_3e

    .line 1236
    .line 1237
    aget-object v0, v11, v12

    .line 1238
    .line 1239
    invoke-virtual {v0, v7}, Lh4/m0;->d(Ly1/l0;)Ly1/a;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v0

    .line 1243
    if-eqz v0, :cond_3d

    .line 1244
    .line 1245
    const/4 v0, 0x1

    .line 1246
    goto :goto_20

    .line 1247
    :cond_3d
    const/4 v0, 0x0

    .line 1248
    :goto_20
    if-nez v0, :cond_3e

    .line 1249
    .line 1250
    const/4 v3, 0x0

    .line 1251
    invoke-virtual {v7}, Ly1/l0;->e()J

    .line 1252
    .line 1253
    .line 1254
    move-result-wide v4

    .line 1255
    move-object/from16 v0, p0

    .line 1256
    .line 1257
    move-object v1, v7

    .line 1258
    move v2, v12

    .line 1259
    invoke-virtual/range {v0 .. v5}, Ly1/f0;->k(Ly1/l0;IZJ)V

    .line 1260
    .line 1261
    .line 1262
    :cond_3e
    add-int/lit8 v12, v12, 0x1

    .line 1263
    .line 1264
    goto :goto_1f

    .line 1265
    :cond_3f
    if-eqz v9, :cond_40

    .line 1266
    .line 1267
    iget-object v0, v6, Ly1/n0;->j:Ly1/l0;

    .line 1268
    .line 1269
    const/4 v1, 0x1

    .line 1270
    iput-boolean v1, v0, Ly1/l0;->h:Z

    .line 1271
    .line 1272
    :cond_40
    :goto_21
    const/4 v0, 0x0

    .line 1273
    :goto_22
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->r0()Z

    .line 1274
    .line 1275
    .line 1276
    move-result v1

    .line 1277
    if-nez v1, :cond_41

    .line 1278
    .line 1279
    goto/16 :goto_2d

    .line 1280
    .line 1281
    :cond_41
    iget-boolean v1, v10, Ly1/f0;->O:Z

    .line 1282
    .line 1283
    if-eqz v1, :cond_42

    .line 1284
    .line 1285
    goto/16 :goto_2d

    .line 1286
    .line 1287
    :cond_42
    iget-object v11, v10, Ly1/f0;->s:Ly1/n0;

    .line 1288
    .line 1289
    iget-object v1, v11, Ly1/n0;->i:Ly1/l0;

    .line 1290
    .line 1291
    if-nez v1, :cond_43

    .line 1292
    .line 1293
    goto/16 :goto_2d

    .line 1294
    .line 1295
    :cond_43
    iget-object v1, v1, Ly1/l0;->m:Ly1/l0;

    .line 1296
    .line 1297
    if-eqz v1, :cond_53

    .line 1298
    .line 1299
    iget-wide v2, v10, Ly1/f0;->M0:J

    .line 1300
    .line 1301
    invoke-virtual {v1}, Ly1/l0;->e()J

    .line 1302
    .line 1303
    .line 1304
    move-result-wide v4

    .line 1305
    cmp-long v6, v2, v4

    .line 1306
    .line 1307
    if-ltz v6, :cond_53

    .line 1308
    .line 1309
    iget-boolean v1, v1, Ly1/l0;->h:Z

    .line 1310
    .line 1311
    if-eqz v1, :cond_53

    .line 1312
    .line 1313
    if-eqz v0, :cond_44

    .line 1314
    .line 1315
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->E()V

    .line 1316
    .line 1317
    .line 1318
    :cond_44
    const/4 v0, 0x0

    .line 1319
    iput-boolean v0, v10, Ly1/f0;->U0:Z

    .line 1320
    .line 1321
    invoke-virtual {v11}, Ly1/n0;->a()Ly1/l0;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v12

    .line 1325
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1326
    .line 1327
    .line 1328
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 1329
    .line 1330
    iget-object v0, v0, Ly1/v0;->b:Lf2/c0;

    .line 1331
    .line 1332
    iget-object v0, v0, Lf2/c0;->a:Ljava/lang/Object;

    .line 1333
    .line 1334
    iget-object v1, v12, Ly1/l0;->g:Ly1/m0;

    .line 1335
    .line 1336
    iget-object v1, v1, Ly1/m0;->a:Lf2/c0;

    .line 1337
    .line 1338
    iget-object v1, v1, Lf2/c0;->a:Ljava/lang/Object;

    .line 1339
    .line 1340
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1341
    .line 1342
    .line 1343
    move-result v0

    .line 1344
    if-eqz v0, :cond_45

    .line 1345
    .line 1346
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 1347
    .line 1348
    iget-object v0, v0, Ly1/v0;->b:Lf2/c0;

    .line 1349
    .line 1350
    iget v1, v0, Lf2/c0;->b:I

    .line 1351
    .line 1352
    const/4 v2, -0x1

    .line 1353
    if-ne v1, v2, :cond_45

    .line 1354
    .line 1355
    iget-object v1, v12, Ly1/l0;->g:Ly1/m0;

    .line 1356
    .line 1357
    iget-object v1, v1, Ly1/m0;->a:Lf2/c0;

    .line 1358
    .line 1359
    iget v3, v1, Lf2/c0;->b:I

    .line 1360
    .line 1361
    if-ne v3, v2, :cond_45

    .line 1362
    .line 1363
    iget v0, v0, Lf2/c0;->e:I

    .line 1364
    .line 1365
    iget v1, v1, Lf2/c0;->e:I

    .line 1366
    .line 1367
    if-eq v0, v1, :cond_45

    .line 1368
    .line 1369
    const/4 v0, 0x1

    .line 1370
    goto :goto_23

    .line 1371
    :cond_45
    const/4 v0, 0x0

    .line 1372
    :goto_23
    iget-object v1, v12, Ly1/l0;->g:Ly1/m0;

    .line 1373
    .line 1374
    iget-object v2, v1, Ly1/m0;->a:Lf2/c0;

    .line 1375
    .line 1376
    iget-wide v6, v1, Ly1/m0;->b:J

    .line 1377
    .line 1378
    iget-wide v4, v1, Ly1/m0;->d:J

    .line 1379
    .line 1380
    const/4 v13, 0x1

    .line 1381
    xor-int/lit8 v8, v0, 0x1

    .line 1382
    .line 1383
    const/4 v9, 0x0

    .line 1384
    move-object/from16 v0, p0

    .line 1385
    .line 1386
    move-object v1, v2

    .line 1387
    move-wide v2, v6

    .line 1388
    invoke-virtual/range {v0 .. v9}, Ly1/f0;->y(Lf2/c0;JJJZI)Ly1/v0;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v0

    .line 1392
    iput-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 1393
    .line 1394
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->P()V

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->B0()V

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->f()Z

    .line 1401
    .line 1402
    .line 1403
    move-result v0

    .line 1404
    iget-object v1, v10, Ly1/f0;->a:[Lh4/m0;

    .line 1405
    .line 1406
    if-eqz v0, :cond_4c

    .line 1407
    .line 1408
    iget-object v0, v11, Ly1/n0;->k:Ly1/l0;

    .line 1409
    .line 1410
    if-ne v12, v0, :cond_4c

    .line 1411
    .line 1412
    array-length v0, v1

    .line 1413
    const/4 v2, 0x0

    .line 1414
    :goto_24
    if-ge v2, v0, :cond_4c

    .line 1415
    .line 1416
    aget-object v3, v1, v2

    .line 1417
    .line 1418
    iget v4, v3, Lh4/m0;->b:I

    .line 1419
    .line 1420
    const/4 v5, 0x4

    .line 1421
    if-eq v4, v15, :cond_46

    .line 1422
    .line 1423
    if-ne v4, v5, :cond_47

    .line 1424
    .line 1425
    :cond_46
    const/4 v6, 0x2

    .line 1426
    const/4 v7, 0x0

    .line 1427
    goto :goto_25

    .line 1428
    :cond_47
    const/4 v6, 0x2

    .line 1429
    const/4 v7, 0x0

    .line 1430
    if-ne v4, v6, :cond_4b

    .line 1431
    .line 1432
    iput v7, v3, Lh4/m0;->b:I

    .line 1433
    .line 1434
    goto :goto_29

    .line 1435
    :goto_25
    if-ne v4, v5, :cond_48

    .line 1436
    .line 1437
    const/4 v4, 0x1

    .line 1438
    goto :goto_26

    .line 1439
    :cond_48
    const/4 v4, 0x0

    .line 1440
    :goto_26
    iget-object v5, v3, Lh4/m0;->e:Ljava/lang/Object;

    .line 1441
    .line 1442
    check-cast v5, Ly1/a;

    .line 1443
    .line 1444
    iget-object v8, v3, Lh4/m0;->f:Ljava/lang/Object;

    .line 1445
    .line 1446
    check-cast v8, Ly1/a;

    .line 1447
    .line 1448
    const/16 v9, 0x11

    .line 1449
    .line 1450
    if-eqz v4, :cond_49

    .line 1451
    .line 1452
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1453
    .line 1454
    .line 1455
    invoke-interface {v8, v9, v5}, Ly1/x0;->d(ILjava/lang/Object;)V

    .line 1456
    .line 1457
    .line 1458
    goto :goto_27

    .line 1459
    :cond_49
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1460
    .line 1461
    .line 1462
    invoke-interface {v5, v9, v8}, Ly1/x0;->d(ILjava/lang/Object;)V

    .line 1463
    .line 1464
    .line 1465
    :goto_27
    iget v4, v3, Lh4/m0;->b:I

    .line 1466
    .line 1467
    const/4 v5, 0x4

    .line 1468
    if-ne v4, v5, :cond_4a

    .line 1469
    .line 1470
    const/4 v4, 0x0

    .line 1471
    goto :goto_28

    .line 1472
    :cond_4a
    const/4 v4, 0x1

    .line 1473
    :goto_28
    iput v4, v3, Lh4/m0;->b:I

    .line 1474
    .line 1475
    :cond_4b
    :goto_29
    add-int/lit8 v2, v2, 0x1

    .line 1476
    .line 1477
    goto :goto_24

    .line 1478
    :cond_4c
    const/4 v5, 0x4

    .line 1479
    const/4 v6, 0x2

    .line 1480
    const/4 v7, 0x0

    .line 1481
    iget-object v0, v10, Ly1/f0;->K:Ly1/v0;

    .line 1482
    .line 1483
    iget v0, v0, Ly1/v0;->e:I

    .line 1484
    .line 1485
    if-ne v0, v15, :cond_4d

    .line 1486
    .line 1487
    invoke-virtual/range {p0 .. p0}, Ly1/f0;->t0()V

    .line 1488
    .line 1489
    .line 1490
    :cond_4d
    iget-object v0, v11, Ly1/n0;->i:Ly1/l0;

    .line 1491
    .line 1492
    iget-object v0, v0, Ly1/l0;->o:Lh2/r;

    .line 1493
    .line 1494
    const/4 v2, 0x0

    .line 1495
    :goto_2a
    array-length v3, v1

    .line 1496
    if-ge v2, v3, :cond_52

    .line 1497
    .line 1498
    invoke-virtual {v0, v2}, Lh2/r;->b(I)Z

    .line 1499
    .line 1500
    .line 1501
    move-result v3

    .line 1502
    if-nez v3, :cond_4e

    .line 1503
    .line 1504
    goto :goto_2c

    .line 1505
    :cond_4e
    aget-object v3, v1, v2

    .line 1506
    .line 1507
    iget-object v4, v3, Lh4/m0;->e:Ljava/lang/Object;

    .line 1508
    .line 1509
    check-cast v4, Ly1/a;

    .line 1510
    .line 1511
    invoke-static {v4}, Lh4/m0;->h(Ly1/a;)Z

    .line 1512
    .line 1513
    .line 1514
    move-result v8

    .line 1515
    if-eqz v8, :cond_4f

    .line 1516
    .line 1517
    invoke-virtual {v4}, Ly1/a;->g()V

    .line 1518
    .line 1519
    .line 1520
    goto :goto_2c

    .line 1521
    :cond_4f
    iget-object v3, v3, Lh4/m0;->f:Ljava/lang/Object;

    .line 1522
    .line 1523
    check-cast v3, Ly1/a;

    .line 1524
    .line 1525
    if-eqz v3, :cond_51

    .line 1526
    .line 1527
    iget v4, v3, Ly1/a;->h:I

    .line 1528
    .line 1529
    if-eqz v4, :cond_50

    .line 1530
    .line 1531
    const/4 v4, 0x1

    .line 1532
    goto :goto_2b

    .line 1533
    :cond_50
    const/4 v4, 0x0

    .line 1534
    :goto_2b
    if-eqz v4, :cond_51

    .line 1535
    .line 1536
    invoke-virtual {v3}, Ly1/a;->g()V

    .line 1537
    .line 1538
    .line 1539
    :cond_51
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    .line 1540
    .line 1541
    goto :goto_2a

    .line 1542
    :cond_52
    const/4 v0, 0x1

    .line 1543
    goto/16 :goto_22

    .line 1544
    .line 1545
    :cond_53
    :goto_2d
    iget-object v0, v10, Ly1/f0;->S0:Ly1/n;

    .line 1546
    .line 1547
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1548
    .line 1549
    .line 1550
    :cond_54
    :goto_2e
    return-void
.end method
