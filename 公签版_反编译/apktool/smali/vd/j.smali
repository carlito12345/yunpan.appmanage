.class public Lvd/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/Principal;
.implements Lvd/a;
.implements Ljava/io/Serializable;


# static fields
.field public static final f:Lorg/slf4j/Logger;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lvd/j;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvd/j;->f:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lvd/j;->e:[B

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lvd/j;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lvd/j;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lvd/j;->d:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lvd/j;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lvd/j;->e:[B

    if-eqz p2, :cond_1

    const/16 v0, 0x40

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 p1, v0, 0x1

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 13
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 15
    :cond_1
    :goto_0
    const-string v0, ""

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lvd/j;->b:Ljava/lang/String;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-object p2, v0

    .line 16
    :goto_2
    iput-object p2, p0, Lvd/j;->c:Ljava/lang/String;

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    move-object p3, v0

    .line 17
    :goto_3
    iput-object p3, p0, Lvd/j;->d:Ljava/lang/String;

    const/4 p1, 0x3

    .line 18
    iput p1, p0, Lvd/j;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lvc/b;Ljava/lang/String;[BZ)Lvd/o;
    .locals 4

    .line 1
    sget-object v0, Lvd/j;->f:Lorg/slf4j/Logger;

    .line 2
    .line 3
    const-string v1, "Have initial token "

    .line 4
    .line 5
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lwc/a;

    .line 10
    .line 11
    iget-boolean v2, v2, Lwc/a;->s:Z

    .line 12
    .line 13
    const-string v3, "cifs/"

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    new-instance p3, Lvd/i;

    .line 18
    .line 19
    invoke-direct {p3, p1, p0, p4}, Lvd/i;-><init>(Lvc/b;Lvd/j;Z)V

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lwc/a;

    .line 29
    .line 30
    iget-boolean p1, p1, Lwc/a;->t0:Z

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p3, Lvd/i;->l:Ljava/lang/String;

    .line 39
    .line 40
    :cond_0
    return-object p3

    .line 41
    :cond_1
    if-eqz p3, :cond_4

    .line 42
    .line 43
    :try_start_0
    array-length v2, p3

    .line 44
    if-lez v2, :cond_4

    .line 45
    .line 46
    new-instance v2, Lfe/a;

    .line 47
    .line 48
    invoke-direct {v2, p3}, Lfe/a;-><init>([B)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    if-eqz p3, :cond_2

    .line 56
    .line 57
    new-instance p3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-interface {v0, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception p3

    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception p1

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    :goto_0
    iget-object p3, v2, Lfe/a;->c:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 78
    .line 79
    if-eqz p3, :cond_4

    .line 80
    .line 81
    new-instance p3, Ljava/util/HashSet;

    .line 82
    .line 83
    iget-object v1, v2, Lfe/a;->c:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 84
    .line 85
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-direct {p3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 90
    .line 91
    .line 92
    sget-object v1, Lvd/i;->u:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 93
    .line 94
    invoke-virtual {p3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    if-eqz p3, :cond_3

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_3
    new-instance p3, Lvd/i0;

    .line 102
    .line 103
    const-string v1, "Server does not support NTLM authentication"

    .line 104
    .line 105
    invoke-direct {p3, v1}, Lvd/i0;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p3
    :try_end_0
    .catch Lvd/r; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_1
    const-string v1, "Ignoring invalid initial token"

    .line 110
    .line 111
    invoke-interface {v0, v1, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :goto_2
    throw p1

    .line 116
    :cond_4
    :goto_3
    new-instance p3, Lvd/j0;

    .line 117
    .line 118
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    new-instance v1, Lvd/i;

    .line 123
    .line 124
    invoke-direct {v1, p1, p0, p4}, Lvd/i;-><init>(Lvc/b;Lvd/j;Z)V

    .line 125
    .line 126
    .line 127
    if-eqz p2, :cond_5

    .line 128
    .line 129
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Lwc/a;

    .line 134
    .line 135
    iget-boolean p1, p1, Lwc/a;->t0:Z

    .line 136
    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iput-object p1, v1, Lvd/i;->l:Ljava/lang/String;

    .line 144
    .line 145
    :cond_5
    invoke-direct {p3, v0, v1}, Lvd/j0;-><init>(Lvc/f;Lvd/i;)V

    .line 146
    .line 147
    .line 148
    return-object p3
.end method

.method public final b(Lvc/b;[B)[B
    .locals 4

    .line 1
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lwc/a;

    .line 6
    .line 7
    iget v0, v0, Lwc/a;->r:I

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x5

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lvd/j;->d:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1, v0, p2}, Lvd/k;->d(Lvc/b;Ljava/lang/String;[B)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_0
    iget-object v0, p0, Lvd/j;->e:[B

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    .line 39
    new-array v0, v0, [B

    .line 40
    .line 41
    iput-object v0, p0, Lvd/j;->e:[B

    .line 42
    .line 43
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lwc/a;

    .line 48
    .line 49
    iget-object p1, p1, Lwc/a;->c:Ljava/security/SecureRandom;

    .line 50
    .line 51
    iget-object v0, p0, Lvd/j;->e:[B

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object p1, p0, Lvd/j;->b:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v0, p0, Lvd/j;->c:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v1, p0, Lvd/j;->d:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v2, p0, Lvd/j;->e:[B

    .line 63
    .line 64
    invoke-static {v1}, Lvd/k;->c(Ljava/lang/String;)[B

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {p1, v0, v1, p2, v2}, Lvd/k;->b(Ljava/lang/String;Ljava/lang/String;[B[B[B)[B

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :cond_2
    iget-object p1, p0, Lvd/j;->d:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {p1}, Lvd/k;->c(Ljava/lang/String;)[B

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/16 v0, 0x15

    .line 80
    .line 81
    new-array v0, v0, [B

    .line 82
    .line 83
    const/16 v1, 0x18

    .line 84
    .line 85
    new-array v1, v1, [B

    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    const/16 v3, 0x10

    .line 89
    .line 90
    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    .line 92
    .line 93
    invoke-static {v0, p2, v1}, Lvd/k;->a([B[B[B)V

    .line 94
    .line 95
    .line 96
    return-object v1

    .line 97
    :cond_3
    iget-object v0, p0, Lvd/j;->d:Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {p1, v0, p2}, Lvd/k;->d(Lvc/b;Ljava/lang/String;[B)[B

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1
.end method

.method public final c(Lvc/b;[B)[B
    .locals 5

    .line 1
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lwc/a;

    .line 6
    .line 7
    iget p1, p1, Lwc/a;->r:I

    .line 8
    .line 9
    const/16 v0, 0x10

    .line 10
    .line 11
    const/16 v1, 0x18

    .line 12
    .line 13
    const/16 v2, 0x15

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    if-eq p1, v4, :cond_1

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-eq p1, v4, :cond_1

    .line 23
    .line 24
    const/4 v4, 0x3

    .line 25
    if-eq p1, v4, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x4

    .line 28
    if-eq p1, v4, :cond_0

    .line 29
    .line 30
    const/4 v4, 0x5

    .line 31
    if-eq p1, v4, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lvd/j;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p1}, Lvd/k;->c(Ljava/lang/String;)[B

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-array v2, v2, [B

    .line 40
    .line 41
    new-array v1, v1, [B

    .line 42
    .line 43
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    invoke-static {v2, p2, v1}, Lvd/k;->a([B[B[B)V

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_0
    new-array p1, v3, [B

    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_1
    iget-object p1, p0, Lvd/j;->d:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {p1}, Lvd/k;->c(Ljava/lang/String;)[B

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-array v2, v2, [B

    .line 60
    .line 61
    new-array v1, v1, [B

    .line 62
    .line 63
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    invoke-static {v2, p2, v1}, Lvd/k;->a([B[B[B)V

    .line 67
    .line 68
    .line 69
    return-object v1
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lvd/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lvd/j;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lvd/j;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lvd/j;->b:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lvd/j;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lvd/j;->c:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p0, Lvd/j;->d:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v1, v0, Lvd/j;->d:Ljava/lang/String;

    .line 17
    .line 18
    iget v1, p0, Lvd/j;->a:I

    .line 19
    .line 20
    iput v1, v0, Lvd/j;->a:I

    .line 21
    .line 22
    return-object v0
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget v0, p0, Lvd/j;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lvd/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    check-cast p1, Lvd/j;

    .line 7
    .line 8
    iget-object v0, p1, Lvd/j;->b:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v2

    .line 19
    :goto_0
    iget-object v3, p0, Lvd/j;->b:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_1
    iget v3, p1, Lvd/j;->a:I

    .line 28
    .line 29
    iget v4, p0, Lvd/j;->a:I

    .line 30
    .line 31
    if-ne v3, v4, :cond_2

    .line 32
    .line 33
    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p1, Lvd/j;->c:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v2, p0, Lvd/j;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lvd/j;->d:Ljava/lang/String;

    .line 50
    .line 51
    iget-object p1, p1, Lvd/j;->d:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    :cond_2
    return v1
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget v0, p0, Lvd/j;->a:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lvd/j;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lvd/j;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "\\"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lvd/j;->c:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lvd/j;->c:Ljava/lang/String;

    .line 37
    .line 38
    :goto_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lvd/j;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lvd/j;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
