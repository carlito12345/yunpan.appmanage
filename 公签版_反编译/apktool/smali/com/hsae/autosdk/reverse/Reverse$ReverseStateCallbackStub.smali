.class Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;
.super Lcom/hsae/autosdk/reverse/IReverseStateCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/reverse/Reverse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReverseStateCallbackStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hsae/autosdk/reverse/Reverse;


# direct methods
.method private constructor <init>(Lcom/hsae/autosdk/reverse/Reverse;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/IReverseStateCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hsae/autosdk/reverse/Reverse;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;-><init>(Lcom/hsae/autosdk/reverse/Reverse;)V

    return-void
.end method


# virtual methods
.method public onReverseStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseStateCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->c(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseStateListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseStateListener;->onReverseStateChanged(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
