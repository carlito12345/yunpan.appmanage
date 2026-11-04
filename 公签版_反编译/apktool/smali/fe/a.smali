.class public final Lfe/a;
.super Lfe/c;
.source "SourceFile"


# static fields
.field public static final e:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field public final c:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 2
    .line 3
    const-string v1, "1.3.6.1.5.5.2"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lfe/a;->e:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>([B)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 6
    invoke-direct {p0}, Lfe/c;-><init>()V

    .line 7
    const-string v2, "Malformed SPNEGO token "

    const-string v3, "Malformed SPNEGO token: tag "

    const-string v4, "Malformed SPNEGO token, OID "

    new-instance v5, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v5, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 8
    :try_start_0
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz p1, :cond_a

    .line 9
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v6

    const/16 v7, 0x40

    if-ne v6, v7, :cond_a

    .line 10
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v6

    instance-of v6, v6, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v6, :cond_a

    .line 11
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 12
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 13
    sget-object v6, Lfe/a;->e:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 14
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 15
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-nez v2, :cond_8

    .line 16
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object p1

    .line 18
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 20
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    if-eqz v3, :cond_5

    if-eq v3, v1, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v2, "Malformed token field."

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 22
    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/DEROctetString;

    if-nez v3, :cond_2

    goto :goto_0

    .line 23
    :cond_2
    :goto_1
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    .line 25
    iput-object v2, p0, Lfe/c;->b:Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_3
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    .line 28
    iput-object v2, p0, Lfe/c;->a:Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_4
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    .line 31
    iput v2, p0, Lfe/a;->d:I

    goto :goto_0

    .line 32
    :cond_5
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v4, v3, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sub-int/2addr v3, v1

    :goto_2
    if-ltz v3, :cond_6

    .line 34
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 35
    :cond_6
    iput-object v4, p0, Lfe/a;->c:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 36
    :cond_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    return-void

    .line 37
    :cond_8
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_9
    new-instance p1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_a
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_3
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v2

    const-class v3, Ljava/lang/Throwable;

    :try_start_3
    const-string v4, "addSuppressed"

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v3, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :goto_4
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfe/c;-><init>()V

    .line 2
    iput-object p1, p0, Lfe/a;->c:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 3
    iput p2, p0, Lfe/a;->d:I

    .line 4
    iput-object p3, p0, Lfe/c;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lfe/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final i()[B
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lfe/a;->c:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 13
    .line 14
    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    :goto_0
    array-length v6, v1

    .line 19
    if-ge v5, v6, :cond_0

    .line 20
    .line 21
    aget-object v6, v1, v5

    .line 22
    .line 23
    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v5, v5, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 33
    .line 34
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    .line 35
    .line 36
    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v3, v2, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget v1, p0, Lfe/a;->d:I

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    new-instance v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 50
    .line 51
    new-instance v5, Lorg/bouncycastle/asn1/DERBitString;

    .line 52
    .line 53
    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v4, v3, v3, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v1, p0, Lfe/c;->a:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, [B

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    new-instance v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 69
    .line 70
    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    .line 71
    .line 72
    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 73
    .line 74
    .line 75
    const/4 v1, 0x2

    .line 76
    invoke-direct {v4, v3, v1, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iget-object v1, p0, Lfe/c;->b:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v1, [B

    .line 85
    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    new-instance v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 89
    .line 90
    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    .line 91
    .line 92
    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 93
    .line 94
    .line 95
    const/4 v1, 0x3

    .line 96
    invoke-direct {v4, v3, v1, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 103
    .line 104
    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 105
    .line 106
    .line 107
    sget-object v4, Lfe/a;->e:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 108
    .line 109
    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    .line 111
    .line 112
    new-instance v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 113
    .line 114
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    .line 115
    .line 116
    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {v4, v3, v2, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v3, "DER"

    .line 131
    .line 132
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1OutputStream;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    new-instance v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 137
    .line 138
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    .line 139
    .line 140
    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 141
    .line 142
    .line 143
    const/16 v1, 0x40

    .line 144
    .line 145
    invoke-direct {v4, v2, v1, v2, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZIILorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 152
    .line 153
    .line 154
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    return-object v0

    .line 156
    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :goto_2
    throw v1

    .line 167
    :goto_3
    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lfe/c;->b:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v1, [B

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    invoke-static {v1, v0, v2}, Lge/a;->m([BII)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    iget v2, p0, Lfe/a;->d:I

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p0, Lfe/a;->c:[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    .line 23
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x3

    .line 28
    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object v2, v4, v0

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    aput-object v3, v4, v0

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    aput-object v1, v4, v0

    .line 37
    .line 38
    const-string v0, "NegTokenInit[flags=%d,mechs=%s,mic=%s]"

    .line 39
    .line 40
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method
