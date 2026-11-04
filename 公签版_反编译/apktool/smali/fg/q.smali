.class public final Lfg/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfg/z;


# instance fields
.field public final a:Lfg/t;

.field public final b:Ljava/util/zip/Inflater;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(Lfg/t;Ljava/util/zip/Inflater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfg/q;->a:Lfg/t;

    .line 5
    .line 6
    iput-object p2, p0, Lfg/q;->b:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfg/q;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lfg/q;->b:Ljava/util/zip/Inflater;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lfg/q;->d:Z

    .line 13
    .line 14
    iget-object v0, p0, Lfg/q;->a:Lfg/t;

    .line 15
    .line 16
    invoke-virtual {v0}, Lfg/t;->close()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final read(Lfg/i;J)J
    .locals 9

    .line 1
    const-string v0, "sink"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :goto_0
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v2, p2, v0

    .line 9
    .line 10
    if-ltz v2, :cond_b

    .line 11
    .line 12
    iget-boolean v2, p0, Lfg/q;->d:Z

    .line 13
    .line 14
    if-nez v2, :cond_a

    .line 15
    .line 16
    iget-object v2, p0, Lfg/q;->a:Lfg/t;

    .line 17
    .line 18
    iget-object v3, p0, Lfg/q;->b:Ljava/util/zip/Inflater;

    .line 19
    .line 20
    cmp-long v4, p2, v0

    .line 21
    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    :cond_0
    :goto_1
    move-wide v4, v0

    .line 25
    goto :goto_4

    .line 26
    :cond_1
    const/4 v4, 0x1

    .line 27
    :try_start_0
    invoke-virtual {p1, v4}, Lfg/i;->S(I)Lfg/u;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget v5, v4, Lfg/u;->c:I

    .line 32
    .line 33
    rsub-int v5, v5, 0x2000

    .line 34
    .line 35
    int-to-long v5, v5

    .line 36
    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    long-to-int v6, v5

    .line 41
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-virtual {v2}, Lfg/t;->j()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_3
    iget-object v5, v2, Lfg/t;->b:Lfg/i;

    .line 56
    .line 57
    iget-object v5, v5, Lfg/i;->a:Lfg/u;

    .line 58
    .line 59
    invoke-static {v5}, Lue/d;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget v7, v5, Lfg/u;->c:I

    .line 63
    .line 64
    iget v8, v5, Lfg/u;->b:I

    .line 65
    .line 66
    sub-int/2addr v7, v8

    .line 67
    iput v7, p0, Lfg/q;->c:I

    .line 68
    .line 69
    iget-object v5, v5, Lfg/u;->a:[B

    .line 70
    .line 71
    invoke-virtual {v3, v5, v8, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 72
    .line 73
    .line 74
    :goto_2
    iget-object v5, v4, Lfg/u;->a:[B

    .line 75
    .line 76
    iget v7, v4, Lfg/u;->c:I

    .line 77
    .line 78
    invoke-virtual {v3, v5, v7, v6}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    iget v6, p0, Lfg/q;->c:I

    .line 83
    .line 84
    if-nez v6, :cond_4

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    sub-int/2addr v6, v7

    .line 92
    iget v7, p0, Lfg/q;->c:I

    .line 93
    .line 94
    sub-int/2addr v7, v6

    .line 95
    iput v7, p0, Lfg/q;->c:I

    .line 96
    .line 97
    int-to-long v6, v6

    .line 98
    invoke-virtual {v2, v6, v7}, Lfg/t;->skip(J)V

    .line 99
    .line 100
    .line 101
    :goto_3
    if-lez v5, :cond_5

    .line 102
    .line 103
    iget v6, v4, Lfg/u;->c:I

    .line 104
    .line 105
    add-int/2addr v6, v5

    .line 106
    iput v6, v4, Lfg/u;->c:I

    .line 107
    .line 108
    iget-wide v6, p1, Lfg/i;->b:J

    .line 109
    .line 110
    int-to-long v4, v5

    .line 111
    add-long/2addr v6, v4

    .line 112
    iput-wide v6, p1, Lfg/i;->b:J

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :catch_0
    move-exception p1

    .line 116
    goto :goto_6

    .line 117
    :cond_5
    iget v5, v4, Lfg/u;->b:I

    .line 118
    .line 119
    iget v6, v4, Lfg/u;->c:I

    .line 120
    .line 121
    if-ne v5, v6, :cond_0

    .line 122
    .line 123
    invoke-virtual {v4}, Lfg/u;->a()Lfg/u;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    iput-object v5, p1, Lfg/i;->a:Lfg/u;

    .line 128
    .line 129
    invoke-static {v4}, Lfg/v;->a(Lfg/u;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :goto_4
    cmp-long v6, v4, v0

    .line 134
    .line 135
    if-lez v6, :cond_6

    .line 136
    .line 137
    return-wide v4

    .line 138
    :cond_6
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_9

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_7

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_7
    invoke-virtual {v2}, Lfg/t;->j()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-nez v0, :cond_8

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    .line 160
    .line 161
    const-string p2, "source exhausted prematurely"

    .line 162
    .line 163
    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_9
    :goto_5
    const-wide/16 p1, -0x1

    .line 168
    .line 169
    return-wide p1

    .line 170
    :goto_6
    new-instance p2, Ljava/io/IOException;

    .line 171
    .line 172
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 173
    .line 174
    .line 175
    throw p2

    .line 176
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    const-string p2, "closed"

    .line 179
    .line 180
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1

    .line 184
    :cond_b
    const-string p1, "byteCount < 0: "

    .line 185
    .line 186
    invoke-static {p2, p3, p1}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    goto :goto_8

    .line 200
    :goto_7
    throw p2

    .line 201
    :goto_8
    goto :goto_7
.end method

.method public final timeout()Lfg/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfg/q;->a:Lfg/t;

    .line 2
    .line 3
    iget-object v0, v0, Lfg/t;->a:Lfg/z;

    .line 4
    .line 5
    invoke-interface {v0}, Lfg/z;->timeout()Lfg/c0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
