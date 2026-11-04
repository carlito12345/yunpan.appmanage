.class public final synthetic Lha/od;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/qd;


# direct methods
.method public synthetic constructor <init>(Lha/qd;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/od;->a:I

    iput-object p1, p0, Lha/od;->b:Lha/qd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 8

    .line 1
    iget v0, p0, Lha/od;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/od;->b:Lha/qd;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p1, Lha/qd;->p:Lgh/c;

    .line 12
    .line 13
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    iget-object v1, p1, Lha/qd;->p:Lgh/c;

    .line 15
    .line 16
    const-string v2, "strprop persist.service.adb.button.visible ON\n"

    .line 17
    .line 18
    sget-object v3, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Lgh/c;->write([B)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p1, Lha/qd;->p:Lgh/c;

    .line 28
    .line 29
    invoke-virtual {v1}, Lgh/c;->flush()V

    .line 30
    .line 31
    .line 32
    const-wide/16 v1, 0xfa

    .line 33
    .line 34
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 35
    .line 36
    .line 37
    iget-object v4, p1, Lha/qd;->p:Lgh/c;

    .line 38
    .line 39
    const-string v5, "strprop service.adb.tcp.port 5555\n"

    .line 40
    .line 41
    invoke-virtual {v5, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v4, v5}, Lgh/c;->write([B)V

    .line 46
    .line 47
    .line 48
    iget-object v4, p1, Lha/qd;->p:Lgh/c;

    .line 49
    .line 50
    invoke-virtual {v4}, Lgh/c;->flush()V

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p1, Lha/qd;->p:Lgh/c;

    .line 57
    .line 58
    const-string v2, "strprop ctl.restart adbd\n"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Lgh/c;->write([B)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p1, Lha/qd;->p:Lgh/c;

    .line 68
    .line 69
    invoke-virtual {v1}, Lgh/c;->flush()V

    .line 70
    .line 71
    .line 72
    const-wide/16 v1, 0x7d0

    .line 73
    .line 74
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p1, Lha/qd;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    .line 82
    .line 83
    monitor-exit v0

    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    :catch_0
    :goto_0
    return-void

    .line 89
    :pswitch_0
    sget-object v0, Lic/a;->a:Lic/a;

    .line 90
    .line 91
    iget-object v1, p0, Lha/od;->b:Lha/qd;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    :try_start_3
    iget-object v2, v1, Lha/qd;->n:Ljava/io/BufferedInputStream;

    .line 97
    .line 98
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 99
    .line 100
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 101
    .line 102
    .line 103
    const/16 v4, 0x400

    .line 104
    .line 105
    new-array v4, v4, [B

    .line 106
    .line 107
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    check-cast v5, Lgc/b;

    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    if-ne v5, v0, :cond_1

    .line 115
    .line 116
    const/4 v5, 0x1

    .line 117
    goto :goto_2

    .line 118
    :cond_1
    const/4 v5, 0x0

    .line 119
    :goto_2
    if-nez v5, :cond_4

    .line 120
    .line 121
    iget-object v5, v1, Lha/qd;->g:Lgh/a;

    .line 122
    .line 123
    if-eqz v5, :cond_4

    .line 124
    .line 125
    invoke-virtual {v5}, Lch/d;->f()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_4

    .line 130
    .line 131
    if-eqz v2, :cond_4

    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    .line 134
    .line 135
    .line 136
    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 137
    if-lez v5, :cond_2

    .line 138
    .line 139
    :try_start_4
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    .line 140
    .line 141
    .line 142
    move-result v5
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 143
    goto :goto_3

    .line 144
    :catch_1
    move-exception v1

    .line 145
    goto :goto_4

    .line 146
    :catch_2
    nop

    .line 147
    const/4 v5, 0x0

    .line 148
    :goto_3
    if-lez v5, :cond_0

    .line 149
    .line 150
    :try_start_5
    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 151
    .line 152
    .line 153
    new-instance v5, Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    sget-object v7, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 160
    .line 161
    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 162
    .line 163
    .line 164
    iget-object v6, v1, Lha/qd;->r:Ljava/util/regex/Pattern;

    .line 165
    .line 166
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    const-string v6, ""

    .line 171
    .line 172
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 177
    .line 178
    .line 179
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 180
    .line 181
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    iget-object v6, v1, Lha/qd;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    .line 186
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_0

    .line 191
    .line 192
    invoke-virtual {p1, v5}, Lmc/b;->f(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_2
    const-wide/16 v5, 0x32

    .line 197
    .line 198
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    .line 204
    .line 205
    const-string v2, "\u8fde\u63a5\u5df2\u65ad\u5f00"

    .line 206
    .line 207
    invoke-static {v2}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    check-cast v2, Lgc/b;

    .line 215
    .line 216
    if-ne v2, v0, :cond_3

    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_3
    invoke-virtual {p1, v1}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    :cond_4
    :goto_5
    return-void

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
