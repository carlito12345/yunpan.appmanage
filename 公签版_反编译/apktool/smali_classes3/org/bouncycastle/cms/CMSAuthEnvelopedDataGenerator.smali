.class public Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;
.super Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;-><init>()V

    return-void
.end method

.method private doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/cms/CMSAuthEnvelopedData;
    .locals 11

    .line 1
    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;->recipientInfoGenerators:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lorg/bouncycastle/cms/CMSUtils;->getRecipentInfos(Lorg/bouncycastle/operator/GenericKey;Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-interface {p2, v1}, Lorg/bouncycastle/operator/OutputEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    sget-object v3, Lorg/bouncycastle/cms/CMSAlgorithm;->ChaCha20Poly1305:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 21
    .line 22
    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->authAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 37
    .line 38
    invoke-static {v3, p2}, Lorg/bouncycastle/cms/CMSUtils;->processAuthAttrSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/asn1/ASN1Set;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {p1, v2}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    move-object v8, v3

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto :goto_2

    .line 49
    :cond_0
    invoke-interface {p1, v2}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->authAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 53
    .line 54
    invoke-static {v3, p2}, Lorg/bouncycastle/cms/CMSUtils;->processAuthAttrSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/asn1/ASN1Set;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    goto :goto_0

    .line 59
    :goto_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {p2}, Lorg/bouncycastle/operator/AADProcessor;->getMAC()[B

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {p1, p2, v1}, Lorg/bouncycastle/cms/CMSUtils;->getEncryptedContentInfo(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;[B)Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    iget-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->unauthAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 75
    .line 76
    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->getAttrDLSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/asn1/ASN1Set;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    new-instance p1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 81
    .line 82
    sget-object p2, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authEnvelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 83
    .line 84
    new-instance v1, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;

    .line 85
    .line 86
    iget-object v5, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    .line 87
    .line 88
    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    .line 89
    .line 90
    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 91
    .line 92
    .line 93
    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    .line 94
    .line 95
    invoke-direct {v9, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 96
    .line 97
    .line 98
    move-object v4, v1

    .line 99
    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, p2, v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 103
    .line 104
    .line 105
    new-instance p2, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    .line 106
    .line 107
    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    .line 108
    .line 109
    .line 110
    return-object p2

    .line 111
    :goto_2
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    .line 112
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v1, "unable to process authenticated content: "

    .line 116
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v0}, Landroid/support/v4/media/session/a;->n(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 125
    .line 126
    .line 127
    goto :goto_4

    .line 128
    :goto_3
    throw p2

    .line 129
    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/cms/CMSAuthEnvelopedData;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;->doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    move-result-object p1

    return-object p1
.end method
