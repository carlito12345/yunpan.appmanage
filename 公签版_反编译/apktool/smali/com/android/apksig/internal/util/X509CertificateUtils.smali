.class public Lcom/android/apksig/internal/util/X509CertificateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BEGIN_CERT_HEADER:[B

.field public static final END_CERT_FOOTER:[B

.field private static sCertFactory:Ljava/security/cert/CertificateFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "-----BEGIN CERTIFICATE-----"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->BEGIN_CERT_HEADER:[B

    .line 8
    .line 9
    const-string v0, "-----END CERTIFICATE-----"

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->END_CERT_FOOTER:[B

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static buildCertFactory()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    const-string v0, "X.509"

    .line 7
    .line 8
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    const-string v2, "Failed to create X.509 CertificateFactory"

    .line 19
    .line 20
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v1
.end method

.method public static generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/internal/util/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Failed to parse certificate"

    invoke-direct {v0, v1, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static generateCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 1

    .line 4
    sget-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/android/apksig/internal/util/X509CertificateUtils;->buildCertFactory()V

    .line 6
    :cond_0
    sget-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    invoke-static {p0, v0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificate([BLjava/security/cert/CertificateFactory;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static generateCertificate([BLjava/security/cert/CertificateFactory;)Ljava/security/cert/X509Certificate;
    .locals 3

    .line 7
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8
    :catch_0
    :try_start_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->getNextDEREncodedCertificateBlock(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 11
    const-class v1, Lcom/android/apksig/internal/x509/Certificate;

    invoke-static {p0, v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/x509/Certificate;

    .line 12
    invoke-static {v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    .line 13
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 14
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    new-array v1, v1, [B

    .line 15
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 17
    new-instance p0, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    invoke-direct {p0, p1, v1}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V
    :try_end_1
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/apksig/internal/asn1/Asn1EncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    .line 18
    :goto_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "Failed to parse certificate"

    invoke-direct {p1, v0, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/apksig/internal/util/X509CertificateUtils;->buildCertFactory()V

    .line 3
    :cond_0
    sget-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    invoke-static {p0, v0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificates(Ljava/io/InputStream;Ljava/security/cert/CertificateFactory;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static generateCertificates(Ljava/io/InputStream;Ljava/security/cert/CertificateFactory;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/security/cert/CertificateFactory;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/internal/util/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 5
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 6
    :catch_0
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {p0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->getNextDEREncodedCertificateBlock(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    .line 11
    const-class v3, Lcom/android/apksig/internal/x509/Certificate;

    invoke-static {v1, v3}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/x509/Certificate;

    .line 12
    invoke-static {v3}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    .line 13
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 14
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v4

    sub-int/2addr v4, v2

    new-array v4, v4, [B

    .line 15
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 17
    new-instance v1, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    invoke-direct {v1, v3, v4}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/apksig/internal/asn1/Asn1EncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :cond_0
    return-object v0

    .line 19
    :goto_1
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "Failed to parse certificates"

    invoke-direct {p1, v0, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 20
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "Failed to read the input stream"

    invoke-direct {p1, v0, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private static getNextDEREncodedCertificateBlock(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    if-eqz p0, :cond_a

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lcom/android/apksig/internal/util/X509CertificateUtils;->BEGIN_CERT_HEADER:[B

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    sget-object v1, Lcom/android/apksig/internal/util/X509CertificateUtils;->BEGIN_CERT_HEADER:[B

    .line 18
    .line 19
    array-length v2, v1

    .line 20
    if-ge v0, v2, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    aget-byte v1, v1, v0

    .line 27
    .line 28
    if-eq v2, v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    :goto_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    int-to-char v1, v1

    .line 53
    const/16 v2, 0x2d

    .line 54
    .line 55
    if-ne v1, v2, :cond_3

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_5
    :goto_2
    const/4 v1, 0x1

    .line 70
    :goto_3
    sget-object v2, Lcom/android/apksig/internal/util/X509CertificateUtils;->END_CERT_FOOTER:[B

    .line 71
    .line 72
    array-length v3, v2

    .line 73
    if-ge v1, v3, :cond_8

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_7

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    aget-byte v2, v2, v1

    .line 86
    .line 87
    if-ne v3, v2, :cond_6

    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_6
    new-instance p0, Ljava/security/cert/CertificateException;

    .line 93
    .line 94
    const-string v0, "The provided input contains the PEM certificate header without a valid certificate footer"

    .line 95
    .line 96
    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_7
    new-instance p0, Ljava/security/cert/CertificateException;

    .line 101
    .line 102
    const-string v0, "The provided input contains the PEM certificate header but does not contain sufficient data for the footer"

    .line 103
    .line 104
    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0

    .line 108
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/4 v1, 0x2

    .line 113
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    :goto_4
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_9

    .line 126
    .line 127
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    int-to-char v2, v2

    .line 132
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_9

    .line 137
    .line 138
    add-int/lit8 v1, v1, 0x1

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_9
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    .line 143
    .line 144
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    return-object p0

    .line 149
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    .line 150
    .line 151
    const-string v0, "The certificateBuffer cannot be null"

    .line 152
    .line 153
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_6

    .line 157
    :goto_5
    throw p0

    .line 158
    :goto_6
    goto :goto_5
.end method
