.class public Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;
.source "SourceFile"


# static fields
.field private static ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;


# instance fields
.field private ephemeralKP:Ljava/security/KeyPair;

.field private helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

.field private keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

.field private random:Ljava/security/SecureRandom;

.field private recipientIDs:Ljava/util/List;

.field private recipientKeys:Ljava/util/List;

.field private senderPrivateKey:Ljava/security/PrivateKey;

.field private senderPublicKey:Ljava/security/PublicKey;

.field private userKeyingMaterial:[B

.field private wrappingHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/RFC5753KeyMaterialGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/RFC5753KeyMaterialGenerator;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/PrivateKey;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    invoke-interface {p3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p1, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;

    invoke-direct {p1}, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientKeys:Ljava/util/List;

    new-instance p1, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance p4, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {p4}, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    invoke-direct {p1, p4}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->wrappingHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->senderPublicKey:Ljava/security/PublicKey;

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->cleanPrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->senderPrivateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method private init(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/security/SecureRandom;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    .line 11
    .line 12
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isMQV(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ephemeralKP:Ljava/security/KeyPair;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->senderPublicKey:Ljava/security/PublicKey;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createAlgorithmParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/AlgorithmParameters;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyPairGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/KeyPairGenerator;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    .line 70
    .line 71
    invoke-virtual {p1, v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ephemeralKP:Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p1

    .line 82
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 83
    .line 84
    const-string v1, "cannot determine MQV ephemeral key pair parameters from public key: "

    .line 85
    .line 86
    invoke-static {p1, v1}, Ll2/z;->e(Ljava/lang/Exception;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addRecipient(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getIssuerAndSerialNumber(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientKeys:Ljava/util/List;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRecipient([BLjava/security/PublicKey;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientKeys:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public generateRecipientEncryptedKeys(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_b

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->init(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->senderPrivateKey:Ljava/security/PrivateKey;

    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 23
    .line 24
    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eq v3, v4, :cond_a

    .line 36
    .line 37
    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientKeys:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/security/PublicKey;

    .line 44
    .line 45
    iget-object v5, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    .line 52
    .line 53
    :try_start_0
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isMQV(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_0

    .line 62
    .line 63
    new-instance v7, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;

    .line 64
    .line 65
    iget-object v8, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ephemeralKP:Ljava/security/KeyPair;

    .line 66
    .line 67
    iget-object v9, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    .line 68
    .line 69
    invoke-direct {v7, v8, v4, v9}, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;-><init>(Ljava/security/KeyPair;Ljava/security/PublicKey;[B)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catch_0
    move-exception p1

    .line 74
    goto/16 :goto_6

    .line 75
    .line 76
    :catch_1
    move-exception p1

    .line 77
    goto/16 :goto_7

    .line 78
    .line 79
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isEC(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_1

    .line 84
    .line 85
    sget-object v7, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

    .line 86
    .line 87
    iget-object v8, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    .line 88
    .line 89
    invoke-interface {v8, v6}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    iget-object v9, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    .line 94
    .line 95
    invoke-interface {v7, p2, v8, v9}, Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;->generateKDFMaterial(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I[B)[B

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    new-instance v8, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    .line 100
    .line 101
    invoke-direct {v8, v7}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    .line 102
    .line 103
    .line 104
    :goto_1
    move-object v7, v8

    .line 105
    goto :goto_2

    .line 106
    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isRFC2631(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 107
    .line 108
    .line 109
    move-result v7
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    const-string v8, "User keying material must be set for static keys."

    .line 111
    .line 112
    if-eqz v7, :cond_4

    .line 113
    .line 114
    :try_start_1
    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    .line 115
    .line 116
    if-eqz v7, :cond_2

    .line 117
    .line 118
    new-instance v8, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    .line 119
    .line 120
    invoke-direct {v8, v7}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    sget-object v7, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_SSDH:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 125
    .line 126
    invoke-virtual {p1, v7}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-nez v7, :cond_3

    .line 131
    .line 132
    const/4 v7, 0x0

    .line 133
    goto :goto_2

    .line 134
    :cond_3
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    .line 135
    .line 136
    invoke-direct {p1, v8}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p1

    .line 140
    :cond_4
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isGOST(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_9

    .line 145
    .line 146
    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    .line 147
    .line 148
    if-eqz v7, :cond_8

    .line 149
    .line 150
    new-instance v8, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    .line 151
    .line 152
    invoke-direct {v8, v7}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :goto_2
    iget-object v8, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 157
    .line 158
    invoke-virtual {v8, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyAgreement(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyAgreement;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    iget-object v9, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    .line 163
    .line 164
    invoke-virtual {v8, v0, v7, v9}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 165
    .line 166
    .line 167
    const/4 v7, 0x1

    .line 168
    invoke-virtual {v8, v4, v7}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    invoke-virtual {v8, v4}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->wrappingHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 180
    .line 181
    if-eqz v7, :cond_5

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_5
    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    .line 185
    .line 186
    :goto_3
    invoke-virtual {v7, v6}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    sget-object v9, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_None_KeyWrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 191
    .line 192
    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    const/4 v10, 0x3

    .line 197
    if-nez v9, :cond_7

    .line 198
    .line 199
    sget-object v9, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_CryptoPro_KeyWrap:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 200
    .line 201
    invoke-virtual {v6, v9}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eqz v6, :cond_6

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_6
    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    .line 209
    .line 210
    invoke-virtual {v8, v10, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, p3}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v8, v4}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    .line 222
    .line 223
    invoke-direct {v6, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_7
    :goto_4
    new-instance v6, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;

    .line 228
    .line 229
    sget-object v9, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->id_Gost28147_89_CryptoPro_A_ParamSet:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 230
    .line 231
    iget-object v11, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    .line 232
    .line 233
    invoke-direct {v6, v9, v11}, Lorg/bouncycastle/jcajce/spec/GOST28147WrapParameterSpec;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v8, v10, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7, p3}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    invoke-virtual {v8, v4}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    new-instance v6, Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;

    .line 248
    .line 249
    array-length v7, v4

    .line 250
    add-int/lit8 v7, v7, -0x4

    .line 251
    .line 252
    invoke-static {v4, v2, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 253
    .line 254
    .line 255
    move-result-object v7

    .line 256
    array-length v8, v4

    .line 257
    add-int/lit8 v8, v8, -0x4

    .line 258
    .line 259
    array-length v9, v4

    .line 260
    invoke-static {v4, v8, v9}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    invoke-direct {v6, v7, v4}, Lorg/bouncycastle/asn1/cryptopro/Gost2814789EncryptedKey;-><init>([B[B)V

    .line 265
    .line 266
    .line 267
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    .line 268
    .line 269
    const-string v7, "DER"

    .line 270
    .line 271
    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    invoke-direct {v4, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 276
    .line 277
    .line 278
    move-object v6, v4

    .line 279
    :goto_5
    new-instance v4, Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;

    .line 280
    .line 281
    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;-><init>(Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 285
    .line 286
    .line 287
    add-int/lit8 v3, v3, 0x1

    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_8
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    .line 292
    .line 293
    invoke-direct {p1, v8}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw p1

    .line 297
    :cond_9
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    .line 298
    .line 299
    new-instance p3, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string v0, "Unknown key agreement algorithm: "

    .line 305
    .line 306
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw p2
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    :goto_6
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    .line 321
    .line 322
    new-instance p3, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v0, "unable to encode wrapped key: "

    .line 325
    .line 326
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-static {p1, p3}, Landroid/support/v4/media/session/a;->n(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p3

    .line 333
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 334
    .line 335
    .line 336
    throw p2

    .line 337
    :goto_7
    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    .line 338
    .line 339
    new-instance p3, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    const-string v0, "cannot perform agreement step: "

    .line 342
    .line 343
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    invoke-static {p1, p3}, Ll2/z;->m(Ljava/security/GeneralSecurityException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p3

    .line 350
    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 351
    .line 352
    .line 353
    throw p2

    .line 354
    :cond_a
    new-instance p1, Lorg/bouncycastle/asn1/DERSequence;

    .line 355
    .line 356
    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 357
    .line 358
    .line 359
    return-object p1

    .line 360
    :cond_b
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    .line 361
    .line 362
    const-string p2, "No recipients associated with generator - use addRecipient()"

    .line 363
    .line 364
    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    goto :goto_9

    .line 368
    :goto_8
    throw p1

    .line 369
    :goto_9
    goto :goto_8
.end method

.method public getUserKeyingMaterial(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->init(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ephemeralKP:Ljava/security/KeyPair;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;->createOriginatorPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    new-instance v0, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    .line 33
    .line 34
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    .line 35
    .line 36
    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    .line 37
    .line 38
    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    .line 58
    .line 59
    .line 60
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-object p1

    .line 62
    :goto_0
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v2, "unable to encode user keying material: "

    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v1}, Landroid/support/v4/media/session/a;->n(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    .line 80
    .line 81
    return-object p1
.end method

.method public setKeyWrappingProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->wrappingHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setKeyWrappingProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->wrappingHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 2

    .line 2
    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public setUserKeyingMaterial([B)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    return-object p0
.end method
