.class public final Lsh/e;
.super Lth/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lsh/e;

.field public static final e:Lsh/e;


# instance fields
.field public final a:I

.field public final b:S

.field public final c:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const v0, -0x3b9ac9ff

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1, v1}, Lsh/e;->v(III)Lsh/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lsh/e;->d:Lsh/e;

    .line 10
    .line 11
    const/16 v0, 0xc

    .line 12
    .line 13
    const/16 v1, 0x1f

    .line 14
    .line 15
    const v2, 0x3b9ac9ff

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Lsh/e;->v(III)Lsh/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lsh/e;->e:Lsh/e;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lth/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lsh/e;->a:I

    .line 5
    .line 6
    int-to-short p1, p2

    .line 7
    iput-short p1, p0, Lsh/e;->b:S

    .line 8
    .line 9
    int-to-short p1, p3

    .line 10
    iput-short p1, p0, Lsh/e;->c:S

    .line 11
    .line 12
    return-void
.end method

.method public static B(III)Lsh/e;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x6

    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x9

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0xb

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/16 v0, 0x1e

    .line 20
    .line 21
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    sget-object v0, Lth/e;->a:Lth/e;

    .line 27
    .line 28
    int-to-long v1, p0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Lth/e;->b(J)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/16 v0, 0x1d

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/16 v0, 0x1c

    .line 42
    .line 43
    :goto_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    :goto_1
    invoke-static {p0, p1, p2}, Lsh/e;->v(III)Lsh/e;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public static p(ILsh/h;I)Lsh/e;
    .locals 3

    .line 1
    const/16 v0, 0x1c

    .line 2
    .line 3
    if-le p2, v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lth/e;->a:Lth/e;

    .line 6
    .line 7
    int-to-long v1, p0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lth/e;->b(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Lsh/h;->o(Z)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-le p2, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x1d

    .line 22
    .line 23
    if-ne p2, v0, :cond_0

    .line 24
    .line 25
    new-instance p1, Lsh/a;

    .line 26
    .line 27
    const-string p2, "Invalid date \'February 29\' as \'"

    .line 28
    .line 29
    const-string v0, "\' is not a leap year"

    .line 30
    .line 31
    invoke-static {p2, p0, v0}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {p1, p0}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_0
    new-instance p0, Lsh/a;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "Invalid date \'"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p1, " "

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p1, "\'"

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_1
    new-instance v0, Lsh/e;

    .line 77
    .line 78
    invoke-virtual {p1}, Lsh/h;->n()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-direct {v0, p0, p1, p2}, Lsh/e;-><init>(III)V

    .line 83
    .line 84
    .line 85
    return-object v0
.end method

.method public static q(Lwh/k;)Lsh/e;
    .locals 3

    .line 1
    sget-object v0, Lwh/n;->f:Ls5/c;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lwh/k;->c(Lwh/o;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lsh/e;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lsh/a;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Unable to obtain LocalDate from TemporalAccessor: "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", type "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {v0, p0}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
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

.method public static v(III)Lsh/e;
    .locals 3

    .line 1
    sget-object v0, Lwh/a;->D:Lwh/a;

    .line 2
    .line 3
    int-to-long v1, p0

    .line 4
    invoke-virtual {v0, v1, v2}, Lwh/a;->h(J)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lwh/a;->A:Lwh/a;

    .line 8
    .line 9
    int-to-long v1, p1

    .line 10
    invoke-virtual {v0, v1, v2}, Lwh/a;->h(J)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lwh/a;->v:Lwh/a;

    .line 14
    .line 15
    int-to-long v1, p2

    .line 16
    invoke-virtual {v0, v1, v2}, Lwh/a;->h(J)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Lsh/h;->q(I)Lsh/h;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p0, p1, p2}, Lsh/e;->p(ILsh/h;I)Lsh/e;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static w(J)Lsh/e;
    .locals 22

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    sget-object v2, Lwh/a;->x:Lwh/a;

    .line 4
    .line 5
    invoke-virtual {v2, v0, v1}, Lwh/a;->h(J)V

    .line 6
    .line 7
    .line 8
    const-wide/32 v2, 0xafa6c

    .line 9
    .line 10
    .line 11
    add-long/2addr v2, v0

    .line 12
    const-wide/16 v4, 0x1

    .line 13
    .line 14
    const-wide/32 v6, 0x23ab1

    .line 15
    .line 16
    .line 17
    const-wide/16 v8, 0x190

    .line 18
    .line 19
    const-wide/16 v10, 0x0

    .line 20
    .line 21
    cmp-long v12, v2, v10

    .line 22
    .line 23
    if-gez v12, :cond_0

    .line 24
    .line 25
    const-wide/32 v12, 0xafa6d

    .line 26
    .line 27
    .line 28
    add-long/2addr v0, v12

    .line 29
    div-long/2addr v0, v6

    .line 30
    sub-long/2addr v0, v4

    .line 31
    mul-long v12, v0, v8

    .line 32
    .line 33
    neg-long v0, v0

    .line 34
    mul-long v0, v0, v6

    .line 35
    .line 36
    add-long/2addr v2, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-wide v12, v10

    .line 39
    :goto_0
    mul-long v0, v2, v8

    .line 40
    .line 41
    const-wide/16 v14, 0x24f

    .line 42
    .line 43
    add-long/2addr v0, v14

    .line 44
    div-long/2addr v0, v6

    .line 45
    const-wide/16 v6, 0x16d

    .line 46
    .line 47
    mul-long v14, v0, v6

    .line 48
    .line 49
    const-wide/16 v16, 0x4

    .line 50
    .line 51
    div-long v18, v0, v16

    .line 52
    .line 53
    add-long v18, v18, v14

    .line 54
    .line 55
    const-wide/16 v14, 0x64

    .line 56
    .line 57
    div-long v20, v0, v14

    .line 58
    .line 59
    sub-long v18, v18, v20

    .line 60
    .line 61
    div-long v20, v0, v8

    .line 62
    .line 63
    add-long v20, v20, v18

    .line 64
    .line 65
    sub-long v18, v2, v20

    .line 66
    .line 67
    cmp-long v20, v18, v10

    .line 68
    .line 69
    if-gez v20, :cond_1

    .line 70
    .line 71
    sub-long/2addr v0, v4

    .line 72
    mul-long v6, v6, v0

    .line 73
    .line 74
    div-long v4, v0, v16

    .line 75
    .line 76
    add-long/2addr v4, v6

    .line 77
    div-long v6, v0, v14

    .line 78
    .line 79
    sub-long/2addr v4, v6

    .line 80
    div-long v6, v0, v8

    .line 81
    .line 82
    add-long/2addr v6, v4

    .line 83
    sub-long v18, v2, v6

    .line 84
    .line 85
    :cond_1
    move-wide/from16 v2, v18

    .line 86
    .line 87
    add-long/2addr v0, v12

    .line 88
    long-to-int v3, v2

    .line 89
    mul-int/lit8 v2, v3, 0x5

    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x2

    .line 92
    .line 93
    div-int/lit16 v2, v2, 0x99

    .line 94
    .line 95
    add-int/lit8 v4, v2, 0x2

    .line 96
    .line 97
    rem-int/lit8 v4, v4, 0xc

    .line 98
    .line 99
    add-int/lit8 v4, v4, 0x1

    .line 100
    .line 101
    mul-int/lit16 v5, v2, 0x132

    .line 102
    .line 103
    add-int/lit8 v5, v5, 0x5

    .line 104
    .line 105
    div-int/lit8 v5, v5, 0xa

    .line 106
    .line 107
    sub-int/2addr v3, v5

    .line 108
    add-int/lit8 v3, v3, 0x1

    .line 109
    .line 110
    div-int/lit8 v2, v2, 0xa

    .line 111
    .line 112
    int-to-long v5, v2

    .line 113
    add-long/2addr v0, v5

    .line 114
    sget-object v2, Lwh/a;->D:Lwh/a;

    .line 115
    .line 116
    iget-object v5, v2, Lwh/a;->b:Lwh/r;

    .line 117
    .line 118
    invoke-virtual {v5, v0, v1, v2}, Lwh/r;->a(JLwh/m;)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    new-instance v1, Lsh/e;

    .line 123
    .line 124
    invoke-direct {v1, v0, v4, v3}, Lsh/e;-><init>(III)V

    .line 125
    .line 126
    .line 127
    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lsh/l;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1, p0}, Lsh/l;-><init>(BLjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final A(J)Lsh/e;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lwh/a;->D:Lwh/a;

    .line 9
    .line 10
    iget v1, p0, Lsh/e;->a:I

    .line 11
    .line 12
    int-to-long v1, v1

    .line 13
    add-long/2addr v1, p1

    .line 14
    iget-object p1, v0, Lwh/a;->b:Lwh/r;

    .line 15
    .line 16
    invoke-virtual {p1, v1, v2, v0}, Lwh/r;->a(JLwh/m;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-short p2, p0, Lsh/e;->b:S

    .line 21
    .line 22
    iget-short v0, p0, Lsh/e;->c:S

    .line 23
    .line 24
    invoke-static {p1, p2, v0}, Lsh/e;->B(III)Lsh/e;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public final C(JLwh/m;)Lsh/e;
    .locals 6

    .line 1
    instance-of v0, p3, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_4

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
    const/4 v1, 0x7

    .line 16
    iget-short v2, p0, Lsh/e;->c:S

    .line 17
    .line 18
    iget-short v3, p0, Lsh/e;->b:S

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    iget v5, p0, Lsh/e;->a:I

    .line 22
    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    new-instance p1, Lwh/q;

    .line 27
    .line 28
    const-string p2, "Unsupported field: "

    .line 29
    .line 30
    invoke-static {p2, p3}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {p1, p2}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :pswitch_0
    sget-object p3, Lwh/a;->E:Lwh/a;

    .line 39
    .line 40
    invoke-virtual {p0, p3}, Lsh/e;->b(Lwh/m;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    cmp-long p3, v0, p1

    .line 45
    .line 46
    if-nez p3, :cond_0

    .line 47
    .line 48
    move-object p1, p0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sub-int/2addr v4, v5

    .line 51
    invoke-virtual {p0, v4}, Lsh/e;->F(I)Lsh/e;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :goto_0
    return-object p1

    .line 56
    :pswitch_1
    long-to-int p2, p1

    .line 57
    invoke-virtual {p0, p2}, Lsh/e;->F(I)Lsh/e;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :pswitch_2
    if-lt v5, v4, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const-wide/16 v0, 0x1

    .line 66
    .line 67
    sub-long p1, v0, p1

    .line 68
    .line 69
    :goto_1
    long-to-int p2, p1

    .line 70
    invoke-virtual {p0, p2}, Lsh/e;->F(I)Lsh/e;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :pswitch_3
    sget-object p3, Lwh/a;->B:Lwh/a;

    .line 76
    .line 77
    invoke-virtual {p0, p3}, Lsh/e;->b(Lwh/m;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    sub-long/2addr p1, v0

    .line 82
    invoke-virtual {p0, p1, p2}, Lsh/e;->z(J)Lsh/e;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :pswitch_4
    long-to-int p2, p1

    .line 88
    if-ne v3, p2, :cond_2

    .line 89
    .line 90
    move-object p1, p0

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    sget-object p1, Lwh/a;->A:Lwh/a;

    .line 93
    .line 94
    int-to-long v0, p2

    .line 95
    invoke-virtual {p1, v0, v1}, Lwh/a;->h(J)V

    .line 96
    .line 97
    .line 98
    invoke-static {v5, p2, v2}, Lsh/e;->B(III)Lsh/e;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_2
    return-object p1

    .line 103
    :pswitch_5
    sget-object p3, Lwh/a;->z:Lwh/a;

    .line 104
    .line 105
    invoke-virtual {p0, p3}, Lsh/e;->b(Lwh/m;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v2

    .line 109
    sub-long/2addr p1, v2

    .line 110
    invoke-static {v1, p1, p2}, Lif/a;->v0(IJ)J

    .line 111
    .line 112
    .line 113
    move-result-wide p1

    .line 114
    invoke-virtual {p0, p1, p2}, Lsh/e;->y(J)Lsh/e;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :pswitch_6
    sget-object p3, Lwh/a;->y:Lwh/a;

    .line 120
    .line 121
    invoke-virtual {p0, p3}, Lsh/e;->b(Lwh/m;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v2

    .line 125
    sub-long/2addr p1, v2

    .line 126
    invoke-static {v1, p1, p2}, Lif/a;->v0(IJ)J

    .line 127
    .line 128
    .line 129
    move-result-wide p1

    .line 130
    invoke-virtual {p0, p1, p2}, Lsh/e;->y(J)Lsh/e;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    return-object p1

    .line 135
    :pswitch_7
    invoke-static {p1, p2}, Lsh/e;->w(J)Lsh/e;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    return-object p1

    .line 140
    :pswitch_8
    long-to-int p2, p1

    .line 141
    invoke-virtual {p0, p2}, Lsh/e;->E(I)Lsh/e;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    return-object p1

    .line 146
    :pswitch_9
    long-to-int p2, p1

    .line 147
    if-ne v2, p2, :cond_3

    .line 148
    .line 149
    move-object p1, p0

    .line 150
    goto :goto_3

    .line 151
    :cond_3
    invoke-static {v5, v3, p2}, Lsh/e;->v(III)Lsh/e;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    :goto_3
    return-object p1

    .line 156
    :pswitch_a
    sget-object p3, Lwh/a;->t:Lwh/a;

    .line 157
    .line 158
    invoke-virtual {p0, p3}, Lsh/e;->b(Lwh/m;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v0

    .line 162
    sub-long/2addr p1, v0

    .line 163
    invoke-virtual {p0, p1, p2}, Lsh/e;->y(J)Lsh/e;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    return-object p1

    .line 168
    :pswitch_b
    sget-object p3, Lwh/a;->s:Lwh/a;

    .line 169
    .line 170
    invoke-virtual {p0, p3}, Lsh/e;->b(Lwh/m;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v0

    .line 174
    sub-long/2addr p1, v0

    .line 175
    invoke-virtual {p0, p1, p2}, Lsh/e;->y(J)Lsh/e;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    return-object p1

    .line 180
    :pswitch_c
    invoke-virtual {p0}, Lsh/e;->s()Lsh/b;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    invoke-virtual {p3}, Lsh/b;->m()I

    .line 185
    .line 186
    .line 187
    move-result p3

    .line 188
    int-to-long v0, p3

    .line 189
    sub-long/2addr p1, v0

    .line 190
    invoke-virtual {p0, p1, p2}, Lsh/e;->y(J)Lsh/e;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    return-object p1

    .line 195
    :cond_4
    invoke-interface {p3, p0, p1, p2}, Lwh/m;->g(Lwh/j;J)Lwh/j;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    check-cast p1, Lsh/e;

    .line 200
    .line 201
    return-object p1

    .line 202
    nop

    .line 203
    :pswitch_data_0
    .packed-switch 0xf
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
        :pswitch_0
    .end packed-switch
.end method

.method public final D(Lwh/l;)Lsh/e;
    .locals 1

    .line 1
    instance-of v0, p1, Lsh/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lsh/e;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-interface {p1, p0}, Lwh/l;->g(Lwh/j;)Lwh/j;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lsh/e;

    .line 13
    .line 14
    return-object p1
.end method

.method public final E(I)Lsh/e;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lsh/e;->t()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lwh/a;->D:Lwh/a;

    .line 9
    .line 10
    iget v1, p0, Lsh/e;->a:I

    .line 11
    .line 12
    int-to-long v2, v1

    .line 13
    invoke-virtual {v0, v2, v3}, Lwh/a;->h(J)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lwh/a;->w:Lwh/a;

    .line 17
    .line 18
    int-to-long v4, p1

    .line 19
    invoke-virtual {v0, v4, v5}, Lwh/a;->h(J)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lth/e;->a:Lth/e;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3}, Lth/e;->b(J)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v2, 0x16e

    .line 32
    .line 33
    if-ne p1, v2, :cond_2

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance p1, Lsh/a;

    .line 39
    .line 40
    const-string v0, "Invalid date \'DayOfYear 366\' as \'"

    .line 41
    .line 42
    const-string v2, "\' is not a leap year"

    .line 43
    .line 44
    invoke-static {v0, v1, v2}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {p1, v0}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_2
    :goto_0
    add-int/lit8 v2, p1, -0x1

    .line 53
    .line 54
    div-int/lit8 v2, v2, 0x1f

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    invoke-static {v2}, Lsh/h;->q(I)Lsh/h;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2, v0}, Lsh/h;->m(Z)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {v2, v0}, Lsh/h;->o(Z)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    add-int/2addr v4, v3

    .line 71
    add-int/lit8 v4, v4, -0x1

    .line 72
    .line 73
    if-le p1, v4, :cond_3

    .line 74
    .line 75
    const-wide/16 v3, 0x1

    .line 76
    .line 77
    long-to-int v4, v3

    .line 78
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    add-int/lit8 v4, v4, 0xc

    .line 83
    .line 84
    add-int/2addr v4, v2

    .line 85
    rem-int/lit8 v4, v4, 0xc

    .line 86
    .line 87
    sget-object v2, Lsh/h;->b:[Lsh/h;

    .line 88
    .line 89
    aget-object v2, v2, v4

    .line 90
    .line 91
    :cond_3
    invoke-virtual {v2, v0}, Lsh/h;->m(Z)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    sub-int/2addr p1, v0

    .line 96
    add-int/lit8 p1, p1, 0x1

    .line 97
    .line 98
    invoke-static {v1, v2, p1}, Lsh/e;->p(ILsh/h;I)Lsh/e;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1
.end method

.method public final F(I)Lsh/e;
    .locals 3

    .line 1
    iget v0, p0, Lsh/e;->a:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lwh/a;->D:Lwh/a;

    .line 7
    .line 8
    int-to-long v1, p1

    .line 9
    invoke-virtual {v0, v1, v2}, Lwh/a;->h(J)V

    .line 10
    .line 11
    .line 12
    iget-short v0, p0, Lsh/e;->b:S

    .line 13
    .line 14
    iget-short v1, p0, Lsh/e;->c:S

    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lsh/e;->B(III)Lsh/e;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final bridge synthetic a(JLwh/m;)Lwh/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsh/e;->C(JLwh/m;)Lsh/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final b(Lwh/m;)J
    .locals 4

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lwh/a;->x:Lwh/a;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lsh/e;->m()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    sget-object v0, Lwh/a;->B:Lwh/a;

    .line 15
    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    iget p1, p0, Lsh/e;->a:I

    .line 19
    .line 20
    int-to-long v0, p1

    .line 21
    const-wide/16 v2, 0xc

    .line 22
    .line 23
    mul-long v0, v0, v2

    .line 24
    .line 25
    iget-short p1, p0, Lsh/e;->b:S

    .line 26
    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    int-to-long v2, p1

    .line 30
    add-long/2addr v0, v2

    .line 31
    return-wide v0

    .line 32
    :cond_1
    invoke-virtual {p0, p1}, Lsh/e;->r(Lwh/m;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    int-to-long v0, p1

    .line 37
    return-wide v0

    .line 38
    :cond_2
    invoke-interface {p1, p0}, Lwh/m;->a(Lwh/k;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    return-wide v0
.end method

.method public final c(Lwh/o;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lwh/n;->f:Ls5/c;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lth/a;->c(Lwh/o;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lth/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lsh/e;->n(Lth/a;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final d(Lwh/m;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lwh/a;

    .line 6
    .line 7
    invoke-virtual {p1}, Lwh/a;->b()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {p1, p0}, Lwh/m;->f(Lwh/k;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_0
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lsh/e;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lsh/e;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lsh/e;->o(Lsh/e;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    .line 21
    :cond_2
    return v2
.end method

.method public final f(Lwh/m;)Lwh/r;
    .locals 5

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lwh/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lwh/a;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_a

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x12

    .line 19
    .line 20
    iget-short v2, p0, Lsh/e;->b:S

    .line 21
    .line 22
    const-wide/16 v3, 0x1

    .line 23
    .line 24
    if-eq v0, v1, :cond_6

    .line 25
    .line 26
    const/16 v1, 0x13

    .line 27
    .line 28
    if-eq v0, v1, :cond_4

    .line 29
    .line 30
    const/16 v1, 0x15

    .line 31
    .line 32
    if-eq v0, v1, :cond_2

    .line 33
    .line 34
    const/16 v1, 0x19

    .line 35
    .line 36
    if-eq v0, v1, :cond_0

    .line 37
    .line 38
    check-cast p1, Lwh/a;

    .line 39
    .line 40
    iget-object p1, p1, Lwh/a;->b:Lwh/r;

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_0
    iget p1, p0, Lsh/e;->a:I

    .line 44
    .line 45
    if-gtz p1, :cond_1

    .line 46
    .line 47
    const-wide/32 v0, 0x3b9aca00

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-static {v3, v4, v0, v1}, Lwh/r;->c(JJ)Lwh/r;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const-wide/32 v0, 0x3b9ac9ff

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    return-object p1

    .line 60
    :cond_2
    invoke-static {v2}, Lsh/h;->q(I)Lsh/h;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-object v0, Lsh/h;->a:Lsh/h;

    .line 65
    .line 66
    if-ne p1, v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, Lsh/e;->u()Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_3

    .line 73
    .line 74
    const-wide/16 v0, 0x4

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    const-wide/16 v0, 0x5

    .line 78
    .line 79
    :goto_2
    invoke-static {v3, v4, v0, v1}, Lwh/r;->c(JJ)Lwh/r;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_4
    invoke-virtual {p0}, Lsh/e;->u()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    const/16 p1, 0x16e

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    const/16 p1, 0x16d

    .line 94
    .line 95
    :goto_3
    int-to-long v0, p1

    .line 96
    invoke-static {v3, v4, v0, v1}, Lwh/r;->c(JJ)Lwh/r;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    :cond_6
    const/4 p1, 0x2

    .line 102
    if-eq v2, p1, :cond_8

    .line 103
    .line 104
    const/4 p1, 0x4

    .line 105
    if-eq v2, p1, :cond_7

    .line 106
    .line 107
    const/4 p1, 0x6

    .line 108
    if-eq v2, p1, :cond_7

    .line 109
    .line 110
    const/16 p1, 0x9

    .line 111
    .line 112
    if-eq v2, p1, :cond_7

    .line 113
    .line 114
    const/16 p1, 0xb

    .line 115
    .line 116
    if-eq v2, p1, :cond_7

    .line 117
    .line 118
    const/16 p1, 0x1f

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_7
    const/16 p1, 0x1e

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_8
    invoke-virtual {p0}, Lsh/e;->u()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_9

    .line 129
    .line 130
    const/16 p1, 0x1d

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_9
    const/16 p1, 0x1c

    .line 134
    .line 135
    :goto_4
    int-to-long v0, p1

    .line 136
    invoke-static {v3, v4, v0, v1}, Lwh/r;->c(JJ)Lwh/r;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    return-object p1

    .line 141
    :cond_a
    new-instance v0, Lwh/q;

    .line 142
    .line 143
    const-string v1, "Unsupported field: "

    .line 144
    .line 145
    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-direct {v0, p1}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :cond_b
    invoke-interface {p1, p0}, Lwh/m;->c(Lwh/k;)Lwh/r;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    return-object p1
.end method

.method public final g(Lwh/j;)Lwh/j;
    .locals 3

    .line 1
    sget-object v0, Lwh/a;->x:Lwh/a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lsh/e;->m()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-interface {p1, v1, v2, v0}, Lwh/j;->a(JLwh/m;)Lwh/j;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final bridge synthetic h(Lsh/e;)Lwh/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsh/e;->D(Lwh/l;)Lsh/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lsh/e;->a:I

    .line 2
    .line 3
    and-int/lit16 v1, v0, -0x800

    .line 4
    .line 5
    shl-int/lit8 v0, v0, 0xb

    .line 6
    .line 7
    iget-short v2, p0, Lsh/e;->b:S

    .line 8
    .line 9
    shl-int/lit8 v2, v2, 0x6

    .line 10
    .line 11
    add-int/2addr v0, v2

    .line 12
    iget-short v2, p0, Lsh/e;->c:S

    .line 13
    .line 14
    add-int/2addr v0, v2

    .line 15
    xor-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public final i(Lwh/m;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lwh/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lsh/e;->r(Lwh/m;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lvh/b;->i(Lwh/m;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final bridge synthetic j(JLwh/b;)Lwh/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsh/e;->x(JLwh/b;)Lsh/e;

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
    invoke-virtual {p0, p1, p2, p3}, Lsh/e;->x(JLwh/b;)Lsh/e;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-wide/16 v0, 0x1

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1, p3}, Lsh/e;->x(JLwh/b;)Lsh/e;

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
    invoke-virtual {p0, p1, p2, p3}, Lsh/e;->x(JLwh/b;)Lsh/e;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    return-object p1
.end method

.method public final m()J
    .locals 12

    .line 1
    iget v0, p0, Lsh/e;->a:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    iget-short v2, p0, Lsh/e;->b:S

    .line 5
    .line 6
    int-to-long v2, v2

    .line 7
    const-wide/16 v4, 0x16d

    .line 8
    .line 9
    mul-long v4, v4, v0

    .line 10
    .line 11
    const-wide/16 v6, 0x0

    .line 12
    .line 13
    cmp-long v8, v0, v6

    .line 14
    .line 15
    if-ltz v8, :cond_0

    .line 16
    .line 17
    const-wide/16 v6, 0x3

    .line 18
    .line 19
    add-long/2addr v6, v0

    .line 20
    const-wide/16 v8, 0x4

    .line 21
    .line 22
    div-long/2addr v6, v8

    .line 23
    const-wide/16 v8, 0x63

    .line 24
    .line 25
    add-long/2addr v8, v0

    .line 26
    const-wide/16 v10, 0x64

    .line 27
    .line 28
    div-long/2addr v8, v10

    .line 29
    sub-long/2addr v6, v8

    .line 30
    const-wide/16 v8, 0x18f

    .line 31
    .line 32
    add-long/2addr v0, v8

    .line 33
    const-wide/16 v8, 0x190

    .line 34
    .line 35
    div-long/2addr v0, v8

    .line 36
    add-long/2addr v0, v6

    .line 37
    add-long/2addr v0, v4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-wide/16 v6, -0x4

    .line 40
    .line 41
    div-long v6, v0, v6

    .line 42
    .line 43
    const-wide/16 v8, -0x64

    .line 44
    .line 45
    div-long v8, v0, v8

    .line 46
    .line 47
    sub-long/2addr v6, v8

    .line 48
    const-wide/16 v8, -0x190

    .line 49
    .line 50
    div-long/2addr v0, v8

    .line 51
    add-long/2addr v0, v6

    .line 52
    sub-long v0, v4, v0

    .line 53
    .line 54
    :goto_0
    const-wide/16 v4, 0x16f

    .line 55
    .line 56
    mul-long v4, v4, v2

    .line 57
    .line 58
    const-wide/16 v6, 0x16a

    .line 59
    .line 60
    sub-long/2addr v4, v6

    .line 61
    const-wide/16 v6, 0xc

    .line 62
    .line 63
    div-long/2addr v4, v6

    .line 64
    add-long/2addr v4, v0

    .line 65
    iget-short v0, p0, Lsh/e;->c:S

    .line 66
    .line 67
    add-int/lit8 v0, v0, -0x1

    .line 68
    .line 69
    int-to-long v0, v0

    .line 70
    add-long/2addr v4, v0

    .line 71
    const-wide/16 v0, 0x2

    .line 72
    .line 73
    cmp-long v6, v2, v0

    .line 74
    .line 75
    if-lez v6, :cond_2

    .line 76
    .line 77
    const-wide/16 v2, 0x1

    .line 78
    .line 79
    sub-long v2, v4, v2

    .line 80
    .line 81
    invoke-virtual {p0}, Lsh/e;->u()Z

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-nez v6, :cond_1

    .line 86
    .line 87
    sub-long/2addr v4, v0

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    move-wide v4, v2

    .line 90
    :cond_2
    :goto_1
    const-wide/32 v0, 0xafaa8

    .line 91
    .line 92
    .line 93
    sub-long/2addr v4, v0

    .line 94
    return-wide v4
.end method

.method public final n(Lth/a;)I
    .locals 4

    .line 1
    instance-of v0, p1, Lsh/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lsh/e;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lsh/e;->o(Lsh/e;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lsh/e;->m()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-virtual {p1}, Lth/a;->m()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-static {v0, v1, v2, v3}, Lif/a;->m(JJ)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    sget-object p1, Lth/e;->a:Lth/e;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    :cond_1
    return p1
.end method

.method public final o(Lsh/e;)I
    .locals 2

    .line 1
    iget v0, p1, Lsh/e;->a:I

    .line 2
    .line 3
    iget v1, p0, Lsh/e;->a:I

    .line 4
    .line 5
    sub-int/2addr v1, v0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-short v0, p0, Lsh/e;->b:S

    .line 9
    .line 10
    iget-short v1, p1, Lsh/e;->b:S

    .line 11
    .line 12
    sub-int v1, v0, v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-short v0, p0, Lsh/e;->c:S

    .line 17
    .line 18
    iget-short p1, p1, Lsh/e;->c:S

    .line 19
    .line 20
    sub-int v1, v0, p1

    .line 21
    .line 22
    :cond_0
    return v1
.end method

.method public final r(Lwh/m;)I
    .locals 6

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lwh/a;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "Field too large for an int: "

    .line 9
    .line 10
    iget-short v2, p0, Lsh/e;->c:S

    .line 11
    .line 12
    iget v3, p0, Lsh/e;->a:I

    .line 13
    .line 14
    const/4 v4, 0x7

    .line 15
    const/4 v5, 0x1

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    new-instance v0, Lwh/q;

    .line 20
    .line 21
    const-string v1, "Unsupported field: "

    .line 22
    .line 23
    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :pswitch_0
    if-lt v3, v5, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v5, 0x0

    .line 35
    :goto_0
    return v5

    .line 36
    :pswitch_1
    return v3

    .line 37
    :pswitch_2
    if-lt v3, v5, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    rsub-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    :goto_1
    return v3

    .line 43
    :pswitch_3
    new-instance v0, Lsh/a;

    .line 44
    .line 45
    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :pswitch_4
    iget-short p1, p0, Lsh/e;->b:S

    .line 54
    .line 55
    return p1

    .line 56
    :pswitch_5
    invoke-virtual {p0}, Lsh/e;->t()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    sub-int/2addr p1, v5

    .line 61
    div-int/2addr p1, v4

    .line 62
    add-int/2addr p1, v5

    .line 63
    return p1

    .line 64
    :pswitch_6
    invoke-static {v2, v5, v4, v5}, Lta/q;->g(IIII)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    return p1

    .line 69
    :pswitch_7
    new-instance v0, Lsh/a;

    .line 70
    .line 71
    invoke-static {v1, p1}, Lorg/bouncycastle/jcajce/provider/digest/a;->f(Ljava/lang/String;Lwh/m;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {v0, p1}, Lsh/a;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :pswitch_8
    invoke-virtual {p0}, Lsh/e;->t()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    return p1

    .line 84
    :pswitch_9
    return v2

    .line 85
    :pswitch_a
    invoke-virtual {p0}, Lsh/e;->t()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    sub-int/2addr p1, v5

    .line 90
    rem-int/2addr p1, v4

    .line 91
    add-int/2addr p1, v5

    .line 92
    return p1

    .line 93
    :pswitch_b
    sub-int/2addr v2, v5

    .line 94
    rem-int/2addr v2, v4

    .line 95
    add-int/2addr v2, v5

    .line 96
    return v2

    .line 97
    :pswitch_c
    invoke-virtual {p0}, Lsh/e;->s()Lsh/b;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lsh/b;->m()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    return p1

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0xf
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
        :pswitch_0
    .end packed-switch
.end method

.method public final s()Lsh/b;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lsh/e;->m()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    const/4 v2, 0x7

    .line 9
    invoke-static {v2, v0, v1}, Lif/a;->D(IJ)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-static {v0}, Lsh/b;->n(I)Lsh/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final t()I
    .locals 2

    .line 1
    iget-short v0, p0, Lsh/e;->b:S

    .line 2
    .line 3
    invoke-static {v0}, Lsh/h;->q(I)Lsh/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lsh/e;->u()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Lsh/h;->m(Z)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-short v1, p0, Lsh/e;->c:S

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lsh/e;->a:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const/16 v3, 0xa

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/16 v4, 0x3e8

    .line 15
    .line 16
    if-ge v1, v4, :cond_1

    .line 17
    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    add-int/lit16 v0, v0, -0x2710

    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    add-int/lit16 v0, v0, 0x2710

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/16 v1, 0x270f

    .line 41
    .line 42
    if-le v0, v1, :cond_2

    .line 43
    .line 44
    const/16 v1, 0x2b

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :goto_0
    const-string v0, "-"

    .line 53
    .line 54
    const-string v1, "-0"

    .line 55
    .line 56
    iget-short v4, p0, Lsh/e;->b:S

    .line 57
    .line 58
    if-ge v4, v3, :cond_3

    .line 59
    .line 60
    move-object v5, v1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move-object v5, v0

    .line 63
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-short v4, p0, Lsh/e;->c:S

    .line 70
    .line 71
    if-ge v4, v3, :cond_4

    .line 72
    .line 73
    move-object v0, v1

    .line 74
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method

.method public final u()Z
    .locals 3

    .line 1
    sget-object v0, Lth/e;->a:Lth/e;

    .line 2
    .line 3
    iget v1, p0, Lsh/e;->a:I

    .line 4
    .line 5
    int-to-long v1, v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Lth/e;->b(J)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final x(JLwh/b;)Lsh/e;
    .locals 2

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
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p1, Lwh/q;

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v0, "Unsupported unit: "

    .line 17
    .line 18
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p1, p2}, Lwh/q;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :pswitch_0
    sget-object p3, Lwh/a;->E:Lwh/a;

    .line 33
    .line 34
    invoke-virtual {p0, p3}, Lsh/e;->b(Lwh/m;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-static {v0, v1, p1, p2}, Lif/a;->u0(JJ)J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lsh/e;->C(JLwh/m;)Lsh/e;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :pswitch_1
    const/16 p3, 0x3e8

    .line 48
    .line 49
    invoke-static {p3, p1, p2}, Lif/a;->v0(IJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    invoke-virtual {p0, p1, p2}, Lsh/e;->A(J)Lsh/e;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :pswitch_2
    const/16 p3, 0x64

    .line 59
    .line 60
    invoke-static {p3, p1, p2}, Lif/a;->v0(IJ)J

    .line 61
    .line 62
    .line 63
    move-result-wide p1

    .line 64
    invoke-virtual {p0, p1, p2}, Lsh/e;->A(J)Lsh/e;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :pswitch_3
    const/16 p3, 0xa

    .line 70
    .line 71
    invoke-static {p3, p1, p2}, Lif/a;->v0(IJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide p1

    .line 75
    invoke-virtual {p0, p1, p2}, Lsh/e;->A(J)Lsh/e;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lsh/e;->A(J)Lsh/e;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lsh/e;->z(J)Lsh/e;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    :pswitch_6
    const/4 p3, 0x7

    .line 91
    invoke-static {p3, p1, p2}, Lif/a;->v0(IJ)J

    .line 92
    .line 93
    .line 94
    move-result-wide p1

    .line 95
    invoke-virtual {p0, p1, p2}, Lsh/e;->y(J)Lsh/e;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lsh/e;->y(J)Lsh/e;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lsh/e;->j(JLwh/b;)Lwh/j;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lsh/e;

    .line 113
    .line 114
    return-object p1

    .line 115
    :pswitch_data_0
    .packed-switch 0x7
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

.method public final y(J)Lsh/e;
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lsh/e;->m()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-static {v0, v1, p1, p2}, Lif/a;->u0(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    invoke-static {p1, p2}, Lsh/e;->w(J)Lsh/e;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final z(J)Lsh/e;
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget v0, p0, Lsh/e;->a:I

    .line 9
    .line 10
    int-to-long v0, v0

    .line 11
    const-wide/16 v2, 0xc

    .line 12
    .line 13
    mul-long v0, v0, v2

    .line 14
    .line 15
    iget-short v4, p0, Lsh/e;->b:S

    .line 16
    .line 17
    add-int/lit8 v4, v4, -0x1

    .line 18
    .line 19
    int-to-long v4, v4

    .line 20
    add-long/2addr v0, v4

    .line 21
    add-long/2addr v0, p1

    .line 22
    sget-object p1, Lwh/a;->D:Lwh/a;

    .line 23
    .line 24
    invoke-static {v0, v1, v2, v3}, Lif/a;->C(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    iget-object p2, p1, Lwh/a;->b:Lwh/r;

    .line 29
    .line 30
    invoke-virtual {p2, v2, v3, p1}, Lwh/r;->a(JLwh/m;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/16 p2, 0xc

    .line 35
    .line 36
    invoke-static {p2, v0, v1}, Lif/a;->D(IJ)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    add-int/lit8 p2, p2, 0x1

    .line 41
    .line 42
    iget-short v0, p0, Lsh/e;->c:S

    .line 43
    .line 44
    invoke-static {p1, p2, v0}, Lsh/e;->B(III)Lsh/e;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1
.end method
