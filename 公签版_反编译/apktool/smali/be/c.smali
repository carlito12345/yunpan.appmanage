.class public final Lbe/c;
.super Lbe/a;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:Ljava/lang/String;

.field public final f:[B

.field public final g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v0, "jcifs.smb1.smb.client.useUnicode"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lwd/a;->a(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    sget-object v0, Lwd/a;->a:Ljava/util/Properties;

    .line 8
    .line 9
    const-string v2, "jcifs.smb1.smb.client.domain"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x0

    .line 17
    new-array v3, v2, [B

    .line 18
    .line 19
    const-string v4, "UTF-16LE"

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    :cond_0
    array-length v0, v3

    .line 28
    new-array v5, v2, [B

    .line 29
    .line 30
    :try_start_1
    sget-object v6, Lae/g;->m:Lae/g;

    .line 31
    .line 32
    invoke-virtual {v6}, Lae/g;->g()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    :try_start_2
    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 39
    .line 40
    .line 41
    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 42
    goto :goto_0

    .line 43
    :catch_1
    nop

    .line 44
    :cond_1
    :goto_0
    array-length v4, v5

    .line 45
    if-lez v0, :cond_2

    .line 46
    .line 47
    add-int/lit8 v6, v0, 0x4

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 v6, 0x0

    .line 51
    :goto_1
    if-lez v4, :cond_3

    .line 52
    .line 53
    add-int/lit8 v7, v4, 0x4

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const/4 v7, 0x0

    .line 57
    :goto_2
    add-int/2addr v6, v7

    .line 58
    const/4 v7, 0x4

    .line 59
    add-int/2addr v6, v7

    .line 60
    new-array v6, v6, [B

    .line 61
    .line 62
    if-lez v0, :cond_4

    .line 63
    .line 64
    const/4 v8, 0x2

    .line 65
    invoke-static {v2, v8, v6}, Lbe/a;->e(II[B)V

    .line 66
    .line 67
    .line 68
    invoke-static {v8, v0, v6}, Lbe/a;->e(II[B)V

    .line 69
    .line 70
    .line 71
    invoke-static {v3, v2, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    .line 73
    .line 74
    add-int/2addr v0, v7

    .line 75
    goto :goto_3

    .line 76
    :cond_4
    const/4 v0, 0x0

    .line 77
    :goto_3
    if-lez v4, :cond_5

    .line 78
    .line 79
    invoke-static {v0, v1, v6}, Lbe/a;->e(II[B)V

    .line 80
    .line 81
    .line 82
    add-int/lit8 v1, v0, 0x2

    .line 83
    .line 84
    invoke-static {v1, v4, v6}, Lbe/a;->e(II[B)V

    .line 85
    .line 86
    .line 87
    add-int/2addr v0, v7

    .line 88
    invoke-static {v5, v2, v6, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    .line 90
    .line 91
    :cond_5
    return-void
.end method

.method public constructor <init>([B)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lbe/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    const/16 v2, 0x8

    .line 7
    .line 8
    if-ge v1, v2, :cond_1

    .line 9
    .line 10
    aget-byte v2, p1, v1

    .line 11
    .line 12
    sget-object v3, Lbe/a;->b:[B

    .line 13
    .line 14
    aget-byte v3, v3, v1

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 22
    .line 23
    const-string v0, "Not an NTLMSSP message."

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {v2, p1}, Lbe/a;->b(I[B)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v3, 0x2

    .line 34
    if-ne v1, v3, :cond_b

    .line 35
    .line 36
    const/16 v1, 0x14

    .line 37
    .line 38
    invoke-static {v1, p1}, Lbe/a;->b(I[B)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, p0, Lbe/a;->a:I

    .line 43
    .line 44
    const/16 v3, 0xc

    .line 45
    .line 46
    invoke-static {v3, p1}, Lbe/a;->a(I[B)[B

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    array-length v4, v3

    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    new-instance v4, Ljava/lang/String;

    .line 54
    .line 55
    and-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    const-string v1, "UTF-16LE"

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    sget-object v1, Lbe/a;->c:Ljava/lang/String;

    .line 63
    .line 64
    :goto_1
    invoke-direct {v4, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    const/4 v4, 0x0

    .line 69
    :goto_2
    iput-object v4, p0, Lbe/c;->e:Ljava/lang/String;

    .line 70
    .line 71
    const/16 v1, 0x18

    .line 72
    .line 73
    const/16 v3, 0x18

    .line 74
    .line 75
    :goto_3
    const/16 v4, 0x20

    .line 76
    .line 77
    if-ge v3, v4, :cond_5

    .line 78
    .line 79
    aget-byte v5, p1, v3

    .line 80
    .line 81
    if-eqz v5, :cond_4

    .line 82
    .line 83
    new-array v3, v2, [B

    .line 84
    .line 85
    invoke-static {p1, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    .line 87
    .line 88
    iput-object v3, p0, Lbe/c;->d:[B

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_5
    :goto_4
    const/16 v1, 0x10

    .line 95
    .line 96
    invoke-static {v1, p1}, Lbe/a;->b(I[B)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eq v1, v4, :cond_a

    .line 101
    .line 102
    array-length v3, p1

    .line 103
    if-ne v3, v4, :cond_6

    .line 104
    .line 105
    goto :goto_7

    .line 106
    :cond_6
    const/16 v3, 0x20

    .line 107
    .line 108
    :goto_5
    const/16 v5, 0x28

    .line 109
    .line 110
    if-ge v3, v5, :cond_8

    .line 111
    .line 112
    aget-byte v6, p1, v3

    .line 113
    .line 114
    if-eqz v6, :cond_7

    .line 115
    .line 116
    new-array v3, v2, [B

    .line 117
    .line 118
    invoke-static {p1, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    .line 120
    .line 121
    iput-object v3, p0, Lbe/c;->f:[B

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_8
    :goto_6
    if-eq v1, v5, :cond_a

    .line 128
    .line 129
    array-length v0, p1

    .line 130
    if-ne v0, v5, :cond_9

    .line 131
    .line 132
    goto :goto_7

    .line 133
    :cond_9
    invoke-static {v5, p1}, Lbe/a;->a(I[B)[B

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    array-length v0, p1

    .line 138
    if-eqz v0, :cond_a

    .line 139
    .line 140
    iput-object p1, p0, Lbe/c;->g:[B

    .line 141
    .line 142
    :cond_a
    :goto_7
    return-void

    .line 143
    :cond_b
    new-instance p1, Ljava/io/IOException;

    .line 144
    .line 145
    const-string v0, "Not a Type 2 message."

    .line 146
    .line 147
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_9

    .line 151
    :goto_8
    throw p1

    .line 152
    :goto_9
    goto :goto_8
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lbe/c;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lbe/c;->d:[B

    .line 4
    .line 5
    iget-object v2, p0, Lbe/c;->f:[B

    .line 6
    .line 7
    iget-object v3, p0, Lbe/c;->g:[B

    .line 8
    .line 9
    const-string v4, "Type2Message[target="

    .line 10
    .line 11
    const-string v5, ",challenge="

    .line 12
    .line 13
    invoke-static {v4, v0, v5}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v4, " bytes>"

    .line 18
    .line 19
    const-string v5, "<"

    .line 20
    .line 21
    const-string v6, "null"

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    move-object v1, v6

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    array-length v1, v1

    .line 33
    invoke-static {v7, v1, v4}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ",context="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    move-object v1, v6

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    array-length v2, v2

    .line 55
    invoke-static {v1, v2, v4}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, ",targetInformation="

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    array-length v2, v3

    .line 76
    invoke-static {v1, v2, v4}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ",flags=0x"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lbe/a;->a:I

    .line 89
    .line 90
    const/16 v2, 0x8

    .line 91
    .line 92
    invoke-static {v1, v2}, Lde/c;->c(II)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, "]"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0
.end method
