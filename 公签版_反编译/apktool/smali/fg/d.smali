.class public final Lfg/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfg/z;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lfg/e;Lfg/z;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lfg/d;->a:I

    iput-object p1, p0, Lfg/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lfg/d;->c:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lfg/c0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lfg/d;->a:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeout"

    invoke-static {p2, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfg/d;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lfg/d;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget v0, p0, Lfg/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfg/d;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/io/InputStream;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lfg/d;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lfg/z;

    .line 17
    .line 18
    iget-object v1, p0, Lfg/d;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Lfg/e;

    .line 21
    .line 22
    invoke-virtual {v1}, Lfg/e;->enter()V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lfg/e;->exit()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    invoke-virtual {v1, v0}, Lfg/e;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    throw v0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    :try_start_1
    invoke-virtual {v1}, Lfg/e;->exit()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v1, v0}, Lfg/e;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :goto_1
    invoke-virtual {v1}, Lfg/e;->exit()Z

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read(Lfg/i;J)J
    .locals 3

    .line 1
    iget v0, p0, Lfg/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "sink"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    cmp-long v2, p2, v0

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    cmp-long v2, p2, v0

    .line 19
    .line 20
    if-ltz v2, :cond_4

    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lfg/d;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lfg/c0;

    .line 25
    .line 26
    invoke-virtual {v0}, Lfg/c0;->throwIfReached()V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Lfg/i;->S(I)Lfg/u;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v1, v0, Lfg/u;->c:I

    .line 35
    .line 36
    rsub-int v1, v1, 0x2000

    .line 37
    .line 38
    int-to-long v1, v1

    .line 39
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide p2

    .line 43
    long-to-int p3, p2

    .line 44
    iget-object p2, p0, Lfg/d;->b:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p2, Ljava/io/InputStream;

    .line 47
    .line 48
    iget-object v1, v0, Lfg/u;->a:[B

    .line 49
    .line 50
    iget v2, v0, Lfg/u;->c:I

    .line 51
    .line 52
    invoke-virtual {p2, v1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    const/4 p3, -0x1

    .line 57
    if-ne p2, p3, :cond_2

    .line 58
    .line 59
    iget p2, v0, Lfg/u;->b:I

    .line 60
    .line 61
    iget p3, v0, Lfg/u;->c:I

    .line 62
    .line 63
    if-ne p2, p3, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Lfg/u;->a()Lfg/u;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    iput-object p2, p1, Lfg/i;->a:Lfg/u;

    .line 70
    .line 71
    invoke-static {v0}, Lfg/v;->a(Lfg/u;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    iget p3, v0, Lfg/u;->c:I

    .line 81
    .line 82
    add-int/2addr p3, p2

    .line 83
    iput p3, v0, Lfg/u;->c:I

    .line 84
    .line 85
    iget-wide v0, p1, Lfg/i;->b:J

    .line 86
    .line 87
    int-to-long p2, p2

    .line 88
    add-long/2addr v0, p2

    .line 89
    iput-wide v0, p1, Lfg/i;->b:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    move-wide v0, p2

    .line 92
    :goto_1
    return-wide v0

    .line 93
    :goto_2
    invoke-static {p1}, Lfg/e0;->f(Ljava/lang/AssertionError;)Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    new-instance p2, Ljava/io/IOException;

    .line 100
    .line 101
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    throw p2

    .line 105
    :cond_3
    throw p1

    .line 106
    :cond_4
    const-string p1, "byteCount < 0: "

    .line 107
    .line 108
    invoke-static {p2, p3, p1}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p2

    .line 122
    :pswitch_0
    const-string v0, "sink"

    .line 123
    .line 124
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lfg/d;->c:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Lfg/z;

    .line 130
    .line 131
    iget-object v1, p0, Lfg/d;->b:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v1, Lfg/e;

    .line 134
    .line 135
    invoke-virtual {v1}, Lfg/e;->enter()V

    .line 136
    .line 137
    .line 138
    :try_start_1
    invoke-interface {v0, p1, p2, p3}, Lfg/z;->read(Lfg/i;J)J

    .line 139
    .line 140
    .line 141
    move-result-wide p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-virtual {v1}, Lfg/e;->exit()Z

    .line 143
    .line 144
    .line 145
    move-result p3

    .line 146
    if-nez p3, :cond_5

    .line 147
    .line 148
    return-wide p1

    .line 149
    :cond_5
    const/4 p1, 0x0

    .line 150
    invoke-virtual {v1, p1}, Lfg/e;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    throw p1

    .line 155
    :catchall_0
    move-exception p1

    .line 156
    goto :goto_4

    .line 157
    :catch_1
    move-exception p1

    .line 158
    :try_start_2
    invoke-virtual {v1}, Lfg/e;->exit()Z

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    if-nez p2, :cond_6

    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    invoke-virtual {v1, p1}, Lfg/e;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    :goto_3
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    :goto_4
    invoke-virtual {v1}, Lfg/e;->exit()Z

    .line 171
    .line 172
    .line 173
    throw p1

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final timeout()Lfg/c0;
    .locals 1

    .line 1
    iget v0, p0, Lfg/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lfg/d;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lfg/c0;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lfg/d;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lfg/e;

    .line 14
    .line 15
    return-object v0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lfg/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "source("

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lfg/d;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/io/InputStream;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x29

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "AsyncTimeout.source("

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lfg/d;->c:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v1, Lfg/z;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x29

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
