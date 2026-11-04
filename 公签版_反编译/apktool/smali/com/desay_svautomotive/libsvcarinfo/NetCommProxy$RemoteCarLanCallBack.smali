.class Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$RemoteCarLanCallBack;
.super Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteCarLanCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;


# direct methods
.method private constructor <init>(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$RemoteCarLanCallBack;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    invoke-direct {p0}, Lcom/desay_svautomotive/libsvcarinfo/ICarLanCallBack$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$RemoteCarLanCallBack;-><init>(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)V

    return-void
.end method


# virtual methods
.method public onReceiveCarLanMsg(IILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7
    .line 8
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 11
    .line 12
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$RemoteCarLanCallBack;->this$0:Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;->c(Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy;)Lcom/desay_svautomotive/libsvcarinfo/NetCommProxy$MyHandler;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
