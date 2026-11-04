.class public final synthetic Lio/github/muntashirakon/adb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    .line 1
    iput p4, p0, Lio/github/muntashirakon/adb/a;->a:I

    iput-object p1, p0, Lio/github/muntashirakon/adb/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/github/muntashirakon/adb/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lio/github/muntashirakon/adb/a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPortChanged(Ljava/net/InetAddress;ILjava/lang/String;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/github/muntashirakon/adb/a;->d:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    iget-object v1, p0, Lio/github/muntashirakon/adb/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    iget-object v2, p0, Lio/github/muntashirakon/adb/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    iget v3, p0, Lio/github/muntashirakon/adb/a;->a:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget p3, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_0
    sget p3, Lcom/yunpan/appmanage/ui/ActivityStudy;->I:I

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_1
    iget-object v4, p0, Lio/github/muntashirakon/adb/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    .line 50
    iget-object v5, p0, Lio/github/muntashirakon/adb/a;->d:Ljava/util/concurrent/CountDownLatch;

    .line 51
    .line 52
    iget-object v3, p0, Lio/github/muntashirakon/adb/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    .line 54
    move-object v6, p1

    .line 55
    move v7, p2

    .line 56
    move-object v8, p3

    .line 57
    invoke-static/range {v3 .. v8}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->A(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_2
    iget-object v7, p0, Lio/github/muntashirakon/adb/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    .line 63
    iget-object v8, p0, Lio/github/muntashirakon/adb/a;->d:Ljava/util/concurrent/CountDownLatch;

    .line 64
    .line 65
    iget-object v6, p0, Lio/github/muntashirakon/adb/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    .line 67
    move-object v9, p1

    .line 68
    move v10, p2

    .line 69
    move-object v11, p3

    .line 70
    invoke-static/range {v6 .. v11}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->J(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_3
    iget-object v1, p0, Lio/github/muntashirakon/adb/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 75
    .line 76
    iget-object v2, p0, Lio/github/muntashirakon/adb/a;->d:Ljava/util/concurrent/CountDownLatch;

    .line 77
    .line 78
    iget-object v0, p0, Lio/github/muntashirakon/adb/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 79
    .line 80
    move-object v3, p1

    .line 81
    move v4, p2

    .line 82
    move-object v5, p3

    .line 83
    invoke-static/range {v0 .. v5}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;->r(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
