.class public abstract synthetic Lb1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/os/Trace;

    return-object v0
.end method

.method public static bridge synthetic B(Landroid/os/StatFs;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic C()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .line 1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public static bridge synthetic D()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .line 1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public static bridge synthetic a(Landroid/view/WindowId;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/WindowId;->hashCode()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroid/os/StatFs;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic c(Landroid/bluetooth/BluetoothManager;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Ljava/lang/Object;)Landroid/bluetooth/BluetoothManager;
    .locals 0

    .line 1
    check-cast p0, Landroid/bluetooth/BluetoothManager;

    return-object p0
.end method

.method public static bridge synthetic e()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .line 1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public static bridge synthetic f(Landroid/view/ViewGroup;)Landroid/view/ViewGroupOverlay;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(Landroid/view/View;)Landroid/view/ViewOverlay;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Landroid/view/View;)Landroid/view/WindowId;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public static bridge synthetic j(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(Landroid/os/HandlerThread;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public static bridge synthetic m(Landroid/os/StatFs;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCountLong()J

    return-void
.end method

.method public static bridge synthetic n(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic o(Landroid/view/ViewGroupOverlay;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic p(Landroid/view/ViewOverlay;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/yunpan/appmanage/service/StartService;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->cancelAllNotifications()V

    return-void
.end method

.method public static bridge synthetic r(Landroid/view/WindowId;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic s(Landroid/os/StatFs;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic t()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .line 1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public static bridge synthetic u()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Landroid/bluetooth/BluetoothManager;

    return-object v0
.end method

.method public static bridge synthetic v(Landroid/os/StatFs;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    return-void
.end method

.method public static bridge synthetic w(Landroid/view/ViewGroupOverlay;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic x(Landroid/view/ViewOverlay;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static bridge synthetic y(Landroid/os/StatFs;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic z()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .line 1
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method
