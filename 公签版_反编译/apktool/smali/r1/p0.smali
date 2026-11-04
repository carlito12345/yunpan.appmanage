.class public final Lr1/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final p:Ljava/lang/Object;

.field public static final q:Lr1/y;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Lr1/y;

.field public d:J

.field public e:J

.field public f:J

.field public g:Z

.field public h:Z

.field public i:Lr1/u;

.field public j:Z

.field public k:J

.field public l:J

.field public m:I

.field public n:I

.field public o:J


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/4 v0, 0x4

    .line 2
    new-instance v1, Ljava/lang/Object;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    sput-object v1, Lr1/p0;->p:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v1, Ldd/c;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ldd/c;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lu7/g0;->b:Lu7/e0;

    .line 15
    .line 16
    sget-object v2, Lu7/y0;->e:Lu7/y0;

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    sget-object v8, Lu7/y0;->e:Lu7/y0;

    .line 23
    .line 24
    new-instance v2, Lr1/t;

    .line 25
    .line 26
    invoke-direct {v2}, Lr1/t;-><init>()V

    .line 27
    .line 28
    .line 29
    sget-object v15, Lr1/w;->a:Lr1/w;

    .line 30
    .line 31
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    new-instance v11, Lr1/v;

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    move-object v3, v11

    .line 45
    invoke-direct/range {v3 .. v10}, Lr1/v;-><init>(Landroid/net/Uri;Ljava/lang/String;Lif/a;Ljava/util/List;Lu7/g0;J)V

    .line 46
    .line 47
    .line 48
    move-object v12, v11

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v12, v6

    .line 51
    :goto_0
    new-instance v3, Lr1/y;

    .line 52
    .line 53
    new-instance v11, Lr1/s;

    .line 54
    .line 55
    invoke-direct {v11, v1}, Lr1/s;-><init>(Ldd/c;)V

    .line 56
    .line 57
    .line 58
    new-instance v13, Lr1/u;

    .line 59
    .line 60
    invoke-direct {v13, v2}, Lr1/u;-><init>(Lr1/t;)V

    .line 61
    .line 62
    .line 63
    sget-object v14, Lr1/b0;->B:Lr1/b0;

    .line 64
    .line 65
    const-string v10, "androidx.media3.common.Timeline"

    .line 66
    .line 67
    move-object v9, v3

    .line 68
    invoke-direct/range {v9 .. v15}, Lr1/y;-><init>(Ljava/lang/String;Lr1/s;Lr1/v;Lr1/u;Lr1/b0;Lr1/w;)V

    .line 69
    .line 70
    .line 71
    sput-object v3, Lr1/p0;->q:Lr1/y;

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    const/4 v2, 0x2

    .line 75
    const/4 v3, 0x3

    .line 76
    const/4 v4, 0x5

    .line 77
    invoke-static {v1, v2, v3, v0, v4}, Lorg/bouncycastle/jcajce/provider/digest/a;->m(IIIII)V

    .line 78
    .line 79
    .line 80
    const/4 v0, 0x6

    .line 81
    const/4 v1, 0x7

    .line 82
    const/16 v2, 0x8

    .line 83
    .line 84
    const/16 v3, 0x9

    .line 85
    .line 86
    const/16 v4, 0xa

    .line 87
    .line 88
    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/jcajce/provider/digest/a;->m(IIIII)V

    .line 89
    .line 90
    .line 91
    const/16 v0, 0xb

    .line 92
    .line 93
    invoke-static {v0}, Lu1/f0;->B(I)V

    .line 94
    .line 95
    .line 96
    const/16 v0, 0xc

    .line 97
    .line 98
    invoke-static {v0}, Lu1/f0;->B(I)V

    .line 99
    .line 100
    .line 101
    const/16 v0, 0xd

    .line 102
    .line 103
    invoke-static {v0}, Lu1/f0;->B(I)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lr1/p0;->p:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v0, p0, Lr1/p0;->a:Ljava/lang/Object;

    .line 7
    .line 8
    sget-object v0, Lr1/p0;->q:Lr1/y;

    .line 9
    .line 10
    iput-object v0, p0, Lr1/p0;->c:Lr1/y;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr1/p0;->i:Lr1/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final b(Lr1/y;ZZLr1/u;JJ)V
    .locals 2

    .line 1
    sget-object v0, Lr1/p0;->p:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object v0, p0, Lr1/p0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lr1/p0;->q:Lr1/y;

    .line 10
    .line 11
    :goto_0
    iput-object v0, p0, Lr1/p0;->c:Lr1/y;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p1, Lr1/y;->b:Lr1/v;

    .line 16
    .line 17
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    iput-wide v0, p0, Lr1/p0;->d:J

    .line 23
    .line 24
    iput-wide v0, p0, Lr1/p0;->e:J

    .line 25
    .line 26
    iput-wide v0, p0, Lr1/p0;->f:J

    .line 27
    .line 28
    iput-boolean p2, p0, Lr1/p0;->g:Z

    .line 29
    .line 30
    iput-boolean p3, p0, Lr1/p0;->h:Z

    .line 31
    .line 32
    iput-object p4, p0, Lr1/p0;->i:Lr1/u;

    .line 33
    .line 34
    iput-wide p5, p0, Lr1/p0;->k:J

    .line 35
    .line 36
    iput-wide p7, p0, Lr1/p0;->l:J

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lr1/p0;->m:I

    .line 40
    .line 41
    iput p1, p0, Lr1/p0;->n:I

    .line 42
    .line 43
    const-wide/16 p2, 0x0

    .line 44
    .line 45
    iput-wide p2, p0, Lr1/p0;->o:J

    .line 46
    .line 47
    iput-boolean p1, p0, Lr1/p0;->j:Z

    .line 48
    .line 49
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lr1/p0;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_1
    check-cast p1, Lr1/p0;

    .line 23
    .line 24
    iget-object v2, p0, Lr1/p0;->a:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v3, p1, Lr1/p0;->a:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object v2, p0, Lr1/p0;->c:Lr1/y;

    .line 35
    .line 36
    iget-object v3, p1, Lr1/p0;->c:Lr1/y;

    .line 37
    .line 38
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget-object v2, p0, Lr1/p0;->i:Lr1/u;

    .line 45
    .line 46
    iget-object v3, p1, Lr1/p0;->i:Lr1/u;

    .line 47
    .line 48
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget-wide v2, p0, Lr1/p0;->d:J

    .line 55
    .line 56
    iget-wide v4, p1, Lr1/p0;->d:J

    .line 57
    .line 58
    cmp-long v6, v2, v4

    .line 59
    .line 60
    if-nez v6, :cond_2

    .line 61
    .line 62
    iget-wide v2, p0, Lr1/p0;->e:J

    .line 63
    .line 64
    iget-wide v4, p1, Lr1/p0;->e:J

    .line 65
    .line 66
    cmp-long v6, v2, v4

    .line 67
    .line 68
    if-nez v6, :cond_2

    .line 69
    .line 70
    iget-wide v2, p0, Lr1/p0;->f:J

    .line 71
    .line 72
    iget-wide v4, p1, Lr1/p0;->f:J

    .line 73
    .line 74
    cmp-long v6, v2, v4

    .line 75
    .line 76
    if-nez v6, :cond_2

    .line 77
    .line 78
    iget-boolean v2, p0, Lr1/p0;->g:Z

    .line 79
    .line 80
    iget-boolean v3, p1, Lr1/p0;->g:Z

    .line 81
    .line 82
    if-ne v2, v3, :cond_2

    .line 83
    .line 84
    iget-boolean v2, p0, Lr1/p0;->h:Z

    .line 85
    .line 86
    iget-boolean v3, p1, Lr1/p0;->h:Z

    .line 87
    .line 88
    if-ne v2, v3, :cond_2

    .line 89
    .line 90
    iget-boolean v2, p0, Lr1/p0;->j:Z

    .line 91
    .line 92
    iget-boolean v3, p1, Lr1/p0;->j:Z

    .line 93
    .line 94
    if-ne v2, v3, :cond_2

    .line 95
    .line 96
    iget-wide v2, p0, Lr1/p0;->k:J

    .line 97
    .line 98
    iget-wide v4, p1, Lr1/p0;->k:J

    .line 99
    .line 100
    cmp-long v6, v2, v4

    .line 101
    .line 102
    if-nez v6, :cond_2

    .line 103
    .line 104
    iget-wide v2, p0, Lr1/p0;->l:J

    .line 105
    .line 106
    iget-wide v4, p1, Lr1/p0;->l:J

    .line 107
    .line 108
    cmp-long v6, v2, v4

    .line 109
    .line 110
    if-nez v6, :cond_2

    .line 111
    .line 112
    iget v2, p0, Lr1/p0;->m:I

    .line 113
    .line 114
    iget v3, p1, Lr1/p0;->m:I

    .line 115
    .line 116
    if-ne v2, v3, :cond_2

    .line 117
    .line 118
    iget v2, p0, Lr1/p0;->n:I

    .line 119
    .line 120
    iget v3, p1, Lr1/p0;->n:I

    .line 121
    .line 122
    if-ne v2, v3, :cond_2

    .line 123
    .line 124
    iget-wide v2, p0, Lr1/p0;->o:J

    .line 125
    .line 126
    iget-wide v4, p1, Lr1/p0;->o:J

    .line 127
    .line 128
    cmp-long p1, v2, v4

    .line 129
    .line 130
    if-nez p1, :cond_2

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    .line 135
    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lr1/p0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit16 v0, v0, 0xd9

    .line 8
    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-object v1, p0, Lr1/p0;->c:Lr1/y;

    .line 12
    .line 13
    invoke-virtual {v1}, Lr1/y;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    mul-int/lit16 v1, v1, 0x3c1

    .line 19
    .line 20
    iget-object v0, p0, Lr1/p0;->i:Lr1/u;

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Lr1/u;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    :goto_0
    add-int/2addr v1, v0

    .line 31
    mul-int/lit8 v1, v1, 0x1f

    .line 32
    .line 33
    iget-wide v2, p0, Lr1/p0;->d:J

    .line 34
    .line 35
    const/16 v0, 0x20

    .line 36
    .line 37
    ushr-long v4, v2, v0

    .line 38
    .line 39
    xor-long/2addr v2, v4

    .line 40
    long-to-int v3, v2

    .line 41
    add-int/2addr v1, v3

    .line 42
    mul-int/lit8 v1, v1, 0x1f

    .line 43
    .line 44
    iget-wide v2, p0, Lr1/p0;->e:J

    .line 45
    .line 46
    ushr-long v4, v2, v0

    .line 47
    .line 48
    xor-long/2addr v2, v4

    .line 49
    long-to-int v3, v2

    .line 50
    add-int/2addr v1, v3

    .line 51
    mul-int/lit8 v1, v1, 0x1f

    .line 52
    .line 53
    iget-wide v2, p0, Lr1/p0;->f:J

    .line 54
    .line 55
    ushr-long v4, v2, v0

    .line 56
    .line 57
    xor-long/2addr v2, v4

    .line 58
    long-to-int v3, v2

    .line 59
    add-int/2addr v1, v3

    .line 60
    mul-int/lit8 v1, v1, 0x1f

    .line 61
    .line 62
    iget-boolean v2, p0, Lr1/p0;->g:Z

    .line 63
    .line 64
    add-int/2addr v1, v2

    .line 65
    mul-int/lit8 v1, v1, 0x1f

    .line 66
    .line 67
    iget-boolean v2, p0, Lr1/p0;->h:Z

    .line 68
    .line 69
    add-int/2addr v1, v2

    .line 70
    mul-int/lit8 v1, v1, 0x1f

    .line 71
    .line 72
    iget-boolean v2, p0, Lr1/p0;->j:Z

    .line 73
    .line 74
    add-int/2addr v1, v2

    .line 75
    mul-int/lit8 v1, v1, 0x1f

    .line 76
    .line 77
    iget-wide v2, p0, Lr1/p0;->k:J

    .line 78
    .line 79
    ushr-long v4, v2, v0

    .line 80
    .line 81
    xor-long/2addr v2, v4

    .line 82
    long-to-int v3, v2

    .line 83
    add-int/2addr v1, v3

    .line 84
    mul-int/lit8 v1, v1, 0x1f

    .line 85
    .line 86
    iget-wide v2, p0, Lr1/p0;->l:J

    .line 87
    .line 88
    ushr-long v4, v2, v0

    .line 89
    .line 90
    xor-long/2addr v2, v4

    .line 91
    long-to-int v3, v2

    .line 92
    add-int/2addr v1, v3

    .line 93
    mul-int/lit8 v1, v1, 0x1f

    .line 94
    .line 95
    iget v2, p0, Lr1/p0;->m:I

    .line 96
    .line 97
    add-int/2addr v1, v2

    .line 98
    mul-int/lit8 v1, v1, 0x1f

    .line 99
    .line 100
    iget v2, p0, Lr1/p0;->n:I

    .line 101
    .line 102
    add-int/2addr v1, v2

    .line 103
    mul-int/lit8 v1, v1, 0x1f

    .line 104
    .line 105
    iget-wide v2, p0, Lr1/p0;->o:J

    .line 106
    .line 107
    ushr-long v4, v2, v0

    .line 108
    .line 109
    xor-long/2addr v2, v4

    .line 110
    long-to-int v0, v2

    .line 111
    add-int/2addr v1, v0

    .line 112
    return v1
.end method
