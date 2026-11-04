.class public Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ENCODED_CHARACTERS_WITHOUT_SLASHES:[Ljava/lang/String;

.field private static final ENCODED_CHARACTERS_WITHOUT_SLASHES_REPLACEMENTS:[Ljava/lang/String;

.field private static final ENCODED_CHARACTERS_WITH_SLASHES:[Ljava/lang/String;

.field private static final ENCODED_CHARACTERS_WITH_SLASHES_REPLACEMENTS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v0, "+"

    .line 2
    .line 3
    const-string v1, "*"

    .line 4
    .line 5
    const-string v2, "%7E"

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    new-array v4, v3, [Ljava/lang/String;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v0, v4, v5

    .line 12
    .line 13
    const/4 v6, 0x1

    .line 14
    aput-object v1, v4, v6

    .line 15
    .line 16
    const/4 v7, 0x2

    .line 17
    aput-object v2, v4, v7

    .line 18
    .line 19
    const-string v8, "%2F"

    .line 20
    .line 21
    const/4 v9, 0x3

    .line 22
    aput-object v8, v4, v9

    .line 23
    .line 24
    sput-object v4, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITH_SLASHES:[Ljava/lang/String;

    .line 25
    .line 26
    const-string v4, "%20"

    .line 27
    .line 28
    const-string v8, "%2A"

    .line 29
    .line 30
    const-string v10, "~"

    .line 31
    .line 32
    new-array v3, v3, [Ljava/lang/String;

    .line 33
    .line 34
    aput-object v4, v3, v5

    .line 35
    .line 36
    aput-object v8, v3, v6

    .line 37
    .line 38
    aput-object v10, v3, v7

    .line 39
    .line 40
    const-string v11, "/"

    .line 41
    .line 42
    aput-object v11, v3, v9

    .line 43
    .line 44
    sput-object v3, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITH_SLASHES_REPLACEMENTS:[Ljava/lang/String;

    .line 45
    .line 46
    new-array v3, v9, [Ljava/lang/String;

    .line 47
    .line 48
    aput-object v0, v3, v5

    .line 49
    .line 50
    aput-object v1, v3, v6

    .line 51
    .line 52
    aput-object v2, v3, v7

    .line 53
    .line 54
    sput-object v3, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITHOUT_SLASHES:[Ljava/lang/String;

    .line 55
    .line 56
    new-array v0, v9, [Ljava/lang/String;

    .line 57
    .line 58
    aput-object v4, v0, v5

    .line 59
    .line 60
    aput-object v8, v0, v6

    .line 61
    .line 62
    aput-object v10, v0, v7

    .line 63
    .line 64
    sput-object v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITHOUT_SLASHES_REPLACEMENTS:[Ljava/lang/String;

    .line 65
    .line 66
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

.method public static paramToQueryString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v1, 0x1

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/Map$Entry;

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 47
    .line 48
    if-nez v1, :cond_1

    .line 49
    .line 50
    const-string v1, "&"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-static {v3, p1}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    const-string v1, "="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-static {v2, p1}, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_2
    const/4 v1, 0x0

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 84
    return-object p0
.end method

.method public static urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    const-string p1, "+"

    const-string v0, "%20"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "*"

    const-string v0, "%2A"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%7E"

    const-string v0, "~"

    .line 4
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "%2F"

    const-string v0, "/"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "failed to encode url!"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static urlEncode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 6
    const-string p0, ""

    return-object p0

    .line 7
    :cond_0
    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_1

    .line 8
    sget-object p1, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITHOUT_SLASHES:[Ljava/lang/String;

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITHOUT_SLASHES_REPLACEMENTS:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 9
    :cond_1
    sget-object p1, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITH_SLASHES:[Ljava/lang/String;

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/utils/HttpUtil;->ENCODED_CHARACTERS_WITH_SLASHES_REPLACEMENTS:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/common/utils/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 10
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FailedToEncodeUri"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
