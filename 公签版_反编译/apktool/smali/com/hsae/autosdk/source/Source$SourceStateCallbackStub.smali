.class Lcom/hsae/autosdk/source/Source$SourceStateCallbackStub;
.super Lcom/hsae/autosdk/source/ISourceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/source/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SourceStateCallbackStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hsae/autosdk/source/Source;


# direct methods
.method private constructor <init>(Lcom/hsae/autosdk/source/Source;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hsae/autosdk/source/Source$SourceStateCallbackStub;->this$0:Lcom/hsae/autosdk/source/Source;

    invoke-direct {p0}, Lcom/hsae/autosdk/source/ISourceCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hsae/autosdk/source/Source;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hsae/autosdk/source/Source$SourceStateCallbackStub;-><init>(Lcom/hsae/autosdk/source/Source;)V

    return-void
.end method


# virtual methods
.method public onSourceChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/source/Source$SourceStateCallbackStub;->this$0:Lcom/hsae/autosdk/source/Source;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/source/Source;->a(Lcom/hsae/autosdk/source/Source;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/source/Source$SourceStateListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/source/Source$SourceStateListener;->onSourceStateChanged(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
