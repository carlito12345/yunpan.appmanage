.class Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;
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
    name = "ShowToastRunnable"
.end annotation


# instance fields
.field private final mToastParams:Lcom/hjq/toast/ToastParams;

.field final synthetic this$0:Lcom/hjq/toast/ToastStrategy;


# direct methods
.method private constructor <init>(Lcom/hjq/toast/ToastStrategy;Lcom/hjq/toast/ToastParams;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;->this$0:Lcom/hjq/toast/ToastStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/hjq/toast/ToastParams;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hjq/toast/ToastStrategy;Lcom/hjq/toast/ToastParams;Lcom/hjq/toast/ToastStrategy$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;-><init>(Lcom/hjq/toast/ToastStrategy;Lcom/hjq/toast/ToastParams;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;->this$0:Lcom/hjq/toast/ToastStrategy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/toast/ToastStrategy;->access$600(Lcom/hjq/toast/ToastStrategy;)Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;->this$0:Lcom/hjq/toast/ToastStrategy;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/hjq/toast/ToastStrategy;->access$600(Lcom/hjq/toast/ToastStrategy;)Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/hjq/toast/config/IToast;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/hjq/toast/config/IToast;->cancel()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;->this$0:Lcom/hjq/toast/ToastStrategy;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/hjq/toast/ToastParams;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/hjq/toast/ToastStrategy;->createToast(Lcom/hjq/toast/ToastParams;)Lcom/hjq/toast/config/IToast;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;->this$0:Lcom/hjq/toast/ToastStrategy;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v2}, Lcom/hjq/toast/ToastStrategy;->access$602(Lcom/hjq/toast/ToastStrategy;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/hjq/toast/ToastParams;

    .line 47
    .line 48
    iget v1, v1, Lcom/hjq/toast/ToastParams;->duration:I

    .line 49
    .line 50
    invoke-interface {v0, v1}, Lcom/hjq/toast/config/IToast;->setDuration(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/hjq/toast/ToastStrategy$ShowToastRunnable;->mToastParams:Lcom/hjq/toast/ToastParams;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/hjq/toast/ToastParams;->text:Ljava/lang/CharSequence;

    .line 56
    .line 57
    invoke-interface {v0, v1}, Lcom/hjq/toast/config/IToast;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Lcom/hjq/toast/config/IToast;->show()V

    .line 61
    .line 62
    .line 63
    return-void
.end method
