.class public final Landroidx/leanback/widget/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(ILandroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/leanback/widget/d0;->a:I

    iput-object p2, p0, Landroidx/leanback/widget/d0;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1
    iget p1, p0, Landroidx/leanback/widget/d0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/leanback/widget/d0;->b:Landroid/view/ViewGroup;

    .line 7
    .line 8
    check-cast p1, Landroidx/appcompat/widget/SearchView;

    .line 9
    .line 10
    iget-object v0, p1, Landroidx/appcompat/widget/SearchView;->N:Landroid/view/View$OnFocusChangeListener;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :pswitch_0
    iget-object p1, p0, Landroidx/leanback/widget/d0;->b:Landroid/view/ViewGroup;

    .line 19
    .line 20
    check-cast p1, Landroidx/leanback/widget/SearchBar;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    iget-object v0, p1, Landroidx/leanback/widget/SearchBar;->a:Landroidx/leanback/widget/SearchEditText;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p1, Landroidx/leanback/widget/SearchBar;->i:Landroid/view/inputmethod/InputMethodManager;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p1, Landroidx/leanback/widget/SearchBar;->j:Z

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->a()V

    .line 41
    .line 42
    .line 43
    iput-boolean v2, p1, Landroidx/leanback/widget/SearchBar;->j:Z

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->b()V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/SearchBar;->d(Z)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_1
    iget-object p1, p0, Landroidx/leanback/widget/d0;->b:Landroid/view/ViewGroup;

    .line 54
    .line 55
    check-cast p1, Landroidx/leanback/widget/SearchBar;

    .line 56
    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    iget-object v0, p1, Landroidx/leanback/widget/SearchBar;->h:Landroid/os/Handler;

    .line 60
    .line 61
    new-instance v1, Landroidx/leanback/widget/e0;

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    invoke-direct {v1, p1, v2}, Landroidx/leanback/widget/e0;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iget-object v0, p1, Landroidx/leanback/widget/SearchBar;->a:Landroidx/leanback/widget/SearchEditText;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/4 v1, 0x0

    .line 78
    iget-object v2, p1, Landroidx/leanback/widget/SearchBar;->i:Landroid/view/inputmethod/InputMethodManager;

    .line 79
    .line 80
    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-virtual {p1, p2}, Landroidx/leanback/widget/SearchBar;->d(Z)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
