.class public final Lpg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Lpg/b;

.field public d:Ljava/lang/String;

.field public e:Ljava/nio/charset/Charset;

.field public f:Z

.field public g:Lj$/time/Instant;

.field public h:I

.field public i:J

.field public j:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lpg/e;->b:I

    .line 6
    .line 7
    sget-object v0, Lpg/f;->a:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    iput-object v0, p0, Lpg/e;->e:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    sget-object v0, Lj$/time/Instant;->EPOCH:Lj$/time/Instant;

    .line 12
    .line 13
    iput-object v0, p0, Lpg/e;->g:Lj$/time/Instant;

    .line 14
    .line 15
    const/16 v0, 0xc

    .line 16
    .line 17
    iput v0, p0, Lpg/e;->h:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    sget v1, Lzg/b;->a:I

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_3

    .line 11
    :cond_0
    iget-object v1, p0, Lpg/e;->e:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, -0x1

    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    :cond_1
    const/4 v3, -0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    invoke-static {v1, v1}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    :goto_0
    array-length v4, p1

    .line 28
    if-ge v3, v4, :cond_1

    .line 29
    .line 30
    aget-byte v4, p1, v3

    .line 31
    .line 32
    if-nez v4, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    add-int/2addr v3, v0

    .line 36
    goto :goto_0

    .line 37
    :goto_1
    if-eq v3, v2, :cond_4

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_4
    const/4 v0, 0x0

    .line 41
    :goto_2
    if-nez v0, :cond_5

    .line 42
    .line 43
    :goto_3
    return-void

    .line 44
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v1, "String encoded in Charset \'"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lpg/e;->e:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, "\' contains the nul byte 0 which is not supported in gzip."

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_5

    .line 71
    :goto_4
    throw p1

    .line 72
    :goto_5
    goto :goto_4
.end method

