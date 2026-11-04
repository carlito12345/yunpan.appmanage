.class final Lcom/hjq/toast/ToastImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HANDLER:Landroid/os/Handler;

.field private static final WINDOW_TITLE:Ljava/lang/String; = "Toast"


# instance fields
.field private final mCancelRunnable:Ljava/lang/Runnable;

.field private mGlobalShow:Z

.field private final mPackageName:Ljava/lang/String;

.field private mShow:Z

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private final mToast:Lcom/hjq/toast/CustomToast;

.field private final mWindowLifecycle:Lcom/hjq/toast/WindowLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/hjq/toast/ToastImpl;->HANDLER:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/hjq/toast/CustomToast;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/hjq/toast/ToastImpl$1;

    invoke-direct {v0, p0}, Lcom/hjq/toast/ToastImpl$1;-><init>(Lcom/hjq/toast/ToastImpl;)V

    iput-object v0, p0, Lcom/hjq/toast/ToastImpl;->mShowRunnable:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lcom/hjq/toast/ToastImpl$2;

    invoke-direct {v0, p0}, Lcom/hjq/toast/ToastImpl$2;-><init>(Lcom/hjq/toast/ToastImpl;)V

    iput-object v0, p0, Lcom/hjq/toast/ToastImpl;->mCancelRunnable:Ljava/lang/Runnable;

    .line 4
    iput-object p2, p0, Lcom/hjq/toast/ToastImpl;->mToast:Lcom/hjq/toast/CustomToast;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hjq/toast/ToastImpl;->mPackageName:Ljava/lang/String;

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/hjq/toast/ToastImpl;->mGlobalShow:Z

    .line 7
    new-instance p2, Lcom/hjq/toast/WindowLifecycle;

    invoke-direct {p2, p1}, Lcom/hjq/toast/WindowLifecycle;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/hjq/toast/ToastImpl;->mWindowLifecycle:Lcom/hjq/toast/WindowLifecycle;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/hjq/toast/CustomToast;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/hjq/toast/ToastImpl$1;

    invoke-direct {v0, p0}, Lcom/hjq/toast/ToastImpl$1;-><init>(Lcom/hjq/toast/ToastImpl;)V

    iput-object v0, p0, Lcom/hjq/toast/ToastImpl;->mShowRunnable:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lcom/hjq/toast/ToastImpl$2;

    invoke-direct {v0, p0}, Lcom/hjq/toast/ToastImpl$2;-><init>(Lcom/hjq/toast/ToastImpl;)V

    iput-object v0, p0, Lcom/hjq/toast/ToastImpl;->mCancelRunnable:Ljava/lang/Runnable;

    .line 11
    iput-object p2, p0, Lcom/hjq/toast/ToastImpl;->mToast:Lcom/hjq/toast/CustomToast;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/hjq/toast/ToastImpl;->mPackageName:Ljava/lang/String;

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lcom/hjq/toast/ToastImpl;->mGlobalShow:Z

    .line 14
    new-instance p2, Lcom/hjq/toast/WindowLifecycle;

    invoke-direct {p2, p1}, Lcom/hjq/toast/WindowLifecycle;-><init>(Landroid/app/Application;)V

    iput-object p2, p0, Lcom/hjq/toast/ToastImpl;->mWindowLifecycle:Lcom/hjq/toast/WindowLifecycle;

    return-void
.end method

.method public static synthetic access$000(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/CustomToast;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hjq/toast/ToastImpl;->mToast:Lcom/hjq/toast/CustomToast;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/hjq/toast/ToastImpl;)Lcom/hjq/toast/WindowLifecycle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hjq/toast/ToastImpl;->mWindowLifecycle:Lcom/hjq/toast/WindowLifecycle;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/hjq/toast/ToastImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hjq/toast/ToastImpl;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/hjq/toast/ToastImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hjq/toast/ToastImpl;->mGlobalShow:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/hjq/toast/ToastImpl;->HANDLER:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$500(Lcom/hjq/toast/ToastImpl;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hjq/toast/ToastImpl;->sendAccessibilityEvent(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private isMainThread()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private sendAccessibilityEvent(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "accessibility"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v3, 0x1e

    .line 23
    .line 24
    const/16 v4, 0x40

    .line 25
    .line 26
    if-lt v2, v3, :cond_1

    .line 27
    .line 28
    new-instance v2, Landroid/view/accessibility/AccessibilityEvent;

    .line 29
    .line 30
    invoke-direct {v2}, Landroid/view/accessibility/AccessibilityEvent;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_0
    const-class v3, Landroid/widget/Toast;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hjq/toast/ToastImpl;->isShow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/hjq/toast/ToastImpl;->HANDLER:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/hjq/toast/ToastImpl;->mShowRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/hjq/toast/ToastImpl;->isMainThread()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/hjq/toast/ToastImpl;->mCancelRunnable:Ljava/lang/Runnable;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/hjq/toast/ToastImpl;->mCancelRunnable:Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/hjq/toast/ToastImpl;->mCancelRunnable:Ljava/lang/Runnable;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public isShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hjq/toast/ToastImpl;->mShow:Z

    .line 2
    .line 3
    return v0
.end method

.method public setShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hjq/toast/ToastImpl;->mShow:Z

    .line 2
    .line 3
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hjq/toast/ToastImpl;->isShow()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/hjq/toast/ToastImpl;->isMainThread()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/hjq/toast/ToastImpl;->mShowRunnable:Ljava/lang/Runnable;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    sget-object v0, Lcom/hjq/toast/ToastImpl;->HANDLER:Landroid/os/Handler;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/hjq/toast/ToastImpl;->mShowRunnable:Ljava/lang/Runnable;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/hjq/toast/ToastImpl;->mShowRunnable:Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
