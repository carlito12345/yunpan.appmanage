.class Lcom/hjq/toast/ToastStrategy$ShowRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/toast/ToastStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowRunnable"
.end annotation


# instance fields
.field private final mToastParams:Lcom/hjq/toast/ToastParams;

.field final synthetic this$0:Lcom/hjq/toast/ToastStrategy;


# direct methods
.method private constructor <init>(Lcom/hjq/toast/ToastStrategy;Lcom/hjq/toast/ToastParams;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->this$0:Lcom/hjq/toast/ToastStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->mToastParams:Lcom/hjq/toast/ToastParams;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hjq/toast/ToastStrategy;Lcom/hjq/toast/ToastParams;Lcom/hjq/toast/ToastStrategy$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hjq/toast/ToastStrategy$ShowRunnable;-><init>(Lcom/hjq/toast/ToastStrategy;Lcom/hjq/toast/ToastParams;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->this$0:Lcom/hjq/toast/ToastStrategy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/toast/ToastStrategy;->access$200(Lcom/hjq/toast/ToastStrategy;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->mToastParams:Lcom/hjq/toast/ToastParams;

    .line 19
    .line 20
    iget-wide v4, v0, Lcom/hjq/toast/ToastParams;->delayMillis:J

    .line 21
    .line 22
    add-long/2addr v2, v4

    .line 23
    iget-object v4, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->this$0:Lcom/hjq/toast/ToastStrategy;

    .line 24
    .line 25
    invoke-virtual {v4, v0}, Lcom/hjq/toast/ToastStrategy;->getBestShowDelayDuration(Lcom/hjq/toast/ToastParams;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    int-to-long v4, v0

    .line 30
    add-long/2addr v2, v4

    .line 31
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->this$0:Lcom/hjq/toast/ToastStrategy;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->mToastParams:Lcom/hjq/toast/ToastParams;

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Lcom/hjq/toast/ToastStrategy;->generateToastWaitMillis(Lcom/hjq/toast/ToastParams;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    int-to-long v4, v0

    .line 40
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->this$0:Lcom/hjq/toast/ToastStrategy;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/hjq/toast/ToastStrategy;->access$500(Lcom/hjq/toast/ToastStrategy;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    add-long/2addr v6, v4

    .line 47
    cmp-long v0, v2, v6

    .line 48
    .line 49
    if-gez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->this$0:Lcom/hjq/toast/ToastStrategy;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/hjq/toast/ToastStrategy;->access$500(Lcom/hjq/toast/ToastStrategy;)J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    add-long/2addr v2, v4

    .line 58
    :cond_1
    invoke-static {}, Lcom/hjq/toast/ToastStrategy;->access$400()Landroid/os/Handler;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v4, Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;

    .line 63
    .line 64
    iget-object v5, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->this$0:Lcom/hjq/toast/ToastStrategy;

    .line 65
    .line 66
    iget-object v6, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->mToastParams:Lcom/hjq/toast/ToastParams;

    .line 67
    .line 68
    invoke-direct {v4, v5, v6, v1}, Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;-><init>(Lcom/hjq/toast/ToastStrategy;Lcom/hjq/toast/ToastParams;Lcom/hjq/toast/ToastStrategy$1;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->this$0:Lcom/hjq/toast/ToastStrategy;

    .line 75
    .line 76
    invoke-static {v0, v2, v3}, Lcom/hjq/toast/ToastStrategy;->access$502(Lcom/hjq/toast/ToastStrategy;J)J

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->mToastParams:Lcom/hjq/toast/ToastParams;

    .line 85
    .line 86
    iget-wide v4, v0, Lcom/hjq/toast/ToastParams;->delayMillis:J

    .line 87
    .line 88
    add-long/2addr v2, v4

    .line 89
    iget-object v4, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->this$0:Lcom/hjq/toast/ToastStrategy;

    .line 90
    .line 91
    invoke-virtual {v4, v0}, Lcom/hjq/toast/ToastStrategy;->getBestShowDelayDuration(Lcom/hjq/toast/ToastParams;)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    int-to-long v4, v0

    .line 96
    add-long/2addr v2, v4

    .line 97
    invoke-static {}, Lcom/hjq/toast/ToastStrategy;->access$400()Landroid/os/Handler;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v4, Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;

    .line 102
    .line 103
    iget-object v5, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->this$0:Lcom/hjq/toast/ToastStrategy;

    .line 104
    .line 105
    iget-object v6, p0, Lcom/hjq/toast/ToastStrategy$ShowRunnable;->mToastParams:Lcom/hjq/toast/ToastParams;

    .line 106
    .line 107
    invoke-direct {v4, v5, v6, v1}, Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;-><init>(Lcom/hjq/toast/ToastStrategy;Lcom/hjq/toast/ToastParams;Lcom/hjq/toast/ToastStrategy$1;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 111
    .line 112
    .line 113
    :goto_0
    return-void
.end method
