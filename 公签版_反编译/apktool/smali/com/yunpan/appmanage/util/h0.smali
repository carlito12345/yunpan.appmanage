.class public abstract Lcom/yunpan/appmanage/util/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Lcom/android/apksig/ApkVerifier$Builder;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/android/apksig/ApkVerifier$Builder;-><init>(Ljava/io/File;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/android/apksig/ApkVerifier$Builder;->setMinCheckedPlatformVersion(I)Lcom/android/apksig/ApkVerifier$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/apksig/ApkVerifier$Builder;->setMaxCheckedPlatformVersion(I)Lcom/android/apksig/ApkVerifier$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/android/apksig/ApkVerifier$Builder;->build()Lcom/android/apksig/ApkVerifier;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lcom/android/apksig/ApkVerifier;->verify()Lcom/android/apksig/ApkVerifier$Result;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lcom/android/apksig/ApkVerifier$Result;->isVerified()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/apksig/ApkVerifier$Result;->getSignerCertificates()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 55
    .line 56
    const-string v0, "SHA-256"

    .line 57
    .line 58
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Ls1/g;->h([B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0

    .line 75
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 76
    .line 77
    const-string v0, "\u65e0\u6cd5\u83b7\u53d6\u7b7e\u540d\u8bc1\u4e66"

    .line 78
    .line 79
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 84
    .line 85
    const-string v0, "APK \u7b7e\u540d\u65e0\u6548"

    .line 86
    .line 87
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-nez v2, :cond_0

    .line 5
    .line 6
    :try_start_0
    const-string v3, "PKCS12"

    .line 7
    .line 8
    new-instance v4, Lc/a;

    .line 9
    .line 10
    invoke-direct {v4, v0}, Lc/a;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v3, v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception v3

    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    if-ne v2, v0, :cond_1

    .line 22
    .line 23
    const-string v3, "BKS"

    .line 24
    .line 25
    new-instance v4, Lc/a;

    .line 26
    .line 27
    invoke-direct {v4, v0}, Lc/a;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const-string v3, "JKS"

    .line 36
    .line 37
    new-instance v4, Lc/a;

    .line 38
    .line 39
    invoke-direct {v4, v0}, Lc/a;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    :goto_1
    new-instance v4, Ljava/io/FileInputStream;

    .line 47
    .line 48
    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 66
    .line 67
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 68
    .line 69
    const/16 p3, 0x18

    .line 70
    .line 71
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    new-instance p3, Lcom/android/apksig/ApkVerifier$Builder;

    .line 76
    .line 77
    invoke-direct {p3, p0}, Lcom/android/apksig/ApkVerifier$Builder;-><init>(Ljava/io/File;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p2}, Lcom/android/apksig/ApkVerifier$Builder;->setMinCheckedPlatformVersion(I)Lcom/android/apksig/ApkVerifier$Builder;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0, p2}, Lcom/android/apksig/ApkVerifier$Builder;->setMaxCheckedPlatformVersion(I)Lcom/android/apksig/ApkVerifier$Builder;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0}, Lcom/android/apksig/ApkVerifier$Builder;->build()Lcom/android/apksig/ApkVerifier;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Lcom/android/apksig/ApkVerifier;->verify()Lcom/android/apksig/ApkVerifier$Result;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Lcom/android/apksig/ApkVerifier$Result;->isVerified()Z

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    if-eqz p2, :cond_4

    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/apksig/ApkVerifier$Result;->getSignerCertificates()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-eqz p2, :cond_3

    .line 115
    .line 116
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 121
    .line 122
    const-string p3, "SHA-256"

    .line 123
    .line 124
    invoke-static {p3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {p3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {p3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    invoke-static {p2, p3}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_2

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_3
    const/4 v0, 0x0

    .line 156
    :goto_2
    return v0

    .line 157
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 158
    .line 159
    const-string p1, "APK \u7b7e\u540d\u65e0\u6548"

    .line 160
    .line 161
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :catchall_0
    move-exception v3

    .line 166
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :catchall_1
    move-exception v4

    .line 171
    :try_start_4
    const-class v5, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 172
    .line 173
    :try_start_5
    const-string v6, "addSuppressed"

    .line 174
    .line 175
    new-array v7, v0, [Ljava/lang/Class;

    .line 176
    .line 177
    aput-object v5, v7, v1

    .line 178
    .line 179
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    new-array v6, v0, [Ljava/lang/Object;

    .line 184
    .line 185
    aput-object v4, v6, v1

    .line 186
    .line 187
    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 188
    .line 189
    .line 190
    :catch_1
    :goto_3
    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 191
    :goto_4
    const/4 v4, 0x2

    .line 192
    if-eq v2, v4, :cond_5

    .line 193
    .line 194
    add-int/2addr v2, v0

    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_5
    goto :goto_6

    .line 198
    :goto_5
    throw v3

    .line 199
    :goto_6
    goto :goto_5
.end method

.method public static c(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-nez v2, :cond_0

    .line 5
    .line 6
    :try_start_0
    const-string v3, "PKCS12"

    .line 7
    .line 8
    new-instance v4, Lc/a;

    .line 9
    .line 10
    invoke-direct {v4, v0}, Lc/a;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v3, v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception v3

    .line 19
    goto :goto_3

    .line 20
    :cond_0
    if-ne v2, v0, :cond_1

    .line 21
    .line 22
    const-string v3, "BKS"

    .line 23
    .line 24
    new-instance v4, Lc/a;

    .line 25
    .line 26
    invoke-direct {v4, v0}, Lc/a;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v3, v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const-string v3, "JKS"

    .line 35
    .line 36
    new-instance v4, Lc/a;

    .line 37
    .line 38
    invoke-direct {v4, v0}, Lc/a;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    :goto_1
    new-instance v4, Ljava/io/FileInputStream;

    .line 46
    .line 47
    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v3, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, p1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 65
    .line 66
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v3, p1, p0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Ljava/security/PrivateKey;

    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception v3

    .line 78
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catchall_1
    move-exception v4

    .line 83
    :try_start_4
    const-class v5, Ljava/lang/Throwable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 84
    .line 85
    :try_start_5
    const-string v6, "addSuppressed"

    .line 86
    .line 87
    new-array v7, v0, [Ljava/lang/Class;

    .line 88
    .line 89
    aput-object v5, v7, v1

    .line 90
    .line 91
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    new-array v6, v0, [Ljava/lang/Object;

    .line 96
    .line 97
    aput-object v4, v6, v1

    .line 98
    .line 99
    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 100
    .line 101
    .line 102
    :catch_1
    :goto_2
    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 103
    :goto_3
    const/4 v4, 0x2

    .line 104
    if-eq v2, v4, :cond_2

    .line 105
    .line 106
    add-int/2addr v2, v0

    .line 107
    goto :goto_0

    .line 108
    :cond_2
    goto :goto_5

    .line 109
    :goto_4
    throw v3

    .line 110
    :goto_5
    goto :goto_4
.end method
