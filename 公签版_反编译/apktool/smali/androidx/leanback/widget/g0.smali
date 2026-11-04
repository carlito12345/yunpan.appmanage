.class public final Landroidx/leanback/widget/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/g0;->a:I

    iput-object p2, p0, Landroidx/leanback/widget/g0;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget p1, p0, Landroidx/leanback/widget/g0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/leanback/widget/g0;->b:Landroid/view/ViewGroup;

    .line 7
    .line 8
    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->s()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :pswitch_0
    const/4 p1, 0x3

    .line 16
    iget-object p3, p0, Landroidx/leanback/widget/g0;->b:Landroid/view/ViewGroup;

    .line 17
    .line 18
    check-cast p3, Landroidx/leanback/widget/SearchBar;

    .line 19
    .line 20
    if-eq p1, p2, :cond_0

    .line 21
    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 p1, 0x1

    .line 28
    if-ne p1, p2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    :cond_2
    const/4 v0, 0x2

    .line 34
    const/4 v1, 0x0

    .line 35
    if-ne v0, p2, :cond_3

    .line 36
    .line 37
    iget-object p2, p3, Landroidx/leanback/widget/SearchBar;->a:Landroidx/leanback/widget/SearchEditText;

    .line 38
    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object v0, p3, Landroidx/leanback/widget/SearchBar;->i:Landroid/view/inputmethod/InputMethodManager;

    .line 44
    .line 45
    invoke-virtual {v0, p2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 46
    .line 47
    .line 48
    iget-object p2, p3, Landroidx/leanback/widget/SearchBar;->h:Landroid/os/Handler;

    .line 49
    .line 50
    new-instance p3, Landroidx/activity/h;

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    invoke-direct {p3, v0, p0}, Landroidx/activity/h;-><init>(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v0, 0x1f4

    .line 57
    .line 58
    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/4 p1, 0x0

    .line 63
    :goto_0
    return p1

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
