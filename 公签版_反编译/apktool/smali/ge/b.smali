.class public abstract Lge/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/slf4j/Logger;

.field public static final b:Ljava/nio/charset/Charset;

.field public static final c:Ljava/nio/charset/Charset;

.field public static final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lge/b;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lge/b;->a:Lorg/slf4j/Logger;

    .line 8
    .line 9
    const-string v0, "UTF-16LE"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lge/b;->b:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    const-string v0, "US-ASCII"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lge/b;->c:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    const-string v0, "jcifs.maskSecretValue"

    .line 26
    .line 27
    const-string v1, "true"

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    sput-boolean v0, Lge/b;->d:Z

    .line 39
    .line 40
    return-void
.end method

.method public static a(II[B)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    add-int v1, p0, v0

    .line 3
    .line 4
    aget-byte v1, p2, v1

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    if-gt v0, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p0, Landroidx/fragment/app/b0;

    .line 14
    .line 15
    const-string p1, "zero termination not found"

    .line 16
    .line 17
    const/16 p2, 0xa

    .line 18
    .line 19
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_1
    return v0
.end method

.method public static b(II[B)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :cond_0
    add-int v1, p0, v0

    .line 3
    .line 4
    aget-byte v2, p2, v1

    .line 5
    .line 6
    if-nez v2, :cond_2

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    aget-byte v1, p2, v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v0

    .line 16
    :cond_2
    :goto_0
    add-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    if-le v0, p1, :cond_0

    .line 19
    .line 20
    sget-object v1, Lge/b;->a:Lorg/slf4j/Logger;

    .line 21
    .line 22
    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "Failed to find string termination with max length "

    .line 31
    .line 32
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p2, p0, v0}, Lge/a;->m([BII)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-interface {v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    new-instance p0, Landroidx/fragment/app/b0;

    .line 53
    .line 54
    const-string p1, "zero termination not found"

    .line 55
    .line 56
    const/16 p2, 0xa

    .line 57
    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/b0;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :goto_1
    throw p0

    .line 63
    :goto_2
    goto :goto_1
.end method

.method public static c([BIILvc/f;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    move-object v1, p3

    .line 4
    check-cast v1, Lwc/a;

    .line 5
    .line 6
    iget-object v1, v1, Lwc/a;->w:Ljava/lang/String;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    new-instance p1, Landroidx/fragment/app/b0;

    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v0, "Unsupported OEM encoding "

    .line 18
    .line 19
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p3, Lwc/a;

    .line 23
    .line 24
    iget-object p3, p3, Lwc/a;->w:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/16 p3, 0xa

    .line 34
    .line 35
    invoke-direct {p1, p3, p2, p0}, Landroidx/fragment/app/b0;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public static d(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [B

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static e(Ljava/lang/String;Lvc/f;)[B
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    new-array p0, p0, [B

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    :try_start_0
    move-object v0, p1

    .line 8
    check-cast v0, Lwc/a;

    .line 9
    .line 10
    iget-object v0, v0, Lwc/a;->w:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance v0, Landroidx/fragment/app/b0;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Unsupported OEM encoding "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast p1, Lwc/a;

    .line 28
    .line 29
    iget-object p1, p1, Lwc/a;->w:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/16 v1, 0xa

    .line 39
    .line 40
    invoke-direct {v0, v1, p1, p0}, Landroidx/fragment/app/b0;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method
