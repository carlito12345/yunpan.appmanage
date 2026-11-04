.class public final Lma/e;
.super Landroid/content/IIntentSender$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic e:[Landroid/content/Intent;

.field public final synthetic f:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>([Landroid/content/Intent;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lma/e;->e:[Landroid/content/Intent;

    .line 2
    .line 3
    iput-object p2, p0, Lma/e;->f:Ljava/util/concurrent/CountDownLatch;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final send(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 0

    .line 1
    iget-object p1, p0, Lma/e;->e:[Landroid/content/Intent;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 2
    iget-object p1, p0, Lma/e;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return p3
.end method

.method public final send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lma/e;->e:[Landroid/content/Intent;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 4
    iget-object p1, p0, Lma/e;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
