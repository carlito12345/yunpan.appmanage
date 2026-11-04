.class Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/AndroidBinXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# static fields
.field private static final TYPE_INT_BOOLEAN:I = 0x12

.field private static final TYPE_INT_DEC:I = 0x10

.field private static final TYPE_INT_HEX:I = 0x11

.field private static final TYPE_REFERENCE:I = 0x1

.field private static final TYPE_STRING:I = 0x3


# instance fields
.field private final mNameId:J

.field private final mNsId:J

.field private final mResourceMap:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

.field private final mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

.field private final mValueData:I

.field private final mValueType:I


# direct methods
.method private constructor <init>(JJIILcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mNsId:J

    .line 4
    iput-wide p3, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mNameId:J

    .line 5
    iput p5, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    .line 6
    iput p6, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueData:I

    .line 7
    iput-object p7, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    .line 8
    iput-object p8, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mResourceMap:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

    return-void
.end method

.method public synthetic constructor <init>(JJIILcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;Lcom/android/apksig/internal/apk/AndroidBinXmlParser$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;-><init>(JJIILcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;)V

    return-void
.end method


# virtual methods
.method public getBooleanValue()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueData:I

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0

    .line 15
    :cond_1
    new-instance v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Cannot coerce to boolean: value type "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public getIntValue()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "Cannot coerce to int: value type "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_0
    :pswitch_0
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueData:I

    .line 32
    .line 33
    return v0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mNameId:J

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getString(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getNameResourceId()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mResourceMap:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mNameId:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;->getResourceId(J)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mNsId:J

    .line 2
    .line 3
    const-wide v2, 0xffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    .line 13
    .line 14
    invoke-virtual {v2, v0, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getString(J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, ""

    .line 20
    .line 21
    :goto_0
    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-eq v0, v2, :cond_1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Cannot coerce to string: value type "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :pswitch_0
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueData:I

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "0x"

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueData:I

    .line 53
    .line 54
    invoke-static {v1, v0}, Lg/b;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0

    .line 59
    :pswitch_2
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueData:I

    .line 60
    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    .line 67
    .line 68
    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueData:I

    .line 69
    .line 70
    int-to-long v1, v1

    .line 71
    const-wide v3, 0xffffffffL

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    and-long/2addr v1, v3

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getString(J)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string v1, "@"

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueData:I

    .line 90
    .line 91
    invoke-static {v1, v0}, Lg/b;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValueType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    .line 2
    .line 3
    return v0
.end method
