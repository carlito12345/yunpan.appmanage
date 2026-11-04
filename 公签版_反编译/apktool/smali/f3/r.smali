.class public abstract Lf3/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lf3/r;->a:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.89096448E8f
        0x4d344120    # 1.89010432E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_4

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lf3/v;

    .line 18
    .line 19
    iget-object v2, v2, Lf3/v;->a:Lf3/s;

    .line 20
    .line 21
    iget-object v2, v2, Lf3/s;->g:Lr1/p;

    .line 22
    .line 23
    iget-object v2, v2, Lr1/p;->o:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v2}, Lr1/e0;->k(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    const-string p0, "video/mp4"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    invoke-static {v2}, Lr1/e0;->h(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-static {v2}, Lr1/e0;->i(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    const-string v3, "image/heic"

    .line 49
    .line 50
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    const-string v1, "image/heif"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const-string v3, "image/avif"

    .line 60
    .line 61
    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    move-object v1, v3

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    if-eqz v0, :cond_5

    .line 70
    .line 71
    const-string p0, "audio/mp4"

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_5
    if-eqz v1, :cond_6

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_6
    const-string p0, "application/mp4"

    .line 78
    .line 79
    return-object p0
.end method

.method public static b(IZ)Z
    .locals 4

    .line 1
    ushr-int/lit8 v0, p0, 0x8

    .line 2
    .line 3
    const v1, 0x336770

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    const v0, 0x68656963

    .line 11
    .line 12
    .line 13
    if-ne p0, v0, :cond_1

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    return v2

    .line 18
    :cond_1
    sget-object p1, Lf3/r;->a:[I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    const/16 v3, 0x1d

    .line 23
    .line 24
    if-ge v1, v3, :cond_3

    .line 25
    .line 26
    aget v3, p1, v1

    .line 27
    .line 28
    if-ne v3, p0, :cond_2

    .line 29
    .line 30
    return v2

    .line 31
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    return v0
.end method

.method public static c(Lu1/q;)Lz2/a;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lu1/q;->o()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lu1/q;->o()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0x64617461

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v1, v2, :cond_3

    .line 14
    .line 15
    invoke-virtual {p0}, Lu1/q;->o()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    sget-object v2, Lf3/e;->a:[B

    .line 20
    .line 21
    const v2, 0xffffff

    .line 22
    .line 23
    .line 24
    and-int/2addr v1, v2

    .line 25
    const/16 v2, 0xd

    .line 26
    .line 27
    if-ne v1, v2, :cond_0

    .line 28
    .line 29
    const-string v2, "image/jpeg"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/16 v2, 0xe

    .line 33
    .line 34
    if-ne v1, v2, :cond_1

    .line 35
    .line 36
    const-string v2, "image/png"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object v2, v3

    .line 40
    :goto_0
    if-nez v2, :cond_2

    .line 41
    .line 42
    const-string p0, "Unrecognized cover art flags: "

    .line 43
    .line 44
    invoke-static {v1, p0}, Lorg/bouncycastle/jcajce/provider/digest/a;->o(ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v3

    .line 48
    :cond_2
    const/4 v1, 0x4

    .line 49
    invoke-virtual {p0, v1}, Lu1/q;->P(I)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v0, v0, -0x10

    .line 53
    .line 54
    new-array v1, v0, [B

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-virtual {p0, v4, v0, v1}, Lu1/q;->l(II[B)V

    .line 58
    .line 59
    .line 60
    new-instance p0, Lz2/a;

    .line 61
    .line 62
    const/4 v0, 0x3

    .line 63
    invoke-direct {p0, v0, v2, v3, v1}, Lz2/a;-><init>(ILjava/lang/String;Ljava/lang/String;[B)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_3
    const-string p0, "Failed to parse cover art attribute"

    .line 68
    .line 69
    invoke-static {p0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v3
.end method

.method public static d(ILjava/lang/String;Lu1/q;)Lz2/n;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lu1/q;->o()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Lu1/q;->o()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0x64617461

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x16

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    const/16 v0, 0xa

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Lu1/q;->P(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lu1/q;->I()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_1

    .line 29
    .line 30
    const-string p0, ""

    .line 31
    .line 32
    invoke-static {v0, p0}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p2}, Lu1/q;->I()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-lez p2, :cond_0

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p0, "/"

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    :cond_0
    new-instance p2, Lz2/n;

    .line 63
    .line 64
    invoke-static {p0}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {p2, p1, v3, p0}, Lz2/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lu7/y0;)V

    .line 69
    .line 70
    .line 71
    return-object p2

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string p2, "Failed to parse index/count attribute: "

    .line 75
    .line 76
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p0}, Lab/a;->b(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object v3
.end method

.method public static e(Lu1/q;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu1/q;->o()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lu1/q;->o()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0x64617461

    .line 10
    .line 11
    .line 12
    if-ne v1, v2, :cond_4

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Lu1/q;->P(I)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x10

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_3

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-eq v0, v1, :cond_2

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    if-eq v0, v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lu1/q;->k()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    and-int/lit16 v0, v0, 0x80

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    invoke-virtual {p0}, Lu1/q;->F()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lu1/q;->E()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_2
    invoke-virtual {p0}, Lu1/q;->I()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0

    .line 57
    :cond_3
    invoke-virtual {p0}, Lu1/q;->B()I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0

    .line 62
    :cond_4
    :goto_0
    const-string p0, "Failed to parse data atom to int"

    .line 63
    .line 64
    invoke-static {p0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, -0x1

    .line 68
    return p0
.end method

.method public static f(ILjava/lang/String;Lu1/q;ZZ)Lz2/i;
    .locals 0

    .line 1
    invoke-static {p2}, Lf3/r;->e(Lu1/q;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    :cond_0
    const/4 p4, 0x0

    .line 13
    if-ltz p2, :cond_2

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    new-instance p0, Lz2/n;

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-direct {p0, p1, p4, p2}, Lz2/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lu7/y0;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance p0, Lz2/e;

    .line 32
    .line 33
    const-string p3, "und"

    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p0, p3, p1, p2}, Lz2/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-object p0

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p2, "Failed to parse uint8 attribute: "

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lab/a;->b(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object p4
.end method

.method public static g(ILjava/lang/String;Lu1/q;)Lz2/n;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lu1/q;->o()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Lu1/q;->o()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const v2, 0x64617461

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    const/16 p0, 0x8

    .line 16
    .line 17
    invoke-virtual {p2, p0}, Lu1/q;->P(I)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x10

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Lu1/q;->x(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-instance p2, Lz2/n;

    .line 27
    .line 28
    invoke-static {p0}, Lu7/g0;->r(Ljava/lang/Object;)Lu7/y0;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {p2, p1, v3, p0}, Lz2/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lu7/y0;)V

    .line 33
    .line 34
    .line 35
    return-object p2

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p2, "Failed to parse text attribute: "

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lab/a;->b(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lu1/a;->p(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v3
.end method

.method public static varargs h(ILr1/d0;Lr1/o;Lr1/d0;[Lr1/d0;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance p3, Lr1/d0;

    .line 7
    .line 8
    new-array v2, v1, [Lr1/c0;

    .line 9
    .line 10
    invoke-direct {p3, v2}, Lr1/d0;-><init>([Lr1/c0;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    if-eqz p1, :cond_6

    .line 14
    .line 15
    sget-object v2, Lu7/g0;->b:Lu7/e0;

    .line 16
    .line 17
    const-string v2, "initialCapacity"

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    invoke-static {v3, v2}, Lu7/q;->c(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-array v2, v3, [Ljava/lang/Object;

    .line 24
    .line 25
    iget-object p1, p1, Lr1/d0;->a:[Lr1/c0;

    .line 26
    .line 27
    array-length v3, p1

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_1
    if-ge v4, v3, :cond_3

    .line 31
    .line 32
    aget-object v6, p1, v4

    .line 33
    .line 34
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    const-class v8, Lv1/a;

    .line 39
    .line 40
    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_2

    .line 45
    .line 46
    invoke-virtual {v8, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Lr1/c0;

    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    array-length v7, v2

    .line 56
    add-int/lit8 v8, v5, 0x1

    .line 57
    .line 58
    invoke-static {v7, v8}, Lu7/a0;->f(II)I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    array-length v9, v2

    .line 63
    if-gt v7, v9, :cond_1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_1
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :goto_2
    aput-object v6, v2, v5

    .line 71
    .line 72
    move v5, v8

    .line 73
    :cond_2
    add-int/2addr v4, v0

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-static {v5, v2}, Lu7/g0;->i(I[Ljava/lang/Object;)Lu7/y0;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1, v1}, Lu7/g0;->o(I)Lu7/e0;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lu7/e0;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    invoke-virtual {p1}, Lu7/e0;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lv1/a;

    .line 94
    .line 95
    iget-object v3, v2, Lv1/a;->a:Ljava/lang/String;

    .line 96
    .line 97
    const-string v4, "com.android.capture.fps"

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_5

    .line 104
    .line 105
    const/4 v3, 0x2

    .line 106
    if-ne p0, v3, :cond_4

    .line 107
    .line 108
    :cond_5
    new-array v3, v0, [Lr1/c0;

    .line 109
    .line 110
    aput-object v2, v3, v1

    .line 111
    .line 112
    invoke-virtual {p3, v3}, Lr1/d0;->a([Lr1/c0;)Lr1/d0;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    goto :goto_3

    .line 117
    :cond_6
    array-length p0, p4

    .line 118
    :goto_4
    if-ge v1, p0, :cond_7

    .line 119
    .line 120
    aget-object p1, p4, v1

    .line 121
    .line 122
    invoke-virtual {p3, p1}, Lr1/d0;->b(Lr1/d0;)Lr1/d0;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    add-int/2addr v1, v0

    .line 127
    goto :goto_4

    .line 128
    :cond_7
    iget-object p0, p3, Lr1/d0;->a:[Lr1/c0;

    .line 129
    .line 130
    array-length p0, p0

    .line 131
    if-lez p0, :cond_8

    .line 132
    .line 133
    iput-object p3, p2, Lr1/o;->k:Lr1/d0;

    .line 134
    .line 135
    :cond_8
    return-void
.end method

.method public static i(Ll2/p;ZZ)Ll2/g0;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    invoke-interface/range {p0 .. p0}, Ll2/p;->getLength()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, 0x1000

    .line 10
    .line 11
    const-wide/16 v6, -0x1

    .line 12
    .line 13
    cmp-long v8, v2, v6

    .line 14
    .line 15
    if-eqz v8, :cond_1

    .line 16
    .line 17
    cmp-long v8, v2, v4

    .line 18
    .line 19
    if-lez v8, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-wide v4, v2

    .line 23
    :cond_1
    :goto_0
    long-to-int v5, v4

    .line 24
    new-instance v4, Lu1/q;

    .line 25
    .line 26
    const/16 v8, 0x40

    .line 27
    .line 28
    invoke-direct {v4, v8}, Lu1/q;-><init>(I)V

    .line 29
    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x0

    .line 33
    const/4 v10, 0x0

    .line 34
    :goto_1
    if-ge v9, v5, :cond_1b

    .line 35
    .line 36
    const/16 v12, 0x8

    .line 37
    .line 38
    invoke-virtual {v4, v12}, Lu1/q;->L(I)V

    .line 39
    .line 40
    .line 41
    iget-object v13, v4, Lu1/q;->a:[B

    .line 42
    .line 43
    const/4 v14, 0x1

    .line 44
    invoke-interface {v0, v13, v8, v12, v14}, Ll2/p;->c([BIIZ)Z

    .line 45
    .line 46
    .line 47
    move-result v13

    .line 48
    if-nez v13, :cond_2

    .line 49
    .line 50
    goto/16 :goto_f

    .line 51
    .line 52
    :cond_2
    invoke-virtual {v4}, Lu1/q;->D()J

    .line 53
    .line 54
    .line 55
    move-result-wide v15

    .line 56
    invoke-virtual {v4}, Lu1/q;->o()I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    const-wide/16 v17, 0x1

    .line 61
    .line 62
    cmp-long v19, v15, v17

    .line 63
    .line 64
    if-nez v19, :cond_3

    .line 65
    .line 66
    iget-object v15, v4, Lu1/q;->a:[B

    .line 67
    .line 68
    invoke-interface {v0, v12, v12, v15}, Ll2/p;->a(II[B)V

    .line 69
    .line 70
    .line 71
    const/16 v15, 0x10

    .line 72
    .line 73
    invoke-virtual {v4, v15}, Lu1/q;->N(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Lu1/q;->v()J

    .line 77
    .line 78
    .line 79
    move-result-wide v16

    .line 80
    move-wide/from16 v14, v16

    .line 81
    .line 82
    const/16 v11, 0x10

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_3
    const-wide/16 v17, 0x0

    .line 86
    .line 87
    cmp-long v19, v15, v17

    .line 88
    .line 89
    if-nez v19, :cond_4

    .line 90
    .line 91
    invoke-interface/range {p0 .. p0}, Ll2/p;->getLength()J

    .line 92
    .line 93
    .line 94
    move-result-wide v17

    .line 95
    cmp-long v19, v17, v6

    .line 96
    .line 97
    if-eqz v19, :cond_4

    .line 98
    .line 99
    invoke-interface/range {p0 .. p0}, Ll2/p;->d()J

    .line 100
    .line 101
    .line 102
    move-result-wide v15

    .line 103
    sub-long v17, v17, v15

    .line 104
    .line 105
    int-to-long v14, v12

    .line 106
    add-long v14, v17, v14

    .line 107
    .line 108
    :goto_2
    const/16 v11, 0x8

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_4
    move-wide v14, v15

    .line 112
    goto :goto_2

    .line 113
    :goto_3
    int-to-long v6, v11

    .line 114
    cmp-long v20, v14, v6

    .line 115
    .line 116
    if-gez v20, :cond_6

    .line 117
    .line 118
    const v8, 0x66726565

    .line 119
    .line 120
    .line 121
    if-ne v13, v8, :cond_5

    .line 122
    .line 123
    if-ne v11, v12, :cond_5

    .line 124
    .line 125
    move-wide v14, v6

    .line 126
    goto :goto_4

    .line 127
    :cond_5
    new-instance v0, Lf3/a;

    .line 128
    .line 129
    invoke-direct {v0, v13, v11, v14, v15}, Lf3/a;-><init>(IIJ)V

    .line 130
    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_6
    :goto_4
    add-int/2addr v9, v11

    .line 134
    const v8, 0x6d6f6f76

    .line 135
    .line 136
    .line 137
    if-eq v13, v8, :cond_8

    .line 138
    .line 139
    const v11, 0x75756964

    .line 140
    .line 141
    .line 142
    if-ne v13, v11, :cond_7

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_7
    move v11, v9

    .line 146
    const-wide/16 v17, -0x1

    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_8
    :goto_5
    long-to-int v11, v14

    .line 150
    add-int/2addr v5, v11

    .line 151
    const-wide/16 v17, -0x1

    .line 152
    .line 153
    cmp-long v11, v2, v17

    .line 154
    .line 155
    if-eqz v11, :cond_a

    .line 156
    .line 157
    move v11, v9

    .line 158
    int-to-long v8, v5

    .line 159
    cmp-long v22, v8, v2

    .line 160
    .line 161
    if-lez v22, :cond_9

    .line 162
    .line 163
    long-to-int v5, v2

    .line 164
    :cond_9
    :goto_6
    const v8, 0x6d6f6f76

    .line 165
    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_a
    move v11, v9

    .line 169
    goto :goto_6

    .line 170
    :goto_7
    if-ne v13, v8, :cond_b

    .line 171
    .line 172
    move v9, v11

    .line 173
    move-wide/from16 v6, v17

    .line 174
    .line 175
    const/4 v8, 0x0

    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :cond_b
    :goto_8
    const v8, 0x7472616b

    .line 179
    .line 180
    .line 181
    if-eq v13, v8, :cond_c

    .line 182
    .line 183
    const v8, 0x6d646961

    .line 184
    .line 185
    .line 186
    if-eq v13, v8, :cond_c

    .line 187
    .line 188
    const v8, 0x6d696e66

    .line 189
    .line 190
    .line 191
    if-ne v13, v8, :cond_d

    .line 192
    .line 193
    :cond_c
    const/4 v8, 0x0

    .line 194
    goto/16 :goto_e

    .line 195
    .line 196
    :cond_d
    const v8, 0x6d6f6f66

    .line 197
    .line 198
    .line 199
    if-eq v13, v8, :cond_1a

    .line 200
    .line 201
    const v8, 0x6d766578

    .line 202
    .line 203
    .line 204
    if-ne v13, v8, :cond_e

    .line 205
    .line 206
    goto/16 :goto_d

    .line 207
    .line 208
    :cond_e
    const v8, 0x6d646174

    .line 209
    .line 210
    .line 211
    if-ne v13, v8, :cond_f

    .line 212
    .line 213
    const/4 v10, 0x1

    .line 214
    :cond_f
    const v8, 0x7374626c

    .line 215
    .line 216
    .line 217
    if-ne v13, v8, :cond_10

    .line 218
    .line 219
    const-wide/32 v8, 0xf4240

    .line 220
    .line 221
    .line 222
    cmp-long v21, v14, v8

    .line 223
    .line 224
    if-lez v21, :cond_10

    .line 225
    .line 226
    :goto_9
    const/4 v8, 0x0

    .line 227
    goto/16 :goto_f

    .line 228
    .line 229
    :cond_10
    int-to-long v8, v11

    .line 230
    add-long/2addr v8, v14

    .line 231
    sub-long/2addr v8, v6

    .line 232
    move/from16 v21, v13

    .line 233
    .line 234
    int-to-long v12, v5

    .line 235
    cmp-long v23, v8, v12

    .line 236
    .line 237
    if-ltz v23, :cond_11

    .line 238
    .line 239
    goto :goto_9

    .line 240
    :cond_11
    sub-long/2addr v14, v6

    .line 241
    long-to-int v6, v14

    .line 242
    add-int v9, v11, v6

    .line 243
    .line 244
    const v7, 0x66747970

    .line 245
    .line 246
    .line 247
    move/from16 v8, v21

    .line 248
    .line 249
    if-ne v8, v7, :cond_18

    .line 250
    .line 251
    const/16 v7, 0x8

    .line 252
    .line 253
    if-ge v6, v7, :cond_12

    .line 254
    .line 255
    new-instance v0, Lf3/a;

    .line 256
    .line 257
    int-to-long v1, v6

    .line 258
    invoke-direct {v0, v8, v7, v1, v2}, Lf3/a;-><init>(IIJ)V

    .line 259
    .line 260
    .line 261
    return-object v0

    .line 262
    :cond_12
    invoke-virtual {v4, v6}, Lu1/q;->L(I)V

    .line 263
    .line 264
    .line 265
    iget-object v7, v4, Lu1/q;->a:[B

    .line 266
    .line 267
    const/4 v8, 0x0

    .line 268
    invoke-interface {v0, v8, v6, v7}, Ll2/p;->a(II[B)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4}, Lu1/q;->o()I

    .line 272
    .line 273
    .line 274
    move-result v6

    .line 275
    invoke-static {v6, v1}, Lf3/r;->b(IZ)Z

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    if-eqz v7, :cond_13

    .line 280
    .line 281
    const/4 v10, 0x1

    .line 282
    :cond_13
    const/4 v7, 0x4

    .line 283
    invoke-virtual {v4, v7}, Lu1/q;->P(I)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v4}, Lu1/q;->a()I

    .line 287
    .line 288
    .line 289
    move-result v11

    .line 290
    div-int/2addr v11, v7

    .line 291
    if-nez v10, :cond_16

    .line 292
    .line 293
    if-lez v11, :cond_16

    .line 294
    .line 295
    new-array v7, v11, [I

    .line 296
    .line 297
    const/4 v12, 0x0

    .line 298
    :goto_a
    if-ge v12, v11, :cond_15

    .line 299
    .line 300
    invoke-virtual {v4}, Lu1/q;->o()I

    .line 301
    .line 302
    .line 303
    move-result v13

    .line 304
    aput v13, v7, v12

    .line 305
    .line 306
    invoke-static {v13, v1}, Lf3/r;->b(IZ)Z

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    if-eqz v13, :cond_14

    .line 311
    .line 312
    move-object v11, v7

    .line 313
    const/4 v14, 0x1

    .line 314
    goto :goto_b

    .line 315
    :cond_14
    add-int/lit8 v12, v12, 0x1

    .line 316
    .line 317
    goto :goto_a

    .line 318
    :cond_15
    move-object v11, v7

    .line 319
    move v14, v10

    .line 320
    goto :goto_b

    .line 321
    :cond_16
    move v14, v10

    .line 322
    const/4 v11, 0x0

    .line 323
    :goto_b
    if-nez v14, :cond_17

    .line 324
    .line 325
    new-instance v0, Ld3/g;

    .line 326
    .line 327
    invoke-direct {v0, v6, v11}, Ld3/g;-><init>(I[I)V

    .line 328
    .line 329
    .line 330
    return-object v0

    .line 331
    :cond_17
    move v10, v14

    .line 332
    goto :goto_c

    .line 333
    :cond_18
    const/4 v8, 0x0

    .line 334
    if-eqz v6, :cond_19

    .line 335
    .line 336
    invoke-interface {v0, v6}, Ll2/p;->e(I)V

    .line 337
    .line 338
    .line 339
    :cond_19
    :goto_c
    move-wide/from16 v6, v17

    .line 340
    .line 341
    goto/16 :goto_1

    .line 342
    .line 343
    :cond_1a
    :goto_d
    const/4 v8, 0x1

    .line 344
    goto :goto_f

    .line 345
    :goto_e
    move v9, v11

    .line 346
    goto :goto_c

    .line 347
    :cond_1b
    :goto_f
    if-nez v10, :cond_1c

    .line 348
    .line 349
    sget-object v0, Lf3/o;->a:Lf3/o;

    .line 350
    .line 351
    return-object v0

    .line 352
    :cond_1c
    move/from16 v0, p1

    .line 353
    .line 354
    if-eq v0, v8, :cond_1e

    .line 355
    .line 356
    if-eqz v8, :cond_1d

    .line 357
    .line 358
    sget-object v0, Lf3/k;->b:Lf3/k;

    .line 359
    .line 360
    goto :goto_10

    .line 361
    :cond_1d
    sget-object v0, Lf3/k;->c:Lf3/k;

    .line 362
    .line 363
    :goto_10
    return-object v0

    .line 364
    :cond_1e
    const/4 v0, 0x0

    .line 365
    return-object v0
.end method
