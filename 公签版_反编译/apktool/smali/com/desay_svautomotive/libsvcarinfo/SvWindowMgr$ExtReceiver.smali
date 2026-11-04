.class Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ExtReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;


# direct methods
.method private constructor <init>(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ExtReceiver;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ExtReceiver;-><init>(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.desay.automotive.systemui.CLOSE_PANEL"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "fromPanelId"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput v2, p1, Landroid/os/Message;->what:I

    .line 21
    .line 22
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 27
    .line 28
    iget-object p2, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ExtReceiver;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 29
    .line 30
    invoke-static {p2}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->a(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)Landroid/os/Handler;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const-string v0, "com.desay.automotive.systemui.SHOW_PANEL"

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/4 v0, 0x3

    .line 51
    iput v0, p1, Landroid/os/Message;->what:I

    .line 52
    .line 53
    const-string v0, "showPanelId"

    .line 54
    .line 55
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 60
    .line 61
    iget-object p2, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ExtReceiver;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 62
    .line 63
    invoke-static {p2}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->a(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)Landroid/os/Handler;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    const-string v0, "com.desay.automotive.systemui.PANEL_SHOW_STATUS"

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    const-string p1, "showStatus"

    .line 80
    .line 81
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/4 v3, 0x2

    .line 90
    iput v3, v0, Landroid/os/Message;->what:I

    .line 91
    .line 92
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 97
    .line 98
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 99
    .line 100
    iget-object p2, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ExtReceiver;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 101
    .line 102
    invoke-static {p2}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->a(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)Landroid/os/Handler;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    .line 108
    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    iget-object p1, p0, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr$ExtReceiver;->this$0:Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;->a(Lcom/desay_svautomotive/libsvcarinfo/SvWindowMgr;)Landroid/os/Handler;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const/4 p2, 0x1

    .line 118
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    .line 120
    .line 121
    :cond_2
    return-void
.end method
