.class public final Lfg/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfg/k;


# instance fields
.field public final a:Lfg/z;

.field public final b:Lfg/i;

.field public c:Z


# direct methods
.method public constructor <init>(Lfg/z;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lfg/t;->a:Lfg/z;

    .line 10
    .line 11
    new-instance p1, Lfg/i;

    .line 12
    .line 13
    invoke-direct {p1}, Lfg/i;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lfg/t;->b:Lfg/i;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final A()I
    .locals 3

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lfg/t;->F(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfg/t;->b:Lfg/i;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfg/i;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/high16 v1, -0x1000000

    .line 13
    .line 14
    and-int/2addr v1, v0

    .line 15
    ushr-int/lit8 v1, v1, 0x18

    .line 16
    .line 17
    const/high16 v2, 0xff0000

    .line 18
    .line 19
    and-int/2addr v2, v0

    .line 20
    ushr-int/lit8 v2, v2, 0x8

    .line 21
    .line 22
    or-int/2addr v1, v2

    .line 23
    const v2, 0xff00

    .line 24
    .line 25
    .line 26
    and-int/2addr v2, v0

    .line 27
    shl-int/lit8 v2, v2, 0x8

    .line 28
    .line 29
    or-int/2addr v1, v2

    .line 30
    and-int/lit16 v0, v0, 0xff

    .line 31
    .line 32
    shl-int/lit8 v0, v0, 0x18

    .line 33
    .line 34
    or-int/2addr v0, v1

    .line 35
    return v0
.end method

.method public final B(J)[B
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lfg/t;->F(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfg/t;->b:Lfg/i;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lfg/i;->B(J)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final D(Lfg/i;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfg/t;->b:Lfg/i;

    .line 2
    .line 3
    const-string v1, "sink"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lfg/t;->F(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lfg/i;->D(Lfg/i;J)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p2

    .line 16
    invoke-virtual {p1, v0}, Lfg/i;->writeAll(Lfg/z;)J

    .line 17
    .line 18
    .line 19
    throw p2
.end method

.method public final F(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lfg/t;->w(J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public final H()J
    .locals 6

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lfg/t;->F(J)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    int-to-long v2, v1

    .line 10
    invoke-virtual {p0, v2, v3}, Lfg/t;->w(J)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v3, p0, Lfg/t;->b:Lfg/i;

    .line 15
    .line 16
    if-eqz v2, :cond_5

    .line 17
    .line 18
    int-to-long v4, v0

    .line 19
    invoke-virtual {v3, v4, v5}, Lfg/i;->L(J)B

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v4, 0x30

    .line 24
    .line 25
    if-lt v2, v4, :cond_0

    .line 26
    .line 27
    const/16 v4, 0x39

    .line 28
    .line 29
    if-le v2, v4, :cond_2

    .line 30
    .line 31
    :cond_0
    const/16 v4, 0x61

    .line 32
    .line 33
    if-lt v2, v4, :cond_1

    .line 34
    .line 35
    const/16 v4, 0x66

    .line 36
    .line 37
    if-le v2, v4, :cond_2

    .line 38
    .line 39
    :cond_1
    const/16 v4, 0x41

    .line 40
    .line 41
    if-lt v2, v4, :cond_3

    .line 42
    .line 43
    const/16 v4, 0x46

    .line 44
    .line 45
    if-le v2, v4, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v0, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 54
    .line 55
    const/16 v1, 0x10

    .line 56
    .line 57
    invoke-static {v1}, La9/o;->r(I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, La9/o;->r(I)V

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "toString(this, checkRadix(radix))"

    .line 68
    .line 69
    invoke-static {v1, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_5
    :goto_2
    invoke-virtual {v3}, Lfg/i;->H()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    return-wide v0
.end method

.method public final I()Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Lfg/h;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lfg/h;-><init>(Lfg/k;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final buffer()Lfg/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lfg/t;->b:Lfg/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(J)Lfg/l;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lfg/t;->F(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lfg/t;->b:Lfg/i;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lfg/i;->c(J)Lfg/l;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfg/t;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lfg/t;->c:Z

    .line 7
    .line 8
    iget-object v0, p0, Lfg/t;->a:Lfg/z;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lfg/t;->b:Lfg/i;

    .line 14
    .line 15
    invoke-virtual {v0}, Lfg/i;->r()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final i()[B
    .locals 4

    .line 1
    iget-object v0, p0, Lfg/t;->a:Lfg/z;

    .line 2
    .line 3
    iget-object v1, p0, Lfg/t;->b:Lfg/i;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lfg/i;->writeAll(Lfg/z;)J

    .line 6
    .line 7
    .line 8
    iget-wide v2, v1, Lfg/i;->b:J

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Lfg/i;->B(J)[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final isOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfg/t;->c:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    return v0
.end method

.method public final j()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lfg/t;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lfg/t;->b:Lfg/i;

    .line 6
    .line 7
    invoke-virtual {v0}, Lfg/i;->j()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lfg/t;->a:Lfg/z;

    .line 14
    .line 15
    const-wide/16 v2, 0x2000

    .line 16
    .line 17
    invoke-interface {v1, v0, v2, v3}, Lfg/z;->read(Lfg/i;J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide/16 v2, -0x1

    .line 22
    .line 23
    cmp-long v4, v0, v2

    .line 24
    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v1, "closed"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public final k()J
    .locals 11

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lfg/t;->F(J)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    move-wide v4, v2

    .line 9
    :goto_0
    add-long v6, v4, v0

    .line 10
    .line 11
    invoke-virtual {p0, v6, v7}, Lfg/t;->w(J)Z

    .line 12
    .line 13
    .line 14
    move-result v8

    .line 15
    iget-object v9, p0, Lfg/t;->b:Lfg/i;

    .line 16
    .line 17
    if-eqz v8, :cond_4

    .line 18
    .line 19
    invoke-virtual {v9, v4, v5}, Lfg/i;->L(J)B

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    const/16 v10, 0x30

    .line 24
    .line 25
    if-lt v8, v10, :cond_0

    .line 26
    .line 27
    const/16 v10, 0x39

    .line 28
    .line 29
    if-le v8, v10, :cond_1

    .line 30
    .line 31
    :cond_0
    cmp-long v10, v4, v2

    .line 32
    .line 33
    if-nez v10, :cond_2

    .line 34
    .line 35
    const/16 v10, 0x2d

    .line 36
    .line 37
    if-eq v8, v10, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-wide v4, v6

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    cmp-long v0, v4, v2

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 48
    .line 49
    const/16 v1, 0x10

    .line 50
    .line 51
    invoke-static {v1}, La9/o;->r(I)V

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, La9/o;->r(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v8, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-string v2, "toString(this, checkRadix(radix))"

    .line 62
    .line 63
    invoke-static {v1, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v2, "Expected a digit or \'-\' but was 0x"

    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_4
    :goto_2
    invoke-virtual {v9}, Lfg/i;->k()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    return-wide v0
.end method

.method public final l(J)Ljava/lang/String;
    .locals 21

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-wide/from16 v7, p1

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v2, v7, v0

    .line 8
    .line 9
    if-ltz v2, :cond_3

    .line 10
    .line 11
    const-wide/16 v9, 0x1

    .line 12
    .line 13
    const-wide v11, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v0, v7, v11

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    move-wide v13, v11

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    add-long v0, v7, v9

    .line 25
    .line 26
    move-wide v13, v0

    .line 27
    :goto_0
    const/16 v1, 0xa

    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    move-object/from16 v0, p0

    .line 32
    .line 33
    move-wide v4, v13

    .line 34
    invoke-virtual/range {v0 .. v5}, Lfg/t;->r(BJJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    iget-object v2, v6, Lfg/t;->b:Lfg/i;

    .line 39
    .line 40
    const-wide/16 v3, -0x1

    .line 41
    .line 42
    cmp-long v5, v0, v3

    .line 43
    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    invoke-static {v2, v0, v1}, Lgg/a;->a(Lfg/i;J)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    cmp-long v0, v13, v11

    .line 52
    .line 53
    if-gez v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v6, v13, v14}, Lfg/t;->w(J)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    sub-long v0, v13, v9

    .line 62
    .line 63
    invoke-virtual {v2, v0, v1}, Lfg/i;->L(J)B

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/16 v1, 0xd

    .line 68
    .line 69
    if-ne v0, v1, :cond_2

    .line 70
    .line 71
    add-long/2addr v9, v13

    .line 72
    invoke-virtual {v6, v9, v10}, Lfg/t;->w(J)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-virtual {v2, v13, v14}, Lfg/i;->L(J)B

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/16 v1, 0xa

    .line 83
    .line 84
    if-ne v0, v1, :cond_2

    .line 85
    .line 86
    invoke-static {v2, v13, v14}, Lgg/a;->a(Lfg/i;J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :goto_1
    return-object v0

    .line 91
    :cond_2
    new-instance v0, Lfg/i;

    .line 92
    .line 93
    invoke-direct {v0}, Lfg/i;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-wide v3, v2, Lfg/i;->b:J

    .line 97
    .line 98
    const/16 v1, 0x20

    .line 99
    .line 100
    int-to-long v9, v1

    .line 101
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 102
    .line 103
    .line 104
    move-result-wide v19

    .line 105
    const-wide/16 v16, 0x0

    .line 106
    .line 107
    move-object v15, v2

    .line 108
    move-object/from16 v18, v0

    .line 109
    .line 110
    invoke-virtual/range {v15 .. v20}, Lfg/i;->K(JLfg/i;J)V

    .line 111
    .line 112
    .line 113
    new-instance v1, Ljava/io/EOFException;

    .line 114
    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string v4, "\\n not found: limit="

    .line 118
    .line 119
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-wide v4, v2, Lfg/i;->b:J

    .line 123
    .line 124
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v2, " content="

    .line 132
    .line 133
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-wide v4, v0, Lfg/i;->b:J

    .line 137
    .line 138
    invoke-virtual {v0, v4, v5}, Lfg/i;->c(J)Lfg/l;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lfg/l;->h()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const/16 v0, 0x2026

    .line 150
    .line 151
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v1

    .line 162
    :cond_3
    const-string v0, "limit < 0: "

    .line 163
    .line 164
    invoke-static {v7, v8, v0}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v1
.end method

.method public final p(Lfg/l;)Z
    .locals 7

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lfg/l;->g()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-boolean v1, p0, Lfg/t;->c:Z

    .line 11
    .line 12
    if-nez v1, :cond_5

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-ltz v0, :cond_4

    .line 16
    .line 17
    invoke-virtual {p1}, Lfg/l;->g()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-ge v2, v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-ge v2, v0, :cond_3

    .line 26
    .line 27
    int-to-long v3, v2

    .line 28
    const-wide/16 v5, 0x1

    .line 29
    .line 30
    add-long/2addr v5, v3

    .line 31
    invoke-virtual {p0, v5, v6}, Lfg/t;->w(J)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v5, p0, Lfg/t;->b:Lfg/i;

    .line 39
    .line 40
    invoke-virtual {v5, v3, v4}, Lfg/i;->L(J)B

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {p1, v2}, Lfg/l;->j(I)B

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eq v3, v4, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v1, 0x1

    .line 55
    :cond_4
    :goto_1
    return v1

    .line 56
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v0, "closed"

    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :goto_2
    throw p1

    .line 65
    :goto_3
    goto :goto_2
.end method

.method public final r(BJJ)J
    .locals 9

    .line 1
    iget-boolean p2, p0, Lfg/t;->c:Z

    .line 2
    .line 3
    if-nez p2, :cond_4

    .line 4
    .line 5
    const-wide/16 p2, 0x0

    .line 6
    .line 7
    cmp-long v0, p2, p4

    .line 8
    .line 9
    if-gtz v0, :cond_3

    .line 10
    .line 11
    :goto_0
    const-wide/16 v7, -0x1

    .line 12
    .line 13
    cmp-long v0, p2, p4

    .line 14
    .line 15
    if-gez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lfg/t;->b:Lfg/i;

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    move v2, p1

    .line 21
    move-wide v3, p2

    .line 22
    move-wide v5, p4

    .line 23
    invoke-virtual/range {v1 .. v6}, Lfg/i;->M(BJJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    cmp-long v3, v1, v7

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    move-wide v7, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-wide v1, v0, Lfg/i;->b:J

    .line 34
    .line 35
    cmp-long v3, v1, p4

    .line 36
    .line 37
    if-gez v3, :cond_2

    .line 38
    .line 39
    iget-object v3, p0, Lfg/t;->a:Lfg/z;

    .line 40
    .line 41
    const-wide/16 v4, 0x2000

    .line 42
    .line 43
    invoke-interface {v3, v0, v4, v5}, Lfg/z;->read(Lfg/i;J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    cmp-long v0, v3, v7

    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide p2

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    :goto_1
    return-wide v7

    .line 58
    :cond_3
    const-string p1, "fromIndex=0 toIndex="

    .line 59
    .line 60
    invoke-static {p4, p5, p1}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p2

    .line 74
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    const-string p2, "closed"

    .line 77
    .line 78
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :goto_2
    throw p1

    .line 83
    :goto_3
    goto :goto_2
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lfg/t;->b:Lfg/i;

    iget-wide v1, v0, Lfg/i;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 2
    iget-object v1, p0, Lfg/t;->a:Lfg/z;

    const-wide/16 v2, 0x2000

    invoke-interface {v1, v0, v2, v3}, Lfg/z;->read(Lfg/i;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lfg/i;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public final read(Lfg/i;J)J
    .locals 6

    const-string v0, "sink"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 4
    iget-boolean v2, p0, Lfg/t;->c:Z

    if-nez v2, :cond_1

    .line 5
    iget-object v2, p0, Lfg/t;->b:Lfg/i;

    iget-wide v3, v2, Lfg/i;->b:J

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    .line 6
    iget-object v0, p0, Lfg/t;->a:Lfg/z;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lfg/z;->read(Lfg/i;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-wide v0, v2, Lfg/i;->b:J

    .line 8
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 9
    invoke-virtual {v2, p1, p2, p3}, Lfg/i;->read(Lfg/i;J)J

    move-result-wide v3

    :goto_0
    return-wide v3

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    const-string p1, "byteCount < 0: "

    .line 12
    invoke-static {p2, p3, p1}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final readByte()B
    .locals 2

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lfg/t;->F(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfg/t;->b:Lfg/i;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfg/i;->readByte()B

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final readFully([B)V
    .locals 8

    .line 1
    iget-object v0, p0, Lfg/t;->b:Lfg/i;

    .line 2
    .line 3
    const-string v1, "sink"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    array-length v1, p1

    .line 9
    int-to-long v1, v1

    .line 10
    invoke-virtual {p0, v1, v2}, Lfg/t;->F(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lfg/i;->readFully([B)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    iget-wide v3, v0, Lfg/i;->b:J

    .line 20
    .line 21
    const-wide/16 v5, 0x0

    .line 22
    .line 23
    cmp-long v7, v3, v5

    .line 24
    .line 25
    if-lez v7, :cond_1

    .line 26
    .line 27
    long-to-int v4, v3

    .line 28
    invoke-virtual {v0, p1, v2, v4}, Lfg/i;->read([BII)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/4 v4, -0x1

    .line 33
    if-eq v3, v4, :cond_0

    .line 34
    .line 35
    add-int/2addr v2, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    goto :goto_2

    .line 44
    :goto_1
    throw v1

    .line 45
    :goto_2
    goto :goto_1
.end method

.method public final readInt()I
    .locals 2

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lfg/t;->F(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfg/t;->b:Lfg/i;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfg/i;->readInt()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final readLong()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lfg/t;->F(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfg/t;->b:Lfg/i;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfg/i;->readLong()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public final readShort()S
    .locals 2

    .line 1
    const-wide/16 v0, 0x2

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lfg/t;->F(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfg/t;->b:Lfg/i;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfg/i;->readShort()S

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public final skip(J)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lfg/t;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    :goto_0
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    if-lez v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lfg/t;->b:Lfg/i;

    .line 12
    .line 13
    iget-wide v3, v2, Lfg/i;->b:J

    .line 14
    .line 15
    cmp-long v5, v3, v0

    .line 16
    .line 17
    if-nez v5, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lfg/t;->a:Lfg/z;

    .line 20
    .line 21
    const-wide/16 v3, 0x2000

    .line 22
    .line 23
    invoke-interface {v0, v2, v3, v4}, Lfg/z;->read(Lfg/i;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v3, -0x1

    .line 28
    .line 29
    cmp-long v5, v0, v3

    .line 30
    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    :goto_1
    iget-wide v0, v2, Lfg/i;->b:J

    .line 41
    .line 42
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-virtual {v2, v0, v1}, Lfg/i;->skip(J)V

    .line 47
    .line 48
    .line 49
    sub-long/2addr p1, v0

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-void

    .line 52
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p2, "closed"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :goto_2
    throw p1

    .line 61
    :goto_3
    goto :goto_2
.end method

.method public final t(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "charset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfg/t;->a:Lfg/z;

    .line 7
    .line 8
    iget-object v1, p0, Lfg/t;->b:Lfg/i;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lfg/i;->writeAll(Lfg/z;)J

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lfg/i;->t(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final timeout()Lfg/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfg/t;->a:Lfg/z;

    .line 2
    .line 3
    invoke-interface {v0}, Lfg/z;->timeout()Lfg/c0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "buffer("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lfg/t;->a:Lfg/z;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x29

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final v()Lfg/l;
    .locals 4

    .line 1
    iget-object v0, p0, Lfg/t;->a:Lfg/z;

    .line 2
    .line 3
    iget-object v1, p0, Lfg/t;->b:Lfg/i;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lfg/i;->writeAll(Lfg/z;)J

    .line 6
    .line 7
    .line 8
    iget-wide v2, v1, Lfg/i;->b:J

    .line 9
    .line 10
    invoke-virtual {v1, v2, v3}, Lfg/i;->c(J)Lfg/l;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final w(J)Z
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Lfg/t;->c:Z

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lfg/t;->b:Lfg/i;

    .line 12
    .line 13
    iget-wide v1, v0, Lfg/i;->b:J

    .line 14
    .line 15
    cmp-long v3, v1, p1

    .line 16
    .line 17
    if-gez v3, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lfg/t;->a:Lfg/z;

    .line 20
    .line 21
    const-wide/16 v2, 0x2000

    .line 22
    .line 23
    invoke-interface {v1, v0, v2, v3}, Lfg/z;->read(Lfg/i;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v2, -0x1

    .line 28
    .line 29
    cmp-long v4, v0, v2

    .line 30
    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    :goto_0
    return p1

    .line 37
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string p2, "closed"

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_3
    const-string v0, "byteCount < 0: "

    .line 46
    .line 47
    invoke-static {p1, p2, v0}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :goto_1
    throw p2

    .line 62
    :goto_2
    goto :goto_1
.end method

.method public final z()Ljava/lang/String;
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lfg/t;->l(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
