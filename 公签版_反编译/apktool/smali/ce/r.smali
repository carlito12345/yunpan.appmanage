.class public final Lce/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lce/q0;


# static fields
.field public static final e:Lde/d;


# instance fields
.field public final a:Ljava/security/MessageDigest;

.field public final b:[B

.field public c:Z

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lde/d;->r()Lde/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lce/r;->e:Lde/d;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 4

    .line 1
    sget-object v0, Lce/r;->e:Lde/d;

    .line 2
    .line 3
    const-string v1, "MD5"

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, p0, Lce/r;->c:Z

    .line 10
    .line 11
    :try_start_0
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iput-object v3, p0, Lce/r;->a:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    iput-object p1, p0, Lce/r;->b:[B

    .line 18
    .line 19
    iput-boolean p2, p0, Lce/r;->c:Z

    .line 20
    .line 21
    iput v2, p0, Lce/r;->d:I

    .line 22
    .line 23
    sget p2, Lde/d;->b:I

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    if-lt p2, v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    array-length p2, p1

    .line 32
    invoke-static {v0, p1, v2, p2}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :catch_0
    move-exception p1

    .line 37
    sget p2, Lde/d;->b:I

    .line 38
    .line 39
    if-lez p2, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    new-instance p2, Lce/r0;

    .line 45
    .line 46
    invoke-direct {p2, v1, p1}, Lce/r0;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 47
    .line 48
    .line 49
    throw p2
.end method


# virtual methods
.method public final a([BIILce/q;Lce/q;)V
    .locals 5

    .line 1
    sget-object v0, Lce/r;->e:Lde/d;

    .line 2
    .line 3
    iget v1, p0, Lce/r;->d:I

    .line 4
    .line 5
    iput v1, p4, Lce/q;->t:I

    .line 6
    .line 7
    const/4 p4, 0x0

    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    iput v1, p5, Lce/q;->t:I

    .line 13
    .line 14
    iput-boolean p4, p5, Lce/q;->v:Z

    .line 15
    .line 16
    :cond_0
    :try_start_0
    iget-object p5, p0, Lce/r;->b:[B

    .line 17
    .line 18
    array-length v1, p5

    .line 19
    invoke-virtual {p0, p5, p4, v1}, Lce/r;->b([BII)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 p5, p2, 0xe

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    const/16 v2, 0x8

    .line 26
    .line 27
    if-ge v1, v2, :cond_1

    .line 28
    .line 29
    add-int v2, p5, v1

    .line 30
    .line 31
    aput-byte p4, p1, v2

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_4

    .line 38
    :catch_0
    move-exception p1

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    iget v1, p0, Lce/r;->d:I

    .line 41
    .line 42
    int-to-long v3, v1

    .line 43
    invoke-static {v3, v4, p1, p5}, Lce/q;->r(J[BI)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lce/r;->b([BII)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lce/r;->a:Ljava/security/MessageDigest;

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    sget p3, Lde/d;->b:I

    .line 56
    .line 57
    const/4 v1, 0x5

    .line 58
    if-lt p3, v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    array-length p3, p2

    .line 64
    invoke-static {v0, p2, p4, p3}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-static {p2, p4, p1, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    iget-boolean p2, p0, Lce/r;->c:Z

    .line 74
    .line 75
    if-eqz p2, :cond_3

    .line 76
    .line 77
    iput-boolean p4, p0, Lce/r;->c:Z

    .line 78
    .line 79
    const-string p2, "BSRSPYL "

    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {p2, p4, p1, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    :cond_3
    :goto_1
    iget p1, p0, Lce/r;->d:I

    .line 89
    .line 90
    add-int/lit8 p1, p1, 0x2

    .line 91
    .line 92
    iput p1, p0, Lce/r;->d:I

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :goto_2
    :try_start_1
    sget p2, Lde/d;->b:I

    .line 96
    .line 97
    if-lez p2, :cond_3

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :goto_3
    return-void

    .line 104
    :goto_4
    iget p2, p0, Lce/r;->d:I

    .line 105
    .line 106
    add-int/lit8 p2, p2, 0x2

    .line 107
    .line 108
    iput p2, p0, Lce/r;->d:I

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :goto_5
    throw p1

    .line 112
    :goto_6
    goto :goto_5
.end method

.method public final b([BII)V
    .locals 2

    .line 1
    sget v0, Lde/d;->b:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lce/r;->e:Lde/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x100

    .line 12
    .line 13
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v0, p1, p2, v1}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 21
    .line 22
    .line 23
    :cond_0
    if-nez p3, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lce/r;->a:Ljava/security/MessageDigest;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final c([BLce/q;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lce/r;->b:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v2, v1}, Lce/r;->b([BII)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0xe

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-virtual {p0, p1, v1, v0}, Lce/r;->b([BII)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    new-array v1, v0, [B

    .line 17
    .line 18
    iget v3, p2, Lce/q;->t:I

    .line 19
    .line 20
    int-to-long v3, v3

    .line 21
    invoke-static {v3, v4, v1, v2}, Lce/q;->r(J[BI)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1, v2, v0}, Lce/r;->b([BII)V

    .line 25
    .line 26
    .line 27
    iget-byte v1, p2, Lce/q;->c:B

    .line 28
    .line 29
    const/16 v3, 0x2e

    .line 30
    .line 31
    const/16 v4, 0x1a

    .line 32
    .line 33
    if-ne v1, v3, :cond_0

    .line 34
    .line 35
    move-object v1, p2

    .line 36
    check-cast v1, Lce/e0;

    .line 37
    .line 38
    iget v3, p2, Lce/q;->f:I

    .line 39
    .line 40
    iget v5, v1, Lce/e0;->I:I

    .line 41
    .line 42
    sub-int/2addr v3, v5

    .line 43
    add-int/lit8 v3, v3, -0x16

    .line 44
    .line 45
    invoke-virtual {p0, p1, v4, v3}, Lce/r;->b([BII)V

    .line 46
    .line 47
    .line 48
    iget-object v3, v1, Lce/e0;->F:[B

    .line 49
    .line 50
    iget v4, v1, Lce/e0;->G:I

    .line 51
    .line 52
    iget v1, v1, Lce/e0;->I:I

    .line 53
    .line 54
    invoke-virtual {p0, v3, v4, v1}, Lce/r;->b([BII)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget v1, p2, Lce/q;->f:I

    .line 59
    .line 60
    add-int/lit8 v1, v1, -0x16

    .line 61
    .line 62
    invoke-virtual {p0, p1, v4, v1}, Lce/r;->b([BII)V

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object v1, p0, Lce/r;->a:Ljava/security/MessageDigest;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    sget v3, Lde/d;->b:I

    .line 72
    .line 73
    const/4 v4, 0x5

    .line 74
    sget-object v5, Lce/r;->e:Lde/d;

    .line 75
    .line 76
    if-lt v3, v4, :cond_1

    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    array-length v3, v1

    .line 82
    invoke-static {v5, v1, v2, v3}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 86
    .line 87
    .line 88
    :cond_1
    const/4 v3, 0x0

    .line 89
    :goto_1
    if-ge v3, v0, :cond_4

    .line 90
    .line 91
    aget-byte v4, v1, v3

    .line 92
    .line 93
    const/16 v6, 0x12

    .line 94
    .line 95
    add-int v7, v6, v3

    .line 96
    .line 97
    aget-byte v7, p1, v7

    .line 98
    .line 99
    if-eq v4, v7, :cond_3

    .line 100
    .line 101
    sget v3, Lde/d;->b:I

    .line 102
    .line 103
    const/4 v4, 0x2

    .line 104
    if-lt v3, v4, :cond_2

    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    invoke-static {v5, v1, v2, v0}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 110
    .line 111
    .line 112
    invoke-static {v5, p1, v6, v0}, Lde/c;->a(Ljava/io/PrintStream;[BII)V

    .line 113
    .line 114
    .line 115
    :cond_2
    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p2, Lce/q;->v:Z

    .line 117
    .line 118
    return-void

    .line 119
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    iput-boolean v2, p2, Lce/q;->v:Z

    .line 123
    .line 124
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LM_COMPATIBILITY="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget v1, Lce/q0;->j0:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " MacSigningKey="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lce/r;->b:[B

    .line 19
    .line 20
    array-length v2, v1

    .line 21
    invoke-static {v2, v1}, Lde/c;->d(I[B)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
