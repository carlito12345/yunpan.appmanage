.class public abstract Lcom/android/apksig/internal/apk/stamp/V1SourceStampSigner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/stamp/V1SourceStampSigner$SourceStampBlock;
    }
.end annotation


# static fields
.field public static final V1_SOURCE_STAMP_BLOCK_ID:I = 0x2b09189e


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/android/apksig/internal/util/Pair;Lcom/android/apksig/internal/util/Pair;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/apksig/internal/apk/stamp/V1SourceStampSigner;->lambda$generateSourceStampBlock$0(Lcom/android/apksig/internal/util/Pair;Lcom/android/apksig/internal/util/Pair;)I

    move-result p0

    return p0
.end method

.method public static generateSourceStampBlock(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;Ljava/util/Map;)Lcom/android/apksig/internal/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;",
            "Ljava/util/Map<",
            "Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;",
            "[B>;)",
            "Lcom/android/apksig/internal/util/Pair<",
            "[B",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    iget-object v2, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/util/Map$Entry;

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/ContentDigestAlgorithm;->getId()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, [B

    .line 55
    .line 56
    invoke-static {v4, v3}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    new-instance p1, La2/m;

    .line 65
    .line 66
    invoke-direct {p1, v1}, La2/m;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    .line 71
    .line 72
    new-instance p1, Lcom/android/apksig/internal/apk/stamp/V1SourceStampSigner$SourceStampBlock;

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    invoke-direct {p1, v3}, Lcom/android/apksig/internal/apk/stamp/V1SourceStampSigner$SourceStampBlock;-><init>(Lcom/android/apksig/internal/apk/stamp/V1SourceStampSigner$1;)V

    .line 76
    .line 77
    .line 78
    :try_start_0
    iget-object v3, p0, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;->certificates:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    iput-object v3, p1, Lcom/android/apksig/internal/apk/stamp/V1SourceStampSigner$SourceStampBlock;->stampCertificate:[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    invoke-static {v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(Ljava/util/List;)[B

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {p0, v2}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->generateSignaturesOverData(Lcom/android/apksig/internal/apk/ApkSigningBlockUtils$SignerConfig;[B)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    iput-object p0, p1, Lcom/android/apksig/internal/apk/stamp/V1SourceStampSigner$SourceStampBlock;->signedDigests:Ljava/util/List;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/android/apksig/internal/apk/stamp/V1SourceStampSigner$SourceStampBlock;->stampCertificate:[B

    .line 103
    .line 104
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(Ljava/util/List;)[B

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    new-array v1, v1, [[B

    .line 109
    .line 110
    aput-object p1, v1, v0

    .line 111
    .line 112
    const/4 p1, 0x1

    .line 113
    aput-object p0, v1, p1

    .line 114
    .line 115
    invoke-static {v1}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsSequenceOfLengthPrefixedElements([[B)[B

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-static {p0}, Lcom/android/apksig/internal/apk/ApkSigningBlockUtils;->encodeAsLengthPrefixedElement([B)[B

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    const p1, 0x2b09189e

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p0, p1}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :catch_0
    move-exception p0

    .line 136
    new-instance p1, Ljava/security/SignatureException;

    .line 137
    .line 138
    const-string v0, "Retrieving the encoded form of the stamp certificate failed"

    .line 139
    .line 140
    invoke-direct {p1, v0, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    throw p1

    .line 144
    :cond_1
    new-instance p0, Ljava/security/SignatureException;

    .line 145
    .line 146
    const-string p1, "No certificates configured for signer"

    .line 147
    .line 148
    invoke-direct {p0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :goto_1
    throw p0

    .line 153
    :goto_2
    goto :goto_1
.end method

.method private static synthetic lambda$generateSourceStampBlock$0(Lcom/android/apksig/internal/util/Pair;Lcom/android/apksig/internal/util/Pair;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
