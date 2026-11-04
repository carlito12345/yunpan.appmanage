.class public final Lcom/android/apksig/internal/asn1/Asn1DerEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;,
        Lcom/android/apksig/internal/asn1/Asn1DerEncoder$JavaToDerConverter;,
        Lcom/android/apksig/internal/asn1/Asn1DerEncoder$ByteArrayLexicographicComparator;
    }
.end annotation


# static fields
.field public static final ASN1_DER_NULL:Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [B

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;-><init>([B)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->ASN1_DER_NULL:Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    .line 13
    .line 14
    return-void

    .line 15
    :array_0
    .array-data 1
        0x5t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->lambda$toSequence$0(Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->getMemberFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1000(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSetOf(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1100(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSequenceOf(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(IZI[[B)[B
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$300(I)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toInteger(I)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$400(J)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toInteger(J)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$500(Ljava/math/BigInteger;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toInteger(Ljava/math/BigInteger;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$600(Z)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toBoolean(Z)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$700(Ljava/lang/String;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toOid(Ljava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$800(Ljava/lang/Object;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSequence(Ljava/lang/Object;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$900(Ljava/lang/Object;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toChoice(Ljava/lang/Object;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static varargs createTag(IZI[[B)[B
    .locals 9

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    if-ge p2, v0, :cond_7

    .line 4
    .line 5
    const/4 v0, 0x6

    .line 6
    shl-int/2addr p0, v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/16 p1, 0x20

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    or-int/2addr p0, p1

    .line 15
    or-int/2addr p0, p2

    .line 16
    int-to-byte p0, p0

    .line 17
    array-length p1, p3

    .line 18
    const/4 p2, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_1
    if-ge p2, p1, :cond_1

    .line 21
    .line 22
    aget-object v3, p3, p2

    .line 23
    .line 24
    array-length v3, v3

    .line 25
    add-int/2addr v2, v3

    .line 26
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/16 p1, 0x80

    .line 30
    .line 31
    const/4 p2, 0x2

    .line 32
    const/4 v3, 0x1

    .line 33
    if-ge v2, p1, :cond_2

    .line 34
    .line 35
    add-int/lit8 p1, v2, 0x2

    .line 36
    .line 37
    new-array p1, p1, [B

    .line 38
    .line 39
    aput-byte p0, p1, v1

    .line 40
    .line 41
    int-to-byte p0, v2

    .line 42
    aput-byte p0, p1, v3

    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_2
    const/4 p1, 0x3

    .line 47
    const/16 v4, 0xff

    .line 48
    .line 49
    if-gt v2, v4, :cond_3

    .line 50
    .line 51
    add-int/lit8 v0, v2, 0x3

    .line 52
    .line 53
    new-array v0, v0, [B

    .line 54
    .line 55
    const/16 v4, -0x7f

    .line 56
    .line 57
    aput-byte v4, v0, v3

    .line 58
    .line 59
    int-to-byte v2, v2

    .line 60
    aput-byte v2, v0, p2

    .line 61
    .line 62
    move-object p1, v0

    .line 63
    const/4 v0, 0x3

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    const v5, 0xffff

    .line 66
    .line 67
    .line 68
    const/4 v6, 0x4

    .line 69
    if-gt v2, v5, :cond_4

    .line 70
    .line 71
    add-int/lit8 v0, v2, 0x4

    .line 72
    .line 73
    new-array v0, v0, [B

    .line 74
    .line 75
    const/16 v5, -0x7e

    .line 76
    .line 77
    aput-byte v5, v0, v3

    .line 78
    .line 79
    shr-int/lit8 v3, v2, 0x8

    .line 80
    .line 81
    int-to-byte v3, v3

    .line 82
    aput-byte v3, v0, p2

    .line 83
    .line 84
    and-int/lit16 p2, v2, 0xff

    .line 85
    .line 86
    int-to-byte p2, p2

    .line 87
    aput-byte p2, v0, p1

    .line 88
    .line 89
    move-object p1, v0

    .line 90
    const/4 v0, 0x4

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    const v5, 0xffffff

    .line 93
    .line 94
    .line 95
    const/4 v7, 0x5

    .line 96
    if-gt v2, v5, :cond_5

    .line 97
    .line 98
    add-int/lit8 v0, v2, 0x5

    .line 99
    .line 100
    new-array v0, v0, [B

    .line 101
    .line 102
    const/16 v5, -0x7d

    .line 103
    .line 104
    aput-byte v5, v0, v3

    .line 105
    .line 106
    shr-int/lit8 v3, v2, 0x10

    .line 107
    .line 108
    int-to-byte v3, v3

    .line 109
    aput-byte v3, v0, p2

    .line 110
    .line 111
    shr-int/lit8 p2, v2, 0x8

    .line 112
    .line 113
    and-int/2addr p2, v4

    .line 114
    int-to-byte p2, p2

    .line 115
    aput-byte p2, v0, p1

    .line 116
    .line 117
    and-int/lit16 p1, v2, 0xff

    .line 118
    .line 119
    int-to-byte p1, p1

    .line 120
    aput-byte p1, v0, v6

    .line 121
    .line 122
    move-object p1, v0

    .line 123
    const/4 v0, 0x5

    .line 124
    goto :goto_2

    .line 125
    :cond_5
    add-int/lit8 v5, v2, 0x6

    .line 126
    .line 127
    new-array v5, v5, [B

    .line 128
    .line 129
    const/16 v8, -0x7c

    .line 130
    .line 131
    aput-byte v8, v5, v3

    .line 132
    .line 133
    shr-int/lit8 v3, v2, 0x18

    .line 134
    .line 135
    int-to-byte v3, v3

    .line 136
    aput-byte v3, v5, p2

    .line 137
    .line 138
    shr-int/lit8 p2, v2, 0x10

    .line 139
    .line 140
    and-int/2addr p2, v4

    .line 141
    int-to-byte p2, p2

    .line 142
    aput-byte p2, v5, p1

    .line 143
    .line 144
    shr-int/lit8 p1, v2, 0x8

    .line 145
    .line 146
    and-int/2addr p1, v4

    .line 147
    int-to-byte p1, p1

    .line 148
    aput-byte p1, v5, v6

    .line 149
    .line 150
    and-int/lit16 p1, v2, 0xff

    .line 151
    .line 152
    int-to-byte p1, p1

    .line 153
    aput-byte p1, v5, v7

    .line 154
    .line 155
    move-object p1, v5

    .line 156
    :goto_2
    aput-byte p0, p1, v1

    .line 157
    .line 158
    move p2, v0

    .line 159
    :goto_3
    array-length p0, p3

    .line 160
    const/4 v0, 0x0

    .line 161
    :goto_4
    if-ge v0, p0, :cond_6

    .line 162
    .line 163
    aget-object v2, p3, v0

    .line 164
    .line 165
    array-length v3, v2

    .line 166
    invoke-static {v2, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    .line 168
    .line 169
    array-length v2, v2

    .line 170
    add-int/2addr p2, v2

    .line 171
    add-int/lit8 v0, v0, 0x1

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_6
    return-object p1

    .line 175
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 176
    .line 177
    const-string p1, "High tag numbers not supported: "

    .line 178
    .line 179
    invoke-static {p2, p1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_6

    .line 187
    :goto_5
    throw p0

    .line 188
    :goto_6
    goto :goto_5
.end method

.method public static encode(Ljava/lang/Object;)[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/android/apksig/internal/asn1/Asn1Class;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/android/apksig/internal/compat/ClassCompat;->getDeclaredAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/android/apksig/internal/asn1/Asn1Class;

    .line 12
    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    invoke-interface {v2}, Lcom/android/apksig/internal/asn1/Asn1Class;->type()Lcom/android/apksig/internal/asn1/Asn1Type;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    aget v1, v1, v2

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-eq v1, v2, :cond_2

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    if-eq v1, v3, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    if-ne v1, v3, :cond_0

    .line 35
    .line 36
    invoke-static {p0, v2}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSequence(Ljava/lang/Object;Z)[B

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "Unsupported container type: "

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_1
    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSequence(Ljava/lang/Object;)[B

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_2
    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toChoice(Ljava/lang/Object;)[B

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_3
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, " not annotated with "

    .line 86
    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {p0, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0
.end method

.method private static getAnnotatedFields(Ljava/lang/Object;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    array-length v3, v1

    .line 12
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    .line 14
    .line 15
    array-length v3, v1

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    if-ge v4, v3, :cond_2

    .line 18
    .line 19
    aget-object v5, v1, v4

    .line 20
    .line 21
    const-class v6, Lcom/android/apksig/internal/asn1/Asn1Field;

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    check-cast v7, Lcom/android/apksig/internal/asn1/Asn1Field;

    .line 28
    .line 29
    if-nez v7, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 37
    .line 38
    .line 39
    move-result v8

    .line 40
    const-string v9, "."

    .line 41
    .line 42
    if-nez v8, :cond_1

    .line 43
    .line 44
    :try_start_0
    new-instance v6, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;

    .line 45
    .line 46
    invoke-direct {v6, p0, v5, v7}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Lcom/android/apksig/internal/asn1/Asn1Field;)V
    :try_end_0
    .catch Lcom/android/apksig/internal/asn1/Asn1EncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 57
    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v3, "Invalid ASN.1 annotation on "

    .line 61
    .line 62
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-direct {v1, v0, p0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v1

    .line 90
    :cond_1
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, " used on a static field: "

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_2
    return-object v2
.end method

.method private static getMemberFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "Failed to read "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, "."

    .line 28
    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {v1, p0, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v1
.end method

.method private static synthetic lambda$toSequence$0(Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-virtual {p1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    sub-int/2addr p0, p1

    .line 18
    return p0
.end method

.method private static toBoolean(Z)[B
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [B

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    aput-byte v2, v1, v2

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    aput-byte v0, v1, v2

    .line 11
    .line 12
    :goto_0
    new-array p0, v0, [[B

    .line 13
    .line 14
    aput-object v1, p0, v2

    .line 15
    .line 16
    invoke-static {v2, v2, v0, p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method private static toChoice(Ljava/lang/Object;)[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->getAnnotatedFields(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_4

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {p0, v4}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->getMemberFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    move-object v2, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v4, "Multiple non-null fields in CHOICE class "

    .line 51
    .line 52
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ": "

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ", "

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-direct {p0, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_2
    if-eqz v2, :cond_3

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->toDer()[B

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :cond_3
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v1, "No non-null fields in CHOICE class "

    .line 116
    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0

    .line 125
    :cond_4
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v2, "No fields annotated with "

    .line 130
    .line 131
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-class v2, Lcom/android/apksig/internal/asn1/Asn1Field;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v2, " in CHOICE class "

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-direct {p0, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :goto_1
    throw p0

    .line 164
    :goto_2
    goto :goto_1
.end method

.method private static toInteger(I)[B
    .locals 2

    int-to-long v0, p0

    .line 1
    invoke-static {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toInteger(J)[B

    move-result-object p0

    return-object p0
.end method

.method private static toInteger(J)[B
    .locals 0

    .line 2
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toInteger(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0
.end method

.method private static toInteger(Ljava/math/BigInteger;)[B
    .locals 2

    .line 3
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x2

    .line 4
    invoke-static {v1, v1, p0, v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static toOid(Ljava/lang/String;)[B
    .locals 11

    .line 1
    const/16 v0, 0x28

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x7f

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    const-string v4, "Node #"

    .line 8
    .line 9
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    .line 10
    .line 11
    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v6, "\\."

    .line 15
    .line 16
    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    array-length v7, v6

    .line 21
    const/4 v8, 0x2

    .line 22
    if-lt v7, v8, :cond_8

    .line 23
    .line 24
    :try_start_0
    aget-object p0, v6, v1

    .line 25
    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 30
    const/4 v7, 0x6

    .line 31
    if-gt p0, v7, :cond_7

    .line 32
    .line 33
    if-ltz p0, :cond_7

    .line 34
    .line 35
    :try_start_1
    aget-object v9, v6, v3

    .line 36
    .line 37
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    if-ge v9, v0, :cond_6

    .line 42
    .line 43
    if-ltz v9, :cond_6

    .line 44
    .line 45
    mul-int/lit8 v0, p0, 0x28

    .line 46
    .line 47
    add-int/2addr v0, v9

    .line 48
    const/16 v10, 0xff

    .line 49
    .line 50
    if-gt v0, v10, :cond_5

    .line 51
    .line 52
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    .line 54
    .line 55
    :goto_0
    array-length p0, v6

    .line 56
    if-ge v8, p0, :cond_4

    .line 57
    .line 58
    aget-object p0, v6, v8

    .line 59
    .line 60
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    if-ltz p0, :cond_3

    .line 65
    .line 66
    if-gt p0, v2, :cond_0

    .line 67
    .line 68
    invoke-virtual {v5, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    const/16 v0, 0x4000

    .line 73
    .line 74
    if-ge p0, v0, :cond_1

    .line 75
    .line 76
    shr-int/lit8 v0, p0, 0x7

    .line 77
    .line 78
    or-int/lit16 v0, v0, 0x80

    .line 79
    .line 80
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 81
    .line 82
    .line 83
    and-int/2addr p0, v2

    .line 84
    invoke-virtual {v5, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/high16 v0, 0x200000

    .line 89
    .line 90
    if-ge p0, v0, :cond_2

    .line 91
    .line 92
    shr-int/lit8 v0, p0, 0xe

    .line 93
    .line 94
    or-int/lit16 v0, v0, 0x80

    .line 95
    .line 96
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 97
    .line 98
    .line 99
    shr-int/lit8 v0, p0, 0x7

    .line 100
    .line 101
    and-int/2addr v0, v2

    .line 102
    or-int/lit16 v0, v0, 0x80

    .line 103
    .line 104
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 105
    .line 106
    .line 107
    and-int/2addr p0, v2

    .line 108
    invoke-virtual {v5, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 109
    .line 110
    .line 111
    :goto_1
    add-int/2addr v8, v3

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 114
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    add-int/2addr v8, v3

    .line 121
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v2, " too large: "

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_3
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 141
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v2, "Invalid value for node #"

    .line 145
    .line 146
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    add-int/2addr v8, v3

    .line 150
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, ": "

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :catch_0
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 170
    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    add-int/2addr v8, v3

    .line 177
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v2, " not numeric: "

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v0

    .line 196
    :cond_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    new-array v0, v3, [[B

    .line 201
    .line 202
    aput-object p0, v0, v1

    .line 203
    .line 204
    invoke-static {v1, v1, v7, v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    return-object p0

    .line 209
    :cond_5
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 210
    .line 211
    const-string v1, "First two nodes out of range: "

    .line 212
    .line 213
    const-string v2, "."

    .line 214
    .line 215
    invoke-static {v1, p0, v9, v2}, Landroid/support/v4/media/session/a;->o(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_6
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 224
    .line 225
    const-string v0, "Invalid value for node #2: "

    .line 226
    .line 227
    invoke-static {v9, v0}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-direct {p0, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p0

    .line 235
    :catch_1
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 236
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v1, "Node #2 not numeric: "

    .line 240
    .line 241
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    aget-object v1, v6, v3

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-direct {p0, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    throw p0

    .line 257
    :cond_7
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 258
    .line 259
    const-string v1, "Invalid value for node #1: "

    .line 260
    .line 261
    invoke-static {p0, v1}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v0

    .line 269
    :catch_2
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 270
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    const-string v2, "Node #1 not numeric: "

    .line 274
    .line 275
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    aget-object v1, v6, v1

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-direct {p0, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    throw p0

    .line 291
    :cond_8
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    .line 292
    .line 293
    const-string v1, "OBJECT IDENTIFIER must contain at least two nodes: "

    .line 294
    .line 295
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    goto :goto_3

    .line 303
    :goto_2
    throw v0

    .line 304
    :goto_3
    goto :goto_2
.end method

.method private static toSequence(Ljava/lang/Object;)[B
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSequence(Ljava/lang/Object;Z)[B

    move-result-object p0

    return-object p0
.end method

.method private static toSequence(Ljava/lang/Object;Z)[B
    .locals 8

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->getAnnotatedFields(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 4
    new-instance v1, Lcom/android/apksig/internal/asn1/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/apksig/internal/asn1/a;-><init>(I)V

    invoke-static {p0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "."

    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    move-result v7

    if-eq v6, v7, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance p0, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Fields have the same index: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v4}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and ."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v5}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    move-object v4, v5

    goto :goto_0

    .line 12
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;

    .line 14
    :try_start_0
    invoke-virtual {v6}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->toDer()[B

    move-result-object v6
    :try_end_0
    .catch Lcom/android/apksig/internal/asn1/Asn1EncodingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    .line 15
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    array-length v6, v6

    add-int/2addr v5, v6

    goto :goto_2

    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to encode "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v6}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    if-eqz p1, :cond_6

    .line 20
    new-array p0, v5, [B

    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 22
    array-length v2, v1

    invoke-static {v1, v4, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_3

    :cond_5
    return-object p0

    .line 24
    :cond_6
    new-array p0, v4, [[B

    .line 25
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    const/16 p1, 0x10

    .line 26
    invoke-static {v4, v3, p1, p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static toSequenceOf(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Lcom/android/apksig/internal/asn1/Asn1Type;",
            ")[B"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSequenceOrSetOf(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;Z)[B

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static toSequenceOrSetOf(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;Z)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Lcom/android/apksig/internal/asn1/Asn1Type;",
            "Z)[B"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v1, p1, v2}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$JavaToDerConverter;->toDer(Ljava/lang/Object;Lcom/android/apksig/internal/asn1/Asn1Type;Lcom/android/apksig/internal/asn1/Asn1Type;)[B

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x1

    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-le p1, p0, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$ByteArrayLexicographicComparator;->access$000()Lcom/android/apksig/internal/asn1/Asn1DerEncoder$ByteArrayLexicographicComparator;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    const/16 p1, 0x11

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/16 p1, 0x10

    .line 53
    .line 54
    :goto_1
    const/4 p2, 0x0

    .line 55
    new-array v1, p2, [[B

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, [[B

    .line 62
    .line 63
    invoke-static {p2, p0, p1, v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->createTag(IZI[[B)[B

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method private static toSetOf(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Lcom/android/apksig/internal/asn1/Asn1Type;",
            ")[B"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->toSequenceOrSetOf(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;Z)[B

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method
