.class public abstract synthetic Ltb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a()Landroid/text/BidiFormatter;
    .locals 1

    .line 1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic b()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .line 1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public static bridge synthetic c(Ljava/lang/Object;)Landroid/text/TextDirectionHeuristic;
    .locals 0

    .line 1
    check-cast p0, Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public static bridge synthetic d(Lio/github/rosemoe/sora/widget/CodeEditor;)Landroid/view/WindowId;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Landroid/text/BidiFormatter;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "android:id/button1"

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static bridge synthetic i(Landroid/view/accessibility/AccessibilityNodeInfo;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTextSelection(II)V

    return-void
.end method

.method public static bridge synthetic j(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    return-void
.end method

.method public static bridge synthetic k(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic l(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const/16 v0, 0x2002

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "android:id/button_always"

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic o(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "android:id/button_once"

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic p(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "android:id/button2"

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "com.android.systemui:id/wifi_debugging_alwaysUse"

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "android:id/alertTitle"

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic s(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "android:id/message"

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic t(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "android:id/alwaysUse"

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic u(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/List;
    .locals 1

    .line 1
    const-string v0, "com.leapmotor.system:id/turn_on_adb_wifi_btn"

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
