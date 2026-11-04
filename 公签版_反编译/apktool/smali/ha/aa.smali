.class public final Lha/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/aa;->a:I

    iput-object p1, p0, Lha/aa;->b:Landroid/view/KeyEvent$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(Landroid/text/Editable;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final d(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final e(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final f(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final g(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final h(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final i(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final j(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final k(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final l(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final m(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final n(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lha/aa;->b:Landroid/view/KeyEvent$Callback;

    .line 3
    .line 4
    iget v2, p0, Lha/aa;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->c1:I

    .line 11
    .line 12
    check-cast v1, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/yunpan/appmanage/ui/ActivityCodeEditor;->z()V

    .line 15
    .line 16
    .line 17
    :pswitch_1
    return-void

    .line 18
    :pswitch_2
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 19
    .line 20
    iget-boolean v2, v1, Lcom/google/android/material/textfield/TextInputLayout;->p1:Z

    .line 21
    .line 22
    xor-int/2addr v0, v2

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->u(ZZ)V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->k:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->n(Landroid/text/Editable;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-boolean v0, v1, Lcom/google/android/material/textfield/TextInputLayout;->t:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Lcom/google/android/material/textfield/TextInputLayout;->v(Landroid/text/Editable;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void

    .line 42
    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    sget-object v0, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/yunpan/appmanage/util/w;->j:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    check-cast v1, Lha/ad;

    .line 61
    .line 62
    invoke-virtual {v1}, Lha/ad;->a()V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void

    .line 66
    :pswitch_4
    check-cast v1, Lha/ba;

    .line 67
    .line 68
    iget-object p1, v1, Lha/ba;->q:Lcom/yunpan/appmanage/carsdk/u;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v1, Lha/ba;->q:Lcom/yunpan/appmanage/carsdk/u;

    .line 74
    .line 75
    const-wide/16 v1, 0x1f4

    .line 76
    .line 77
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p1, p0, Lha/aa;->a:I

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 1
    iget p2, p0, Lha/aa;->a:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lha/aa;->b:Landroid/view/KeyEvent$Callback;

    .line 7
    .line 8
    check-cast p2, Landroidx/appcompat/widget/SearchView;

    .line 9
    .line 10
    iget-object p3, p2, Landroidx/appcompat/widget/SearchView;->q:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 11
    .line 12
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iput-object p3, p2, Landroidx/appcompat/widget/SearchView;->O0:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    xor-int/lit8 p4, p3, 0x1

    .line 23
    .line 24
    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/SearchView;->x(Z)V

    .line 25
    .line 26
    .line 27
    iget-boolean p4, p2, Landroidx/appcompat/widget/SearchView;->N0:Z

    .line 28
    .line 29
    const/16 v0, 0x8

    .line 30
    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    iget-boolean p4, p2, Landroidx/appcompat/widget/SearchView;->R:Z

    .line 34
    .line 35
    if-nez p4, :cond_0

    .line 36
    .line 37
    if-eqz p3, :cond_0

    .line 38
    .line 39
    iget-object p3, p2, Landroidx/appcompat/widget/SearchView;->w:Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    :cond_0
    iget-object p3, p2, Landroidx/appcompat/widget/SearchView;->y:Landroid/widget/ImageView;

    .line 46
    .line 47
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->t()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView;->w()V

    .line 54
    .line 55
    .line 56
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    :pswitch_0
    return-void

    .line 60
    :pswitch_1
    iget-object p1, p0, Lha/aa;->b:Landroid/view/KeyEvent$Callback;

    .line 61
    .line 62
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;

    .line 63
    .line 64
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->H:Landroid/widget/EditText;

    .line 65
    .line 66
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iput-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->I:Ljava/lang/String;

    .line 75
    .line 76
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->F:Lx9/a0;

    .line 77
    .line 78
    new-instance p3, Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p3}, Lc6/g;->E(Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->I:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/ui/ActivityAppsPermissions;->x(I)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :pswitch_2
    iget-object p1, p0, Lha/aa;->b:Landroid/view/KeyEvent$Callback;

    .line 97
    .line 98
    check-cast p1, Lcom/yunpan/appmanage/ui/ActivityApps;

    .line 99
    .line 100
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityApps;->I:Landroid/widget/EditText;

    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    iput-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityApps;->K:Ljava/lang/String;

    .line 111
    .line 112
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityApps;->F:Lx9/a0;

    .line 113
    .line 114
    new-instance p3, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p3}, Lc6/g;->E(Ljava/util/List;)V

    .line 120
    .line 121
    .line 122
    iget-object p2, p1, Lcom/yunpan/appmanage/ui/ActivityApps;->K:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-virtual {p1, p2}, Lcom/yunpan/appmanage/ui/ActivityApps;->x(I)V

    .line 129
    .line 130
    .line 131
    :pswitch_3
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
