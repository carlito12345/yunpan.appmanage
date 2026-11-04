.class public Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject$Serializer;
.super Lcom/hierynomus/asn1/ASN1Serializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hierynomus/asn1/ASN1Serializer<",
        "Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/hierynomus/asn1/encodingrules/ASN1Encoder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hierynomus/asn1/ASN1Serializer;-><init>(Lcom/hierynomus/asn1/encodingrules/ASN1Encoder;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private calculateBytes(Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p1}, Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;->access$200(Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;)Lcom/hierynomus/asn1/types/ASN1Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Lcom/hierynomus/asn1/ASN1OutputStream;

    .line 13
    .line 14
    iget-object v5, p0, Lcom/hierynomus/asn1/ASN1Serializer;->encoder:Lcom/hierynomus/asn1/encodingrules/ASN1Encoder;

    .line 15
    .line 16
    invoke-direct {v4, v5, v3}, Lcom/hierynomus/asn1/ASN1OutputStream;-><init>(Lcom/hierynomus/asn1/encodingrules/ASN1Encoder;Ljava/io/OutputStream;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-static {p1}, Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;->access$300(Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;)Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    invoke-virtual {v4, v2}, Lcom/hierynomus/asn1/ASN1OutputStream;->writeObject(Lcom/hierynomus/asn1/types/ASN1Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v2}, Lcom/hierynomus/asn1/types/ASN1Object;->getTag()Lcom/hierynomus/asn1/types/ASN1Tag;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget-object v6, p0, Lcom/hierynomus/asn1/ASN1Serializer;->encoder:Lcom/hierynomus/asn1/encodingrules/ASN1Encoder;

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Lcom/hierynomus/asn1/types/ASN1Tag;->newSerializer(Lcom/hierynomus/asn1/encodingrules/ASN1Encoder;)Lcom/hierynomus/asn1/ASN1Serializer;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5, v2, v4}, Lcom/hierynomus/asn1/ASN1Serializer;->serialize(Lcom/hierynomus/asn1/types/ASN1Object;Lcom/hierynomus/asn1/ASN1OutputStream;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {p1, v2}, Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;->access$102(Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catchall_1
    move-exception v2

    .line 60
    const-class v3, Ljava/lang/Throwable;

    .line 61
    .line 62
    :try_start_2
    const-string v4, "addSuppressed"

    .line 63
    .line 64
    new-array v5, v1, [Ljava/lang/Class;

    .line 65
    .line 66
    aput-object v3, v5, v0

    .line 67
    .line 68
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    new-array v1, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object v2, v1, v0

    .line 75
    .line 76
    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    .line 78
    .line 79
    :catch_0
    :goto_2
    throw p1
.end method


# virtual methods
.method public bridge synthetic serialize(Lcom/hierynomus/asn1/types/ASN1Object;Lcom/hierynomus/asn1/ASN1OutputStream;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;

    invoke-virtual {p0, p1, p2}, Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject$Serializer;->serialize(Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;Lcom/hierynomus/asn1/ASN1OutputStream;)V

    return-void
.end method

.method public serialize(Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;Lcom/hierynomus/asn1/ASN1OutputStream;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;->access$100(Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject$Serializer;->calculateBytes(Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;)V

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;->access$100(Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public bridge synthetic serializedLength(Lcom/hierynomus/asn1/types/ASN1Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;

    invoke-virtual {p0, p1}, Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject$Serializer;->serializedLength(Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;)I

    move-result p1

    return p1
.end method

.method public serializedLength(Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;)I
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;->access$100(Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;)[B

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject$Serializer;->calculateBytes(Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;)V

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;->access$100(Lcom/hierynomus/asn1/types/constructed/ASN1TaggedObject;)[B

    move-result-object p1

    array-length p1, p1

    return p1
.end method
