.class public final synthetic Lcom/yunpan/appmanage/db/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/yunpan/appmanage/db/a;->a:I

    iput-object p1, p0, Lcom/yunpan/appmanage/db/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    const-string v0, "addSuppressed"

    .line 2
    .line 3
    const-class v1, Ljava/lang/Throwable;

    .line 4
    .line 5
    const-string v2, "UTF-8"

    .line 6
    .line 7
    iget-object v3, p0, Lcom/yunpan/appmanage/db/a;->b:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    iget v6, p0, Lcom/yunpan/appmanage/db/a;->a:I

    .line 12
    .line 13
    packed-switch v6, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    .line 17
    .line 18
    sget-object v7, Lwa/w;->c:Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v6, v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v6, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception v2

    .line 38
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_1
    move-exception v3

    .line 43
    :try_start_4
    new-array v6, v5, [Ljava/lang/Class;

    .line 44
    .line 45
    aput-object v1, v6, v4

    .line 46
    .line 47
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-array v1, v5, [Ljava/lang/Object;

    .line 52
    .line 53
    aput-object v3, v1, v4

    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 56
    .line 57
    .line 58
    :catch_0
    :goto_0
    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 59
    :catch_1
    :goto_1
    return-void

    .line 60
    :pswitch_0
    :try_start_6
    new-instance v6, Ljava/io/FileOutputStream;

    .line 61
    .line 62
    sget-object v7, Lwa/w;->d:Ljava/io/File;

    .line 63
    .line 64
    invoke-direct {v6, v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 65
    .line 66
    .line 67
    :try_start_7
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v6, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 75
    .line 76
    .line 77
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :catchall_2
    move-exception v2

    .line 82
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catchall_3
    move-exception v3

    .line 87
    :try_start_a
    new-array v6, v5, [Ljava/lang/Class;

    .line 88
    .line 89
    aput-object v1, v6, v4

    .line 90
    .line 91
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    new-array v1, v5, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object v3, v1, v4

    .line 98
    .line 99
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 100
    .line 101
    .line 102
    :catch_2
    :goto_2
    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 103
    :catch_3
    :goto_3
    return-void

    .line 104
    :pswitch_1
    :try_start_c
    new-instance v6, Ljava/io/FileOutputStream;

    .line 105
    .line 106
    sget-object v7, Lwa/w;->c:Ljava/io/File;

    .line 107
    .line 108
    invoke-direct {v6, v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 109
    .line 110
    .line 111
    :try_start_d
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v6, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 119
    .line 120
    .line 121
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    .line 122
    .line 123
    .line 124
    goto :goto_5

    .line 125
    :catchall_4
    move-exception v2

    .line 126
    :try_start_f
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :catchall_5
    move-exception v3

    .line 131
    :try_start_10
    new-array v6, v5, [Ljava/lang/Class;

    .line 132
    .line 133
    aput-object v1, v6, v4

    .line 134
    .line 135
    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-array v1, v5, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object v3, v1, v4

    .line 142
    .line 143
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    .line 144
    .line 145
    .line 146
    :catch_4
    :goto_4
    :try_start_11
    throw v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 147
    :catch_5
    :goto_5
    return-void

    .line 148
    :pswitch_2
    sget-object v0, Lfa/l;->a:Lfa/m;

    .line 149
    .line 150
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->isConnected()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_0

    .line 155
    .line 156
    invoke-virtual {v0, v3}, Lfa/m;->O(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_0
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 161
    .line 162
    invoke-virtual {v0, v3}, Lfa/j;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_1

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    :cond_1
    :goto_6
    return-void

    .line 184
    :pswitch_3
    invoke-static {v3}, Lcom/yunpan/appmanage/db/MyDb;->d(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
