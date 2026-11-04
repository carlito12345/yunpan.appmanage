.class Lorg/simpleframework/xml/stream/StreamProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/stream/Provider;


# instance fields
.field private final factory:Ltc/e;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const-class v0, Ltc/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "javax.xml.stream.XMLInputFactory"

    .line 7
    .line 8
    const-string v2, "$ClassLoaderFinderConcrete"

    .line 9
    .line 10
    :try_start_0
    sget-object v3, Ltc/b;->b:Ljava/lang/Class;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    sput-object v0, Ltc/b;->b:Ljava/lang/Class;

    .line 15
    .line 16
    move-object v3, v0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :catch_1
    nop

    .line 21
    goto :goto_2

    .line 22
    :catch_2
    nop

    .line 23
    goto :goto_4

    .line 24
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/ClassCastException;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    .line 47
    .line 48
    .line 49
    throw v2
    :try_end_2
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 50
    :goto_1
    new-instance v1, Ltc/a;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-direct {v1, v2, v0}, Ltc/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :goto_2
    sget-object v2, Ltc/b;->b:Ljava/lang/Class;

    .line 61
    .line 62
    if-nez v2, :cond_2

    .line 63
    .line 64
    sput-object v0, Ltc/b;->b:Ljava/lang/Class;

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_2
    move-object v0, v2

    .line 68
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_6

    .line 73
    :goto_4
    sget-object v2, Ltc/b;->b:Ljava/lang/Class;

    .line 74
    .line 75
    if-nez v2, :cond_3

    .line 76
    .line 77
    sput-object v0, Ltc/b;->b:Ljava/lang/Class;

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_3
    move-object v0, v2

    .line 81
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    :goto_6
    sget-boolean v2, Ltc/b;->a:Z

    .line 86
    .line 87
    const-string v3, "loaded from services: "

    .line 88
    .line 89
    const-string v4, "found java.home property "

    .line 90
    .line 91
    const-string v5, "found system property"

    .line 92
    .line 93
    :try_start_3
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    if-eqz v6, :cond_4

    .line 98
    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-static {v5}, Ltc/b;->a(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v6}, Ltc/b;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 110
    goto/16 :goto_9

    .line 111
    .line 112
    :catch_3
    :cond_4
    :try_start_4
    const-string v5, "java.home"

    .line 113
    .line 114
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    new-instance v6, Ljava/lang/StringBuffer;

    .line 119
    .line 120
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    .line 125
    .line 126
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    .line 130
    .line 131
    const-string v7, "lib"

    .line 132
    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    .line 138
    .line 139
    const-string v5, "jaxp.properties"

    .line 140
    .line 141
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    new-instance v6, Ljava/io/File;

    .line 149
    .line 150
    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_5

    .line 158
    .line 159
    new-instance v5, Ljava/util/Properties;

    .line 160
    .line 161
    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 162
    .line 163
    .line 164
    new-instance v7, Ljava/io/FileInputStream;

    .line 165
    .line 166
    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v5, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-eqz v1, :cond_5

    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-lez v5, :cond_5

    .line 183
    .line 184
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-static {v4}, Ltc/b;->a(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v0, v1}, Ltc/b;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 195
    goto :goto_9

    .line 196
    :catch_4
    move-exception v1

    .line 197
    if-eqz v2, :cond_5

    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    .line 201
    .line 202
    :cond_5
    const-string v1, "META-INF/services/javax.xml.stream.XMLInputFactory"

    .line 203
    .line 204
    if-nez v0, :cond_6

    .line 205
    .line 206
    :try_start_5
    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    goto :goto_7

    .line 211
    :catch_5
    move-exception v1

    .line 212
    goto :goto_8

    .line 213
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    :goto_7
    if-eqz v1, :cond_7

    .line 218
    .line 219
    const-string v4, "found META-INF/services/javax.xml.stream.XMLInputFactory"

    .line 220
    .line 221
    invoke-static {v4}, Ltc/b;->a(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    new-instance v4, Ljava/io/BufferedReader;

    .line 225
    .line 226
    new-instance v5, Ljava/io/InputStreamReader;

    .line 227
    .line 228
    const-string v6, "UTF-8"

    .line 229
    .line 230
    invoke-direct {v5, v1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 241
    .line 242
    .line 243
    if-eqz v1, :cond_7

    .line 244
    .line 245
    const-string v4, ""

    .line 246
    .line 247
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-nez v4, :cond_7

    .line 252
    .line 253
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-static {v3}, Ltc/b;->a(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-static {v0, v1}, Ltc/b;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 264
    goto :goto_9

    .line 265
    :goto_8
    if-eqz v2, :cond_7

    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 268
    .line 269
    .line 270
    :cond_7
    const-string v1, "loaded from fallback value: "

    .line 271
    .line 272
    const-string v2, "com.bea.xml.stream.MXParserFactory"

    .line 273
    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-static {v1}, Ltc/b;->a(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-static {v0, v2}, Ltc/b;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    :goto_9
    if-nez v0, :cond_8

    .line 286
    .line 287
    return-void

    .line 288
    :cond_8
    new-instance v0, Ljava/lang/ClassCastException;

    .line 289
    .line 290
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 291
    .line 292
    .line 293
    throw v0
.end method

.method private provide(Ltc/d;)Lorg/simpleframework/xml/stream/EventReader;
    .locals 1

    .line 3
    new-instance v0, Lorg/simpleframework/xml/stream/StreamReader;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/stream/StreamReader;-><init>(Ltc/d;)V

    return-object v0
.end method


# virtual methods
.method public provide(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/EventReader;
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public provide(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/EventReader;
    .locals 0

    const/4 p1, 0x0

    .line 2
    throw p1
.end method
