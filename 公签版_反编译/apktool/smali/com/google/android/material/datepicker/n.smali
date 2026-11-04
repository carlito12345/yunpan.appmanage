.class public final Lcom/google/android/material/datepicker/n;
.super Landroidx/fragment/app/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/s;"
    }
.end annotation


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:I

.field public C:Ljava/lang/CharSequence;

.field public D:I

.field public E:Ljava/lang/CharSequence;

.field public F:I

.field public G:Ljava/lang/CharSequence;

.field public H:Landroid/widget/TextView;

.field public I:Lcom/google/android/material/internal/CheckableImageButton;

.field public K:Lm7/g;

.field public L:Z

.field public M:Ljava/lang/CharSequence;

.field public N:Ljava/lang/CharSequence;

.field public final n:Ljava/util/LinkedHashSet;

.field public final p:Ljava/util/LinkedHashSet;

.field public q:I

.field public r:Lcom/google/android/material/datepicker/u;

.field public s:Lcom/google/android/material/datepicker/b;

.field public t:Lcom/google/android/material/datepicker/k;

.field public v:I

.field public w:Ljava/lang/CharSequence;

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/s;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/material/datepicker/n;->n:Ljava/util/LinkedHashSet;

    .line 20
    .line 21
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/material/datepicker/n;->p:Ljava/util/LinkedHashSet;

    .line 27
    .line 28
    return-void
.end method

