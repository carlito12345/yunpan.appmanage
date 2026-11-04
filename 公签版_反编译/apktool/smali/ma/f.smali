.class public final Lma/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lma/i;


# direct methods
.method public synthetic constructor <init>(Lma/i;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    iput p3, p0, Lma/f;->a:I

    iput-object p1, p0, Lma/f;->b:Lma/i;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p0, Lma/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/16 v1, 0x64

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, p0, Lma/f;->b:Lma/i;

    .line 17
    .line 18
    iget-object v0, v0, Lma/i;->k:Lma/g;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-interface {v0, p1, v1}, Lma/g;->c(Ljava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iget-object v1, p0, Lma/f;->b:Lma/i;

    .line 34
    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    .line 37
    iget-object p1, v1, Lma/i;->i:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    iget-boolean p1, v1, Lma/i;->f:Z

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    const-string p1, ""

    .line 50
    .line 51
    iput-object p1, v1, Lma/i;->a:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p1, v1, Lma/i;->g:Ljava/util/concurrent/Semaphore;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x2

    .line 60
    if-ne p1, v0, :cond_2

    .line 61
    .line 62
    iget-object p1, v1, Lma/i;->i:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    iget-boolean p1, v1, Lma/i;->f:Z

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    const-string p1, "\u81ea\u884c\u786e\u8ba4"

    .line 75
    .line 76
    iput-object p1, v1, Lma/i;->a:Ljava/lang/String;

    .line 77
    .line 78
    iget-object p1, v1, Lma/i;->g:Ljava/util/concurrent/Semaphore;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
