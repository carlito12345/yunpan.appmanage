.class public final Lvb/s;
.super Lub/b;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public final p:Lio/github/rosemoe/sora/widget/CodeEditor;

.field public final q:Landroid/widget/ImageButton;

.field public final r:Landroid/widget/ImageButton;

.field public final s:Landroid/widget/ImageButton;

.field public final t:Landroid/widget/ImageButton;

.field public final v:Landroid/widget/ImageButton;

.field public final w:Landroid/view/View;

.field public final x:Ltb/u;

.field public final y:Ldb/p;

.field public z:J


# direct methods
.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, v0}, Lub/b;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lvb/s;->C:Z

    .line 7
    .line 8
    iput-object p1, p0, Lvb/s;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 9
    .line 10
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lvb/s;->x:Ltb/u;

    .line 15
    .line 16
    new-instance v0, Ldb/p;

    .line 17
    .line 18
    iget-object v1, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->i:Ldb/p;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ldb/p;-><init>(Ldb/p;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lvb/s;->y:Ldb/p;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const v2, 0x7f0e0207

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lvb/s;->w:Landroid/view/View;

    .line 42
    .line 43
    const v2, 0x7f0b0262

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Landroid/widget/ImageButton;

    .line 51
    .line 52
    iput-object v2, p0, Lvb/s;->q:Landroid/widget/ImageButton;

    .line 53
    .line 54
    const v3, 0x7f0b025f

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroid/widget/ImageButton;

    .line 62
    .line 63
    iput-object v3, p0, Lvb/s;->t:Landroid/widget/ImageButton;

    .line 64
    .line 65
    const v4, 0x7f0b025e

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Landroid/widget/ImageButton;

    .line 73
    .line 74
    iput-object v4, p0, Lvb/s;->s:Landroid/widget/ImageButton;

    .line 75
    .line 76
    const v5, 0x7f0b0260

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Landroid/widget/ImageButton;

    .line 84
    .line 85
    iput-object v5, p0, Lvb/s;->v:Landroid/widget/ImageButton;

    .line 86
    .line 87
    const v6, 0x7f0b0261

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Landroid/widget/ImageButton;

    .line 95
    .line 96
    iput-object v6, p0, Lvb/s;->r:Landroid/widget/ImageButton;

    .line 97
    .line 98
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lvb/s;->e()V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 117
    .line 118
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    const/high16 v1, 0x42400000    # 48.0f

    .line 126
    .line 127
    mul-float p1, p1, v1

    .line 128
    .line 129
    float-to-int p1, p1

    .line 130
    const/4 v1, 0x0

    .line 131
    iput v1, p0, Lub/b;->m:I

    .line 132
    .line 133
    iput p1, p0, Lub/b;->n:I

    .line 134
    .line 135
    invoke-virtual {p0, v1}, Lub/b;->a(Z)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 139
    .line 140
    const v1, 0x7f140506

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Lvb/q;

    .line 147
    .line 148
    const/4 v1, 0x0

    .line 149
    invoke-direct {p1, p0, v1}, Lvb/q;-><init>(Lvb/s;I)V

    .line 150
    .line 151
    .line 152
    const-class v1, Ldb/x;

    .line 153
    .line 154
    invoke-virtual {v0, v1, p1}, Ldb/p;->e(Ljava/lang/Class;Ldb/n;)Ldb/z;

    .line 155
    .line 156
    .line 157
    new-instance p1, Lvb/q;

    .line 158
    .line 159
    const/4 v1, 0x1

    .line 160
    invoke-direct {p1, p0, v1}, Lvb/q;-><init>(Lvb/s;I)V

    .line 161
    .line 162
    .line 163
    const-class v1, Ldb/w;

    .line 164
    .line 165
    invoke-virtual {v0, v1, p1}, Ldb/p;->e(Ljava/lang/Class;Ldb/n;)Ldb/z;

    .line 166
    .line 167
    .line 168
    new-instance p1, Lvb/q;

    .line 169
    .line 170
    const/4 v1, 0x2

    .line 171
    invoke-direct {p1, p0, v1}, Lvb/q;-><init>(Lvb/s;I)V

    .line 172
    .line 173
    .line 174
    const-class v1, Ldb/r;

    .line 175
    .line 176
    invoke-virtual {v0, v1, p1}, Ldb/p;->e(Ljava/lang/Class;Ldb/n;)Ldb/z;

    .line 177
    .line 178
    .line 179
    new-instance p1, Lvb/q;

    .line 180
    .line 181
    const/4 v1, 0x3

    .line 182
    invoke-direct {p1, p0, v1}, Lvb/q;-><init>(Lvb/s;I)V

    .line 183
    .line 184
    .line 185
    const-class v1, Ldb/u;

    .line 186
    .line 187
    invoke-virtual {v0, v1, p1}, Ldb/p;->e(Ljava/lang/Class;Ldb/n;)Ldb/z;

    .line 188
    .line 189
    .line 190
    new-instance p1, Lvb/q;

    .line 191
    .line 192
    const/4 v1, 0x4

    .line 193
    invoke-direct {p1, p0, v1}, Lvb/q;-><init>(Lvb/s;I)V

    .line 194
    .line 195
    .line 196
    const-class v1, Ldb/g;

    .line 197
    .line 198
    invoke-virtual {v0, v1, p1}, Ldb/p;->e(Ljava/lang/Class;Ldb/n;)Ldb/z;

    .line 199
    .line 200
    .line 201
    new-instance p1, Lvb/q;

    .line 202
    .line 203
    const/4 v1, 0x5

    .line 204
    invoke-direct {p1, p0, v1}, Lvb/q;-><init>(Lvb/s;I)V

    .line 205
    .line 206
    .line 207
    const-class v1, Ldb/l;

    .line 208
    .line 209
    invoke-virtual {v0, v1, p1}, Ldb/p;->e(Ljava/lang/Class;Ldb/n;)Ldb/z;

    .line 210
    .line 211
    .line 212
    new-instance p1, Lvb/q;

    .line 213
    .line 214
    const/4 v1, 0x6

    .line 215
    invoke-direct {p1, p0, v1}, Lvb/q;-><init>(Lvb/s;I)V

    .line 216
    .line 217
    .line 218
    const-class v1, Ldb/c;

    .line 219
    .line 220
    invoke-virtual {v0, v1, p1}, Ldb/p;->e(Ljava/lang/Class;Ldb/n;)Ldb/z;

    .line 221
    .line 222
    .line 223
    new-instance p1, Lvb/q;

    .line 224
    .line 225
    const/4 v1, 0x7

    .line 226
    invoke-direct {p1, p0, v1}, Lvb/q;-><init>(Lvb/s;I)V

    .line 227
    .line 228
    .line 229
    const-class v1, Ldb/f;

    .line 230
    .line 231
    invoke-virtual {v0, v1, p1}, Ldb/p;->e(Ljava/lang/Class;Ldb/n;)Ldb/z;

    .line 232
    .line 233
    .line 234
    return-void
.end method

.method public static d(Landroid/widget/ImageButton;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 9
    .line 10
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 11
    .line 12
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lvb/s;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/high16 v3, 0x40a00000    # 5.0f

    .line 13
    .line 14
    mul-float v2, v2, v3

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v2, v2, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    const/16 v3, 0x41

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lvb/s;->w:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v0, v0, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 44
    .line 45
    const/16 v1, 0x42

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Lvb/s;->q:Landroid/widget/ImageButton;

    .line 52
    .line 53
    invoke-static {v1, v0}, Lvb/s;->d(Landroid/widget/ImageButton;I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lvb/s;->t:Landroid/widget/ImageButton;

    .line 57
    .line 58
    invoke-static {v1, v0}, Lvb/s;->d(Landroid/widget/ImageButton;I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lvb/s;->s:Landroid/widget/ImageButton;

    .line 62
    .line 63
    invoke-static {v1, v0}, Lvb/s;->d(Landroid/widget/ImageButton;I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lvb/s;->r:Landroid/widget/ImageButton;

    .line 67
    .line 68
    invoke-static {v1, v0}, Lvb/s;->d(Landroid/widget/ImageButton;I)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lvb/s;->v:Landroid/widget/ImageButton;

    .line 72
    .line 73
    invoke-static {v1, v0}, Lvb/s;->d(Landroid/widget/ImageButton;I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final f()V
    .locals 9

    .line 1
    iget-object v0, p0, Lvb/s;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    iget-object v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->e1:Landroid/content/ClipboardManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lvb/s;->r:Landroid/widget/ImageButton;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lmb/j;->a()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v3, 0x0

    .line 23
    const/16 v4, 0x8

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/16 v1, 0x8

    .line 30
    .line 31
    :goto_0
    iget-object v5, p0, Lvb/s;->s:Landroid/widget/ImageButton;

    .line 32
    .line 33
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 v1, 0x8

    .line 45
    .line 46
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lmb/j;->a()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const/16 v1, 0x8

    .line 68
    .line 69
    :goto_2
    iget-object v2, p0, Lvb/s;->t:Landroid/widget/ImageButton;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lmb/j;->a()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    const/4 v4, 0x0

    .line 91
    :cond_3
    iget-object v1, p0, Lvb/s;->v:Landroid/widget/ImageButton;

    .line 92
    .line 93
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    const v1, 0xf4240

    .line 97
    .line 98
    .line 99
    const/high16 v2, -0x80000000

    .line 100
    .line 101
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const v4, 0x186a0

    .line 106
    .line 107
    .line 108
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    iget-object v4, p0, Lvb/s;->w:Landroid/view/View;

    .line 113
    .line 114
    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    const/high16 v5, 0x43660000    # 230.0f

    .line 126
    .line 127
    mul-float v2, v2, v5

    .line 128
    .line 129
    float-to-int v2, v2

    .line 130
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    iget v2, p0, Lub/b;->n:I

    .line 135
    .line 136
    iput v1, p0, Lub/b;->m:I

    .line 137
    .line 138
    iput v2, p0, Lub/b;->n:I

    .line 139
    .line 140
    invoke-virtual {p0, v3}, Lub/b;->a(Z)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lmb/j;->a()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_4

    .line 152
    .line 153
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLeftHandleDescriptor()Lcc/d;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iget-object v1, v1, Lcc/d;->a:Landroid/graphics/RectF;

    .line 158
    .line 159
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRightHandleDescriptor()Lcc/d;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    iget-object v2, v2, Lcc/d;->a:Landroid/graphics/RectF;

    .line 164
    .line 165
    invoke-virtual {p0, v1}, Lvb/s;->h(Landroid/graphics/RectF;)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-virtual {p0, v2}, Lvb/s;->h(Landroid/graphics/RectF;)I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    goto :goto_3

    .line 178
    :cond_4
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getInsertHandleDescriptor()Lcc/d;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iget-object v1, v1, Lcc/d;->a:Landroid/graphics/RectF;

    .line 183
    .line 184
    invoke-virtual {p0, v1}, Lvb/s;->h(Landroid/graphics/RectF;)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    iget v5, p0, Lub/b;->n:I

    .line 193
    .line 194
    sub-int/2addr v2, v5

    .line 195
    add-int/lit8 v2, v2, -0x5

    .line 196
    .line 197
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iget-object v2, v2, Lmb/j;->c:Lmb/b;

    .line 210
    .line 211
    iget v2, v2, Lmb/b;->b:I

    .line 212
    .line 213
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    iget-object v5, v5, Lmb/j;->c:Lmb/b;

    .line 218
    .line 219
    iget v5, v5, Lmb/b;->c:I

    .line 220
    .line 221
    iget-object v6, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 222
    .line 223
    invoke-virtual {v6, v2, v5}, Lwb/c;->s(II)[F

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    const/4 v5, 0x1

    .line 228
    aget v2, v2, v5

    .line 229
    .line 230
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    add-float/2addr v6, v2

    .line 235
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    int-to-float v2, v2

    .line 240
    sub-float/2addr v6, v2

    .line 241
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    iget-object v2, v2, Lmb/j;->d:Lmb/b;

    .line 246
    .line 247
    iget v2, v2, Lmb/b;->b:I

    .line 248
    .line 249
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 250
    .line 251
    .line 252
    move-result-object v7

    .line 253
    iget-object v7, v7, Lmb/j;->d:Lmb/b;

    .line 254
    .line 255
    iget v7, v7, Lmb/b;->c:I

    .line 256
    .line 257
    iget-object v8, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 258
    .line 259
    invoke-virtual {v8, v2, v7}, Lwb/c;->s(II)[F

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    aget v2, v2, v5

    .line 264
    .line 265
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 266
    .line 267
    .line 268
    move-result v7

    .line 269
    add-float/2addr v7, v2

    .line 270
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    int-to-float v2, v2

    .line 275
    sub-float/2addr v7, v2

    .line 276
    add-float/2addr v7, v6

    .line 277
    const/high16 v2, 0x40000000    # 2.0f

    .line 278
    .line 279
    div-float/2addr v7, v2

    .line 280
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    int-to-float v4, v4

    .line 285
    div-float/2addr v4, v2

    .line 286
    sub-float/2addr v7, v4

    .line 287
    float-to-int v2, v7

    .line 288
    iget-object v4, p0, Lub/b;->b:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 289
    .line 290
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    add-int/2addr v6, v2

    .line 295
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    add-int/2addr v2, v1

    .line 300
    iput v6, p0, Lub/b;->k:I

    .line 301
    .line 302
    iput v2, p0, Lub/b;->l:I

    .line 303
    .line 304
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    iput v1, p0, Lub/b;->j:I

    .line 309
    .line 310
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    iput v1, p0, Lub/b;->i:I

    .line 315
    .line 316
    invoke-virtual {p0, v3}, Lub/b;->a(Z)V

    .line 317
    .line 318
    .line 319
    iget-boolean v1, p0, Lvb/s;->C:Z

    .line 320
    .line 321
    if-eqz v1, :cond_7

    .line 322
    .line 323
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSnippetController()Lac/b;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    if-eqz v1, :cond_7

    .line 335
    .line 336
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->P()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_5

    .line 341
    .line 342
    goto :goto_4

    .line 343
    :cond_5
    iget-object v0, p0, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 344
    .line 345
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-eqz v0, :cond_6

    .line 350
    .line 351
    goto :goto_4

    .line 352
    :cond_6
    invoke-virtual {p0, v5}, Lub/b;->a(Z)V

    .line 353
    .line 354
    .line 355
    :cond_7
    :goto_4
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lub/b;->a:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lub/b;->b()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lvb/s;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lmb/j;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    new-instance v1, Lvb/r;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {v1, p0, v2}, Lvb/r;-><init>(Lvb/s;I)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v2, 0xc8

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->Y(Ljava/lang/Runnable;J)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final h(Landroid/graphics/RectF;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lvb/s;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 8
    .line 9
    mul-int/lit8 v2, v0, 0x3

    .line 10
    .line 11
    int-to-float v3, v2

    .line 12
    const/high16 v4, 0x40000000    # 2.0f

    .line 13
    .line 14
    div-float/2addr v3, v4

    .line 15
    sub-float v3, v1, v3

    .line 16
    .line 17
    iget v4, p0, Lub/b;->n:I

    .line 18
    .line 19
    int-to-float v5, v4

    .line 20
    cmpl-float v3, v3, v5

    .line 21
    .line 22
    if-lez v3, :cond_0

    .line 23
    .line 24
    div-int/lit8 v2, v2, 0x2

    .line 25
    .line 26
    int-to-float p1, v2

    .line 27
    sub-float/2addr v1, p1

    .line 28
    int-to-float p1, v4

    .line 29
    sub-float/2addr v1, p1

    .line 30
    float-to-int p1, v1

    .line 31
    return p1

    .line 32
    :cond_0
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 33
    .line 34
    div-int/lit8 v0, v0, 0x2

    .line 35
    .line 36
    int-to-float v0, v0

    .line 37
    add-float/2addr p1, v0

    .line 38
    float-to-int p1, p1

    .line 39
    return p1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0b0262

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lvb/s;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->d0()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const v0, 0x7f0b025f

    .line 17
    .line 18
    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lmb/j;->a()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_6

    .line 30
    .line 31
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->z()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const v0, 0x7f0b0261

    .line 36
    .line 37
    .line 38
    if-ne p1, v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->X()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p1, p1, Lmb/j;->d:Lmb/b;

    .line 48
    .line 49
    iget p1, p1, Lmb/b;->b:I

    .line 50
    .line 51
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 56
    .line 57
    iget v0, v0, Lmb/b;->c:I

    .line 58
    .line 59
    invoke-virtual {v1, p1, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const v0, 0x7f0b025e

    .line 64
    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    if-ne p1, v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->v(Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object p1, p1, Lmb/j;->d:Lmb/b;

    .line 77
    .line 78
    iget p1, p1, Lmb/b;->b:I

    .line 79
    .line 80
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 85
    .line 86
    iget v0, v0, Lmb/b;->c:I

    .line 87
    .line 88
    invoke-virtual {v1, p1, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    const v0, 0x7f0b0260

    .line 93
    .line 94
    .line 95
    if-ne p1, v0, :cond_6

    .line 96
    .line 97
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_4

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    iget-object p1, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 105
    .line 106
    invoke-virtual {p1}, Lmb/j;->a()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    iget-object p1, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 113
    .line 114
    iget-object p1, p1, Lmb/j;->c:Lmb/b;

    .line 115
    .line 116
    iget v0, p1, Lmb/b;->b:I

    .line 117
    .line 118
    iget p1, p1, Lmb/b;->c:I

    .line 119
    .line 120
    invoke-virtual {v1, v0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->g0(II)V

    .line 121
    .line 122
    .line 123
    :cond_5
    iput-boolean v2, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->W0:Z

    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 126
    .line 127
    .line 128
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lub/b;->b()V

    .line 129
    .line 130
    .line 131
    return-void
.end method