.method public static j(Landroid/content/Context;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const v0, 0x7f070529

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {}, Lcom/google/android/material/datepicker/x;->b()Ljava/util/Calendar;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x5

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/google/android/material/datepicker/x;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x7

    .line 33
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getMaximum(I)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 41
    .line 42
    .line 43
    const v1, 0x7f07052f

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const v2, 0x7f07053d

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    mul-int/lit8 v0, v0, 0x2

    .line 58
    .line 59
    mul-int v1, v1, v5

    .line 60
    .line 61
    add-int/2addr v1, v0

    .line 62
    sub-int/2addr v5, v3

    .line 63
    mul-int v5, v5, p0

    .line 64
    .line 65
    add-int/2addr v5, v1

    .line 66
    return v5
.end method

.method public static k(Landroid/content/Context;I)Z
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/material/datepicker/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f04039b

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, v1}, Landroid/support/v4/media/session/b;->F(Landroid/content/Context;Ljava/lang/String;I)Landroid/util/TypedValue;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 15
    .line 16
    filled-new-array {p1}, [I

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    .line 31
    .line 32
    return p1
.end method


# virtual methods
.method public final g()Landroid/app/Dialog;
    .locals 6

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/google/android/material/datepicker/n;->q:I

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const v2, 0x101020d

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/n;->k(Landroid/content/Context;I)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iput-boolean v2, p0, Lcom/google/android/material/datepicker/n;->x:Z

    .line 30
    .line 31
    new-instance v2, Lm7/g;

    .line 32
    .line 33
    const v4, 0x7f04039b

    .line 34
    .line 35
    .line 36
    const v5, 0x7f1404b7

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v1, v3, v4, v5}, Lm7/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lcom/google/android/material/datepicker/n;->K:Lm7/g;

    .line 43
    .line 44
    sget-object v2, Lq6/a;->m:[I

    .line 45
    .line 46
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v3, 0x1

    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/google/android/material/datepicker/n;->K:Lm7/g;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Lm7/g;->i(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/google/android/material/datepicker/n;->K:Lm7/g;

    .line 65
    .line 66
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Lm7/g;->k(Landroid/content/res/ColorStateList;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/google/android/material/datepicker/n;->K:Lm7/g;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2}, Lx0/b1;->g(Landroid/view/View;)F

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {v1, v2}, Lm7/g;->j(F)V

    .line 88
    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/n;->i()V

    .line 92
    .line 93
    .line 94
    throw v3
.end method

.method public final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "DATE_SELECTOR_KEY"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

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
    new-instance v0, Ljava/lang/ClassCastException;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->n:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/s;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/google/android/material/datepicker/n;->q:I

    .line 17
    .line 18
    const-string v0, "DATE_SELECTOR_KEY"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_5

    .line 25
    .line 26
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/google/android/material/datepicker/b;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/material/datepicker/n;->s:Lcom/google/android/material/datepicker/b;

    .line 35
    .line 36
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_4

    .line 43
    .line 44
    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lcom/google/android/material/datepicker/n;->v:I

    .line 51
    .line 52
    const-string v0, "TITLE_TEXT_KEY"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/google/android/material/datepicker/n;->w:Ljava/lang/CharSequence;

    .line 59
    .line 60
    const-string v0, "INPUT_MODE_KEY"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/google/android/material/datepicker/n;->y:I

    .line 67
    .line 68
    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput v0, p0, Lcom/google/android/material/datepicker/n;->z:I

    .line 75
    .line 76
    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/google/android/material/datepicker/n;->A:Ljava/lang/CharSequence;

    .line 83
    .line 84
    const-string v0, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iput v0, p0, Lcom/google/android/material/datepicker/n;->B:I

    .line 91
    .line 92
    const-string v0, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/google/android/material/datepicker/n;->C:Ljava/lang/CharSequence;

    .line 99
    .line 100
    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput v0, p0, Lcom/google/android/material/datepicker/n;->D:I

    .line 107
    .line 108
    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/google/android/material/datepicker/n;->E:Ljava/lang/CharSequence;

    .line 115
    .line 116
    const-string v0, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput v0, p0, Lcom/google/android/material/datepicker/n;->F:I

    .line 123
    .line 124
    const-string v0, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/google/android/material/datepicker/n;->G:Ljava/lang/CharSequence;

    .line 131
    .line 132
    iget-object p1, p0, Lcom/google/android/material/datepicker/n;->w:Ljava/lang/CharSequence;

    .line 133
    .line 134
    if-eqz p1, :cond_1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget v0, p0, Lcom/google/android/material/datepicker/n;->v:I

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    :goto_0
    iput-object p1, p0, Lcom/google/android/material/datepicker/n;->M:Ljava/lang/CharSequence;

    .line 152
    .line 153
    if-eqz p1, :cond_2

    .line 154
    .line 155
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const-string v1, "\n"

    .line 160
    .line 161
    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    array-length v1, v0

    .line 166
    const/4 v2, 0x1

    .line 167
    if-le v1, v2, :cond_3

    .line 168
    .line 169
    const/4 p1, 0x0

    .line 170
    aget-object p1, v0, p1

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_2
    const/4 p1, 0x0

    .line 174
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/n;->N:Ljava/lang/CharSequence;

    .line 175
    .line 176
    return-void

    .line 177
    :cond_4
    new-instance p1, Ljava/lang/ClassCastException;

    .line 178
    .line 179
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 180
    .line 181
    .line 182
    throw p1

    .line 183
    :cond_5
    new-instance p1, Ljava/lang/ClassCastException;

    .line 184
    .line 185
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 186
    .line 187
    .line 188
    throw p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 1
    iget-boolean p3, p0, Lcom/google/android/material/datepicker/n;->x:Z

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const p3, 0x7f0e01e9

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const p3, 0x7f0e01e8

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iget-boolean p3, p0, Lcom/google/android/material/datepicker/n;->x:Z

    .line 21
    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    const p3, 0x7f0b021b

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 32
    .line 33
    invoke-static {p2}, Lcom/google/android/material/datepicker/n;->j(Landroid/content/Context;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, -0x2

    .line 38
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const p3, 0x7f0b021c

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 53
    .line 54
    invoke-static {p2}, Lcom/google/android/material/datepicker/n;->j(Landroid/content/Context;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/4 v2, -0x1

    .line 59
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    const p3, 0x7f0b0227

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    check-cast p3, Landroid/widget/TextView;

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-static {p3, v0}, Lx0/b1;->y(Landroid/widget/TextView;I)V

    .line 76
    .line 77
    .line 78
    const p3, 0x7f0b0229

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    check-cast p3, Lcom/google/android/material/internal/CheckableImageButton;

    .line 86
    .line 87
    iput-object p3, p0, Lcom/google/android/material/datepicker/n;->I:Lcom/google/android/material/internal/CheckableImageButton;

    .line 88
    .line 89
    const p3, 0x7f0b022d

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    check-cast p3, Landroid/widget/TextView;

    .line 97
    .line 98
    iput-object p3, p0, Lcom/google/android/material/datepicker/n;->H:Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object p3, p0, Lcom/google/android/material/datepicker/n;->I:Lcom/google/android/material/internal/CheckableImageButton;

    .line 101
    .line 102
    const-string v1, "TOGGLE_BUTTON_TAG"

    .line 103
    .line 104
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object p3, p0, Lcom/google/android/material/datepicker/n;->I:Lcom/google/android/material/internal/CheckableImageButton;

    .line 108
    .line 109
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    .line 110
    .line 111
    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 112
    .line 113
    .line 114
    const v2, 0x10100a0

    .line 115
    .line 116
    .line 117
    filled-new-array {v2}, [I

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const v3, 0x7f080191

    .line 122
    .line 123
    .line 124
    invoke-static {p2, v3}, Lcom/bumptech/glide/d;->x(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 129
    .line 130
    .line 131
    const/4 v2, 0x0

    .line 132
    new-array v3, v2, [I

    .line 133
    .line 134
    const v4, 0x7f080193

    .line 135
    .line 136
    .line 137
    invoke-static {p2, v4}, Lcom/bumptech/glide/d;->x(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {v1, v3, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, v1}, Lw/w;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    .line 146
    .line 147
    iget-object p2, p0, Lcom/google/android/material/datepicker/n;->I:Lcom/google/android/material/internal/CheckableImageButton;

    .line 148
    .line 149
    iget p3, p0, Lcom/google/android/material/datepicker/n;->y:I

    .line 150
    .line 151
    if-eqz p3, :cond_2

    .line 152
    .line 153
    const/4 v2, 0x1

    .line 154
    :cond_2
    invoke-virtual {p2, v2}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 155
    .line 156
    .line 157
    iget-object p2, p0, Lcom/google/android/material/datepicker/n;->I:Lcom/google/android/material/internal/CheckableImageButton;

    .line 158
    .line 159
    const/4 p3, 0x0

    .line 160
    invoke-static {p2, p3}, Lx0/b1;->x(Landroid/view/View;Lx0/c;)V

    .line 161
    .line 162
    .line 163
    iget-object p2, p0, Lcom/google/android/material/datepicker/n;->I:Lcom/google/android/material/internal/CheckableImageButton;

    .line 164
    .line 165
    iget v1, p0, Lcom/google/android/material/datepicker/n;->y:I

    .line 166
    .line 167
    if-ne v1, v0, :cond_3

    .line 168
    .line 169
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    const v0, 0x7f13013f

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    goto :goto_2

    .line 181
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    const v0, 0x7f130141

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->I:Lcom/google/android/material/internal/CheckableImageButton;

    .line 193
    .line 194
    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    iget-object p2, p0, Lcom/google/android/material/datepicker/n;->I:Lcom/google/android/material/internal/CheckableImageButton;

    .line 198
    .line 199
    new-instance v0, Lcom/google/android/material/datepicker/l;

    .line 200
    .line 201
    const/4 v1, 0x0

    .line 202
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    .line 208
    const p2, 0x7f0b00ab

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    check-cast p1, Landroid/widget/Button;

    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/n;->i()V

    .line 218
    .line 219
    .line 220
    throw p3
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->p:Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/s;->onDismiss(Landroid/content/DialogInterface;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/s;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 5
    .line 6
    iget v1, p0, Lcom/google/android/material/datepicker/n;->q:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string v0, "DATE_SELECTOR_KEY"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/google/android/material/datepicker/a;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/material/datepicker/n;->s:Lcom/google/android/material/datepicker/b;

    .line 20
    .line 21
    invoke-direct {v0, v2}, Lcom/google/android/material/datepicker/a;-><init>(Lcom/google/android/material/datepicker/b;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/material/datepicker/n;->t:Lcom/google/android/material/datepicker/k;

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    move-object v2, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v2, v2, Lcom/google/android/material/datepicker/k;->d:Lcom/google/android/material/datepicker/p;

    .line 31
    .line 32
    :goto_0
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-wide v2, v2, Lcom/google/android/material/datepicker/p;->f:J

    .line 35
    .line 36
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iput-object v2, v0, Lcom/google/android/material/datepicker/a;->c:Ljava/lang/Long;

    .line 41
    .line 42
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v3, v0, Lcom/google/android/material/datepicker/a;->e:Lcom/google/android/material/datepicker/d;

    .line 48
    .line 49
    const-string v4, "DEEP_COPY_VALIDATOR_KEY"

    .line 50
    .line 51
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Lcom/google/android/material/datepicker/b;

    .line 55
    .line 56
    iget-wide v5, v0, Lcom/google/android/material/datepicker/a;->a:J

    .line 57
    .line 58
    invoke-static {v5, v6}, Lcom/google/android/material/datepicker/p;->b(J)Lcom/google/android/material/datepicker/p;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    iget-wide v7, v0, Lcom/google/android/material/datepicker/a;->b:J

    .line 63
    .line 64
    invoke-static {v7, v8}, Lcom/google/android/material/datepicker/p;->b(J)Lcom/google/android/material/datepicker/p;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    move-object v8, v2

    .line 73
    check-cast v8, Lcom/google/android/material/datepicker/d;

    .line 74
    .line 75
    iget-object v2, v0, Lcom/google/android/material/datepicker/a;->c:Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    invoke-static {v4, v5}, Lcom/google/android/material/datepicker/p;->b(J)Lcom/google/android/material/datepicker/p;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    iget v10, v0, Lcom/google/android/material/datepicker/a;->d:I

    .line 86
    .line 87
    move-object v5, v3

    .line 88
    invoke-direct/range {v5 .. v10}, Lcom/google/android/material/datepicker/b;-><init>(Lcom/google/android/material/datepicker/p;Lcom/google/android/material/datepicker/p;Lcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/p;I)V

    .line 89
    .line 90
    .line 91
    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 92
    .line 93
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "DAY_VIEW_DECORATOR_KEY"

    .line 97
    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 99
    .line 100
    .line 101
    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 102
    .line 103
    iget v1, p0, Lcom/google/android/material/datepicker/n;->v:I

    .line 104
    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    const-string v0, "TITLE_TEXT_KEY"

    .line 109
    .line 110
    iget-object v1, p0, Lcom/google/android/material/datepicker/n;->w:Ljava/lang/CharSequence;

    .line 111
    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    const-string v0, "INPUT_MODE_KEY"

    .line 116
    .line 117
    iget v1, p0, Lcom/google/android/material/datepicker/n;->y:I

    .line 118
    .line 119
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    const-string v0, "POSITIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 123
    .line 124
    iget v1, p0, Lcom/google/android/material/datepicker/n;->z:I

    .line 125
    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    const-string v0, "POSITIVE_BUTTON_TEXT_KEY"

    .line 130
    .line 131
    iget-object v1, p0, Lcom/google/android/material/datepicker/n;->A:Ljava/lang/CharSequence;

    .line 132
    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    const-string v0, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    .line 137
    .line 138
    iget v1, p0, Lcom/google/android/material/datepicker/n;->B:I

    .line 139
    .line 140
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    const-string v0, "POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    .line 144
    .line 145
    iget-object v1, p0, Lcom/google/android/material/datepicker/n;->C:Ljava/lang/CharSequence;

    .line 146
    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    const-string v0, "NEGATIVE_BUTTON_TEXT_RES_ID_KEY"

    .line 151
    .line 152
    iget v1, p0, Lcom/google/android/material/datepicker/n;->D:I

    .line 153
    .line 154
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    const-string v0, "NEGATIVE_BUTTON_TEXT_KEY"

    .line 158
    .line 159
    iget-object v1, p0, Lcom/google/android/material/datepicker/n;->E:Ljava/lang/CharSequence;

    .line 160
    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    const-string v0, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY"

    .line 165
    .line 166
    iget v1, p0, Lcom/google/android/material/datepicker/n;->F:I

    .line 167
    .line 168
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    const-string v0, "NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY"

    .line 172
    .line 173
    iget-object v1, p0, Lcom/google/android/material/datepicker/n;->G:Ljava/lang/CharSequence;

    .line 174
    .line 175
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method public final onStart()V
    .locals 15

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/s;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-boolean v1, p0, Lcom/google/android/material/datepicker/n;->x:Z

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_14

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/material/datepicker/n;->K:Lm7/g;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/google/android/material/datepicker/n;->L:Z

    .line 28
    .line 29
    if-nez v1, :cond_15

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const v4, 0x7f0b0159

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v4}, Ld/b;->x(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-object v4, v3

    .line 62
    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    .line 64
    const/16 v6, 0x15

    .line 65
    .line 66
    if-lt v5, v6, :cond_13

    .line 67
    .line 68
    const/4 v6, 0x0

    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-nez v7, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/4 v7, 0x0

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    :goto_1
    const/4 v7, 0x1

    .line 81
    :goto_2
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    const v9, 0x1010031

    .line 86
    .line 87
    .line 88
    const/high16 v10, -0x1000000

    .line 89
    .line 90
    invoke-static {v8, v9, v10}, Lcom/bumptech/glide/d;->t(Landroid/content/Context;II)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v7, :cond_3

    .line 95
    .line 96
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    :cond_3
    const/16 v7, 0x1e

    .line 101
    .line 102
    if-lt v5, v7, :cond_4

    .line 103
    .line 104
    invoke-static {v0, v6}, Lx0/o1;->a(Landroid/view/Window;Z)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    invoke-static {v0, v6}, Lx0/n1;->a(Landroid/view/Window;Z)V

    .line 109
    .line 110
    .line 111
    :goto_3
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    const/16 v11, 0x17

    .line 116
    .line 117
    const/16 v12, 0x80

    .line 118
    .line 119
    if-ge v5, v11, :cond_5

    .line 120
    .line 121
    const v13, 0x1010451

    .line 122
    .line 123
    .line 124
    invoke-static {v9, v13, v10}, Lcom/bumptech/glide/d;->t(Landroid/content/Context;II)I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    invoke-static {v9, v12}, Lp0/a;->d(II)I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    goto :goto_4

    .line 133
    :cond_5
    const/4 v9, 0x0

    .line 134
    :goto_4
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    const/16 v14, 0x1b

    .line 139
    .line 140
    if-ge v5, v14, :cond_6

    .line 141
    .line 142
    const v5, 0x1010452

    .line 143
    .line 144
    .line 145
    invoke-static {v13, v5, v10}, Lcom/bumptech/glide/d;->t(Landroid/content/Context;II)I

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    invoke-static {v5, v12}, Lp0/a;->d(II)I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    goto :goto_5

    .line 154
    :cond_6
    const/4 v5, 0x0

    .line 155
    :goto_5
    invoke-static {v0, v9}, Lg7/d;->t(Landroid/view/Window;I)V

    .line 156
    .line 157
    .line 158
    invoke-static {v0, v5}, Lg7/d;->D(Landroid/view/Window;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    invoke-static {v4}, Lcom/bumptech/glide/d;->H(I)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    invoke-static {v9}, Lcom/bumptech/glide/d;->H(I)Z

    .line 170
    .line 171
    .line 172
    move-result v10

    .line 173
    if-nez v10, :cond_8

    .line 174
    .line 175
    if-nez v9, :cond_7

    .line 176
    .line 177
    if-eqz v4, :cond_7

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_7
    const/4 v4, 0x0

    .line 181
    goto :goto_7

    .line 182
    :cond_8
    :goto_6
    const/4 v4, 0x1

    .line 183
    :goto_7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    new-instance v10, Ls9/a;

    .line 188
    .line 189
    invoke-direct {v10, v9}, Ls9/a;-><init>(Landroid/view/View;)V

    .line 190
    .line 191
    .line 192
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 193
    .line 194
    const/16 v12, 0x14

    .line 195
    .line 196
    const/16 v13, 0x1a

    .line 197
    .line 198
    if-lt v9, v7, :cond_9

    .line 199
    .line 200
    new-instance v9, Lx0/n2;

    .line 201
    .line 202
    invoke-static {v0}, Lx0/h2;->b(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 203
    .line 204
    .line 205
    move-result-object v14

    .line 206
    invoke-direct {v9, v14, v10}, Lx0/n2;-><init>(Landroid/view/WindowInsetsController;Ls9/a;)V

    .line 207
    .line 208
    .line 209
    iput-object v0, v9, Lx0/n2;->c:Landroid/view/Window;

    .line 210
    .line 211
    goto :goto_8

    .line 212
    :cond_9
    if-lt v9, v13, :cond_a

    .line 213
    .line 214
    new-instance v9, Lx0/m2;

    .line 215
    .line 216
    invoke-direct {v9, v0, v10}, Lx0/m2;-><init>(Landroid/view/Window;Ls9/a;)V

    .line 217
    .line 218
    .line 219
    goto :goto_8

    .line 220
    :cond_a
    if-lt v9, v11, :cond_b

    .line 221
    .line 222
    new-instance v9, Lx0/l2;

    .line 223
    .line 224
    invoke-direct {v9, v0, v10}, Lx0/l2;-><init>(Landroid/view/Window;Ls9/a;)V

    .line 225
    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_b
    if-lt v9, v12, :cond_c

    .line 229
    .line 230
    new-instance v9, Lx0/k2;

    .line 231
    .line 232
    invoke-direct {v9, v0, v10}, Lx0/k2;-><init>(Landroid/view/Window;Ls9/a;)V

    .line 233
    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_c
    new-instance v9, Ls5/c;

    .line 237
    .line 238
    const/16 v10, 0x17

    .line 239
    .line 240
    invoke-direct {v9, v10}, Ls5/c;-><init>(I)V

    .line 241
    .line 242
    .line 243
    :goto_8
    invoke-virtual {v9, v4}, Ls5/c;->G(Z)V

    .line 244
    .line 245
    .line 246
    invoke-static {v8}, Lcom/bumptech/glide/d;->H(I)Z

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    invoke-static {v5}, Lcom/bumptech/glide/d;->H(I)Z

    .line 251
    .line 252
    .line 253
    move-result v8

    .line 254
    if-nez v8, :cond_d

    .line 255
    .line 256
    if-nez v5, :cond_e

    .line 257
    .line 258
    if-eqz v4, :cond_e

    .line 259
    .line 260
    :cond_d
    const/4 v6, 0x1

    .line 261
    :cond_e
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    new-instance v5, Ls9/a;

    .line 266
    .line 267
    invoke-direct {v5, v4}, Ls9/a;-><init>(Landroid/view/View;)V

    .line 268
    .line 269
    .line 270
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 271
    .line 272
    if-lt v4, v7, :cond_f

    .line 273
    .line 274
    new-instance v4, Lx0/n2;

    .line 275
    .line 276
    invoke-static {v0}, Lx0/h2;->b(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-direct {v4, v7, v5}, Lx0/n2;-><init>(Landroid/view/WindowInsetsController;Ls9/a;)V

    .line 281
    .line 282
    .line 283
    iput-object v0, v4, Lx0/n2;->c:Landroid/view/Window;

    .line 284
    .line 285
    goto :goto_9

    .line 286
    :cond_f
    if-lt v4, v13, :cond_10

    .line 287
    .line 288
    new-instance v4, Lx0/m2;

    .line 289
    .line 290
    invoke-direct {v4, v0, v5}, Lx0/m2;-><init>(Landroid/view/Window;Ls9/a;)V

    .line 291
    .line 292
    .line 293
    goto :goto_9

    .line 294
    :cond_10
    if-lt v4, v11, :cond_11

    .line 295
    .line 296
    new-instance v4, Lx0/l2;

    .line 297
    .line 298
    invoke-direct {v4, v0, v5}, Lx0/l2;-><init>(Landroid/view/Window;Ls9/a;)V

    .line 299
    .line 300
    .line 301
    goto :goto_9

    .line 302
    :cond_11
    if-lt v4, v12, :cond_12

    .line 303
    .line 304
    new-instance v4, Lx0/k2;

    .line 305
    .line 306
    invoke-direct {v4, v0, v5}, Lx0/k2;-><init>(Landroid/view/Window;Ls9/a;)V

    .line 307
    .line 308
    .line 309
    goto :goto_9

    .line 310
    :cond_12
    new-instance v4, Ls5/c;

    .line 311
    .line 312
    const/16 v0, 0x17

    .line 313
    .line 314
    invoke-direct {v4, v0}, Ls5/c;-><init>(I)V

    .line 315
    .line 316
    .line 317
    :goto_9
    invoke-virtual {v4, v6}, Ls5/c;->F(Z)V

    .line 318
    .line 319
    .line 320
    :cond_13
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 329
    .line 330
    new-instance v5, Lcom/google/android/material/datepicker/m;

    .line 331
    .line 332
    invoke-direct {v5, v1, v4, v0}, Lcom/google/android/material/datepicker/m;-><init>(Landroid/view/View;II)V

    .line 333
    .line 334
    .line 335
    invoke-static {v1, v5}, Lx0/b1;->C(Landroid/view/View;Lx0/x;)V

    .line 336
    .line 337
    .line 338
    iput-boolean v2, p0, Lcom/google/android/material/datepicker/n;->L:Z

    .line 339
    .line 340
    goto :goto_a

    .line 341
    :cond_14
    const/4 v1, -0x2

    .line 342
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    const v4, 0x7f070531

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 353
    .line 354
    .line 355
    move-result v10

    .line 356
    new-instance v1, Landroid/graphics/Rect;

    .line 357
    .line 358
    invoke-direct {v1, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 359
    .line 360
    .line 361
    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    .line 362
    .line 363
    iget-object v6, p0, Lcom/google/android/material/datepicker/n;->K:Lm7/g;

    .line 364
    .line 365
    move-object v5, v4

    .line 366
    move v7, v10

    .line 367
    move v8, v10

    .line 368
    move v9, v10

    .line 369
    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    new-instance v4, Ld7/a;

    .line 380
    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroid/app/Dialog;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    invoke-direct {v4, v5, v1}, Ld7/a;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 389
    .line 390
    .line 391
    :cond_15
    :goto_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 392
    .line 393
    .line 394
    iget v0, p0, Lcom/google/android/material/datepicker/n;->q:I

    .line 395
    .line 396
    if-eqz v0, :cond_18

    .line 397
    .line 398
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/n;->i()V

    .line 399
    .line 400
    .line 401
    iget-object v1, p0, Lcom/google/android/material/datepicker/n;->s:Lcom/google/android/material/datepicker/b;

    .line 402
    .line 403
    new-instance v4, Lcom/google/android/material/datepicker/k;

    .line 404
    .line 405
    invoke-direct {v4}, Lcom/google/android/material/datepicker/k;-><init>()V

    .line 406
    .line 407
    .line 408
    new-instance v5, Landroid/os/Bundle;

    .line 409
    .line 410
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 411
    .line 412
    .line 413
    const-string v6, "THEME_RES_ID_KEY"

    .line 414
    .line 415
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    .line 417
    .line 418
    const-string v7, "GRID_SELECTOR_KEY"

    .line 419
    .line 420
    invoke-virtual {v5, v7, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 421
    .line 422
    .line 423
    const-string v7, "CALENDAR_CONSTRAINTS_KEY"

    .line 424
    .line 425
    invoke-virtual {v5, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 426
    .line 427
    .line 428
    const-string v8, "DAY_VIEW_DECORATOR_KEY"

    .line 429
    .line 430
    invoke-virtual {v5, v8, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 431
    .line 432
    .line 433
    iget-object v1, v1, Lcom/google/android/material/datepicker/b;->d:Lcom/google/android/material/datepicker/p;

    .line 434
    .line 435
    const-string v8, "CURRENT_MONTH_KEY"

    .line 436
    .line 437
    invoke-virtual {v5, v8, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 441
    .line 442
    .line 443
    iput-object v4, p0, Lcom/google/android/material/datepicker/n;->t:Lcom/google/android/material/datepicker/k;

    .line 444
    .line 445
    iget v1, p0, Lcom/google/android/material/datepicker/n;->y:I

    .line 446
    .line 447
    if-ne v1, v2, :cond_16

    .line 448
    .line 449
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/n;->i()V

    .line 450
    .line 451
    .line 452
    iget-object v1, p0, Lcom/google/android/material/datepicker/n;->s:Lcom/google/android/material/datepicker/b;

    .line 453
    .line 454
    new-instance v4, Lcom/google/android/material/datepicker/o;

    .line 455
    .line 456
    invoke-direct {v4}, Lcom/google/android/material/datepicker/o;-><init>()V

    .line 457
    .line 458
    .line 459
    new-instance v5, Landroid/os/Bundle;

    .line 460
    .line 461
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    .line 466
    .line 467
    const-string v0, "DATE_SELECTOR_KEY"

    .line 468
    .line 469
    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v5, v7, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 476
    .line 477
    .line 478
    :cond_16
    iput-object v4, p0, Lcom/google/android/material/datepicker/n;->r:Lcom/google/android/material/datepicker/u;

    .line 479
    .line 480
    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->H:Landroid/widget/TextView;

    .line 481
    .line 482
    iget v1, p0, Lcom/google/android/material/datepicker/n;->y:I

    .line 483
    .line 484
    if-ne v1, v2, :cond_17

    .line 485
    .line 486
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 495
    .line 496
    const/4 v2, 0x2

    .line 497
    if-ne v1, v2, :cond_17

    .line 498
    .line 499
    iget-object v1, p0, Lcom/google/android/material/datepicker/n;->N:Ljava/lang/CharSequence;

    .line 500
    .line 501
    goto :goto_b

    .line 502
    :cond_17
    iget-object v1, p0, Lcom/google/android/material/datepicker/n;->M:Ljava/lang/CharSequence;

    .line 503
    .line 504
    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/n;->i()V

    .line 508
    .line 509
    .line 510
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 511
    .line 512
    .line 513
    throw v3

    .line 514
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/n;->i()V

    .line 515
    .line 516
    .line 517
    throw v3
.end method

.method public final onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->r:Lcom/google/android/material/datepicker/u;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/datepicker/u;->a:Ljava/util/LinkedHashSet;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Landroidx/fragment/app/s;->onStop()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
