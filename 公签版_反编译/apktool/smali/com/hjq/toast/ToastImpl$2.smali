.class Lcom/hjq/toast/ToastImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hjq/toast/ToastImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hjq/toast/ToastImpl;


# direct methods
.method public constructor <init>(Lcom/hjq/toast/ToastImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hjq/toast/ToastImpl$2;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hjq/toast/ToastImpl$2;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/toast/ToastImpl;->access$000(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/CustomToast;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/hjq/toast/CustomToast;->getView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/hjq/toast/ToastImpl$2;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 15
    .line 16
    invoke-static {v1}, Lcom/hjq/toast/ToastImpl;->access$100(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/WindowLifecycle;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/hjq/toast/WindowLifecycle;->getWindowManager()Landroid/view/WindowManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    :try_start_0
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Lcom/hjq/toast/ToastImpl$2;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/hjq/toast/ToastImpl;->access$100(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/WindowLifecycle;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/hjq/toast/WindowLifecycle;->unregister()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/hjq/toast/ToastImpl$2;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lcom/hjq/toast/ToastImpl;->setShow(Z)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception v0

    .line 49
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :goto_1
    return-void

    .line 54
    :goto_2
    iget-object v1, p0, Lcom/hjq/toast/ToastImpl$2;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/hjq/toast/ToastImpl;->access$100(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/WindowLifecycle;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/hjq/toast/WindowLifecycle;->unregister()V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/hjq/toast/ToastImpl$2;->this$0:Lcom/hjq/toast/ToastImpl;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/hjq/toast/ToastImpl;->setShow(Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :goto_3
    throw v0

    .line 70
    :goto_4
    goto :goto_3
.end method
