.class Lcom/hsae/autosdk/carplay/CarPlayProxy$CarPlayProxyCallback;
.super Lcom/hsae/autosdk/server/IServerCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/carplay/CarPlayProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarPlayProxyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hsae/autosdk/carplay/CarPlayProxy;


# direct methods
.method private constructor <init>(Lcom/hsae/autosdk/carplay/CarPlayProxy;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hsae/autosdk/carplay/CarPlayProxy$CarPlayProxyCallback;->this$0:Lcom/hsae/autosdk/carplay/CarPlayProxy;

    invoke-direct {p0}, Lcom/hsae/autosdk/server/IServerCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hsae/autosdk/carplay/CarPlayProxy;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hsae/autosdk/carplay/CarPlayProxy$CarPlayProxyCallback;-><init>(Lcom/hsae/autosdk/carplay/CarPlayProxy;)V

    return-void
.end method


# virtual methods
.method public onServiceDestroyed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/carplay/CarPlayProxy$CarPlayProxyCallback;->this$0:Lcom/hsae/autosdk/carplay/CarPlayProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/carplay/CarPlayProxy;->b(Lcom/hsae/autosdk/carplay/CarPlayProxy;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hsae/autosdk/carplay/CarPlayProxy$CarPlayProxyCallback;->this$0:Lcom/hsae/autosdk/carplay/CarPlayProxy;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/hsae/autosdk/carplay/CarPlayProxy;->a(Lcom/hsae/autosdk/carplay/CarPlayProxy;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/hsae/autosdk/server/ServerListener;

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/hsae/autosdk/server/ServerListener;->onServiceDestroyed()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public onServiceStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/carplay/CarPlayProxy$CarPlayProxyCallback;->this$0:Lcom/hsae/autosdk/carplay/CarPlayProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hsae/autosdk/carplay/CarPlayProxy;->getNewStub()Lcom/hsae/autosdk/carplay/ICarPlayManager;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hsae/autosdk/carplay/CarPlayProxy$CarPlayProxyCallback;->this$0:Lcom/hsae/autosdk/carplay/CarPlayProxy;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/hsae/autosdk/carplay/CarPlayProxy;->a(Lcom/hsae/autosdk/carplay/CarPlayProxy;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/hsae/autosdk/server/ServerListener;

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/hsae/autosdk/server/ServerListener;->onServiceStarted()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
