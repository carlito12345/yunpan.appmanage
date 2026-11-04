.class public final synthetic Lv9/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lv9/i;


# direct methods
.method public synthetic constructor <init>(Lv9/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv9/f;->a:Lv9/i;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lv9/f;->a:Lv9/i;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v3, v2, Lv9/i;->d:Ljava/lang/Process;

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    .line 11
    .line 12
    .line 13
    new-instance v3, Ljava/io/IOException;

    .line 14
    .line 15
    const-string v4, "Created process has terminated"

    .line 16
    .line 17
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v3
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    iget-object v3, v2, Lv9/i;->f:Lv9/g;

    .line 22
    .line 23
    invoke-static {v3}, La9/o;->x(Ljava/io/InputStream;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, v2, Lv9/i;->g:Lv9/g;

    .line 27
    .line 28
    invoke-static {v3}, La9/o;->x(Ljava/io/InputStream;)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Ljava/io/BufferedReader;

    .line 32
    .line 33
    new-instance v4, Ljava/io/InputStreamReader;

    .line 34
    .line 35
    iget-object v5, v2, Lv9/i;->f:Lv9/g;

    .line 36
    .line 37
    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 41
    .line 42
    .line 43
    :try_start_1
    iget-object v4, v2, Lv9/i;->e:Lrg/c;

    .line 44
    .line 45
    const-string v5, "echo SHELL_TEST\n"

    .line 46
    .line 47
    const-string v6, "UTF-8"

    .line 48
    .line 49
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 58
    .line 59
    .line 60
    iget-object v4, v2, Lv9/i;->e:Lrg/c;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_3

    .line 74
    .line 75
    const-string v5, "SHELL_TEST"

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_3

    .line 82
    .line 83
    iget-object v4, v2, Lv9/i;->e:Lrg/c;

    .line 84
    .line 85
    const-string v5, "id\n"

    .line 86
    .line 87
    const-string v6, "UTF-8"

    .line 88
    .line 89
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 98
    .line 99
    .line 100
    iget-object v4, v2, Lv9/i;->e:Lrg/c;

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_2

    .line 114
    .line 115
    const-string v5, "uid=0"

    .line 116
    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_2

    .line 122
    .line 123
    const-class v4, Lv9/l;

    .line 124
    .line 125
    monitor-enter v4

    .line 126
    monitor-exit v4

    .line 127
    const-string v4, "user.dir"

    .line 128
    .line 129
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v6, "\'"

    .line 136
    .line 137
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    const/4 v7, 0x0

    .line 145
    :goto_0
    const/16 v8, 0x27

    .line 146
    .line 147
    if-ge v7, v6, :cond_1

    .line 148
    .line 149
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-ne v9, v8, :cond_0

    .line 154
    .line 155
    const-string v8, "\'\\\'\'"

    .line 156
    .line 157
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_0
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    :goto_1
    add-int/2addr v7, v1

    .line 165
    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    iget-object v5, v2, Lv9/i;->e:Lrg/c;

    .line 174
    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v7, "cd "

    .line 181
    .line 182
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v4, "\n"

    .line 189
    .line 190
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    const-string v6, "UTF-8"

    .line 198
    .line 199
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 208
    .line 209
    .line 210
    iget-object v2, v2, Lv9/i;->e:Lrg/c;

    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    .line 214
    .line 215
    const/4 v0, 0x1

    .line 216
    goto :goto_2

    .line 217
    :catchall_0
    move-exception v2

    .line 218
    goto :goto_3

    .line 219
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 220
    .line 221
    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    return-object v0

    .line 227
    :cond_3
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    .line 228
    .line 229
    const-string v4, "Created process is not a shell"

    .line 230
    .line 231
    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :catchall_1
    move-exception v3

    .line 240
    const-class v4, Ljava/lang/Throwable;

    .line 241
    .line 242
    :try_start_4
    const-string v5, "addSuppressed"

    .line 243
    .line 244
    new-array v6, v1, [Ljava/lang/Class;

    .line 245
    .line 246
    aput-object v4, v6, v0

    .line 247
    .line 248
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    new-array v1, v1, [Ljava/lang/Object;

    .line 253
    .line 254
    aput-object v3, v1, v0

    .line 255
    .line 256
    invoke-virtual {v4, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 257
    .line 258
    .line 259
    :catch_1
    :goto_4
    goto :goto_6

    .line 260
    :goto_5
    throw v2

    .line 261
    :goto_6
    goto :goto_5
.end method
