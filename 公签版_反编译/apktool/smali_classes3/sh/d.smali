.class public final Lsh/d;
.super Lvh/b;
.source "SourceFile"

# interfaces
.implements Lwh/j;
.implements Lwh/l;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lsh/d;


# instance fields
.field public final a:J

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lsh/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    invoke-direct {v0, v2, v3, v1}, Lsh/d;-><init>(JI)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lsh/d;->c:Lsh/d;

    .line 10
    .line 11
    const-wide v0, -0x701cefeb9bec00L

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Lsh/d;->n(JJ)Lsh/d;

    .line 17
    .line 18
    .line 19
    const-wide v0, 0x701cd2fa9578ffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide/32 v2, 0x3b9ac9ff

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Lsh/d;->n(JJ)Lsh/d;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvh/b;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lsh/d;->a:J

    .line 5
    .line 6
    iput p3, p0, Lsh/d;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public static m(IJ)Lsh/d;
    .locals 5

    .line 1
    int-to-long v0, p0

    .line 2
    or-long/2addr v0, p1

    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    sget-object p0, Lsh/d;->c:Lsh/d;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-wide v0, -0x701cefeb9bec00L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    cmp-long v2, p1, v0

    .line 18
    .line 19
    if-ltz v2, :cond_1

    .line 20
    .line 21
    const-wide v0, 0x701cd2fa9578ffL

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    cmp-long v2, p1, v0

    .line 27
    .line 28
    if-gtz v2, :cond_1

    .line 29
    .line 30
    new-instance v0, Lsh/d;

    .line 31
    .line 32
    invoke-direct {v0, p1, p2, p0}, Lsh/d;-><init>(JI)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    new-instance p0, Lsh/a;

    .line 37
    .line 38
    const-string p1, "Instant exceeds minimum or maximum instant"

    .line 39
    .line 40
    invoke-direct {p0, p1}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public static n(JJ)Lsh/d;
    .locals 2

    .line 1
    const-wide/32 v0, 0x3b9aca00

    .line 2
    .line 3
    .line 4
    invoke-static {p2, p3, v0, v1}, Lif/a;->C(JJ)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-static {p0, p1, v0, v1}, Lif/a;->u0(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide p0

    .line 12
    const v0, 0x3b9aca00

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p2, p3}, Lif/a;->D(IJ)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-static {p2, p0, p1}, Lsh/d;->m(IJ)Lsh/d;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InvalidObjectException;

    .line 2
    .line 3
    const-string v1, "Deserialization via serialization delegate"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lsh/l;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1, p0}, Lsh/l;-><init>(BLjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final a(JLwh/m;)Lwh/j;
    .locals 5

    .line 1
    instance-of v0, p3, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lwh/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lwh/a;->h(J)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Lsh/d;->b:I

    .line 16
    .line 17
    iget-wide v2, p0, Lsh/d;->a:J

    .line 18
    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-eq v0, v4, :cond_3

    .line 23
    .line 24
    const/4 v4, 0x4

    .line 25
    if-eq v0, v4, :cond_2

    .line 26
    .line 27
    const/16 v4, 0x1c

    .line 28
    .line 29
    if-ne v0, v4, :cond_1

    .line 30
    .line 31
    cmp-long p3, p1, v2

    .line 32
    .line 33
    if-eqz p3, :cond_0

    .line 34
    .line 35
    invoke-static {v1, p1, p2}, Lsh/d;->m(IJ)Lsh/d;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object p1, p0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance p1, Lwh/q;

    .line 43
    .line 44
    const-string p2, "Unsupported field: "

    .line 45
    .line 46
    invoke-static {p2, p3}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p2}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    long-to-int p2, p1

    .line 55
    const p1, 0xf4240

    .line 56
    .line 57
    .line 58
    mul-int p2, p2, p1

    .line 59
    .line 60
    if-eq p2, v1, :cond_0

    .line 61
    .line 62
    invoke-static {p2, v2, v3}, Lsh/d;->m(IJ)Lsh/d;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    long-to-int p2, p1

    .line 68
    mul-int/lit16 p2, p2, 0x3e8

    .line 69
    .line 70
    if-eq p2, v1, :cond_0

    .line 71
    .line 72
    invoke-static {p2, v2, v3}, Lsh/d;->m(IJ)Lsh/d;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    int-to-long v0, v1

    .line 78
    cmp-long p3, p1, v0

    .line 79
    .line 80
    if-eqz p3, :cond_0

    .line 81
    .line 82
    long-to-int p2, p1

    .line 83
    invoke-static {p2, v2, v3}, Lsh/d;->m(IJ)Lsh/d;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_0

    .line 88
    :cond_5
    invoke-interface {p3, p0, p1, p2}, Lwh/m;->g(Lwh/j;J)Lwh/j;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lsh/d;

    .line 93
    .line 94
    :goto_0
    return-object p1
.end method

