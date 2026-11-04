.class public final Lfa/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/hardware/usb/UsbManager;

.field public b:Landroid/hardware/usb/UsbDeviceConnection;

.field public c:Lz9/a;

.field public d:Lz9/d;

.field public e:Landroid/hardware/usb/UsbDevice;

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lfa/e0;->b:Landroid/hardware/usb/UsbDeviceConnection;

    .line 6
    .line 7
    iput-object v0, p0, Lfa/e0;->c:Lz9/a;

    .line 8
    .line 9
    iput-object v0, p0, Lfa/e0;->d:Lz9/d;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lfa/e0;->f:Z

    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    iput-object v1, p0, Lfa/e0;->g:Ljava/lang/String;

    .line 17
    .line 18
    iput v0, p0, Lfa/e0;->h:I

    .line 19
    .line 20
    iput v0, p0, Lfa/e0;->i:I

    .line 21
    .line 22
    return-void
.end method

.method public static b(Landroid/content/ContextWrapper;)Lz9/b;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "/"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_0
    const-string v0, "key/"

    .line 22
    .line 23
    invoke-static {p0, v0}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Ljava/io/File;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Ljava/io/File;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 44
    .line 45
    .line 46
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 47
    .line 48
    const-string v1, "privateKey"

    .line 49
    .line 50
    invoke-static {p0, v1}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Ljava/io/File;

    .line 58
    .line 59
    const-string v2, "publicKey"

    .line 60
    .line 61
    invoke-static {p0, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_2

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_2

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    const-wide/16 v4, 0x0

    .line 85
    .line 86
    cmp-long p0, v2, v4

    .line 87
    .line 88
    if-lez p0, :cond_2

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    cmp-long p0, v2, v4

    .line 95
    .line 96
    if-lez p0, :cond_2

    .line 97
    .line 98
    new-instance p0, La2/u0;

    .line 99
    .line 100
    const/16 v2, 0x1b

    .line 101
    .line 102
    invoke-direct {p0, v2}, La2/u0;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-static {p0, v0, v1}, Lz9/b;->b(La2/u0;Ljava/io/File;Ljava/io/File;)Lz9/b;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    goto :goto_0

    .line 110
    :cond_2
    new-instance p0, La2/u0;

    .line 111
    .line 112
    const/16 v2, 0x1c

    .line 113
    .line 114
    invoke-direct {p0, v2}, La2/u0;-><init>(I)V

    .line 115
    .line 116
    .line 117
    new-instance v2, Lz9/b;

    .line 118
    .line 119
    invoke-direct {v2}, Lz9/b;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v3, "RSA"

    .line 123
    .line 124
    invoke-static {v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    const/16 v4, 0x800

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    iput-object v3, v2, Lz9/b;->a:Ljava/security/KeyPair;

    .line 138
    .line 139
    iput-object p0, v2, Lz9/b;->b:La2/u0;

    .line 140
    .line 141
    new-instance p0, Ljava/io/FileOutputStream;

    .line 142
    .line 143
    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Ljava/io/FileOutputStream;

    .line 147
    .line 148
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 149
    .line 150
    .line 151
    iget-object v1, v2, Lz9/b;->a:Ljava/security/KeyPair;

    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {p0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 162
    .line 163
    .line 164
    iget-object v1, v2, Lz9/b;->a:Ljava/security/KeyPair;

    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    .line 183
    move-object p0, v2

    .line 184
    :goto_0
    return-object p0

    .line 185
    :catch_0
    const/4 p0, 0x0

    .line 186
    return-object p0
.end method


# virtual methods
.method public final a(JLjava/lang/String;)Lcom/yunpan/appmanage/bean/UsbAdbData;
    .locals 5

    .line 1
    const-string v0, "appops set --user "

    .line 2
    .line 3
    const-string v1, "pm grant --user "

    .line 4
    .line 5
    new-instance v2, Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 6
    .line 7
    invoke-direct {v2}, Lcom/yunpan/appmanage/bean/UsbAdbData;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lfa/e0;->c()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    iget-object p1, v2, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 17
    .line 18
    const-string p2, "\u8fde\u63a5\u5df2\u65ad\u5f00\uff0c\u8bf7\u91cd\u65b0\u8fde\u63a5"

    .line 19
    .line 20
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-object v2

    .line 24
    :cond_0
    :try_start_0
    const-string v3, "adb shell "

    .line 25
    .line 26
    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/16 v4, 0xa

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    :cond_1
    iget v3, p0, Lfa/e0;->i:I

    .line 39
    .line 40
    if-lez v3, :cond_2

    .line 41
    .line 42
    const-string v3, "pm grant "

    .line 43
    .line 44
    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    const-string v3, "--user"

    .line 51
    .line 52
    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    const-string v3, "pm grant "

    .line 59
    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget v1, p0, Lfa/e0;->i:I

    .line 66
    .line 67
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, " "

    .line 71
    .line 72
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p3, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    :cond_2
    iget v1, p0, Lfa/e0;->i:I

    .line 84
    .line 85
    if-lez v1, :cond_3

    .line 86
    .line 87
    const-string v1, "appops set "

    .line 88
    .line 89
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    const-string v1, "--user"

    .line 96
    .line 97
    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_3

    .line 102
    .line 103
    const-string v1, "appops set "

    .line 104
    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget v0, p0, Lfa/e0;->i:I

    .line 111
    .line 112
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v0, " "

    .line 116
    .line 117
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    :cond_3
    iget-object v0, p0, Lfa/e0;->d:Lz9/d;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    .line 132
    .line 133
    const/4 v1, 0x3

    .line 134
    :try_start_1
    new-array v1, v1, [B

    .line 135
    .line 136
    fill-array-data v1, :array_0

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lz9/d;->N([B)V

    .line 140
    .line 141
    .line 142
    const-wide/16 v0, 0x3c

    .line 143
    .line 144
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    .line 146
    .line 147
    :catch_0
    :try_start_2
    iget-object v0, p0, Lfa/e0;->d:Lz9/d;

    .line 148
    .line 149
    iget-object v1, v0, Lz9/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 150
    .line 151
    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 152
    :try_start_3
    iget-boolean v3, v0, Lz9/d;->f:Z

    .line 153
    .line 154
    if-nez v3, :cond_5

    .line 155
    .line 156
    :goto_0
    iget-object v3, v0, Lz9/d;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    if-eqz v3, :cond_4

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    :try_start_4
    iget-object v0, p0, Lfa/e0;->d:Lz9/d;

    .line 167
    .line 168
    invoke-virtual {v0, p3}, Lz9/d;->M(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object p3, p0, Lfa/e0;->d:Lz9/d;

    .line 172
    .line 173
    invoke-virtual {p3, p1, p2}, Lz9/d;->K(J)Lcom/yunpan/appmanage/bean/UsbAdbData;

    .line 174
    .line 175
    .line 176
    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 177
    goto :goto_2

    .line 178
    :catchall_0
    move-exception p1

    .line 179
    goto :goto_1

    .line 180
    :cond_5
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    .line 181
    .line 182
    const-string p2, "Stream closed"

    .line 183
    .line 184
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw p1

    .line 188
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 189
    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 190
    :catch_1
    iget-object p1, v2, Lcom/yunpan/appmanage/bean/UsbAdbData;->lines:Ljava/util/List;

    .line 191
    .line 192
    const-string p2, "\u547d\u4ee4\u6267\u884c\u51fa\u9519"

    .line 193
    .line 194
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    :goto_2
    return-object v2

    .line 198
    nop

    .line 199
    :array_0
    .array-data 1
        0x0t
        0x1ct
        0xat
    .end array-data
.end method

.method public final c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lfa/e0;->b:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lfa/e0;->c:Lz9/a;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lfa/e0;->d:Lz9/d;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, v0, Lz9/d;->f:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lfa/e0;->a:Landroid/hardware/usb/UsbManager;

    .line 20
    .line 21
    iget-object v2, p0, Lfa/e0;->e:Landroid/hardware/usb/UsbDevice;

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    return v0

    .line 32
    :cond_2
    :goto_0
    return v1
.end method
