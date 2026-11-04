.class public final synthetic Lqa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lqa/a;->a:I

    iput-object p1, p0, Lqa/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lqa/a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Lmc/b;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lqa/a;->c:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v2, p0, Lqa/a;->b:Ljava/lang/String;

    .line 5
    .line 6
    iget v3, p0, Lqa/a;->a:I

    .line 7
    .line 8
    packed-switch v3, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget v3, Lcom/yunpan/appmanage/ui/ActivityAdb;->G:I

    .line 12
    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v4, "setprop "

    .line 16
    .line 17
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, " "

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    new-array v2, v2, [Ljava/lang/String;

    .line 37
    .line 38
    aput-object v1, v2, v0

    .line 39
    .line 40
    invoke-static {v2}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lv9/e;->l0()Landroidx/room/s;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroidx/room/s;->q()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    const-string v0, "\u5931\u8d25\uff1a\u65e0\u6743\u9650"

    .line 55
    .line 56
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Ljava/lang/Exception;

    .line 60
    .line 61
    const-string v1, "\u4fee\u6539\u5931\u8d25"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lmc/b;->d(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void

    .line 74
    :pswitch_0
    new-instance v3, Ljava/io/File;

    .line 75
    .line 76
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_1

    .line 84
    .line 85
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_6

    .line 89
    .line 90
    :cond_1
    new-instance v4, Ll9/a;

    .line 91
    .line 92
    invoke-direct {v4, v1}, Ll9/a;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Lm9/e;->a()Lokhttp3/Response;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v4, "\u4e0b\u8f7d\u51fa\u9519"

    .line 100
    .line 101
    if-eqz v1, :cond_3

    .line 102
    .line 103
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-nez v5, :cond_2

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-nez v1, :cond_4

    .line 115
    .line 116
    :cond_3
    :goto_1
    invoke-static {v4, p1}, Landroid/support/v4/media/session/a;->B(Ljava/lang/String;Lmc/b;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_6

    .line 120
    .line 121
    :cond_4
    const/4 v5, 0x0

    .line 122
    :try_start_0
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 123
    .line 124
    .line 125
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 126
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    .line 127
    .line 128
    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 129
    .line 130
    .line 131
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 132
    .line 133
    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 134
    .line 135
    .line 136
    :try_start_3
    new-instance v7, Ljava/io/BufferedOutputStream;

    .line 137
    .line 138
    invoke-direct {v7, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 139
    .line 140
    .line 141
    const/high16 v5, 0x100000

    .line 142
    .line 143
    :try_start_4
    new-array v5, v5, [B

    .line 144
    .line 145
    :goto_2
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    .line 146
    .line 147
    .line 148
    move-result v8

    .line 149
    const/4 v9, -0x1

    .line 150
    if-eq v8, v9, :cond_5

    .line 151
    .line 152
    invoke-virtual {v7, v5, v0, v8}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catch_0
    nop

    .line 160
    :goto_3
    move-object v5, v2

    .line 161
    goto :goto_5

    .line 162
    :cond_5
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v7}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v6}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lmc/b;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_6

    .line 178
    :catch_1
    nop

    .line 179
    move-object v7, v5

    .line 180
    goto :goto_3

    .line 181
    :catch_2
    nop

    .line 182
    move-object v7, v5

    .line 183
    goto :goto_5

    .line 184
    :catch_3
    nop

    .line 185
    move-object v6, v5

    .line 186
    :goto_4
    move-object v7, v6

    .line 187
    goto :goto_5

    .line 188
    :catch_4
    nop

    .line 189
    move-object v1, v5

    .line 190
    move-object v6, v1

    .line 191
    goto :goto_4

    .line 192
    :goto_5
    invoke-static {v5}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v7}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v6}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_3

    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :goto_6
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