.method public final b(I)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-lt p1, v0, :cond_0

    .line 3
    .line 4
    const/16 v0, 0x9

    .line 5
    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lpg/e;->b:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v1, "Invalid gzip compression level: "

    .line 14
    .line 15
    invoke-static {p1, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0
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
    instance-of v1, p1, Lpg/e;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lpg/e;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lpg/e;->a:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p1, Lpg/e;->a:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    iget v1, p0, Lpg/e;->b:I

    .line 27
    .line 28
    iget v3, p1, Lpg/e;->b:I

    .line 29
    .line 30
    if-ne v1, v3, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lpg/e;->c:Lpg/b;

    .line 33
    .line 34
    iget-object v3, p1, Lpg/e;->c:Lpg/b;

    .line 35
    .line 36
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lpg/e;->d:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lpg/e;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Lpg/e;->e:Ljava/nio/charset/Charset;

    .line 53
    .line 54
    iget-object v3, p1, Lpg/e;->e:Ljava/nio/charset/Charset;

    .line 55
    .line 56
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    iget-boolean v1, p0, Lpg/e;->f:Z

    .line 63
    .line 64
    iget-boolean v3, p1, Lpg/e;->f:Z

    .line 65
    .line 66
    if-ne v1, v3, :cond_2

    .line 67
    .line 68
    iget-object v1, p0, Lpg/e;->g:Lj$/time/Instant;

    .line 69
    .line 70
    iget-object v3, p1, Lpg/e;->g:Lj$/time/Instant;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget v1, p0, Lpg/e;->h:I

    .line 79
    .line 80
    iget v3, p1, Lpg/e;->h:I

    .line 81
    .line 82
    if-ne v1, v3, :cond_2

    .line 83
    .line 84
    iget-wide v3, p0, Lpg/e;->i:J

    .line 85
    .line 86
    iget-wide v5, p1, Lpg/e;->i:J

    .line 87
    .line 88
    cmp-long v1, v3, v5

    .line 89
    .line 90
    if-nez v1, :cond_2

    .line 91
    .line 92
    iget-wide v3, p0, Lpg/e;->j:J

    .line 93
    .line 94
    iget-wide v5, p1, Lpg/e;->j:J

    .line 95
    .line 96
    cmp-long p1, v3, v5

    .line 97
    .line 98
    if-nez p1, :cond_2

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 15

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x200

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lpg/e;->a:Ljava/lang/String;

    .line 9
    .line 10
    iget v3, p0, Lpg/e;->b:I

    .line 11
    .line 12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v6, p0, Lpg/e;->c:Lpg/b;

    .line 22
    .line 23
    iget-object v7, p0, Lpg/e;->d:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v8, p0, Lpg/e;->e:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    iget-boolean v9, p0, Lpg/e;->f:Z

    .line 28
    .line 29
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    iget-object v10, p0, Lpg/e;->g:Lj$/time/Instant;

    .line 34
    .line 35
    iget v11, p0, Lpg/e;->h:I

    .line 36
    .line 37
    iget-wide v12, p0, Lpg/e;->i:J

    .line 38
    .line 39
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v12

    .line 43
    iget-wide v13, p0, Lpg/e;->j:J

    .line 44
    .line 45
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v13

    .line 49
    if-nez v11, :cond_0

    .line 50
    .line 51
    const/4 v11, 0x0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    sub-int/2addr v11, v0

    .line 54
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    :goto_0
    const/16 v14, 0xc

    .line 59
    .line 60
    new-array v14, v14, [Ljava/lang/Object;

    .line 61
    .line 62
    aput-object v1, v14, v4

    .line 63
    .line 64
    aput-object v2, v14, v0

    .line 65
    .line 66
    const/4 v0, 0x2

    .line 67
    aput-object v3, v14, v0

    .line 68
    .line 69
    const/4 v0, 0x3

    .line 70
    aput-object v5, v14, v0

    .line 71
    .line 72
    const/4 v0, 0x4

    .line 73
    aput-object v6, v14, v0

    .line 74
    .line 75
    const/4 v0, 0x5

    .line 76
    aput-object v7, v14, v0

    .line 77
    .line 78
    const/4 v0, 0x6

    .line 79
    aput-object v8, v14, v0

    .line 80
    .line 81
    const/4 v0, 0x7

    .line 82
    aput-object v9, v14, v0

    .line 83
    .line 84
    const/16 v0, 0x8

    .line 85
    .line 86
    aput-object v10, v14, v0

    .line 87
    .line 88
    const/16 v0, 0x9

    .line 89
    .line 90
    aput-object v11, v14, v0

    .line 91
    .line 92
    const/16 v0, 0xa

    .line 93
    .line 94
    aput-object v12, v14, v0

    .line 95
    .line 96
    const/16 v0, 0xb

    .line 97
    .line 98
    aput-object v13, v14, v0

    .line 99
    .line 100
    invoke-static {v14}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "GzipParameters [bufferSize=512, comment="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lpg/e;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", compressionLevel="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lpg/e;->b:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", deflateStrategy=0, extraField="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lpg/e;->c:Lpg/b;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", fileName="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lpg/e;->d:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", fileNameCharset="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lpg/e;->e:Ljava/nio/charset/Charset;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", headerCrc="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lpg/e;->f:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", modificationInstant="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lpg/e;->g:Lj$/time/Instant;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", operatingSystem="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lpg/e;->h:I

    .line 79
    .line 80
    packed-switch v1, :pswitch_data_0

    .line 81
    .line 82
    .line 83
    const-string v1, "null"

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_0
    const-string v1, "Z_SYSTEM"

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_1
    const-string v1, "VMS"

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_2
    const-string v1, "VM_CMS"

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_3
    const-string v1, "UNKNOWN"

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :pswitch_4
    const-string v1, "UNIX"

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :pswitch_5
    const-string v1, "TOPS_20"

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :pswitch_6
    const-string v1, "QDOS"

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_7
    const-string v1, "NTFS"

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :pswitch_8
    const-string v1, "MACINTOSH"

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_9
    const-string v1, "HPFS"

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :pswitch_a
    const-string v1, "FAT"

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :pswitch_b
    const-string v1, "CPM"

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_c
    const-string v1, "ATARI_TOS"

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :pswitch_d
    const-string v1, "AMIGA"

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :pswitch_e
    const-string v1, "ACORN_RISCOS"

    .line 129
    .line 130
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", trailerCrc="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-wide v1, p0, Lpg/e;->i:J

    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", trailerISize="

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-wide v1, p0, Lpg/e;->j:J

    .line 149
    .line 150
    const-string v3, "]"

    .line 151
    .line 152
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/session/a;->t(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    return-object v0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
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
