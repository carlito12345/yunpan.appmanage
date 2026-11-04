.class public final Lcom/google/android/material/datepicker/i;
.super Lx0/c;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/datepicker/i;->d:I

    iput-object p2, p0, Lcom/google/android/material/datepicker/i;->e:Ljava/lang/Object;

    invoke-direct {p0}, Lx0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/i;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0, p1, p2}, Lx0/c;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_1
    invoke-super {p0, p1, p2}, Lx0/c;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 11
    .line 12
    .line 13
    const-class p1, Lk4/g;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/material/datepicker/i;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lk4/g;

    .line 25
    .line 26
    iget-object v0, p1, Lk4/g;->d:Lk4/a;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lk4/a;->c()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x1

    .line 35
    if-le v0, v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/16 v1, 0x1000

    .line 47
    .line 48
    if-ne v0, v1, :cond_1

    .line 49
    .line 50
    iget-object v0, p1, Lk4/g;->d:Lk4/a;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Lk4/a;->c()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 59
    .line 60
    .line 61
    iget v0, p1, Lk4/g;->e:I

    .line 62
    .line 63
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 64
    .line 65
    .line 66
    iget p1, p1, Lk4/g;->e:I

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void

    .line 72
    :pswitch_2
    invoke-super {p0, p1, p2}, Lx0/c;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/google/android/material/datepicker/i;->e:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton;

    .line 78
    .line 79
    iget-boolean p1, p1, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final d(Landroid/view/View;Ly0/n;)V
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lcom/google/android/material/datepicker/i;->e:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v4, p0, Lx0/c;->a:Landroid/view/View$AccessibilityDelegate;

    .line 7
    .line 8
    iget v5, p0, Lcom/google/android/material/datepicker/i;->d:I

    .line 9
    .line 10
    packed-switch v5, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v5, p2, Ly0/n;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 14
    .line 15
    invoke-virtual {v4, p1, v5}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 16
    .line 17
    .line 18
    sget v4, Lcom/google/android/material/button/MaterialButtonToggleGroup;->k:I

    .line 19
    .line 20
    check-cast v3, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    instance-of v4, p1, Lcom/google/android/material/button/MaterialButton;

    .line 26
    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-ge v4, v6, :cond_3

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    if-ne v6, p1, :cond_1

    .line 43
    .line 44
    move v0, v5

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    instance-of v6, v6, Lcom/google/android/material/button/MaterialButton;

    .line 51
    .line 52
    if-eqz v6, :cond_2

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_2

    .line 59
    .line 60
    add-int/2addr v5, v2

    .line 61
    :cond_2
    add-int/2addr v4, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    :goto_1
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 64
    .line 65
    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton;->p:Z

    .line 66
    .line 67
    invoke-static {v1, v2, v0, v2, p1}, Ly0/m;->a(IIIIZ)Ly0/m;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p2, p1}, Ly0/n;->l(Ly0/m;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_0
    iget-object v5, p2, Ly0/n;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 76
    .line 77
    invoke-virtual {v4, p1, v5}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 78
    .line 79
    .line 80
    const-class p1, Lk4/g;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p2, p1}, Ly0/n;->j(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    check-cast v3, Lk4/g;

    .line 90
    .line 91
    iget-object p1, v3, Lk4/g;->d:Lk4/a;

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {p1}, Lk4/a;->c()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-le p1, v2, :cond_4

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    :cond_4
    invoke-virtual {p2, v1}, Ly0/n;->n(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v2}, Lk4/g;->canScrollHorizontally(I)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_5

    .line 110
    .line 111
    const/16 p1, 0x1000

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Ly0/n;->a(I)V

    .line 114
    .line 115
    .line 116
    :cond_5
    invoke-virtual {v3, v0}, Lk4/g;->canScrollHorizontally(I)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_6

    .line 121
    .line 122
    const/16 p1, 0x2000

    .line 123
    .line 124
    invoke-virtual {p2, p1}, Ly0/n;->a(I)V

    .line 125
    .line 126
    .line 127
    :cond_6
    return-void

    .line 128
    :pswitch_1
    iget-object p2, p2, Ly0/n;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 129
    .line 130
    invoke-virtual {v4, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 131
    .line 132
    .line 133
    check-cast v3, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 134
    .line 135
    iget-boolean p1, v3, Lcom/google/android/material/internal/NavigationMenuItemView;->z:Z

    .line 136
    .line 137
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_2
    iget-object p2, p2, Ly0/n;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 142
    .line 143
    invoke-virtual {v4, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 144
    .line 145
    .line 146
    check-cast v3, Lcom/google/android/material/internal/CheckableImageButton;

    .line 147
    .line 148
    iget-boolean p1, v3, Lcom/google/android/material/internal/CheckableImageButton;->e:Z

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 151
    .line 152
    .line 153
    iget-boolean p1, v3, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :pswitch_3
    iget-object v0, p2, Ly0/n;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 160
    .line 161
    invoke-virtual {v4, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 162
    .line 163
    .line 164
    check-cast v3, Lcom/google/android/material/datepicker/k;

    .line 165
    .line 166
    iget-object p1, v3, Lcom/google/android/material/datepicker/k;->l:Landroid/view/View;

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-nez p1, :cond_7

    .line 173
    .line 174
    const p1, 0x7f130142

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    goto :goto_2

    .line 182
    :cond_7
    const p1, 0x7f130140

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    :goto_2
    invoke-virtual {p2, p1}, Ly0/n;->m(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/i;->d:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lx0/c;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lx0/c;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 p3, 0x1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 p1, 0x1000

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iget-object v1, p0, Lcom/google/android/material/datepicker/i;->e:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lk4/g;

    .line 25
    .line 26
    if-eq p2, p1, :cond_3

    .line 27
    .line 28
    const/16 p1, 0x2000

    .line 29
    .line 30
    if-eq p2, p1, :cond_2

    .line 31
    .line 32
    :cond_1
    const/4 p3, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p1, -0x1

    .line 35
    invoke-virtual {v1, p1}, Lk4/g;->canScrollHorizontally(I)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget p1, v1, Lk4/g;->e:I

    .line 42
    .line 43
    sub-int/2addr p1, p3

    .line 44
    invoke-virtual {v1, p1}, Lk4/g;->setCurrentItem(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {v1, p3}, Lk4/g;->canScrollHorizontally(I)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget p1, v1, Lk4/g;->e:I

    .line 55
    .line 56
    add-int/2addr p1, p3

    .line 57
    invoke-virtual {v1, p1}, Lk4/g;->setCurrentItem(I)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return p3

    .line 61
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
