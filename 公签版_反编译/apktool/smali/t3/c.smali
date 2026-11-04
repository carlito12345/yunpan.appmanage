.class public final Lt3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt3/b;


# instance fields
.field public final a:Lf2/u0;

.field public final b:Ll2/j0;

.field public final c:Lt3/e;

.field public final d:Lr1/p;

.field public final e:I

.field public f:J

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Lf2/u0;Ll2/j0;Lt3/e;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt3/c;->a:Lf2/u0;

    .line 5
    .line 6
    iput-object p2, p0, Lt3/c;->b:Ll2/j0;

    .line 7
    .line 8
    iput-object p3, p0, Lt3/c;->c:Lt3/e;

    .line 9
    .line 10
    iget p1, p3, Lt3/e;->e:I

    .line 11
    .line 12
    iget p2, p3, Lt3/e;->b:I

    .line 13
    .line 14
    mul-int p1, p1, p2

    .line 15
    .line 16
    div-int/lit8 p1, p1, 0x8

    .line 17
    .line 18
    iget v0, p3, Lt3/e;->d:I

    .line 19
    .line 20
    if-ne v0, p1, :cond_0

    .line 21
    .line 22
    iget p3, p3, Lt3/e;->c:I

    .line 23
    .line 24
    mul-int v0, p3, p1

    .line 25
    .line 26
    mul-int/lit8 v1, v0, 0x8

    .line 27
    .line 28
    div-int/lit8 v0, v0, 0xa

    .line 29
    .line 30
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lt3/c;->e:I

    .line 35
    .line 36
    new-instance v0, Lr1/o;

    .line 37
    .line 38
    invoke-direct {v0}, Lr1/o;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "audio/wav"

    .line 42
    .line 43
    invoke-static {v2}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput-object v2, v0, Lr1/o;->m:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p4}, Lr1/e0;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p4

    .line 53
    iput-object p4, v0, Lr1/o;->n:Ljava/lang/String;

    .line 54
    .line 55
    iput v1, v0, Lr1/o;->h:I

    .line 56
    .line 57
    iput v1, v0, Lr1/o;->i:I

    .line 58
    .line 59
    iput p1, v0, Lr1/o;->o:I

    .line 60
    .line 61
    iput p2, v0, Lr1/o;->F:I

    .line 62
    .line 63
    iput p3, v0, Lr1/o;->G:I

    .line 64
    .line 65
    iput p5, v0, Lr1/o;->H:I

    .line 66
    .line 67
    new-instance p1, Lr1/p;

    .line 68
    .line 69
    invoke-direct {p1, v0}, Lr1/p;-><init>(Lr1/o;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lt3/c;->d:Lr1/p;

    .line 73
    .line 74
    return-void

    .line 75
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string p3, "Expected block size: "

    .line 78
    .line 79
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p1, "; got: "

    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const/4 p2, 0x0

    .line 98
    invoke-static {p2, p1}, Lr1/f0;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Lr1/f0;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    throw p1
.end method


# virtual methods
.method public final a(Ll2/l;J)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p2

    .line 4
    .line 5
    :goto_0
    const/4 v3, 0x1

    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    cmp-long v6, v1, v4

    .line 9
    .line 10
    if-lez v6, :cond_1

    .line 11
    .line 12
    iget v6, v0, Lt3/c;->g:I

    .line 13
    .line 14
    iget v7, v0, Lt3/c;->e:I

    .line 15
    .line 16
    if-ge v6, v7, :cond_1

    .line 17
    .line 18
    sub-int/2addr v7, v6

    .line 19
    int-to-long v6, v7

    .line 20
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 21
    .line 22
    .line 23
    move-result-wide v6

    .line 24
    long-to-int v7, v6

    .line 25
    iget-object v6, v0, Lt3/c;->b:Ll2/j0;

    .line 26
    .line 27
    move-object/from16 v8, p1

    .line 28
    .line 29
    invoke-interface {v6, v8, v7, v3}, Ll2/j0;->e(Lr1/h;IZ)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v6, -0x1

    .line 34
    if-ne v3, v6, :cond_0

    .line 35
    .line 36
    move-wide v1, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget v4, v0, Lt3/c;->g:I

    .line 39
    .line 40
    add-int/2addr v4, v3

    .line 41
    iput v4, v0, Lt3/c;->g:I

    .line 42
    .line 43
    int-to-long v3, v3

    .line 44
    sub-long/2addr v1, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v6, v0, Lt3/c;->c:Lt3/e;

    .line 47
    .line 48
    iget v7, v0, Lt3/c;->g:I

    .line 49
    .line 50
    iget v8, v6, Lt3/e;->d:I

    .line 51
    .line 52
    div-int/2addr v7, v8

    .line 53
    if-lez v7, :cond_2

    .line 54
    .line 55
    iget-wide v9, v0, Lt3/c;->f:J

    .line 56
    .line 57
    iget-wide v11, v0, Lt3/c;->h:J

    .line 58
    .line 59
    iget v6, v6, Lt3/e;->c:I

    .line 60
    .line 61
    int-to-long v13, v6

    .line 62
    sget-object v6, Lu1/f0;->a:Ljava/lang/String;

    .line 63
    .line 64
    sget-object v17, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 65
    .line 66
    const-wide/32 v15, 0xf4240

    .line 67
    .line 68
    .line 69
    move-wide/from16 v18, v13

    .line 70
    .line 71
    move-wide v13, v15

    .line 72
    move-wide/from16 v15, v18

    .line 73
    .line 74
    invoke-static/range {v11 .. v17}, Lu1/f0;->M(JJJLjava/math/RoundingMode;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v11

    .line 78
    add-long v14, v9, v11

    .line 79
    .line 80
    mul-int v17, v7, v8

    .line 81
    .line 82
    iget v6, v0, Lt3/c;->g:I

    .line 83
    .line 84
    sub-int v6, v6, v17

    .line 85
    .line 86
    const/16 v19, 0x0

    .line 87
    .line 88
    iget-object v13, v0, Lt3/c;->b:Ll2/j0;

    .line 89
    .line 90
    const/16 v16, 0x1

    .line 91
    .line 92
    move/from16 v18, v6

    .line 93
    .line 94
    invoke-interface/range {v13 .. v19}, Ll2/j0;->b(JIIILl2/i0;)V

    .line 95
    .line 96
    .line 97
    iget-wide v8, v0, Lt3/c;->h:J

    .line 98
    .line 99
    int-to-long v10, v7

    .line 100
    add-long/2addr v8, v10

    .line 101
    iput-wide v8, v0, Lt3/c;->h:J

    .line 102
    .line 103
    iput v6, v0, Lt3/c;->g:I

    .line 104
    .line 105
    :cond_2
    cmp-long v6, v1, v4

    .line 106
    .line 107
    if-gtz v6, :cond_3

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    const/4 v3, 0x0

    .line 111
    :goto_1
    return v3
.end method

.method public final b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lt3/c;->f:J

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lt3/c;->g:I

    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    iput-wide p1, p0, Lt3/c;->h:J

    .line 9
    .line 10
    return-void
.end method

.method public final c(IJ)V
    .locals 8

    .line 1
    new-instance v7, Lt3/g;

    .line 2
    .line 3
    int-to-long v3, p1

    .line 4
    iget-object v1, p0, Lt3/c;->c:Lt3/e;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    move-object v0, v7

    .line 8
    move-wide v5, p2

    .line 9
    invoke-direct/range {v0 .. v6}, Lt3/g;-><init>(Lt3/e;IJJ)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lt3/c;->a:Lf2/u0;

    .line 13
    .line 14
    invoke-virtual {p1, v7}, Lf2/u0;->s(Ll2/c0;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lt3/c;->b:Ll2/j0;

    .line 18
    .line 19
    iget-object p2, p0, Lt3/c;->d:Lr1/p;

    .line 20
    .line 21
    invoke-interface {p1, p2}, Ll2/j0;->g(Lr1/p;)V

    .line 22
    .line 23
    .line 24
    iget-wide p2, v7, Lt3/g;->e:J

    .line 25
    .line 26
    invoke-interface {p1, p2, p3}, Ll2/j0;->d(J)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
