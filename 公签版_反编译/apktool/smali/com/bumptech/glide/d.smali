.class public abstract Lcom/bumptech/glide/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/m1;


# static fields
.field public static a:Ljava/lang/reflect/Method;

.field public static b:Z

.field public static c:Ljava/lang/reflect/Field;

.field public static d:Z


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A([BIIII)I
    .locals 2

    .line 1
    add-int/2addr p4, p1

    .line 2
    add-int/2addr p3, p1

    .line 3
    :goto_0
    if-ge p3, p4, :cond_0

    .line 4
    .line 5
    aget-byte v0, p0, p3

    .line 6
    .line 7
    sub-int v1, p3, p2

    .line 8
    .line 9
    aget-byte v1, p0, v1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    add-int/lit8 p3, p3, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sub-int/2addr p3, p1

    .line 17
    return p3
.end method

.method public static B(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "getprop "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v0, Ljava/io/BufferedReader;

    .line 25
    .line 26
    new-instance v2, Ljava/io/InputStreamReader;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 33
    .line 34
    .line 35
    const/16 p0, 0x400

    .line 36
    .line 37
    invoke-direct {v0, v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    return-object p0

    .line 50
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 51
    .line 52
    .line 53
    :catch_1
    return-object v1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    move-object v1, v0

    .line 56
    goto :goto_0

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    :goto_0
    if-eqz v1, :cond_1

    .line 59
    .line 60
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 61
    .line 62
    .line 63
    :catch_2
    :cond_1
    throw p0
.end method

.method public static C(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const-string v3, ""

    .line 5
    .line 6
    if-eqz p0, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-eqz v4, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    const/4 v4, 0x0

    .line 17
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    .line 18
    .line 19
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    new-array v6, v2, [Ljava/lang/Class;

    .line 24
    .line 25
    const-class v7, Ljava/lang/String;

    .line 26
    .line 27
    aput-object v7, v6, v1

    .line 28
    .line 29
    aput-object v7, v6, v0

    .line 30
    .line 31
    const-string v7, "get"

    .line 32
    .line 33
    invoke-virtual {v5, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    new-array v2, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p0, v2, v1

    .line 40
    .line 41
    aput-object v3, v2, v0

    .line 42
    .line 43
    invoke-virtual {v6, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    nop

    .line 51
    move-object v0, v4

    .line 52
    :goto_0
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/bumptech/glide/d;->B(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    goto :goto_1

    .line 66
    :catch_1
    nop

    .line 67
    :goto_1
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_2
    :try_start_2
    new-instance v1, Ljava/util/Properties;

    .line 77
    .line 78
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v2, Ljava/io/File;

    .line 82
    .line 83
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const-string v6, "build.prop"

    .line 88
    .line 89
    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v5, Ljava/io/FileInputStream;

    .line 93
    .line 94
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    .line 96
    .line 97
    :try_start_3
    invoke-virtual {v1, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    move-object v4, v5

    .line 110
    goto :goto_2

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    :goto_2
    if-eqz v4, :cond_3

    .line 113
    .line 114
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 115
    .line 116
    .line 117
    :catch_2
    :cond_3
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 118
    :catch_3
    nop

    .line 119
    :goto_3
    if-eqz v0, :cond_4

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    if-nez p0, :cond_4

    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_4
    :goto_4
    return-object v3
.end method

.method public static D(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "secure"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "float"

    .line 12
    .line 13
    const-string v2, "string"

    .line 14
    .line 15
    const-string v3, "long"

    .line 16
    .line 17
    const-string v4, "int"

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 40
    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide p1

    .line 62
    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 63
    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_b

    .line 95
    .line 96
    invoke-static {p4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 105
    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v5, "system"

    .line 114
    .line 115
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_4

    .line 130
    .line 131
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_5

    .line 158
    .line 159
    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 164
    .line 165
    .line 166
    move-result-wide p1

    .line 167
    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_6

    .line 181
    .line 182
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-eqz p1, :cond_b

    .line 200
    .line 201
    invoke-static {p4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 210
    .line 211
    .line 212
    goto :goto_0

    .line 213
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    const-string v0, "global"

    .line 218
    .line 219
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_b

    .line 224
    .line 225
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-eqz p1, :cond_8

    .line 234
    .line 235
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 244
    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-eqz p1, :cond_9

    .line 256
    .line 257
    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 262
    .line 263
    .line 264
    move-result-wide p1

    .line 265
    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 266
    .line 267
    .line 268
    goto :goto_0

    .line 269
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-eqz p1, :cond_a

    .line 278
    .line 279
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 284
    .line 285
    .line 286
    goto :goto_0

    .line 287
    :cond_a
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-eqz p1, :cond_b

    .line 296
    .line 297
    invoke-static {p4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 302
    .line 303
    .line 304
    move-result p1

    .line 305
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 306
    .line 307
    .line 308
    :cond_b
    :goto_0
    return-void
.end method

.method public static E(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "secure"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "float"

    .line 12
    .line 13
    const-string v2, "string"

    .line 14
    .line 15
    const-string v3, "long"

    .line 16
    .line 17
    const-string v4, "int"

    .line 18
    .line 19
    if-eqz v0, :cond_7

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-static {p0, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :cond_0
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-static {p0, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide p1

    .line 85
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_2

    .line 94
    .line 95
    invoke-static {p5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 100
    .line 101
    .line 102
    move-result-wide p1

    .line 103
    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 104
    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :cond_2
    invoke-static {p6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 113
    .line 114
    .line 115
    move-result-wide p1

    .line 116
    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 117
    .line 118
    .line 119
    goto/16 :goto_0

    .line 120
    .line 121
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    invoke-static {p0, p3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-nez p1, :cond_4

    .line 144
    .line 145
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_4
    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_17

    .line 172
    .line 173
    invoke-static {p0, p3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_6

    .line 186
    .line 187
    invoke-static {p5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 196
    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :cond_6
    invoke-static {p6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 209
    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    const-string v5, "system"

    .line 218
    .line 219
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_f

    .line 224
    .line 225
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-eqz p1, :cond_9

    .line 234
    .line 235
    invoke-static {p0, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-nez p1, :cond_8

    .line 248
    .line 249
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :cond_8
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    if-eqz p1, :cond_b

    .line 284
    .line 285
    invoke-static {p0, p3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    .line 286
    .line 287
    .line 288
    move-result-wide p1

    .line 289
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-nez p1, :cond_a

    .line 298
    .line 299
    invoke-static {p5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 304
    .line 305
    .line 306
    move-result-wide p1

    .line 307
    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 308
    .line 309
    .line 310
    goto/16 :goto_0

    .line 311
    .line 312
    :cond_a
    invoke-static {p6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 317
    .line 318
    .line 319
    move-result-wide p1

    .line 320
    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 321
    .line 322
    .line 323
    goto/16 :goto_0

    .line 324
    .line 325
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result p1

    .line 333
    if-eqz p1, :cond_d

    .line 334
    .line 335
    invoke-static {p0, p3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-nez p1, :cond_c

    .line 348
    .line 349
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    goto/16 :goto_0

    .line 357
    .line 358
    :cond_c
    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 363
    .line 364
    .line 365
    goto/16 :goto_0

    .line 366
    .line 367
    :cond_d
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    if-eqz p1, :cond_17

    .line 376
    .line 377
    invoke-static {p0, p3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    .line 378
    .line 379
    .line 380
    move-result p1

    .line 381
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result p1

    .line 389
    if-nez p1, :cond_e

    .line 390
    .line 391
    invoke-static {p5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 396
    .line 397
    .line 398
    move-result p1

    .line 399
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 400
    .line 401
    .line 402
    goto/16 :goto_0

    .line 403
    .line 404
    :cond_e
    invoke-static {p6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 409
    .line 410
    .line 411
    move-result p1

    .line 412
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 413
    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    const-string v0, "global"

    .line 422
    .line 423
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result p1

    .line 427
    if-eqz p1, :cond_17

    .line 428
    .line 429
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result p1

    .line 437
    if-eqz p1, :cond_11

    .line 438
    .line 439
    invoke-static {p0, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result p1

    .line 451
    if-nez p1, :cond_10

    .line 452
    .line 453
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 458
    .line 459
    .line 460
    move-result p1

    .line 461
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 462
    .line 463
    .line 464
    goto/16 :goto_0

    .line 465
    .line 466
    :cond_10
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 471
    .line 472
    .line 473
    move-result p1

    .line 474
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 475
    .line 476
    .line 477
    goto/16 :goto_0

    .line 478
    .line 479
    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result p1

    .line 487
    if-eqz p1, :cond_13

    .line 488
    .line 489
    invoke-static {p0, p3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    .line 490
    .line 491
    .line 492
    move-result-wide p1

    .line 493
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object p1

    .line 497
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 498
    .line 499
    .line 500
    move-result p1

    .line 501
    if-nez p1, :cond_12

    .line 502
    .line 503
    invoke-static {p5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 508
    .line 509
    .line 510
    move-result-wide p1

    .line 511
    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 512
    .line 513
    .line 514
    goto :goto_0

    .line 515
    :cond_12
    invoke-static {p6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 516
    .line 517
    .line 518
    move-result-object p1

    .line 519
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 520
    .line 521
    .line 522
    move-result-wide p1

    .line 523
    invoke-static {p0, p3, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 524
    .line 525
    .line 526
    goto :goto_0

    .line 527
    :cond_13
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result p1

    .line 535
    if-eqz p1, :cond_15

    .line 536
    .line 537
    invoke-static {p0, p3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object p1

    .line 541
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    move-result p1

    .line 549
    if-nez p1, :cond_14

    .line 550
    .line 551
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 556
    .line 557
    .line 558
    goto :goto_0

    .line 559
    :cond_14
    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 564
    .line 565
    .line 566
    goto :goto_0

    .line 567
    :cond_15
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object p1

    .line 571
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result p1

    .line 575
    if-eqz p1, :cond_17

    .line 576
    .line 577
    invoke-static {p0, p3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    .line 578
    .line 579
    .line 580
    move-result p1

    .line 581
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object p1

    .line 585
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result p1

    .line 589
    if-nez p1, :cond_16

    .line 590
    .line 591
    invoke-static {p5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 596
    .line 597
    .line 598
    move-result p1

    .line 599
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 600
    .line 601
    .line 602
    goto :goto_0

    .line 603
    :cond_16
    invoke-static {p6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 608
    .line 609
    .line 610
    move-result p1

    .line 611
    invoke-static {p0, p3, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 612
    .line 613
    .line 614
    :cond_17
    :goto_0
    return-void
.end method

.method public static F(Ljava/lang/String;Ljava/lang/String;Lag/h;Lma/k;)Lma/l;
    .locals 6

    .line 1
    const-string v0, ">>"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    array-length v0, p0

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x5

    .line 11
    if-lt v0, v3, :cond_b

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    aget-object v0, p0, v0

    .line 15
    .line 16
    const-string v4, "223"

    .line 17
    .line 18
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_b

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    aget-object v4, p0, v0

    .line 26
    .line 27
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_0
    const-string p1, "INSTALL"

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    aget-object v5, p0, v4

    .line 39
    .line 40
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 v5, 0x4

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    aget-object p0, p0, v5

    .line 48
    .line 49
    const-string p1, "confirm_pending"

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iput-boolean v4, p2, Lag/h;->a:Z

    .line 58
    .line 59
    invoke-interface {p3}, Lma/k;->j()V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_3

    .line 63
    .line 64
    :cond_1
    const-string p1, "denied"

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    new-instance p0, Lma/l;

    .line 73
    .line 74
    const-string p1, "\u7535\u89c6\u4e0a\u70b9\u4e86\u62d2\u7edd"

    .line 75
    .line 76
    const/4 p2, 0x0

    .line 77
    invoke-direct {p0, v0, p1, p2}, Lma/l;-><init>(ILjava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :cond_2
    const-string p1, "installed"

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    new-instance p0, Lma/l;

    .line 90
    .line 91
    const-string p1, "\u7535\u89c6\u76f4\u63a5\u56de\u62a5\u5df2\u5b89\u88c5"

    .line 92
    .line 93
    const/4 p2, 0x0

    .line 94
    invoke-direct {p0, v4, p1, p2}, Lma/l;-><init>(ILjava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_3
    const-string p1, "installing"

    .line 99
    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-eqz p0, :cond_b

    .line 105
    .line 106
    iget-boolean p0, p2, Lag/h;->a:Z

    .line 107
    .line 108
    if-nez p0, :cond_b

    .line 109
    .line 110
    invoke-interface {p3}, Lma/k;->r()V

    .line 111
    .line 112
    .line 113
    new-instance p0, Lma/l;

    .line 114
    .line 115
    const-string p1, "\u7535\u89c6\u6b63\u5728\u5b89\u88c5\u5176\u5b83\u5e94\u7528"

    .line 116
    .line 117
    const/4 p2, 0x0

    .line 118
    invoke-direct {p0, v5, p1, p2}, Lma/l;-><init>(ILjava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    return-object p0

    .line 122
    :cond_4
    const-string p1, "PROGRESS"

    .line 123
    .line 124
    aget-object p2, p0, v4

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_b

    .line 131
    .line 132
    aget-object p1, p0, v5

    .line 133
    .line 134
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 143
    :catch_0
    nop

    .line 144
    const/4 p1, -0x1

    .line 145
    :goto_0
    array-length p2, p0

    .line 146
    if-le p2, v3, :cond_5

    .line 147
    .line 148
    aget-object p0, p0, v3

    .line 149
    .line 150
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    goto :goto_1

    .line 159
    :catch_1
    nop

    .line 160
    :cond_5
    :goto_1
    const/4 p0, 0x3

    .line 161
    if-eq p1, v4, :cond_9

    .line 162
    .line 163
    if-eq p1, v0, :cond_8

    .line 164
    .line 165
    if-eq p1, p0, :cond_7

    .line 166
    .line 167
    if-eq p1, v3, :cond_6

    .line 168
    .line 169
    const-string p2, "\u672a\u77e5"

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_6
    const-string p2, "\u5df2\u5b8c\u6210"

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_7
    const-string p2, "\u5b89\u88c5\u4e2d"

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    const-string p2, "\u5931\u8d25"

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_9
    const-string p2, "\u4e0b\u8f7d\u4e2d"

    .line 182
    .line 183
    :goto_2
    invoke-interface {p3, v1, p2}, Lma/k;->e(ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    if-ne p1, v3, :cond_a

    .line 187
    .line 188
    new-instance p0, Lma/l;

    .line 189
    .line 190
    const-string p1, "\u9636\u6bb5 5"

    .line 191
    .line 192
    const/4 p2, 0x0

    .line 193
    invoke-direct {p0, v4, p1, p2}, Lma/l;-><init>(ILjava/lang/String;I)V

    .line 194
    .line 195
    .line 196
    return-object p0

    .line 197
    :cond_a
    if-ne p1, v0, :cond_b

    .line 198
    .line 199
    new-instance p1, Lma/l;

    .line 200
    .line 201
    const-string p2, "\u7535\u89c6\u4e0b\u8f7d\u6216\u5b89\u88c5\u5931\u8d25"

    .line 202
    .line 203
    const/4 p3, 0x0

    .line 204
    invoke-direct {p1, p0, p2, p3}, Lma/l;-><init>(ILjava/lang/String;I)V

    .line 205
    .line 206
    .line 207
    return-object p1

    .line 208
    :cond_b
    :goto_3
    return-object v2
.end method

.method public static G(Ljava/lang/String;Lma/k;)Lma/l;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v3, 0x3

    .line 4
    const/4 v4, 0x2

    .line 5
    const/16 v5, 0xc

    .line 6
    .line 7
    const/4 v7, 0x1

    .line 8
    const/4 v8, 0x0

    .line 9
    invoke-static/range {p0 .. p0}, Lcom/yunpan/appmanage/util/a0;->g(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v9

    .line 13
    const/4 v10, 0x6

    .line 14
    if-nez v9, :cond_0

    .line 15
    .line 16
    new-instance v0, Lma/l;

    .line 17
    .line 18
    const-string v1, "APK \u6587\u4ef6\u4e0d\u5b58\u5728"

    .line 19
    .line 20
    invoke-direct {v0, v10, v1, v8}, Lma/l;-><init>(ILjava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance v9, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    const-string v12, "MD5"

    .line 30
    .line 31
    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 32
    .line 33
    .line 34
    move-result-object v12

    .line 35
    new-instance v13, Ljava/io/FileInputStream;

    .line 36
    .line 37
    invoke-direct {v13, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 38
    .line 39
    .line 40
    const/16 v14, 0x2000

    .line 41
    .line 42
    :try_start_1
    new-array v15, v14, [B

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v13, v15}, Ljava/io/FileInputStream;->read([B)I

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    if-lez v11, :cond_1

    .line 49
    .line 50
    invoke-virtual {v12, v15, v8, v11}, Ljava/security/MessageDigest;->update([BII)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    move-object v11, v13

    .line 56
    goto/16 :goto_11

    .line 57
    .line 58
    :catch_0
    move-exception v0

    .line 59
    move-object v11, v13

    .line 60
    goto/16 :goto_f

    .line 61
    .line 62
    :catch_1
    move-exception v0

    .line 63
    move-object v11, v13

    .line 64
    goto/16 :goto_10

    .line 65
    .line 66
    :cond_1
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    .line 67
    .line 68
    .line 69
    move-result-object v11

    .line 70
    invoke-static {v11}, Lcom/bumptech/glide/d;->h0([B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    .line 76
    .line 77
    :catch_2
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 78
    .line 79
    invoke-virtual {v9}, Ljava/io/File;->length()J

    .line 80
    .line 81
    .line 82
    move-result-wide v14

    .line 83
    long-to-double v13, v14

    .line 84
    const-wide/high16 v17, 0x4130000000000000L    # 1048576.0

    .line 85
    .line 86
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    .line 87
    .line 88
    .line 89
    div-double v13, v13, v17

    .line 90
    .line 91
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    new-array v14, v7, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object v13, v14, v8

    .line 98
    .line 99
    const-string v13, "%.2f"

    .line 100
    .line 101
    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    :try_start_3
    new-instance v14, Lef/b;

    .line 106
    .line 107
    invoke-direct {v14, v9}, Lef/b;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    .line 108
    .line 109
    .line 110
    :try_start_4
    invoke-virtual {v14}, Lef/b;->M()V

    .line 111
    .line 112
    .line 113
    iget-object v9, v14, Lef/b;->e:Lff/c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 114
    .line 115
    :try_start_5
    invoke-virtual {v14}, Lef/b;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    .line 116
    .line 117
    .line 118
    new-instance v14, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v15, "http://"

    .line 121
    .line 122
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    sget-object v15, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 126
    .line 127
    sget-object v15, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 128
    .line 129
    iget-object v1, v15, Lcom/yunpan/appmanage/util/k;->i0:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, ":"

    .line 135
    .line 136
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget v1, v15, Lcom/yunpan/appmanage/util/k;->j0:I

    .line 140
    .line 141
    const-string v10, "/path"

    .line 142
    .line 143
    invoke-static {v14, v1, v10}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v1, "UTF-8"

    .line 156
    .line 157
    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 168
    iget-object v1, v15, Lcom/yunpan/appmanage/util/k;->i0:Ljava/lang/String;

    .line 169
    .line 170
    iget-object v10, v9, Lff/c;->a:Ljava/lang/String;

    .line 171
    .line 172
    iget-object v14, v9, Lff/c;->b:Ljava/lang/String;

    .line 173
    .line 174
    iget-object v9, v9, Lff/c;->e:Ljava/lang/Long;

    .line 175
    .line 176
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 177
    .line 178
    .line 179
    move-result-wide v19

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    if-nez v9, :cond_12

    .line 185
    .line 186
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    if-eqz v9, :cond_2

    .line 191
    .line 192
    goto/16 :goto_a

    .line 193
    .line 194
    :cond_2
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-eqz v9, :cond_3

    .line 199
    .line 200
    const-string v13, "20"

    .line 201
    .line 202
    :cond_3
    :try_start_7
    new-instance v9, Ljava/net/Socket;

    .line 203
    .line 204
    invoke-direct {v9}, Ljava/net/Socket;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 205
    .line 206
    .line 207
    :try_start_8
    new-instance v15, Ljava/net/InetSocketAddress;

    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 210
    .line 211
    .line 212
    move-result v16

    .line 213
    if-eqz v16, :cond_4

    .line 214
    .line 215
    const-string v1, "localhost"

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :catchall_1
    move-exception v0

    .line 219
    move-object v11, v9

    .line 220
    goto/16 :goto_9

    .line 221
    .line 222
    :catch_3
    move-exception v0

    .line 223
    move-object v11, v9

    .line 224
    goto/16 :goto_8

    .line 225
    .line 226
    :cond_4
    :goto_1
    const/16 v2, 0x1999

    .line 227
    .line 228
    invoke-direct {v15, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 229
    .line 230
    .line 231
    const/16 v1, 0x1388

    .line 232
    .line 233
    invoke-virtual {v9, v15, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 234
    .line 235
    .line 236
    const/16 v1, 0x3e8

    .line 237
    .line 238
    invoke-virtual {v9, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v9, v7}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v9, v7}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v9}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    const-string v15, "159>>1>>0"

    .line 256
    .line 257
    invoke-static {v1, v15}, Lcom/bumptech/glide/d;->e0(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v0}, Lcom/bumptech/glide/d;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v15

    .line 264
    const-string v6, ">>"

    .line 265
    .line 266
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v16

    .line 270
    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v11

    .line 274
    new-array v12, v5, [Ljava/lang/String;

    .line 275
    .line 276
    const-string v19, "223"

    .line 277
    .line 278
    aput-object v19, v12, v8

    .line 279
    .line 280
    const-string v19, "INSTALL"

    .line 281
    .line 282
    aput-object v19, v12, v7

    .line 283
    .line 284
    aput-object v10, v12, v4

    .line 285
    .line 286
    aput-object v14, v12, v3

    .line 287
    .line 288
    const/4 v14, 0x4

    .line 289
    aput-object v0, v12, v14

    .line 290
    .line 291
    const-string v0, "2"

    .line 292
    .line 293
    const/4 v14, 0x5

    .line 294
    aput-object v0, v12, v14

    .line 295
    .line 296
    const/4 v14, 0x6

    .line 297
    aput-object v16, v12, v14

    .line 298
    .line 299
    const/4 v0, 0x7

    .line 300
    aput-object v13, v12, v0

    .line 301
    .line 302
    const/16 v0, 0x8

    .line 303
    .line 304
    aput-object v11, v12, v0

    .line 305
    .line 306
    const-string v0, ""

    .line 307
    .line 308
    const/16 v11, 0x9

    .line 309
    .line 310
    aput-object v0, v12, v11

    .line 311
    .line 312
    const/16 v11, 0xa

    .line 313
    .line 314
    aput-object v0, v12, v11

    .line 315
    .line 316
    const/16 v0, 0xb

    .line 317
    .line 318
    aput-object v15, v12, v0

    .line 319
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const/4 v11, 0x0

    .line 326
    :goto_2
    if-ge v11, v5, :cond_6

    .line 327
    .line 328
    if-lez v11, :cond_5

    .line 329
    .line 330
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    :cond_5
    aget-object v13, v12, v11

    .line 334
    .line 335
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    add-int/2addr v11, v7

    .line 339
    goto :goto_2

    .line 340
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-static {v1, v0}, Lcom/bumptech/glide/d;->e0(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 348
    .line 349
    .line 350
    move-result-wide v5

    .line 351
    const-wide/32 v11, 0x3a980

    .line 352
    .line 353
    .line 354
    add-long/2addr v5, v11

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 356
    .line 357
    .line 358
    move-result-wide v13

    .line 359
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 360
    .line 361
    const/16 v15, 0x2000

    .line 362
    .line 363
    invoke-direct {v0, v15}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 364
    .line 365
    .line 366
    const/high16 v15, 0x10000

    .line 367
    .line 368
    new-array v15, v15, [B

    .line 369
    .line 370
    new-instance v11, Lag/h;

    .line 371
    .line 372
    invoke-direct {v11}, Lag/h;-><init>()V

    .line 373
    .line 374
    .line 375
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 376
    .line 377
    .line 378
    move-result-wide v19
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 379
    cmp-long v12, v19, v5

    .line 380
    .line 381
    if-gez v12, :cond_10

    .line 382
    .line 383
    :try_start_9
    invoke-virtual {v2, v15}, Ljava/io/InputStream;->read([B)I

    .line 384
    .line 385
    .line 386
    move-result v12

    .line 387
    if-gez v12, :cond_8

    .line 388
    .line 389
    new-instance v12, Lma/l;

    .line 390
    .line 391
    const-string v3, "\u8fde\u63a5\u88ab\u7535\u89c6\u5173\u95ed"

    .line 392
    .line 393
    const/4 v4, 0x6

    .line 394
    invoke-direct {v12, v4, v3, v8}, Lma/l;-><init>(ILjava/lang/String;I)V
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 395
    .line 396
    .line 397
    :catch_4
    :cond_7
    :goto_4
    :try_start_a
    invoke-virtual {v9}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 398
    .line 399
    .line 400
    goto/16 :goto_b

    .line 401
    .line 402
    :cond_8
    :try_start_b
    invoke-virtual {v0, v15, v8, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 403
    .line 404
    .line 405
    :catch_5
    :goto_5
    :try_start_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    array-length v4, v3

    .line 410
    const/4 v12, 0x4

    .line 411
    if-ge v4, v12, :cond_9

    .line 412
    .line 413
    const/16 v17, 0x8

    .line 414
    .line 415
    goto :goto_6

    .line 416
    :cond_9
    aget-byte v4, v3, v8

    .line 417
    .line 418
    and-int/lit16 v4, v4, 0xff

    .line 419
    .line 420
    shl-int/lit8 v4, v4, 0x18

    .line 421
    .line 422
    aget-byte v12, v3, v7

    .line 423
    .line 424
    and-int/lit16 v12, v12, 0xff

    .line 425
    .line 426
    shl-int/lit8 v12, v12, 0x10

    .line 427
    .line 428
    or-int/2addr v4, v12

    .line 429
    const/4 v12, 0x2

    .line 430
    aget-byte v7, v3, v12

    .line 431
    .line 432
    and-int/lit16 v7, v7, 0xff

    .line 433
    .line 434
    const/16 v17, 0x8

    .line 435
    .line 436
    shl-int/lit8 v7, v7, 0x8

    .line 437
    .line 438
    or-int/2addr v4, v7

    .line 439
    const/4 v7, 0x3

    .line 440
    aget-byte v12, v3, v7

    .line 441
    .line 442
    and-int/lit16 v7, v12, 0xff

    .line 443
    .line 444
    or-int/2addr v4, v7

    .line 445
    if-lez v4, :cond_f

    .line 446
    .line 447
    const/high16 v7, 0x100000

    .line 448
    .line 449
    if-lt v4, v7, :cond_a

    .line 450
    .line 451
    goto :goto_7

    .line 452
    :cond_a
    array-length v7, v3

    .line 453
    const/4 v12, 0x4

    .line 454
    add-int/lit8 v8, v4, 0x4

    .line 455
    .line 456
    if-ge v7, v8, :cond_c

    .line 457
    .line 458
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 459
    .line 460
    .line 461
    move-result-wide v3

    .line 462
    sub-long v7, v3, v13

    .line 463
    .line 464
    const-wide/16 v21, 0x1388

    .line 465
    .line 466
    cmp-long v12, v7, v21

    .line 467
    .line 468
    if-lez v12, :cond_b

    .line 469
    .line 470
    const-string v7, "150>>"

    .line 471
    .line 472
    invoke-static {v1, v7}, Lcom/bumptech/glide/d;->e0(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    move-wide v13, v3

    .line 476
    :cond_b
    const/4 v3, 0x3

    .line 477
    const/4 v4, 0x2

    .line 478
    const/4 v7, 0x1

    .line 479
    const/4 v8, 0x0

    .line 480
    goto :goto_3

    .line 481
    :cond_c
    new-instance v7, Ljava/lang/String;

    .line 482
    .line 483
    sget-object v12, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 484
    .line 485
    move-object/from16 v21, v1

    .line 486
    .line 487
    const/4 v1, 0x4

    .line 488
    invoke-direct {v7, v3, v1, v4, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 496
    .line 497
    .line 498
    array-length v4, v3

    .line 499
    if-le v4, v8, :cond_d

    .line 500
    .line 501
    array-length v4, v3

    .line 502
    sub-int/2addr v4, v8

    .line 503
    invoke-virtual {v0, v3, v8, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 504
    .line 505
    .line 506
    :cond_d
    move-object/from16 v3, p1

    .line 507
    .line 508
    invoke-static {v7, v10, v11, v3}, Lcom/bumptech/glide/d;->F(Ljava/lang/String;Ljava/lang/String;Lag/h;Lma/k;)Lma/l;

    .line 509
    .line 510
    .line 511
    move-result-object v12

    .line 512
    if-eqz v12, :cond_e

    .line 513
    .line 514
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 515
    .line 516
    iget v0, v0, Lcom/yunpan/appmanage/util/w;->T:I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 517
    .line 518
    const/4 v4, 0x3

    .line 519
    if-ne v0, v4, :cond_7

    .line 520
    .line 521
    const-wide/16 v0, 0xbcc

    .line 522
    .line 523
    :try_start_d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 524
    .line 525
    .line 526
    goto/16 :goto_4

    .line 527
    .line 528
    :cond_e
    move-object/from16 v1, v21

    .line 529
    .line 530
    const/4 v7, 0x1

    .line 531
    const/4 v8, 0x0

    .line 532
    goto :goto_5

    .line 533
    :cond_f
    :goto_7
    :try_start_e
    new-instance v12, Lma/l;

    .line 534
    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .line 539
    .line 540
    const-string v1, "\u5e27\u957f\u5ea6\u5f02\u5e38\uff1a"

    .line 541
    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    const/4 v1, 0x6

    .line 553
    const/4 v2, 0x0

    .line 554
    invoke-direct {v12, v1, v0, v2}, Lma/l;-><init>(ILjava/lang/String;I)V

    .line 555
    .line 556
    .line 557
    goto/16 :goto_4

    .line 558
    .line 559
    :cond_10
    new-instance v12, Lma/l;

    .line 560
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 564
    .line 565
    .line 566
    const-string v1, "\u7b49\u5f85 "

    .line 567
    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    const-wide/32 v1, 0x3a980

    .line 572
    .line 573
    .line 574
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    const-string v1, " ms \u4ecd\u672a\u6536\u5230\u7ec8\u6001"

    .line 578
    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    const/4 v1, 0x0

    .line 587
    const/4 v2, 0x5

    .line 588
    invoke-direct {v12, v2, v0, v1}, Lma/l;-><init>(ILjava/lang/String;I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 589
    .line 590
    .line 591
    goto/16 :goto_4

    .line 592
    .line 593
    :catchall_2
    move-exception v0

    .line 594
    const/4 v11, 0x0

    .line 595
    goto :goto_9

    .line 596
    :catch_6
    move-exception v0

    .line 597
    const/4 v11, 0x0

    .line 598
    :goto_8
    :try_start_f
    new-instance v12, Lma/l;

    .line 599
    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    .line 601
    .line 602
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    const-string v2, "\uff1a"

    .line 617
    .line 618
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    const/4 v1, 0x6

    .line 633
    const/4 v2, 0x0

    .line 634
    invoke-direct {v12, v1, v0, v2}, Lma/l;-><init>(ILjava/lang/String;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 635
    .line 636
    .line 637
    if-eqz v11, :cond_13

    .line 638
    .line 639
    :try_start_10
    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    .line 640
    .line 641
    .line 642
    goto :goto_b

    .line 643
    :catchall_3
    move-exception v0

    .line 644
    :goto_9
    if-eqz v11, :cond_11

    .line 645
    .line 646
    :try_start_11
    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    .line 647
    .line 648
    .line 649
    :catch_7
    :cond_11
    throw v0

    .line 650
    :cond_12
    :goto_a
    new-instance v12, Lma/l;

    .line 651
    .line 652
    const-string v0, "tvIp / apkUrl / packageName \u4e0d\u80fd\u4e3a\u7a7a"

    .line 653
    .line 654
    const/4 v1, 0x6

    .line 655
    const/4 v2, 0x0

    .line 656
    invoke-direct {v12, v1, v0, v2}, Lma/l;-><init>(ILjava/lang/String;I)V

    .line 657
    .line 658
    .line 659
    :catch_8
    :cond_13
    :goto_b
    return-object v12

    .line 660
    :catch_9
    new-instance v0, Lma/l;

    .line 661
    .line 662
    const-string v1, "url\u7f16\u7801\u51fa\u9519"

    .line 663
    .line 664
    const/4 v2, 0x6

    .line 665
    const/4 v3, 0x0

    .line 666
    invoke-direct {v0, v2, v1, v3}, Lma/l;-><init>(ILjava/lang/String;I)V

    .line 667
    .line 668
    .line 669
    return-object v0

    .line 670
    :goto_c
    move-object v1, v0

    .line 671
    goto :goto_d

    .line 672
    :catchall_4
    move-exception v0

    .line 673
    goto :goto_c

    .line 674
    :goto_d
    :try_start_12
    invoke-virtual {v14}, Lef/b;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 675
    .line 676
    .line 677
    goto :goto_e

    .line 678
    :catchall_5
    move-exception v0

    .line 679
    move-object v2, v0

    .line 680
    :try_start_13
    const-class v0, Ljava/lang/Throwable;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    .line 681
    .line 682
    :try_start_14
    const-string v3, "addSuppressed"

    .line 683
    .line 684
    const/4 v4, 0x1

    .line 685
    new-array v5, v4, [Ljava/lang/Class;

    .line 686
    .line 687
    const/4 v6, 0x0

    .line 688
    aput-object v0, v5, v6

    .line 689
    .line 690
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    new-array v3, v4, [Ljava/lang/Object;

    .line 695
    .line 696
    aput-object v2, v3, v6

    .line 697
    .line 698
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    .line 699
    .line 700
    .line 701
    :catch_a
    :goto_e
    :try_start_15
    throw v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    .line 702
    :catch_b
    new-instance v0, Lma/l;

    .line 703
    .line 704
    const-string v1, "\u65e0\u6cd5\u89e3\u6790\u6b64 apk"

    .line 705
    .line 706
    const/4 v2, 0x6

    .line 707
    const/4 v3, 0x0

    .line 708
    invoke-direct {v0, v2, v1, v3}, Lma/l;-><init>(ILjava/lang/String;I)V

    .line 709
    .line 710
    .line 711
    return-object v0

    .line 712
    :catchall_6
    move-exception v0

    .line 713
    const/4 v11, 0x0

    .line 714
    goto :goto_11

    .line 715
    :catch_c
    move-exception v0

    .line 716
    const/4 v11, 0x0

    .line 717
    goto :goto_f

    .line 718
    :catch_d
    move-exception v0

    .line 719
    const/4 v11, 0x0

    .line 720
    goto :goto_10

    .line 721
    :goto_f
    :try_start_16
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 722
    .line 723
    const-string v2, "\u5f53\u524d\u73af\u5883\u4e0d\u652f\u6301 MD5"

    .line 724
    .line 725
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 726
    .line 727
    .line 728
    throw v1

    .line 729
    :catchall_7
    move-exception v0

    .line 730
    goto :goto_11

    .line 731
    :goto_10
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 732
    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    .line 734
    .line 735
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 736
    .line 737
    .line 738
    const-string v3, "\u8bfb\u53d6 APK \u5931\u8d25\uff1a"

    .line 739
    .line 740
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 751
    .line 752
    .line 753
    throw v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 754
    :goto_11
    if-eqz v11, :cond_14

    .line 755
    .line 756
    :try_start_17
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    .line 757
    .line 758
    .line 759
    :catch_e
    :cond_14
    goto :goto_13

    .line 760
    :goto_12
    throw v0

    .line 761
    :goto_13
    goto :goto_12
.end method

.method public static H(I)Z
    .locals 20

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    sget-object v1, Lp0/a;->a:Ljava/lang/ThreadLocal;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, [D

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    new-array v2, v3, [D

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    array-length v6, v2

    .line 32
    if-ne v6, v3, :cond_4

    .line 33
    .line 34
    int-to-double v6, v1

    .line 35
    const-wide v8, 0x406fe00000000000L    # 255.0

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    .line 41
    .line 42
    .line 43
    div-double/2addr v6, v8

    .line 44
    const-wide v10, 0x4003333333333333L    # 2.4

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const-wide v12, 0x3ff0e147ae147ae1L    # 1.055

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    const-wide v14, 0x3fac28f5c28f5c29L    # 0.055

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    const-wide v16, 0x4029d70a3d70a3d7L    # 12.92

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    const-wide v18, 0x3fa4b5dcc63f1412L    # 0.04045

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    cmpg-double v1, v6, v18

    .line 70
    .line 71
    if-gez v1, :cond_1

    .line 72
    .line 73
    div-double v6, v6, v16

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    add-double/2addr v6, v14

    .line 77
    div-double/2addr v6, v12

    .line 78
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 79
    .line 80
    .line 81
    move-result-wide v6

    .line 82
    :goto_0
    int-to-double v3, v4

    .line 83
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 84
    .line 85
    .line 86
    div-double/2addr v3, v8

    .line 87
    cmpg-double v1, v3, v18

    .line 88
    .line 89
    if-gez v1, :cond_2

    .line 90
    .line 91
    div-double v3, v3, v16

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    add-double/2addr v3, v14

    .line 95
    div-double/2addr v3, v12

    .line 96
    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 97
    .line 98
    .line 99
    move-result-wide v3

    .line 100
    :goto_1
    int-to-double v0, v5

    .line 101
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    .line 102
    .line 103
    .line 104
    div-double/2addr v0, v8

    .line 105
    cmpg-double v5, v0, v18

    .line 106
    .line 107
    if-gez v5, :cond_3

    .line 108
    .line 109
    div-double v0, v0, v16

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    add-double/2addr v0, v14

    .line 113
    div-double/2addr v0, v12

    .line 114
    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 115
    .line 116
    .line 117
    move-result-wide v0

    .line 118
    :goto_2
    const-wide v8, 0x3fda64c2f837b4a2L    # 0.4124

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    mul-double v8, v8, v6

    .line 124
    .line 125
    const-wide v10, 0x3fd6e2eb1c432ca5L    # 0.3576

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    mul-double v10, v10, v3

    .line 131
    .line 132
    add-double/2addr v10, v8

    .line 133
    const-wide v8, 0x3fc71a9fbe76c8b4L    # 0.1805

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    mul-double v8, v8, v0

    .line 139
    .line 140
    add-double/2addr v8, v10

    .line 141
    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 142
    .line 143
    mul-double v8, v8, v10

    .line 144
    .line 145
    const/4 v5, 0x0

    .line 146
    aput-wide v8, v2, v5

    .line 147
    .line 148
    const-wide v8, 0x3fcb367a0f9096bcL    # 0.2126

    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    mul-double v8, v8, v6

    .line 154
    .line 155
    const-wide v12, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    mul-double v12, v12, v3

    .line 161
    .line 162
    add-double/2addr v12, v8

    .line 163
    const-wide v8, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    mul-double v8, v8, v0

    .line 169
    .line 170
    add-double/2addr v8, v12

    .line 171
    mul-double v8, v8, v10

    .line 172
    .line 173
    const/4 v12, 0x1

    .line 174
    aput-wide v8, v2, v12

    .line 175
    .line 176
    const-wide v13, 0x3f93c36113404ea5L    # 0.0193

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    mul-double v6, v6, v13

    .line 182
    .line 183
    const-wide v13, 0x3fbe83e425aee632L    # 0.1192

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    mul-double v3, v3, v13

    .line 189
    .line 190
    add-double/2addr v3, v6

    .line 191
    const-wide v6, 0x3fee6a7ef9db22d1L    # 0.9505

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    mul-double v0, v0, v6

    .line 197
    .line 198
    add-double/2addr v0, v3

    .line 199
    mul-double v0, v0, v10

    .line 200
    .line 201
    const/4 v3, 0x2

    .line 202
    aput-wide v0, v2, v3

    .line 203
    .line 204
    div-double/2addr v8, v10

    .line 205
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 206
    .line 207
    cmpl-double v2, v8, v0

    .line 208
    .line 209
    if-lez v2, :cond_6

    .line 210
    .line 211
    const/4 v0, 0x1

    .line 212
    goto :goto_3

    .line 213
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 214
    .line 215
    const-string v1, "outXyz must have a length of 3."

    .line 216
    .line 217
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v0

    .line 221
    :cond_5
    const/4 v5, 0x0

    .line 222
    :cond_6
    const/4 v0, 0x0

    .line 223
    :goto_3
    return v0
.end method

.method public static I(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string p1, ")"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public static J([Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p0, v2

    .line 7
    .line 8
    invoke-static {v3}, Lcom/bumptech/glide/d;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v1
.end method

.method public static K(IFI)I
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    mul-float v0, v0, p1

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p2, p1}, Lp0/a;->d(II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1, p0}, Lp0/a;->b(II)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static L(ILjava/math/RoundingMode;)I
    .locals 3

    .line 1
    if-lez p0, :cond_2

    .line 2
    .line 3
    sget-object v0, Lw7/c;->a:[I

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    aget p1, v0, p1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    new-instance p0, Ljava/lang/AssertionError;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const v0, -0x4afb0ccd

    .line 26
    .line 27
    .line 28
    ushr-int/2addr v0, p1

    .line 29
    rsub-int/lit8 p1, p1, 0x1f

    .line 30
    .line 31
    sub-int/2addr v0, p0

    .line 32
    ushr-int/lit8 p0, v0, 0x1f

    .line 33
    .line 34
    add-int/2addr p1, p0

    .line 35
    return p1

    .line 36
    :pswitch_1
    sub-int/2addr p0, v0

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    rsub-int/lit8 p0, p0, 0x20

    .line 42
    .line 43
    return p0

    .line 44
    :pswitch_2
    const/4 p1, 0x0

    .line 45
    if-lez p0, :cond_0

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v1, 0x0

    .line 50
    :goto_0
    add-int/lit8 v2, p0, -0x1

    .line 51
    .line 52
    and-int/2addr v2, p0

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 57
    :goto_1
    and-int p1, v1, v0

    .line 58
    .line 59
    invoke-static {p1}, Lif/a;->l(Z)V

    .line 60
    .line 61
    .line 62
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    rsub-int/lit8 p0, p0, 0x1f

    .line 67
    .line 68
    return p0

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string v0, "x ("

    .line 72
    .line 73
    const-string v1, ") must be > 0"

    .line 74
    .line 75
    invoke-static {v0, p0, v1}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static M(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    const-string v0, "MD5"

    .line 8
    .line 9
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lcom/bumptech/glide/d;->h0([B)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "\u5f53\u524d\u73af\u5883\u4e0d\u652f\u6301 MD5"

    .line 26
    .line 27
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public static N(Lx9/n5;)Ldh/j;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lx9/n5;->B:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ldh/j;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ldh/j;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ldh/j;

    .line 14
    .line 15
    invoke-direct {v0, v2}, Ldh/j;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    :goto_0
    const/16 v3, 0x4e20

    .line 19
    .line 20
    iput v3, v0, Lch/d;->a:I

    .line 21
    .line 22
    const/16 v3, 0x3e80

    .line 23
    .line 24
    iput v3, v0, Lch/d;->f:I

    .line 25
    .line 26
    int-to-long v3, v1

    .line 27
    sget-object v5, Lsh/c;->c:Lsh/c;

    .line 28
    .line 29
    const-wide/16 v5, 0x3e8

    .line 30
    .line 31
    div-long v7, v3, v5

    .line 32
    .line 33
    rem-long/2addr v3, v5

    .line 34
    long-to-int v4, v3

    .line 35
    if-gez v4, :cond_1

    .line 36
    .line 37
    add-int/lit16 v4, v4, 0x3e8

    .line 38
    .line 39
    const-wide/16 v5, 0x1

    .line 40
    .line 41
    sub-long/2addr v7, v5

    .line 42
    :cond_1
    const v3, 0xf4240

    .line 43
    .line 44
    .line 45
    mul-int v4, v4, v3

    .line 46
    .line 47
    invoke-static {v4, v7, v8}, Lsh/c;->a(IJ)Lsh/c;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iput-object v3, v0, Ldh/e;->u:Lsh/c;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    :try_start_0
    iget-object v4, p0, Lx9/n5;->y:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    const-string v4, "UTF-8"

    .line 63
    .line 64
    iput-object v4, p0, Lx9/n5;->y:Ljava/lang/String;

    .line 65
    .line 66
    :cond_2
    iget-object v4, p0, Lx9/n5;->y:Ljava/lang/String;

    .line 67
    .line 68
    const-string v5, "\u81ea\u52a8"

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    iput-boolean v2, v0, Ldh/e;->G:Z

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-object v2, p0, Lx9/n5;->y:Ljava/lang/String;

    .line 80
    .line 81
    iput-object v2, v0, Ldh/c;->n:Ljava/lang/String;

    .line 82
    .line 83
    :goto_1
    iget-object v2, p0, Lx9/n5;->c:Ljava/lang/String;

    .line 84
    .line 85
    iget v4, p0, Lx9/n5;->d:I

    .line 86
    .line 87
    invoke-virtual {v0, v2, v4}, Lch/d;->c(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lx9/n5;->e:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v2}, Lzg/b;->a(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    const-string v2, "Anonymous"

    .line 99
    .line 100
    const-string v4, ""

    .line 101
    .line 102
    invoke-virtual {v0, v2, v4}, Ldh/e;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    iget-object v2, p0, Lx9/n5;->e:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v4, p0, Lx9/n5;->f:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v0, v2, v4}, Ldh/e;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_2
    if-eqz v2, :cond_6

    .line 116
    .line 117
    invoke-virtual {v0}, Ldh/e;->y()V

    .line 118
    .line 119
    .line 120
    iget v2, v0, Ldh/c;->j:I

    .line 121
    .line 122
    invoke-static {v2}, Lcom/bumptech/glide/c;->L(I)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_7

    .line 127
    .line 128
    iget-boolean p0, p0, Lx9/n5;->z:Z

    .line 129
    .line 130
    const/4 v2, -0x1

    .line 131
    if-eqz p0, :cond_5

    .line 132
    .line 133
    const/4 p0, 0x2

    .line 134
    iput p0, v0, Ldh/e;->t:I

    .line 135
    .line 136
    iput-object v3, v0, Ldh/e;->w:Ljava/lang/String;

    .line 137
    .line 138
    iput v2, v0, Ldh/e;->v:I

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_5
    iput v1, v0, Ldh/e;->t:I

    .line 142
    .line 143
    iput-object v3, v0, Ldh/e;->w:Ljava/lang/String;

    .line 144
    .line 145
    iput v2, v0, Ldh/e;->v:I

    .line 146
    .line 147
    :goto_3
    return-object v0

    .line 148
    :cond_6
    new-instance p0, Ljava/lang/Exception;

    .line 149
    .line 150
    const-string v0, "\u8d26\u53f7\u6216\u5bc6\u7801\u9519\u8bef"

    .line 151
    .line 152
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :catch_0
    :cond_7
    return-object v3
.end method

.method public static Q(Lba/r;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v2, v0

    .line 4
    move-object v3, v2

    .line 5
    :cond_0
    if-nez v1, :cond_1

    .line 6
    .line 7
    sget-object v2, Lcom/yunpan/appmanage/util/f0;->a:Lo9/a;

    .line 8
    .line 9
    iput-object v0, v2, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v4, 0x2

    .line 13
    if-gt v1, v4, :cond_4

    .line 14
    .line 15
    sget-object v2, Lcom/yunpan/appmanage/util/f0;->a:Lo9/a;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/yunpan/appmanage/util/f0;->a(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-static {v4}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iput-object v4, v2, Lo9/a;->b:Lokhttp3/HttpUrl;

    .line 26
    .line 27
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    iget-object v2, p0, Lba/r;->c:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v4, Ll9/a;

    .line 32
    .line 33
    invoke-direct {v4, v2}, Ll9/a;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, v4, Lm9/e;->i:Lk9/a;

    .line 37
    .line 38
    const-string v5, "User-Agent"

    .line 39
    .line 40
    const-string v6, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76"

    .line 41
    .line 42
    invoke-virtual {v2, v5, v6}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lba/r;->c:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v5, v4, Lm9/e;->i:Lk9/a;

    .line 48
    .line 49
    const-string v6, "Referer"

    .line 50
    .line 51
    invoke-virtual {v5, v6, v2}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Lm9/e;->a()Lokhttp3/Response;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lokhttp3/Response;->isSuccessful()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_2

    .line 63
    .line 64
    :goto_1
    move-object v2, v0

    .line 65
    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-nez v3, :cond_3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    :goto_2
    if-eqz v2, :cond_0

    .line 74
    .line 75
    :cond_4
    if-eqz v2, :cond_5

    .line 76
    .line 77
    if-eqz v3, :cond_5

    .line 78
    .line 79
    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {p0, v0}, Lcom/bumptech/glide/d;->R(Lba/r;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    .line 89
    .line 90
    const-string v0, "\u6253\u5f00\u5931\u8d25"

    .line 91
    .line 92
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :goto_3
    throw p0

    .line 97
    :goto_4
    goto :goto_3
.end method

.method public static R(Lba/r;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    const/16 v2, 0x3e

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x4

    .line 9
    iget-object v5, v0, Lba/r;->c:Ljava/lang/String;

    .line 10
    .line 11
    const-string v6, "/"

    .line 12
    .line 13
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    const/4 v7, 0x1

    .line 18
    add-int/2addr v6, v7

    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iput-object v5, v0, Lba/r;->f:Ljava/lang/String;

    .line 24
    .line 25
    const-string v5, "?"

    .line 26
    .line 27
    move-object/from16 v6, p1

    .line 28
    .line 29
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    const/4 v6, 0x0

    .line 34
    const/4 v8, -0x1

    .line 35
    if-eq v5, v8, :cond_0

    .line 36
    .line 37
    iget-object v9, v0, Lba/r;->f:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v9, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    iput-object v5, v0, Lba/r;->f:Ljava/lang/String;

    .line 44
    .line 45
    :cond_0
    iget-object v5, v0, Lba/r;->f:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const-string v9, "\u5206\u4eab\u5730\u5740\u9519\u8bef"

    .line 52
    .line 53
    if-nez v5, :cond_d

    .line 54
    .line 55
    iget-object v5, v0, Lba/r;->f:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    if-le v10, v4, :cond_3

    .line 62
    .line 63
    invoke-static {v7, v3, v5}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const/4 v10, 0x0

    .line 68
    const/4 v11, 0x0

    .line 69
    const/4 v12, 0x1

    .line 70
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    if-ge v10, v13, :cond_4

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    sub-int/2addr v13, v10

    .line 81
    sub-int/2addr v13, v7

    .line 82
    invoke-virtual {v5, v13}, Ljava/lang/String;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result v13

    .line 86
    new-array v14, v2, [Ljava/lang/String;

    .line 87
    .line 88
    const-string v15, "Y"

    .line 89
    .line 90
    aput-object v15, v14, v6

    .line 91
    .line 92
    const-string v15, "y"

    .line 93
    .line 94
    aput-object v15, v14, v7

    .line 95
    .line 96
    const-string v15, "0"

    .line 97
    .line 98
    const/16 v16, 0x2

    .line 99
    .line 100
    aput-object v15, v14, v16

    .line 101
    .line 102
    const-string v15, "Z"

    .line 103
    .line 104
    aput-object v15, v14, v3

    .line 105
    .line 106
    const-string v15, "z"

    .line 107
    .line 108
    aput-object v15, v14, v4

    .line 109
    .line 110
    const-string v15, "N"

    .line 111
    .line 112
    const/16 v16, 0x5

    .line 113
    .line 114
    aput-object v15, v14, v16

    .line 115
    .line 116
    const-string v15, "n"

    .line 117
    .line 118
    const/16 v16, 0x6

    .line 119
    .line 120
    aput-object v15, v14, v16

    .line 121
    .line 122
    const-string v15, "M"

    .line 123
    .line 124
    const/16 v16, 0x7

    .line 125
    .line 126
    aput-object v15, v14, v16

    .line 127
    .line 128
    const-string v15, "I"

    .line 129
    .line 130
    const/16 v16, 0x8

    .line 131
    .line 132
    aput-object v15, v14, v16

    .line 133
    .line 134
    const-string v15, "6"

    .line 135
    .line 136
    const/16 v16, 0x9

    .line 137
    .line 138
    aput-object v15, v14, v16

    .line 139
    .line 140
    const-string v15, "m"

    .line 141
    .line 142
    const/16 v16, 0xa

    .line 143
    .line 144
    aput-object v15, v14, v16

    .line 145
    .line 146
    const-string v15, "W"

    .line 147
    .line 148
    const/16 v16, 0xb

    .line 149
    .line 150
    aput-object v15, v14, v16

    .line 151
    .line 152
    const-string v15, "w"

    .line 153
    .line 154
    const/16 v16, 0xc

    .line 155
    .line 156
    aput-object v15, v14, v16

    .line 157
    .line 158
    const-string v15, "1"

    .line 159
    .line 160
    const/16 v16, 0xd

    .line 161
    .line 162
    aput-object v15, v14, v16

    .line 163
    .line 164
    const-string v15, "X"

    .line 165
    .line 166
    const/16 v16, 0xe

    .line 167
    .line 168
    aput-object v15, v14, v16

    .line 169
    .line 170
    const-string v15, "x"

    .line 171
    .line 172
    const/16 v16, 0xf

    .line 173
    .line 174
    aput-object v15, v14, v16

    .line 175
    .line 176
    const-string v15, "L"

    .line 177
    .line 178
    const/16 v16, 0x10

    .line 179
    .line 180
    aput-object v15, v14, v16

    .line 181
    .line 182
    const-string v15, "l"

    .line 183
    .line 184
    const/16 v16, 0x11

    .line 185
    .line 186
    aput-object v15, v14, v16

    .line 187
    .line 188
    const-string v15, "K"

    .line 189
    .line 190
    const/16 v16, 0x12

    .line 191
    .line 192
    aput-object v15, v14, v16

    .line 193
    .line 194
    const-string v15, "7"

    .line 195
    .line 196
    const/16 v16, 0x13

    .line 197
    .line 198
    aput-object v15, v14, v16

    .line 199
    .line 200
    const-string v15, "k"

    .line 201
    .line 202
    const/16 v16, 0x14

    .line 203
    .line 204
    aput-object v15, v14, v16

    .line 205
    .line 206
    const-string v15, "i"

    .line 207
    .line 208
    aput-object v15, v14, v1

    .line 209
    .line 210
    const-string v15, "U"

    .line 211
    .line 212
    const/16 v16, 0x16

    .line 213
    .line 214
    aput-object v15, v14, v16

    .line 215
    .line 216
    const-string v15, "u"

    .line 217
    .line 218
    const/16 v16, 0x17

    .line 219
    .line 220
    aput-object v15, v14, v16

    .line 221
    .line 222
    const-string v15, "2"

    .line 223
    .line 224
    const/16 v16, 0x18

    .line 225
    .line 226
    aput-object v15, v14, v16

    .line 227
    .line 228
    const-string v15, "V"

    .line 229
    .line 230
    const/16 v16, 0x19

    .line 231
    .line 232
    aput-object v15, v14, v16

    .line 233
    .line 234
    const-string v15, "v"

    .line 235
    .line 236
    const/16 v16, 0x1a

    .line 237
    .line 238
    aput-object v15, v14, v16

    .line 239
    .line 240
    const-string v15, "J"

    .line 241
    .line 242
    const/16 v16, 0x1b

    .line 243
    .line 244
    aput-object v15, v14, v16

    .line 245
    .line 246
    const-string v15, "j"

    .line 247
    .line 248
    const/16 v16, 0x1c

    .line 249
    .line 250
    aput-object v15, v14, v16

    .line 251
    .line 252
    const-string v15, "8"

    .line 253
    .line 254
    const/16 v16, 0x1d

    .line 255
    .line 256
    aput-object v15, v14, v16

    .line 257
    .line 258
    const-string v15, "G"

    .line 259
    .line 260
    const/16 v16, 0x1e

    .line 261
    .line 262
    aput-object v15, v14, v16

    .line 263
    .line 264
    const-string v15, "g"

    .line 265
    .line 266
    const/16 v16, 0x1f

    .line 267
    .line 268
    aput-object v15, v14, v16

    .line 269
    .line 270
    const-string v15, "F"

    .line 271
    .line 272
    const/16 v16, 0x20

    .line 273
    .line 274
    aput-object v15, v14, v16

    .line 275
    .line 276
    const-string v15, "S"

    .line 277
    .line 278
    const/16 v16, 0x21

    .line 279
    .line 280
    aput-object v15, v14, v16

    .line 281
    .line 282
    const-string v15, "s"

    .line 283
    .line 284
    const/16 v16, 0x22

    .line 285
    .line 286
    aput-object v15, v14, v16

    .line 287
    .line 288
    const-string v15, "3"

    .line 289
    .line 290
    const/16 v16, 0x23

    .line 291
    .line 292
    aput-object v15, v14, v16

    .line 293
    .line 294
    const-string v15, "T"

    .line 295
    .line 296
    const/16 v16, 0x24

    .line 297
    .line 298
    aput-object v15, v14, v16

    .line 299
    .line 300
    const-string v15, "t"

    .line 301
    .line 302
    const/16 v16, 0x25

    .line 303
    .line 304
    aput-object v15, v14, v16

    .line 305
    .line 306
    const-string v15, "H"

    .line 307
    .line 308
    const/16 v16, 0x26

    .line 309
    .line 310
    aput-object v15, v14, v16

    .line 311
    .line 312
    const-string v15, "h"

    .line 313
    .line 314
    const/16 v16, 0x27

    .line 315
    .line 316
    aput-object v15, v14, v16

    .line 317
    .line 318
    const-string v15, "f"

    .line 319
    .line 320
    const/16 v16, 0x28

    .line 321
    .line 322
    aput-object v15, v14, v16

    .line 323
    .line 324
    const-string v15, "E"

    .line 325
    .line 326
    const/16 v16, 0x29

    .line 327
    .line 328
    aput-object v15, v14, v16

    .line 329
    .line 330
    const-string v15, "e"

    .line 331
    .line 332
    const/16 v16, 0x2a

    .line 333
    .line 334
    aput-object v15, v14, v16

    .line 335
    .line 336
    const-string v15, "D"

    .line 337
    .line 338
    const/16 v16, 0x2b

    .line 339
    .line 340
    aput-object v15, v14, v16

    .line 341
    .line 342
    const-string v15, "Q"

    .line 343
    .line 344
    const/16 v16, 0x2c

    .line 345
    .line 346
    aput-object v15, v14, v16

    .line 347
    .line 348
    const-string v15, "q"

    .line 349
    .line 350
    const/16 v16, 0x2d

    .line 351
    .line 352
    aput-object v15, v14, v16

    .line 353
    .line 354
    const-string v15, "4"

    .line 355
    .line 356
    const/16 v16, 0x2e

    .line 357
    .line 358
    aput-object v15, v14, v16

    .line 359
    .line 360
    const-string v15, "R"

    .line 361
    .line 362
    const/16 v16, 0x2f

    .line 363
    .line 364
    aput-object v15, v14, v16

    .line 365
    .line 366
    const-string v15, "r"

    .line 367
    .line 368
    const/16 v16, 0x30

    .line 369
    .line 370
    aput-object v15, v14, v16

    .line 371
    .line 372
    const-string v15, "9"

    .line 373
    .line 374
    const/16 v16, 0x31

    .line 375
    .line 376
    aput-object v15, v14, v16

    .line 377
    .line 378
    const-string v15, "d"

    .line 379
    .line 380
    const/16 v16, 0x32

    .line 381
    .line 382
    aput-object v15, v14, v16

    .line 383
    .line 384
    const-string v15, "a"

    .line 385
    .line 386
    const/16 v16, 0x33

    .line 387
    .line 388
    aput-object v15, v14, v16

    .line 389
    .line 390
    const-string v15, "C"

    .line 391
    .line 392
    const/16 v16, 0x34

    .line 393
    .line 394
    aput-object v15, v14, v16

    .line 395
    .line 396
    const-string v15, "c"

    .line 397
    .line 398
    const/16 v16, 0x35

    .line 399
    .line 400
    aput-object v15, v14, v16

    .line 401
    .line 402
    const-string v15, "B"

    .line 403
    .line 404
    const/16 v16, 0x36

    .line 405
    .line 406
    aput-object v15, v14, v16

    .line 407
    .line 408
    const-string v15, "O"

    .line 409
    .line 410
    const/16 v16, 0x37

    .line 411
    .line 412
    aput-object v15, v14, v16

    .line 413
    .line 414
    const-string v15, "o"

    .line 415
    .line 416
    const/16 v16, 0x38

    .line 417
    .line 418
    aput-object v15, v14, v16

    .line 419
    .line 420
    const-string v15, "5"

    .line 421
    .line 422
    const/16 v16, 0x39

    .line 423
    .line 424
    aput-object v15, v14, v16

    .line 425
    .line 426
    const-string v15, "P"

    .line 427
    .line 428
    const/16 v16, 0x3a

    .line 429
    .line 430
    aput-object v15, v14, v16

    .line 431
    .line 432
    const-string v15, "p"

    .line 433
    .line 434
    const/16 v16, 0x3b

    .line 435
    .line 436
    aput-object v15, v14, v16

    .line 437
    .line 438
    const-string v15, "b"

    .line 439
    .line 440
    const/16 v16, 0x3c

    .line 441
    .line 442
    aput-object v15, v14, v16

    .line 443
    .line 444
    const-string v15, "A"

    .line 445
    .line 446
    const/16 v16, 0x3d

    .line 447
    .line 448
    aput-object v15, v14, v16

    .line 449
    .line 450
    const/4 v15, 0x0

    .line 451
    :goto_1
    if-ge v15, v2, :cond_2

    .line 452
    .line 453
    aget-object v3, v14, v15

    .line 454
    .line 455
    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    if-eqz v3, :cond_1

    .line 464
    .line 465
    goto :goto_2

    .line 466
    :cond_1
    add-int/2addr v15, v7

    .line 467
    const/4 v3, 0x3

    .line 468
    const/4 v4, 0x4

    .line 469
    goto :goto_1

    .line 470
    :cond_2
    const/4 v15, -0x1

    .line 471
    :goto_2
    mul-int v15, v15, v12

    .line 472
    .line 473
    add-int/2addr v11, v15

    .line 474
    mul-int/lit8 v12, v12, 0x3e

    .line 475
    .line 476
    add-int/2addr v10, v7

    .line 477
    const/4 v3, 0x3

    .line 478
    const/4 v4, 0x4

    .line 479
    goto/16 :goto_0

    .line 480
    .line 481
    :cond_3
    const/4 v11, 0x0

    .line 482
    :cond_4
    if-eqz v11, :cond_c

    .line 483
    .line 484
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    const-string v3, "-"

    .line 493
    .line 494
    const-string v4, ""

    .line 495
    .line 496
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    iput-object v1, v0, Lba/r;->g:Ljava/lang/String;

    .line 505
    .line 506
    const-string v2, "devType=6&devModel=Chrome&uuid="

    .line 507
    .line 508
    const-string v3, "&extra=2&timestamp="

    .line 509
    .line 510
    invoke-static {v2, v1, v3}, Lda/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 520
    .line 521
    .line 522
    move-result-wide v8

    .line 523
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    invoke-static {v2}, Lqf/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    iget-object v2, v0, Lba/r;->d:Ljava/lang/String;

    .line 542
    .line 543
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 544
    .line 545
    .line 546
    move-result v2

    .line 547
    if-eqz v2, :cond_5

    .line 548
    .line 549
    goto :goto_3

    .line 550
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 551
    .line 552
    const-string v3, "&code="

    .line 553
    .line 554
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    iget-object v3, v0, Lba/r;->d:Ljava/lang/String;

    .line 558
    .line 559
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v4

    .line 566
    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    const-string v2, "&shareId="

    .line 570
    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    iget-object v0, v0, Lba/r;->f:Ljava/lang/String;

    .line 575
    .line 576
    const-string v2, "&type=0&offset=1&limit=60"

    .line 577
    .line 578
    invoke-static {v0, v2, v1}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    const-string v1, "https://api.ilanzou.com/unproved/recommend/list?"

    .line 583
    .line 584
    invoke-static {v1, v0}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    new-instance v2, Ll9/b;

    .line 589
    .line 590
    invoke-direct {v2, v1}, Ll9/b;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    iget-object v1, v2, Lm9/e;->i:Lk9/a;

    .line 594
    .line 595
    const-string v3, "User-Agent"

    .line 596
    .line 597
    const-string v4, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76"

    .line 598
    .line 599
    invoke-virtual {v1, v3, v4}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    const-string v3, "Referer"

    .line 603
    .line 604
    const-string v4, "https://www.ilanzou.com/"

    .line 605
    .line 606
    invoke-virtual {v1, v3, v4}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    const-string v1, "application/json;charset=UTF-8"

    .line 610
    .line 611
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    iput-object v0, v2, Lm9/a;->n:Ljava/lang/String;

    .line 616
    .line 617
    iput-object v1, v2, Lm9/a;->m:Lokhttp3/MediaType;

    .line 618
    .line 619
    invoke-virtual {v2}, Lm9/e;->a()Lokhttp3/Response;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    .line 624
    .line 625
    .line 626
    move-result v1

    .line 627
    const-string v2, "\u8bf7\u6c42\u5931\u8d25"

    .line 628
    .line 629
    if-eqz v1, :cond_b

    .line 630
    .line 631
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    if-eqz v0, :cond_a

    .line 636
    .line 637
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    const-string v1, "totalPage"

    .line 642
    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    if-eqz v1, :cond_9

    .line 648
    .line 649
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    const-string v1, "list"

    .line 658
    .line 659
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-virtual {v0}, Lz7/p;->f()Lz7/o;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    new-instance v1, Ljava/util/ArrayList;

    .line 668
    .line 669
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .line 671
    .line 672
    invoke-virtual {v0, v6}, Lz7/o;->l(I)Lz7/p;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    const-string v2, "fileList"

    .line 681
    .line 682
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-virtual {v0}, Lz7/p;->f()Lz7/o;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    const/4 v2, 0x0

    .line 691
    :goto_4
    iget-object v3, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 692
    .line 693
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 694
    .line 695
    .line 696
    move-result v3

    .line 697
    if-ge v2, v3, :cond_8

    .line 698
    .line 699
    new-instance v3, Lba/j;

    .line 700
    .line 701
    invoke-direct {v3}, Lba/j;-><init>()V

    .line 702
    .line 703
    .line 704
    const-string v4, "fileType"

    .line 705
    .line 706
    invoke-static {v0, v2, v4}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 707
    .line 708
    .line 709
    move-result v4

    .line 710
    iput v4, v3, Lba/j;->e:I

    .line 711
    .line 712
    const-string v4, "updTime"

    .line 713
    .line 714
    invoke-static {v0, v2, v4}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    iput-object v4, v3, Lba/j;->d:Ljava/lang/String;

    .line 719
    .line 720
    invoke-virtual {v0, v2}, Lz7/o;->l(I)Lz7/p;

    .line 721
    .line 722
    .line 723
    move-result-object v4

    .line 724
    invoke-virtual {v4}, Lz7/p;->g()Lz7/s;

    .line 725
    .line 726
    .line 727
    move-result-object v4

    .line 728
    const-string v5, "fileId"

    .line 729
    .line 730
    invoke-virtual {v4, v5}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 731
    .line 732
    .line 733
    move-result-object v4

    .line 734
    if-nez v4, :cond_6

    .line 735
    .line 736
    const-string v4, "folderId"

    .line 737
    .line 738
    invoke-static {v0, v2, v4}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 739
    .line 740
    .line 741
    move-result v4

    .line 742
    int-to-long v4, v4

    .line 743
    iput-wide v4, v3, Lba/j;->f:J

    .line 744
    .line 745
    const-string v4, "folderName"

    .line 746
    .line 747
    invoke-static {v0, v2, v4}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v4

    .line 751
    iput-object v4, v3, Lba/j;->g:Ljava/lang/String;

    .line 752
    .line 753
    goto :goto_5

    .line 754
    :cond_6
    invoke-static {v0, v2, v5}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 755
    .line 756
    .line 757
    move-result v4

    .line 758
    int-to-long v4, v4

    .line 759
    iput-wide v4, v3, Lba/j;->a:J

    .line 760
    .line 761
    const-string v4, "fileName"

    .line 762
    .line 763
    invoke-static {v0, v2, v4}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v4

    .line 767
    iput-object v4, v3, Lba/j;->b:Ljava/lang/String;

    .line 768
    .line 769
    const-string v4, "fileSize"

    .line 770
    .line 771
    invoke-static {v0, v2, v4}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 772
    .line 773
    .line 774
    move-result v4

    .line 775
    int-to-long v4, v4

    .line 776
    iput-wide v4, v3, Lba/j;->c:J

    .line 777
    .line 778
    iget-object v4, v3, Lba/j;->b:Ljava/lang/String;

    .line 779
    .line 780
    invoke-static {v4}, Lif/a;->k0(Ljava/lang/String;)Z

    .line 781
    .line 782
    .line 783
    move-result v4

    .line 784
    if-eqz v4, :cond_7

    .line 785
    .line 786
    new-instance v4, Ljava/lang/StringBuilder;

    .line 787
    .line 788
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 789
    .line 790
    .line 791
    iget-object v5, v3, Lba/j;->b:Ljava/lang/String;

    .line 792
    .line 793
    const-string v8, "."

    .line 794
    .line 795
    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 796
    .line 797
    .line 798
    move-result v8

    .line 799
    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v5

    .line 803
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    const-string v5, ".apk"

    .line 807
    .line 808
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    .line 810
    .line 811
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v4

    .line 815
    iput-object v4, v3, Lba/j;->b:Ljava/lang/String;

    .line 816
    .line 817
    :cond_7
    :goto_5
    new-instance v4, Lx9/b6;

    .line 818
    .line 819
    invoke-direct {v4, v3}, Lx9/b6;-><init>(Lba/j;)V

    .line 820
    .line 821
    .line 822
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    add-int/2addr v2, v7

    .line 826
    goto/16 :goto_4

    .line 827
    .line 828
    :cond_8
    return-object v1

    .line 829
    :cond_9
    new-instance v0, Ljava/lang/Exception;

    .line 830
    .line 831
    const-string v1, "\u4e0d\u5b58\u5728\u6587\u4ef6"

    .line 832
    .line 833
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    throw v0

    .line 837
    :cond_a
    new-instance v0, Ljava/lang/Exception;

    .line 838
    .line 839
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    throw v0

    .line 843
    :cond_b
    new-instance v0, Ljava/lang/Exception;

    .line 844
    .line 845
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    throw v0

    .line 849
    :cond_c
    new-instance v0, Ljava/lang/Exception;

    .line 850
    .line 851
    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    throw v0

    .line 855
    :cond_d
    new-instance v0, Ljava/lang/Exception;

    .line 856
    .line 857
    invoke-direct {v0, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 858
    .line 859
    .line 860
    goto :goto_7

    .line 861
    :goto_6
    throw v0

    .line 862
    :goto_7
    goto :goto_6
.end method

.method public static final S(Landroidx/room/p;Lc4/d;)Landroid/database/Cursor;
    .locals 1

    .line 1
    const-string v0, "db"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sqLiteQuery"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Landroidx/room/p;->query(Lc4/d;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static T(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 p0, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    .line 9
    .line 10
    aput-object p2, v3, v0

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v2, p1

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-static {p0}, Lcom/bumptech/glide/d;->i(Landroid/database/Cursor;)V

    .line 37
    .line 38
    .line 39
    return-wide p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/d;->i(Landroid/database/Cursor;)V

    .line 45
    .line 46
    .line 47
    return-wide p3

    .line 48
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lcom/bumptech/glide/d;->i(Landroid/database/Cursor;)V

    .line 52
    .line 53
    .line 54
    return-wide p3

    .line 55
    :goto_1
    invoke-static {p0}, Lcom/bumptech/glide/d;->i(Landroid/database/Cursor;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public static U(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 p0, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    .line 9
    .line 10
    aput-object p2, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v2, p1

    .line 16
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    invoke-static {p1}, Lcom/bumptech/glide/d;->i(Landroid/database/Cursor;)V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_3

    .line 42
    :catch_0
    move-exception p2

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/d;->i(Landroid/database/Cursor;)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :catchall_1
    move-exception p1

    .line 49
    move-object v7, p1

    .line 50
    move-object p1, p0

    .line 51
    move-object p0, v7

    .line 52
    goto :goto_3

    .line 53
    :catch_1
    move-exception p2

    .line 54
    :goto_0
    move-object p1, p0

    .line 55
    goto :goto_2

    .line 56
    :goto_1
    move-object p2, p1

    .line 57
    goto :goto_0

    .line 58
    :catch_2
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :goto_2
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/bumptech/glide/d;->i(Landroid/database/Cursor;)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :goto_3
    invoke-static {p1}, Lcom/bumptech/glide/d;->i(Landroid/database/Cursor;)V

    .line 68
    .line 69
    .line 70
    goto :goto_5

    .line 71
    :goto_4
    throw p0

    .line 72
    :goto_5
    goto :goto_4
.end method

.method public static V(Lx9/n5;Lcom/yunpan/appmanage/bean/WpPathBean;)Ljava/util/ArrayList;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const-string v3, "/"

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    iput-object v3, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 22
    .line 23
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lx9/n5;->A:Ldh/j;

    .line 29
    .line 30
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2, v4}, Ldh/e;->p(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_a

    .line 37
    .line 38
    iget-object v2, p0, Lx9/n5;->A:Ldh/j;

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {v2, v4}, Ldh/e;->s(Ljava/lang/String;)[Ldh/g;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    return-object v4

    .line 48
    :cond_1
    array-length v5, v2

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x1

    .line 51
    if-ne v5, v7, :cond_3

    .line 52
    .line 53
    iget-object v5, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    aget-object v5, v2, v6

    .line 62
    .line 63
    iget v5, v5, Ldh/g;->a:I

    .line 64
    .line 65
    if-nez v5, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    aget-object v2, v2, v6

    .line 74
    .line 75
    iget-object v2, v2, Ldh/g;->d:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v2, v3, v5}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iput-object v2, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v5, p0, Lx9/n5;->A:Ldh/j;

    .line 84
    .line 85
    invoke-virtual {v5, v2}, Ldh/e;->p(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lx9/n5;->A:Ldh/j;

    .line 89
    .line 90
    invoke-virtual {p0, v4}, Ldh/e;->s(Ljava/lang/String;)[Ldh/g;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-nez v2, :cond_3

    .line 95
    .line 96
    return-object v4

    .line 97
    :cond_3
    :goto_0
    array-length p0, v2

    .line 98
    const/4 v4, 0x0

    .line 99
    :goto_1
    if-ge v4, p0, :cond_8

    .line 100
    .line 101
    aget-object v5, v2, v4

    .line 102
    .line 103
    new-instance v8, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 104
    .line 105
    invoke-direct {v8}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-object v9, v5, Ldh/g;->d:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v9, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 111
    .line 112
    const-string v10, "."

    .line 113
    .line 114
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    if-nez v9, :cond_7

    .line 119
    .line 120
    iget-object v9, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 121
    .line 122
    const-string v10, ".."

    .line 123
    .line 124
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    if-eqz v9, :cond_4

    .line 129
    .line 130
    goto/16 :goto_3

    .line 131
    .line 132
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    iget-object v10, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v10, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    iput-object v9, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v9, v5, Ldh/g;->e:Ljava/util/Calendar;

    .line 154
    .line 155
    new-instance v10, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const/4 v11, 0x2

    .line 171
    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    .line 172
    .line 173
    .line 174
    move-result v11

    .line 175
    add-int/2addr v11, v7

    .line 176
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const/4 v11, 0x5

    .line 183
    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v11, " "

    .line 191
    .line 192
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const/16 v11, 0xb

    .line 196
    .line 197
    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v11, ":"

    .line 205
    .line 206
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const/16 v11, 0xc

    .line 210
    .line 211
    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    .line 212
    .line 213
    .line 214
    move-result v9

    .line 215
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    iput-object v9, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;

    .line 223
    .line 224
    iget v9, v5, Ldh/g;->a:I

    .line 225
    .line 226
    if-nez v9, :cond_5

    .line 227
    .line 228
    const/4 v9, 0x1

    .line 229
    goto :goto_2

    .line 230
    :cond_5
    const/4 v9, 0x0

    .line 231
    :goto_2
    xor-int/lit8 v10, v9, 0x1

    .line 232
    .line 233
    iput-boolean v10, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 234
    .line 235
    if-nez v9, :cond_6

    .line 236
    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    iget-object v9, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 243
    .line 244
    invoke-static {v9, v3, v5}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    iput-object v5, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_6
    iget-wide v9, v5, Ldh/g;->b:J

    .line 255
    .line 256
    iput-wide v9, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 257
    .line 258
    long-to-double v9, v9

    .line 259
    invoke-static {v9, v10}, Lif/a;->D0(D)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    iput-object v5, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->size_txt:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 269
    .line 270
    goto/16 :goto_1

    .line 271
    .line 272
    :cond_8
    new-instance p0, La2/m;

    .line 273
    .line 274
    const/16 p1, 0x19

    .line 275
    .line 276
    invoke-direct {p0, p1}, La2/m;-><init>(I)V

    .line 277
    .line 278
    .line 279
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 280
    .line 281
    .line 282
    new-instance p0, La2/m;

    .line 283
    .line 284
    const/16 p1, 0x1a

    .line 285
    .line 286
    invoke-direct {p0, p1}, La2/m;-><init>(I)V

    .line 287
    .line 288
    .line 289
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 293
    .line 294
    .line 295
    move-result p0

    .line 296
    if-nez p0, :cond_9

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 299
    .line 300
    .line 301
    :cond_9
    return-object v0

    .line 302
    :cond_a
    new-instance p0, Ljava/lang/Exception;

    .line 303
    .line 304
    const-string p1, "\u65e0\u6743\u8bbf\u95ee"

    .line 305
    .line 306
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    goto :goto_5

    .line 310
    :goto_4
    throw p0

    .line 311
    :goto_5
    goto :goto_4
.end method

.method public static W(Lba/r;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "devType=6&devModel=Chrome&uuid="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lba/r;->g:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "&extra=2&timestamp="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lqf/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, "&shareId="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lba/r;->f:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, "&folderId="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lba/r;->m:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, "&offset="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v1, p0, Lba/r;->n:I

    .line 73
    .line 74
    const-string v2, "&limit=60"

    .line 75
    .line 76
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "https://api.ilanzou.com/unproved/share/list?"

    .line 81
    .line 82
    invoke-static {v1, v0}, Lda/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    new-instance v2, Ll9/b;

    .line 87
    .line 88
    invoke-direct {v2, v1}, Ll9/b;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v2, Lm9/e;->i:Lk9/a;

    .line 92
    .line 93
    const-string v3, "User-Agent"

    .line 94
    .line 95
    const-string v4, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36 Edg/118.0.2088.76"

    .line 96
    .line 97
    invoke-virtual {v1, v3, v4}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v3, "https://www.ilanzou.com/"

    .line 103
    .line 104
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lba/r;->f:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v3, v2, Lm9/e;->i:Lk9/a;

    .line 117
    .line 118
    const-string v4, "Referer"

    .line 119
    .line 120
    invoke-virtual {v3, v4, v1}, Lk9/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v1, "application/json;charset=UTF-8"

    .line 124
    .line 125
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    iput-object v0, v2, Lm9/a;->n:Ljava/lang/String;

    .line 130
    .line 131
    iput-object v1, v2, Lm9/a;->m:Lokhttp3/MediaType;

    .line 132
    .line 133
    invoke-virtual {v2}, Lm9/e;->a()Lokhttp3/Response;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    const-string v2, "\u8bf7\u6c42\u5931\u8d25"

    .line 142
    .line 143
    if-eqz v1, :cond_6

    .line 144
    .line 145
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const-string v1, "totalPage"

    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    const/4 v3, -0x1

    .line 162
    if-eq v2, v3, :cond_4

    .line 163
    .line 164
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    const-string v2, "list"

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lz7/p;->f()Lz7/o;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    .line 195
    const/4 v3, 0x0

    .line 196
    const/4 v4, 0x0

    .line 197
    :goto_0
    iget-object v5, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-ge v4, v5, :cond_2

    .line 204
    .line 205
    new-instance v5, Lba/j;

    .line 206
    .line 207
    invoke-direct {v5}, Lba/j;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v6, "fileType"

    .line 211
    .line 212
    invoke-static {v0, v4, v6}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    iput v6, v5, Lba/j;->e:I

    .line 217
    .line 218
    const-string v6, "updTime"

    .line 219
    .line 220
    invoke-static {v0, v4, v6}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    iput-object v6, v5, Lba/j;->d:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v0, v4}, Lz7/o;->l(I)Lz7/p;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    const-string v7, "fileId"

    .line 235
    .line 236
    invoke-virtual {v6, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    if-nez v6, :cond_0

    .line 241
    .line 242
    const-string v6, "folderId"

    .line 243
    .line 244
    invoke-static {v0, v4, v6}, Landroid/support/v4/media/session/a;->j(Lz7/o;ILjava/lang/String;)I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    int-to-long v6, v6

    .line 249
    iput-wide v6, v5, Lba/j;->f:J

    .line 250
    .line 251
    const-string v6, "folderName"

    .line 252
    .line 253
    invoke-static {v0, v4, v6}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    iput-object v6, v5, Lba/j;->g:Ljava/lang/String;

    .line 258
    .line 259
    goto :goto_1

    .line 260
    :cond_0
    invoke-virtual {v0, v4}, Lz7/o;->l(I)Lz7/p;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-virtual {v6, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-virtual {v6}, Lz7/p;->h()J

    .line 273
    .line 274
    .line 275
    move-result-wide v6

    .line 276
    iput-wide v6, v5, Lba/j;->a:J

    .line 277
    .line 278
    const-string v6, "fileName"

    .line 279
    .line 280
    invoke-static {v0, v4, v6}, Landroid/support/v4/media/session/a;->v(Lz7/o;ILjava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    iput-object v6, v5, Lba/j;->b:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v0, v4}, Lz7/o;->l(I)Lz7/p;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-virtual {v6}, Lz7/p;->g()Lz7/s;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    const-string v7, "fileSize"

    .line 295
    .line 296
    invoke-virtual {v6, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    invoke-virtual {v6}, Lz7/p;->h()J

    .line 301
    .line 302
    .line 303
    move-result-wide v6

    .line 304
    iput-wide v6, v5, Lba/j;->c:J

    .line 305
    .line 306
    iget-object v6, v5, Lba/j;->b:Ljava/lang/String;

    .line 307
    .line 308
    invoke-static {v6}, Lif/a;->k0(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    if-eqz v6, :cond_1

    .line 313
    .line 314
    new-instance v6, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    iget-object v7, v5, Lba/j;->b:Ljava/lang/String;

    .line 320
    .line 321
    const-string v8, "."

    .line 322
    .line 323
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v7, ".apk"

    .line 335
    .line 336
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    iput-object v6, v5, Lba/j;->b:Ljava/lang/String;

    .line 344
    .line 345
    :cond_1
    :goto_1
    new-instance v6, Lx9/b6;

    .line 346
    .line 347
    invoke-direct {v6, v5}, Lx9/b6;-><init>(Lba/j;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    add-int/lit8 v4, v4, 0x1

    .line 354
    .line 355
    goto/16 :goto_0

    .line 356
    .line 357
    :cond_2
    iget v0, p0, Lba/r;->n:I

    .line 358
    .line 359
    if-ge v0, v1, :cond_3

    .line 360
    .line 361
    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lba/r;->o:Z

    .line 363
    .line 364
    :cond_3
    return-object v2

    .line 365
    :cond_4
    new-instance p0, Ljava/lang/Exception;

    .line 366
    .line 367
    const-string v0, "\u4e0d\u5b58\u5728\u6587\u4ef6"

    .line 368
    .line 369
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw p0

    .line 373
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    .line 374
    .line 375
    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw p0

    .line 379
    :cond_6
    new-instance p0, Ljava/lang/Exception;

    .line 380
    .line 381
    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    goto :goto_3

    .line 385
    :goto_2
    throw p0

    .line 386
    :goto_3
    goto :goto_2
.end method

.method public static X(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->r(J)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {p0, v0}, Ls1/g;->a0(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static Y(Lu1/q;II)J
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lu1/q;->O(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lu1/q;->a()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x5

    .line 9
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    if-ge p1, v0, :cond_0

    .line 15
    .line 16
    return-wide v1

    .line 17
    :cond_0
    invoke-virtual {p0}, Lu1/q;->o()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/high16 v0, 0x800000

    .line 22
    .line 23
    and-int/2addr v0, p1

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return-wide v1

    .line 27
    :cond_1
    const v0, 0x1fff00

    .line 28
    .line 29
    .line 30
    and-int/2addr v0, p1

    .line 31
    shr-int/lit8 v0, v0, 0x8

    .line 32
    .line 33
    if-eq v0, p2, :cond_2

    .line 34
    .line 35
    return-wide v1

    .line 36
    :cond_2
    and-int/lit8 p1, p1, 0x20

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Lu1/q;->B()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/4 p2, 0x7

    .line 45
    if-lt p1, p2, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Lu1/q;->a()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-lt p1, p2, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0}, Lu1/q;->B()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/16 v0, 0x10

    .line 58
    .line 59
    and-int/2addr p1, v0

    .line 60
    if-ne p1, v0, :cond_3

    .line 61
    .line 62
    const/4 p1, 0x6

    .line 63
    new-array v0, p1, [B

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0, v1, p1, v0}, Lu1/q;->l(II[B)V

    .line 67
    .line 68
    .line 69
    aget-byte p0, v0, v1

    .line 70
    .line 71
    int-to-long p0, p0

    .line 72
    const-wide/16 v1, 0xff

    .line 73
    .line 74
    and-long/2addr p0, v1

    .line 75
    const/16 v3, 0x19

    .line 76
    .line 77
    shl-long/2addr p0, v3

    .line 78
    const/4 v3, 0x1

    .line 79
    aget-byte v4, v0, v3

    .line 80
    .line 81
    int-to-long v4, v4

    .line 82
    and-long/2addr v4, v1

    .line 83
    const/16 v6, 0x11

    .line 84
    .line 85
    shl-long/2addr v4, v6

    .line 86
    or-long/2addr p0, v4

    .line 87
    const/4 v4, 0x2

    .line 88
    aget-byte v4, v0, v4

    .line 89
    .line 90
    int-to-long v4, v4

    .line 91
    and-long/2addr v4, v1

    .line 92
    const/16 v6, 0x9

    .line 93
    .line 94
    shl-long/2addr v4, v6

    .line 95
    or-long/2addr p0, v4

    .line 96
    const/4 v4, 0x3

    .line 97
    aget-byte v4, v0, v4

    .line 98
    .line 99
    int-to-long v4, v4

    .line 100
    and-long/2addr v4, v1

    .line 101
    shl-long v3, v4, v3

    .line 102
    .line 103
    or-long/2addr p0, v3

    .line 104
    const/4 v3, 0x4

    .line 105
    aget-byte v0, v0, v3

    .line 106
    .line 107
    int-to-long v3, v0

    .line 108
    and-long/2addr v1, v3

    .line 109
    shr-long v0, v1, p2

    .line 110
    .line 111
    or-long/2addr p0, v0

    .line 112
    return-wide p0

    .line 113
    :cond_3
    return-wide v1
.end method

.method public static Z(Lt1/a;)V
    .locals 5

    .line 1
    const v0, -0x800001

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lt1/a;->k:F

    .line 5
    .line 6
    const/high16 v0, -0x80000000

    .line 7
    .line 8
    iput v0, p0, Lt1/a;->j:I

    .line 9
    .line 10
    iget-object v0, p0, Lt1/a;->a:Ljava/lang/CharSequence;

    .line 11
    .line 12
    instance-of v1, v0, Landroid/text/Spanned;

    .line 13
    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    instance-of v1, v0, Landroid/text/Spannable;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lt1/a;->a:Ljava/lang/CharSequence;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lt1/a;->b:Landroid/graphics/Bitmap;

    .line 28
    .line 29
    :cond_0
    iget-object p0, p0, Lt1/a;->a:Ljava/lang/CharSequence;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    check-cast p0, Landroid/text/Spannable;

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x0

    .line 41
    const-class v2, Ljava/lang/Object;

    .line 42
    .line 43
    invoke-interface {p0, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    array-length v2, v0

    .line 48
    :goto_0
    if-ge v1, v2, :cond_3

    .line 49
    .line 50
    aget-object v3, v0, v1

    .line 51
    .line 52
    instance-of v4, v3, Landroid/text/style/AbsoluteSizeSpan;

    .line 53
    .line 54
    if-nez v4, :cond_1

    .line 55
    .line 56
    instance-of v4, v3, Landroid/text/style/RelativeSizeSpan;

    .line 57
    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    :cond_1
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    return-void
.end method

.method public static a0(IFII)F
    .locals 2

    .line 1
    const v0, -0x800001

    .line 2
    .line 3
    .line 4
    cmpl-float v1, p1, v0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    if-eqz p0, :cond_3

    .line 10
    .line 11
    const/4 p3, 0x1

    .line 12
    if-eq p0, p3, :cond_2

    .line 13
    .line 14
    const/4 p2, 0x2

    .line 15
    if-eq p0, p2, :cond_1

    .line 16
    .line 17
    return v0

    .line 18
    :cond_1
    return p1

    .line 19
    :cond_2
    int-to-float p0, p2

    .line 20
    :goto_0
    mul-float p1, p1, p0

    .line 21
    .line 22
    return p1

    .line 23
    :cond_3
    int-to-float p0, p3

    .line 24
    goto :goto_0
.end method

.method public static b0(Landroid/content/Context;II)I
    .locals 1

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/media/session/b;->D(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Landroid/util/TypedValue;->type:I

    .line 8
    .line 9
    const/16 v0, 0x10

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    iget p2, p0, Landroid/util/TypedValue;->data:I

    .line 14
    .line 15
    :cond_0
    return p2
.end method

.method public static c0(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/animation/TimeInterpolator;
    .locals 5

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-object p2

    .line 18
    :cond_0
    iget p1, v0, Landroid/util/TypedValue;->type:I

    .line 19
    .line 20
    const/4 p2, 0x3

    .line 21
    if-ne p1, p2, :cond_7

    .line 22
    .line 23
    iget-object p1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, "cubic-bezier"

    .line 30
    .line 31
    invoke-static {p1, v1}, Lcom/bumptech/glide/d;->I(Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const-string v4, "path"

    .line 36
    .line 37
    if-nez v3, :cond_2

    .line 38
    .line 39
    invoke-static {p1, v4}, Lcom/bumptech/glide/d;->I(Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 47
    .line 48
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :cond_2
    :goto_0
    invoke-static {p1, v1}, Lcom/bumptech/glide/d;->I(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    sub-int/2addr p0, v2

    .line 64
    const/16 v0, 0xd

    .line 65
    .line 66
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string p1, ","

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    array-length p1, p0

    .line 77
    const/4 v0, 0x4

    .line 78
    if-ne p1, v0, :cond_3

    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    invoke-static {p1, p0}, Lcom/bumptech/glide/d;->z(I[Ljava/lang/String;)F

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-static {v2, p0}, Lcom/bumptech/glide/d;->z(I[Ljava/lang/String;)F

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v1, 0x2

    .line 90
    invoke-static {v1, p0}, Lcom/bumptech/glide/d;->z(I[Ljava/lang/String;)F

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-static {p2, p0}, Lcom/bumptech/glide/d;->z(I[Ljava/lang/String;)F

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    invoke-static {p1, v0, v1, p0}, Lcom/bumptech/glide/c;->o(FFFF)Landroid/view/animation/Interpolator;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v0, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: "

    .line 108
    .line 109
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    array-length p0, p0

    .line 113
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_4
    invoke-static {p1, v4}, Lcom/bumptech/glide/d;->I(Ljava/lang/String;Ljava/lang/String;)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-eqz p0, :cond_6

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    sub-int/2addr p0, v2

    .line 135
    const/4 p2, 0x5

    .line 136
    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-static {p0}, Lif/a;->v(Ljava/lang/String;)Landroid/graphics/Path;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 145
    .line 146
    const/16 p2, 0x15

    .line 147
    .line 148
    if-lt p1, p2, :cond_5

    .line 149
    .line 150
    invoke-static {p0}, Lz0/a;->c(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    goto :goto_1

    .line 155
    :cond_5
    new-instance p1, Li4/i;

    .line 156
    .line 157
    invoke-direct {p1, p0}, Li4/i;-><init>(Landroid/graphics/Path;)V

    .line 158
    .line 159
    .line 160
    move-object p0, p1

    .line 161
    :goto_1
    return-object p0

    .line 162
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 163
    .line 164
    const-string p2, "Invalid motion easing type: "

    .line 165
    .line 166
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 175
    .line 176
    const-string p1, "Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes."

    .line 177
    .line 178
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0
.end method

.method public static d(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Z
    .locals 6

    .line 1
    invoke-static {p2}, Lcom/bumptech/glide/d;->N(Lx9/n5;)Ldh/j;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p2, p0}, Ldh/e;->x(Ljava/lang/String;)Lfh/c;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 16
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    .line 17
    .line 18
    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 19
    .line 20
    .line 21
    :try_start_2
    new-instance p1, Ljava/io/BufferedInputStream;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 24
    .line 25
    .line 26
    :try_start_3
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 27
    .line 28
    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    .line 30
    .line 31
    const/high16 v1, 0x100000

    .line 32
    .line 33
    :try_start_4
    new-array v1, v1, [B

    .line 34
    .line 35
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v5, -0x1

    .line 40
    if-eq v4, v5, :cond_1

    .line 41
    .line 42
    invoke-virtual {v3, v1, v0, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    :goto_1
    move-object v1, p1

    .line 51
    goto :goto_5

    .line 52
    :catch_0
    :goto_2
    move-object v1, p1

    .line 53
    goto :goto_6

    .line 54
    :cond_1
    invoke-static {p1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v3}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 64
    .line 65
    .line 66
    :try_start_5
    invoke-virtual {p2}, Ldh/c;->h()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 67
    .line 68
    .line 69
    :catch_1
    invoke-static {p2}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x1

    .line 73
    return p0

    .line 74
    :catchall_1
    move-exception v0

    .line 75
    move-object v3, v1

    .line 76
    goto :goto_1

    .line 77
    :catch_2
    move-object v3, v1

    .line 78
    goto :goto_2

    .line 79
    :catchall_2
    move-exception v0

    .line 80
    move-object v3, v1

    .line 81
    goto :goto_5

    .line 82
    :catch_3
    move-object v3, v1

    .line 83
    goto :goto_6

    .line 84
    :catchall_3
    move-exception v0

    .line 85
    move-object v2, v1

    .line 86
    :goto_3
    move-object v3, v2

    .line 87
    goto :goto_5

    .line 88
    :catch_4
    move-object v2, v1

    .line 89
    :goto_4
    move-object v3, v2

    .line 90
    goto :goto_6

    .line 91
    :catchall_4
    move-exception v0

    .line 92
    move-object p0, v1

    .line 93
    move-object v2, p0

    .line 94
    goto :goto_3

    .line 95
    :catch_5
    move-object p0, v1

    .line 96
    move-object v2, p0

    .line 97
    goto :goto_4

    .line 98
    :goto_5
    invoke-static {v1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v3}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 105
    .line 106
    .line 107
    invoke-static {p0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 108
    .line 109
    .line 110
    :try_start_6
    invoke-virtual {p2}, Ldh/c;->h()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 111
    .line 112
    .line 113
    :catch_6
    invoke-static {p2}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :goto_6
    invoke-static {v1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v3}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 121
    .line 122
    .line 123
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 124
    .line 125
    .line 126
    invoke-static {p0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 127
    .line 128
    .line 129
    :try_start_7
    invoke-virtual {p2}, Ldh/c;->h()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 130
    .line 131
    .line 132
    :catch_7
    invoke-static {p2}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 133
    .line 134
    .line 135
    return v0
.end method

.method public static final d0(Lio/github/rosemoe/sora/widget/CodeEditor;Landroid/view/MotionEvent;I)J
    .locals 9

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "event"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    if-ne p2, v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_0
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    int-to-float v2, v2

    .line 28
    add-float/2addr v1, v2

    .line 29
    if-ne p2, v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    :goto_1
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    int-to-float p2, p2

    .line 45
    add-float/2addr p1, p2

    .line 46
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->R()F

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderer()Ltb/l;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ltb/l;->z()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v2, 0x2

    .line 62
    const/4 v3, 0x1

    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    cmpg-float v6, v1, v4

    .line 66
    .line 67
    if-gez v6, :cond_3

    .line 68
    .line 69
    :cond_2
    const/4 p2, 0x0

    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :cond_3
    cmpg-float v6, v4, v1

    .line 73
    .line 74
    if-gtz v6, :cond_4

    .line 75
    .line 76
    cmpg-float v6, v1, p2

    .line 77
    .line 78
    if-gtz v6, :cond_4

    .line 79
    .line 80
    const/4 p2, 0x1

    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_4
    cmpg-float v6, p2, v1

    .line 84
    .line 85
    if-gtz v6, :cond_5

    .line 86
    .line 87
    int-to-float v6, v5

    .line 88
    add-float/2addr v6, p2

    .line 89
    cmpg-float v6, v1, v6

    .line 90
    .line 91
    if-gtz v6, :cond_5

    .line 92
    .line 93
    const/4 p2, 0x2

    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :cond_5
    int-to-float v6, v5

    .line 97
    add-float/2addr p2, v6

    .line 98
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginLeft()F

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    add-float/2addr v6, p2

    .line 103
    cmpg-float v6, v1, v6

    .line 104
    .line 105
    if-gtz v6, :cond_6

    .line 106
    .line 107
    cmpg-float v6, p2, v1

    .line 108
    .line 109
    if-gtz v6, :cond_6

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginLeft()F

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    add-float/2addr v6, p2

    .line 117
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerWidth()F

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    add-float/2addr v7, v6

    .line 122
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginLeft()F

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    add-float/2addr v6, p2

    .line 127
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginRight()F

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    add-float/2addr v8, v6

    .line 132
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerWidth()F

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    add-float/2addr v6, v8

    .line 137
    cmpg-float v6, v1, v6

    .line 138
    .line 139
    if-gtz v6, :cond_7

    .line 140
    .line 141
    cmpg-float v6, v7, v1

    .line 142
    .line 143
    if-gtz v6, :cond_7

    .line 144
    .line 145
    :goto_2
    const/4 p2, 0x3

    .line 146
    goto :goto_3

    .line 147
    :cond_7
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginLeft()F

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    add-float/2addr v6, p2

    .line 152
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginLeft()F

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    add-float/2addr v7, p2

    .line 157
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerWidth()F

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    add-float/2addr p2, v7

    .line 162
    cmpg-float p2, v1, p2

    .line 163
    .line 164
    if-gtz p2, :cond_8

    .line 165
    .line 166
    cmpg-float p2, v6, v1

    .line 167
    .line 168
    if-gtz p2, :cond_8

    .line 169
    .line 170
    const/4 p2, 0x4

    .line 171
    goto :goto_3

    .line 172
    :cond_8
    const/4 p2, 0x5

    .line 173
    cmpg-float v0, v0, v1

    .line 174
    .line 175
    if-gtz v0, :cond_9

    .line 176
    .line 177
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxX()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    add-int/2addr v6, v0

    .line 186
    int-to-float v0, v6

    .line 187
    cmpg-float v0, v1, v0

    .line 188
    .line 189
    if-gtz v0, :cond_9

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_9
    iget-boolean v0, p0, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 193
    .line 194
    if-eqz v0, :cond_2

    .line 195
    .line 196
    cmpg-float v0, v4, v1

    .line 197
    .line 198
    if-gtz v0, :cond_2

    .line 199
    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    int-to-float v0, v0

    .line 205
    cmpg-float v0, v1, v0

    .line 206
    .line 207
    if-gtz v0, :cond_2

    .line 208
    .line 209
    :goto_3
    cmpl-float v0, p1, v4

    .line 210
    .line 211
    if-ltz v0, :cond_a

    .line 212
    .line 213
    invoke-virtual {p0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxY()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    div-int/2addr p0, v2

    .line 222
    add-int/2addr p0, v0

    .line 223
    int-to-float p0, p0

    .line 224
    cmpg-float p0, p1, p0

    .line 225
    .line 226
    if-gtz p0, :cond_a

    .line 227
    .line 228
    const/4 v3, 0x0

    .line 229
    :cond_a
    invoke-static {p2, v3}, Lsb/h;->g(II)J

    .line 230
    .line 231
    .line 232
    move-result-wide p0

    .line 233
    return-wide p0
.end method

.method public static e(Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;Lx9/n5;)Lcom/yunpan/appmanage/bean/WpPathBean;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, "/"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p2, Lx9/n5;->A:Ldh/j;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Ldh/e;->u(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    iget-object p2, p2, Lx9/n5;->A:Ldh/j;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p2, p0}, Ldh/e;->p(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    new-instance p0, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 40
    .line 41
    invoke-direct {p0, p1, v1}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->is_dir:Z

    .line 46
    .line 47
    sget-object p1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 48
    .line 49
    sget-object p1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/yunpan/appmanage/util/k;->b0:Ljava/text/SimpleDateFormat;

    .line 52
    .line 53
    new-instance p2, Ljava/util/Date;

    .line 54
    .line 55
    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/yunpan/appmanage/bean/WpPathBean;->time_txt:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    return-object p0

    .line 65
    :catch_0
    :cond_0
    return-object v0
.end method

.method public static e0(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    array-length v0, p1

    .line 8
    ushr-int/lit8 v0, v0, 0x18

    .line 9
    .line 10
    int-to-byte v0, v0

    .line 11
    array-length v1, p1

    .line 12
    ushr-int/lit8 v1, v1, 0x10

    .line 13
    .line 14
    int-to-byte v1, v1

    .line 15
    array-length v2, p1

    .line 16
    ushr-int/lit8 v2, v2, 0x8

    .line 17
    .line 18
    int-to-byte v2, v2

    .line 19
    array-length v3, p1

    .line 20
    int-to-byte v3, v3

    .line 21
    const/4 v4, 0x4

    .line 22
    new-array v4, v4, [B

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    aput-byte v0, v4, v5

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    aput-byte v1, v4, v0

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    aput-byte v2, v4, v0

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    aput-byte v3, v4, v0

    .line 35
    .line 36
    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public static f(Landroid/view/View;)Landroidx/fragment/app/c2;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    sget-object v2, Landroidx/fragment/app/c2;->d:Landroidx/fragment/app/c2;

    .line 12
    .line 13
    cmpg-float v0, v0, v1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    if-eq p0, v0, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x8

    .line 34
    .line 35
    if-ne p0, v0, :cond_1

    .line 36
    .line 37
    sget-object v2, Landroidx/fragment/app/c2;->c:Landroidx/fragment/app/c2;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v1, "Unknown visibility "

    .line 43
    .line 44
    invoke-static {p0, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_2
    sget-object v2, Landroidx/fragment/app/c2;->b:Landroidx/fragment/app/c2;

    .line 53
    .line 54
    :cond_3
    :goto_0
    return-object v2
.end method

.method public static f0(Lw/z;Z)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Lb1/n;->c(Landroid/widget/PopupWindow;Z)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v1, 0x15

    .line 12
    .line 13
    if-lt v0, v1, :cond_2

    .line 14
    .line 15
    sget-boolean v0, Lcom/bumptech/glide/d;->d:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    .line 21
    .line 22
    const-string v2, "mOverlapAnchor"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sput-object v1, Lcom/bumptech/glide/d;->c:Ljava/lang/reflect/Field;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    sput-boolean v0, Lcom/bumptech/glide/d;->d:Z

    .line 34
    .line 35
    :cond_1
    sget-object v0, Lcom/bumptech/glide/d;->c:Ljava/lang/reflect/Field;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    :try_start_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    .line 45
    .line 46
    :catch_1
    :cond_2
    :goto_0
    return-void
.end method

.method public static g(II)I
    .locals 6

    .line 1
    int-to-long v0, p0

    .line 2
    int-to-long v2, p1

    .line 3
    add-long/2addr v0, v2

    .line 4
    long-to-int v2, v0

    .line 5
    int-to-long v3, v2

    .line 6
    cmp-long v5, v0, v3

    .line 7
    .line 8
    if-nez v5, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v2

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "overflow: checkedAdd("

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p0, ", "

    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, ")"

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public static g0(Landroid/widget/PopupWindow;I)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v3, 0x17

    .line 6
    .line 7
    if-lt v2, v3, :cond_0

    .line 8
    .line 9
    invoke-static {p0, p1}, Lb1/n;->d(Landroid/widget/PopupWindow;I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-boolean v2, Lcom/bumptech/glide/d;->b:Z

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    .line 18
    .line 19
    const-string v3, "setWindowLayoutType"

    .line 20
    .line 21
    new-array v4, v1, [Ljava/lang/Class;

    .line 22
    .line 23
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    .line 25
    aput-object v5, v4, v0

    .line 26
    .line 27
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sput-object v2, Lcom/bumptech/glide/d;->a:Ljava/lang/reflect/Method;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    sput-boolean v1, Lcom/bumptech/glide/d;->b:Z

    .line 37
    .line 38
    :cond_1
    sget-object v2, Lcom/bumptech/glide/d;->a:Ljava/lang/reflect/Method;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-array v1, v1, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object p1, v1, v0

    .line 49
    .line 50
    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    .line 52
    .line 53
    :catch_1
    :cond_2
    :goto_0
    return-void
.end method

.method public static h(Ldh/j;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ldh/j;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    return-void
.end method

.method public static h0([B)Ljava/lang/String;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    mul-int/lit8 v0, v0, 0x2

    .line 3
    .line 4
    new-array v0, v0, [C

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p0

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    aget-byte v2, p0, v1

    .line 11
    .line 12
    and-int/lit16 v3, v2, 0xff

    .line 13
    .line 14
    mul-int/lit8 v4, v1, 0x2

    .line 15
    .line 16
    ushr-int/lit8 v3, v3, 0x4

    .line 17
    .line 18
    const/16 v5, 0x10

    .line 19
    .line 20
    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    aput-char v3, v0, v4

    .line 25
    .line 26
    add-int/lit8 v4, v4, 0x1

    .line 27
    .line 28
    and-int/lit8 v2, v2, 0xf

    .line 29
    .line 30
    invoke-static {v2, v5}, Ljava/lang/Character;->forDigit(II)C

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    aput-char v2, v0, v4

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public static i(Landroid/database/Cursor;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/hierynomus/security/jce/a;->m(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    throw p0

    .line 9
    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static i0(Lcom/yunpan/appmanage/bean/WpTaskBean;Lcom/yunpan/appmanage/carsdk/u;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 7
    .line 8
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 9
    .line 10
    iget-object v4, v4, Lx9/w3;->b:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 13
    .line 14
    .line 15
    :try_start_1
    iget-object v4, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->userInfo:Lx9/n5;

    .line 16
    .line 17
    invoke-static {v4}, Lcom/bumptech/glide/d;->N(Lx9/n5;)Ldh/j;

    .line 18
    .line 19
    .line 20
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    :try_start_2
    iput-object v1, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 24
    .line 25
    const-string v5, "\u521b\u5efaFTP\u8fde\u63a5\u5931\u8d25"

    .line 26
    .line 27
    iput-object v5, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    .line 29
    invoke-static {v3}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 30
    .line 31
    .line 32
    :try_start_3
    invoke-virtual {v4}, Ldh/c;->h()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 33
    .line 34
    .line 35
    :catch_0
    invoke-static {v4}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    move-object v5, v2

    .line 41
    move-object v7, v5

    .line 42
    :goto_0
    move-object/from16 v16, v3

    .line 43
    .line 44
    goto/16 :goto_d

    .line 45
    .line 46
    :catch_1
    move-object v5, v2

    .line 47
    move-object v7, v5

    .line 48
    :goto_1
    move-object/from16 v16, v3

    .line 49
    .line 50
    goto/16 :goto_b

    .line 51
    .line 52
    :cond_0
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v6, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->wpPathInfo:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 58
    .line 59
    iget-object v6, v6, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v6, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 65
    .line 66
    iget-object v6, v6, Lx9/w3;->a:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v4, v5}, Ldh/e;->z(Ljava/lang/String;)Lfh/d;

    .line 76
    .line 77
    .line 78
    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 79
    if-nez v5, :cond_1

    .line 80
    .line 81
    :try_start_5
    iput-object v1, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 82
    .line 83
    const-string v6, "\u6253\u5f00\u8fdc\u7a0b\u6d41\u5931\u8d25"

    .line 84
    .line 85
    iput-object v6, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 86
    .line 87
    invoke-static {v5}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 91
    .line 92
    .line 93
    :try_start_6
    invoke-virtual {v4}, Ldh/c;->h()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 94
    .line 95
    .line 96
    :catch_2
    invoke-static {v4}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    move-object v7, v2

    .line 102
    goto :goto_0

    .line 103
    :catch_3
    move-object v7, v2

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    :try_start_7
    new-instance v6, Ljava/io/BufferedInputStream;

    .line 106
    .line 107
    invoke-direct {v6, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 108
    .line 109
    .line 110
    :try_start_8
    new-instance v7, Ljava/io/BufferedOutputStream;

    .line 111
    .line 112
    invoke-direct {v7, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 113
    .line 114
    .line 115
    const/high16 v2, 0x80000

    .line 116
    .line 117
    :try_start_9
    new-array v2, v2, [B

    .line 118
    .line 119
    iget-object v8, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->bdPathInfo:Lx9/w3;

    .line 120
    .line 121
    iget-wide v8, v8, Lx9/w3;->d:J

    .line 122
    .line 123
    const/4 v10, 0x0

    .line 124
    const-wide/16 v11, 0x0

    .line 125
    .line 126
    const/4 v13, 0x0

    .line 127
    :goto_2
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    .line 128
    .line 129
    .line 130
    move-result v14

    .line 131
    const/4 v15, -0x1

    .line 132
    if-eq v14, v15, :cond_4

    .line 133
    .line 134
    invoke-virtual {v7, v2, v10, v14}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 138
    .line 139
    .line 140
    int-to-long v14, v14

    .line 141
    add-long/2addr v11, v14

    .line 142
    new-instance v14, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v15, "\u4e0a\u4f20\u4e2d\uff1a"

    .line 148
    .line 149
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    sget-object v15, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 153
    .line 154
    sget-object v15, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 155
    .line 156
    sget-object v15, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 157
    .line 158
    move-object/from16 v17, v2

    .line 159
    .line 160
    move-object/from16 v16, v3

    .line 161
    .line 162
    long-to-double v2, v11

    .line 163
    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    .line 164
    .line 165
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 166
    .line 167
    .line 168
    mul-double v2, v2, v18

    .line 169
    .line 170
    move-wide/from16 v19, v11

    .line 171
    .line 172
    long-to-double v10, v8

    .line 173
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    .line 174
    .line 175
    .line 176
    div-double/2addr v2, v10

    .line 177
    :try_start_a
    invoke-virtual {v15, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v2, "%"

    .line 185
    .line 186
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    iput-object v2, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 194
    .line 195
    add-int/lit8 v13, v13, 0x1

    .line 196
    .line 197
    const/4 v2, 0x2

    .line 198
    if-le v13, v2, :cond_2

    .line 199
    .line 200
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    const/16 v3, 0xa

    .line 205
    .line 206
    iput v3, v2, Landroid/os/Message;->what:I

    .line 207
    .line 208
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 209
    .line 210
    move-object/from16 v3, p1

    .line 211
    .line 212
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    .line 214
    .line 215
    const/4 v13, 0x0

    .line 216
    goto :goto_5

    .line 217
    :catchall_2
    move-exception v0

    .line 218
    :goto_3
    move-object v2, v6

    .line 219
    goto/16 :goto_d

    .line 220
    .line 221
    :catch_4
    :goto_4
    move-object v2, v6

    .line 222
    goto/16 :goto_b

    .line 223
    .line 224
    :cond_2
    move-object/from16 v3, p1

    .line 225
    .line 226
    :goto_5
    iget-boolean v2, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->isTask_stop:Z

    .line 227
    .line 228
    if-eqz v2, :cond_3

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_3
    move-object/from16 v3, v16

    .line 232
    .line 233
    move-object/from16 v2, v17

    .line 234
    .line 235
    move-wide/from16 v11, v19

    .line 236
    .line 237
    const/4 v10, 0x0

    .line 238
    goto :goto_2

    .line 239
    :catchall_3
    move-exception v0

    .line 240
    move-object/from16 v16, v3

    .line 241
    .line 242
    goto :goto_3

    .line 243
    :catch_5
    move-object/from16 v16, v3

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_4
    move-object/from16 v16, v3

    .line 247
    .line 248
    :goto_6
    iget-boolean v2, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->isTask_stop:Z

    .line 249
    .line 250
    if-eqz v2, :cond_5

    .line 251
    .line 252
    iput-object v1, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 253
    .line 254
    const-string v2, "\u4e3b\u52a8\u505c\u6b62\u4efb\u52a1"

    .line 255
    .line 256
    iput-object v2, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;

    .line 257
    .line 258
    goto :goto_7

    .line 259
    :cond_5
    iput-object v1, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 260
    .line 261
    const-string v2, "\u4e0a\u4f20\u5b8c\u6210"

    .line 262
    .line 263
    iput-object v2, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 264
    .line 265
    :goto_7
    invoke-static {v6}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 266
    .line 267
    .line 268
    invoke-static {v7}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 269
    .line 270
    .line 271
    invoke-static {v5}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 272
    .line 273
    .line 274
    invoke-static/range {v16 .. v16}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 275
    .line 276
    .line 277
    :goto_8
    :try_start_b
    invoke-virtual {v4}, Ldh/c;->h()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 278
    .line 279
    .line 280
    :catch_6
    invoke-static {v4}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 281
    .line 282
    .line 283
    goto/16 :goto_c

    .line 284
    .line 285
    :catchall_4
    move-exception v0

    .line 286
    move-object/from16 v16, v3

    .line 287
    .line 288
    move-object v7, v2

    .line 289
    goto :goto_3

    .line 290
    :catch_7
    move-object/from16 v16, v3

    .line 291
    .line 292
    move-object v7, v2

    .line 293
    goto :goto_4

    .line 294
    :catchall_5
    move-exception v0

    .line 295
    move-object/from16 v16, v3

    .line 296
    .line 297
    move-object v7, v2

    .line 298
    goto :goto_d

    .line 299
    :catch_8
    move-object/from16 v16, v3

    .line 300
    .line 301
    move-object v7, v2

    .line 302
    goto :goto_b

    .line 303
    :catchall_6
    move-exception v0

    .line 304
    move-object/from16 v16, v3

    .line 305
    .line 306
    move-object v5, v2

    .line 307
    :goto_9
    move-object v7, v5

    .line 308
    goto :goto_d

    .line 309
    :catch_9
    move-object/from16 v16, v3

    .line 310
    .line 311
    move-object v5, v2

    .line 312
    :goto_a
    move-object v7, v5

    .line 313
    goto :goto_b

    .line 314
    :catchall_7
    move-exception v0

    .line 315
    move-object/from16 v16, v3

    .line 316
    .line 317
    move-object v4, v2

    .line 318
    move-object v5, v4

    .line 319
    goto :goto_9

    .line 320
    :catch_a
    move-object/from16 v16, v3

    .line 321
    .line 322
    move-object v4, v2

    .line 323
    move-object v5, v4

    .line 324
    goto :goto_a

    .line 325
    :catchall_8
    move-exception v0

    .line 326
    move-object v4, v2

    .line 327
    move-object v5, v4

    .line 328
    move-object v7, v5

    .line 329
    move-object/from16 v16, v7

    .line 330
    .line 331
    goto :goto_d

    .line 332
    :catch_b
    move-object v4, v2

    .line 333
    move-object v5, v4

    .line 334
    move-object v7, v5

    .line 335
    move-object/from16 v16, v7

    .line 336
    .line 337
    :goto_b
    :try_start_c
    iput-object v1, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str_state:Ljava/lang/String;

    .line 338
    .line 339
    const-string v1, "\u4e0a\u4f20\u5931\u8d25"

    .line 340
    .line 341
    iput-object v1, v0, Lcom/yunpan/appmanage/bean/WpTaskBean;->str1:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 342
    .line 343
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 344
    .line 345
    .line 346
    invoke-static {v7}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 347
    .line 348
    .line 349
    invoke-static {v5}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 350
    .line 351
    .line 352
    invoke-static/range {v16 .. v16}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 353
    .line 354
    .line 355
    goto :goto_8

    .line 356
    :goto_c
    return-void

    .line 357
    :catchall_9
    move-exception v0

    .line 358
    :goto_d
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 359
    .line 360
    .line 361
    invoke-static {v7}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 362
    .line 363
    .line 364
    invoke-static {v5}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 365
    .line 366
    .line 367
    invoke-static/range {v16 .. v16}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 368
    .line 369
    .line 370
    :try_start_d
    invoke-virtual {v4}, Ldh/c;->h()I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 371
    .line 372
    .line 373
    :catch_c
    invoke-static {v4}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 374
    .line 375
    .line 376
    goto :goto_f

    .line 377
    :goto_e
    throw v0

    .line 378
    :goto_f
    goto :goto_e
.end method

.method public static j(Lx9/n5;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "\u8fde\u63a5\u5931\u8d25"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iget-object v2, p0, Lx9/n5;->A:Ldh/j;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v2, v4}, Ldh/c;->k(I)I

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lx9/n5;->A:Ldh/j;

    .line 15
    .line 16
    invoke-virtual {v2}, Ldh/j;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    iput-object v3, p0, Lx9/n5;->A:Ldh/j;

    .line 20
    .line 21
    :cond_0
    iget-boolean v2, p0, Lx9/n5;->B:Z

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    new-instance v2, Ldh/j;

    .line 27
    .line 28
    invoke-direct {v2, v5}, Ldh/j;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v2, Ldh/j;

    .line 33
    .line 34
    invoke-direct {v2, v4}, Ldh/j;-><init>(Z)V

    .line 35
    .line 36
    .line 37
    :goto_0
    const/16 v6, 0x4e20

    .line 38
    .line 39
    iput v6, v2, Lch/d;->a:I

    .line 40
    .line 41
    const/16 v6, 0x3e80

    .line 42
    .line 43
    iput v6, v2, Lch/d;->f:I

    .line 44
    .line 45
    :try_start_1
    iget-object v6, p0, Lx9/n5;->y:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    const-string v6, "UTF-8"

    .line 54
    .line 55
    iput-object v6, p0, Lx9/n5;->y:Ljava/lang/String;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_1
    move-exception p0

    .line 59
    goto :goto_5

    .line 60
    :cond_2
    :goto_1
    iget-object v6, p0, Lx9/n5;->y:Ljava/lang/String;

    .line 61
    .line 62
    const-string v7, "\u81ea\u52a8"

    .line 63
    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_3

    .line 69
    .line 70
    iput-boolean v4, v2, Ldh/e;->G:Z

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget-object v4, p0, Lx9/n5;->y:Ljava/lang/String;

    .line 74
    .line 75
    iput-object v4, v2, Ldh/c;->n:Ljava/lang/String;

    .line 76
    .line 77
    :goto_2
    iget-object v4, p0, Lx9/n5;->c:Ljava/lang/String;

    .line 78
    .line 79
    iget v6, p0, Lx9/n5;->d:I

    .line 80
    .line 81
    invoke-virtual {v2, v4, v6}, Lch/d;->c(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    iget-object v4, p0, Lx9/n5;->e:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v4}, Lzg/b;->a(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_4

    .line 91
    .line 92
    const-string v4, "Anonymous"

    .line 93
    .line 94
    invoke-virtual {v2, v4, v1}, Ldh/e;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    goto :goto_3

    .line 99
    :cond_4
    iget-object v4, p0, Lx9/n5;->e:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v6, p0, Lx9/n5;->f:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v2, v4, v6}, Ldh/e;->t(Ljava/lang/String;Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    :goto_3
    if-eqz v4, :cond_7

    .line 108
    .line 109
    invoke-virtual {v2}, Ldh/e;->y()V

    .line 110
    .line 111
    .line 112
    iget v4, v2, Ldh/c;->j:I

    .line 113
    .line 114
    invoke-static {v4}, Lcom/bumptech/glide/c;->L(I)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_5

    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_5
    iget-boolean v4, p0, Lx9/n5;->z:Z

    .line 122
    .line 123
    const/4 v6, -0x1

    .line 124
    if-eqz v4, :cond_6

    .line 125
    .line 126
    const/4 v4, 0x2

    .line 127
    iput v4, v2, Ldh/e;->t:I

    .line 128
    .line 129
    iput-object v3, v2, Ldh/e;->w:Ljava/lang/String;

    .line 130
    .line 131
    iput v6, v2, Ldh/e;->v:I

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_6
    iput v5, v2, Ldh/e;->t:I

    .line 135
    .line 136
    iput-object v3, v2, Ldh/e;->w:Ljava/lang/String;

    .line 137
    .line 138
    iput v6, v2, Ldh/e;->v:I

    .line 139
    .line 140
    :goto_4
    iput-object v2, p0, Lx9/n5;->A:Ldh/j;

    .line 141
    .line 142
    return-object v1

    .line 143
    :cond_7
    new-instance p0, Ljava/lang/Exception;

    .line 144
    .line 145
    const-string v3, "\u8d26\u53f7\u6216\u5bc6\u7801\u9519\u8bef"

    .line 146
    .line 147
    invoke-direct {p0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    .line 153
    .line 154
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 155
    .line 156
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-static {v2}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 160
    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_8

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_8
    move-object v0, p0

    .line 190
    :goto_6
    return-object v0
.end method

.method public static k(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/bumptech/glide/d;->N(Lx9/n5;)Ldh/j;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 8
    const-string v2, "\u65b0\u5efaFTP\u8fde\u63a5\u5931\u8d25"

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    :try_start_1
    iget-object v3, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 13
    .line 14
    invoke-static {v3}, Lcom/bumptech/glide/d;->N(Lx9/n5;)Ldh/j;

    .line 15
    .line 16
    .line 17
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    :try_start_2
    invoke-virtual {v3}, Ldh/c;->h()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    :try_start_3
    invoke-virtual {v1}, Ldh/c;->h()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 24
    .line 25
    .line 26
    :catch_1
    invoke-static {v3}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 30
    .line 31
    .line 32
    return-object v2

    .line 33
    :cond_0
    :try_start_4
    invoke-virtual {v1, p1}, Ldh/e;->x(Ljava/lang/String;)Lfh/c;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    :try_start_5
    const-string p0, "\u6253\u5f00inputStream\u5931\u8d25"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 40
    .line 41
    invoke-static {p1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 42
    .line 43
    .line 44
    :try_start_6
    invoke-virtual {v3}, Ldh/c;->h()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 45
    .line 46
    .line 47
    :catch_2
    :goto_0
    :try_start_7
    invoke-virtual {v1}, Ldh/c;->h()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 48
    .line 49
    .line 50
    :catch_3
    invoke-static {v3}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    move-object p2, v0

    .line 59
    :goto_1
    move-object v4, p2

    .line 60
    goto/16 :goto_b

    .line 61
    .line 62
    :catch_4
    move-object p2, v0

    .line 63
    :goto_2
    move-object v4, p2

    .line 64
    goto/16 :goto_9

    .line 65
    .line 66
    :cond_1
    :try_start_8
    invoke-virtual {v3, p2}, Ldh/e;->z(Ljava/lang/String;)Lfh/d;

    .line 67
    .line 68
    .line 69
    move-result-object p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 70
    if-nez p2, :cond_2

    .line 71
    .line 72
    :try_start_9
    const-string p0, "\u6253\u5f00outputStream\u5931\u8d25"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 73
    .line 74
    invoke-static {p2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 78
    .line 79
    .line 80
    :try_start_a
    invoke-virtual {v3}, Ldh/c;->h()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_1
    move-exception p0

    .line 85
    move-object v4, v0

    .line 86
    goto/16 :goto_b

    .line 87
    .line 88
    :catch_5
    move-object v4, v0

    .line 89
    goto/16 :goto_9

    .line 90
    .line 91
    :cond_2
    :try_start_b
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 92
    .line 93
    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 94
    .line 95
    .line 96
    :try_start_c
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 97
    .line 98
    invoke-direct {v4, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 99
    .line 100
    .line 101
    const/high16 v0, 0x80000

    .line 102
    .line 103
    :try_start_d
    new-array v0, v0, [B

    .line 104
    .line 105
    :cond_3
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    const/4 v6, -0x1

    .line 110
    if-eq v5, v6, :cond_4

    .line 111
    .line 112
    const/4 v6, 0x0

    .line 113
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 117
    .line 118
    .line 119
    iget-object v6, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_success:Ljava/util/concurrent/atomic/AtomicLong;

    .line 120
    .line 121
    int-to-long v7, v5

    .line 122
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 123
    .line 124
    .line 125
    iget-boolean v5, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 126
    .line 127
    if-eqz v5, :cond_3

    .line 128
    .line 129
    const-string p0, "\u4e3b\u52a8\u505c\u6b62\u4efb\u52a1"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :catchall_2
    move-exception p0

    .line 133
    :goto_3
    move-object v0, v2

    .line 134
    goto/16 :goto_b

    .line 135
    .line 136
    :catch_6
    :goto_4
    move-object v0, v2

    .line 137
    goto/16 :goto_9

    .line 138
    .line 139
    :cond_4
    const-string p0, ""

    .line 140
    .line 141
    :goto_5
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v4}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 145
    .line 146
    .line 147
    invoke-static {p2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 151
    .line 152
    .line 153
    :try_start_e
    invoke-virtual {v3}, Ldh/c;->h()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 154
    .line 155
    .line 156
    :catch_7
    :goto_6
    :try_start_f
    invoke-virtual {v1}, Ldh/c;->h()I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 157
    .line 158
    .line 159
    :catch_8
    invoke-static {v3}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v1}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 163
    .line 164
    .line 165
    goto :goto_a

    .line 166
    :catchall_3
    move-exception p0

    .line 167
    move-object v4, v0

    .line 168
    goto :goto_3

    .line 169
    :catch_9
    move-object v4, v0

    .line 170
    goto :goto_4

    .line 171
    :catchall_4
    move-exception p0

    .line 172
    move-object p1, v0

    .line 173
    move-object p2, p1

    .line 174
    goto :goto_1

    .line 175
    :catch_a
    move-object p1, v0

    .line 176
    move-object p2, p1

    .line 177
    goto :goto_2

    .line 178
    :catchall_5
    move-exception p0

    .line 179
    move-object p1, v0

    .line 180
    move-object p2, p1

    .line 181
    move-object v3, p2

    .line 182
    :goto_7
    move-object v4, v3

    .line 183
    goto :goto_b

    .line 184
    :catch_b
    move-object p1, v0

    .line 185
    move-object p2, p1

    .line 186
    move-object v3, p2

    .line 187
    :goto_8
    move-object v4, v3

    .line 188
    goto :goto_9

    .line 189
    :cond_5
    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    .line 190
    :catch_c
    :try_start_11
    invoke-virtual {v1}, Ldh/c;->h()I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    .line 191
    .line 192
    .line 193
    :catch_d
    invoke-static {v1}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 194
    .line 195
    .line 196
    return-object v2

    .line 197
    :catchall_6
    move-exception p0

    .line 198
    move-object p1, v0

    .line 199
    move-object p2, p1

    .line 200
    move-object v1, p2

    .line 201
    move-object v3, v1

    .line 202
    goto :goto_7

    .line 203
    :catch_e
    move-object p1, v0

    .line 204
    move-object p2, p1

    .line 205
    move-object v1, p2

    .line 206
    move-object v3, v1

    .line 207
    goto :goto_8

    .line 208
    :goto_9
    :try_start_12
    const-string p0, "\u590d\u5236\u5931\u8d25"
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 209
    .line 210
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v4}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 214
    .line 215
    .line 216
    invoke-static {p2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 217
    .line 218
    .line 219
    invoke-static {p1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 220
    .line 221
    .line 222
    :try_start_13
    invoke-virtual {v3}, Ldh/c;->h()I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    .line 223
    .line 224
    .line 225
    goto :goto_6

    .line 226
    :goto_a
    return-object p0

    .line 227
    :catchall_7
    move-exception p0

    .line 228
    :goto_b
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v4}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 232
    .line 233
    .line 234
    invoke-static {p2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 235
    .line 236
    .line 237
    invoke-static {p1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 238
    .line 239
    .line 240
    :try_start_14
    invoke-virtual {v3}, Ldh/c;->h()I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    .line 241
    .line 242
    .line 243
    :catch_f
    :try_start_15
    invoke-virtual {v1}, Ldh/c;->h()I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_10

    .line 244
    .line 245
    .line 246
    :catch_10
    invoke-static {v3}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v1}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 250
    .line 251
    .line 252
    goto :goto_d

    .line 253
    :goto_c
    throw p0

    .line 254
    :goto_d
    goto :goto_c
.end method

.method public static l(Lx9/n5;Ljava/lang/String;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lx9/n5;->A:Ldh/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ldh/e;->s(Ljava/lang/String;)[Ldh/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "RMD"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    array-length v3, v0

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lx9/n5;->A:Ldh/j;

    .line 16
    .line 17
    invoke-virtual {v3, v1, p1}, Ldh/j;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-static {v3}, Lcom/bumptech/glide/c;->L(I)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    return v2

    .line 28
    :cond_0
    array-length v3, v0

    .line 29
    const/4 v4, 0x0

    .line 30
    :goto_0
    if-ge v4, v3, :cond_4

    .line 31
    .line 32
    aget-object v5, v0, v4

    .line 33
    .line 34
    const-string v6, "/"

    .line 35
    .line 36
    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_1

    .line 41
    .line 42
    invoke-static {p1}, Lg/b;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    iget-object v8, v5, Ldh/g;->d:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v8, v6, v7}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-static {p1, v6}, Ld0/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    iget-object v7, v5, Ldh/g;->d:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    :goto_1
    invoke-virtual {v5}, Ldh/g;->a()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_2

    .line 71
    .line 72
    invoke-static {p0, v6}, Lcom/bumptech/glide/d;->l(Lx9/n5;Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_3

    .line 77
    .line 78
    return v2

    .line 79
    :cond_2
    iget-object v5, p0, Lx9/n5;->A:Ldh/j;

    .line 80
    .line 81
    const-string v7, "DELE"

    .line 82
    .line 83
    invoke-virtual {v5, v7, v6}, Ldh/j;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    invoke-static {v5}, Lcom/bumptech/glide/c;->L(I)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_3

    .line 92
    .line 93
    return v2

    .line 94
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    iget-object p0, p0, Lx9/n5;->A:Ldh/j;

    .line 98
    .line 99
    invoke-virtual {p0, v1, p1}, Ldh/j;->l(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    invoke-static {p0}, Lcom/bumptech/glide/c;->L(I)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    return p0
.end method

.method public static m(IILjava/math/RoundingMode;)I
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_7

    .line 5
    .line 6
    div-int v0, p0, p1

    .line 7
    .line 8
    mul-int v1, p1, v0

    .line 9
    .line 10
    sub-int v1, p0, v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    xor-int/2addr p0, p1

    .line 16
    shr-int/lit8 p0, p0, 0x1f

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    or-int/2addr p0, v2

    .line 20
    sget-object v3, Lw7/c;->a:[I

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    aget v3, v3, v4

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    packed-switch v3, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    new-instance p0, Ljava/lang/AssertionError;

    .line 33
    .line 34
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    sub-int/2addr p1, v1

    .line 47
    sub-int/2addr v1, p1

    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 51
    .line 52
    if-eq p2, p1, :cond_4

    .line 53
    .line 54
    sget-object p1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 55
    .line 56
    if-ne p2, p1, :cond_1

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 p1, 0x0

    .line 61
    :goto_0
    and-int/lit8 p2, v0, 0x1

    .line 62
    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v2, 0x0

    .line 67
    :goto_1
    and-int/2addr p1, v2

    .line 68
    if-eqz p1, :cond_6

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    if-lez v1, :cond_6

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :pswitch_1
    if-lez p0, :cond_6

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :pswitch_2
    if-gez p0, :cond_6

    .line 78
    .line 79
    :cond_4
    :goto_2
    :pswitch_3
    add-int/2addr v0, p0

    .line 80
    goto :goto_4

    .line 81
    :pswitch_4
    if-nez v1, :cond_5

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_5
    const/4 v2, 0x0

    .line 85
    :goto_3
    invoke-static {v2}, Lif/a;->l(Z)V

    .line 86
    .line 87
    .line 88
    :cond_6
    :goto_4
    :pswitch_5
    return v0

    .line 89
    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 90
    .line 91
    const-string p1, "/ by zero"

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static n(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/bumptech/glide/d;->N(Lx9/n5;)Ldh/j;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    :try_start_1
    const-string p0, "\u65b0\u5efaFTP\u8fde\u63a5\u5931\u8d25"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    :try_start_2
    invoke-virtual {v1}, Ldh/c;->h()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    invoke-static {v1}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    move-object p1, v0

    .line 21
    move-object v2, p1

    .line 22
    :goto_0
    move-object v4, v2

    .line 23
    goto/16 :goto_8

    .line 24
    .line 25
    :catch_1
    move-object p1, v0

    .line 26
    move-object v2, p1

    .line 27
    :goto_1
    move-object v4, v2

    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :cond_0
    :try_start_3
    invoke-virtual {v1, p1}, Ldh/e;->x(Ljava/lang/String;)Lfh/c;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    :try_start_4
    const-string p0, "\u6253\u5f00inputStream\u5931\u8d25"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 37
    .line 38
    invoke-static {p1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 39
    .line 40
    .line 41
    :try_start_5
    invoke-virtual {v1}, Ldh/c;->h()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 42
    .line 43
    .line 44
    :catch_2
    invoke-static {v1}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    move-object v2, v0

    .line 50
    goto :goto_0

    .line 51
    :catch_3
    move-object v2, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    .line 54
    .line 55
    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 56
    .line 57
    .line 58
    :try_start_7
    new-instance v3, Ljava/io/BufferedInputStream;

    .line 59
    .line 60
    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 61
    .line 62
    .line 63
    :try_start_8
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 64
    .line 65
    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 66
    .line 67
    .line 68
    const/high16 v0, 0x80000

    .line 69
    .line 70
    :try_start_9
    new-array v0, v0, [B

    .line 71
    .line 72
    :cond_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    const/4 v6, -0x1

    .line 77
    if-eq v5, v6, :cond_3

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    invoke-virtual {v4, v0, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 84
    .line 85
    .line 86
    iget-object v6, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->size_success:Ljava/util/concurrent/atomic/AtomicLong;

    .line 87
    .line 88
    int-to-long v7, v5

    .line 89
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 90
    .line 91
    .line 92
    iget-boolean v5, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 93
    .line 94
    if-eqz v5, :cond_2

    .line 95
    .line 96
    const-string p0, "\u4e3b\u52a8\u505c\u6b62\u4efb\u52a1"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :catchall_2
    move-exception p0

    .line 100
    :goto_2
    move-object v0, v3

    .line 101
    goto :goto_8

    .line 102
    :catch_4
    :goto_3
    move-object v0, v3

    .line 103
    goto :goto_6

    .line 104
    :cond_3
    const-string p0, ""

    .line 105
    .line 106
    :goto_4
    invoke-static {v3}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v4}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 116
    .line 117
    .line 118
    :goto_5
    :try_start_a
    invoke-virtual {v1}, Ldh/c;->h()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 119
    .line 120
    .line 121
    :catch_5
    invoke-static {v1}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 122
    .line 123
    .line 124
    goto :goto_7

    .line 125
    :catchall_3
    move-exception p0

    .line 126
    move-object v4, v0

    .line 127
    goto :goto_2

    .line 128
    :catch_6
    move-object v4, v0

    .line 129
    goto :goto_3

    .line 130
    :catchall_4
    move-exception p0

    .line 131
    move-object v4, v0

    .line 132
    goto :goto_8

    .line 133
    :catch_7
    move-object v4, v0

    .line 134
    goto :goto_6

    .line 135
    :catchall_5
    move-exception p0

    .line 136
    move-object p1, v0

    .line 137
    move-object v1, p1

    .line 138
    move-object v2, v1

    .line 139
    goto :goto_0

    .line 140
    :catch_8
    move-object p1, v0

    .line 141
    move-object v1, p1

    .line 142
    move-object v2, v1

    .line 143
    goto :goto_1

    .line 144
    :goto_6
    :try_start_b
    const-string p0, "\u4e0b\u8f7d\u5931\u8d25"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 145
    .line 146
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v4}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 153
    .line 154
    .line 155
    invoke-static {p1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :goto_7
    new-instance p1, Ljava/io/File;

    .line 160
    .line 161
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-eqz p1, :cond_4

    .line 169
    .line 170
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_4
    return-object p0

    .line 178
    :catchall_6
    move-exception p0

    .line 179
    :goto_8
    invoke-static {v0}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 180
    .line 181
    .line 182
    invoke-static {v4}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v2}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 186
    .line 187
    .line 188
    invoke-static {p1}, Lq4/a;->e(Ljava/io/Closeable;)V

    .line 189
    .line 190
    .line 191
    :try_start_c
    invoke-virtual {v1}, Ldh/c;->h()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 192
    .line 193
    .line 194
    :catch_9
    invoke-static {v1}, Lcom/bumptech/glide/d;->h(Ldh/j;)V

    .line 195
    .line 196
    .line 197
    goto :goto_a

    .line 198
    :goto_9
    throw p0

    .line 199
    :goto_a
    goto :goto_9
.end method

.method public static o(Lcom/yunpan/appmanage/service/AccService;Lz7/s;I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    sget-object v6, Lfa/a;->a:Lfa/b;

    .line 11
    .line 12
    invoke-virtual {v6}, Lfa/b;->f()Z

    .line 13
    .line 14
    .line 15
    move-result v7

    .line 16
    if-nez v7, :cond_0

    .line 17
    .line 18
    const-string v0, "adb\u672a\u8fde\u63a5"

    .line 19
    .line 20
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const/16 v7, 0xbb8

    .line 25
    .line 26
    const/4 v8, 0x4

    .line 27
    const-string v9, "action"

    .line 28
    .line 29
    if-ne v2, v7, :cond_2

    .line 30
    .line 31
    const-string v1, "keycode"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, v6, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 52
    .line 53
    invoke-interface {v0, v1, v5}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->keyCode(IZ)Z

    .line 54
    .line 55
    .line 56
    goto/16 :goto_1b

    .line 57
    .line 58
    :cond_1
    if-lez v0, :cond_4a

    .line 59
    .line 60
    if-ge v0, v8, :cond_4a

    .line 61
    .line 62
    :goto_0
    if-lez v0, :cond_4a

    .line 63
    .line 64
    iget-object v2, v6, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 65
    .line 66
    invoke-interface {v2, v1, v4}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->keyCode(IZ)Z

    .line 67
    .line 68
    .line 69
    const-wide/16 v7, 0xc8

    .line 70
    .line 71
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 72
    .line 73
    .line 74
    add-int/2addr v0, v3

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/16 v7, 0xbc3

    .line 77
    .line 78
    if-ne v2, v7, :cond_4

    .line 79
    .line 80
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-boolean v0, v0, Lwa/s;->p:Z

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    iget-object v0, v6, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 89
    .line 90
    const/16 v1, 0x7f

    .line 91
    .line 92
    invoke-interface {v0, v1, v4}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->keyCode(IZ)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    iget-object v0, v6, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 97
    .line 98
    const/16 v1, 0x7e

    .line 99
    .line 100
    invoke-interface {v0, v1, v4}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->keyCode(IZ)Z

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {}, Lwa/s;->c()Lwa/s;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-boolean v1, v1, Lwa/s;->p:Z

    .line 112
    .line 113
    xor-int/2addr v1, v5

    .line 114
    iput-boolean v1, v0, Lwa/s;->p:Z

    .line 115
    .line 116
    goto/16 :goto_1b

    .line 117
    .line 118
    :cond_4
    const/16 v7, 0xbb9

    .line 119
    .line 120
    if-ne v2, v7, :cond_6

    .line 121
    .line 122
    const-string v1, "api"

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v9}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    const-string v2, "x"

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    const-string v7, "y"

    .line 150
    .line 151
    invoke-virtual {v0, v7}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v1, :cond_5

    .line 160
    .line 161
    invoke-virtual {v6}, Lfa/b;->d()Landroid/hardware/input/IInputManager;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v1, v2, v0, v5}, Lwa/c;->g(Landroid/hardware/input/IInputManager;IIZ)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_1b

    .line 169
    .line 170
    :cond_5
    if-lez v1, :cond_4a

    .line 171
    .line 172
    if-ge v1, v8, :cond_4a

    .line 173
    .line 174
    :goto_2
    if-lez v1, :cond_4a

    .line 175
    .line 176
    invoke-virtual {v6}, Lfa/b;->d()Landroid/hardware/input/IInputManager;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-static {v5, v2, v0, v4}, Lwa/c;->g(Landroid/hardware/input/IInputManager;IIZ)V

    .line 181
    .line 182
    .line 183
    const-wide/16 v7, 0xb4

    .line 184
    .line 185
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 186
    .line 187
    .line 188
    add-int/2addr v1, v3

    .line 189
    goto :goto_2

    .line 190
    :cond_6
    const/16 v7, 0xbc2

    .line 191
    .line 192
    if-ne v2, v7, :cond_7

    .line 193
    .line 194
    invoke-virtual {v6}, Lfa/b;->d()Landroid/hardware/input/IInputManager;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    if-eqz v1, :cond_4a

    .line 199
    .line 200
    invoke-static {v1, v0}, Lq4/a;->G(Landroid/hardware/input/IInputManager;Lz7/s;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_1b

    .line 204
    .line 205
    :cond_7
    const/16 v7, 0xbba

    .line 206
    .line 207
    const-string v8, "str1"

    .line 208
    .line 209
    if-ne v2, v7, :cond_8

    .line 210
    .line 211
    invoke-virtual {v6}, Lfa/b;->b()Landroid/app/IActivityManager;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v0, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-interface {v1, v0, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_1b

    .line 227
    .line 228
    :cond_8
    const/16 v7, 0xbbb

    .line 229
    .line 230
    const-string v9, "com.android."

    .line 231
    .line 232
    const-string v10, "."

    .line 233
    .line 234
    if-ne v2, v7, :cond_c

    .line 235
    .line 236
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-eqz v2, :cond_4a

    .line 253
    .line 254
    invoke-static/range {p0 .. p0}, Lqf/c;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-nez v3, :cond_9

    .line 263
    .line 264
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_9

    .line 269
    .line 270
    return-void

    .line 271
    :cond_9
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-nez v2, :cond_b

    .line 276
    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_a

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_a
    invoke-virtual {v6}, Lfa/b;->b()Landroid/app/IActivityManager;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    invoke-interface {v1, v0, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_1b

    .line 296
    .line 297
    :cond_b
    :goto_3
    invoke-virtual {v1, v5}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :cond_c
    const/16 v7, 0xbbc

    .line 302
    .line 303
    if-ne v2, v7, :cond_1c

    .line 304
    .line 305
    invoke-virtual {v6}, Lfa/b;->b()Landroid/app/IActivityManager;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 310
    .line 311
    const/16 v3, 0x1c

    .line 312
    .line 313
    const/16 v6, 0x32

    .line 314
    .line 315
    if-lt v2, v3, :cond_d

    .line 316
    .line 317
    invoke-interface {v0, v6}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    goto :goto_4

    .line 322
    :cond_d
    invoke-interface {v0, v6, v4}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    if-le v3, v5, :cond_4a

    .line 331
    .line 332
    const/16 v3, 0x1d

    .line 333
    .line 334
    if-lt v2, v3, :cond_e

    .line 335
    .line 336
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 341
    .line 342
    invoke-static {v2}, Lwa/f;->a(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    goto :goto_5

    .line 347
    :cond_e
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 352
    .line 353
    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 354
    .line 355
    :goto_5
    new-instance v4, Lqa/e;

    .line 356
    .line 357
    const/16 v6, 0x1b

    .line 358
    .line 359
    invoke-direct {v4, v6}, Lqa/e;-><init>(I)V

    .line 360
    .line 361
    .line 362
    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 363
    .line 364
    .line 365
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 366
    .line 367
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 368
    .line 369
    .line 370
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    :cond_f
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 378
    .line 379
    .line 380
    move-result v6

    .line 381
    const-string v7, "com.android.systemui"

    .line 382
    .line 383
    if-eqz v6, :cond_15

    .line 384
    .line 385
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 390
    .line 391
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 392
    .line 393
    if-lt v8, v3, :cond_10

    .line 394
    .line 395
    invoke-static {v6}, Lwa/f;->a(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 396
    .line 397
    .line 398
    move-result v8

    .line 399
    goto :goto_7

    .line 400
    :cond_10
    iget v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 401
    .line 402
    :goto_7
    if-gt v8, v2, :cond_11

    .line 403
    .line 404
    goto :goto_6

    .line 405
    :cond_11
    invoke-static {v6}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 406
    .line 407
    .line 408
    move-result-object v8

    .line 409
    if-nez v8, :cond_12

    .line 410
    .line 411
    goto :goto_6

    .line 412
    :cond_12
    invoke-static {v6}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v6

    .line 420
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v7

    .line 424
    if-eqz v7, :cond_13

    .line 425
    .line 426
    goto :goto_6

    .line 427
    :cond_13
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 428
    .line 429
    .line 430
    move-result v7

    .line 431
    if-nez v7, :cond_14

    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_14
    invoke-static {v6}, Lif/a;->M(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    .line 436
    .line 437
    move-result-object v6

    .line 438
    if-eqz v6, :cond_f

    .line 439
    .line 440
    invoke-static {v5, v1, v6}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 441
    .line 442
    .line 443
    goto/16 :goto_1b

    .line 444
    .line 445
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    :cond_16
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 450
    .line 451
    .line 452
    move-result v4

    .line 453
    if-eqz v4, :cond_4a

    .line 454
    .line 455
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 460
    .line 461
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 462
    .line 463
    if-lt v6, v3, :cond_17

    .line 464
    .line 465
    invoke-static {v4}, Lwa/f;->a(Landroid/app/ActivityManager$RunningTaskInfo;)I

    .line 466
    .line 467
    .line 468
    move-result v6

    .line 469
    goto :goto_9

    .line 470
    :cond_17
    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 471
    .line 472
    :goto_9
    if-ne v6, v2, :cond_18

    .line 473
    .line 474
    goto :goto_8

    .line 475
    :cond_18
    invoke-static {v4}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 476
    .line 477
    .line 478
    move-result-object v6

    .line 479
    if-nez v6, :cond_19

    .line 480
    .line 481
    goto :goto_8

    .line 482
    :cond_19
    invoke-static {v4}, Lh4/e0;->d(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v6

    .line 494
    if-eqz v6, :cond_1a

    .line 495
    .line 496
    goto :goto_8

    .line 497
    :cond_1a
    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 498
    .line 499
    .line 500
    move-result v6

    .line 501
    if-nez v6, :cond_1b

    .line 502
    .line 503
    goto :goto_8

    .line 504
    :cond_1b
    invoke-static {v4}, Lif/a;->M(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    if-eqz v4, :cond_16

    .line 509
    .line 510
    invoke-static {v5, v1, v4}, Lif/a;->x0(ILandroid/content/Context;Landroid/content/Intent;)V

    .line 511
    .line 512
    .line 513
    goto/16 :goto_1b

    .line 514
    .line 515
    :cond_1c
    const/16 v7, 0xbbd

    .line 516
    .line 517
    const-wide/16 v11, 0xd05

    .line 518
    .line 519
    const-string v13, "mounted"

    .line 520
    .line 521
    if-ne v2, v7, :cond_1f

    .line 522
    .line 523
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    if-nez v0, :cond_1d

    .line 532
    .line 533
    const-string v0, "\u622a\u5c4f\u5931\u8d25\uff1a\u6ca1\u6709\u5185\u90e8\u5b58\u50a8\u5361"

    .line 534
    .line 535
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    return-void

    .line 539
    :cond_1d
    new-instance v0, Ljava/io/File;

    .line 540
    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .line 545
    .line 546
    sget-object v2, Lfa/d;->a:Lfa/e;

    .line 547
    .line 548
    invoke-virtual {v2}, Lfa/e;->d()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v2

    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    const-string v2, "/Download"

    .line 556
    .line 557
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 568
    .line 569
    .line 570
    goto :goto_a

    .line 571
    :catch_0
    nop

    .line 572
    :goto_a
    iget-object v1, v6, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 573
    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    .line 575
    .line 576
    const-string v3, "screencap -p \'"

    .line 577
    .line 578
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    const-string v0, "/\u622a\u5c4f"

    .line 589
    .line 590
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 594
    .line 595
    .line 596
    move-result-wide v3

    .line 597
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    const-string v0, ".png\'"

    .line 601
    .line 602
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    invoke-interface {v1, v0, v11, v12}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 610
    .line 611
    .line 612
    move-result-object v0

    .line 613
    iget v1, v0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 614
    .line 615
    if-nez v1, :cond_1e

    .line 616
    .line 617
    const-string v0, "\u622a\u5c4f\u5df2\u4fdd\u5b58\u5230 Download \u76ee\u5f55"

    .line 618
    .line 619
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_1b

    .line 623
    .line 624
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    const-string v2, "\u622a\u5c4f\u5931\u8d25\uff1a"

    .line 627
    .line 628
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v0}, Lcom/yunpan/appmanage/shizuku/CmdResult;->getAllStr()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    goto/16 :goto_1b

    .line 646
    .line 647
    :cond_1f
    const/16 v7, 0xbbe

    .line 648
    .line 649
    if-ne v2, v7, :cond_22

    .line 650
    .line 651
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    if-nez v0, :cond_20

    .line 660
    .line 661
    const-string v0, "\u83b7\u53d6\u5931\u8d25\uff1a\u6ca1\u6709\u5185\u90e8\u5b58\u50a8\u5361"

    .line 662
    .line 663
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    return-void

    .line 667
    :cond_20
    iget-object v0, v6, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 668
    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    .line 670
    .line 671
    const-string v2, "uiautomator dump "

    .line 672
    .line 673
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    sget-object v2, Lfa/d;->a:Lfa/e;

    .line 677
    .line 678
    invoke-virtual {v2}, Lfa/e;->d()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v2

    .line 682
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    const-string v2, "/Download/\u8282\u70b9"

    .line 686
    .line 687
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 691
    .line 692
    .line 693
    move-result-wide v2

    .line 694
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    const-string v2, ".txt"

    .line 698
    .line 699
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    const-wide/16 v2, 0x1388

    .line 707
    .line 708
    invoke-interface {v0, v1, v2, v3}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    iget v0, v0, Lcom/yunpan/appmanage/shizuku/CmdResult;->code:I

    .line 713
    .line 714
    if-nez v0, :cond_21

    .line 715
    .line 716
    const-string v0, "\u8282\u70b9\u4fe1\u606f\u5df2\u4fdd\u5b58\u5230 Download \u76ee\u5f55"

    .line 717
    .line 718
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    goto/16 :goto_1b

    .line 722
    .line 723
    :cond_21
    const-string v0, "\u83b7\u53d6\u8282\u70b9\u5931\u8d25"

    .line 724
    .line 725
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    goto/16 :goto_1b

    .line 729
    .line 730
    :cond_22
    const/16 v7, 0xbc0

    .line 731
    .line 732
    if-ne v2, v7, :cond_23

    .line 733
    .line 734
    iget-object v1, v6, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 735
    .line 736
    new-instance v2, Ljava/lang/StringBuilder;

    .line 737
    .line 738
    const-string v3, "am startservice -n \""

    .line 739
    .line 740
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 741
    .line 742
    .line 743
    invoke-virtual {v0, v8}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    const-string v0, "\""

    .line 755
    .line 756
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-interface {v1, v0, v11, v12}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 764
    .line 765
    .line 766
    goto/16 :goto_1b

    .line 767
    .line 768
    :cond_23
    const/16 v0, 0xbc1

    .line 769
    .line 770
    if-ne v2, v0, :cond_4a

    .line 771
    .line 772
    iget-boolean v0, v1, Lcom/yunpan/appmanage/service/AccService;->P0:Z

    .line 773
    .line 774
    if-eqz v0, :cond_24

    .line 775
    .line 776
    return-void

    .line 777
    :cond_24
    iput-boolean v5, v1, Lcom/yunpan/appmanage/service/AccService;->P0:Z

    .line 778
    .line 779
    const-string v0, "\u5185\u5b58\u6e05\u7406\u4e2d"

    .line 780
    .line 781
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    sget-object v0, Lfa/d;->a:Lfa/e;

    .line 785
    .line 786
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 787
    .line 788
    .line 789
    invoke-static/range {p0 .. p0}, Lfa/e;->a(Lcom/yunpan/appmanage/service/AccService;)Ljava/util/HashSet;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    invoke-static/range {p0 .. p0}, Lfa/e;->b(Lcom/yunpan/appmanage/service/AccService;)Ljava/util/HashSet;

    .line 794
    .line 795
    .line 796
    move-result-object v7

    .line 797
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    const-string v8, "android.permission.DEVICE_POWER"

    .line 802
    .line 803
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v11

    .line 807
    invoke-virtual {v0, v8, v11}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .line 809
    .line 810
    move-result v0

    .line 811
    const-string v8, "\'"

    .line 812
    .line 813
    const-string v11, "am force-stop \'"

    .line 814
    .line 815
    const-string v12, "android.hardware."

    .line 816
    .line 817
    const-string v13, "am kill-all"

    .line 818
    .line 819
    if-nez v0, :cond_2a

    .line 820
    .line 821
    invoke-static/range {p0 .. p0}, Lfa/e;->c(Lcom/yunpan/appmanage/service/AccService;)Ljava/util/HashSet;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 830
    .line 831
    .line 832
    move-result v3

    .line 833
    const/4 v6, 0x0

    .line 834
    if-eqz v3, :cond_29

    .line 835
    .line 836
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v3

    .line 840
    check-cast v3, Ljava/lang/String;

    .line 841
    .line 842
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 843
    .line 844
    .line 845
    move-result v7

    .line 846
    if-eqz v7, :cond_25

    .line 847
    .line 848
    goto :goto_b

    .line 849
    :cond_25
    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 850
    .line 851
    .line 852
    move-result v7

    .line 853
    if-eqz v7, :cond_26

    .line 854
    .line 855
    goto :goto_b

    .line 856
    :cond_26
    sget-object v7, Lwa/t;->a:Lwa/u;

    .line 857
    .line 858
    iget-object v7, v7, Lwa/u;->w:Ljava/util/HashSet;

    .line 859
    .line 860
    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    move-result v7

    .line 864
    if-eqz v7, :cond_27

    .line 865
    .line 866
    goto :goto_b

    .line 867
    :cond_27
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 868
    .line 869
    .line 870
    move-result v7

    .line 871
    if-eqz v7, :cond_28

    .line 872
    .line 873
    goto :goto_b

    .line 874
    :cond_28
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 875
    .line 876
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 877
    .line 878
    .line 879
    new-instance v7, Ljava/lang/StringBuilder;

    .line 880
    .line 881
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v3

    .line 894
    new-array v7, v5, [Ljava/lang/String;

    .line 895
    .line 896
    aput-object v3, v7, v4

    .line 897
    .line 898
    invoke-static {v7}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 899
    .line 900
    .line 901
    move-result-object v3

    .line 902
    invoke-virtual {v3, v6}, Ls1/g;->e0(Lua/i6;)V

    .line 903
    .line 904
    .line 905
    goto :goto_b

    .line 906
    :cond_29
    new-array v0, v5, [Ljava/lang/String;

    .line 907
    .line 908
    aput-object v13, v0, v4

    .line 909
    .line 910
    invoke-static {v0}, Lu9/d;->r([Ljava/lang/String;)Lv9/e;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    invoke-virtual {v0, v6}, Ls1/g;->e0(Lua/i6;)V

    .line 915
    .line 916
    .line 917
    goto/16 :goto_1a

    .line 918
    .line 919
    :cond_2a
    invoke-virtual {v6}, Lfa/b;->f()Z

    .line 920
    .line 921
    .line 922
    move-result v14

    .line 923
    new-instance v15, Ljava/util/HashSet;

    .line 924
    .line 925
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 926
    .line 927
    .line 928
    const-string v0, "ps -A"

    .line 929
    .line 930
    const-wide/16 v4, 0x2710

    .line 931
    .line 932
    if-eqz v14, :cond_2b

    .line 933
    .line 934
    iget-object v3, v6, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 935
    .line 936
    invoke-interface {v3, v0, v4, v5}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 937
    .line 938
    .line 939
    move-result-object v0

    .line 940
    goto :goto_c

    .line 941
    :cond_2b
    sget-object v3, Lfa/n0;->a:Lfa/o0;

    .line 942
    .line 943
    iget-object v3, v3, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 944
    .line 945
    if-eqz v3, :cond_49

    .line 946
    .line 947
    invoke-interface {v3, v0, v4, v5}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    :goto_c
    iget-object v3, v0, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 952
    .line 953
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 954
    .line 955
    .line 956
    move-result v3

    .line 957
    const/16 v4, 0x14

    .line 958
    .line 959
    if-ge v3, v4, :cond_2d

    .line 960
    .line 961
    const-string v0, "ps"

    .line 962
    .line 963
    if-eqz v14, :cond_2c

    .line 964
    .line 965
    iget-object v3, v6, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 966
    .line 967
    const-wide/16 v4, 0x2710

    .line 968
    .line 969
    invoke-interface {v3, v0, v4, v5}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    goto :goto_d

    .line 974
    :cond_2c
    const-wide/16 v4, 0x2710

    .line 975
    .line 976
    sget-object v3, Lfa/n0;->a:Lfa/o0;

    .line 977
    .line 978
    iget-object v3, v3, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 979
    .line 980
    invoke-interface {v3, v0, v4, v5}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    :cond_2d
    :goto_d
    iget-object v3, v0, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 985
    .line 986
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 987
    .line 988
    .line 989
    move-result v3

    .line 990
    const-string v4, "@"

    .line 991
    .line 992
    const-string v5, " "

    .line 993
    .line 994
    const-string v1, ":"

    .line 995
    .line 996
    move-object/from16 p1, v8

    .line 997
    .line 998
    const/16 v8, 0x14

    .line 999
    .line 1000
    if-le v3, v8, :cond_35

    .line 1001
    .line 1002
    iget-object v0, v0, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 1003
    .line 1004
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1009
    .line 1010
    .line 1011
    move-result v3

    .line 1012
    if-eqz v3, :cond_34

    .line 1013
    .line 1014
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v3

    .line 1018
    check-cast v3, Ljava/lang/String;

    .line 1019
    .line 1020
    const-string v8, "]"

    .line 1021
    .line 1022
    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1023
    .line 1024
    .line 1025
    move-result v8

    .line 1026
    if-eqz v8, :cond_2e

    .line 1027
    .line 1028
    goto :goto_e

    .line 1029
    :cond_2e
    const-string v8, "u"

    .line 1030
    .line 1031
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1032
    .line 1033
    .line 1034
    move-result v8

    .line 1035
    if-nez v8, :cond_2f

    .line 1036
    .line 1037
    const-string v8, "system"

    .line 1038
    .line 1039
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v8

    .line 1043
    if-nez v8, :cond_2f

    .line 1044
    .line 1045
    goto :goto_e

    .line 1046
    :cond_2f
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1047
    .line 1048
    .line 1049
    move-result v8

    .line 1050
    move-object/from16 p2, v0

    .line 1051
    .line 1052
    const/4 v0, -0x1

    .line 1053
    if-ne v8, v0, :cond_30

    .line 1054
    .line 1055
    move-object/from16 v0, p2

    .line 1056
    .line 1057
    goto :goto_e

    .line 1058
    :cond_30
    const/16 v16, 0x1

    .line 1059
    .line 1060
    add-int/lit8 v8, v8, 0x1

    .line 1061
    .line 1062
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v3

    .line 1066
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v3

    .line 1070
    invoke-virtual {v3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1071
    .line 1072
    .line 1073
    move-result v8

    .line 1074
    move-object/from16 v17, v11

    .line 1075
    .line 1076
    const/4 v11, 0x0

    .line 1077
    if-eq v8, v0, :cond_31

    .line 1078
    .line 1079
    invoke-virtual {v3, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v3

    .line 1083
    :cond_31
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 1084
    .line 1085
    .line 1086
    move-result v8

    .line 1087
    if-eq v8, v0, :cond_32

    .line 1088
    .line 1089
    invoke-virtual {v3, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v3

    .line 1093
    :cond_32
    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1094
    .line 1095
    .line 1096
    move-result v0

    .line 1097
    if-nez v0, :cond_33

    .line 1098
    .line 1099
    :goto_f
    move-object/from16 v0, p2

    .line 1100
    .line 1101
    move-object/from16 v11, v17

    .line 1102
    .line 1103
    goto :goto_e

    .line 1104
    :cond_33
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1109
    .line 1110
    .line 1111
    goto :goto_f

    .line 1112
    :cond_34
    move-object/from16 v17, v11

    .line 1113
    .line 1114
    move-object/from16 p2, v7

    .line 1115
    .line 1116
    goto/16 :goto_15

    .line 1117
    .line 1118
    :cond_35
    move-object/from16 v17, v11

    .line 1119
    .line 1120
    const-string v0, "dumpsys -t 30000 meminfo"

    .line 1121
    .line 1122
    move-object/from16 p2, v7

    .line 1123
    .line 1124
    const-wide/16 v7, 0x7530

    .line 1125
    .line 1126
    if-eqz v14, :cond_36

    .line 1127
    .line 1128
    iget-object v3, v6, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 1129
    .line 1130
    invoke-interface {v3, v0, v7, v8}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v0

    .line 1134
    goto :goto_10

    .line 1135
    :cond_36
    sget-object v3, Lfa/n0;->a:Lfa/o0;

    .line 1136
    .line 1137
    iget-object v3, v3, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 1138
    .line 1139
    invoke-interface {v3, v0, v7, v8}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v0

    .line 1143
    :goto_10
    iget-object v3, v0, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 1144
    .line 1145
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1146
    .line 1147
    .line 1148
    move-result v3

    .line 1149
    const/16 v11, 0x14

    .line 1150
    .line 1151
    if-ge v3, v11, :cond_38

    .line 1152
    .line 1153
    const-string v0, "dumpsys meminfo"

    .line 1154
    .line 1155
    if-eqz v14, :cond_37

    .line 1156
    .line 1157
    iget-object v3, v6, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 1158
    .line 1159
    invoke-interface {v3, v0, v7, v8}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v0

    .line 1163
    goto :goto_11

    .line 1164
    :cond_37
    sget-object v3, Lfa/n0;->a:Lfa/o0;

    .line 1165
    .line 1166
    iget-object v3, v3, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 1167
    .line 1168
    invoke-interface {v3, v0, v7, v8}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v0

    .line 1172
    :cond_38
    :goto_11
    :try_start_2
    iget-object v0, v0, Lcom/yunpan/appmanage/shizuku/CmdResult;->lists:Ljava/util/ArrayList;

    .line 1173
    .line 1174
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v0

    .line 1178
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1179
    .line 1180
    .line 1181
    move-result v3

    .line 1182
    if-eqz v3, :cond_40

    .line 1183
    .line 1184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v3

    .line 1188
    check-cast v3, Ljava/lang/String;

    .line 1189
    .line 1190
    const-string v7, ")"

    .line 1191
    .line 1192
    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 1193
    .line 1194
    .line 1195
    move-result v7

    .line 1196
    if-nez v7, :cond_39

    .line 1197
    .line 1198
    goto :goto_12

    .line 1199
    :cond_39
    const-string v7, "pid"

    .line 1200
    .line 1201
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1202
    .line 1203
    .line 1204
    move-result v7

    .line 1205
    if-nez v7, :cond_3a

    .line 1206
    .line 1207
    goto :goto_12

    .line 1208
    :cond_3a
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1209
    .line 1210
    .line 1211
    move-result v7

    .line 1212
    const/4 v8, -0x1

    .line 1213
    if-ne v7, v8, :cond_3b

    .line 1214
    .line 1215
    goto :goto_12

    .line 1216
    :cond_3b
    const/4 v11, 0x1

    .line 1217
    add-int/2addr v7, v11

    .line 1218
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v3

    .line 1222
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v3

    .line 1226
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1227
    .line 1228
    .line 1229
    move-result v7

    .line 1230
    if-ne v7, v8, :cond_3c

    .line 1231
    .line 1232
    goto :goto_12

    .line 1233
    :cond_3c
    const/4 v11, 0x0

    .line 1234
    invoke-virtual {v3, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v3

    .line 1238
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1239
    .line 1240
    .line 1241
    move-result v7

    .line 1242
    if-eq v7, v8, :cond_3d

    .line 1243
    .line 1244
    invoke-virtual {v3, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v3

    .line 1248
    goto :goto_13

    .line 1249
    :catch_1
    move-exception v0

    .line 1250
    goto :goto_14

    .line 1251
    :cond_3d
    :goto_13
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1252
    .line 1253
    .line 1254
    move-result v7

    .line 1255
    if-eq v7, v8, :cond_3e

    .line 1256
    .line 1257
    invoke-virtual {v3, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v3

    .line 1261
    :cond_3e
    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1262
    .line 1263
    .line 1264
    move-result v7

    .line 1265
    if-nez v7, :cond_3f

    .line 1266
    .line 1267
    goto :goto_12

    .line 1268
    :cond_3f
    invoke-virtual {v15, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1269
    .line 1270
    .line 1271
    goto :goto_12

    .line 1272
    :goto_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1273
    .line 1274
    .line 1275
    :cond_40
    :goto_15
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v0

    .line 1279
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1280
    .line 1281
    .line 1282
    move-result v1

    .line 1283
    if-eqz v1, :cond_48

    .line 1284
    .line 1285
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v1

    .line 1289
    check-cast v1, Ljava/lang/String;

    .line 1290
    .line 1291
    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1292
    .line 1293
    .line 1294
    move-result v3

    .line 1295
    if-eqz v3, :cond_41

    .line 1296
    .line 1297
    goto :goto_16

    .line 1298
    :cond_41
    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1299
    .line 1300
    .line 1301
    move-result v3

    .line 1302
    if-eqz v3, :cond_42

    .line 1303
    .line 1304
    goto :goto_16

    .line 1305
    :cond_42
    sget-object v3, Lwa/t;->a:Lwa/u;

    .line 1306
    .line 1307
    iget-object v3, v3, Lwa/u;->w:Ljava/util/HashSet;

    .line 1308
    .line 1309
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1310
    .line 1311
    .line 1312
    move-result v3

    .line 1313
    if-eqz v3, :cond_43

    .line 1314
    .line 1315
    goto :goto_16

    .line 1316
    :cond_43
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1317
    .line 1318
    .line 1319
    move-result v3

    .line 1320
    if-eqz v3, :cond_44

    .line 1321
    .line 1322
    goto :goto_16

    .line 1323
    :cond_44
    move-object/from16 v3, p2

    .line 1324
    .line 1325
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 1326
    .line 1327
    .line 1328
    move-result v4

    .line 1329
    if-eqz v4, :cond_45

    .line 1330
    .line 1331
    move-object/from16 p2, v3

    .line 1332
    .line 1333
    goto :goto_16

    .line 1334
    :cond_45
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 1335
    .line 1336
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1337
    .line 1338
    .line 1339
    const-wide/16 v4, 0x7d0

    .line 1340
    .line 1341
    if-eqz v14, :cond_47

    .line 1342
    .line 1343
    :try_start_3
    iget-object v7, v6, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 1344
    .line 1345
    const/4 v8, 0x0

    .line 1346
    invoke-interface {v7, v1, v8}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->forceStop(Ljava/lang/String;I)V

    .line 1347
    .line 1348
    .line 1349
    iget-object v1, v6, Lfa/b;->b:Lcom/yunpan/appmanage/shizuku/IGjAdbFace;

    .line 1350
    .line 1351
    invoke-interface {v1, v13, v4, v5}, Lcom/yunpan/appmanage/shizuku/IGjAdbFace;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1352
    .line 1353
    .line 1354
    :cond_46
    :goto_17
    move-object/from16 v1, p1

    .line 1355
    .line 1356
    move-object/from16 v11, v17

    .line 1357
    .line 1358
    goto :goto_19

    .line 1359
    :catch_2
    nop

    .line 1360
    goto :goto_17

    .line 1361
    :cond_47
    :try_start_4
    sget-object v7, Lfa/n0;->a:Lfa/o0;

    .line 1362
    .line 1363
    iget-object v8, v7, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 1364
    .line 1365
    if-eqz v8, :cond_46

    .line 1366
    .line 1367
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1368
    .line 1369
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 1370
    .line 1371
    .line 1372
    move-object/from16 v11, v17

    .line 1373
    .line 1374
    :try_start_5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1378
    .line 1379
    .line 1380
    move-object/from16 v1, p1

    .line 1381
    .line 1382
    :try_start_6
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    .line 1384
    .line 1385
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v10

    .line 1389
    invoke-interface {v8, v10, v4, v5}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;

    .line 1390
    .line 1391
    .line 1392
    iget-object v7, v7, Lfa/o0;->e:Lcom/yunpan/appmanage/shizuku/IUserService;

    .line 1393
    .line 1394
    invoke-interface {v7, v13, v4, v5}, Lcom/yunpan/appmanage/shizuku/IUserService;->exec(Ljava/lang/String;J)Lcom/yunpan/appmanage/shizuku/CmdResult;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1395
    .line 1396
    .line 1397
    goto :goto_19

    .line 1398
    :catch_3
    :goto_18
    nop

    .line 1399
    goto :goto_19

    .line 1400
    :catch_4
    move-object/from16 v1, p1

    .line 1401
    .line 1402
    goto :goto_18

    .line 1403
    :catch_5
    move-object/from16 v1, p1

    .line 1404
    .line 1405
    move-object/from16 v11, v17

    .line 1406
    .line 1407
    goto :goto_18

    .line 1408
    :goto_19
    move-object/from16 p1, v1

    .line 1409
    .line 1410
    move-object/from16 p2, v3

    .line 1411
    .line 1412
    move-object/from16 v17, v11

    .line 1413
    .line 1414
    goto/16 :goto_16

    .line 1415
    .line 1416
    :cond_48
    :goto_1a
    const-string v0, "\u6e05\u7406\u5b8c\u6210"

    .line 1417
    .line 1418
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 1419
    .line 1420
    .line 1421
    const/4 v2, 0x0

    .line 1422
    move-object/from16 v1, p0

    .line 1423
    .line 1424
    iput-boolean v2, v1, Lcom/yunpan/appmanage/service/AccService;->P0:Z

    .line 1425
    .line 1426
    goto :goto_1b

    .line 1427
    :cond_49
    new-instance v0, Ljava/lang/Exception;

    .line 1428
    .line 1429
    const-string v1, "\u65e0\u8fde\u63a5"

    .line 1430
    .line 1431
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1432
    .line 1433
    .line 1434
    throw v0

    .line 1435
    :catch_6
    :cond_4a
    :goto_1b
    return-void
.end method

.method public static p(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)Z
    .locals 10

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-boolean v2, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v2, v3, :cond_1

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v4, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v4, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v5, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    :goto_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    new-instance v4, Ljava/io/File;

    .line 73
    .line 74
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 78
    .line 79
    .line 80
    new-instance v4, Ljava/io/File;

    .line 81
    .line 82
    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_2

    .line 90
    .line 91
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4, v2}, Lcom/yunpan/appmanage/db/MyDb;->addFile(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    iget-object v2, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 99
    .line 100
    iget-object v2, v2, Lx9/n5;->A:Ldh/j;

    .line 101
    .line 102
    iget-object v4, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v2, v4}, Ldh/e;->p(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-nez v2, :cond_3

    .line 109
    .line 110
    return v1

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 112
    .line 113
    iget-object v2, v2, Lx9/n5;->A:Ldh/j;

    .line 114
    .line 115
    const/4 v4, 0x0

    .line 116
    invoke-virtual {v2, v4}, Ldh/e;->s(Ljava/lang/String;)[Ldh/g;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-nez v2, :cond_4

    .line 121
    .line 122
    return v1

    .line 123
    :cond_4
    array-length v4, v2

    .line 124
    const/4 v5, 0x0

    .line 125
    :goto_1
    if-ge v5, v4, :cond_7

    .line 126
    .line 127
    aget-object v6, v2, v5

    .line 128
    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    iget-object v8, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v8, v6, Ldh/g;->d:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    const-string v8, "//"

    .line 152
    .line 153
    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    new-instance v8, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 158
    .line 159
    iget-object v9, v6, Ldh/g;->d:Ljava/lang/String;

    .line 160
    .line 161
    invoke-direct {v8, v9, v7}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6}, Ldh/g;->a()Z

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-eqz v7, :cond_5

    .line 169
    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    iget-object v7, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    iput-object v6, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {p0, v8}, Lcom/bumptech/glide/d;->p(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)Z

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-nez v6, :cond_6

    .line 194
    .line 195
    return v1

    .line 196
    :cond_5
    iget-wide v6, v6, Ldh/g;->b:J

    .line 197
    .line 198
    iput-wide v6, v8, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 199
    .line 200
    iget-object v6, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 201
    .line 202
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .line 204
    .line 205
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_7
    return v3

    .line 209
    :catch_0
    return v1
.end method

.method public static q(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->isStop:Z

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    const/4 v2, 0x1

    .line 14
    const-string v3, "//"

    .line 15
    .line 16
    const-string v4, "/"

    .line 17
    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v5, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v5, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v5, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_to:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v5, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v6, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->rootDirPath_form:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    :goto_0
    iget-object v5, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 77
    .line 78
    iget-object v5, v5, Lx9/n5;->A:Ldh/j;

    .line 79
    .line 80
    invoke-virtual {v5, v1}, Ldh/e;->u(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 84
    .line 85
    iget-object v1, v1, Lx9/n5;->A:Ldh/j;

    .line 86
    .line 87
    iget-object v5, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, v5}, Ldh/e;->p(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_2

    .line 94
    .line 95
    return v0

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->userInfo:Lx9/n5;

    .line 97
    .line 98
    iget-object v1, v1, Lx9/n5;->A:Ldh/j;

    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    invoke-virtual {v1, v5}, Ldh/e;->s(Ljava/lang/String;)[Ldh/g;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-nez v1, :cond_3

    .line 106
    .line 107
    return v0

    .line 108
    :cond_3
    array-length v5, v1

    .line 109
    const/4 v6, 0x0

    .line 110
    :goto_1
    if-ge v6, v5, :cond_6

    .line 111
    .line 112
    aget-object v7, v1, v6

    .line 113
    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    iget-object v9, p1, Lcom/yunpan/appmanage/bean/WpPathBean;->path:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v9, v7, Ldh/g;->d:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    new-instance v9, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 141
    .line 142
    iget-object v10, v7, Ldh/g;->d:Ljava/lang/String;

    .line 143
    .line 144
    invoke-direct {v9, v10, v8}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7}, Ldh/g;->a()Z

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    if-eqz v8, :cond_4

    .line 152
    .line 153
    invoke-static {p0, v9}, Lcom/bumptech/glide/d;->q(Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;Lcom/yunpan/appmanage/bean/WpPathBean;)Z

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-nez v7, :cond_5

    .line 158
    .line 159
    return v0

    .line 160
    :cond_4
    iget-wide v7, v7, Ldh/g;->b:J

    .line 161
    .line 162
    iput-wide v7, v9, Lcom/yunpan/appmanage/bean/WpPathBean;->size_long:J

    .line 163
    .line 164
    iget-object v7, p0, Lcom/yunpan/appmanage/bean/FtpCopyProgressBean;->filePaths:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    .line 168
    .line 169
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_6
    return v2

    .line 173
    :catch_0
    return v0
.end method

.method public static r(Ljava/io/File;)Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canRead()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    nop

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    const-string v4, ""

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object v4

    .line 16
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-virtual {v7}, Lcom/yunpan/appmanage/db/MyDb;->getApkFileDao()Lcom/yunpan/appmanage/db/ApkFileDao;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    invoke-interface {v7, v8}, Lcom/yunpan/appmanage/db/ApkFileDao;->getApkFileBean(Ljava/lang/String;)Lcom/yunpan/appmanage/db/ApkFileBean;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    const-string v8, "_"

    .line 45
    .line 46
    const-string v9, "apk_ico_cache/"

    .line 47
    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    iget-wide v10, v7, Lcom/yunpan/appmanage/db/ApkFileBean;->lastModified:J

    .line 51
    .line 52
    cmp-long v12, v10, v5

    .line 53
    .line 54
    if-nez v12, :cond_1

    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    sget-object v1, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 62
    .line 63
    sget-object v1, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 64
    .line 65
    iget-object v1, v1, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-object v1, v7, Lcom/yunpan/appmanage/db/ApkFileBean;->packageName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-wide v1, v7, Lcom/yunpan/appmanage/db/ApkFileBean;->lastModified:J

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0

    .line 91
    :cond_1
    invoke-static {v0}, Lif/a;->Y(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_2

    .line 96
    .line 97
    return-object v4

    .line 98
    :cond_2
    const-string v5, ".gj"

    .line 99
    .line 100
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    const-string v5, "addSuppressed"

    .line 105
    .line 106
    const-class v6, Ljava/lang/Throwable;

    .line 107
    .line 108
    if-eqz v0, :cond_e

    .line 109
    .line 110
    const v0, 0x19000

    .line 111
    .line 112
    .line 113
    new-array v7, v0, [B

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v10

    .line 124
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    new-instance v10, Ljava/io/File;

    .line 135
    .line 136
    new-instance v11, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    sget-object v12, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 142
    .line 143
    sget-object v12, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 144
    .line 145
    iget-object v13, v12, Lcom/yunpan/appmanage/util/k;->Q:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    .line 151
    .line 152
    const-string v14, ".json"

    .line 153
    .line 154
    invoke-static {v11, v13, v0, v14}, Landroid/support/v4/media/session/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v11, Ljava/io/File;

    .line 162
    .line 163
    new-instance v14, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    iget-object v12, v12, Lcom/yunpan/appmanage/util/k;->Q:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v12, ".png"

    .line 180
    .line 181
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :try_start_1
    new-instance v13, Ljava/util/zip/ZipFile;

    .line 192
    .line 193
    invoke-direct {v13, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11

    .line 194
    .line 195
    .line 196
    :try_start_2
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 197
    .line 198
    .line 199
    move-result-object v14

    .line 200
    :goto_1
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v15

    .line 216
    invoke-virtual {v15, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 217
    .line 218
    .line 219
    move-result v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 220
    if-eqz v16, :cond_5

    .line 221
    .line 222
    :try_start_3
    invoke-virtual {v13, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 223
    .line 224
    .line 225
    move-result-object v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 226
    :try_start_4
    new-instance v2, Ljava/io/FileOutputStream;

    .line 227
    .line 228
    invoke-direct {v2, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 229
    .line 230
    .line 231
    :goto_2
    :try_start_5
    invoke-virtual {v15, v7}, Ljava/io/InputStream;->read([B)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-lez v0, :cond_3

    .line 236
    .line 237
    invoke-virtual {v2, v7, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    move-object/from16 v17, v0

    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 246
    .line 247
    .line 248
    :try_start_7
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 249
    .line 250
    .line 251
    move-object/from16 v19, v12

    .line 252
    .line 253
    move-object/from16 v17, v14

    .line 254
    .line 255
    goto/16 :goto_f

    .line 256
    .line 257
    :catchall_1
    move-exception v0

    .line 258
    move-object v1, v0

    .line 259
    goto/16 :goto_1a

    .line 260
    .line 261
    :catch_1
    move-exception v0

    .line 262
    move-object/from16 v19, v12

    .line 263
    .line 264
    move-object/from16 v17, v14

    .line 265
    .line 266
    goto :goto_8

    .line 267
    :catchall_2
    move-exception v0

    .line 268
    move-object v2, v0

    .line 269
    move-object/from16 v19, v12

    .line 270
    .line 271
    goto :goto_6

    .line 272
    :goto_3
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 273
    .line 274
    .line 275
    :catch_2
    move-object/from16 v19, v12

    .line 276
    .line 277
    :catch_3
    move-object/from16 v2, v17

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :catchall_3
    move-exception v0

    .line 281
    move-object v2, v0

    .line 282
    const/4 v3, 0x1

    .line 283
    :try_start_9
    new-array v0, v3, [Ljava/lang/Class;

    .line 284
    .line 285
    const/16 v18, 0x0

    .line 286
    .line 287
    aput-object v6, v0, v18

    .line 288
    .line 289
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 290
    .line 291
    .line 292
    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 293
    move-object/from16 v19, v12

    .line 294
    .line 295
    :try_start_a
    new-array v12, v3, [Ljava/lang/Object;

    .line 296
    .line 297
    aput-object v2, v12, v18
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 298
    .line 299
    move-object/from16 v2, v17

    .line 300
    .line 301
    :try_start_b
    invoke-virtual {v0, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 302
    .line 303
    .line 304
    goto :goto_5

    .line 305
    :goto_4
    move-object v2, v0

    .line 306
    goto :goto_6

    .line 307
    :catch_4
    :goto_5
    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 308
    :catchall_4
    move-exception v0

    .line 309
    goto :goto_4

    .line 310
    :catchall_5
    move-exception v0

    .line 311
    move-object/from16 v19, v12

    .line 312
    .line 313
    goto :goto_4

    .line 314
    :goto_6
    if-eqz v15, :cond_4

    .line 315
    .line 316
    :try_start_d
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 317
    .line 318
    .line 319
    :catch_5
    :cond_4
    move-object/from16 v17, v14

    .line 320
    .line 321
    goto :goto_7

    .line 322
    :catchall_6
    move-exception v0

    .line 323
    move-object v3, v0

    .line 324
    const/4 v12, 0x1

    .line 325
    :try_start_e
    new-array v0, v12, [Ljava/lang/Class;

    .line 326
    .line 327
    const/4 v15, 0x0

    .line 328
    aput-object v6, v0, v15

    .line 329
    .line 330
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 331
    .line 332
    .line 333
    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 334
    move-object/from16 v17, v14

    .line 335
    .line 336
    :try_start_f
    new-array v14, v12, [Ljava/lang/Object;

    .line 337
    .line 338
    aput-object v3, v14, v15

    .line 339
    .line 340
    invoke-virtual {v0, v2, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 341
    .line 342
    .line 343
    :catch_6
    :goto_7
    :try_start_10
    throw v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 344
    :catch_7
    move-exception v0

    .line 345
    :goto_8
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_f

    .line 349
    .line 350
    :cond_5
    move-object/from16 v19, v12

    .line 351
    .line 352
    move-object/from16 v17, v14

    .line 353
    .line 354
    const-string v2, "fest.json"

    .line 355
    .line 356
    invoke-virtual {v15, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 357
    .line 358
    .line 359
    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 360
    if-eqz v2, :cond_8

    .line 361
    .line 362
    :try_start_12
    invoke-virtual {v13, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 363
    .line 364
    .line 365
    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 366
    :try_start_13
    new-instance v3, Ljava/io/FileOutputStream;

    .line 367
    .line 368
    invoke-direct {v3, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 369
    .line 370
    .line 371
    :goto_9
    :try_start_14
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-lez v0, :cond_6

    .line 376
    .line 377
    const/4 v12, 0x0

    .line 378
    invoke-virtual {v3, v7, v12, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 379
    .line 380
    .line 381
    goto :goto_9

    .line 382
    :catchall_7
    move-exception v0

    .line 383
    move-object v12, v0

    .line 384
    goto :goto_a

    .line 385
    :cond_6
    :try_start_15
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 386
    .line 387
    .line 388
    :try_start_16
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 389
    .line 390
    .line 391
    goto :goto_f

    .line 392
    :catch_8
    move-exception v0

    .line 393
    goto :goto_e

    .line 394
    :catchall_8
    move-exception v0

    .line 395
    move-object v1, v0

    .line 396
    goto :goto_c

    .line 397
    :goto_a
    :try_start_17
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 398
    .line 399
    .line 400
    goto :goto_b

    .line 401
    :catchall_9
    move-exception v0

    .line 402
    move-object v3, v0

    .line 403
    const/4 v14, 0x1

    .line 404
    :try_start_18
    new-array v0, v14, [Ljava/lang/Class;

    .line 405
    .line 406
    const/4 v15, 0x0

    .line 407
    aput-object v6, v0, v15

    .line 408
    .line 409
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    new-array v1, v14, [Ljava/lang/Object;

    .line 414
    .line 415
    aput-object v3, v1, v15

    .line 416
    .line 417
    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 418
    .line 419
    .line 420
    :catch_9
    :goto_b
    :try_start_19
    throw v12
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 421
    :goto_c
    if-eqz v2, :cond_7

    .line 422
    .line 423
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 424
    .line 425
    .line 426
    goto :goto_d

    .line 427
    :catchall_a
    move-exception v0

    .line 428
    move-object v2, v0

    .line 429
    const/4 v3, 0x1

    .line 430
    :try_start_1b
    new-array v0, v3, [Ljava/lang/Class;

    .line 431
    .line 432
    const/4 v12, 0x0

    .line 433
    aput-object v6, v0, v12

    .line 434
    .line 435
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    new-array v14, v3, [Ljava/lang/Object;

    .line 440
    .line 441
    aput-object v2, v14, v12

    .line 442
    .line 443
    invoke-virtual {v0, v1, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 444
    .line 445
    .line 446
    :catch_a
    :cond_7
    :goto_d
    :try_start_1c
    throw v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 447
    :goto_e
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 448
    .line 449
    .line 450
    :cond_8
    :goto_f
    move-object/from16 v1, p0

    .line 451
    .line 452
    move-object/from16 v14, v17

    .line 453
    .line 454
    move-object/from16 v12, v19

    .line 455
    .line 456
    const/4 v3, 0x0

    .line 457
    goto/16 :goto_1

    .line 458
    .line 459
    :cond_9
    :try_start_1e
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_11

    .line 460
    .line 461
    .line 462
    invoke-static {v10}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-nez v0, :cond_a

    .line 467
    .line 468
    return-object v4

    .line 469
    :cond_a
    new-instance v1, Lcom/yunpan/appmanage/db/ApkFileBean;

    .line 470
    .line 471
    invoke-direct {v1}, Lcom/yunpan/appmanage/db/ApkFileBean;-><init>()V

    .line 472
    .line 473
    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .line 478
    .line 479
    :try_start_1f
    new-instance v0, Ljava/io/BufferedReader;

    .line 480
    .line 481
    new-instance v3, Ljava/io/FileReader;

    .line 482
    .line 483
    invoke-direct {v3, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 484
    .line 485
    .line 486
    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 487
    .line 488
    .line 489
    :goto_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    if-eqz v3, :cond_b

    .line 494
    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    const-string v3, "\n"

    .line 499
    .line 500
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    goto :goto_10

    .line 504
    :catch_b
    move-exception v0

    .line 505
    goto :goto_11

    .line 506
    :cond_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_b

    .line 507
    .line 508
    .line 509
    goto :goto_12

    .line 510
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 511
    .line 512
    .line 513
    :goto_12
    :try_start_20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    const-string v2, "name"

    .line 526
    .line 527
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v2

    .line 535
    iput-object v2, v1, Lcom/yunpan/appmanage/db/ApkFileBean;->apkName:Ljava/lang/String;

    .line 536
    .line 537
    const-string v2, "packageName"

    .line 538
    .line 539
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v2

    .line 547
    iput-object v2, v1, Lcom/yunpan/appmanage/db/ApkFileBean;->packageName:Ljava/lang/String;

    .line 548
    .line 549
    const-string v2, "versionCode"

    .line 550
    .line 551
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    invoke-virtual {v2}, Lz7/p;->h()J

    .line 556
    .line 557
    .line 558
    move-result-wide v2

    .line 559
    iput-wide v2, v1, Lcom/yunpan/appmanage/db/ApkFileBean;->versionCode:J

    .line 560
    .line 561
    const-string v2, "versionName"

    .line 562
    .line 563
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 564
    .line 565
    .line 566
    move-result-object v2

    .line 567
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object v2

    .line 571
    iput-object v2, v1, Lcom/yunpan/appmanage/db/ApkFileBean;->versionName:Ljava/lang/String;

    .line 572
    .line 573
    const-string v2, "minSdkVersion"

    .line 574
    .line 575
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    invoke-virtual {v2}, Lz7/p;->e()I

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    iput v2, v1, Lcom/yunpan/appmanage/db/ApkFileBean;->minSdk:I

    .line 584
    .line 585
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    iput-object v2, v1, Lcom/yunpan/appmanage/db/ApkFileBean;->path:Ljava/lang/String;

    .line 590
    .line 591
    const-string v2, "abi"

    .line 592
    .line 593
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    iput-object v0, v1, Lcom/yunpan/appmanage/db/ApkFileBean;->abi:Ljava/lang/String;

    .line 602
    .line 603
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    .line 604
    .line 605
    .line 606
    move-result-wide v2

    .line 607
    iput-wide v2, v1, Lcom/yunpan/appmanage/db/ApkFileBean;->lastModified:J

    .line 608
    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 610
    .line 611
    .line 612
    move-result-wide v2

    .line 613
    iput-wide v2, v1, Lcom/yunpan/appmanage/db/ApkFileBean;->insertTime:J

    .line 614
    .line 615
    const/4 v2, 0x0

    .line 616
    iput-boolean v2, v1, Lcom/yunpan/appmanage/db/ApkFileBean;->isSystemUid:Z

    .line 617
    .line 618
    iput-object v4, v1, Lcom/yunpan/appmanage/db/ApkFileBean;->sign:Ljava/lang/String;

    .line 619
    .line 620
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getApkFileDao()Lcom/yunpan/appmanage/db/ApkFileDao;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/db/ApkFileDao;->insert(Lcom/yunpan/appmanage/db/ApkFileBean;)J
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_c

    .line 629
    .line 630
    .line 631
    goto :goto_13

    .line 632
    :catch_c
    move-exception v0

    .line 633
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 634
    .line 635
    .line 636
    :goto_13
    invoke-static {v11}, Lcom/yunpan/appmanage/util/a0;->f(Ljava/io/File;)Z

    .line 637
    .line 638
    .line 639
    move-result v0

    .line 640
    if-nez v0, :cond_c

    .line 641
    .line 642
    return-object v4

    .line 643
    :cond_c
    :try_start_21
    new-instance v2, Ljava/io/FileInputStream;

    .line 644
    .line 645
    invoke-direct {v2, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_d

    .line 646
    .line 647
    .line 648
    :try_start_22
    new-instance v3, Ljava/io/FileOutputStream;

    .line 649
    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    .line 651
    .line 652
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .line 654
    .line 655
    sget-object v10, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 656
    .line 657
    iget-object v10, v10, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 658
    .line 659
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    iget-object v10, v1, Lcom/yunpan/appmanage/db/ApkFileBean;->packageName:Ljava/lang/String;

    .line 666
    .line 667
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    iget-wide v10, v1, Lcom/yunpan/appmanage/db/ApkFileBean;->lastModified:J

    .line 674
    .line 675
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    .line 683
    .line 684
    .line 685
    :goto_14
    :try_start_23
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    .line 686
    .line 687
    .line 688
    move-result v0

    .line 689
    if-lez v0, :cond_d

    .line 690
    .line 691
    const/4 v10, 0x0

    .line 692
    invoke-virtual {v3, v7, v10, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    .line 693
    .line 694
    .line 695
    goto :goto_14

    .line 696
    :catchall_b
    move-exception v0

    .line 697
    move-object v1, v0

    .line 698
    goto :goto_15

    .line 699
    :cond_d
    :try_start_24
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_c

    .line 700
    .line 701
    .line 702
    :try_start_25
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_d

    .line 703
    .line 704
    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    .line 706
    .line 707
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    .line 709
    .line 710
    sget-object v2, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 711
    .line 712
    iget-object v2, v2, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 713
    .line 714
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    iget-object v2, v1, Lcom/yunpan/appmanage/db/ApkFileBean;->packageName:Ljava/lang/String;

    .line 721
    .line 722
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    iget-wide v1, v1, Lcom/yunpan/appmanage/db/ApkFileBean;->lastModified:J

    .line 729
    .line 730
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 731
    .line 732
    .line 733
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v0

    .line 737
    return-object v0

    .line 738
    :catch_d
    move-exception v0

    .line 739
    goto :goto_19

    .line 740
    :catchall_c
    move-exception v0

    .line 741
    move-object v1, v0

    .line 742
    goto :goto_17

    .line 743
    :goto_15
    :try_start_26
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    .line 744
    .line 745
    .line 746
    goto :goto_16

    .line 747
    :catchall_d
    move-exception v0

    .line 748
    move-object v3, v0

    .line 749
    const/4 v7, 0x1

    .line 750
    :try_start_27
    new-array v0, v7, [Ljava/lang/Class;

    .line 751
    .line 752
    const/4 v8, 0x0

    .line 753
    aput-object v6, v0, v8

    .line 754
    .line 755
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    new-array v9, v7, [Ljava/lang/Object;

    .line 760
    .line 761
    aput-object v3, v9, v8

    .line 762
    .line 763
    invoke-virtual {v0, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_e
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    .line 764
    .line 765
    .line 766
    :catch_e
    :goto_16
    :try_start_28
    throw v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    .line 767
    :goto_17
    :try_start_29
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    .line 768
    .line 769
    .line 770
    goto :goto_18

    .line 771
    :catchall_e
    move-exception v0

    .line 772
    move-object v2, v0

    .line 773
    const/4 v3, 0x1

    .line 774
    :try_start_2a
    new-array v0, v3, [Ljava/lang/Class;

    .line 775
    .line 776
    const/4 v7, 0x0

    .line 777
    aput-object v6, v0, v7

    .line 778
    .line 779
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 780
    .line 781
    .line 782
    move-result-object v0

    .line 783
    new-array v3, v3, [Ljava/lang/Object;

    .line 784
    .line 785
    aput-object v2, v3, v7

    .line 786
    .line 787
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_f

    .line 788
    .line 789
    .line 790
    :catch_f
    :goto_18
    :try_start_2b
    throw v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_d

    .line 791
    :goto_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 792
    .line 793
    .line 794
    return-object v4

    .line 795
    :goto_1a
    :try_start_2c
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_f

    .line 796
    .line 797
    .line 798
    goto :goto_1b

    .line 799
    :catchall_f
    move-exception v0

    .line 800
    move-object v2, v0

    .line 801
    const/4 v3, 0x1

    .line 802
    :try_start_2d
    new-array v0, v3, [Ljava/lang/Class;

    .line 803
    .line 804
    const/4 v7, 0x0

    .line 805
    aput-object v6, v0, v7

    .line 806
    .line 807
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    new-array v3, v3, [Ljava/lang/Object;

    .line 812
    .line 813
    aput-object v2, v3, v7

    .line 814
    .line 815
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_10

    .line 816
    .line 817
    .line 818
    :catch_10
    :goto_1b
    :try_start_2e
    throw v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_11

    .line 819
    :catch_11
    return-object v4

    .line 820
    :cond_e
    :try_start_2f
    new-instance v1, Lef/b;

    .line 821
    .line 822
    move-object/from16 v2, p0

    .line 823
    .line 824
    invoke-direct {v1, v2}, Lef/b;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_14

    .line 825
    .line 826
    .line 827
    :try_start_30
    invoke-virtual {v1}, Lef/b;->M()V

    .line 828
    .line 829
    .line 830
    iget-object v0, v1, Lef/b;->e:Lff/c;

    .line 831
    .line 832
    new-instance v3, Lcom/yunpan/appmanage/db/ApkFileBean;

    .line 833
    .line 834
    invoke-direct {v3}, Lcom/yunpan/appmanage/db/ApkFileBean;-><init>()V

    .line 835
    .line 836
    .line 837
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v7

    .line 841
    iput-object v7, v3, Lcom/yunpan/appmanage/db/ApkFileBean;->path:Ljava/lang/String;

    .line 842
    .line 843
    iget-object v7, v0, Lff/c;->b:Ljava/lang/String;

    .line 844
    .line 845
    iput-object v7, v3, Lcom/yunpan/appmanage/db/ApkFileBean;->apkName:Ljava/lang/String;

    .line 846
    .line 847
    iget-object v7, v0, Lff/c;->a:Ljava/lang/String;

    .line 848
    .line 849
    iput-object v7, v3, Lcom/yunpan/appmanage/db/ApkFileBean;->packageName:Ljava/lang/String;

    .line 850
    .line 851
    iget-object v7, v0, Lff/c;->d:Ljava/lang/String;

    .line 852
    .line 853
    iput-object v7, v3, Lcom/yunpan/appmanage/db/ApkFileBean;->versionName:Ljava/lang/String;

    .line 854
    .line 855
    iget-object v7, v0, Lff/c;->e:Ljava/lang/Long;

    .line 856
    .line 857
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 858
    .line 859
    .line 860
    move-result-wide v10

    .line 861
    iput-wide v10, v3, Lcom/yunpan/appmanage/db/ApkFileBean;->versionCode:J

    .line 862
    .line 863
    iget-object v7, v0, Lff/c;->g:Ljava/lang/String;

    .line 864
    .line 865
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 866
    .line 867
    .line 868
    move-result v7

    .line 869
    iput v7, v3, Lcom/yunpan/appmanage/db/ApkFileBean;->minSdk:I

    .line 870
    .line 871
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    .line 872
    .line 873
    .line 874
    move-result-wide v10

    .line 875
    iput-wide v10, v3, Lcom/yunpan/appmanage/db/ApkFileBean;->lastModified:J

    .line 876
    .line 877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 878
    .line 879
    .line 880
    move-result-wide v10

    .line 881
    iput-wide v10, v3, Lcom/yunpan/appmanage/db/ApkFileBean;->insertTime:J
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_10

    .line 882
    .line 883
    :try_start_31
    iget-object v0, v0, Lff/c;->f:Ljava/lang/String;

    .line 884
    .line 885
    const-string v2, "android.uid.system"

    .line 886
    .line 887
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 888
    .line 889
    .line 890
    move-result v0

    .line 891
    iput-boolean v0, v3, Lcom/yunpan/appmanage/db/ApkFileBean;->isSystemUid:Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_12
    .catchall {:try_start_31 .. :try_end_31} :catchall_10

    .line 892
    .line 893
    goto :goto_1c

    .line 894
    :catchall_10
    move-exception v0

    .line 895
    move-object v2, v0

    .line 896
    goto :goto_1d

    .line 897
    :catch_12
    const/4 v2, 0x0

    .line 898
    :try_start_32
    iput-boolean v2, v3, Lcom/yunpan/appmanage/db/ApkFileBean;->isSystemUid:Z

    .line 899
    .line 900
    :goto_1c
    iput-object v4, v3, Lcom/yunpan/appmanage/db/ApkFileBean;->sign:Ljava/lang/String;

    .line 901
    .line 902
    invoke-static {}, Lcom/yunpan/appmanage/db/MyDb;->get()Lcom/yunpan/appmanage/db/MyDb;

    .line 903
    .line 904
    .line 905
    move-result-object v0

    .line 906
    invoke-virtual {v0}, Lcom/yunpan/appmanage/db/MyDb;->getApkFileDao()Lcom/yunpan/appmanage/db/ApkFileDao;

    .line 907
    .line 908
    .line 909
    move-result-object v0

    .line 910
    invoke-interface {v0, v3}, Lcom/yunpan/appmanage/db/ApkFileDao;->insert(Lcom/yunpan/appmanage/db/ApkFileBean;)J

    .line 911
    .line 912
    .line 913
    invoke-virtual {v1}, Lef/b;->A()Ljava/util/List;

    .line 914
    .line 915
    .line 916
    move-result-object v0

    .line 917
    if-eqz v0, :cond_10

    .line 918
    .line 919
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 920
    .line 921
    .line 922
    move-result v2

    .line 923
    if-nez v2, :cond_10

    .line 924
    .line 925
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 930
    .line 931
    .line 932
    move-result v2

    .line 933
    if-eqz v2, :cond_10

    .line 934
    .line 935
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    move-result-object v2

    .line 939
    check-cast v2, Lff/g;

    .line 940
    .line 941
    if-eqz v2, :cond_f

    .line 942
    .line 943
    invoke-interface {v2}, Lff/g;->e()[B

    .line 944
    .line 945
    .line 946
    move-result-object v2

    .line 947
    if-eqz v2, :cond_f

    .line 948
    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    .line 950
    .line 951
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 952
    .line 953
    .line 954
    sget-object v7, Lcom/yunpan/appmanage/util/k;->u0:Ljava/text/DecimalFormat;

    .line 955
    .line 956
    sget-object v7, Lcom/yunpan/appmanage/util/j;->a:Lcom/yunpan/appmanage/util/k;

    .line 957
    .line 958
    iget-object v7, v7, Lcom/yunpan/appmanage/util/k;->z:Ljava/lang/String;

    .line 959
    .line 960
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    .line 962
    .line 963
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    .line 965
    .line 966
    iget-object v7, v3, Lcom/yunpan/appmanage/db/ApkFileBean;->packageName:Ljava/lang/String;

    .line 967
    .line 968
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    .line 970
    .line 971
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    .line 973
    .line 974
    iget-wide v7, v3, Lcom/yunpan/appmanage/db/ApkFileBean;->lastModified:J

    .line 975
    .line 976
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    invoke-static {v0, v2}, Lcom/yunpan/appmanage/util/a0;->q(Ljava/lang/String;[B)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_10

    .line 984
    .line 985
    .line 986
    :try_start_33
    invoke-virtual {v1}, Lef/b;->close()V

    .line 987
    .line 988
    .line 989
    return-object v0

    .line 990
    :cond_10
    invoke-virtual {v1}, Lef/b;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_14

    .line 991
    .line 992
    .line 993
    return-object v4

    .line 994
    :goto_1d
    :try_start_34
    invoke-virtual {v1}, Lef/b;->close()V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_11

    .line 995
    .line 996
    .line 997
    goto :goto_1e

    .line 998
    :catchall_11
    move-exception v0

    .line 999
    move-object v1, v0

    .line 1000
    const/4 v3, 0x1

    .line 1001
    :try_start_35
    new-array v0, v3, [Ljava/lang/Class;

    .line 1002
    .line 1003
    const/4 v7, 0x0

    .line 1004
    aput-object v6, v0, v7

    .line 1005
    .line 1006
    invoke-virtual {v6, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    new-array v3, v3, [Ljava/lang/Object;

    .line 1011
    .line 1012
    aput-object v1, v3, v7

    .line 1013
    .line 1014
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_13

    .line 1015
    .line 1016
    .line 1017
    :catch_13
    :goto_1e
    :try_start_36
    throw v2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_14

    .line 1018
    :catch_14
    return-object v4
.end method

.method public static s(ILandroid/view/View;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v1, p1, p0}, Landroid/support/v4/media/session/b;->F(Landroid/content/Context;Ljava/lang/String;I)Landroid/util/TypedValue;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget p1, p0, Landroid/util/TypedValue;->resourceId:I

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-static {v0, p1}, Ln0/g;->c(Landroid/content/Context;I)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget p0, p0, Landroid/util/TypedValue;->data:I

    .line 31
    .line 32
    :goto_0
    return p0
.end method

.method public static t(Landroid/content/Context;II)I
    .locals 1

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/media/session/b;->D(Landroid/content/Context;I)Landroid/util/TypedValue;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0, v0}, Ln0/g;->c(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget p0, p1, Landroid/util/TypedValue;->data:I

    .line 17
    .line 18
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    :goto_1
    if-eqz p0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    :cond_2
    return p2
.end method

.method public static u([I[II)I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    array-length v3, v0

    .line 8
    const/4 v4, 0x0

    .line 9
    const/16 v5, 0x9

    .line 10
    .line 11
    if-lt v3, v5, :cond_7

    .line 12
    .line 13
    array-length v3, v1

    .line 14
    const/16 v6, 0x26

    .line 15
    .line 16
    if-ge v3, v6, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    const/4 v3, 0x5

    .line 21
    const/4 v6, 0x4

    .line 22
    const/4 v7, 0x2

    .line 23
    const/4 v8, 0x3

    .line 24
    const/4 v9, 0x1

    .line 25
    packed-switch v2, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    const/4 v10, 0x6

    .line 29
    if-eq v2, v5, :cond_6

    .line 30
    .line 31
    const/16 v11, 0xa

    .line 32
    .line 33
    const/4 v12, 0x7

    .line 34
    if-eq v2, v11, :cond_5

    .line 35
    .line 36
    packed-switch v2, :pswitch_data_1

    .line 37
    .line 38
    .line 39
    const/16 v13, 0xc

    .line 40
    .line 41
    const/16 v14, 0xe

    .line 42
    .line 43
    const/16 v15, 0xd

    .line 44
    .line 45
    const/16 v16, 0xb

    .line 46
    .line 47
    const/16 v17, 0x10

    .line 48
    .line 49
    const/16 v18, 0x8

    .line 50
    .line 51
    const/16 v19, 0xf

    .line 52
    .line 53
    packed-switch v2, :pswitch_data_2

    .line 54
    .line 55
    .line 56
    const/16 v14, 0x17

    .line 57
    .line 58
    const/16 v20, 0x15

    .line 59
    .line 60
    const/16 v11, 0x12

    .line 61
    .line 62
    packed-switch v2, :pswitch_data_3

    .line 63
    .line 64
    .line 65
    const/16 v20, 0x1e

    .line 66
    .line 67
    const/16 v21, 0x18

    .line 68
    .line 69
    const/16 v22, 0x1f

    .line 70
    .line 71
    const/16 v23, 0x19

    .line 72
    .line 73
    const/16 v24, 0x1a

    .line 74
    .line 75
    packed-switch v2, :pswitch_data_4

    .line 76
    .line 77
    .line 78
    const/16 v14, 0x20

    .line 79
    .line 80
    const/16 v20, 0x22

    .line 81
    .line 82
    const/16 v21, 0x21

    .line 83
    .line 84
    packed-switch v2, :pswitch_data_5

    .line 85
    .line 86
    .line 87
    const/16 v14, 0x1b

    .line 88
    .line 89
    const/16 v21, 0x1c

    .line 90
    .line 91
    const/16 v24, 0x13

    .line 92
    .line 93
    packed-switch v2, :pswitch_data_6

    .line 94
    .line 95
    .line 96
    packed-switch v2, :pswitch_data_7

    .line 97
    .line 98
    .line 99
    packed-switch v2, :pswitch_data_8

    .line 100
    .line 101
    .line 102
    const/16 v14, 0x1d

    .line 103
    .line 104
    packed-switch v2, :pswitch_data_9

    .line 105
    .line 106
    .line 107
    const/16 v19, 0x14

    .line 108
    .line 109
    const/16 v21, 0x16

    .line 110
    .line 111
    packed-switch v2, :pswitch_data_a

    .line 112
    .line 113
    .line 114
    packed-switch v2, :pswitch_data_b

    .line 115
    .line 116
    .line 117
    packed-switch v2, :pswitch_data_c

    .line 118
    .line 119
    .line 120
    packed-switch v2, :pswitch_data_d

    .line 121
    .line 122
    .line 123
    const/16 v3, 0x23

    .line 124
    .line 125
    packed-switch v2, :pswitch_data_e

    .line 126
    .line 127
    .line 128
    packed-switch v2, :pswitch_data_f

    .line 129
    .line 130
    .line 131
    if-eq v2, v11, :cond_4

    .line 132
    .line 133
    const/16 v0, 0x271f

    .line 134
    .line 135
    if-eq v2, v0, :cond_3

    .line 136
    .line 137
    const/16 v0, 0x274e

    .line 138
    .line 139
    if-eq v2, v0, :cond_2

    .line 140
    .line 141
    const/16 v0, 0x279f

    .line 142
    .line 143
    if-eq v2, v0, :cond_1

    .line 144
    .line 145
    return v4

    .line 146
    :cond_1
    aget v0, v1, v13

    .line 147
    .line 148
    shr-int/2addr v0, v12

    .line 149
    and-int/2addr v0, v9

    .line 150
    return v0

    .line 151
    :cond_2
    aget v0, v1, v14

    .line 152
    .line 153
    shr-int/2addr v0, v6

    .line 154
    and-int/2addr v0, v12

    .line 155
    return v0

    .line 156
    :cond_3
    aget v0, v1, v15

    .line 157
    .line 158
    and-int/2addr v0, v9

    .line 159
    return v0

    .line 160
    :cond_4
    aget v0, v1, v8

    .line 161
    .line 162
    shr-int/2addr v0, v6

    .line 163
    and-int/2addr v0, v9

    .line 164
    return v0

    .line 165
    :pswitch_0
    aget v0, v1, v15

    .line 166
    .line 167
    shr-int/2addr v0, v8

    .line 168
    and-int/2addr v0, v9

    .line 169
    return v0

    .line 170
    :pswitch_1
    aget v0, v1, v15

    .line 171
    .line 172
    shr-int/2addr v0, v7

    .line 173
    and-int/2addr v0, v9

    .line 174
    return v0

    .line 175
    :pswitch_2
    aget v0, v1, v15

    .line 176
    .line 177
    shr-int/2addr v0, v9

    .line 178
    and-int/2addr v0, v9

    .line 179
    return v0

    .line 180
    :pswitch_3
    const/16 v0, 0x24

    .line 181
    .line 182
    aget v0, v1, v0

    .line 183
    .line 184
    shr-int/2addr v0, v7

    .line 185
    and-int/2addr v0, v9

    .line 186
    return v0

    .line 187
    :pswitch_4
    aget v0, v1, v3

    .line 188
    .line 189
    shr-int/2addr v0, v9

    .line 190
    and-int/2addr v0, v9

    .line 191
    return v0

    .line 192
    :pswitch_5
    aget v0, v1, v3

    .line 193
    .line 194
    and-int/2addr v0, v9

    .line 195
    return v0

    .line 196
    :pswitch_6
    aget v0, v1, v19

    .line 197
    .line 198
    shr-int/2addr v0, v7

    .line 199
    and-int/2addr v0, v9

    .line 200
    return v0

    .line 201
    :pswitch_7
    aget v0, v1, v16

    .line 202
    .line 203
    shr-int/2addr v0, v10

    .line 204
    and-int/2addr v0, v8

    .line 205
    return v0

    .line 206
    :pswitch_8
    aget v0, v1, v5

    .line 207
    .line 208
    shr-int/2addr v0, v10

    .line 209
    and-int/2addr v0, v9

    .line 210
    return v0

    .line 211
    :pswitch_9
    aget v0, v0, v18

    .line 212
    .line 213
    shr-int/2addr v0, v9

    .line 214
    and-int/2addr v0, v9

    .line 215
    return v0

    .line 216
    :pswitch_a
    aget v0, v1, v20

    .line 217
    .line 218
    shr-int/2addr v0, v9

    .line 219
    and-int/2addr v0, v9

    .line 220
    return v0

    .line 221
    :pswitch_b
    aget v0, v1, v20

    .line 222
    .line 223
    shr-int/2addr v0, v8

    .line 224
    and-int/2addr v0, v9

    .line 225
    return v0

    .line 226
    :pswitch_c
    aget v0, v1, v20

    .line 227
    .line 228
    shr-int/2addr v0, v7

    .line 229
    and-int/2addr v0, v9

    .line 230
    return v0

    .line 231
    :pswitch_d
    aget v0, v1, v24

    .line 232
    .line 233
    shr-int/2addr v0, v10

    .line 234
    and-int/2addr v0, v9

    .line 235
    return v0

    .line 236
    :pswitch_e
    aget v0, v1, v16

    .line 237
    .line 238
    shr-int/2addr v0, v3

    .line 239
    and-int/2addr v0, v9

    .line 240
    return v0

    .line 241
    :pswitch_f
    aget v0, v1, v16

    .line 242
    .line 243
    shr-int/2addr v0, v6

    .line 244
    and-int/2addr v0, v9

    .line 245
    return v0

    .line 246
    :pswitch_10
    aget v0, v1, v17

    .line 247
    .line 248
    shr-int/2addr v0, v12

    .line 249
    and-int/2addr v0, v9

    .line 250
    return v0

    .line 251
    :pswitch_11
    aget v0, v1, v24

    .line 252
    .line 253
    shr-int/2addr v0, v6

    .line 254
    and-int/2addr v0, v9

    .line 255
    return v0

    .line 256
    :pswitch_12
    aget v0, v1, v24

    .line 257
    .line 258
    shr-int/2addr v0, v8

    .line 259
    and-int/2addr v0, v9

    .line 260
    return v0

    .line 261
    :pswitch_13
    aget v0, v1, v23

    .line 262
    .line 263
    shr-int/2addr v0, v7

    .line 264
    and-int/2addr v0, v9

    .line 265
    return v0

    .line 266
    :pswitch_14
    aget v0, v1, v21

    .line 267
    .line 268
    shr-int/2addr v0, v12

    .line 269
    and-int/2addr v0, v9

    .line 270
    return v0

    .line 271
    :pswitch_15
    aget v0, v1, v21

    .line 272
    .line 273
    shr-int/2addr v0, v10

    .line 274
    and-int/2addr v0, v9

    .line 275
    return v0

    .line 276
    :pswitch_16
    aget v0, v1, v21

    .line 277
    .line 278
    shr-int/2addr v0, v3

    .line 279
    and-int/2addr v0, v9

    .line 280
    return v0

    .line 281
    :pswitch_17
    aget v0, v1, v21

    .line 282
    .line 283
    shr-int/2addr v0, v6

    .line 284
    and-int/2addr v0, v9

    .line 285
    return v0

    .line 286
    :pswitch_18
    aget v0, v1, v21

    .line 287
    .line 288
    shr-int/2addr v0, v8

    .line 289
    and-int/2addr v0, v9

    .line 290
    return v0

    .line 291
    :pswitch_19
    aget v0, v1, v19

    .line 292
    .line 293
    shr-int/2addr v0, v9

    .line 294
    and-int/2addr v0, v9

    .line 295
    return v0

    .line 296
    :pswitch_1a
    aget v0, v1, v24

    .line 297
    .line 298
    shr-int/2addr v0, v12

    .line 299
    and-int/2addr v0, v9

    .line 300
    return v0

    .line 301
    :pswitch_1b
    aget v0, v0, v10

    .line 302
    .line 303
    shr-int/2addr v0, v9

    .line 304
    and-int/2addr v0, v9

    .line 305
    return v0

    .line 306
    :pswitch_1c
    aget v0, v1, v14

    .line 307
    .line 308
    shr-int/2addr v0, v7

    .line 309
    and-int/2addr v0, v9

    .line 310
    return v0

    .line 311
    :pswitch_1d
    aget v0, v1, v21

    .line 312
    .line 313
    shr-int/2addr v0, v7

    .line 314
    and-int/2addr v0, v9

    .line 315
    return v0

    .line 316
    :pswitch_1e
    aget v0, v1, v21

    .line 317
    .line 318
    shr-int/2addr v0, v9

    .line 319
    and-int/2addr v0, v9

    .line 320
    return v0

    .line 321
    :pswitch_1f
    aget v0, v1, v21

    .line 322
    .line 323
    and-int/2addr v0, v9

    .line 324
    return v0

    .line 325
    :pswitch_20
    aget v0, v0, v5

    .line 326
    .line 327
    shr-int/2addr v0, v8

    .line 328
    and-int/2addr v0, v9

    .line 329
    return v0

    .line 330
    :pswitch_21
    aget v0, v0, v5

    .line 331
    .line 332
    shr-int/2addr v0, v7

    .line 333
    and-int/2addr v0, v9

    .line 334
    return v0

    .line 335
    :pswitch_22
    aget v0, v0, v5

    .line 336
    .line 337
    shr-int/2addr v0, v9

    .line 338
    and-int/2addr v0, v9

    .line 339
    return v0

    .line 340
    :pswitch_23
    aget v0, v0, v3

    .line 341
    .line 342
    shr-int/2addr v0, v12

    .line 343
    and-int/2addr v0, v9

    .line 344
    return v0

    .line 345
    :pswitch_24
    aget v0, v0, v5

    .line 346
    .line 347
    and-int/2addr v0, v9

    .line 348
    return v0

    .line 349
    :pswitch_25
    aget v0, v0, v4

    .line 350
    .line 351
    and-int/2addr v0, v8

    .line 352
    return v0

    .line 353
    :pswitch_26
    aget v0, v1, v14

    .line 354
    .line 355
    shr-int/2addr v0, v9

    .line 356
    and-int/2addr v0, v9

    .line 357
    return v0

    .line 358
    :pswitch_27
    aget v0, v1, v14

    .line 359
    .line 360
    and-int/2addr v0, v9

    .line 361
    return v0

    .line 362
    :pswitch_28
    aget v0, v1, v21

    .line 363
    .line 364
    shr-int/2addr v0, v12

    .line 365
    and-int/2addr v0, v9

    .line 366
    return v0

    .line 367
    :pswitch_29
    aget v0, v1, v24

    .line 368
    .line 369
    shr-int/2addr v0, v7

    .line 370
    and-int/2addr v0, v9

    .line 371
    return v0

    .line 372
    :pswitch_2a
    aget v0, v1, v21

    .line 373
    .line 374
    shr-int/2addr v0, v3

    .line 375
    and-int/2addr v0, v9

    .line 376
    return v0

    .line 377
    :pswitch_2b
    aget v0, v1, v16

    .line 378
    .line 379
    shr-int/2addr v0, v8

    .line 380
    and-int/2addr v0, v9

    .line 381
    return v0

    .line 382
    :pswitch_2c
    aget v0, v1, v16

    .line 383
    .line 384
    shr-int/2addr v0, v7

    .line 385
    and-int/2addr v0, v9

    .line 386
    return v0

    .line 387
    :pswitch_2d
    aget v0, v1, v16

    .line 388
    .line 389
    shr-int/2addr v0, v9

    .line 390
    and-int/2addr v0, v9

    .line 391
    return v0

    .line 392
    :pswitch_2e
    aget v0, v1, v4

    .line 393
    .line 394
    shr-int/2addr v0, v7

    .line 395
    and-int/2addr v0, v8

    .line 396
    return v0

    .line 397
    :pswitch_2f
    aget v0, v1, v21

    .line 398
    .line 399
    shr-int/2addr v0, v10

    .line 400
    and-int/2addr v0, v9

    .line 401
    return v0

    .line 402
    :pswitch_30
    aget v0, v1, v5

    .line 403
    .line 404
    shr-int/2addr v0, v3

    .line 405
    and-int/2addr v0, v9

    .line 406
    return v0

    .line 407
    :pswitch_31
    aget v0, v1, v18

    .line 408
    .line 409
    shr-int/2addr v0, v9

    .line 410
    and-int/2addr v0, v9

    .line 411
    return v0

    .line 412
    :pswitch_32
    aget v0, v0, v18

    .line 413
    .line 414
    and-int/2addr v0, v9

    .line 415
    return v0

    .line 416
    :pswitch_33
    aget v0, v1, v5

    .line 417
    .line 418
    shr-int/2addr v0, v6

    .line 419
    and-int/2addr v0, v9

    .line 420
    return v0

    .line 421
    :pswitch_34
    aget v0, v1, v21

    .line 422
    .line 423
    shr-int/2addr v0, v3

    .line 424
    and-int/2addr v0, v9

    .line 425
    return v0

    .line 426
    :pswitch_35
    aget v0, v1, v24

    .line 427
    .line 428
    shr-int/2addr v0, v9

    .line 429
    and-int/2addr v0, v9

    .line 430
    return v0

    .line 431
    :pswitch_36
    aget v0, v1, v5

    .line 432
    .line 433
    shr-int/2addr v0, v8

    .line 434
    and-int/2addr v0, v9

    .line 435
    return v0

    .line 436
    :pswitch_37
    aget v0, v1, v21

    .line 437
    .line 438
    and-int/lit8 v0, v0, 0xf

    .line 439
    .line 440
    return v0

    .line 441
    :pswitch_38
    aget v0, v0, v9

    .line 442
    .line 443
    shr-int/2addr v0, v8

    .line 444
    and-int/2addr v0, v9

    .line 445
    return v0

    .line 446
    :pswitch_39
    aget v0, v1, v24

    .line 447
    .line 448
    and-int/2addr v0, v9

    .line 449
    return v0

    .line 450
    :pswitch_3a
    aget v0, v1, v14

    .line 451
    .line 452
    shr-int/2addr v0, v8

    .line 453
    and-int/lit8 v0, v0, 0x1f

    .line 454
    .line 455
    return v0

    .line 456
    :pswitch_3b
    aget v0, v1, v14

    .line 457
    .line 458
    and-int/2addr v0, v12

    .line 459
    return v0

    .line 460
    :pswitch_3c
    aget v0, v0, v8

    .line 461
    .line 462
    and-int/2addr v0, v9

    .line 463
    return v0

    .line 464
    :pswitch_3d
    aget v0, v0, v12

    .line 465
    .line 466
    shr-int/2addr v0, v10

    .line 467
    and-int/2addr v0, v8

    .line 468
    return v0

    .line 469
    :pswitch_3e
    aget v0, v0, v12

    .line 470
    .line 471
    shr-int/2addr v0, v6

    .line 472
    and-int/2addr v0, v8

    .line 473
    return v0

    .line 474
    :pswitch_3f
    aget v0, v0, v12

    .line 475
    .line 476
    and-int/lit8 v0, v0, 0xf

    .line 477
    .line 478
    return v0

    .line 479
    :pswitch_40
    aget v0, v0, v10

    .line 480
    .line 481
    shr-int/2addr v0, v10

    .line 482
    and-int/2addr v0, v8

    .line 483
    return v0

    .line 484
    :pswitch_41
    aget v0, v0, v10

    .line 485
    .line 486
    shr-int/2addr v0, v6

    .line 487
    and-int/2addr v0, v8

    .line 488
    return v0

    .line 489
    :pswitch_42
    aget v0, v0, v10

    .line 490
    .line 491
    shr-int/2addr v0, v7

    .line 492
    and-int/2addr v0, v8

    .line 493
    return v0

    .line 494
    :pswitch_43
    aget v0, v0, v3

    .line 495
    .line 496
    shr-int/2addr v0, v10

    .line 497
    and-int/2addr v0, v9

    .line 498
    return v0

    .line 499
    :pswitch_44
    aget v0, v0, v3

    .line 500
    .line 501
    shr-int/2addr v0, v8

    .line 502
    and-int/2addr v0, v12

    .line 503
    return v0

    .line 504
    :pswitch_45
    aget v0, v0, v3

    .line 505
    .line 506
    and-int/2addr v0, v12

    .line 507
    return v0

    .line 508
    :pswitch_46
    aget v0, v0, v6

    .line 509
    .line 510
    shr-int/2addr v0, v6

    .line 511
    and-int/lit8 v0, v0, 0xf

    .line 512
    .line 513
    return v0

    .line 514
    :pswitch_47
    aget v0, v0, v6

    .line 515
    .line 516
    shr-int/2addr v0, v9

    .line 517
    and-int/2addr v0, v12

    .line 518
    return v0

    .line 519
    :pswitch_48
    aget v0, v0, v6

    .line 520
    .line 521
    and-int/2addr v0, v9

    .line 522
    return v0

    .line 523
    :pswitch_49
    aget v0, v0, v7

    .line 524
    .line 525
    shr-int/2addr v0, v10

    .line 526
    and-int/2addr v0, v8

    .line 527
    return v0

    .line 528
    :pswitch_4a
    aget v0, v0, v7

    .line 529
    .line 530
    shr-int/2addr v0, v3

    .line 531
    and-int/2addr v0, v9

    .line 532
    return v0

    .line 533
    :pswitch_4b
    aget v0, v0, v7

    .line 534
    .line 535
    shr-int/2addr v0, v6

    .line 536
    and-int/2addr v0, v9

    .line 537
    return v0

    .line 538
    :pswitch_4c
    aget v0, v0, v7

    .line 539
    .line 540
    shr-int/2addr v0, v8

    .line 541
    and-int/2addr v0, v9

    .line 542
    return v0

    .line 543
    :pswitch_4d
    aget v0, v0, v7

    .line 544
    .line 545
    shr-int/2addr v0, v7

    .line 546
    and-int/2addr v0, v9

    .line 547
    return v0

    .line 548
    :pswitch_4e
    aget v0, v0, v7

    .line 549
    .line 550
    and-int/2addr v0, v8

    .line 551
    return v0

    .line 552
    :pswitch_4f
    aget v0, v0, v9

    .line 553
    .line 554
    shr-int/2addr v0, v7

    .line 555
    and-int/2addr v0, v9

    .line 556
    return v0

    .line 557
    :pswitch_50
    aget v0, v0, v9

    .line 558
    .line 559
    shr-int/2addr v0, v9

    .line 560
    and-int/2addr v0, v9

    .line 561
    return v0

    .line 562
    :pswitch_51
    aget v0, v0, v9

    .line 563
    .line 564
    and-int/2addr v0, v9

    .line 565
    return v0

    .line 566
    :pswitch_52
    aget v0, v0, v4

    .line 567
    .line 568
    and-int/lit8 v0, v0, 0xf

    .line 569
    .line 570
    return v0

    .line 571
    :pswitch_53
    aget v0, v1, v8

    .line 572
    .line 573
    shr-int/2addr v0, v10

    .line 574
    and-int/2addr v0, v9

    .line 575
    return v0

    .line 576
    :pswitch_54
    aget v0, v1, v20

    .line 577
    .line 578
    and-int/2addr v0, v9

    .line 579
    return v0

    .line 580
    :pswitch_55
    aget v0, v1, v21

    .line 581
    .line 582
    shr-int/2addr v0, v12

    .line 583
    and-int/2addr v0, v9

    .line 584
    return v0

    .line 585
    :pswitch_56
    aget v0, v1, v21

    .line 586
    .line 587
    shr-int/2addr v0, v10

    .line 588
    and-int/2addr v0, v9

    .line 589
    return v0

    .line 590
    :pswitch_57
    aget v0, v1, v21

    .line 591
    .line 592
    shr-int/2addr v0, v6

    .line 593
    and-int/2addr v0, v8

    .line 594
    return v0

    .line 595
    :pswitch_58
    aget v0, v1, v21

    .line 596
    .line 597
    shr-int/2addr v0, v7

    .line 598
    and-int/2addr v0, v8

    .line 599
    return v0

    .line 600
    :pswitch_59
    aget v0, v1, v21

    .line 601
    .line 602
    and-int/2addr v0, v8

    .line 603
    return v0

    .line 604
    :pswitch_5a
    aget v0, v1, v14

    .line 605
    .line 606
    shr-int/2addr v0, v12

    .line 607
    and-int/2addr v0, v9

    .line 608
    return v0

    .line 609
    :pswitch_5b
    aget v0, v1, v14

    .line 610
    .line 611
    shr-int/2addr v0, v10

    .line 612
    and-int/2addr v0, v9

    .line 613
    return v0

    .line 614
    :pswitch_5c
    aget v0, v1, v14

    .line 615
    .line 616
    shr-int/2addr v0, v6

    .line 617
    and-int/2addr v0, v8

    .line 618
    return v0

    .line 619
    :pswitch_5d
    aget v0, v1, v14

    .line 620
    .line 621
    shr-int/2addr v0, v7

    .line 622
    and-int/2addr v0, v8

    .line 623
    return v0

    .line 624
    :pswitch_5e
    aget v0, v1, v22

    .line 625
    .line 626
    shr-int/2addr v0, v10

    .line 627
    and-int/2addr v0, v8

    .line 628
    return v0

    .line 629
    :pswitch_5f
    aget v0, v1, v22

    .line 630
    .line 631
    shr-int/2addr v0, v3

    .line 632
    and-int/2addr v0, v9

    .line 633
    return v0

    .line 634
    :pswitch_60
    aget v0, v1, v22

    .line 635
    .line 636
    shr-int/2addr v0, v6

    .line 637
    and-int/2addr v0, v9

    .line 638
    return v0

    .line 639
    :pswitch_61
    aget v0, v1, v22

    .line 640
    .line 641
    shr-int/2addr v0, v8

    .line 642
    and-int/2addr v0, v9

    .line 643
    return v0

    .line 644
    :pswitch_62
    aget v0, v1, v22

    .line 645
    .line 646
    shr-int/2addr v0, v9

    .line 647
    and-int/2addr v0, v8

    .line 648
    return v0

    .line 649
    :pswitch_63
    aget v0, v1, v22

    .line 650
    .line 651
    and-int/2addr v0, v9

    .line 652
    return v0

    .line 653
    :pswitch_64
    aget v0, v1, v20

    .line 654
    .line 655
    shr-int/2addr v0, v12

    .line 656
    and-int/2addr v0, v9

    .line 657
    return v0

    .line 658
    :pswitch_65
    aget v0, v1, v20

    .line 659
    .line 660
    shr-int/2addr v0, v3

    .line 661
    and-int/2addr v0, v8

    .line 662
    return v0

    .line 663
    :pswitch_66
    aget v0, v1, v20

    .line 664
    .line 665
    shr-int/2addr v0, v8

    .line 666
    and-int/2addr v0, v8

    .line 667
    return v0

    .line 668
    :pswitch_67
    aget v0, v1, v20

    .line 669
    .line 670
    shr-int/2addr v0, v7

    .line 671
    and-int/2addr v0, v9

    .line 672
    return v0

    .line 673
    :pswitch_68
    aget v0, v1, v20

    .line 674
    .line 675
    shr-int/2addr v0, v9

    .line 676
    and-int/2addr v0, v9

    .line 677
    return v0

    .line 678
    :pswitch_69
    aget v0, v1, v20

    .line 679
    .line 680
    and-int/2addr v0, v9

    .line 681
    return v0

    .line 682
    :pswitch_6a
    aget v0, v1, v24

    .line 683
    .line 684
    shr-int/2addr v0, v12

    .line 685
    and-int/2addr v0, v9

    .line 686
    return v0

    .line 687
    :pswitch_6b
    aget v0, v1, v24

    .line 688
    .line 689
    shr-int/2addr v0, v10

    .line 690
    and-int/2addr v0, v9

    .line 691
    return v0

    .line 692
    :pswitch_6c
    aget v0, v1, v24

    .line 693
    .line 694
    shr-int/2addr v0, v3

    .line 695
    and-int/2addr v0, v9

    .line 696
    return v0

    .line 697
    :pswitch_6d
    aget v0, v1, v24

    .line 698
    .line 699
    shr-int/2addr v0, v6

    .line 700
    and-int/2addr v0, v9

    .line 701
    return v0

    .line 702
    :pswitch_6e
    aget v0, v1, v24

    .line 703
    .line 704
    shr-int/2addr v0, v8

    .line 705
    and-int/2addr v0, v9

    .line 706
    return v0

    .line 707
    :pswitch_6f
    aget v0, v1, v24

    .line 708
    .line 709
    shr-int/2addr v0, v7

    .line 710
    and-int/2addr v0, v9

    .line 711
    return v0

    .line 712
    :pswitch_70
    aget v0, v1, v24

    .line 713
    .line 714
    shr-int/2addr v0, v9

    .line 715
    and-int/2addr v0, v9

    .line 716
    return v0

    .line 717
    :pswitch_71
    aget v0, v1, v24

    .line 718
    .line 719
    and-int/2addr v0, v9

    .line 720
    return v0

    .line 721
    :pswitch_72
    aget v0, v1, v23

    .line 722
    .line 723
    shr-int/2addr v0, v12

    .line 724
    and-int/2addr v0, v9

    .line 725
    return v0

    .line 726
    :pswitch_73
    aget v0, v1, v23

    .line 727
    .line 728
    shr-int/2addr v0, v10

    .line 729
    and-int/2addr v0, v9

    .line 730
    return v0

    .line 731
    :pswitch_74
    aget v0, v1, v23

    .line 732
    .line 733
    shr-int/2addr v0, v3

    .line 734
    and-int/2addr v0, v9

    .line 735
    return v0

    .line 736
    :pswitch_75
    aget v0, v1, v23

    .line 737
    .line 738
    shr-int/2addr v0, v6

    .line 739
    and-int/2addr v0, v9

    .line 740
    return v0

    .line 741
    :pswitch_76
    aget v0, v1, v23

    .line 742
    .line 743
    shr-int/2addr v0, v8

    .line 744
    and-int/2addr v0, v9

    .line 745
    return v0

    .line 746
    :pswitch_77
    aget v0, v1, v5

    .line 747
    .line 748
    shr-int/2addr v0, v12

    .line 749
    and-int/2addr v0, v9

    .line 750
    return v0

    .line 751
    :pswitch_78
    aget v0, v1, v23

    .line 752
    .line 753
    shr-int/2addr v0, v9

    .line 754
    and-int/2addr v0, v9

    .line 755
    return v0

    .line 756
    :pswitch_79
    aget v0, v1, v23

    .line 757
    .line 758
    and-int/2addr v0, v9

    .line 759
    return v0

    .line 760
    :pswitch_7a
    aget v0, v1, v21

    .line 761
    .line 762
    shr-int/2addr v0, v10

    .line 763
    and-int/2addr v0, v8

    .line 764
    return v0

    .line 765
    :pswitch_7b
    aget v0, v1, v21

    .line 766
    .line 767
    shr-int/2addr v0, v3

    .line 768
    and-int/2addr v0, v9

    .line 769
    return v0

    .line 770
    :pswitch_7c
    aget v0, v1, v21

    .line 771
    .line 772
    shr-int/2addr v0, v6

    .line 773
    and-int/2addr v0, v9

    .line 774
    return v0

    .line 775
    :pswitch_7d
    aget v0, v1, v21

    .line 776
    .line 777
    shr-int/2addr v0, v8

    .line 778
    and-int/2addr v0, v9

    .line 779
    return v0

    .line 780
    :pswitch_7e
    aget v0, v1, v21

    .line 781
    .line 782
    shr-int/2addr v0, v7

    .line 783
    and-int/2addr v0, v9

    .line 784
    return v0

    .line 785
    :pswitch_7f
    aget v0, v1, v21

    .line 786
    .line 787
    shr-int/2addr v0, v9

    .line 788
    and-int/2addr v0, v9

    .line 789
    return v0

    .line 790
    :pswitch_80
    aget v0, v1, v21

    .line 791
    .line 792
    and-int/2addr v0, v9

    .line 793
    return v0

    .line 794
    :pswitch_81
    aget v0, v1, v14

    .line 795
    .line 796
    shr-int/2addr v0, v12

    .line 797
    and-int/2addr v0, v9

    .line 798
    return v0

    .line 799
    :pswitch_82
    aget v0, v1, v14

    .line 800
    .line 801
    shr-int/2addr v0, v3

    .line 802
    and-int/2addr v0, v9

    .line 803
    return v0

    .line 804
    :pswitch_83
    aget v0, v1, v14

    .line 805
    .line 806
    shr-int/2addr v0, v6

    .line 807
    and-int/2addr v0, v9

    .line 808
    return v0

    .line 809
    :pswitch_84
    aget v0, v1, v14

    .line 810
    .line 811
    shr-int/2addr v0, v8

    .line 812
    and-int/2addr v0, v9

    .line 813
    return v0

    .line 814
    :pswitch_85
    aget v0, v1, v14

    .line 815
    .line 816
    shr-int/2addr v0, v7

    .line 817
    and-int/2addr v0, v9

    .line 818
    return v0

    .line 819
    :pswitch_86
    aget v0, v1, v14

    .line 820
    .line 821
    shr-int/2addr v0, v9

    .line 822
    and-int/2addr v0, v9

    .line 823
    return v0

    .line 824
    :pswitch_87
    aget v0, v1, v14

    .line 825
    .line 826
    and-int/2addr v0, v9

    .line 827
    return v0

    .line 828
    :pswitch_88
    aget v0, v1, v20

    .line 829
    .line 830
    shr-int/2addr v0, v12

    .line 831
    and-int/2addr v0, v9

    .line 832
    return v0

    .line 833
    :pswitch_89
    aget v0, v1, v20

    .line 834
    .line 835
    shr-int/2addr v0, v10

    .line 836
    and-int/2addr v0, v9

    .line 837
    return v0

    .line 838
    :pswitch_8a
    aget v0, v1, v20

    .line 839
    .line 840
    shr-int/2addr v0, v3

    .line 841
    and-int/2addr v0, v9

    .line 842
    return v0

    .line 843
    :pswitch_8b
    aget v0, v1, v20

    .line 844
    .line 845
    shr-int/2addr v0, v6

    .line 846
    and-int/2addr v0, v9

    .line 847
    return v0

    .line 848
    :pswitch_8c
    aget v0, v1, v20

    .line 849
    .line 850
    shr-int/2addr v0, v8

    .line 851
    and-int/2addr v0, v9

    .line 852
    return v0

    .line 853
    :pswitch_8d
    aget v0, v1, v20

    .line 854
    .line 855
    shr-int/2addr v0, v7

    .line 856
    and-int/2addr v0, v9

    .line 857
    return v0

    .line 858
    :pswitch_8e
    aget v0, v1, v20

    .line 859
    .line 860
    shr-int/2addr v0, v9

    .line 861
    and-int/2addr v0, v9

    .line 862
    return v0

    .line 863
    :pswitch_8f
    aget v0, v1, v20

    .line 864
    .line 865
    and-int/2addr v0, v9

    .line 866
    return v0

    .line 867
    :pswitch_90
    aget v0, v1, v11

    .line 868
    .line 869
    shr-int/2addr v0, v12

    .line 870
    and-int/2addr v0, v9

    .line 871
    return v0

    .line 872
    :pswitch_91
    aget v0, v1, v11

    .line 873
    .line 874
    shr-int/2addr v0, v10

    .line 875
    and-int/2addr v0, v9

    .line 876
    return v0

    .line 877
    :pswitch_92
    aget v0, v1, v11

    .line 878
    .line 879
    shr-int/2addr v0, v3

    .line 880
    and-int/2addr v0, v9

    .line 881
    return v0

    .line 882
    :pswitch_93
    aget v0, v1, v11

    .line 883
    .line 884
    shr-int/2addr v0, v6

    .line 885
    and-int/2addr v0, v9

    .line 886
    return v0

    .line 887
    :pswitch_94
    aget v0, v1, v11

    .line 888
    .line 889
    shr-int/2addr v0, v8

    .line 890
    and-int/2addr v0, v9

    .line 891
    return v0

    .line 892
    :pswitch_95
    aget v0, v1, v11

    .line 893
    .line 894
    shr-int/2addr v0, v7

    .line 895
    and-int/2addr v0, v9

    .line 896
    return v0

    .line 897
    :pswitch_96
    aget v0, v1, v11

    .line 898
    .line 899
    shr-int/2addr v0, v9

    .line 900
    and-int/2addr v0, v9

    .line 901
    return v0

    .line 902
    :pswitch_97
    aget v0, v1, v11

    .line 903
    .line 904
    and-int/2addr v0, v9

    .line 905
    return v0

    .line 906
    :pswitch_98
    const/16 v0, 0x11

    .line 907
    .line 908
    aget v0, v1, v0

    .line 909
    .line 910
    shr-int/2addr v0, v12

    .line 911
    and-int/2addr v0, v9

    .line 912
    return v0

    .line 913
    :pswitch_99
    const/16 v0, 0x11

    .line 914
    .line 915
    aget v0, v1, v0

    .line 916
    .line 917
    shr-int/2addr v0, v10

    .line 918
    and-int/2addr v0, v8

    .line 919
    return v0

    .line 920
    :pswitch_9a
    const/16 v0, 0x11

    .line 921
    .line 922
    aget v0, v1, v0

    .line 923
    .line 924
    shr-int/2addr v0, v3

    .line 925
    and-int/2addr v0, v9

    .line 926
    return v0

    .line 927
    :pswitch_9b
    const/16 v0, 0x11

    .line 928
    .line 929
    aget v0, v1, v0

    .line 930
    .line 931
    shr-int/2addr v0, v6

    .line 932
    and-int/2addr v0, v9

    .line 933
    return v0

    .line 934
    :pswitch_9c
    const/16 v0, 0x11

    .line 935
    .line 936
    aget v0, v1, v0

    .line 937
    .line 938
    shr-int/2addr v0, v8

    .line 939
    and-int/2addr v0, v9

    .line 940
    return v0

    .line 941
    :pswitch_9d
    const/16 v0, 0x11

    .line 942
    .line 943
    aget v0, v1, v0

    .line 944
    .line 945
    shr-int/2addr v0, v7

    .line 946
    and-int/2addr v0, v9

    .line 947
    return v0

    .line 948
    :pswitch_9e
    const/16 v0, 0x11

    .line 949
    .line 950
    aget v0, v1, v0

    .line 951
    .line 952
    and-int/2addr v0, v8

    .line 953
    return v0

    .line 954
    :pswitch_9f
    aget v0, v1, v17

    .line 955
    .line 956
    shr-int/2addr v0, v10

    .line 957
    and-int/2addr v0, v9

    .line 958
    return v0

    .line 959
    :pswitch_a0
    aget v0, v1, v17

    .line 960
    .line 961
    shr-int/2addr v0, v3

    .line 962
    and-int/2addr v0, v9

    .line 963
    return v0

    .line 964
    :pswitch_a1
    aget v0, v1, v17

    .line 965
    .line 966
    shr-int/2addr v0, v6

    .line 967
    and-int/2addr v0, v9

    .line 968
    return v0

    .line 969
    :pswitch_a2
    aget v0, v1, v17

    .line 970
    .line 971
    shr-int/2addr v0, v8

    .line 972
    and-int/2addr v0, v9

    .line 973
    return v0

    .line 974
    :pswitch_a3
    aget v0, v1, v17

    .line 975
    .line 976
    shr-int/2addr v0, v7

    .line 977
    and-int/2addr v0, v9

    .line 978
    return v0

    .line 979
    :pswitch_a4
    aget v0, v1, v17

    .line 980
    .line 981
    and-int/2addr v0, v8

    .line 982
    return v0

    .line 983
    :pswitch_a5
    aget v0, v1, v19

    .line 984
    .line 985
    shr-int/2addr v0, v12

    .line 986
    and-int/2addr v0, v9

    .line 987
    return v0

    .line 988
    :pswitch_a6
    aget v0, v1, v19

    .line 989
    .line 990
    shr-int/2addr v0, v10

    .line 991
    and-int/2addr v0, v9

    .line 992
    return v0

    .line 993
    :pswitch_a7
    aget v0, v1, v19

    .line 994
    .line 995
    shr-int/2addr v0, v3

    .line 996
    and-int/2addr v0, v9

    .line 997
    return v0

    .line 998
    :pswitch_a8
    aget v0, v1, v19

    .line 999
    .line 1000
    shr-int/2addr v0, v6

    .line 1001
    and-int/2addr v0, v9

    .line 1002
    return v0

    .line 1003
    :pswitch_a9
    aget v0, v1, v19

    .line 1004
    .line 1005
    shr-int/2addr v0, v8

    .line 1006
    and-int/2addr v0, v9

    .line 1007
    return v0

    .line 1008
    :pswitch_aa
    aget v0, v1, v19

    .line 1009
    .line 1010
    shr-int/2addr v0, v7

    .line 1011
    and-int/2addr v0, v9

    .line 1012
    return v0

    .line 1013
    :pswitch_ab
    aget v0, v1, v19

    .line 1014
    .line 1015
    shr-int/2addr v0, v9

    .line 1016
    and-int/2addr v0, v9

    .line 1017
    return v0

    .line 1018
    :pswitch_ac
    aget v0, v1, v19

    .line 1019
    .line 1020
    and-int/2addr v0, v9

    .line 1021
    return v0

    .line 1022
    :pswitch_ad
    aget v0, v1, v14

    .line 1023
    .line 1024
    shr-int/2addr v0, v12

    .line 1025
    and-int/2addr v0, v9

    .line 1026
    return v0

    .line 1027
    :pswitch_ae
    aget v0, v1, v14

    .line 1028
    .line 1029
    shr-int/2addr v0, v10

    .line 1030
    and-int/2addr v0, v9

    .line 1031
    return v0

    .line 1032
    :pswitch_af
    aget v0, v1, v14

    .line 1033
    .line 1034
    shr-int/2addr v0, v3

    .line 1035
    and-int/2addr v0, v9

    .line 1036
    return v0

    .line 1037
    :pswitch_b0
    aget v0, v1, v14

    .line 1038
    .line 1039
    shr-int/2addr v0, v6

    .line 1040
    and-int/2addr v0, v9

    .line 1041
    return v0

    .line 1042
    :pswitch_b1
    aget v0, v1, v14

    .line 1043
    .line 1044
    shr-int/2addr v0, v7

    .line 1045
    and-int/2addr v0, v8

    .line 1046
    return v0

    .line 1047
    :pswitch_b2
    aget v0, v1, v14

    .line 1048
    .line 1049
    and-int/2addr v0, v8

    .line 1050
    return v0

    .line 1051
    :pswitch_b3
    aget v0, v1, v15

    .line 1052
    .line 1053
    shr-int/2addr v0, v10

    .line 1054
    and-int/2addr v0, v8

    .line 1055
    return v0

    .line 1056
    :pswitch_b4
    aget v0, v1, v15

    .line 1057
    .line 1058
    shr-int/2addr v0, v6

    .line 1059
    and-int/2addr v0, v8

    .line 1060
    return v0

    .line 1061
    :pswitch_b5
    aget v0, v1, v13

    .line 1062
    .line 1063
    shr-int/2addr v0, v10

    .line 1064
    and-int/2addr v0, v9

    .line 1065
    return v0

    .line 1066
    :pswitch_b6
    aget v0, v1, v13

    .line 1067
    .line 1068
    shr-int/2addr v0, v8

    .line 1069
    and-int/2addr v0, v12

    .line 1070
    return v0

    .line 1071
    :pswitch_b7
    aget v0, v1, v13

    .line 1072
    .line 1073
    and-int/2addr v0, v12

    .line 1074
    return v0

    .line 1075
    :pswitch_b8
    aget v0, v1, v16

    .line 1076
    .line 1077
    and-int/2addr v0, v9

    .line 1078
    return v0

    .line 1079
    :pswitch_b9
    aget v0, v1, v11

    .line 1080
    .line 1081
    shr-int/2addr v0, v12

    .line 1082
    and-int/2addr v0, v9

    .line 1083
    return v0

    .line 1084
    :pswitch_ba
    aget v0, v1, v11

    .line 1085
    .line 1086
    shr-int/2addr v0, v10

    .line 1087
    and-int/2addr v0, v9

    .line 1088
    return v0

    .line 1089
    :pswitch_bb
    aget v0, v1, v11

    .line 1090
    .line 1091
    shr-int/2addr v0, v3

    .line 1092
    and-int/2addr v0, v9

    .line 1093
    return v0

    .line 1094
    :pswitch_bc
    aget v0, v1, v11

    .line 1095
    .line 1096
    shr-int/2addr v0, v6

    .line 1097
    and-int/2addr v0, v9

    .line 1098
    return v0

    .line 1099
    :pswitch_bd
    aget v0, v1, v11

    .line 1100
    .line 1101
    shr-int/2addr v0, v8

    .line 1102
    and-int/2addr v0, v9

    .line 1103
    return v0

    .line 1104
    :pswitch_be
    aget v0, v1, v11

    .line 1105
    .line 1106
    shr-int/2addr v0, v7

    .line 1107
    and-int/2addr v0, v9

    .line 1108
    return v0

    .line 1109
    :pswitch_bf
    aget v0, v1, v11

    .line 1110
    .line 1111
    shr-int/2addr v0, v9

    .line 1112
    and-int/2addr v0, v9

    .line 1113
    return v0

    .line 1114
    :pswitch_c0
    aget v0, v1, v11

    .line 1115
    .line 1116
    and-int/2addr v0, v9

    .line 1117
    return v0

    .line 1118
    :pswitch_c1
    aget v0, v1, v5

    .line 1119
    .line 1120
    shr-int/2addr v0, v7

    .line 1121
    and-int/2addr v0, v9

    .line 1122
    return v0

    .line 1123
    :pswitch_c2
    aget v0, v1, v5

    .line 1124
    .line 1125
    shr-int/2addr v0, v9

    .line 1126
    and-int/2addr v0, v9

    .line 1127
    return v0

    .line 1128
    :pswitch_c3
    aget v0, v1, v5

    .line 1129
    .line 1130
    and-int/2addr v0, v9

    .line 1131
    return v0

    .line 1132
    :pswitch_c4
    aget v0, v1, v18

    .line 1133
    .line 1134
    shr-int/2addr v0, v12

    .line 1135
    and-int/2addr v0, v9

    .line 1136
    return v0

    .line 1137
    :pswitch_c5
    aget v0, v1, v18

    .line 1138
    .line 1139
    shr-int/2addr v0, v10

    .line 1140
    and-int/2addr v0, v9

    .line 1141
    return v0

    .line 1142
    :pswitch_c6
    aget v0, v1, v18

    .line 1143
    .line 1144
    shr-int/2addr v0, v3

    .line 1145
    and-int/2addr v0, v9

    .line 1146
    return v0

    .line 1147
    :pswitch_c7
    aget v0, v1, v18

    .line 1148
    .line 1149
    shr-int/2addr v0, v6

    .line 1150
    and-int/2addr v0, v9

    .line 1151
    return v0

    .line 1152
    :pswitch_c8
    aget v0, v1, v18

    .line 1153
    .line 1154
    and-int/2addr v0, v9

    .line 1155
    return v0

    .line 1156
    :pswitch_c9
    aget v0, v1, v12

    .line 1157
    .line 1158
    shr-int/2addr v0, v12

    .line 1159
    and-int/2addr v0, v9

    .line 1160
    return v0

    .line 1161
    :pswitch_ca
    aget v0, v1, v12

    .line 1162
    .line 1163
    shr-int/2addr v0, v6

    .line 1164
    and-int/2addr v0, v12

    .line 1165
    return v0

    .line 1166
    :pswitch_cb
    aget v0, v1, v12

    .line 1167
    .line 1168
    and-int/lit8 v0, v0, 0xf

    .line 1169
    .line 1170
    return v0

    .line 1171
    :pswitch_cc
    aget v0, v1, v8

    .line 1172
    .line 1173
    shr-int/2addr v0, v3

    .line 1174
    and-int/2addr v0, v9

    .line 1175
    return v0

    .line 1176
    :pswitch_cd
    aget v0, v1, v8

    .line 1177
    .line 1178
    shr-int/2addr v0, v8

    .line 1179
    and-int/2addr v0, v9

    .line 1180
    return v0

    .line 1181
    :pswitch_ce
    aget v0, v1, v8

    .line 1182
    .line 1183
    shr-int/2addr v0, v7

    .line 1184
    and-int/2addr v0, v9

    .line 1185
    return v0

    .line 1186
    :pswitch_cf
    aget v0, v1, v8

    .line 1187
    .line 1188
    shr-int/2addr v0, v9

    .line 1189
    and-int/2addr v0, v9

    .line 1190
    return v0

    .line 1191
    :pswitch_d0
    aget v0, v1, v8

    .line 1192
    .line 1193
    and-int/2addr v0, v9

    .line 1194
    return v0

    .line 1195
    :cond_5
    aget v0, v1, v7

    .line 1196
    .line 1197
    shr-int/2addr v0, v12

    .line 1198
    and-int/2addr v0, v9

    .line 1199
    return v0

    .line 1200
    :cond_6
    aget v0, v1, v7

    .line 1201
    .line 1202
    shr-int/2addr v0, v10

    .line 1203
    and-int/2addr v0, v9

    .line 1204
    return v0

    .line 1205
    :pswitch_d1
    aget v0, v1, v7

    .line 1206
    .line 1207
    shr-int/2addr v0, v3

    .line 1208
    and-int/2addr v0, v9

    .line 1209
    return v0

    .line 1210
    :pswitch_d2
    aget v0, v1, v7

    .line 1211
    .line 1212
    shr-int/2addr v0, v6

    .line 1213
    and-int/2addr v0, v9

    .line 1214
    return v0

    .line 1215
    :pswitch_d3
    aget v0, v1, v7

    .line 1216
    .line 1217
    shr-int/2addr v0, v8

    .line 1218
    and-int/2addr v0, v9

    .line 1219
    return v0

    .line 1220
    :pswitch_d4
    aget v0, v1, v7

    .line 1221
    .line 1222
    shr-int/2addr v0, v7

    .line 1223
    and-int/2addr v0, v9

    .line 1224
    return v0

    .line 1225
    :pswitch_d5
    aget v0, v1, v7

    .line 1226
    .line 1227
    shr-int/2addr v0, v9

    .line 1228
    and-int/2addr v0, v9

    .line 1229
    return v0

    .line 1230
    :pswitch_d6
    aget v0, v1, v7

    .line 1231
    .line 1232
    and-int/2addr v0, v9

    .line 1233
    return v0

    .line 1234
    :pswitch_d7
    aget v0, v1, v9

    .line 1235
    .line 1236
    return v0

    .line 1237
    :pswitch_d8
    aget v0, v1, v4

    .line 1238
    .line 1239
    and-int/2addr v0, v8

    .line 1240
    return v0

    .line 1241
    :cond_7
    :goto_0
    return v4

    .line 1242
    nop

    .line 1243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
    .end packed-switch

    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
    .end packed-switch

    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
    .end packed-switch

    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    :pswitch_data_3
    .packed-switch 0x49
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
    .end packed-switch

    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    :pswitch_data_4
    .packed-switch 0x67
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
    .end packed-switch

    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    :pswitch_data_5
    .packed-switch 0x8c
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
    .end packed-switch

    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    :pswitch_data_6
    .packed-switch 0xc8
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch

    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    :pswitch_data_7
    .packed-switch 0xec
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    :pswitch_data_8
    .packed-switch 0x2710
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    :pswitch_data_9
    .packed-switch 0x2725
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    :pswitch_data_a
    .packed-switch 0x2738
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    :pswitch_data_b
    .packed-switch 0x2755
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    :pswitch_data_c
    .packed-switch 0x2769
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    :pswitch_data_d
    .packed-switch 0x277d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    :pswitch_data_e
    .packed-switch 0x2783
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    :pswitch_data_f
    .packed-switch 0x278e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static v(Ljava/lang/Object;)Lx4/v;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lx4/k;->a:Lx4/k;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    check-cast p0, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    sget-object p0, Lx4/d;->c:Lx4/d;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object p0, Lx4/d;->b:Lx4/d;

    .line 22
    .line 23
    :goto_0
    return-object p0

    .line 24
    :cond_2
    instance-of v0, p0, Ljava/lang/Byte;

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    check-cast p0, Ljava/lang/Byte;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    new-instance v0, Lx4/e;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lx4/e;-><init>(B)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_3
    instance-of v0, p0, Ljava/lang/Character;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    check-cast p0, Ljava/lang/Character;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    new-instance v0, Lx4/f;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lx4/f;-><init>(C)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_4
    instance-of v0, p0, Ljava/lang/Double;

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    check-cast p0, Ljava/lang/Double;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    new-instance p0, Lx4/g;

    .line 71
    .line 72
    invoke-direct {p0, v0, v1}, Lx4/g;-><init>(J)V

    .line 73
    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_5
    instance-of v0, p0, Ljava/lang/Float;

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    check-cast p0, Ljava/lang/Float;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    new-instance v0, Lx4/i;

    .line 91
    .line 92
    invoke-direct {v0, p0}, Lx4/i;-><init>(I)V

    .line 93
    .line 94
    .line 95
    return-object v0

    .line 96
    :cond_6
    instance-of v0, p0, Ljava/lang/Integer;

    .line 97
    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    check-cast p0, Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    invoke-static {p0}, Lx4/j;->h(I)Lx4/j;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_7
    instance-of v0, p0, Ljava/lang/Long;

    .line 112
    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    check-cast p0, Ljava/lang/Long;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    new-instance p0, Lx4/o;

    .line 122
    .line 123
    invoke-direct {p0, v0, v1}, Lx4/o;-><init>(J)V

    .line 124
    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_8
    instance-of v0, p0, Ljava/lang/Short;

    .line 128
    .line 129
    if-eqz v0, :cond_9

    .line 130
    .line 131
    check-cast p0, Ljava/lang/Short;

    .line 132
    .line 133
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    .line 134
    .line 135
    .line 136
    move-result p0

    .line 137
    new-instance v0, Lx4/s;

    .line 138
    .line 139
    invoke-direct {v0, p0}, Lx4/s;-><init>(S)V

    .line 140
    .line 141
    .line 142
    return-object v0

    .line 143
    :cond_9
    instance-of v0, p0, Ljava/lang/String;

    .line 144
    .line 145
    if-eqz v0, :cond_a

    .line 146
    .line 147
    new-instance v0, Lx4/t;

    .line 148
    .line 149
    check-cast p0, Ljava/lang/String;

    .line 150
    .line 151
    invoke-direct {v0, p0}, Lx4/t;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-object v0

    .line 155
    :cond_a
    instance-of v0, p0, Ljava/lang/Class;

    .line 156
    .line 157
    if-eqz v0, :cond_b

    .line 158
    .line 159
    new-instance v0, Lx4/u;

    .line 160
    .line 161
    check-cast p0, Ljava/lang/Class;

    .line 162
    .line 163
    invoke-static {p0}, Lq4/j;->a(Ljava/lang/Class;)Lq4/j;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    iget-object p0, p0, Lq4/j;->b:Ly4/c;

    .line 168
    .line 169
    invoke-direct {v0, p0}, Lx4/u;-><init>(Ly4/c;)V

    .line 170
    .line 171
    .line 172
    return-object v0

    .line 173
    :cond_b
    instance-of v0, p0, Lq4/j;

    .line 174
    .line 175
    if-eqz v0, :cond_c

    .line 176
    .line 177
    new-instance v0, Lx4/u;

    .line 178
    .line 179
    check-cast p0, Lq4/j;

    .line 180
    .line 181
    iget-object p0, p0, Lq4/j;->b:Ly4/c;

    .line 182
    .line 183
    invoke-direct {v0, p0}, Lx4/u;-><init>(Ly4/c;)V

    .line 184
    .line 185
    .line 186
    return-object v0

    .line 187
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 188
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v2, "Not a constant: "

    .line 192
    .line 193
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v0
.end method

.method public static w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "downloadId="

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v4, "|"

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Lqf/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, "&enable=1&devType=6&uuid="

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p2, "&timestamp="

    .line 45
    .line 46
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, ""

    .line 58
    .line 59
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p2}, Lqf/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p2, "&auth="

    .line 74
    .line 75
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Lqf/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p0, "&shareId="

    .line 104
    .line 105
    invoke-static {p0, p3, v2}, Lg/b;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    return-object p0
.end method

.method public static x(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-static {}, Lw/p2;->d()Lw/p2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Lw/p2;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static y(JLjava/lang/String;Lx9/n5;)Lfh/c;
    .locals 6

    .line 1
    invoke-static {p3}, Lcom/bumptech/glide/d;->N(Lx9/n5;)Ldh/j;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    if-eqz p3, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    int-to-long v0, v0

    .line 9
    sget-object v2, Lsh/c;->c:Lsh/c;

    .line 10
    .line 11
    const-wide/16 v2, 0x3e8

    .line 12
    .line 13
    div-long v4, v0, v2

    .line 14
    .line 15
    rem-long/2addr v0, v2

    .line 16
    long-to-int v1, v0

    .line 17
    if-gez v1, :cond_0

    .line 18
    .line 19
    add-int/lit16 v1, v1, 0x3e8

    .line 20
    .line 21
    const-wide/16 v2, 0x1

    .line 22
    .line 23
    sub-long/2addr v4, v2

    .line 24
    :cond_0
    const v0, 0xf4240

    .line 25
    .line 26
    .line 27
    mul-int v1, v1, v0

    .line 28
    .line 29
    invoke-static {v1, v4, v5}, Lsh/c;->a(IJ)Lsh/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p3, Ldh/e;->u:Lsh/c;

    .line 34
    .line 35
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    cmp-long v2, p0, v0

    .line 38
    .line 39
    if-lez v2, :cond_1

    .line 40
    .line 41
    cmp-long v2, p0, v0

    .line 42
    .line 43
    if-ltz v2, :cond_1

    .line 44
    .line 45
    iput-wide p0, p3, Ldh/e;->A:J

    .line 46
    .line 47
    :cond_1
    invoke-virtual {p3, p2}, Ldh/e;->x(Ljava/lang/String;)Lfh/c;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/Exception;

    .line 53
    .line 54
    const-string p1, "FTP\u8fde\u63a5\u5931\u8d25"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public static z(I[Ljava/lang/String;)F
    .locals 2

    .line 1
    aget-object p0, p1, p0

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 p1, 0x0

    .line 8
    cmpg-float p1, p0, p1

    .line 9
    .line 10
    if-ltz p1, :cond_0

    .line 11
    .line 12
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    .line 14
    cmpl-float p1, p0, p1

    .line 15
    .line 16
    if-gtz p1, :cond_0

    .line 17
    .line 18
    return p0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Motion easing control point value must be between 0 and 1; instead got: "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method


# virtual methods
.method public abstract O(I)V
.end method

.method public abstract P(Landroid/graphics/Typeface;Z)V
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method
