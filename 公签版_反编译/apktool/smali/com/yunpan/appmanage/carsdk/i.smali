.class public final Lcom/yunpan/appmanage/carsdk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lc5/c;

.field public b:Z

.field public final c:Lcom/yunpan/appmanage/carsdk/f;

.field public d:Ljava/lang/String;


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
    iput-boolean v0, p0, Lcom/yunpan/appmanage/carsdk/i;->b:Z

    .line 6
    .line 7
    new-instance v0, Lcom/yunpan/appmanage/carsdk/h;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Lcom/yunpan/appmanage/carsdk/h;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/yunpan/appmanage/carsdk/f;

    .line 14
    .line 15
    invoke-direct {v0, v1, p0}, Lcom/yunpan/appmanage/carsdk/f;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/yunpan/appmanage/carsdk/i;->c:Lcom/yunpan/appmanage/carsdk/f;

    .line 19
    .line 20
    return-void
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/content/Intent;

    .line 7
    .line 8
    const-string v2, "com.baidu.naviauto.imaplbs.lbsservice"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 45
    .line 46
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 47
    .line 48
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    const-string v1, "com.baidu.naviauto"

    .line 65
    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    const/4 v2, 0x1

    .line 74
    if-le p0, v2, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/String;

    .line 91
    .line 92
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 93
    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_3

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_4
    return-object v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "com.baidu.naviauto.imaplbs.lbsservice"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "com.baidu.naviauto"

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string v0, "package"

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/i;->c:Lcom/yunpan/appmanage/carsdk/f;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 26
    .line 27
    .line 28
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/i;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/i;->d:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 24
    .line 25
    const-string v3, "AES"

    .line 26
    .line 27
    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "AES/GCM/NoPadding"

    .line 31
    .line 32
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    .line 37
    .line 38
    const-string v4, "7777889654578967"

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x2

    .line 48
    invoke-virtual {v0, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v0, Ljava/lang/String;

    .line 64
    .line 65
    sget-object v1, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 66
    .line 67
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_1
    :goto_0
    return-object p1
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/i;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/i;->d:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 24
    .line 25
    const-string v3, "AES"

    .line 26
    .line 27
    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "AES/GCM/NoPadding"

    .line 31
    .line 32
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    .line 37
    .line 38
    const-string v4, "7777889654578967"

    .line 39
    .line 40
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    invoke-virtual {v0, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 49
    .line 50
    .line 51
    sget-object v2, Lj$/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v0, Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_1
    :goto_0
    return-object p1
.end method

.method public final d()I
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "get_day_night_mode"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/yunpan/appmanage/carsdk/i;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "result"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return v0

    .line 35
    :catch_0
    const/4 v0, -0x1

    .line 36
    return v0
.end method

.method public final f(I)Z
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "is_hcset"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/yunpan/appmanage/carsdk/i;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "result"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lz7/p;->i()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return p1

    .line 38
    :catch_0
    const/4 p1, 0x0

    .line 39
    return p1
.end method

.method public final g()Z
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "is_in_cruise"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/yunpan/appmanage/carsdk/i;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lz7/p;->g()Lz7/s;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "result"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return v0

    .line 35
    :catch_0
    const/4 v0, 0x0

    .line 36
    return v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "\"}"

    .line 2
    .line 3
    const-string v1, "errorMessage"

    .line 4
    .line 5
    const-string v2, "\u767e\u5ea6\u5730\u56fe\uff1a"

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/yunpan/appmanage/carsdk/i;->b:Z

    .line 8
    .line 9
    if-eqz v3, :cond_3

    .line 10
    .line 11
    iget-object v3, p0, Lcom/yunpan/appmanage/carsdk/i;->a:Lc5/c;

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/yunpan/appmanage/carsdk/g;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/yunpan/appmanage/carsdk/g;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, v3, Lcom/yunpan/appmanage/carsdk/g;->a:Ljava/lang/String;

    .line 28
    .line 29
    iput-object p2, v3, Lcom/yunpan/appmanage/carsdk/g;->b:Ljava/lang/String;

    .line 30
    .line 31
    new-instance p1, Ljava/util/Random;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 34
    .line 35
    .line 36
    const p2, 0x186a0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, v3, Lcom/yunpan/appmanage/carsdk/g;->c:I

    .line 44
    .line 45
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, v3, Lcom/yunpan/appmanage/carsdk/g;->d:Ljava/lang/String;

    .line 54
    .line 55
    new-instance p1, Lz7/m;

    .line 56
    .line 57
    invoke-direct {p1}, Lz7/m;-><init>()V

    .line 58
    .line 59
    .line 60
    const-class p2, Lcom/yunpan/appmanage/carsdk/g;

    .line 61
    .line 62
    new-instance v4, Ljava/io/StringWriter;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 65
    .line 66
    .line 67
    :try_start_0
    invoke-virtual {p1, v4}, Lz7/m;->d(Ljava/io/Writer;)Lh8/b;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {p1, v3, p2, v5}, Lz7/m;->g(Ljava/lang/Object;Ljava/lang/Class;Lh8/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/yunpan/appmanage/carsdk/i;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object p2, p0, Lcom/yunpan/appmanage/carsdk/i;->a:Lc5/c;

    .line 83
    .line 84
    check-cast p2, Lc5/a;

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Lc5/a;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/yunpan/appmanage/carsdk/i;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    :try_start_2
    invoke-static {p1}, Ld/b;->b0(Ljava/lang/String;)Lz7/p;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p2}, Lz7/p;->g()Lz7/s;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    const-string v0, "errorCode"

    .line 103
    .line 104
    invoke-virtual {p2, v0}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    invoke-virtual {p2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lz7/p;->i()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string v3, "\u4e0d\u5728\u5bfc\u822a\u72b6\u6001"

    .line 123
    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_1

    .line 129
    .line 130
    return-object p1

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p2}, Lz7/p;->i()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-static {p2}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 152
    .line 153
    .line 154
    :catch_0
    :cond_2
    return-object p1

    .line 155
    :catch_1
    move-exception p1

    .line 156
    goto :goto_0

    .line 157
    :catch_2
    move-exception p1

    .line 158
    goto :goto_1

    .line 159
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    const-string v1, "{\"errorCode\":4,\"errorMessage\":\""

    .line 162
    .line 163
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {p1, p2, v0}, Lda/b;->b(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    return-object p1

    .line 171
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string v1, "{\"errorCode\":3,\"errorMessage\":\""

    .line 174
    .line 175
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    return-object p1

    .line 193
    :catch_3
    move-exception p1

    .line 194
    new-instance p2, Lz7/q;

    .line 195
    .line 196
    invoke-direct {p2, p1}, Lz7/q;-><init>(Ljava/lang/Exception;)V

    .line 197
    .line 198
    .line 199
    throw p2

    .line 200
    :cond_3
    :goto_2
    const-string p1, "\u767e\u5ea6\u5730\u56fe\u672a\u542f\u52a8"

    .line 201
    .line 202
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    const-string p1, "{\"errorCode\":12,\"errorMessage\":\"Service not bound\"}"

    .line 206
    .line 207
    return-object p1
.end method
