.class public Ly0/p;
.super Ly0/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lw/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ly0/o;-><init>(Lw/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/o;->a:Lw/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lw/i;->l(I)Ly0/n;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object p1, p1, Ly0/n;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 12
    .line 13
    return-object p1
.end method
