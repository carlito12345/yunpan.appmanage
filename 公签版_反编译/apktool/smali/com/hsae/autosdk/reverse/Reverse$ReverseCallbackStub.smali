.class Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;
.super Lcom/hsae/autosdk/reverse/IReverseCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/reverse/Reverse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReverseCallbackStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hsae/autosdk/reverse/Reverse;


# direct methods
.method private constructor <init>(Lcom/hsae/autosdk/reverse/Reverse;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    invoke-direct {p0}, Lcom/hsae/autosdk/reverse/IReverseCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hsae/autosdk/reverse/Reverse;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;-><init>(Lcom/hsae/autosdk/reverse/Reverse;)V

    return-void
.end method


# virtual methods
.method public onAVMChangeDAFrameResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onAVMChangeDAFrameResponse(B)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onAVMCheckLanguageResponse()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onAVMCheckLanguageResponse()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onAVMCheckViewStateResponse()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onAVMCheckViewStateResponse()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onAVMHardwareVersionResponse(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onAVMHardwareVersionResponse(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onAVMReverseStateResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onAVMReverseStateResponse(B)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onAVMSettingInfoResponse(BBB)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1, p2, p3}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onAVMSettingInfoResponse(BBB)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onAVMSoftwareVersionResponse(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onAVMSoftwareVersionResponse(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onAVMStartResponse()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onAVMStartResponse()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onAVMStatusAndRequestResponseNoIPA(BB)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->a(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$AvmListener;

    .line 22
    .line 23
    invoke-interface {v1, p1, p2}, Lcom/hsae/autosdk/reverse/Reverse$AvmListener;->onAVMStatusAndRequestResponseNoIPA(BB)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onAVMStatusAndRequestResponseWithIPA(BBBBBBBB)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/hsae/autosdk/reverse/Reverse;->a(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v3, v2

    .line 23
    check-cast v3, Lcom/hsae/autosdk/reverse/Reverse$AvmListener;

    .line 24
    .line 25
    move v4, p1

    .line 26
    move v5, p2

    .line 27
    move v6, p3

    .line 28
    move/from16 v7, p4

    .line 29
    .line 30
    move/from16 v8, p5

    .line 31
    .line 32
    move/from16 v9, p6

    .line 33
    .line 34
    move/from16 v10, p7

    .line 35
    .line 36
    move/from16 v11, p8

    .line 37
    .line 38
    invoke-interface/range {v3 .. v11}, Lcom/hsae/autosdk/reverse/Reverse$AvmListener;->onAVMStatusAndRequestResponseWithIPA(BBBBBBBB)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public onAVMVINResponse(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onAVMVINResponse(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onAvmBeepSoundResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onAvmBeepSoundResponse(B)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onButtonEnableStatusResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onButtonEnableStatusResponse(B)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onCarTypeResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onCarTypeResponse(B)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onDistanceResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onDistanceResponse(B)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onFrCenterResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onFrCenterResponse(B)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onFrLeftResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onFrLeftResponse(B)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onFrRightResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onFrRightResponse(B)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onFrameResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onFrameResponse(B)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onLightsStatusResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onLightsStatusResponse(B)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onRrCenterResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onRrCenterResponse(B)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onRrLeftResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onRrLeftResponse(B)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public onRrRightResponse(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hsae/autosdk/reverse/Reverse$ReverseCallbackStub;->this$0:Lcom/hsae/autosdk/reverse/Reverse;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hsae/autosdk/reverse/Reverse;->b(Lcom/hsae/autosdk/reverse/Reverse;)Ljava/util/ArrayList;

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
    check-cast v1, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Lcom/hsae/autosdk/reverse/Reverse$ReverseListener;->onRrRightResponse(B)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method
