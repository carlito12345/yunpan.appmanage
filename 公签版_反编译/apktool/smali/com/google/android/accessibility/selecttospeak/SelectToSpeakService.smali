.class public Lcom/google/android/accessibility/selecttospeak/SelectToSpeakService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public final onInterrupt()V
    .locals 0

    return-void
.end method

.method public final onServiceConnected()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lqf/c;->U(Landroid/accessibilityservice/AccessibilityService;)V

    .line 12
    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v1, 0x18

    .line 17
    .line 18
    if-lt v0, v1, :cond_0

    .line 19
    .line 20
    invoke-static {p0}, Ljg/w;->q(Lcom/google/android/accessibility/selecttospeak/SelectToSpeakService;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
