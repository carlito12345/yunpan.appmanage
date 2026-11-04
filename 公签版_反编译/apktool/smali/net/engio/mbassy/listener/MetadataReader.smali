.class public Lnet/engio/mbassy/listener/MetadataReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AllMessageHandlers:Lnet/engio/mbassy/common/IPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/engio/mbassy/common/IPredicate<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final filterCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lnet/engio/mbassy/listener/IMessageFilter;",
            ">;",
            "Lnet/engio/mbassy/listener/IMessageFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/engio/mbassy/listener/MetadataReader$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lnet/engio/mbassy/listener/MetadataReader$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/engio/mbassy/listener/MetadataReader;->AllMessageHandlers:Lnet/engio/mbassy/common/IPredicate;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lnet/engio/mbassy/listener/MetadataReader;->filterCache:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method private collectFilters(Ljava/lang/reflect/Method;Lnet/engio/mbassy/listener/Handler;)[Lnet/engio/mbassy/listener/Filter;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p2}, Lnet/engio/mbassy/listener/Handler;->filters()[Lnet/engio/mbassy/listener/Filter;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    array-length v1, v1

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Lnet/engio/mbassy/listener/Handler;->filters()[Lnet/engio/mbassy/listener/Filter;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    array-length v2, v2

    .line 28
    if-ge v1, v2, :cond_2

    .line 29
    .line 30
    aget-object v2, p2, v1

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-class v3, Lnet/engio/mbassy/listener/IncludeFilters;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lnet/engio/mbassy/listener/IncludeFilters;

    .line 43
    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    invoke-interface {v3}, Lnet/engio/mbassy/listener/IncludeFilters;->value()[Lnet/engio/mbassy/listener/Filter;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    const-class v3, Lnet/engio/mbassy/listener/Filter;

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lnet/engio/mbassy/listener/Filter;

    .line 60
    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    new-array p1, p1, [Lnet/engio/mbassy/listener/Filter;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, [Lnet/engio/mbassy/listener/Filter;

    .line 80
    .line 81
    return-object p1
.end method

.method private getFilter(Ljava/lang/reflect/Method;Lnet/engio/mbassy/listener/Handler;)[Lnet/engio/mbassy/listener/IMessageFilter;
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lnet/engio/mbassy/listener/MetadataReader;->collectFilters(Ljava/lang/reflect/Method;Lnet/engio/mbassy/listener/Handler;)[Lnet/engio/mbassy/listener/Filter;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length p2, p1

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :cond_0
    array-length p2, p1

    .line 11
    new-array p2, p2, [Lnet/engio/mbassy/listener/IMessageFilter;

    .line 12
    .line 13
    array-length v0, p1

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_2

    .line 17
    .line 18
    aget-object v3, p1, v1

    .line 19
    .line 20
    iget-object v4, p0, Lnet/engio/mbassy/listener/MetadataReader;->filterCache:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v3}, Lnet/engio/mbassy/listener/Filter;->value()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lnet/engio/mbassy/listener/IMessageFilter;

    .line 31
    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    :try_start_0
    invoke-interface {v3}, Lnet/engio/mbassy/listener/Filter;->value()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lnet/engio/mbassy/listener/IMessageFilter;

    .line 43
    .line 44
    iget-object v5, p0, Lnet/engio/mbassy/listener/MetadataReader;->filterCache:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v3}, Lnet/engio/mbassy/listener/Filter;->value()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception p1

    .line 55
    new-instance p2, Ljava/lang/RuntimeException;

    .line 56
    .line 57
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    throw p2

    .line 61
    :cond_1
    :goto_1
    aput-object v4, p2, v2

    .line 62
    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-object p2
.end method

.method private isValidMessageHandler(Ljava/lang/reflect/Method;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    const-class v1, Lnet/engio/mbassy/listener/Handler;

    .line 5
    .line 6
    invoke-static {p1, v1}, Lnet/engio/mbassy/common/ReflectionUtils;->getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    array-length v1, v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    return v0

    .line 30
    :cond_1
    const-class v1, Lnet/engio/mbassy/listener/Enveloped;

    .line 31
    .line 32
    invoke-static {p1, v1}, Lnet/engio/mbassy/common/ReflectionUtils;->getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lnet/engio/mbassy/listener/Enveloped;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    aget-object p1, p1, v0

    .line 45
    .line 46
    const-class v3, Lnet/engio/mbassy/subscription/MessageEnvelope;

    .line 47
    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_2

    .line 53
    .line 54
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    return v0

    .line 60
    :cond_2
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-interface {v1}, Lnet/engio/mbassy/listener/Enveloped;->messages()[Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    array-length p1, p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    return v0

    .line 75
    :cond_3
    return v2

    .line 76
    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
.method public getMessageListener(Ljava/lang/Class;)Lnet/engio/mbassy/listener/MessageListener;
    .locals 8

    .line 1
    new-instance v0, Lnet/engio/mbassy/listener/MessageListener;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lnet/engio/mbassy/listener/MessageListener;-><init>(Ljava/lang/Class;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lnet/engio/mbassy/listener/MetadataReader;->AllMessageHandlers:Lnet/engio/mbassy/common/IPredicate;

    .line 7
    .line 8
    invoke-static {v1, p1}, Lnet/engio/mbassy/common/ReflectionUtils;->getMethods(Lnet/engio/mbassy/common/IPredicate;Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    array-length v2, v1

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    if-ge v3, v2, :cond_3

    .line 15
    .line 16
    aget-object v4, v1, v3

    .line 17
    .line 18
    invoke-static {v1, v4}, Lnet/engio/mbassy/common/ReflectionUtils;->containsOverridingMethod([Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-nez v5, :cond_2

    .line 23
    .line 24
    const-class v5, Lnet/engio/mbassy/listener/Handler;

    .line 25
    .line 26
    invoke-static {v4, v5}, Lnet/engio/mbassy/common/ReflectionUtils;->getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Lnet/engio/mbassy/listener/Handler;

    .line 31
    .line 32
    const-class v6, Lnet/engio/mbassy/listener/Enveloped;

    .line 33
    .line 34
    invoke-static {v4, v6}, Lnet/engio/mbassy/common/ReflectionUtils;->getAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Lnet/engio/mbassy/listener/Enveloped;

    .line 39
    .line 40
    invoke-interface {v5}, Lnet/engio/mbassy/listener/Handler;->enabled()Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-eqz v7, :cond_2

    .line 45
    .line 46
    invoke-direct {p0, v4}, Lnet/engio/mbassy/listener/MetadataReader;->isValidMessageHandler(Ljava/lang/reflect/Method;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-nez v7, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-static {v4, p1}, Lnet/engio/mbassy/common/ReflectionUtils;->getOverridingMethod(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    if-nez v7, :cond_1

    .line 58
    .line 59
    move-object v7, v4

    .line 60
    :cond_1
    invoke-direct {p0, v4, v5}, Lnet/engio/mbassy/listener/MetadataReader;->getFilter(Ljava/lang/reflect/Method;Lnet/engio/mbassy/listener/Handler;)[Lnet/engio/mbassy/listener/IMessageFilter;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v7, v5, v6, v4, v0}, Lnet/engio/mbassy/listener/MessageHandler$Properties;->Create(Ljava/lang/reflect/Method;Lnet/engio/mbassy/listener/Handler;Lnet/engio/mbassy/listener/Enveloped;[Lnet/engio/mbassy/listener/IMessageFilter;Lnet/engio/mbassy/listener/MessageListener;)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    new-instance v5, Lnet/engio/mbassy/listener/MessageHandler;

    .line 69
    .line 70
    invoke-direct {v5, v4}, Lnet/engio/mbassy/listener/MessageHandler;-><init>(Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v5}, Lnet/engio/mbassy/listener/MessageListener;->addHandler(Lnet/engio/mbassy/listener/MessageHandler;)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    return-object v0
.end method
