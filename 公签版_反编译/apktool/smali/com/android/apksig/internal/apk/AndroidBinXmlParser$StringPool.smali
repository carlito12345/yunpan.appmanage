.class Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/AndroidBinXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringPool"
.end annotation


# static fields
.field private static final FLAG_UTF8:I = 0x100


# instance fields
.field private final mCachedStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChunkContents:Ljava/nio/ByteBuffer;

.field private final mStringCount:I

.field private final mStringsSection:Ljava/nio/ByteBuffer;

.field private final mUtf8Encoded:Z


# direct methods
.method public constructor <init>(Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mCachedStrings:Ljava/util/Map;

    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getHeader()Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x8

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/16 v4, 0x14

    .line 31
    .line 32
    if-lt v3, v4, :cond_6

    .line 33
    .line 34
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$200(Ljava/nio/ByteBuffer;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    const-wide/32 v5, 0x7fffffff

    .line 39
    .line 40
    .line 41
    cmp-long v7, v3, v5

    .line 42
    .line 43
    if-gtz v7, :cond_5

    .line 44
    .line 45
    long-to-int v4, v3

    .line 46
    iput v4, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringCount:I

    .line 47
    .line 48
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$200(Ljava/nio/ByteBuffer;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v7

    .line 52
    cmp-long v3, v7, v5

    .line 53
    .line 54
    if-gtz v3, :cond_4

    .line 55
    .line 56
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$200(Ljava/nio/ByteBuffer;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v5

    .line 60
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$200(Ljava/nio/ByteBuffer;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v9

    .line 64
    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$200(Ljava/nio/ByteBuffer;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v11

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getContents()Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-wide/16 v13, 0x0

    .line 73
    .line 74
    if-lez v4, :cond_2

    .line 75
    .line 76
    int-to-long v3, v2

    .line 77
    move-wide v15, v5

    .line 78
    sub-long v5, v9, v3

    .line 79
    .line 80
    long-to-int v2, v5

    .line 81
    cmp-long v5, v7, v13

    .line 82
    .line 83
    if-lez v5, :cond_1

    .line 84
    .line 85
    cmp-long v5, v11, v9

    .line 86
    .line 87
    if-ltz v5, :cond_0

    .line 88
    .line 89
    sub-long/2addr v11, v3

    .line 90
    long-to-int v3, v11

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 93
    .line 94
    const-string v2, "Styles offset ("

    .line 95
    .line 96
    const-string v3, ") < strings offset ("

    .line 97
    .line 98
    invoke-static {v11, v12, v2, v3}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const-string v3, ")"

    .line 103
    .line 104
    invoke-static {v2, v9, v10, v3}, Landroid/support/v4/media/session/a;->t(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-direct {v1, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v1

    .line 112
    :cond_1
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    :goto_0
    invoke-static {v1, v2, v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$300(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iput-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    move-wide v15, v5

    .line 125
    const/4 v2, 0x0

    .line 126
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    iput-object v3, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    .line 131
    .line 132
    :goto_1
    const-wide/16 v3, 0x100

    .line 133
    .line 134
    and-long/2addr v3, v15

    .line 135
    cmp-long v5, v3, v13

    .line 136
    .line 137
    if-eqz v5, :cond_3

    .line 138
    .line 139
    const/4 v3, 0x1

    .line 140
    goto :goto_2

    .line 141
    :cond_3
    const/4 v3, 0x0

    .line 142
    :goto_2
    iput-boolean v3, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mUtf8Encoded:Z

    .line 143
    .line 144
    iput-object v1, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mChunkContents:Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    return-void

    .line 147
    :cond_4
    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 148
    .line 149
    const-string v2, "Too many styles: "

    .line 150
    .line 151
    invoke-static {v7, v8, v2}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-direct {v1, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v1

    .line 159
    :cond_5
    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 160
    .line 161
    const-string v2, "Too many strings: "

    .line 162
    .line 163
    invoke-static {v3, v4, v2}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-direct {v1, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v1

    .line 171
    :cond_6
    new-instance v2, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 172
    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v4, "XML chunk\'s header too short. Required at least 20 bytes. Available: "

    .line 176
    .line 177
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v1, " bytes"

    .line 188
    .line 189
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-direct {v2, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw v2
.end method

.method private static getLengthPrefixedUtf16EncodedString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$100(Ljava/nio/ByteBuffer;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x8000

    .line 6
    .line 7
    .line 8
    and-int/2addr v1, v0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    and-int/lit16 v0, v0, 0x7fff

    .line 12
    .line 13
    shl-int/lit8 v0, v0, 0x10

    .line 14
    .line 15
    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$100(Ljava/nio/ByteBuffer;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    or-int/2addr v0, v1

    .line 20
    :cond_0
    const v1, 0x3fffffff    # 1.9999999f

    .line 21
    .line 22
    .line 23
    if-gt v0, v1, :cond_3

    .line 24
    .line 25
    mul-int/lit8 v0, v0, 0x2

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    add-int/2addr v3, v2

    .line 46
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-int/2addr v2, v0

    .line 51
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-array v1, v0, [B

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    .line 60
    const/4 v3, 0x0

    .line 61
    :goto_0
    add-int p0, v3, v0

    .line 62
    .line 63
    aget-byte v2, v1, p0

    .line 64
    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    add-int/lit8 p0, p0, 0x1

    .line 68
    .line 69
    aget-byte p0, v1, p0

    .line 70
    .line 71
    if-nez p0, :cond_2

    .line 72
    .line 73
    :try_start_0
    new-instance p0, Ljava/lang/String;

    .line 74
    .line 75
    const-string v2, "UTF-16LE"

    .line 76
    .line 77
    invoke-direct {p0, v1, v3, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    return-object p0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    .line 83
    .line 84
    const-string v1, "UTF-16LE character encoding not supported"

    .line 85
    .line 86
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_2
    new-instance p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 91
    .line 92
    const-string v0, "UTF-16 encoded form of string not NULL terminated"

    .line 93
    .line 94
    invoke-direct {p0, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :cond_3
    new-instance p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 99
    .line 100
    const-string v1, "String too long: "

    .line 101
    .line 102
    const-string v2, " uint16s"

    .line 103
    .line 104
    invoke-static {v1, v0, v2}, Lg/b;->i(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {p0, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0
.end method

.method private static getLengthPrefixedUtf8EncodedString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$600(Ljava/nio/ByteBuffer;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0x80

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$600(Ljava/nio/ByteBuffer;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$600(Ljava/nio/ByteBuffer;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    and-int/lit16 v1, v0, 0x80

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    and-int/lit8 v0, v0, 0x7f

    .line 21
    .line 22
    shl-int/lit8 v0, v0, 0x8

    .line 23
    .line 24
    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$600(Ljava/nio/ByteBuffer;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    or-int/2addr v0, v1

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    add-int/2addr v3, v2

    .line 48
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    add-int/2addr v2, v0

    .line 53
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    new-array v1, v0, [B

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    :goto_0
    add-int p0, v3, v0

    .line 64
    .line 65
    aget-byte p0, v1, p0

    .line 66
    .line 67
    if-nez p0, :cond_3

    .line 68
    .line 69
    :try_start_0
    new-instance p0, Ljava/lang/String;

    .line 70
    .line 71
    const-string v2, "UTF-8"

    .line 72
    .line 73
    invoke-direct {p0, v1, v3, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    .line 79
    .line 80
    const-string v1, "UTF-8 character encoding not supported"

    .line 81
    .line 82
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_3
    new-instance p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 87
    .line 88
    const-string v0, "UTF-8 encoded form of string not NULL terminated"

    .line 89
    .line 90
    invoke-direct {p0, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method


# virtual methods
.method public getString(J)Ljava/lang/String;
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const-string v2, "Unsuported string index: "

    .line 4
    .line 5
    cmp-long v3, p1, v0

    .line 6
    .line 7
    if-ltz v3, :cond_4

    .line 8
    .line 9
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringCount:I

    .line 10
    .line 11
    int-to-long v0, v0

    .line 12
    const-string v3, ", max: "

    .line 13
    .line 14
    cmp-long v4, p1, v0

    .line 15
    .line 16
    if-gez v4, :cond_3

    .line 17
    .line 18
    long-to-int p2, p1

    .line 19
    iget-object p1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mCachedStrings:Ljava/util/Map;

    .line 20
    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/String;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mChunkContents:Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    mul-int/lit8 v0, p2, 0x4

    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$500(Ljava/nio/ByteBuffer;I)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    iget-object p1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    int-to-long v4, p1

    .line 49
    cmp-long p1, v0, v4

    .line 50
    .line 51
    if-gez p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    long-to-int v1, v0

    .line 56
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    .line 58
    .line 59
    iget-boolean p1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mUtf8Encoded:Z

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getLengthPrefixedUtf8EncodedString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getLengthPrefixedUtf16EncodedString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mCachedStrings:Ljava/util/Map;

    .line 77
    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    return-object p1

    .line 86
    :cond_2
    new-instance p1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v4, "Offset of string idx "

    .line 91
    .line 92
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p2, " out of bounds: "

    .line 99
    .line 100
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    add-int/lit8 p2, p2, -0x1

    .line 116
    .line 117
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-direct {p1, p2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_3
    new-instance v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 129
    .line 130
    invoke-static {p1, p2, v2, v3}, Landroid/support/v4/media/session/a;->w(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget p2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringCount:I

    .line 135
    .line 136
    add-int/lit8 p2, p2, -0x1

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {v0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0

    .line 149
    :cond_4
    new-instance v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    .line 150
    .line 151
    invoke-static {p1, p2, v2}, Lta/q;->j(JLjava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-direct {v0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0
.end method
