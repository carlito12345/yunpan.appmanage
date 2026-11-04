.class public abstract Lnet/engio/mbassy/bus/AbstractPubSubSupport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/engio/mbassy/bus/common/PubSubSupport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/engio/mbassy/bus/common/PubSubSupport<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final ERROR_HANDLER_MSG:Ljava/lang/String; = "INFO: No error handler has been configured to handle exceptions during publication.\nPublication error handlers can be added by IBusConfiguration.addPublicationErrorHandler()\nFalling back to console logger."


# instance fields
.field private final errorHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/engio/mbassy/bus/error/IPublicationErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final publicationFactory:Lnet/engio/mbassy/bus/MessagePublication$Factory;

.field private final runtime:Lnet/engio/mbassy/bus/BusRuntime;

.field private final subscriptionManager:Lnet/engio/mbassy/subscription/SubscriptionManager;


# direct methods
.method public constructor <init>(Lnet/engio/mbassy/bus/config/IBusConfiguration;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->errorHandlers:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p1}, Lnet/engio/mbassy/bus/config/IBusConfiguration;->getRegisteredPublicationErrorHandlers()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Lnet/engio/mbassy/bus/error/IPublicationErrorHandler$ConsoleLogger;

    .line 25
    .line 26
    invoke-direct {v1}, Lnet/engio/mbassy/bus/error/IPublicationErrorHandler$ConsoleLogger;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance v0, Lnet/engio/mbassy/bus/BusRuntime;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lnet/engio/mbassy/bus/BusRuntime;-><init>(Lnet/engio/mbassy/bus/common/PubSubSupport;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "bus.handlers.error"

    .line 43
    .line 44
    invoke-interface {p1}, Lnet/engio/mbassy/bus/config/IBusConfiguration;->getRegisteredPublicationErrorHandlers()Ljava/util/Collection;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lnet/engio/mbassy/bus/BusRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Lnet/engio/mbassy/bus/BusRuntime;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "bus.id"

    .line 61
    .line 62
    invoke-interface {p1, v2, v1}, Lnet/engio/mbassy/bus/config/IBusConfiguration;->getProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v2, v1}, Lnet/engio/mbassy/bus/BusRuntime;->add(Ljava/lang/String;Ljava/lang/Object;)Lnet/engio/mbassy/bus/BusRuntime;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->runtime:Lnet/engio/mbassy/bus/BusRuntime;

    .line 71
    .line 72
    const-class v1, Lnet/engio/mbassy/bus/config/Feature$SyncPubSub;

    .line 73
    .line 74
    invoke-interface {p1, v1}, Lnet/engio/mbassy/bus/config/IBusConfiguration;->getFeature(Ljava/lang/Class;)Lnet/engio/mbassy/bus/config/Feature;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lnet/engio/mbassy/bus/config/Feature$SyncPubSub;

    .line 79
    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    invoke-virtual {p1}, Lnet/engio/mbassy/bus/config/Feature$SyncPubSub;->getSubscriptionManagerProvider()Lnet/engio/mbassy/subscription/ISubscriptionManagerProvider;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p1}, Lnet/engio/mbassy/bus/config/Feature$SyncPubSub;->getMetadataReader()Lnet/engio/mbassy/listener/MetadataReader;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {p1}, Lnet/engio/mbassy/bus/config/Feature$SyncPubSub;->getSubscriptionFactory()Lnet/engio/mbassy/subscription/SubscriptionFactory;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-interface {v1, v2, v3, v0}, Lnet/engio/mbassy/subscription/ISubscriptionManagerProvider;->createManager(Lnet/engio/mbassy/listener/MetadataReader;Lnet/engio/mbassy/subscription/SubscriptionFactory;Lnet/engio/mbassy/bus/BusRuntime;)Lnet/engio/mbassy/subscription/SubscriptionManager;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->subscriptionManager:Lnet/engio/mbassy/subscription/SubscriptionManager;

    .line 99
    .line 100
    invoke-virtual {p1}, Lnet/engio/mbassy/bus/config/Feature$SyncPubSub;->getPublicationFactory()Lnet/engio/mbassy/bus/MessagePublication$Factory;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->publicationFactory:Lnet/engio/mbassy/bus/MessagePublication$Factory;

    .line 105
    .line 106
    return-void

    .line 107
    :cond_1
    invoke-static {v1}, Lnet/engio/mbassy/bus/config/ConfigurationError;->MissingFeature(Ljava/lang/Class;)Lnet/engio/mbassy/bus/config/ConfigurationError;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    throw p1
