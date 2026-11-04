.class Lcom/hsae/autosdk/reverse/ReverseAppProxy$L42pAVMStatusStub;
.super Lcom/hsae/autosdk/reverse/IReverseAppStatusListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/reverse/ReverseAppProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "L42pAVMStatusStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hsae/autosdk/reverse/ReverseAppProxy;


# direct methods
.method private constructor <init>(Lcom/hsae/autosdk/reverse/ReverseAppProxy;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy$L42pAVMStatusStub;->this$0:Lcom/hsae/autosdk/reverse/ReverseAppProxy;

    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/IReverseAppStatusListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hsae/autosdk/reverse/ReverseAppProxy;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hsae/autosdk/reverse/ReverseAppProxy$L42pAVMStatusStub;-><init>(Lcom/hsae/autosdk/reverse/ReverseAppProxy;)V

    return-void
.end method


# virtual methods
.method public onModButtonEnableChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy$L42pAVMStatusStub;->this$0:Lcom/hsae/autosdk/reverse/ReverseAppProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->a(Lcom/hsae/autosdk/reverse/ReverseAppProxy;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/ReverseAppProxy$AVMStatusForL42p;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/ReverseAppProxy$AVMStatusForL42p;->onMODButtonEnableChanged(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onModStatusChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/ReverseAppProxy$L42pAVMStatusStub;->this$0:Lcom/hsae/autosdk/reverse/ReverseAppProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/ReverseAppProxy;->a(Lcom/hsae/autosdk/reverse/ReverseAppProxy;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/ReverseAppProxy$AVMStatusForL42p;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/ReverseAppProxy$AVMStatusForL42p;->onMODOpenStatusChanged(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
