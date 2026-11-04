.class public final La9/t;
.super La9/r;
.source "SourceFile"


# static fields
.field public static final l:[[B

.field public static final m:[Ljava/lang/String;


# instance fields
.field public h:[B

.field public i:[B

.field public j:[B

.field public k:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x7

    .line 4
    const/16 v3, 0xa

    .line 5
    .line 6
    new-array v3, v3, [B

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    new-array v5, v2, [B

    .line 13
    .line 14
    fill-array-data v5, :array_1

    .line 15
    .line 16
    .line 17
    new-array v2, v2, [B

    .line 18
    .line 19
    fill-array-data v2, :array_2

    .line 20
    .line 21
    .line 22
    new-array v6, v0, [[B

    .line 23
    .line 24
    aput-object v3, v6, v4

    .line 25
    .line 26
    aput-object v5, v6, v1

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    aput-object v2, v6, v3

    .line 30
    .line 31
    sput-object v6, La9/t;->l:[[B

    .line 32
    .line 33
    new-array v0, v0, [Ljava/lang/String;

    .line 34
    .line 35
    const-string v2, "nistp256"

    .line 36
    .line 37
    aput-object v2, v0, v4

    .line 38
    .line 39
    const-string v2, "nistp384"

    .line 40
    .line 41
    aput-object v2, v0, v1

    .line 42
    .line 43
    const-string v1, "nistp521"

    .line 44
    .line 45
    aput-object v1, v0, v3

    .line 46
    .line 47
    sput-object v0, La9/t;->m:[Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "-----BEGIN EC PRIVATE KEY-----"

    .line 50
    .line 51
    invoke-static {v0}, La9/h0;->j(Ljava/lang/String;)[B

    .line 52
    .line 53
    .line 54
    const-string v0, "-----END EC PRIVATE KEY-----"

    .line 55
    .line 56
    invoke-static {v0}, La9/h0;->j(Ljava/lang/String;)[B

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :array_0
    .array-data 1
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    nop

    .line 71
    :array_1
    .array-data 1
        0x6t
        0x5t
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0x22t
    .end array-data

    .line 72
    :array_2
    .array-data 1
        0x6t
        0x5t
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0x23t
    .end array-data
.end method

.method public constructor <init>(Lm7/e;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, La9/t;-><init>(Lm7/e;[B[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lm7/e;[B)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v5}, La9/t;-><init>(Lm7/e;[B[B[B[B)V

    if-eqz p2, :cond_1

    const/16 p1, 0x8

    .line 3
    new-array v0, p1, [B

    const/16 v1, 0xb

    const/4 v2, 0x0

    .line 4
    invoke-static {p2, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    sget-object p1, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string p2, "nistp384"

    invoke-static {p2, p1}, La9/h0;->k(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 6
    invoke-static {v0, p2}, La9/h0;->a([B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    iput-object v0, p0, La9/t;->h:[B

    .line 8
    :cond_0
    const-string p2, "nistp521"

    invoke-static {p2, p1}, La9/h0;->k(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 9
    invoke-static {v0, p1}, La9/h0;->a([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iput-object v0, p0, La9/t;->h:[B

    :cond_1
    return-void
.end method

.method public constructor <init>(Lm7/e;[B[B[B[B)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, La9/r;-><init>(Lm7/e;)V

    .line 12
    sget-object p1, La9/t;->m:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 13
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, La9/h0;->k(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 14
    iput-object p1, p0, La9/t;->h:[B

    if-eqz p2, :cond_0

    .line 15
    iput-object p2, p0, La9/t;->h:[B

    .line 16
    :cond_0
    iput-object p3, p0, La9/t;->i:[B

    .line 17
    iput-object p4, p0, La9/t;->j:[B

    .line 18
    iput-object p5, p0, La9/t;->k:[B

    return-void
.end method

.method public static s([B)[[B
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    aget-byte v4, p0, v3

    .line 6
    .line 7
    const/4 v5, 0x4

    .line 8
    if-eq v4, v5, :cond_0

    .line 9
    .line 10
    add-int/2addr v3, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    add-int/2addr v3, v1

    .line 13
    array-length v4, p0

    .line 14
    sub-int/2addr v4, v3

    .line 15
    div-int/2addr v4, v0

    .line 16
    new-array v5, v4, [B

    .line 17
    .line 18
    array-length v6, p0

    .line 19
    sub-int/2addr v6, v3

    .line 20
    div-int/2addr v6, v0

    .line 21
    new-array v7, v6, [B

    .line 22
    .line 23
    invoke-static {p0, v3, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .line 25
    .line 26
    add-int/2addr v3, v4

    .line 27
    invoke-static {p0, v3, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    .line 29
    .line 30
    new-array p0, v0, [[B

    .line 31
    .line 32
    aput-object v5, p0, v2

    .line 33
    .line 34
    aput-object v7, p0, v1

    .line 35
    .line 36
    return-object p0
.end method

.method public static t(Lm7/e;La9/a;)La9/t;
    .locals 8

    .line 1
    const/4 v0, 0x5

    .line 2
    const-string v1, "invalid key format"

    .line 3
    .line 4
    invoke-virtual {p1, v0, v1}, La9/a;->f(ILjava/lang/String;)[[B

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x1

    .line 9
    aget-object v3, p1, v0

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    aget-object v1, p1, v1

    .line 13
    .line 14
    invoke-static {v1}, La9/t;->s([B)[[B

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v7, 0x0

    .line 19
    aget-object v4, v1, v7

    .line 20
    .line 21
    aget-object v5, v1, v0

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    aget-object v6, p1, v0

    .line 25
    .line 26
    new-instance v0, La9/t;

    .line 27
    .line 28
    move-object v1, v0

    .line 29
    move-object v2, p0

    .line 30
    invoke-direct/range {v1 .. v6}, La9/t;-><init>(Lm7/e;[B[B[B[B)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x4

    .line 34
    aget-object p0, p1, p0

    .line 35
    .line 36
    invoke-static {p0}, La9/h0;->c([B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iput-object p0, v0, La9/r;->b:Ljava/lang/String;

    .line 41
    .line 42
    iput v7, v0, La9/r;->a:I

    .line 43
    .line 44
    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    sget-object v0, La9/h0;->a:[B

    .line 2
    .line 3
    iget-object v0, p0, La9/t;->k:[B

    .line 4
    .line 5
    invoke-static {v0}, La9/h0;->d([B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e()[B
    .locals 9

    .line 1
    iget-boolean v0, p0, La9/r;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, La9/a;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, La9/a;-><init>(IC)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, La9/t;->h:[B

    .line 13
    .line 14
    invoke-static {v1}, La9/h0;->c([B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "ecdsa-sha2-"

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    invoke-static {v1, v2}, La9/h0;->k(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    array-length v3, v1

    .line 31
    invoke-virtual {v0, v3, v1}, La9/a;->p(I[B)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, La9/t;->h:[B

    .line 35
    .line 36
    array-length v3, v1

    .line 37
    invoke-virtual {v0, v3, v1}, La9/a;->p(I[B)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, La9/t;->i:[B

    .line 41
    .line 42
    iget-object v3, p0, La9/t;->j:[B

    .line 43
    .line 44
    array-length v4, v1

    .line 45
    const/4 v5, 0x1

    .line 46
    add-int/2addr v4, v5

    .line 47
    array-length v6, v3

    .line 48
    add-int/2addr v4, v6

    .line 49
    new-array v6, v4, [B

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v8, 0x4

    .line 53
    aput-byte v8, v6, v7

    .line 54
    .line 55
    array-length v8, v1

    .line 56
    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    array-length v1, v1

    .line 60
    add-int/2addr v1, v5

    .line 61
    array-length v5, v3

    .line 62
    invoke-static {v3, v7, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v4, v6}, La9/a;->p(I[B)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, La9/t;->k:[B

    .line 69
    .line 70
    array-length v3, v1

    .line 71
    invoke-virtual {v0, v3, v1}, La9/a;->p(I[B)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, La9/r;->b:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v1, v2}, La9/h0;->k(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    array-length v2, v1

    .line 81
    invoke-virtual {v0, v2, v1}, La9/a;->p(I[B)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, La9/a;->h()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    new-array v2, v1, [B

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, La9/a;->e(I[B)V

    .line 91
    .line 92
    .line 93
    return-object v2

    .line 94
    :cond_0
    new-instance v0, La9/n;

    .line 95
    .line 96
    const-string v1, "key is encrypted."

    .line 97
    .line 98
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0
.end method

.method public final h()[B
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, La9/r;->f:[B

    .line 5
    .line 6
    if-eqz v3, :cond_0

    .line 7
    .line 8
    return-object v3

    .line 9
    :cond_0
    iget-object v3, p0, La9/t;->i:[B

    .line 10
    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_1
    iget-object v3, p0, La9/t;->h:[B

    .line 16
    .line 17
    invoke-static {v3}, La9/h0;->c([B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "ecdsa-sha2-"

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    sget-object v4, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 28
    .line 29
    invoke-static {v3, v4}, La9/h0;->k(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v4, p0, La9/t;->h:[B

    .line 34
    .line 35
    iget-object v5, p0, La9/t;->i:[B

    .line 36
    .line 37
    array-length v6, v5

    .line 38
    add-int/2addr v6, v2

    .line 39
    iget-object v7, p0, La9/t;->j:[B

    .line 40
    .line 41
    array-length v7, v7

    .line 42
    add-int/2addr v6, v7

    .line 43
    new-array v6, v6, [B

    .line 44
    .line 45
    const/4 v7, 0x3

    .line 46
    new-array v7, v7, [[B

    .line 47
    .line 48
    aput-object v3, v7, v1

    .line 49
    .line 50
    aput-object v4, v7, v2

    .line 51
    .line 52
    aput-object v6, v7, v0

    .line 53
    .line 54
    aget-object v3, v7, v0

    .line 55
    .line 56
    const/4 v4, 0x4

    .line 57
    aput-byte v4, v3, v1

    .line 58
    .line 59
    array-length v4, v5

    .line 60
    invoke-static {v5, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, La9/t;->j:[B

    .line 64
    .line 65
    aget-object v0, v7, v0

    .line 66
    .line 67
    iget-object v4, p0, La9/t;->i:[B

    .line 68
    .line 69
    array-length v4, v4

    .line 70
    add-int/2addr v4, v2

    .line 71
    array-length v2, v3

    .line 72
    invoke-static {v3, v1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    .line 74
    .line 75
    invoke-static {v7}, La9/a;->b([[B)La9/a;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v0, v0, La9/a;->e:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, [B

    .line 82
    .line 83
    return-object v0
.end method

.method public final m([B)Z
    .locals 10

    .line 1
    iget-object v0, p0, La9/r;->c:Lm7/e;

    .line 2
    .line 3
    const-string v1, "unknown curve name "

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget v3, p0, La9/r;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-ne v3, v4, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    const/4 v5, 0x2

    .line 13
    if-eq v3, v5, :cond_f

    .line 14
    .line 15
    const/4 v6, 0x5

    .line 16
    if-ne v3, v6, :cond_1

    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_1
    sget-object v6, La9/t;->m:[Ljava/lang/String;

    .line 21
    .line 22
    const/4 v7, 0x4

    .line 23
    if-ne v3, v7, :cond_4

    .line 24
    .line 25
    :try_start_1
    new-instance v3, La9/a;

    .line 26
    .line 27
    invoke-direct {v3, p1}, La9/a;-><init>([B)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, La9/a;->g()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {v3}, La9/a;->g()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-ne p1, v7, :cond_3

    .line 39
    .line 40
    invoke-virtual {v3}, La9/a;->l()[B

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, La9/h0;->c([B)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, La9/a;->l()[B

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, La9/t;->h:[B

    .line 52
    .line 53
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object v6, p0, La9/t;->h:[B

    .line 58
    .line 59
    invoke-static {v6}, La9/h0;->c([B)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v3}, La9/a;->g()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {v3}, La9/a;->d()I

    .line 74
    .line 75
    .line 76
    sub-int/2addr p1, v4

    .line 77
    div-int/lit8 v1, p1, 0x2

    .line 78
    .line 79
    new-array v6, v1, [B

    .line 80
    .line 81
    div-int/2addr p1, v5

    .line 82
    new-array v5, p1, [B

    .line 83
    .line 84
    invoke-virtual {v3, v1, v6}, La9/a;->e(I[B)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, p1, v5}, La9/a;->e(I[B)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, La9/a;->l()[B

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, La9/t;->k:[B

    .line 95
    .line 96
    invoke-virtual {v3}, La9/a;->l()[B

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    array-length v1, p1

    .line 101
    sget-object v3, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 102
    .line 103
    new-instance v7, Ljava/lang/String;

    .line 104
    .line 105
    invoke-direct {v7, p1, v2, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 106
    .line 107
    .line 108
    iput-object v7, p0, La9/r;->b:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v6, p0, La9/t;->i:[B

    .line 111
    .line 112
    iput-object v5, p0, La9/t;->j:[B

    .line 113
    .line 114
    return v4

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    iget-object v3, p0, La9/t;->h:[B

    .line 118
    .line 119
    invoke-static {v3}, La9/h0;->c([B)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p1

    .line 131
    :cond_3
    new-instance p1, La9/n;

    .line 132
    .line 133
    const-string v1, "check failed"

    .line 134
    .line 135
    invoke-direct {p1, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p1

    .line 139
    :cond_4
    aget-byte v1, p1, v2

    .line 140
    .line 141
    const/16 v3, 0x30

    .line 142
    .line 143
    if-eq v1, v3, :cond_5

    .line 144
    .line 145
    return v2

    .line 146
    :cond_5
    aget-byte v1, p1, v4

    .line 147
    .line 148
    and-int/lit16 v3, v1, 0x80

    .line 149
    .line 150
    if-eqz v3, :cond_6

    .line 151
    .line 152
    and-int/lit8 v1, v1, 0x7f

    .line 153
    .line 154
    const/4 v3, 0x2

    .line 155
    :goto_0
    add-int/lit8 v7, v1, -0x1

    .line 156
    .line 157
    if-lez v1, :cond_7

    .line 158
    .line 159
    add-int/lit8 v1, v3, 0x1

    .line 160
    .line 161
    aget-byte v3, p1, v3

    .line 162
    .line 163
    move v3, v1

    .line 164
    move v1, v7

    .line 165
    goto :goto_0

    .line 166
    :cond_6
    const/4 v3, 0x2

    .line 167
    :cond_7
    aget-byte v1, p1, v3

    .line 168
    .line 169
    if-eq v1, v5, :cond_8

    .line 170
    .line 171
    return v2

    .line 172
    :cond_8
    add-int/lit8 v1, v3, 0x1

    .line 173
    .line 174
    add-int/2addr v3, v5

    .line 175
    aget-byte v1, p1, v1

    .line 176
    .line 177
    and-int/lit16 v7, v1, 0xff

    .line 178
    .line 179
    and-int/lit16 v8, v1, 0x80

    .line 180
    .line 181
    if-eqz v8, :cond_9

    .line 182
    .line 183
    and-int/lit8 v1, v1, 0x7f

    .line 184
    .line 185
    const/4 v7, 0x0

    .line 186
    :goto_1
    add-int/lit8 v8, v1, -0x1

    .line 187
    .line 188
    if-lez v1, :cond_9

    .line 189
    .line 190
    shl-int/lit8 v1, v7, 0x8

    .line 191
    .line 192
    add-int/lit8 v7, v3, 0x1

    .line 193
    .line 194
    aget-byte v3, p1, v3

    .line 195
    .line 196
    and-int/lit16 v3, v3, 0xff

    .line 197
    .line 198
    add-int/2addr v1, v3

    .line 199
    move v3, v7

    .line 200
    move v7, v1

    .line 201
    move v1, v8

    .line 202
    goto :goto_1

    .line 203
    :cond_9
    add-int/2addr v3, v7

    .line 204
    add-int/lit8 v1, v3, 0x1

    .line 205
    .line 206
    add-int/2addr v3, v5

    .line 207
    aget-byte v1, p1, v1

    .line 208
    .line 209
    and-int/lit16 v7, v1, 0xff

    .line 210
    .line 211
    and-int/lit16 v8, v1, 0x80

    .line 212
    .line 213
    if-eqz v8, :cond_a

    .line 214
    .line 215
    and-int/lit8 v1, v1, 0x7f

    .line 216
    .line 217
    const/4 v7, 0x0

    .line 218
    :goto_2
    add-int/lit8 v8, v1, -0x1

    .line 219
    .line 220
    if-lez v1, :cond_a

    .line 221
    .line 222
    shl-int/lit8 v1, v7, 0x8

    .line 223
    .line 224
    add-int/lit8 v7, v3, 0x1

    .line 225
    .line 226
    aget-byte v3, p1, v3

    .line 227
    .line 228
    and-int/lit16 v3, v3, 0xff

    .line 229
    .line 230
    add-int/2addr v1, v3

    .line 231
    move v3, v7

    .line 232
    move v7, v1

    .line 233
    move v1, v8

    .line 234
    goto :goto_2

    .line 235
    :cond_a
    new-array v1, v7, [B

    .line 236
    .line 237
    iput-object v1, p0, La9/t;->k:[B

    .line 238
    .line 239
    invoke-static {p1, v3, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    .line 241
    .line 242
    add-int/2addr v3, v7

    .line 243
    add-int/lit8 v1, v3, 0x1

    .line 244
    .line 245
    add-int/2addr v3, v5

    .line 246
    aget-byte v1, p1, v1

    .line 247
    .line 248
    and-int/lit16 v7, v1, 0xff

    .line 249
    .line 250
    and-int/lit16 v8, v1, 0x80

    .line 251
    .line 252
    if-eqz v8, :cond_b

    .line 253
    .line 254
    and-int/lit8 v1, v1, 0x7f

    .line 255
    .line 256
    const/4 v7, 0x0

    .line 257
    :goto_3
    add-int/lit8 v8, v1, -0x1

    .line 258
    .line 259
    if-lez v1, :cond_b

    .line 260
    .line 261
    shl-int/lit8 v1, v7, 0x8

    .line 262
    .line 263
    add-int/lit8 v7, v3, 0x1

    .line 264
    .line 265
    aget-byte v3, p1, v3

    .line 266
    .line 267
    and-int/lit16 v3, v3, 0xff

    .line 268
    .line 269
    add-int/2addr v1, v3

    .line 270
    move v3, v7

    .line 271
    move v7, v1

    .line 272
    move v1, v8

    .line 273
    goto :goto_3

    .line 274
    :cond_b
    new-array v1, v7, [B

    .line 275
    .line 276
    invoke-static {p1, v3, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    .line 278
    .line 279
    add-int/2addr v3, v7

    .line 280
    const/4 v7, 0x0

    .line 281
    :goto_4
    sget-object v8, La9/t;->l:[[B

    .line 282
    .line 283
    const/4 v9, 0x3

    .line 284
    if-ge v7, v9, :cond_d

    .line 285
    .line 286
    aget-object v8, v8, v7

    .line 287
    .line 288
    invoke-static {v8, v1}, La9/h0;->a([B[B)Z

    .line 289
    .line 290
    .line 291
    move-result v8

    .line 292
    if-eqz v8, :cond_c

    .line 293
    .line 294
    aget-object v1, v6, v7

    .line 295
    .line 296
    sget-object v6, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 297
    .line 298
    invoke-static {v1, v6}, La9/h0;->k(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    iput-object v1, p0, La9/t;->h:[B

    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_d
    :goto_5
    add-int/lit8 v1, v3, 0x1

    .line 309
    .line 310
    add-int/2addr v3, v5

    .line 311
    aget-byte v1, p1, v1

    .line 312
    .line 313
    and-int/lit16 v5, v1, 0xff

    .line 314
    .line 315
    and-int/lit16 v6, v1, 0x80

    .line 316
    .line 317
    if-eqz v6, :cond_e

    .line 318
    .line 319
    and-int/lit8 v1, v1, 0x7f

    .line 320
    .line 321
    const/4 v5, 0x0

    .line 322
    :goto_6
    add-int/lit8 v6, v1, -0x1

    .line 323
    .line 324
    if-lez v1, :cond_e

    .line 325
    .line 326
    shl-int/lit8 v1, v5, 0x8

    .line 327
    .line 328
    add-int/lit8 v5, v3, 0x1

    .line 329
    .line 330
    aget-byte v3, p1, v3

    .line 331
    .line 332
    and-int/lit16 v3, v3, 0xff

    .line 333
    .line 334
    add-int/2addr v1, v3

    .line 335
    move v3, v5

    .line 336
    move v5, v1

    .line 337
    move v1, v6

    .line 338
    goto :goto_6

    .line 339
    :cond_e
    new-array v1, v5, [B

    .line 340
    .line 341
    invoke-static {p1, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    .line 343
    .line 344
    invoke-static {v1}, La9/t;->s([B)[[B

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    aget-object v1, p1, v2

    .line 349
    .line 350
    iput-object v1, p0, La9/t;->i:[B

    .line 351
    .line 352
    aget-object p1, p1, v4

    .line 353
    .line 354
    iput-object p1, p0, La9/t;->j:[B

    .line 355
    .line 356
    return v4

    .line 357
    :cond_f
    :goto_7
    new-instance v1, La9/a;

    .line 358
    .line 359
    invoke-direct {v1, p1}, La9/a;-><init>([B)V

    .line 360
    .line 361
    .line 362
    array-length p1, p1

    .line 363
    invoke-virtual {v1, p1}, La9/a;->r(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 364
    .line 365
    .line 366
    :try_start_2
    const-string p1, ""

    .line 367
    .line 368
    invoke-virtual {v1, v4, p1}, La9/a;->f(ILjava/lang/String;)[[B

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    aget-object p1, p1, v2

    .line 373
    .line 374
    iput-object p1, p0, La9/t;->k:[B

    .line 375
    .line 376
    array-length p1, p1
    :try_end_2
    .catch La9/n; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 377
    return v4

    .line 378
    :catch_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    sget-object p1, La9/l;->f:Lgf/g;

    .line 382
    .line 383
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 384
    .line 385
    .line 386
    return v2

    .line 387
    :catch_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    sget-object p1, La9/l;->f:Lgf/g;

    .line 391
    .line 392
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 393
    .line 394
    .line 395
    return v2
.end method

.method public final u()[B
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-byte v0, v1, v2

    .line 6
    .line 7
    sget-object v3, La9/t;->l:[[B

    .line 8
    .line 9
    iget-object v4, p0, La9/t;->i:[B

    .line 10
    .line 11
    array-length v5, v4

    .line 12
    const/16 v6, 0x30

    .line 13
    .line 14
    const/16 v7, 0x40

    .line 15
    .line 16
    const/4 v8, 0x2

    .line 17
    if-lt v5, v7, :cond_0

    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    array-length v5, v4

    .line 22
    if-lt v5, v6, :cond_1

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v5, 0x0

    .line 27
    :goto_0
    aget-object v3, v3, v5

    .line 28
    .line 29
    iget-object v5, p0, La9/t;->j:[B

    .line 30
    .line 31
    array-length v7, v4

    .line 32
    add-int/2addr v7, v0

    .line 33
    array-length v9, v5

    .line 34
    add-int/2addr v7, v9

    .line 35
    new-array v9, v7, [B

    .line 36
    .line 37
    const/4 v10, 0x4

    .line 38
    aput-byte v10, v9, v2

    .line 39
    .line 40
    array-length v11, v4

    .line 41
    invoke-static {v4, v2, v9, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    array-length v4, v4

    .line 45
    add-int/2addr v4, v0

    .line 46
    array-length v11, v5

    .line 47
    invoke-static {v5, v2, v9, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v4, v7, 0x1

    .line 51
    .line 52
    and-int/lit16 v5, v4, 0x80

    .line 53
    .line 54
    const/4 v11, 0x3

    .line 55
    if-nez v5, :cond_2

    .line 56
    .line 57
    const/4 v5, 0x3

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    const/4 v5, 0x4

    .line 60
    :goto_1
    add-int v12, v7, v5

    .line 61
    .line 62
    new-array v13, v12, [B

    .line 63
    .line 64
    invoke-static {v9, v2, v13, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    aput-byte v11, v13, v2

    .line 68
    .line 69
    if-ne v5, v11, :cond_3

    .line 70
    .line 71
    int-to-byte v4, v4

    .line 72
    aput-byte v4, v13, v0

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    const/16 v5, -0x7f

    .line 76
    .line 77
    aput-byte v5, v13, v0

    .line 78
    .line 79
    int-to-byte v4, v4

    .line 80
    aput-byte v4, v13, v8

    .line 81
    .line 82
    :goto_2
    invoke-static {v0}, La9/r;->b(I)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    add-int/2addr v4, v11

    .line 87
    iget-object v5, p0, La9/t;->k:[B

    .line 88
    .line 89
    array-length v5, v5

    .line 90
    invoke-static {v5}, La9/r;->b(I)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    add-int/2addr v5, v4

    .line 95
    iget-object v4, p0, La9/t;->k:[B

    .line 96
    .line 97
    array-length v4, v4

    .line 98
    add-int/2addr v5, v4

    .line 99
    add-int/2addr v5, v0

    .line 100
    array-length v4, v3

    .line 101
    invoke-static {v4}, La9/r;->b(I)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    add-int/2addr v4, v5

    .line 106
    array-length v5, v3

    .line 107
    add-int/2addr v4, v5

    .line 108
    add-int/2addr v4, v0

    .line 109
    invoke-static {v12}, La9/r;->b(I)I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    add-int/2addr v5, v4

    .line 114
    add-int/2addr v5, v12

    .line 115
    invoke-static {v5}, La9/r;->b(I)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    add-int/2addr v4, v0

    .line 120
    add-int/2addr v4, v5

    .line 121
    new-array v4, v4, [B

    .line 122
    .line 123
    aput-byte v6, v4, v2

    .line 124
    .line 125
    invoke-static {v0, v5, v4}, La9/r;->r(II[B)I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    invoke-static {v5, v4, v1}, La9/r;->q(I[B[B)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    iget-object v5, p0, La9/t;->k:[B

    .line 134
    .line 135
    add-int/lit8 v6, v1, 0x1

    .line 136
    .line 137
    aput-byte v10, v4, v1

    .line 138
    .line 139
    array-length v1, v5

    .line 140
    invoke-static {v6, v1, v4}, La9/r;->r(II[B)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    array-length v6, v5

    .line 145
    invoke-static {v5, v2, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    .line 147
    .line 148
    array-length v5, v5

    .line 149
    add-int/2addr v1, v5

    .line 150
    add-int/lit8 v5, v1, 0x1

    .line 151
    .line 152
    const/16 v6, -0x60

    .line 153
    .line 154
    aput-byte v6, v4, v1

    .line 155
    .line 156
    array-length v1, v3

    .line 157
    invoke-static {v5, v1, v4}, La9/r;->r(II[B)I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    array-length v5, v3

    .line 162
    invoke-static {v3, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    .line 164
    .line 165
    array-length v3, v3

    .line 166
    add-int/2addr v1, v3

    .line 167
    add-int/2addr v0, v1

    .line 168
    const/16 v3, -0x5f

    .line 169
    .line 170
    aput-byte v3, v4, v1

    .line 171
    .line 172
    invoke-static {v0, v12, v4}, La9/r;->r(II[B)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    invoke-static {v13, v2, v4, v0, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    .line 178
    .line 179
    return-object v4
.end method
