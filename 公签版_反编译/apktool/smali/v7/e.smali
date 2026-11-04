.class public Lv7/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lv7/b;


# instance fields
.field public final a:Lv7/a;

.field public final b:Ljava/lang/Character;

.field public volatile c:Lv7/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lv7/c;

    .line 2
    .line 3
    const-string v1, "base64()"

    .line 4
    .line 5
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lv7/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lv7/c;

    .line 11
    .line 12
    const-string v1, "base64Url()"

    .line 13
    .line 14
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Lv7/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lv7/e;

    .line 20
    .line 21
    const-string v1, "base32()"

    .line 22
    .line 23
    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Lv7/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lv7/e;

    .line 29
    .line 30
    const-string v1, "base32Hex()"

    .line 31
    .line 32
    const-string v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    .line 33
    .line 34
    invoke-direct {v0, v1, v2}, Lv7/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lv7/b;

    .line 38
    .line 39
    new-instance v1, Lv7/a;

    .line 40
    .line 41
    const-string v2, "0123456789ABCDEF"

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "base16()"

    .line 48
    .line 49
    invoke-direct {v1, v3, v2}, Lv7/a;-><init>(Ljava/lang/String;[C)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v0, v1}, Lv7/b;-><init>(Lv7/a;)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lv7/e;->d:Lv7/b;

    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 8
    new-instance v1, Lv7/a;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lv7/a;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v1, v0}, Lv7/e;-><init>(Lv7/a;Ljava/lang/Character;)V

    return-void
.end method