.end method


# virtual methods
.method public createMessagePublication(Ljava/lang/Object;)Lnet/engio/mbassy/bus/MessagePublication;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lnet/engio/mbassy/bus/MessagePublication;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->getSubscriptionsByMessageType(Ljava/lang/Class;)Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-class v2, Lnet/engio/mbassy/bus/common/DeadMessage;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->getSubscriptionsByMessageType(Ljava/lang/Class;)Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->getPublicationFactory()Lnet/engio/mbassy/bus/MessagePublication$Factory;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->runtime:Lnet/engio/mbassy/bus/BusRuntime;

    .line 38
    .line 39
    new-instance v3, Lnet/engio/mbassy/bus/common/DeadMessage;

    .line 40
    .line 41
    invoke-direct {v3, p1}, Lnet/engio/mbassy/bus/common/DeadMessage;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2, v0, v3}, Lnet/engio/mbassy/bus/MessagePublication$Factory;->createPublication(Lnet/engio/mbassy/bus/BusRuntime;Ljava/util/Collection;Ljava/lang/Object;)Lnet/engio/mbassy/bus/MessagePublication;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_1
    invoke-virtual {p0}, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->getPublicationFactory()Lnet/engio/mbassy/bus/MessagePublication$Factory;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->runtime:Lnet/engio/mbassy/bus/BusRuntime;

    .line 54
    .line 55
    invoke-virtual {v1, v2, v0, p1}, Lnet/engio/mbassy/bus/MessagePublication$Factory;->createPublication(Lnet/engio/mbassy/bus/BusRuntime;Ljava/util/Collection;Ljava/lang/Object;)Lnet/engio/mbassy/bus/MessagePublication;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method public getPublicationFactory()Lnet/engio/mbassy/bus/MessagePublication$Factory;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->publicationFactory:Lnet/engio/mbassy/bus/MessagePublication$Factory;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRegisteredErrorHandlers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lnet/engio/mbassy/bus/error/IPublicationErrorHandler;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->errorHandlers:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRuntime()Lnet/engio/mbassy/bus/BusRuntime;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->runtime:Lnet/engio/mbassy/bus/BusRuntime;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSubscriptionsByMessageType(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Collection<",
            "Lnet/engio/mbassy/subscription/Subscription;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->subscriptionManager:Lnet/engio/mbassy/subscription/SubscriptionManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lnet/engio/mbassy/subscription/SubscriptionManager;->getSubscriptionsByMessageType(Ljava/lang/Class;)Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public handlePublicationError(Lnet/engio/mbassy/bus/error/PublicationError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->errorHandlers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lnet/engio/mbassy/bus/error/IPublicationErrorHandler;

    .line 18
    .line 19
    :try_start_0
    invoke-interface {v1, p1}, Lnet/engio/mbassy/bus/error/IPublicationErrorHandler;->handleError(Lnet/engio/mbassy/bus/error/PublicationError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public subscribe(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->subscriptionManager:Lnet/engio/mbassy/subscription/SubscriptionManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lnet/engio/mbassy/subscription/SubscriptionManager;->subscribe(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->runtime:Lnet/engio/mbassy/bus/BusRuntime;

    .line 23
    .line 24
    const-string v2, "bus.id"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lnet/engio/mbassy/bus/BusRuntime;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ")"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public unsubscribe(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/engio/mbassy/bus/AbstractPubSubSupport;->subscriptionManager:Lnet/engio/mbassy/subscription/SubscriptionManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lnet/engio/mbassy/subscription/SubscriptionManager;->unsubscribe(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
