.class Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CMSOutEncryptor"
.end annotation


# instance fields
.field protected algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected cipher:Ljavax/crypto/Cipher;

.field protected encKey:Ljavax/crypto/SecretKey;

.field final synthetic this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;-><init>(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)V

    return-void
.end method

.method private applyKdf(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    .line 2
    .line 3
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->encKey:Ljavax/crypto/SecretKey;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :try_start_0
    new-instance v2, Lorg/bouncycastle/crypto/params/HKDFParameters;

    .line 18
    .line 19
    invoke-static {}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$000()[B

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 24
    .line 25
    const-string v5, "DER"

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-direct {v2, v1, v3, v4}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([B[B[B)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 35
    .line 36
    .line 37
    array-length v2, v1

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generateBytes([BII)I

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 43
    .line 44
    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->encKey:Ljavax/crypto/SecretKey;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->cipher:Ljavax/crypto/Cipher;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-virtual {v1, v2, v0, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .line 58
    .line 59
    new-instance p2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 60
    .line 61
    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 62
    .line 63
    invoke-direct {p2, p1, p3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 67
    .line 68
    return-void

    .line 69
    :catch_0
    move-exception p1

    .line 70
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    .line 71
    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v0, "unable to initialize cipher: "

    .line 75
    .line 76
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1, p3}, Ll2/z;->m(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 84
    .line 85
    .line 86
    throw p2

    .line 87
    :catch_1
    move-exception p1

    .line 88
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    .line 89
    .line 90
    const-string p3, "unable to encode enc algorithm parameters"

    .line 91
    .line 92
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 93
    .line 94
    .line 95
    throw p2
.end method


# virtual methods
.method public init(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 3

    .line 1
    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->encKey:Ljavax/crypto/SecretKey;

    .line 2
    .line 3
    invoke-static {p5}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    .line 4
    .line 5
    .line 6
    move-result-object p5

    .line 7
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;

    .line 8
    .line 9
    invoke-static {v0}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$100(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->cipher:Ljavax/crypto/Cipher;

    .line 18
    .line 19
    if-nez p4, :cond_0

    .line 20
    .line 21
    iget-object p4, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;

    .line 22
    .line 23
    invoke-static {p4}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$100(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    invoke-virtual {p4, p2, p3, p5}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->generateParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;)Ljava/security/AlgorithmParameters;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    :cond_0
    const-string v0, "unable to initialize cipher: "

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-eqz p4, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;

    .line 37
    .line 38
    invoke-static {v2}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$100(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2, p2, p4}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getAlgorithmIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-direct {p0, p1, p4, p5}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->applyKdf(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->cipher:Ljavax/crypto/Cipher;

    .line 55
    .line 56
    invoke-virtual {p1, v1, p3, p4, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    .line 62
    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p3}, Ll2/z;->m(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 73
    .line 74
    .line 75
    throw p2

    .line 76
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->cipher:Ljavax/crypto/Cipher;

    .line 77
    .line 78
    invoke-virtual {v2, v1, p3, p4, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    .line 80
    .line 81
    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->cipher:Ljavax/crypto/Cipher;

    .line 82
    .line 83
    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    iget-object p4, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;

    .line 88
    .line 89
    invoke-static {p4}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$100(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    invoke-virtual {p4, p2, p3}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getAlgorithmIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 98
    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    invoke-direct {p0, p1, p3, p5}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->applyKdf(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_0
    return-void

    .line 105
    :catch_1
    move-exception p1

    .line 106
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    .line 107
    .line 108
    new-instance p3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {p1, p3}, Ll2/z;->m(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 118
    .line 119
    .line 120
    throw p2
.end method
