.class public final La9/u;
.super La9/r;
.source "SourceFile"


# instance fields
.field public h:[B

.field public i:[B

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lm7/e;I)V
    .locals 1

    .line 1
    iput p2, p0, La9/u;->j:I

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, La9/u;-><init>(Lm7/e;[B[B)V

    return-void
.end method

.method public constructor <init>(Lm7/e;[B[B)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, La9/r;-><init>(Lm7/e;)V

    .line 4
    iput-object p2, p0, La9/u;->h:[B

    .line 5
    iput-object p3, p0, La9/u;->i:[B

    return-void
.end method

.method public synthetic constructor <init>(Lm7/e;[B[BI)V
    .locals 0

    .line 2
    iput p4, p0, La9/u;->j:I

    invoke-direct {p0, p1, p2, p3}, La9/u;-><init>(Lm7/e;[B[B)V

    return-void
.end method

.method public static s(Lm7/e;La9/a;)La9/u;
    .locals 4

    .line 1
    const/4 v0, 0x4

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
    aget-object v0, p1, v0

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    aget-object v1, p1, v1

    .line 13
    .line 14
    const/16 v2, 0x20

    .line 15
    .line 16
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, La9/u;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, p0, v0, v1, v3}, La9/u;-><init>(Lm7/e;[B[BI)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x3

    .line 27
    aget-object p0, p1, p0

    .line 28
    .line 29
    invoke-static {p0}, La9/h0;->c([B)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iput-object p0, v2, La9/r;->b:Ljava/lang/String;

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    iput p0, v2, La9/r;->a:I

    .line 37
    .line 38
    return-object v2
.end method

.method public static t(Lm7/e;La9/a;)La9/u;
    .locals 4

    .line 1
    const/4 v0, 0x4

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
    aget-object v0, p1, v0

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    aget-object v1, p1, v1

    .line 13
    .line 14
    const/16 v2, 0x39

    .line 15
    .line 16
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, La9/u;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-direct {v2, p0, v0, v1, v3}, La9/u;-><init>(Lm7/e;[B[BI)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x3

    .line 27
    aget-object p0, p1, p0

    .line 28
    .line 29
    invoke-static {p0}, La9/h0;->c([B)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iput-object p0, v2, La9/r;->b:Ljava/lang/String;

    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    iput p0, v2, La9/r;->a:I

    .line 37
    .line 38
    return-object v2
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    sget-object v0, La9/h0;->a:[B

    .line 2
    .line 3
    iget-object v0, p0, La9/u;->i:[B

    .line 4
    .line 5
    invoke-static {v0}, La9/h0;->d([B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e()[B
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, La9/r;->d:Z

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    new-instance v1, La9/a;

    .line 7
    .line 8
    invoke-direct {v1, v0, v0}, La9/a;-><init>(IC)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, La9/u;->u()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, La9/h0;->a:[B

    .line 16
    .line 17
    sget-object v3, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    array-length v4, v2

    .line 24
    invoke-virtual {v1, v4, v2}, La9/a;->p(I[B)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, La9/u;->h:[B

    .line 28
    .line 29
    array-length v4, v2

    .line 30
    invoke-virtual {v1, v4, v2}, La9/a;->p(I[B)V

    .line 31
    .line 32
    .line 33
    iget-object v2, p0, La9/u;->i:[B

    .line 34
    .line 35
    array-length v4, v2

    .line 36
    iget-object v5, p0, La9/u;->h:[B

    .line 37
    .line 38
    array-length v5, v5

    .line 39
    add-int/2addr v4, v5

    .line 40
    new-array v5, v4, [B

    .line 41
    .line 42
    array-length v6, v2

    .line 43
    invoke-static {v2, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, La9/u;->h:[B

    .line 47
    .line 48
    iget-object v6, p0, La9/u;->i:[B

    .line 49
    .line 50
    array-length v6, v6

    .line 51
    array-length v7, v2

    .line 52
    invoke-static {v2, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v4, v5}, La9/a;->p(I[B)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, La9/r;->b:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0, v3}, La9/h0;->k(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    array-length v2, v0

    .line 65
    invoke-virtual {v1, v2, v0}, La9/a;->p(I[B)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, La9/a;->h()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    new-array v2, v0, [B

    .line 73
    .line 74
    invoke-virtual {v1, v0, v2}, La9/a;->e(I[B)V

    .line 75
    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_0
    new-instance v0, La9/n;

    .line 79
    .line 80
    const-string v1, "key is encrypted."

    .line 81
    .line 82
    invoke-direct {v0, v1}, La9/n;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

.method public final g()I
    .locals 1

    .line 1
    iget v0, p0, La9/u;->j:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x39

    return v0

    :pswitch_0
    const/16 v0, 0x20

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()[B
    .locals 4

    .line 1
    iget-object v0, p0, La9/r;->f:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, La9/u;->h:[B

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-virtual {p0}, La9/u;->u()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, La9/h0;->a:[B

    .line 17
    .line 18
    sget-object v1, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, La9/u;->h:[B

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    new-array v2, v2, [[B

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    aput-object v0, v2, v3

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    aput-object v1, v2, v0

    .line 34
    .line 35
    invoke-static {v2}, La9/a;->b([[B)La9/a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, La9/a;->e:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, [B

    .line 42
    .line 43
    return-object v0
.end method

.method public final m([B)Z
    .locals 6

    .line 1
    iget v0, p0, La9/r;->a:I

    .line 2
    .line 3
    iget-object v1, p0, La9/r;->c:Lm7/e;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    if-eq v0, v2, :cond_5

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    const/4 v2, 0x4

    .line 16
    if-ne v0, v2, :cond_2

    .line 17
    .line 18
    :try_start_0
    new-instance v0, La9/a;

    .line 19
    .line 20
    invoke-direct {v0, p1}, La9/a;-><init>([B)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, La9/a;->g()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {v0}, La9/a;->g()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ne p1, v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, La9/a;->l()[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, La9/h0;->c([B)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, La9/a;->l()[B

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, La9/u;->h:[B

    .line 45
    .line 46
    invoke-virtual {v0}, La9/a;->l()[B

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0}, La9/r;->g()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, La9/u;->i:[B

    .line 59
    .line 60
    invoke-virtual {v0}, La9/a;->l()[B

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    array-length v0, p1

    .line 65
    sget-object v2, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 66
    .line 67
    new-instance v5, Ljava/lang/String;

    .line 68
    .line 69
    invoke-direct {v5, p1, v4, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 70
    .line 71
    .line 72
    iput-object v5, p0, La9/r;->b:Ljava/lang/String;

    .line 73
    .line 74
    return v3

    .line 75
    :cond_1
    new-instance p1, La9/n;

    .line 76
    .line 77
    const-string v0, "check failed"

    .line 78
    .line 79
    invoke-direct {p1, v0}, La9/n;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    sget-object p1, La9/l;->f:Lgf/g;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    return v4

    .line 92
    :cond_2
    const/4 p1, 0x3

    .line 93
    if-eq v0, p1, :cond_3

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    sget-object p1, La9/l;->f:Lgf/g;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    return v4

    .line 104
    :cond_3
    :try_start_1
    const-string p1, "keypairgen_fromprivate.eddsa"

    .line 105
    .line 106
    invoke-static {p1}, La9/l;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-class v0, La9/v;

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    if-nez p1, :cond_4

    .line 130
    .line 131
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 132
    :cond_4
    :try_start_3
    new-instance p1, Ljava/lang/ClassCastException;

    .line 133
    .line 134
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 135
    .line 136
    .line 137
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_3} :catch_1

    .line 138
    :catch_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    sget-object p1, La9/l;->f:Lgf/g;

    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    return v4

    .line 147
    :cond_5
    :goto_0
    new-instance v0, La9/a;

    .line 148
    .line 149
    invoke-direct {v0, p1}, La9/a;-><init>([B)V

    .line 150
    .line 151
    .line 152
    array-length p1, p1

    .line 153
    invoke-virtual {v0, p1}, La9/a;->r(I)V

    .line 154
    .line 155
    .line 156
    :try_start_4
    const-string p1, ""

    .line 157
    .line 158
    invoke-virtual {v0, v3, p1}, La9/a;->f(ILjava/lang/String;)[[B

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    aget-object p1, p1, v4

    .line 163
    .line 164
    iput-object p1, p0, La9/u;->i:[B
    :try_end_4
    .catch La9/n; {:try_start_4 .. :try_end_4} :catch_2

    .line 165
    .line 166
    return v3

    .line 167
    :catch_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    sget-object p1, La9/l;->f:Lgf/g;

    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    return v4
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, La9/u;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "ssh-ed448"

    .line 7
    .line 8
    return-object v0

    .line 9
    :pswitch_0
    const-string v0, "ssh-ed25519"

    .line 10
    .line 11
    return-object v0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
