.class public Lcom/android/apksig/internal/apk/AndroidBinXmlParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;,
        Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;,
        Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;,
        Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;,
        Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;
    }
.end annotation


# static fields
.field public static final EVENT_END_DOCUMENT:I = 0x2

.field public static final EVENT_END_ELEMENT:I = 0x4

.field public static final EVENT_START_DOCUMENT:I = 0x1

.field public static final EVENT_START_ELEMENT:I = 0x3

.field private static final NO_NAMESPACE:J = 0xffffffffL

.field public static final VALUE_TYPE_BOOLEAN:I = 0x4

.field public static final VALUE_TYPE_INT:I = 0x2

.field public static final VALUE_TYPE_REFERENCE:I = 0x3

.field public static final VALUE_TYPE_STRING:I = 0x1

.field public static final VALUE_TYPE_UNSUPPORTED:I


# instance fields
.field private mCurrentElementAttrSizeBytes:I

.field private mCurrentElementAttributeCount:I

.field private mCurrentElementAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentElementAttributesContents:Ljava/nio/ByteBuffer;

.field private mCurrentElementName:Ljava/lang/String;

.field private mCurrentElementNamespace:Ljava/lang/String;

.field private mCurrentEvent:I

.field private mDepth:I

.field private mResourceMap:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

.field private mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

