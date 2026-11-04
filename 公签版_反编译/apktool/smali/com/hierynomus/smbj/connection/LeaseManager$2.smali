.class Lcom/hierynomus/smbj/connection/LeaseManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hierynomus/smbj/connection/LeaseManager;->dispatchBreak(Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hierynomus/smbj/connection/LeaseManager;

.field final synthetic val$notification:Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;


# direct methods
.method public constructor <init>(Lcom/hierynomus/smbj/connection/LeaseManager;Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hierynomus/smbj/connection/LeaseManager$2;->this$0:Lcom/hierynomus/smbj/connection/LeaseManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/hierynomus/smbj/connection/LeaseManager$2;->val$notification:Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hierynomus/smbj/connection/LeaseManager$2;->this$0:Lcom/hierynomus/smbj/connection/LeaseManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hierynomus/smbj/connection/LeaseManager$2;->val$notification:Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/hierynomus/smbj/connection/LeaseManager;->onBreak(Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-static {}, Lcom/hierynomus/smbj/connection/LeaseManager;->access$000()Lorg/slf4j/Logger;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/hierynomus/smbj/connection/LeaseManager$2;->val$notification:Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/hierynomus/mssmb2/messages/SMB2LeaseBreakNotification;->getLeaseKey()Lcom/hierynomus/mssmb2/LeaseKey;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "Lease-break handling failed for {}"

    .line 21
    .line 22
    invoke-interface {v1, v3, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method
