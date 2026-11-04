.class public abstract Lt9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljavax/xml/parsers/DocumentBuilderFactory;

.field public static final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    aput-object v1, v0, v3

    .line 13
    .line 14
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    .line 15
    .line 16
    const/4 v4, 0x2

    .line 17
    aput-object v1, v0, v4

    .line 18
    .line 19
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 20
    .line 21
    const/4 v4, 0x3

    .line 22
    aput-object v1, v0, v4

    .line 23
    .line 24
    const-string v1, "EEE MMM dd HH:mm:ss zzz yyyy"

    .line 25
    .line 26
    const/4 v4, 0x4

    .line 27
    aput-object v1, v0, v4

    .line 28
    .line 29
    const-string v1, "EEEEEE, dd-MMM-yy HH:mm:ss zzz"

    .line 30
    .line 31
    const/4 v4, 0x5

    .line 32
    aput-object v1, v0, v4

    .line 33
    .line 34
    const-string v1, "EEE MMMM d HH:mm:ss yyyy"

    .line 35
    .line 36
    const/4 v4, 0x6

    .line 37
    aput-object v1, v0, v4

    .line 38
    .line 39
    sput-object v0, Lt9/b;->a:[Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sput-object v1, Lt9/b;->b:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    array-length v0, v0

    .line 50
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    sget-object v0, Lt9/b;->a:[Ljava/lang/String;

    .line 54
    .line 55
    array-length v0, v0

    .line 56
    if-ge v2, v0, :cond_0

    .line 57
    .line 58
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    add-int/2addr v2, v3

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lt9/b;->c:Ljava/util/List;

    .line 73
    .line 74
    return-void
.end method

.method public static a()Lorg/simpleframework/xml/core/Persister;
    .locals 4

    .line 1
    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    .line 2
    .line 3
    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/Format;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lorg/simpleframework/xml/convert/Registry;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/simpleframework/xml/convert/Registry;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lorg/simpleframework/xml/convert/RegistryStrategy;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Lorg/simpleframework/xml/convert/RegistryStrategy;-><init>(Lorg/simpleframework/xml/convert/Registry;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lorg/simpleframework/xml/core/Persister;

    .line 19
    .line 20
    invoke-direct {v3, v2, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/stream/Format;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lt9/a;

    .line 24
    .line 25
    const-class v2, Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    .line 26
    .line 27
    invoke-direct {v0, v3, v2}, Lt9/a;-><init>(Lorg/simpleframework/xml/core/Persister;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2, v0}, Lorg/simpleframework/xml/convert/Registry;->bind(Ljava/lang/Class;Lorg/simpleframework/xml/convert/Converter;)Lorg/simpleframework/xml/convert/Registry;

    .line 31
    .line 32
    .line 33
    new-instance v0, Lt9/a;

    .line 34
    .line 35
    const-class v2, Lcom/thegrizzlylabs/sardineandroid/model/Resourcetype;

    .line 36
    .line 37
    invoke-direct {v0, v3, v2}, Lt9/a;-><init>(Lorg/simpleframework/xml/core/Persister;Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2, v0}, Lorg/simpleframework/xml/convert/Registry;->bind(Ljava/lang/Class;Lorg/simpleframework/xml/convert/Converter;)Lorg/simpleframework/xml/convert/Registry;

    .line 41
    .line 42
    .line 43
    const-class v0, Lcom/thegrizzlylabs/sardineandroid/model/Property;

    .line 44
    .line 45
    const-class v2, Lcom/thegrizzlylabs/sardineandroid/model/Property$PropertyConverter;

    .line 46
    .line 47
    invoke-virtual {v1, v0, v2}, Lorg/simpleframework/xml/convert/Registry;->bind(Ljava/lang/Class;Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Registry;

    .line 48
    .line 49
    .line 50
    return-object v3
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Date;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    sget-object v2, Lt9/b;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v1, v3, :cond_2

    .line 13
    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/ThreadLocal;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 29
    .line 30
    sget-object v4, Lt9/b;->a:[Ljava/lang/String;

    .line 31
    .line 32
    aget-object v4, v4, v1

    .line 33
    .line 34
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    .line 36
    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 37
    .line 38
    .line 39
    const-string v4, "UTC"

    .line 40
    .line 41
    invoke-static {v4}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 52
    .line 53
    .line 54
    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static c(Lorg/w3c/dom/Element;)Lsc/a;
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lsc/a;

    .line 8
    .line 9
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "D"

    .line 14
    .line 15
    const-string v2, "DAV:"

    .line 16
    .line 17
    invoke-direct {v0, v2, p0, v1}, Lsc/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Lsc/a;

    .line 28
    .line 29
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v2, ""

    .line 38
    .line 39
    invoke-direct {v0, v1, p0, v2}, Lsc/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lsc/a;

    .line 44
    .line 45
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v0, v1, v2, p0}, Lsc/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method
