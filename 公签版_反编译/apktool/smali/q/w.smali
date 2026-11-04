.class public final Lq/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# instance fields
.field public final a:Landroid/view/Window$Callback;

.field public b:Z

.field public c:Z

.field public d:Z

.field public final synthetic e:Lq/a0;


# direct methods
.method public constructor <init>(Lq/a0;Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq/w;->e:Lq/a0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iput-object p2, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string p2, "Window callback may not be null"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lq/w;->b:Z

    .line 4
    .line 5
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Lq/w;->b:Z

    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    iput-boolean v1, p0, Lq/w;->b:Z

    .line 13
    .line 14
    throw p1
.end method

.method public final b(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final c(ILandroid/view/Menu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lu/m;->a(Landroid/view/Window$Callback;Ljava/util/List;Landroid/view/Menu;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq/w;->c:Z

    .line 2
    .line 3
    iget-object v1, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lq/w;->e:Lq/a0;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lq/a0;->s(Landroid/view/KeyEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 30
    :goto_1
    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_8

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v2, p0, Lq/w;->e:Lq/a0;

    .line 15
    .line 16
    invoke-virtual {v2}, Lq/a0;->z()V

    .line 17
    .line 18
    .line 19
    iget-object v3, v2, Lq/a0;->p:Lq/m0;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    iget-object v3, v3, Lq/m0;->j:Lq/l0;

    .line 25
    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v3, v3, Lq/l0;->d:Lv/k;

    .line 31
    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eq v5, v1, :cond_2

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v5, 0x0

    .line 51
    :goto_0
    invoke-virtual {v3, v5}, Lv/k;->setQwertyMode(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v0, p1, v4}, Lv/k;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    :goto_1
    if-eqz v0, :cond_4

    .line 59
    .line 60
    :cond_3
    :goto_2
    const/4 p1, 0x1

    .line 61
    goto :goto_3

    .line 62
    :cond_4
    iget-object v0, v2, Lq/a0;->P:Lq/z;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v2, v0, v3, p1}, Lq/a0;->E(Lq/z;ILandroid/view/KeyEvent;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    iget-object p1, v2, Lq/a0;->P:Lq/z;

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    iput-boolean v1, p1, Lq/z;->l:Z

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_5
    iget-object v0, v2, Lq/a0;->P:Lq/z;

    .line 84
    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    invoke-virtual {v2, v4}, Lq/a0;->y(I)Lq/z;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v2, v0, p1}, Lq/a0;->F(Lq/z;Landroid/view/KeyEvent;)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    invoke-virtual {v2, v0, v3, p1}, Lq/a0;->E(Lq/z;ILandroid/view/KeyEvent;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    iput-boolean v4, v0, Lq/z;->k:Z

    .line 103
    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    const/4 p1, 0x0

    .line 108
    :goto_3
    if-eqz p1, :cond_7

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_7
    const/4 v1, 0x0

    .line 112
    :cond_8
    :goto_4
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final e(Landroid/view/ActionMode$Callback;)Lu/f;
    .locals 9

    .line 1
    new-instance v0, La2/w0;

    .line 2
    .line 3
    iget-object v1, p0, Lq/w;->e:Lq/a0;

    .line 4
    .line 5
    iget-object v2, v1, Lq/a0;->k:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v2, p1}, La2/w0;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, v1, Lq/a0;->w:Lu/a;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lu/a;->a()V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance p1, Lkf/d;

    .line 18
    .line 19
    const/16 v2, 0x9

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {p1, v2, v1, v0, v3}, Lkf/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lq/a0;->z()V

    .line 26
    .line 27
    .line 28
    iget-object v2, v1, Lq/a0;->p:Lq/m0;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    iget-object v6, v2, Lq/m0;->j:Lq/l0;

    .line 36
    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    invoke-virtual {v6}, Lq/l0;->a()V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v6, v2, Lq/m0;->d:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 43
    .line 44
    invoke-virtual {v6, v3}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v6, v2, Lq/m0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 48
    .line 49
    invoke-virtual {v6}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 50
    .line 51
    .line 52
    new-instance v6, Lq/l0;

    .line 53
    .line 54
    iget-object v7, v2, Lq/m0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 55
    .line 56
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-direct {v6, v2, v7, p1}, Lq/l0;-><init>(Lq/m0;Landroid/content/Context;Lkf/d;)V

    .line 61
    .line 62
    .line 63
    iget-object v7, v6, Lq/l0;->d:Lv/k;

    .line 64
    .line 65
    invoke-virtual {v7}, Lv/k;->w()V

    .line 66
    .line 67
    .line 68
    :try_start_0
    iget-object v8, v6, Lq/l0;->e:Lkf/d;

    .line 69
    .line 70
    iget-object v8, v8, Lkf/d;->b:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v8, La2/w0;

    .line 73
    .line 74
    invoke-virtual {v8, v6, v7}, La2/w0;->S(Lu/a;Lv/k;)Z

    .line 75
    .line 76
    .line 77
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {v7}, Lv/k;->v()V

    .line 79
    .line 80
    .line 81
    if-eqz v8, :cond_2

    .line 82
    .line 83
    iput-object v6, v2, Lq/m0;->j:Lq/l0;

    .line 84
    .line 85
    invoke-virtual {v6}, Lq/l0;->i()V

    .line 86
    .line 87
    .line 88
    iget-object v7, v2, Lq/m0;->g:Landroidx/appcompat/widget/ActionBarContextView;

    .line 89
    .line 90
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lu/a;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v4}, Lq/m0;->k0(Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    move-object v6, v5

    .line 98
    :goto_0
    iput-object v6, v1, Lq/a0;->w:Lu/a;

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    invoke-virtual {v7}, Lv/k;->v()V

    .line 103
    .line 104
    .line 105
    throw p1

    .line 106
    :cond_3
    :goto_1
    iget-object v2, v1, Lq/a0;->w:Lu/a;

    .line 107
    .line 108
    if-nez v2, :cond_11

    .line 109
    .line 110
    iget-object v2, v1, Lq/a0;->A:Lx0/l1;

    .line 111
    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    invoke-virtual {v2}, Lx0/l1;->b()V

    .line 115
    .line 116
    .line 117
    :cond_4
    iget-object v2, v1, Lq/a0;->w:Lu/a;

    .line 118
    .line 119
    if-eqz v2, :cond_5

    .line 120
    .line 121
    invoke-virtual {v2}, Lu/a;->a()V

    .line 122
    .line 123
    .line 124
    :cond_5
    iget-object v2, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 125
    .line 126
    if-nez v2, :cond_a

    .line 127
    .line 128
    iget-boolean v2, v1, Lq/a0;->L:Z

    .line 129
    .line 130
    iget-object v6, v1, Lq/a0;->k:Landroid/content/Context;

    .line 131
    .line 132
    if-eqz v2, :cond_7

    .line 133
    .line 134
    new-instance v2, Landroid/util/TypedValue;

    .line 135
    .line 136
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    const v8, 0x7f04000c

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7, v8, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 147
    .line 148
    .line 149
    iget v8, v2, Landroid/util/TypedValue;->resourceId:I

    .line 150
    .line 151
    if-eqz v8, :cond_6

    .line 152
    .line 153
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 162
    .line 163
    .line 164
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    .line 165
    .line 166
    invoke-virtual {v8, v7, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 167
    .line 168
    .line 169
    new-instance v7, Lu/d;

    .line 170
    .line 171
    invoke-direct {v7, v6, v3}, Lu/d;-><init>(Landroid/content/Context;I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7}, Lu/d;->getTheme()Landroid/content/res/Resources$Theme;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v6, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 179
    .line 180
    .line 181
    move-object v6, v7

    .line 182
    :cond_6
    new-instance v7, Landroidx/appcompat/widget/ActionBarContextView;

    .line 183
    .line 184
    invoke-direct {v7, v6, v5}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    .line 186
    .line 187
    iput-object v7, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 188
    .line 189
    new-instance v7, Landroid/widget/PopupWindow;

    .line 190
    .line 191
    const v8, 0x7f04001b

    .line 192
    .line 193
    .line 194
    invoke-direct {v7, v6, v5, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 195
    .line 196
    .line 197
    iput-object v7, v1, Lq/a0;->y:Landroid/widget/PopupWindow;

    .line 198
    .line 199
    const/4 v8, 0x2

    .line 200
    invoke-static {v7, v8}, Lcom/bumptech/glide/d;->g0(Landroid/widget/PopupWindow;I)V

    .line 201
    .line 202
    .line 203
    iget-object v7, v1, Lq/a0;->y:Landroid/widget/PopupWindow;

    .line 204
    .line 205
    iget-object v8, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 206
    .line 207
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 208
    .line 209
    .line 210
    iget-object v7, v1, Lq/a0;->y:Landroid/widget/PopupWindow;

    .line 211
    .line 212
    const/4 v8, -0x1

    .line 213
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    const v8, 0x7f040006

    .line 221
    .line 222
    .line 223
    invoke-virtual {v7, v8, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 224
    .line 225
    .line 226
    iget v2, v2, Landroid/util/TypedValue;->data:I

    .line 227
    .line 228
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-static {v2, v6}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    iget-object v6, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 241
    .line 242
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 243
    .line 244
    .line 245
    iget-object v2, v1, Lq/a0;->y:Landroid/widget/PopupWindow;

    .line 246
    .line 247
    const/4 v6, -0x2

    .line 248
    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 249
    .line 250
    .line 251
    new-instance v2, Lq/o;

    .line 252
    .line 253
    const/4 v6, 0x1

    .line 254
    invoke-direct {v2, v1, v6}, Lq/o;-><init>(Lq/a0;I)V

    .line 255
    .line 256
    .line 257
    iput-object v2, v1, Lq/a0;->z:Lq/o;

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_7
    iget-object v2, v1, Lq/a0;->C:Landroid/view/ViewGroup;

    .line 261
    .line 262
    const v7, 0x7f0b0051

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    check-cast v2, Landroidx/appcompat/widget/ViewStubCompat;

    .line 270
    .line 271
    if-eqz v2, :cond_a

    .line 272
    .line 273
    invoke-virtual {v1}, Lq/a0;->z()V

    .line 274
    .line 275
    .line 276
    iget-object v7, v1, Lq/a0;->p:Lq/m0;

    .line 277
    .line 278
    if-eqz v7, :cond_8

    .line 279
    .line 280
    invoke-virtual {v7}, Lq/m0;->l0()Landroid/content/Context;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    goto :goto_2

    .line 285
    :cond_8
    move-object v7, v5

    .line 286
    :goto_2
    if-nez v7, :cond_9

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_9
    move-object v6, v7

    .line 290
    :goto_3
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 291
    .line 292
    .line 293
    move-result-object v6

    .line 294
    invoke-virtual {v2, v6}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    check-cast v2, Landroidx/appcompat/widget/ActionBarContextView;

    .line 302
    .line 303
    iput-object v2, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 304
    .line 305
    :cond_a
    :goto_4
    iget-object v2, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 306
    .line 307
    if-eqz v2, :cond_10

    .line 308
    .line 309
    iget-object v2, v1, Lq/a0;->A:Lx0/l1;

    .line 310
    .line 311
    if-eqz v2, :cond_b

    .line 312
    .line 313
    invoke-virtual {v2}, Lx0/l1;->b()V

    .line 314
    .line 315
    .line 316
    :cond_b
    iget-object v2, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 317
    .line 318
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    .line 319
    .line 320
    .line 321
    new-instance v2, Lu/e;

    .line 322
    .line 323
    iget-object v6, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 324
    .line 325
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    iget-object v7, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 330
    .line 331
    invoke-direct {v2, v6, v7, p1}, Lu/e;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lkf/d;)V

    .line 332
    .line 333
    .line 334
    iget-object v6, v2, Lu/e;->h:Lv/k;

    .line 335
    .line 336
    iget-object p1, p1, Lkf/d;->b:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast p1, La2/w0;

    .line 339
    .line 340
    invoke-virtual {p1, v2, v6}, La2/w0;->S(Lu/a;Lv/k;)Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    if-eqz p1, :cond_f

    .line 345
    .line 346
    invoke-virtual {v2}, Lu/e;->i()V

    .line 347
    .line 348
    .line 349
    iget-object p1, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 350
    .line 351
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->c(Lu/a;)V

    .line 352
    .line 353
    .line 354
    iput-object v2, v1, Lq/a0;->w:Lu/a;

    .line 355
    .line 356
    iget-boolean p1, v1, Lq/a0;->B:Z

    .line 357
    .line 358
    if-eqz p1, :cond_c

    .line 359
    .line 360
    iget-object p1, v1, Lq/a0;->C:Landroid/view/ViewGroup;

    .line 361
    .line 362
    if-eqz p1, :cond_c

    .line 363
    .line 364
    invoke-static {p1}, Lx0/b1;->m(Landroid/view/View;)Z

    .line 365
    .line 366
    .line 367
    move-result p1

    .line 368
    if-eqz p1, :cond_c

    .line 369
    .line 370
    goto :goto_5

    .line 371
    :cond_c
    const/4 v4, 0x0

    .line 372
    :goto_5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 373
    .line 374
    if-eqz v4, :cond_d

    .line 375
    .line 376
    iget-object v2, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 377
    .line 378
    const/4 v3, 0x0

    .line 379
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 380
    .line 381
    .line 382
    iget-object v2, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 383
    .line 384
    invoke-static {v2}, Lx0/b1;->a(Landroid/view/View;)Lx0/l1;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-virtual {v2, p1}, Lx0/l1;->a(F)V

    .line 389
    .line 390
    .line 391
    iput-object v2, v1, Lq/a0;->A:Lx0/l1;

    .line 392
    .line 393
    new-instance p1, Lq/q;

    .line 394
    .line 395
    const/4 v3, 0x1

    .line 396
    invoke-direct {p1, v3, v1}, Lq/q;-><init>(ILjava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, p1}, Lx0/l1;->d(Lx0/m1;)V

    .line 400
    .line 401
    .line 402
    goto :goto_6

    .line 403
    :cond_d
    iget-object v2, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 404
    .line 405
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 406
    .line 407
    .line 408
    iget-object p1, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 409
    .line 410
    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 411
    .line 412
    .line 413
    iget-object p1, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 414
    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    instance-of p1, p1, Landroid/view/View;

    .line 420
    .line 421
    if-eqz p1, :cond_e

    .line 422
    .line 423
    iget-object p1, v1, Lq/a0;->x:Landroidx/appcompat/widget/ActionBarContextView;

    .line 424
    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    check-cast p1, Landroid/view/View;

    .line 430
    .line 431
    invoke-static {p1}, Lx0/b1;->v(Landroid/view/View;)V

    .line 432
    .line 433
    .line 434
    :cond_e
    :goto_6
    iget-object p1, v1, Lq/a0;->y:Landroid/widget/PopupWindow;

    .line 435
    .line 436
    if-eqz p1, :cond_10

    .line 437
    .line 438
    iget-object p1, v1, Lq/a0;->l:Landroid/view/Window;

    .line 439
    .line 440
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    iget-object v2, v1, Lq/a0;->z:Lq/o;

    .line 445
    .line 446
    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 447
    .line 448
    .line 449
    goto :goto_7

    .line 450
    :cond_f
    iput-object v5, v1, Lq/a0;->w:Lu/a;

    .line 451
    .line 452
    :cond_10
    :goto_7
    invoke-virtual {v1}, Lq/a0;->H()V

    .line 453
    .line 454
    .line 455
    iget-object p1, v1, Lq/a0;->w:Lu/a;

    .line 456
    .line 457
    iput-object p1, v1, Lq/a0;->w:Lu/a;

    .line 458
    .line 459
    :cond_11
    invoke-virtual {v1}, Lq/a0;->H()V

    .line 460
    .line 461
    .line 462
    iget-object p1, v1, Lq/a0;->w:Lu/a;

    .line 463
    .line 464
    if-eqz p1, :cond_12

    .line 465
    .line 466
    invoke-virtual {v0, p1}, La2/w0;->G(Lu/a;)Lu/f;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    return-object p1

    .line 471
    :cond_12
    return-object v5
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq/w;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    instance-of v0, p2, Lv/k;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lq/w;->b(ILandroid/view/Menu;)Z

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x6c

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iget-object v1, p0, Lq/w;->e:Lq/a0;

    .line 8
    .line 9
    if-ne p1, p2, :cond_2

    .line 10
    .line 11
    invoke-virtual {v1}, Lq/a0;->z()V

    .line 12
    .line 13
    .line 14
    iget-object p1, v1, Lq/a0;->p:Lq/m0;

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    iget-boolean p2, p1, Lq/m0;->m:Z

    .line 19
    .line 20
    if-ne v0, p2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-boolean v0, p1, Lq/m0;->m:Z

    .line 24
    .line 25
    iget-object p1, p1, Lq/m0;->n:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-gtz p2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p2, 0x0

    .line 35
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-instance p1, Ljava/lang/ClassCastException;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_0
    return v0
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq/w;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, Lq/w;->c(ILandroid/view/Menu;)V

    .line 12
    .line 13
    .line 14
    const/16 p2, 0x6c

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iget-object v1, p0, Lq/w;->e:Lq/a0;

    .line 18
    .line 19
    if-ne p1, p2, :cond_3

    .line 20
    .line 21
    invoke-virtual {v1}, Lq/a0;->z()V

    .line 22
    .line 23
    .line 24
    iget-object p1, v1, Lq/a0;->p:Lq/m0;

    .line 25
    .line 26
    if-eqz p1, :cond_5

    .line 27
    .line 28
    iget-boolean p2, p1, Lq/m0;->m:Z

    .line 29
    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iput-boolean v0, p1, Lq/m0;->m:Z

    .line 34
    .line 35
    iget-object p1, p1, Lq/m0;->n:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-gtz p2, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    new-instance p1, Ljava/lang/ClassCastException;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_3
    if-nez p1, :cond_4

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Lq/a0;->y(I)Lq/z;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    iget-boolean p2, p1, Lq/z;->m:Z

    .line 64
    .line 65
    if-eqz p2, :cond_5

    .line 66
    .line 67
    invoke-virtual {v1, p1, v0}, Lq/a0;->q(Lq/z;Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    :cond_5
    :goto_0
    return-void
.end method

.method public final onPointerCaptureChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lu/n;->a(Landroid/view/Window$Callback;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3

    .line 1
    instance-of v0, p3, Lv/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lv/k;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    iput-boolean v2, v0, Lv/k;->z:Z

    .line 20
    .line 21
    :cond_2
    iget-object v2, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 22
    .line 23
    invoke-interface {v2, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iput-boolean v1, v0, Lv/k;->z:Z

    .line 30
    .line 31
    :cond_3
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lq/w;->e:Lq/a0;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lq/a0;->y(I)Lq/z;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Lq/z;->h:Lv/k;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1, v0, p3}, Lq/w;->d(Ljava/util/List;Landroid/view/Menu;I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lq/w;->d(Ljava/util/List;Landroid/view/Menu;I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final onSearchRequested()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public final onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lu/l;->a(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lq/w;->e:Lq/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p0, p1}, Lq/w;->e(Landroid/view/ActionMode$Callback;)Lu/f;

    move-result-object p1

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/w;->e:Lq/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lq/w;->a:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2}, Lu/l;->b(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lq/w;->e(Landroid/view/ActionMode$Callback;)Lu/f;

    move-result-object p1

    return-object p1
.end method