.field private final mXml:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    .line 6
    .line 7
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->get(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getType()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x3

    .line 30
    if-ne v1, v2, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 34
    :goto_1
    if-eqz v0, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getContents()Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mXml:Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    return-void

    .line 43
    :cond_3
    new-instance p1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 44
    .line 45
    const-string v0, "No XML chunk in file"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :goto_2
    throw p1

    .line 52
    :goto_3
    goto :goto_2
.end method

.method public static synthetic access$100(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$200(Ljava/nio/ByteBuffer;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static synthetic access$300(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$400(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->sliceFromTo(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$500(Ljava/nio/ByteBuffer;I)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic access$600(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt8(Ljava/nio/ByteBuffer;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    if-ltz p1, :cond_1

    .line 7
    .line 8
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributeCount:I

    .line 9
    .line 10
    if-ge p1, v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->parseCurrentElementAttributesIfNotParsed()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributes:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "index must be <= attr count ("

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributeCount:I

    .line 34
    .line 35
    const-string v2, ")"

    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/a;->s(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 46
    .line 47
    const-string v0, "index must be >= 0"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 54
    .line 55
    const-string v0, "Current event not a START_ELEMENT"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method private static getUnsignedInt16(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const v0, 0xffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p0, v0

    .line 9
    return p0
.end method

.method private static getUnsignedInt32(Ljava/nio/ByteBuffer;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static getUnsignedInt32(Ljava/nio/ByteBuffer;I)J
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    int-to-long p0, p0

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private static getUnsignedInt8(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    and-int/lit16 p0, p0, 0xff

    .line 6
    .line 7
    return p0
.end method

.method private parseCurrentElementAttributesIfNotParsed()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributes:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributeCount:I

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributes:Ljava/util/List;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributeCount:I

    .line 17
    .line 18
    if-ge v0, v1, :cond_1

    .line 19
    .line 20
    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttrSizeBytes:I

    .line 21
    .line 22
    mul-int v2, v0, v1

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributesContents:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    add-int/2addr v1, v2

    .line 27
    invoke-static {v3, v2, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    add-int/lit8 v2, v2, 0x7

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt8(Ljava/nio/ByteBuffer;)I

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    iget-object v12, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributes:Ljava/util/List;

    .line 57
    .line 58
    new-instance v13, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    .line 59
    .line 60
    long-to-int v8, v1

    .line 61
    iget-object v9, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    .line 62
    .line 63
    iget-object v10, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mResourceMap:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

    .line 64
    .line 65
    const/4 v11, 0x0

    .line 66
    move-object v2, v13

    .line 67
    invoke-direct/range {v2 .. v11}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;-><init>(JJIILcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;Lcom/android/apksig/internal/apk/AndroidBinXmlParser$1;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    return-void
.end method

.method private static sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 3

    if-ltz p1, :cond_2

    if-lt p2, p1, :cond_1

    .line 19
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    .line 20
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-gt p2, v1, :cond_0

    .line 21
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 22
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    const/4 v2, 0x0

    .line 23
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 24
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 25
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 27
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 29
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 30
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_0
    move-exception p1

    .line 31
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 32
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 33
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 34
    throw p1

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "end > capacity: "

    const-string v1, " > "

    .line 36
    invoke-static {p1, p2, v0, v1}, Landroid/support/v4/media/session/a;->o(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "end < start: "

    const-string v1, " < "

    .line 39
    invoke-static {v0, p2, p1, v1}, Landroid/support/v4/media/session/a;->o(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "start: "

    .line 42
    invoke-static {p1, p2}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static sliceFromTo(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    cmp-long v0, p3, p1

    if-ltz v0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, p3, v1

    if-gtz v3, :cond_0

    long-to-int p2, p1

    long-to-int p1, p3

    .line 3
    invoke-static {p0, p2, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "end > capacity: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " > "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "end < start: "

    const-string v1, " < "

    .line 6
    invoke-static {p3, p4, v0, v1}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 7
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p3, "start: "

    .line 9
    invoke-static {p1, p2, p3}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAttributeBooleanValue(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->getBooleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getAttributeCount()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    return v0

    .line 8
    :cond_0
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributeCount:I

    .line 9
    .line 10
    return v0
.end method

.method public getAttributeIntValue(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->getIntValue()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getAttributeNameResourceId(I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->getNameResourceId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->getNamespace()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getAttributeStringValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->getStringValue()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getAttributeValueType(I)I
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->getValueType()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x3

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq p1, v1, :cond_1

    .line 12
    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :pswitch_0
    const/4 p1, 0x4

    .line 21
    return p1

    .line 22
    :pswitch_1
    const/4 p1, 0x2

    .line 23
    return p1

    .line 24
    :cond_0
    return v1

    .line 25
    :cond_1
    return v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDepth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mDepth:I

    .line 2
    .line 3
    return v0
.end method

.method public getEventType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    .line 2
    .line 3
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementName:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementNamespace:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public next()I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x4

    .line 7
    if-ne v1, v3, :cond_0

    .line 8
    .line 9
    iget v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mDepth:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    iput v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mDepth:I

    .line 13
    .line 14
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mXml:Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_10

    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mXml:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->get(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_1
    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getType()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eq v4, v2, :cond_e

    .line 37
    .line 38
    const/16 v5, 0x180

    .line 39
    .line 40
    if-eq v4, v5, :cond_c

    .line 41
    .line 42
    const/16 v5, 0x102

    .line 43
    .line 44
    const-string v6, ""

    .line 45
    .line 46
    const-wide v7, 0xffffffffL

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    const-string v9, " bytes"

    .line 52
    .line 53
    const-string v10, "Named element encountered before string pool"

    .line 54
    .line 55
    const/4 v11, 0x0

    .line 56
    if-eq v4, v5, :cond_6

    .line 57
    .line 58
    const/16 v5, 0x103

    .line 59
    .line 60
    if-eq v4, v5, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    .line 64
    .line 65
    if-eqz v2, :cond_5

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getContents()Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const/16 v4, 0x8

    .line 76
    .line 77
    if-lt v2, v4, :cond_4

    .line 78
    .line 79
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v4

    .line 83
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v1

    .line 87
    iget-object v9, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    .line 88
    .line 89
    invoke-virtual {v9, v1, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getString(J)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput-object v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementName:Ljava/lang/String;

    .line 94
    .line 95
    cmp-long v1, v4, v7

    .line 96
    .line 97
    if-nez v1, :cond_3

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    iget-object v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    .line 101
    .line 102
    invoke-virtual {v1, v4, v5}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getString(J)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    :goto_1
    iput-object v6, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementNamespace:Ljava/lang/String;

    .line 107
    .line 108
    iput v3, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    .line 109
    .line 110
    iput-object v11, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributes:Ljava/util/List;

    .line 111
    .line 112
    iput-object v11, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributesContents:Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    return v3

    .line 115
    :cond_4
    new-instance v2, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 116
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    const-string v4, "End element chunk too short. Need at least 8 bytes. Available: "

    .line 120
    .line 121
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-direct {v2, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v2

    .line 142
    :cond_5
    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 143
    .line 144
    invoke-direct {v1, v10}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v1

    .line 148
    :cond_6
    iget-object v3, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    .line 149
    .line 150
    if-eqz v3, :cond_b

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getContents()Ljava/nio/ByteBuffer;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    const/16 v4, 0x14

    .line 161
    .line 162
    if-lt v3, v4, :cond_a

    .line 163
    .line 164
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v3

    .line 168
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    .line 169
    .line 170
    .line 171
    move-result-wide v9

    .line 172
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    .line 177
    .line 178
    .line 179
    move-result v12

    .line 180
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    .line 181
    .line 182
    .line 183
    move-result v13

    .line 184
    int-to-long v14, v5

    .line 185
    move-wide/from16 v16, v3

    .line 186
    .line 187
    int-to-long v2, v13

    .line 188
    int-to-long v7, v12

    .line 189
    mul-long v2, v2, v7

    .line 190
    .line 191
    add-long/2addr v2, v14

    .line 192
    const/4 v4, 0x0

    .line 193
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    const-string v7, ", max: "

    .line 201
    .line 202
    if-gt v5, v4, :cond_9

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    int-to-long v4, v4

    .line 209
    cmp-long v8, v2, v4

    .line 210
    .line 211
    if-gtz v8, :cond_8

    .line 212
    .line 213
    iget-object v4, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    .line 214
    .line 215
    invoke-virtual {v4, v9, v10}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getString(J)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    iput-object v4, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementName:Ljava/lang/String;

    .line 220
    .line 221
    const-wide v4, 0xffffffffL

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    cmp-long v7, v16, v4

    .line 227
    .line 228
    if-nez v7, :cond_7

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_7
    iget-object v4, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    .line 232
    .line 233
    move-wide/from16 v5, v16

    .line 234
    .line 235
    invoke-virtual {v4, v5, v6}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getString(J)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    :goto_2
    iput-object v6, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementNamespace:Ljava/lang/String;

    .line 240
    .line 241
    iput v13, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributeCount:I

    .line 242
    .line 243
    iput-object v11, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributes:Ljava/util/List;

    .line 244
    .line 245
    iput v12, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttrSizeBytes:I

    .line 246
    .line 247
    invoke-static {v1, v14, v15, v2, v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->sliceFromTo(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    iput-object v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributesContents:Ljava/nio/ByteBuffer;

    .line 252
    .line 253
    iget v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mDepth:I

    .line 254
    .line 255
    const/4 v2, 0x1

    .line 256
    add-int/2addr v1, v2

    .line 257
    iput v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mDepth:I

    .line 258
    .line 259
    const/4 v1, 0x3

    .line 260
    iput v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    .line 261
    .line 262
    return v1

    .line 263
    :cond_8
    new-instance v4, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 264
    .line 265
    const-string v5, "Attributes end offset out of bounds: "

    .line 266
    .line 267
    invoke-static {v2, v3, v5, v7}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-direct {v4, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw v4

    .line 286
    :cond_9
    new-instance v2, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 287
    .line 288
    const-string v3, "Attributes start offset out of bounds: "

    .line 289
    .line 290
    invoke-static {v3, v5, v7}, Lg/b;->n(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-direct {v2, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw v2

    .line 309
    :cond_a
    new-instance v2, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 310
    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    const-string v4, "Start element chunk too short. Need at least 20 bytes. Available: "

    .line 314
    .line 315
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-direct {v2, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw v2

    .line 336
    :cond_b
    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 337
    .line 338
    invoke-direct {v1, v10}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v1

    .line 342
    :cond_c
    iget-object v4, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mResourceMap:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

    .line 343
    .line 344
    if-nez v4, :cond_d

    .line 345
    .line 346
    new-instance v4, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

    .line 347
    .line 348
    invoke-direct {v4, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;-><init>(Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;)V

    .line 349
    .line 350
    .line 351
    iput-object v4, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mResourceMap:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :cond_d
    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 356
    .line 357
    const-string v2, "Multiple resource maps not supported"

    .line 358
    .line 359
    invoke-direct {v1, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw v1

    .line 363
    :cond_e
    iget-object v4, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    .line 364
    .line 365
    if-nez v4, :cond_f

    .line 366
    .line 367
    new-instance v4, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    .line 368
    .line 369
    invoke-direct {v4, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;-><init>(Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;)V

    .line 370
    .line 371
    .line 372
    iput-object v4, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    .line 373
    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :cond_f
    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 377
    .line 378
    const-string v2, "Multiple string pools not supported"

    .line 379
    .line 380
    invoke-direct {v1, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v1

    .line 384
    :cond_10
    :goto_3
    const/4 v1, 0x2

    .line 385
    iput v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    .line 386
    .line 387
    return v1
.end method
