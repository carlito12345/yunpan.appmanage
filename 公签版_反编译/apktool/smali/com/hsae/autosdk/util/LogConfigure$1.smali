.class Lcom/hsae/autosdk/util/LogConfigure$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hsae/autosdk/util/LogConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hsae/autosdk/util/LogConfigure;


# direct methods
.method public constructor <init>(Lcom/hsae/autosdk/util/LogConfigure;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hsae/autosdk/util/LogConfigure$1;->this$0:Lcom/hsae/autosdk/util/LogConfigure;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    sget p1, Lcom/hsae/autosdk/util/LogConfigure;->a:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/hsae/autosdk/util/LogConfigure$1;->this$0:Lcom/hsae/autosdk/util/LogConfigure;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/hsae/d531mc/logservice/ILogService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/hsae/d531mc/logservice/ILogService;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p1, p2}, Lcom/hsae/autosdk/util/LogConfigure;->a(Lcom/hsae/autosdk/util/LogConfigure;Lcom/hsae/d531mc/logservice/ILogService;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hsae/autosdk/util/LogConfigure$1;->this$0:Lcom/hsae/autosdk/util/LogConfigure;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/hsae/autosdk/util/LogConfigure;->a(Lcom/hsae/autosdk/util/LogConfigure;Lcom/hsae/d531mc/logservice/ILogService;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/hsae/autosdk/util/LogConfigure$1;->this$0:Lcom/hsae/autosdk/util/LogConfigure;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/hsae/autosdk/util/LogConfigure;->bindLogService()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
