.class Lcom/hsae/autosdk/reverse/ReverseAppProxy$ReverseCallback;
.super Lcom/hsae/autosdk/server/IServerCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/reverse/ReverseAppProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReverseCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hsae/autosdk/reverse/ReverseAppProxy;


# direct methods
.method private constructor <init>(Lcom/hsae/autosdk/reverse/ReverseAppProxy;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy$ReverseCallback;->this$0:Lcom/hsae/autosdk/reverse/ReverseAppProxy;

    invoke-direct {p0}, Lcom/hsae/autosdk/server/IServerCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hsae/autosdk/reverse/ReverseAppProxy;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hsae/autosdk/reverse/ReverseAppProxy$ReverseCallback;-><init>(Lcom/hsae/autosdk/reverse/ReverseAppProxy;)V

    return-void
.end method


# virtual methods
.method public onServiceDestroyed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy$ReverseCallback;->this$0:Lcom/hsae/autosdk/reverse/ReverseAppProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->c(Lcom/hsae/autosdk/reverse/ReverseAppProxy;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy$ReverseCallback;->this$0:Lcom/hsae/autosdk/reverse/ReverseAppProxy;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->b(Lcom/hsae/autosdk/reverse/ReverseAppProxy;)Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy$ReverseCallback;->this$0:Lcom/hsae/autosdk/reverse/ReverseAppProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->getNewStub()Lcom/hsae/autosdk/reverse/IReverseApp;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy$ReverseCallback;->this$0:Lcom/hsae/autosdk/reverse/ReverseAppProxy;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->b(Lcom/hsae/autosdk/reverse/ReverseAppProxy;)Ljava/util/ArrayList;

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