.method public constructor <init>(Lv7/a;Ljava/lang/Character;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv7/e;->a:Lv7/a;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 4
    iget-object p1, p1, Lv7/a;->g:[B

    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte p1, p1, v0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 5
    :goto_0
    const-string v0, "Padding character %s was already in alphabet"

    .line 6
    invoke-static {p1, v0, p2}, La9/o;->l(ZLjava/lang/String;Ljava/lang/Comparable;)V

    .line 7
    iput-object p2, p0, Lv7/e;->b:Ljava/lang/Character;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lv7/e;->h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lv7/e;->a:Lv7/a;

    .line 10
    .line 11
    iget v1, v1, Lv7/a;->d:I

    .line 12
    .line 13
    int-to-long v1, v1

    .line 14
    int-to-long v3, v0

    .line 15
    mul-long v1, v1, v3

    .line 16
    .line 17
    const-wide/16 v3, 0x7

    .line 18
    .line 19
    add-long/2addr v1, v3

    .line 20
    const-wide/16 v3, 0x8

    .line 21
    .line 22
    div-long/2addr v1, v3

    .line 23
    long-to-int v0, v1

    .line 24
    new-array v1, v0, [B

    .line 25
    .line 26
    invoke-virtual {p0, v1, p1}, Lv7/e;->b([BLjava/lang/CharSequence;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-ne p1, v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-array v0, p1, [B

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lv7/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    move-object v1, v0

    .line 40
    :goto_0
    return-object v1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public b([BLjava/lang/CharSequence;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lv7/e;->h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, v0, Lv7/e;->a:Lv7/a;

    .line 14
    .line 15
    iget v4, v3, Lv7/a;->e:I

    .line 16
    .line 17
    rem-int/2addr v2, v4

    .line 18
    iget-object v4, v3, Lv7/a;->h:[Z

    .line 19
    .line 20
    aget-boolean v2, v4, v2

    .line 21
    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-ge v4, v6, :cond_3

    .line 32
    .line 33
    const-wide/16 v6, 0x0

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    :goto_1
    iget v10, v3, Lv7/a;->d:I

    .line 38
    .line 39
    iget v11, v3, Lv7/a;->e:I

    .line 40
    .line 41
    if-ge v8, v11, :cond_1

    .line 42
    .line 43
    shl-long/2addr v6, v10

    .line 44
    add-int v10, v4, v8

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    if-ge v10, v11, :cond_0

    .line 51
    .line 52
    add-int/lit8 v10, v9, 0x1

    .line 53
    .line 54
    add-int/2addr v9, v4

    .line 55
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    invoke-virtual {v3, v9}, Lv7/a;->a(C)I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    int-to-long v11, v9

    .line 64
    or-long/2addr v6, v11

    .line 65
    move v9, v10

    .line 66
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget v8, v3, Lv7/a;->f:I

    .line 70
    .line 71
    mul-int/lit8 v12, v8, 0x8

    .line 72
    .line 73
    mul-int v9, v9, v10

    .line 74
    .line 75
    sub-int/2addr v12, v9

    .line 76
    add-int/lit8 v8, v8, -0x1

    .line 77
    .line 78
    mul-int/lit8 v8, v8, 0x8

    .line 79
    .line 80
    :goto_2
    if-lt v8, v12, :cond_2

    .line 81
    .line 82
    add-int/lit8 v9, v5, 0x1

    .line 83
    .line 84
    ushr-long v13, v6, v8

    .line 85
    .line 86
    const-wide/16 v15, 0xff

    .line 87
    .line 88
    and-long/2addr v13, v15

    .line 89
    long-to-int v10, v13

    .line 90
    int-to-byte v10, v10

    .line 91
    aput-byte v10, p1, v5

    .line 92
    .line 93
    add-int/lit8 v8, v8, -0x8

    .line 94
    .line 95
    move v5, v9

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    add-int/2addr v4, v11

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    return v5

    .line 100
    :cond_4
    new-instance v2, Lv7/d;

    .line 101
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v4, "Invalid input length "

    .line 105
    .line 106
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v2, v1}, Lv7/d;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :goto_3
    throw v2

    .line 125
    :goto_4
    goto :goto_3
.end method

.method public final c([B)Ljava/lang/String;
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    array-length v1, p1

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {v2, v0, v1}, La9/o;->q(III)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    iget-object v2, p0, Lv7/e;->a:Lv7/a;

    .line 10
    .line 11
    iget v3, v2, Lv7/a;->e:I

    .line 12
    .line 13
    iget v2, v2, Lv7/a;->f:I

    .line 14
    .line 15
    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 16
    .line 17
    invoke-static {v0, v2, v4}, Lcom/bumptech/glide/d;->m(IILjava/math/RoundingMode;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    mul-int v2, v2, v3

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p0, v1, p1, v0}, Lv7/e;->e(Ljava/lang/StringBuilder;[BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :catch_0
    move-exception p1

    .line 35
    new-instance v0, Ljava/lang/AssertionError;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public final d(Ljava/lang/StringBuilder;[BII)V
    .locals 8

    .line 1
    add-int v0, p3, p4

    .line 2
    .line 3
    array-length v1, p2

    .line 4
    invoke-static {p3, v0, v1}, La9/o;->q(III)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lv7/e;->a:Lv7/a;

    .line 8
    .line 9
    iget v1, v0, Lv7/a;->f:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-gt p4, v1, :cond_0

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
    invoke-static {v1}, La9/o;->k(Z)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_1
    const/16 v5, 0x8

    .line 24
    .line 25
    if-ge v1, p4, :cond_1

    .line 26
    .line 27
    add-int v6, p3, v1

    .line 28
    .line 29
    aget-byte v6, p2, v6

    .line 30
    .line 31
    and-int/lit16 v6, v6, 0xff

    .line 32
    .line 33
    int-to-long v6, v6

    .line 34
    or-long/2addr v3, v6

    .line 35
    shl-long/2addr v3, v5

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 p2, p4, 0x1

    .line 40
    .line 41
    mul-int/lit8 p2, p2, 0x8

    .line 42
    .line 43
    iget p3, v0, Lv7/a;->d:I

    .line 44
    .line 45
    sub-int/2addr p2, p3

    .line 46
    :goto_2
    mul-int/lit8 v1, p4, 0x8

    .line 47
    .line 48
    if-ge v2, v1, :cond_2

    .line 49
    .line 50
    sub-int v1, p2, v2

    .line 51
    .line 52
    ushr-long v6, v3, v1

    .line 53
    .line 54
    long-to-int v1, v6

    .line 55
    iget v6, v0, Lv7/a;->c:I

    .line 56
    .line 57
    and-int/2addr v1, v6

    .line 58
    iget-object v6, v0, Lv7/a;->b:[C

    .line 59
    .line 60
    aget-char v1, v6, v1

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 63
    .line 64
    .line 65
    add-int/2addr v2, p3

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    iget-object p2, p0, Lv7/e;->b:Ljava/lang/Character;

    .line 68
    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    :goto_3
    iget p4, v0, Lv7/a;->f:I

    .line 72
    .line 73
    mul-int/lit8 p4, p4, 0x8

    .line 74
    .line 75
    if-ge v2, p4, :cond_3

    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    .line 78
    .line 79
    .line 80
    move-result p4

    .line 81
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    .line 82
    .line 83
    .line 84
    add-int/2addr v2, p3

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    return-void
.end method

.method public e(Ljava/lang/StringBuilder;[BI)V
    .locals 4

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v1, p3, v0}, La9/o;->q(III)V

    .line 4
    .line 5
    .line 6
    :goto_0
    if-ge v1, p3, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lv7/e;->a:Lv7/a;

    .line 9
    .line 10
    iget v2, v0, Lv7/a;->f:I

    .line 11
    .line 12
    sub-int v3, p3, v1

    .line 13
    .line 14
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {p0, p1, p2, v1, v2}, Lv7/e;->d(Ljava/lang/StringBuilder;[BII)V

    .line 19
    .line 20
    .line 21
    iget v0, v0, Lv7/a;->f:I

    .line 22
    .line 23
    add-int/2addr v1, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lv7/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lv7/e;

    .line 7
    .line 8
    iget-object v0, p1, Lv7/e;->a:Lv7/a;

    .line 9
    .line 10
    iget-object v2, p0, Lv7/e;->a:Lv7/a;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Lv7/a;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lv7/e;->b:Ljava/lang/Character;

    .line 19
    .line 20
    iget-object p1, p1, Lv7/e;->b:Ljava/lang/Character;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_0
    return v1
.end method

.method public final f()Lv7/e;
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lv7/e;->c:Lv7/e;

    .line 4
    .line 5
    if-nez v2, :cond_d

    .line 6
    .line 7
    iget-object v2, p0, Lv7/e;->a:Lv7/a;

    .line 8
    .line 9
    iget-object v3, v2, Lv7/a;->b:[C

    .line 10
    .line 11
    array-length v4, v3

    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    if-ge v5, v4, :cond_b

    .line 14
    .line 15
    aget-char v6, v3, v5

    .line 16
    .line 17
    invoke-static {v6}, Lqf/c;->I(C)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-eqz v6, :cond_a

    .line 22
    .line 23
    array-length v4, v3

    .line 24
    const/4 v5, 0x0

    .line 25
    :goto_1
    if-ge v5, v4, :cond_1

    .line 26
    .line 27
    aget-char v6, v3, v5

    .line 28
    .line 29
    const/16 v7, 0x61

    .line 30
    .line 31
    if-lt v6, v7, :cond_0

    .line 32
    .line 33
    const/16 v7, 0x7a

    .line 34
    .line 35
    if-gt v6, v7, :cond_0

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    add-int/2addr v5, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v4, 0x0

    .line 42
    :goto_2
    xor-int/2addr v4, v1

    .line 43
    const-string v5, "Cannot call lowerCase() on a mixed-case alphabet"

    .line 44
    .line 45
    invoke-static {v5, v4}, La9/o;->s(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    array-length v4, v3

    .line 49
    new-array v4, v4, [C

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    :goto_3
    array-length v6, v3

    .line 53
    if-ge v5, v6, :cond_3

    .line 54
    .line 55
    aget-char v6, v3, v5

    .line 56
    .line 57
    invoke-static {v6}, Lqf/c;->I(C)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_2

    .line 62
    .line 63
    xor-int/lit8 v6, v6, 0x20

    .line 64
    .line 65
    int-to-char v6, v6

    .line 66
    :cond_2
    aput-char v6, v4, v5

    .line 67
    .line 68
    add-int/2addr v5, v1

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    new-instance v3, Lv7/a;

    .line 71
    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v6, v2, Lv7/a;->a:Ljava/lang/String;

    .line 78
    .line 79
    const-string v7, ".lowerCase()"

    .line 80
    .line 81
    invoke-static {v6, v7, v5}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-direct {v3, v5, v4}, Lv7/a;-><init>(Ljava/lang/String;[C)V

    .line 86
    .line 87
    .line 88
    iget-boolean v2, v2, Lv7/a;->i:Z

    .line 89
    .line 90
    if-eqz v2, :cond_9

    .line 91
    .line 92
    iget-boolean v2, v3, Lv7/a;->i:Z

    .line 93
    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    goto :goto_7

    .line 97
    :cond_4
    iget-object v2, v3, Lv7/a;->g:[B

    .line 98
    .line 99
    array-length v4, v2

    .line 100
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    const/16 v5, 0x41

    .line 105
    .line 106
    :goto_4
    const/16 v6, 0x5a

    .line 107
    .line 108
    if-gt v5, v6, :cond_8

    .line 109
    .line 110
    or-int/lit8 v6, v5, 0x20

    .line 111
    .line 112
    aget-byte v7, v2, v5

    .line 113
    .line 114
    aget-byte v8, v2, v6

    .line 115
    .line 116
    const/4 v9, -0x1

    .line 117
    if-ne v7, v9, :cond_5

    .line 118
    .line 119
    aput-byte v8, v4, v5

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_5
    if-ne v8, v9, :cond_6

    .line 123
    .line 124
    const/4 v8, 0x1

    .line 125
    goto :goto_5

    .line 126
    :cond_6
    const/4 v8, 0x0

    .line 127
    :goto_5
    int-to-char v9, v5

    .line 128
    int-to-char v10, v6

    .line 129
    if-eqz v8, :cond_7

    .line 130
    .line 131
    aput-byte v7, v4, v6

    .line 132
    .line 133
    :goto_6
    add-int/2addr v5, v1

    .line 134
    goto :goto_4

    .line 135
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 136
    .line 137
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    const/4 v5, 0x2

    .line 146
    new-array v5, v5, [Ljava/lang/Object;

    .line 147
    .line 148
    aput-object v3, v5, v0

    .line 149
    .line 150
    aput-object v4, v5, v1

    .line 151
    .line 152
    const-string v0, "Can\'t ignoreCase() since \'%s\' and \'%s\' encode different values"

    .line 153
    .line 154
    invoke-static {v0, v5}, Landroid/support/v4/media/session/b;->y(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v2

    .line 162
    :cond_8
    new-instance v0, Lv7/a;

    .line 163
    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    iget-object v5, v3, Lv7/a;->a:Ljava/lang/String;

    .line 170
    .line 171
    const-string v6, ".ignoreCase()"

    .line 172
    .line 173
    invoke-static {v5, v6, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    iget-object v3, v3, Lv7/a;->b:[C

    .line 178
    .line 179
    invoke-direct {v0, v2, v3, v4, v1}, Lv7/a;-><init>(Ljava/lang/String;[C[BZ)V

    .line 180
    .line 181
    .line 182
    move-object v3, v0

    .line 183
    :cond_9
    :goto_7
    move-object v2, v3

    .line 184
    goto :goto_8

    .line 185
    :cond_a
    add-int/2addr v5, v1

    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_b
    :goto_8
    iget-object v0, p0, Lv7/e;->a:Lv7/a;

    .line 189
    .line 190
    if-ne v2, v0, :cond_c

    .line 191
    .line 192
    move-object v2, p0

    .line 193
    goto :goto_9

    .line 194
    :cond_c
    iget-object v0, p0, Lv7/e;->b:Ljava/lang/Character;

    .line 195
    .line 196
    invoke-virtual {p0, v2, v0}, Lv7/e;->g(Lv7/a;Ljava/lang/Character;)Lv7/e;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    move-object v2, v0

    .line 201
    :goto_9
    iput-object v2, p0, Lv7/e;->c:Lv7/e;

    .line 202
    .line 203
    :cond_d
    return-object v2
.end method

.method public g(Lv7/a;Ljava/lang/Character;)Lv7/e;
    .locals 1

    .line 1
    new-instance v0, Lv7/e;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lv7/e;-><init>(Lv7/a;Ljava/lang/Character;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lv7/e;->b:Ljava/lang/Character;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/lit8 v1, v1, -0x1

    .line 18
    .line 19
    :goto_0
    if-ltz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eq v2, v0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lv7/e;->a:Lv7/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv7/a;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lv7/e;->b:Ljava/lang/Character;

    .line 8
    .line 9
    invoke-static {v1}, Lj$/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    xor-int/2addr v0, v1

    .line 14
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BaseEncoding."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lv7/e;->a:Lv7/a;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    iget v1, v1, Lv7/a;->d:I

    .line 16
    .line 17
    rem-int/2addr v2, v1

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lv7/e;->b:Ljava/lang/Character;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const-string v1, ".omitPadding()"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v2, ".withPadChar(\'"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "\')"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
