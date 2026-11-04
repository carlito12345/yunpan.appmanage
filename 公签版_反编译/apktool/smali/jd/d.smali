.class public final Ljd/d;
.super Lid/c;
.source "SourceFile"

# interfaces
.implements Lad/f;


# static fields
.field public static final H:Lorg/slf4j/Logger;


# instance fields
.field public A:I

.field public B:I

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Z

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ljd/d;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ljd/d;->H:Lorg/slf4j/Logger;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvc/f;)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, p2, v0}, Lid/c;-><init>(Lvc/f;I)V

    .line 3
    .line 4
    .line 5
    const p2, 0x120089

    .line 6
    .line 7
    .line 8
    iput p2, p0, Ljd/d;->y:I

    .line 9
    .line 10
    const/4 p2, 0x3

    .line 11
    iput p2, p0, Ljd/d;->A:I

    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    iput p2, p0, Ljd/d;->B:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljd/d;->k(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final V()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljd/d;->E:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljd/d;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljd/d;->F:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\\"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ljd/d;->C:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final j()V
    .locals 2

    .line 1
    iget v0, p0, Lid/b;->b:I

    .line 2
    .line 3
    const/high16 v1, 0x10000000

    .line 4
    .line 5
    or-int/2addr v0, v1

    .line 6
    iput v0, p0, Lid/b;->b:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Ljd/d;->G:Z

    .line 10
    .line 11
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x5c

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-le v0, v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sub-int/2addr v0, v3

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    invoke-static {v3, v2, p1}, Landroid/support/v4/media/session/a;->l(IILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    :cond_1
    iput-object p1, p0, Ljd/d;->C:Ljava/lang/String;

    .line 43
    .line 44
    return-void
.end method

.method public final l0(I[B)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final p0(I[B)I
    .locals 12

    .line 1
    sget-object v0, Ljd/d;->H:Lorg/slf4j/Logger;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "Opening "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Ljd/d;->C:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lid/b;->b:I

    .line 29
    .line 30
    const/4 v2, 0x4

    .line 31
    invoke-static {v1, v2}, Lge/a;->l(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "Flags are "

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    const-wide/16 v0, 0x39

    .line 45
    .line 46
    invoke-static {v0, v1, p2, p1}, Lrd/a;->e(J[BI)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v0, p1, 0x2

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    aput-byte v1, p2, v0

    .line 53
    .line 54
    add-int/lit8 v0, p1, 0x3

    .line 55
    .line 56
    aput-byte v1, p2, v0

    .line 57
    .line 58
    add-int/lit8 v0, p1, 0x4

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    int-to-long v2, v2

    .line 62
    invoke-static {v2, v3, p2, v0}, Lrd/a;->f(J[BI)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v0, p1, 0x8

    .line 66
    .line 67
    const-wide/16 v2, 0x0

    .line 68
    .line 69
    invoke-static {v2, v3, p2, v0}, Lrd/a;->g(J[BI)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v0, p1, 0x18

    .line 73
    .line 74
    iget v4, p0, Ljd/d;->y:I

    .line 75
    .line 76
    int-to-long v4, v4

    .line 77
    invoke-static {v4, v5, p2, v0}, Lrd/a;->f(J[BI)V

    .line 78
    .line 79
    .line 80
    add-int/lit8 v0, p1, 0x1c

    .line 81
    .line 82
    iget v4, p0, Ljd/d;->z:I

    .line 83
    .line 84
    int-to-long v4, v4

    .line 85
    invoke-static {v4, v5, p2, v0}, Lrd/a;->f(J[BI)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v0, p1, 0x20

    .line 89
    .line 90
    iget v4, p0, Ljd/d;->A:I

    .line 91
    .line 92
    int-to-long v4, v4

    .line 93
    invoke-static {v4, v5, p2, v0}, Lrd/a;->f(J[BI)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 v0, p1, 0x24

    .line 97
    .line 98
    iget v4, p0, Ljd/d;->B:I

    .line 99
    .line 100
    int-to-long v4, v4

    .line 101
    invoke-static {v4, v5, p2, v0}, Lrd/a;->f(J[BI)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v0, p1, 0x28

    .line 105
    .line 106
    int-to-long v4, v1

    .line 107
    invoke-static {v4, v5, p2, v0}, Lrd/a;->f(J[BI)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v0, p1, 0x2c

    .line 111
    .line 112
    iget-object v6, p0, Ljd/d;->C:Ljava/lang/String;

    .line 113
    .line 114
    sget-object v7, Lj$/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 115
    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    array-length v7, v6

    .line 121
    int-to-long v7, v7

    .line 122
    add-int/lit8 v9, p1, 0x2e

    .line 123
    .line 124
    invoke-static {v7, v8, p2, v9}, Lrd/a;->e(J[BI)V

    .line 125
    .line 126
    .line 127
    add-int/lit8 v7, p1, 0x30

    .line 128
    .line 129
    add-int/lit8 v8, p1, 0x34

    .line 130
    .line 131
    add-int/lit8 v9, p1, 0x38

    .line 132
    .line 133
    iget v10, p0, Lid/b;->d:I

    .line 134
    .line 135
    sub-int v10, v9, v10

    .line 136
    .line 137
    int-to-long v10, v10

    .line 138
    invoke-static {v10, v11, p2, v0}, Lrd/a;->e(J[BI)V

    .line 139
    .line 140
    .line 141
    array-length v0, v6

    .line 142
    invoke-static {v6, v1, p2, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    .line 144
    .line 145
    array-length v0, v6

    .line 146
    if-nez v0, :cond_1

    .line 147
    .line 148
    add-int/lit8 v0, p1, 0x39

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    array-length v0, v6

    .line 152
    add-int/2addr v0, v9

    .line 153
    :goto_0
    invoke-virtual {p0, v0}, Lid/b;->k0(I)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    add-int/2addr v1, v0

    .line 158
    invoke-static {v2, v3, p2, v7}, Lrd/a;->f(J[BI)V

    .line 159
    .line 160
    .line 161
    invoke-static {v4, v5, p2, v8}, Lrd/a;->f(J[BI)V

    .line 162
    .line 163
    .line 164
    sub-int/2addr v1, p1

    .line 165
    return v1
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljd/d;->E:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Ljd/d;->F:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Ljd/d;->D:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public final q0(Lvc/b;)Lid/d;
    .locals 2

    .line 1
    new-instance v0, Ljd/e;

    .line 2
    .line 3
    invoke-interface {p1}, Lvc/b;->e()Lvc/f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v1, p0, Ljd/d;->C:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, p1}, Ljd/e;-><init>(Ljava/lang/String;Lvc/f;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final size()I
    .locals 2

    .line 1
    iget-object v0, p0, Ljd/d;->C:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Lid/b;->o0(II)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/lit8 v0, v0, 0x78

    .line 19
    .line 20
    invoke-static {v0, v1}, Lid/b;->o0(II)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lid/b;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ",name="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Ljd/d;->C:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v1, ",resolveDfs="

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p0, Ljd/d;->G:Z

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "]"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method