.method public final b(Lwh/m;)J
    .locals 3

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lwh/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lsh/d;->b:I

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v0, v2, :cond_2

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    const/16 v1, 0x1c

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    iget-wide v0, p0, Lsh/d;->a:J

    .line 27
    .line 28
    return-wide v0

    .line 29
    :cond_0
    new-instance v0, Lwh/q;

    .line 30
    .line 31
    const-string v1, "Unsupported field: "

    .line 32
    .line 33
    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    const p1, 0xf4240

    .line 42
    .line 43
    .line 44
    div-int/2addr v1, p1

    .line 45
    :goto_0
    int-to-long v0, v1

    .line 46
    return-wide v0

    .line 47
    :cond_2
    div-int/lit16 v1, v1, 0x3e8

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    int-to-long v0, v1

    .line 51
    return-wide v0

    .line 52
    :cond_4
    invoke-interface {p1, p0}, Lwh/m;->a(Lwh/k;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    return-wide v0
.end method

.method public final c(Lwh/o;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lwh/n;->c:Ls9/a;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lwh/b;->b:Lwh/b;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object v0, Lwh/n;->f:Ls5/c;

    .line 9
    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    .line 12
    sget-object v0, Lwh/n;->g:Ls9/a;

    .line 13
    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    sget-object v0, Lwh/n;->b:Ls5/c;

    .line 17
    .line 18
    if-eq p1, v0, :cond_2

    .line 19
    .line 20
    sget-object v0, Lwh/n;->a:Ls9/a;

    .line 21
    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    sget-object v0, Lwh/n;->d:Ls5/c;

    .line 25
    .line 26
    if-eq p1, v0, :cond_2

    .line 27
    .line 28
    sget-object v0, Lwh/n;->e:Ls9/a;

    .line 29
    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {p1, p0}, Lwh/o;->b(Lwh/k;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lsh/d;

    .line 2
    .line 3
    iget-wide v0, p1, Lsh/d;->a:J

    .line 4
    .line 5
    iget-wide v2, p0, Lsh/d;->a:J

    .line 6
    .line 7
    invoke-static {v2, v3, v0, v1}, Lif/a;->m(JJ)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Lsh/d;->b:I

    .line 15
    .line 16
    iget p1, p1, Lsh/d;->b:I

    .line 17
    .line 18
    sub-int/2addr v0, p1

    .line 19
    :goto_0
    return v0
.end method

.method public final d(Lwh/m;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    sget-object v0, Lwh/a;->F:Lwh/a;

    .line 8
    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lwh/a;->c:Lwh/a;

    .line 12
    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lwh/a;->e:Lwh/a;

    .line 16
    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lwh/a;->g:Lwh/a;

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :cond_1
    :goto_0
    return v1

    .line 26
    :cond_2
    if-eqz p1, :cond_3

    .line 27
    .line 28
    invoke-interface {p1, p0}, Lwh/m;->f(Lwh/k;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    const/4 v1, 0x0

    .line 36
    :goto_1
    return v1
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
    instance-of v1, p1, Lsh/d;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lsh/d;

    .line 11
    .line 12
    iget-wide v3, p1, Lsh/d;->a:J

    .line 13
    .line 14
    iget-wide v5, p0, Lsh/d;->a:J

    .line 15
    .line 16
    cmp-long v1, v5, v3

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget v1, p0, Lsh/d;->b:I

    .line 21
    .line 22
    iget p1, p1, Lsh/d;->b:I

    .line 23
    .line 24
    if-ne v1, p1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    .line 29
    :cond_2
    return v2
.end method

.method public final g(Lwh/j;)Lwh/j;
    .locals 3

    .line 1
    sget-object v0, Lwh/a;->F:Lwh/a;

    .line 2
    .line 3
    iget-wide v1, p0, Lsh/d;->a:J

    .line 4
    .line 5
    invoke-interface {p1, v1, v2, v0}, Lwh/j;->a(JLwh/m;)Lwh/j;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lwh/a;->c:Lwh/a;

    .line 10
    .line 11
    iget v1, p0, Lsh/d;->b:I

    .line 12
    .line 13
    int-to-long v1, v1

    .line 14
    invoke-interface {p1, v1, v2, v0}, Lwh/j;->a(JLwh/m;)Lwh/j;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final h(Lsh/e;)Lwh/j;
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lsh/e;->g(Lwh/j;)Lwh/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lsh/d;

    .line 6
    .line 7
    return-object p1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    iget-wide v1, p0, Lsh/d;->a:J

    .line 4
    .line 5
    ushr-long v3, v1, v0

    .line 6
    .line 7
    xor-long/2addr v1, v3

    .line 8
    long-to-int v0, v1

    .line 9
    iget v1, p0, Lsh/d;->b:I

    .line 10
    .line 11
    mul-int/lit8 v1, v1, 0x33

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    return v1
.end method

.method public final i(Lwh/m;)I
    .locals 3

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lwh/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lsh/d;->b:I

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    if-ne v0, v2, :cond_0

    .line 21
    .line 22
    const p1, 0xf4240

    .line 23
    .line 24
    .line 25
    div-int/2addr v1, p1

    .line 26
    return v1

    .line 27
    :cond_0
    new-instance v0, Lwh/q;

    .line 28
    .line 29
    const-string v1, "Unsupported field: "

    .line 30
    .line 31
    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p1}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    div-int/lit16 v1, v1, 0x3e8

    .line 40
    .line 41
    :cond_2
    return v1

    .line 42
    :cond_3
    invoke-super {p0, p1}, Lvh/b;->f(Lwh/m;)Lwh/r;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p1, p0}, Lwh/m;->a(Lwh/k;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    invoke-virtual {v0, v1, v2, p1}, Lwh/r;->a(JLwh/m;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1
.end method

.method public final bridge synthetic j(JLwh/b;)Lwh/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsh/d;->p(JLwh/b;)Lsh/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final l(JLwh/b;)Lwh/j;
    .locals 3

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const-wide p1, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lsh/d;->p(JLwh/b;)Lsh/d;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-wide/16 v0, 0x1

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1, p3}, Lsh/d;->p(JLwh/b;)Lsh/d;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    neg-long p1, p1

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lsh/d;->p(JLwh/b;)Lsh/d;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public final o(JJ)Lsh/d;
    .locals 5

    .line 1
    or-long v0, p1, p3

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-wide v0, p0, Lsh/d;->a:J

    .line 11
    .line 12
    invoke-static {v0, v1, p1, p2}, Lif/a;->u0(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    const-wide/32 v0, 0x3b9aca00

    .line 17
    .line 18
    .line 19
    div-long v2, p3, v0

    .line 20
    .line 21
    invoke-static {p1, p2, v2, v3}, Lif/a;->u0(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    rem-long/2addr p3, v0

    .line 26
    iget v0, p0, Lsh/d;->b:I

    .line 27
    .line 28
    int-to-long v0, v0

    .line 29
    add-long/2addr v0, p3

    .line 30
    invoke-static {p1, p2, v0, v1}, Lsh/d;->n(JJ)Lsh/d;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public final p(JLwh/b;)Lsh/d;
    .locals 7

    .line 1
    instance-of v0, p3, Lwh/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-wide/16 v1, 0x3e8

    .line 10
    .line 11
    const-wide/32 v3, 0xf4240

    .line 12
    .line 13
    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    new-instance p1, Lwh/q;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "Unsupported unit: "

    .line 24
    .line 25
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-direct {p1, p2}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :pswitch_0
    const p3, 0x15180

    .line 40
    .line 41
    .line 42
    invoke-static {p3, p1, p2}, Lif/a;->v0(IJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    invoke-virtual {p0, p1, p2, v5, v6}, Lsh/d;->o(JJ)Lsh/d;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    :pswitch_1
    const p3, 0xa8c0

    .line 52
    .line 53
    .line 54
    invoke-static {p3, p1, p2}, Lif/a;->v0(IJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide p1

    .line 58
    invoke-virtual {p0, p1, p2, v5, v6}, Lsh/d;->o(JJ)Lsh/d;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :pswitch_2
    const/16 p3, 0xe10

    .line 64
    .line 65
    invoke-static {p3, p1, p2}, Lif/a;->v0(IJ)J

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    invoke-virtual {p0, p1, p2, v5, v6}, Lsh/d;->o(JJ)Lsh/d;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :pswitch_3
    const/16 p3, 0x3c

    .line 75
    .line 76
    invoke-static {p3, p1, p2}, Lif/a;->v0(IJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide p1

    .line 80
    invoke-virtual {p0, p1, p2, v5, v6}, Lsh/d;->o(JJ)Lsh/d;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :pswitch_4
    invoke-virtual {p0, p1, p2, v5, v6}, Lsh/d;->o(JJ)Lsh/d;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    :pswitch_5
    div-long v5, p1, v1

    .line 91
    .line 92
    rem-long/2addr p1, v1

    .line 93
    mul-long p1, p1, v3

    .line 94
    .line 95
    invoke-virtual {p0, v5, v6, p1, p2}, Lsh/d;->o(JJ)Lsh/d;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :pswitch_6
    div-long v5, p1, v3

    .line 101
    .line 102
    rem-long/2addr p1, v3

    .line 103
    mul-long p1, p1, v1

    .line 104
    .line 105
    invoke-virtual {p0, v5, v6, p1, p2}, Lsh/d;->o(JJ)Lsh/d;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    return-object p1

    .line 110
    :pswitch_7
    invoke-virtual {p0, v5, v6, p1, p2}, Lsh/d;->o(JJ)Lsh/d;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p1, p2, p3}, Lsh/d;->j(JLwh/b;)Lwh/j;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    check-cast p1, Lsh/d;

    .line 123
    .line 124
    return-object p1

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Luh/a;->f:Luh/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const/16 v2, 0x20

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v2, Landroidx/room/s;

    .line 14
    .line 15
    invoke-direct {v2, p0, v0}, Landroidx/room/s;-><init>(Lsh/d;Luh/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Luh/a;->a:Luh/d;

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {v0, v2, v1}, Luh/d;->a(Landroidx/room/s;Ljava/lang/StringBuilder;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    new-instance v1, Lsh/a;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-direct {v1, v2, v0}, Lsh/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 36
    .line 37
    .line 38
    throw v1
.end method
