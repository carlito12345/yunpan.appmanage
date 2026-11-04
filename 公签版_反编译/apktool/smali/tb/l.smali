.class public final Ltb/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final J:[I

.field public static final K:[I


# instance fields
.field public A:Landroid/graphics/Paint$FontMetricsInt;

.field public B:Landroid/graphics/Paint$FontMetricsInt;

.field public C:I

.field public D:Lmb/j;

.field public E:Lmb/h;

.field public F:Lmb/g;

.field public volatile G:Z

.field public H:Z

.field public final I:Lxb/c;

.field public final a:Leb/b;

.field public final b:Leb/c;

.field public final c:Leb/c;

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/RectF;

.field public final f:Landroid/graphics/Path;

.field public final g:Leb/c;

.field public final h:Landroid/graphics/RectF;

.field public final i:Landroid/graphics/RectF;

.field public final j:Lsb/e;

.field public final k:La0/n;

.field public final l:Lsb/e;

.field public final m:La0/p;

.field public final n:Landroid/util/SparseArray;

.field public final o:Landroid/util/SparseArray;

.field public final p:Lio/github/rosemoe/sora/widget/CodeEditor;

.field public final q:Ljava/util/ArrayList;

.field public r:Landroid/graphics/Paint$FontMetricsInt;

.field public s:Landroid/graphics/drawable/Drawable;

.field public t:Landroid/graphics/drawable/Drawable;

.field public u:Landroid/graphics/drawable/Drawable;

.field public v:Landroid/graphics/drawable/Drawable;

.field public final w:Landroid/graphics/drawable/Drawable;

.field public final x:Landroid/graphics/drawable/Drawable;

.field public final y:Landroid/graphics/drawable/Drawable;

.field public volatile z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const v0, 0x10100a7

    .line 2
    .line 3
    .line 4
    const v1, 0x101009e

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Ltb/l;->J:[I

    .line 12
    .line 13
    filled-new-array {v1}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Ltb/l;->K:[I

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lsb/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lsb/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ltb/l;->j:Lsb/e;

    .line 10
    .line 11
    new-instance v0, La0/n;

    .line 12
    .line 13
    invoke-direct {v0}, La0/n;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ltb/l;->k:La0/n;

    .line 17
    .line 18
    new-instance v0, Lsb/e;

    .line 19
    .line 20
    invoke-direct {v0}, Lsb/e;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ltb/l;->l:Lsb/e;

    .line 24
    .line 25
    new-instance v0, La0/p;

    .line 26
    .line 27
    invoke-direct {v0}, La0/p;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Ltb/l;->m:La0/p;

    .line 31
    .line 32
    new-instance v0, Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Ltb/l;->n:Landroid/util/SparseArray;

    .line 38
    .line 39
    new-instance v0, Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Ltb/l;->o:Landroid/util/SparseArray;

    .line 45
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Ltb/l;->q:Ljava/util/ArrayList;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 59
    .line 60
    new-instance v0, Landroid/graphics/RectF;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Ltb/l;->h:Landroid/graphics/RectF;

    .line 66
    .line 67
    new-instance v0, Landroid/graphics/RectF;

    .line 68
    .line 69
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Ltb/l;->i:Landroid/graphics/RectF;

    .line 73
    .line 74
    new-instance v0, Leb/b;

    .line 75
    .line 76
    invoke-direct {v0}, Leb/b;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Ltb/l;->a:Leb/b;

    .line 80
    .line 81
    new-instance v0, Leb/c;

    .line 82
    .line 83
    iget-boolean v1, p1, Lio/github/rosemoe/sora/widget/CodeEditor;->Y0:Z

    .line 84
    .line 85
    invoke-direct {v0, v1}, Leb/c;-><init>(Z)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Ltb/l;->b:Leb/c;

    .line 89
    .line 90
    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 92
    .line 93
    .line 94
    new-instance v2, Leb/c;

    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    invoke-direct {v2, v3}, Leb/c;-><init>(Z)V

    .line 98
    .line 99
    .line 100
    iput-object v2, p0, Ltb/l;->c:Leb/c;

    .line 101
    .line 102
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    const v5, 0x3fe66666    # 1.8f

    .line 107
    .line 108
    .line 109
    mul-float v4, v4, v5

    .line 110
    .line 111
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    .line 113
    .line 114
    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 117
    .line 118
    .line 119
    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 120
    .line 121
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    .line 126
    .line 127
    new-instance v4, Leb/c;

    .line 128
    .line 129
    invoke-direct {v4, v3}, Leb/c;-><init>(Z)V

    .line 130
    .line 131
    .line 132
    iput-object v4, p0, Ltb/l;->g:Leb/c;

    .line 133
    .line 134
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iput-object v0, p0, Ltb/l;->r:Landroid/graphics/Paint$FontMetricsInt;

    .line 142
    .line 143
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, Ltb/l;->A:Landroid/graphics/Paint$FontMetricsInt;

    .line 148
    .line 149
    new-instance v0, Landroid/graphics/Rect;

    .line 150
    .line 151
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-object v0, p0, Ltb/l;->d:Landroid/graphics/Rect;

    .line 155
    .line 156
    new-instance v0, Landroid/graphics/RectF;

    .line 157
    .line 158
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 159
    .line 160
    .line 161
    iput-object v0, p0, Ltb/l;->e:Landroid/graphics/RectF;

    .line 162
    .line 163
    new-instance v0, Landroid/graphics/Path;

    .line 164
    .line 165
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 166
    .line 167
    .line 168
    iput-object v0, p0, Ltb/l;->f:Landroid/graphics/Path;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-static {v0}, Ltb/b;->f(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iput-object v0, p0, Ltb/l;->w:Landroid/graphics/drawable/Drawable;

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-static {v0}, Ltb/b;->y(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iput-object v0, p0, Ltb/l;->x:Landroid/graphics/drawable/Drawable;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v0}, Ltb/b;->B(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    iput-object v0, p0, Ltb/l;->y:Landroid/graphics/drawable/Drawable;

    .line 199
    .line 200
    new-instance v0, Lxb/c;

    .line 201
    .line 202
    invoke-direct {v0, p1}, Lxb/c;-><init>(Lio/github/rosemoe/sora/widget/CodeEditor;)V

    .line 203
    .line 204
    .line 205
    iput-object v0, p0, Ltb/l;->I:Lxb/c;

    .line 206
    .line 207
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iput-object v0, p0, Ltb/l;->D:Lmb/j;

    .line 212
    .line 213
    invoke-virtual {p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getText()Lmb/g;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    iput-object p1, p0, Ltb/l;->F:Lmb/g;

    .line 218
    .line 219
    return-void
.end method

.method public static A(IIIZ)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ne p0, p2, :cond_0

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    if-lt p0, p1, :cond_1

    .line 8
    .line 9
    if-gt p0, p2, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    :cond_1
    return v0
.end method


# virtual methods
.method public final B()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->Y0:Z

    .line 4
    .line 5
    iget-object v2, p0, Ltb/l;->b:Leb/c;

    .line 6
    .line 7
    iput-boolean v1, v2, Leb/c;->b:Z

    .line 8
    .line 9
    iget-object v1, p0, Ltb/l;->g:Leb/c;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Ltb/l;->B:Landroid/graphics/Paint$FontMetricsInt;

    .line 16
    .line 17
    iget-object v1, p0, Ltb/l;->c:Leb/c;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Ltb/l;->A:Landroid/graphics/Paint$FontMetricsInt;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Ltb/l;->r:Landroid/graphics/Paint$FontMetricsInt;

    .line 30
    .line 31
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderContext()Lyb/b;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lyb/b;->a()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ltb/l;->C()V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->x(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final C()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Ltb/l;->z:J

    .line 6
    .line 7
    return-void
.end method

.method public final a(Ltb/k;II)V
    .locals 5

    .line 1
    invoke-virtual {p0, p2, p3}, Ltb/l;->t(II)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    shr-long v0, p2, v0

    .line 8
    .line 9
    long-to-int v1, v0

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    iput-boolean v1, p1, Ltb/k;->e:Z

    .line 18
    .line 19
    const-wide v3, 0xffffffffL

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr p2, v3

    .line 25
    long-to-int p3, p2

    .line 26
    if-ne p3, v2, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    :cond_1
    iput-boolean v0, p1, Ltb/k;->f:Z

    .line 30
    .line 31
    return-void
.end method

.method public final b(Leb/o;ILmb/h;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ltb/l;->D:Lmb/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmb/j;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Ltb/l;->D:Lmb/j;

    .line 10
    .line 11
    iget-object v1, v0, Lmb/j;->c:Lmb/b;

    .line 12
    .line 13
    iget v2, v1, Lmb/b;->b:I

    .line 14
    .line 15
    if-lt p2, v2, :cond_2

    .line 16
    .line 17
    iget-object v0, v0, Lmb/j;->d:Lmb/b;

    .line 18
    .line 19
    iget v3, v0, Lmb/b;->b:I

    .line 20
    .line 21
    if-gt p2, v3, :cond_2

    .line 22
    .line 23
    if-ne p2, v2, :cond_0

    .line 24
    .line 25
    iget v1, v1, Lmb/b;->c:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    if-ne p2, v3, :cond_1

    .line 30
    .line 31
    iget p2, v0, Lmb/b;->c:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget p2, p3, Lmb/h;->c:I

    .line 35
    .line 36
    :goto_1
    iget p3, p1, Leb/o;->f:I

    .line 37
    .line 38
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    iget v0, p1, Leb/o;->g:I

    .line 43
    .line 44
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-ge p3, p2, :cond_2

    .line 49
    .line 50
    iput p3, p1, Leb/o;->m:I

    .line 51
    .line 52
    iput p2, p1, Leb/o;->n:I

    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public final c(IIJZ)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    const/16 v4, 0x8

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    iget-object v7, v0, Ltb/l;->F:Lmb/g;

    .line 9
    .line 10
    iget-object v8, v0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 11
    .line 12
    invoke-virtual {v8}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderContext()Lyb/b;

    .line 13
    .line 14
    .line 15
    move-result-object v9

    .line 16
    move/from16 v10, p1

    .line 17
    .line 18
    move/from16 v11, p2

    .line 19
    .line 20
    :goto_0
    if-gt v10, v11, :cond_10

    .line 21
    .line 22
    iget-object v12, v7, Lmb/g;->a:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v12

    .line 28
    if-ge v10, v12, :cond_10

    .line 29
    .line 30
    if-eqz p5, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v10}, Ltb/l;->u(I)Lmb/h;

    .line 33
    .line 34
    .line 35
    move-result-object v12

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    iget-object v12, v0, Ltb/l;->F:Lmb/g;

    .line 38
    .line 39
    invoke-virtual {v12, v10}, Lmb/g;->o(I)Lmb/h;

    .line 40
    .line 41
    .line 42
    move-result-object v12

    .line 43
    :goto_1
    invoke-virtual {v8}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderContext()Lyb/b;

    .line 44
    .line 45
    .line 46
    move-result-object v13

    .line 47
    iget-object v13, v13, Lyb/b;->a:Landroidx/room/s;

    .line 48
    .line 49
    invoke-virtual {v13, v10}, Landroidx/room/s;->C(I)Lyb/a;

    .line 50
    .line 51
    .line 52
    move-result-object v14

    .line 53
    if-nez v14, :cond_1

    .line 54
    .line 55
    new-instance v14, Lyb/a;

    .line 56
    .line 57
    invoke-direct {v14, v10}, Lyb/a;-><init>(I)V

    .line 58
    .line 59
    .line 60
    iget-object v15, v13, Landroidx/room/s;->d:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v15, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    iget v3, v13, Landroidx/room/s;->b:I

    .line 72
    .line 73
    if-le v6, v3, :cond_1

    .line 74
    .line 75
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-nez v3, :cond_1

    .line 80
    .line 81
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_1
    iget-wide v5, v14, Lyb/a;->c:J

    .line 86
    .line 87
    cmp-long v13, v5, v1

    .line 88
    .line 89
    if-gez v13, :cond_f

    .line 90
    .line 91
    iget-object v5, v14, Lyb/a;->b:Ld3/g;

    .line 92
    .line 93
    if-eqz v5, :cond_3

    .line 94
    .line 95
    iget v6, v12, Lmb/h;->c:I

    .line 96
    .line 97
    iget v5, v5, Ld3/g;->b:I

    .line 98
    .line 99
    if-ge v5, v6, :cond_2

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_2
    const/4 v5, 0x0

    .line 103
    goto :goto_4

    .line 104
    :cond_3
    :goto_3
    new-instance v5, Ld3/g;

    .line 105
    .line 106
    iget v6, v12, Lmb/h;->c:I

    .line 107
    .line 108
    add-int/2addr v6, v4

    .line 109
    const/16 v13, 0x5a

    .line 110
    .line 111
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    const/16 v13, 0x16

    .line 116
    .line 117
    invoke-direct {v5, v6, v13}, Ld3/g;-><init>(II)V

    .line 118
    .line 119
    .line 120
    iput-object v5, v14, Lyb/a;->b:Ld3/g;

    .line 121
    .line 122
    const/4 v5, 0x1

    .line 123
    :goto_4
    iget-object v6, v8, Lio/github/rosemoe/sora/widget/CodeEditor;->e:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    if-eqz v13, :cond_4

    .line 130
    .line 131
    const-wide/16 v17, 0x5

    .line 132
    .line 133
    invoke-static/range {v17 .. v18}, Lif/a;->q0(J)Llb/a;

    .line 134
    .line 135
    .line 136
    move-result-object v13

    .line 137
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_4
    iget v12, v12, Lmb/h;->c:I

    .line 141
    .line 142
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v12

    .line 146
    invoke-virtual {v8}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTabWidth()I

    .line 147
    .line 148
    .line 149
    move-result v13

    .line 150
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    iget-object v15, v0, Ltb/l;->b:Leb/c;

    .line 155
    .line 156
    invoke-virtual {v15}, Landroid/graphics/Paint;->getFlags()I

    .line 157
    .line 158
    .line 159
    move-result v17

    .line 160
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v17

    .line 164
    invoke-virtual {v15}, Landroid/graphics/Paint;->getTextSize()F

    .line 165
    .line 166
    .line 167
    move-result v18

    .line 168
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 169
    .line 170
    .line 171
    move-result-object v18

    .line 172
    invoke-virtual {v15}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 173
    .line 174
    .line 175
    move-result v19

    .line 176
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 177
    .line 178
    .line 179
    move-result-object v19

    .line 180
    invoke-static {v15}, Ltb/b;->a(Leb/c;)F

    .line 181
    .line 182
    .line 183
    move-result v20

    .line 184
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 185
    .line 186
    .line 187
    move-result-object v20

    .line 188
    invoke-static {v15}, Ltb/b;->l(Leb/c;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v21

    .line 192
    invoke-virtual {v15}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 193
    .line 194
    .line 195
    move-result-object v15

    .line 196
    invoke-virtual {v15}, Landroid/graphics/Typeface;->hashCode()I

    .line 197
    .line 198
    .line 199
    move-result v15

    .line 200
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v15

    .line 204
    const/16 v3, 0x9

    .line 205
    .line 206
    new-array v3, v3, [Ljava/lang/Object;

    .line 207
    .line 208
    const/16 v22, 0x0

    .line 209
    .line 210
    aput-object v6, v3, v22

    .line 211
    .line 212
    move-object/from16 v22, v3

    .line 213
    .line 214
    const/16 v16, 0x1

    .line 215
    .line 216
    aput-object v12, v22, v16

    .line 217
    .line 218
    const/4 v12, 0x2

    .line 219
    aput-object v13, v22, v12

    .line 220
    .line 221
    const/4 v12, 0x3

    .line 222
    aput-object v17, v22, v12

    .line 223
    .line 224
    const/4 v12, 0x4

    .line 225
    aput-object v18, v22, v12

    .line 226
    .line 227
    const/4 v12, 0x5

    .line 228
    aput-object v19, v22, v12

    .line 229
    .line 230
    const/4 v12, 0x6

    .line 231
    aput-object v20, v22, v12

    .line 232
    .line 233
    const/4 v12, 0x7

    .line 234
    aput-object v21, v22, v12

    .line 235
    .line 236
    aput-object v15, v22, v4

    .line 237
    .line 238
    invoke-static/range {v22 .. v22}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    .line 239
    .line 240
    .line 241
    move-result v12

    .line 242
    iget-object v13, v9, Lyb/b;->a:Landroidx/room/s;

    .line 243
    .line 244
    iget-object v13, v13, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v13, La0/n;

    .line 247
    .line 248
    invoke-virtual {v13, v10}, La0/n;->b(I)I

    .line 249
    .line 250
    .line 251
    move-result v13

    .line 252
    if-ne v13, v12, :cond_6

    .line 253
    .line 254
    if-eqz v5, :cond_5

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_5
    move-object/from16 v27, v7

    .line 258
    .line 259
    move-object/from16 v29, v8

    .line 260
    .line 261
    const/4 v3, 0x1

    .line 262
    const/4 v5, 0x0

    .line 263
    goto/16 :goto_d

    .line 264
    .line 265
    :cond_6
    :goto_5
    iget-object v5, v9, Lyb/b;->a:Landroidx/room/s;

    .line 266
    .line 267
    iget-object v5, v5, Landroidx/room/s;->c:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v5, La0/n;

    .line 270
    .line 271
    if-ltz v10, :cond_d

    .line 272
    .line 273
    iget v13, v5, La0/n;->b:I

    .line 274
    .line 275
    if-ge v10, v13, :cond_e

    .line 276
    .line 277
    iget-object v5, v5, La0/n;->a:[I

    .line 278
    .line 279
    aget v13, v5, v10

    .line 280
    .line 281
    aput v12, v5, v10

    .line 282
    .line 283
    iget-object v5, v8, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 284
    .line 285
    const/4 v3, 0x0

    .line 286
    invoke-virtual {v7, v10, v3}, Lmb/g;->l(II)I

    .line 287
    .line 288
    .line 289
    move-result v12

    .line 290
    invoke-interface {v5, v12}, Lwb/d;->l(I)I

    .line 291
    .line 292
    .line 293
    move-result v5

    .line 294
    iget-object v12, v8, Lio/github/rosemoe/sora/widget/CodeEditor;->j:Lwb/c;

    .line 295
    .line 296
    const/4 v13, 0x0

    .line 297
    invoke-interface {v12, v5, v13}, Lwb/d;->f(ILandroid/util/SparseArray;)Lwb/j;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    new-instance v12, Leb/o;

    .line 302
    .line 303
    invoke-direct {v12}, Leb/o;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v7, v10}, Lmb/g;->o(I)Lmb/h;

    .line 307
    .line 308
    .line 309
    move-result-object v13

    .line 310
    invoke-virtual {v7, v10}, Lmb/g;->p(I)Lnb/b;

    .line 311
    .line 312
    .line 313
    move-result-object v15

    .line 314
    iget v3, v13, Lmb/h;->c:I

    .line 315
    .line 316
    add-int/lit8 v3, v3, 0xa

    .line 317
    .line 318
    iget-object v4, v14, Lyb/a;->b:Ld3/g;

    .line 319
    .line 320
    move-object/from16 v27, v7

    .line 321
    .line 322
    if-eqz v4, :cond_8

    .line 323
    .line 324
    iget v7, v4, Ld3/g;->b:I

    .line 325
    .line 326
    if-ge v7, v3, :cond_7

    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_7
    :goto_6
    const/16 v7, 0x16

    .line 330
    .line 331
    goto :goto_8

    .line 332
    :cond_8
    :goto_7
    new-instance v4, Ld3/g;

    .line 333
    .line 334
    const/16 v7, 0x16

    .line 335
    .line 336
    invoke-direct {v4, v3, v7}, Ld3/g;-><init>(II)V

    .line 337
    .line 338
    .line 339
    iput-object v4, v14, Lyb/a;->b:Ld3/g;

    .line 340
    .line 341
    :goto_8
    invoke-interface {v5}, Lwb/j;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    if-eqz v3, :cond_9

    .line 346
    .line 347
    invoke-interface {v5}, Lwb/j;->next()Lwb/h;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    iget v7, v3, Lwb/h;->a:I

    .line 352
    .line 353
    if-eq v7, v10, :cond_a

    .line 354
    .line 355
    :cond_9
    move-object/from16 v29, v8

    .line 356
    .line 357
    goto :goto_9

    .line 358
    :cond_a
    iget v7, v3, Lwb/h;->d:I

    .line 359
    .line 360
    move-object/from16 v28, v5

    .line 361
    .line 362
    iget v5, v3, Lwb/h;->e:I

    .line 363
    .line 364
    iget-object v3, v3, Lwb/h;->f:Ljava/util/List;

    .line 365
    .line 366
    invoke-virtual/range {p0 .. p0}, Ltb/l;->e()Leb/p;

    .line 367
    .line 368
    .line 369
    move-result-object v26

    .line 370
    move-object/from16 v29, v8

    .line 371
    .line 372
    iget-object v8, v0, Ltb/l;->b:Leb/c;

    .line 373
    .line 374
    const/16 v25, 0x0

    .line 375
    .line 376
    move-object/from16 v17, v12

    .line 377
    .line 378
    move-object/from16 v18, v13

    .line 379
    .line 380
    move/from16 v19, v7

    .line 381
    .line 382
    move/from16 v20, v5

    .line 383
    .line 384
    move-object/from16 v21, v6

    .line 385
    .line 386
    move-object/from16 v22, v3

    .line 387
    .line 388
    move-object/from16 v23, v15

    .line 389
    .line 390
    move-object/from16 v24, v8

    .line 391
    .line 392
    invoke-virtual/range {v17 .. v26}, Leb/o;->m(Lmb/h;IILjava/util/ArrayList;Ljava/util/List;Lnb/b;Leb/c;Ld3/g;Leb/p;)V

    .line 393
    .line 394
    .line 395
    new-instance v3, Leb/i;

    .line 396
    .line 397
    invoke-direct {v3}, Leb/i;-><init>()V

    .line 398
    .line 399
    .line 400
    iput-object v4, v3, Leb/i;->p:Ld3/g;

    .line 401
    .line 402
    new-instance v5, Leb/k;

    .line 403
    .line 404
    invoke-direct {v5, v12, v3}, Leb/k;-><init>(Leb/o;Leb/i;)V

    .line 405
    .line 406
    .line 407
    const/4 v3, 0x1

    .line 408
    invoke-virtual {v12, v5, v3}, Leb/o;->k(Leb/m;Z)V

    .line 409
    .line 410
    .line 411
    move-object/from16 v5, v28

    .line 412
    .line 413
    move-object/from16 v8, v29

    .line 414
    .line 415
    goto :goto_6

    .line 416
    :goto_9
    iget v3, v13, Lmb/h;->c:I

    .line 417
    .line 418
    const/4 v5, 0x0

    .line 419
    iput v5, v12, Leb/o;->f:I

    .line 420
    .line 421
    iput v3, v12, Leb/o;->g:I

    .line 422
    .line 423
    iget-object v3, v4, Ld3/g;->c:Ljava/lang/Object;

    .line 424
    .line 425
    check-cast v3, [[F

    .line 426
    .line 427
    array-length v4, v3

    .line 428
    const/4 v6, 0x0

    .line 429
    :goto_a
    if-ge v6, v4, :cond_c

    .line 430
    .line 431
    aget-object v7, v3, v6

    .line 432
    .line 433
    aget v8, v7, v5

    .line 434
    .line 435
    const/4 v12, 0x0

    .line 436
    aput v12, v7, v5

    .line 437
    .line 438
    const/4 v12, 0x1

    .line 439
    :goto_b
    array-length v13, v7

    .line 440
    const/4 v15, 0x1

    .line 441
    sub-int/2addr v13, v15

    .line 442
    if-gt v12, v13, :cond_b

    .line 443
    .line 444
    aget v13, v7, v12

    .line 445
    .line 446
    add-int/lit8 v16, v12, -0x1

    .line 447
    .line 448
    aget v16, v7, v16

    .line 449
    .line 450
    add-float v16, v16, v8

    .line 451
    .line 452
    aput v16, v7, v12

    .line 453
    .line 454
    add-int/2addr v12, v15

    .line 455
    move v8, v13

    .line 456
    goto :goto_b

    .line 457
    :cond_b
    add-int/2addr v6, v15

    .line 458
    goto :goto_a

    .line 459
    :cond_c
    iput-wide v1, v14, Lyb/a;->c:J

    .line 460
    .line 461
    :goto_c
    const/4 v3, 0x1

    .line 462
    goto :goto_d

    .line 463
    :cond_d
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    .line 465
    .line 466
    :cond_e
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 467
    .line 468
    const-string v2, "Index must be between 0 and size"

    .line 469
    .line 470
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    throw v1

    .line 474
    :cond_f
    move-object/from16 v27, v7

    .line 475
    .line 476
    move-object/from16 v29, v8

    .line 477
    .line 478
    const/4 v5, 0x0

    .line 479
    goto :goto_c

    .line 480
    :goto_d
    add-int/2addr v10, v3

    .line 481
    move-object/from16 v7, v27

    .line 482
    .line 483
    move-object/from16 v8, v29

    .line 484
    .line 485
    const/16 v4, 0x8

    .line 486
    .line 487
    goto/16 :goto_0

    .line 488
    .line 489
    :cond_10
    return-void
.end method

.method public final d(I)Leb/o;
    .locals 13

    .line 1
    iget-object v0, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getStyles()Ljb/d;

    .line 4
    .line 5
    .line 6
    sget-object v0, Ljb/a;->b:Ljb/a;

    .line 7
    .line 8
    iget-object v1, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 9
    .line 10
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLayout()Lwb/d;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1, p1}, Lwb/d;->q(I)Lwb/h;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v1, p0, Ltb/l;->F:Lmb/g;

    .line 19
    .line 20
    iget v2, p1, Lwb/h;->a:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lmb/g;->o(I)Lmb/h;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Leb/o;

    .line 27
    .line 28
    invoke-direct {v2}, Leb/o;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 32
    .line 33
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderContext()Lyb/b;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v3, v3, Lyb/b;->a:Landroidx/room/s;

    .line 38
    .line 39
    iget v4, p1, Lwb/h;->a:I

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroidx/room/s;->C(I)Lyb/a;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/4 v4, 0x0

    .line 46
    if-eqz v3, :cond_0

    .line 47
    .line 48
    iget-wide v5, v3, Lyb/a;->c:J

    .line 49
    .line 50
    iget-wide v7, p0, Ltb/l;->z:J

    .line 51
    .line 52
    cmp-long v9, v5, v7

    .line 53
    .line 54
    if-ltz v9, :cond_0

    .line 55
    .line 56
    iget-object v3, v3, Lyb/a;->b:Ld3/g;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move-object v3, v4

    .line 60
    :goto_0
    if-eqz v3, :cond_1

    .line 61
    .line 62
    iget v5, v3, Ld3/g;->b:I

    .line 63
    .line 64
    iget v6, v1, Lmb/h;->c:I

    .line 65
    .line 66
    if-le v5, v6, :cond_1

    .line 67
    .line 68
    move-object v11, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move-object v11, v4

    .line 71
    :goto_1
    iget v5, p1, Lwb/h;->d:I

    .line 72
    .line 73
    iget v6, p1, Lwb/h;->e:I

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance v7, Ljava/util/ArrayList;

    .line 79
    .line 80
    iget-object v0, v0, Ljb/a;->a:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    .line 84
    .line 85
    iget-object v8, p1, Lwb/h;->f:Ljava/util/List;

    .line 86
    .line 87
    iget-object v0, p0, Ltb/l;->F:Lmb/g;

    .line 88
    .line 89
    iget v3, p1, Lwb/h;->a:I

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Lmb/g;->p(I)Lnb/b;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    iget-object v10, p0, Ltb/l;->b:Leb/c;

    .line 96
    .line 97
    invoke-virtual {p0}, Ltb/l;->e()Leb/p;

    .line 98
    .line 99
    .line 100
    move-result-object v12

    .line 101
    move-object v3, v2

    .line 102
    move-object v4, v1

    .line 103
    invoke-virtual/range {v3 .. v12}, Leb/o;->m(Lmb/h;IILjava/util/ArrayList;Ljava/util/List;Lnb/b;Leb/c;Ld3/g;Leb/p;)V

    .line 104
    .line 105
    .line 106
    iget p1, p1, Lwb/h;->a:I

    .line 107
    .line 108
    invoke-virtual {p0, v2, p1, v1}, Ltb/l;->b(Leb/o;ILmb/h;)V

    .line 109
    .line 110
    .line 111
    return-object v2
.end method

.method public final e()Leb/p;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v16, Leb/p;

    .line 4
    .line 5
    iget-object v11, v0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 6
    .line 7
    invoke-virtual {v11}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTabWidth()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, v0, Ltb/l;->r:Landroid/graphics/Paint$FontMetricsInt;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v11, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->L(I)I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-virtual {v11, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->K(I)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual {v11}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineSpacingPixels()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    div-int/lit8 v6, v6, 0x2

    .line 27
    .line 28
    sub-int/2addr v5, v6

    .line 29
    invoke-virtual {v11}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeightOfText()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-virtual {v11, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->J(I)I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    invoke-virtual {v11}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v11, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->K(I)I

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    invoke-virtual {v11}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    invoke-virtual {v11}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget v10, v1, Ltb/e;->v:F

    .line 53
    .line 54
    invoke-virtual {v11}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 55
    .line 56
    .line 57
    move-result-object v12

    .line 58
    iget-object v15, v0, Ltb/l;->B:Landroid/graphics/Paint$FontMetricsInt;

    .line 59
    .line 60
    iget-object v13, v0, Ltb/l;->c:Leb/c;

    .line 61
    .line 62
    iget-object v14, v0, Ltb/l;->g:Leb/c;

    .line 63
    .line 64
    move-object/from16 v1, v16

    .line 65
    .line 66
    invoke-direct/range {v1 .. v15}, Leb/p;-><init>(ILandroid/graphics/Paint$FontMetricsInt;IIIIIIFLfb/a;Lzb/a;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetricsInt;)V

    .line 67
    .line 68
    .line 69
    return-object v16
.end method

.method public final f(Landroid/graphics/Canvas;FFFZ)V
    .locals 2

    .line 1
    const v0, 0x3e4ccccd    # 0.2f

    .line 2
    .line 3
    .line 4
    mul-float p4, p4, v0

    .line 5
    .line 6
    const v0, 0x3f5db22d    # 0.866f

    .line 7
    .line 8
    .line 9
    mul-float v0, v0, p4

    .line 10
    .line 11
    iget-object v1, p0, Ltb/l;->f:Landroid/graphics/Path;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 17
    .line 18
    .line 19
    if-eqz p5, :cond_0

    .line 20
    .line 21
    neg-float v0, v0

    .line 22
    :cond_0
    add-float/2addr v0, p2

    .line 23
    const/high16 p5, 0x40000000    # 2.0f

    .line 24
    .line 25
    div-float p5, p4, p5

    .line 26
    .line 27
    add-float/2addr p5, p3

    .line 28
    invoke-virtual {v1, v0, p5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 29
    .line 30
    .line 31
    add-float/2addr p3, p4

    .line 32
    invoke-virtual {v1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Ltb/l;->b:Leb/c;

    .line 39
    .line 40
    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final g(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Ltb/l;->b:Leb/c;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final h(Landroid/graphics/Canvas;FI)V
    .locals 9

    .line 1
    iget-object v0, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->R0:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerWidth()F

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    add-float/2addr v3, p2

    .line 26
    const/4 v4, 0x0

    .line 27
    cmpg-float v5, v3, v4

    .line 28
    .line 29
    if-gez v5, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    int-to-float v5, v5

    .line 41
    iget-object v6, p0, Ltb/l;->e:Landroid/graphics/RectF;

    .line 42
    .line 43
    iput v5, v6, Landroid/graphics/RectF;->bottom:F

    .line 44
    .line 45
    iput v4, v6, Landroid/graphics/RectF;->top:F

    .line 46
    .line 47
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-gez v5, :cond_2

    .line 52
    .line 53
    iget v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 54
    .line 55
    int-to-float v5, v5

    .line 56
    sub-float/2addr v7, v5

    .line 57
    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 58
    .line 59
    iget v7, v6, Landroid/graphics/RectF;->top:F

    .line 60
    .line 61
    sub-float/2addr v7, v5

    .line 62
    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 63
    .line 64
    :cond_2
    iput p2, v6, Landroid/graphics/RectF;->left:F

    .line 65
    .line 66
    iput v3, v6, Landroid/graphics/RectF;->right:F

    .line 67
    .line 68
    iget-object p2, p0, Ltb/l;->b:Leb/c;

    .line 69
    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    .line 74
    .line 75
    iget v3, v6, Landroid/graphics/RectF;->left:F

    .line 76
    .line 77
    iget v5, v6, Landroid/graphics/RectF;->top:F

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    int-to-float v7, v7

    .line 84
    iget v8, v6, Landroid/graphics/RectF;->bottom:F

    .line 85
    .line 86
    invoke-virtual {p1, v3, v5, v7, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    const/high16 v5, 0x41000000    # 8.0f

    .line 94
    .line 95
    mul-float v3, v3, v5

    .line 96
    .line 97
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    int-to-float v0, v0

    .line 102
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const/high16 v3, -0x1000000

    .line 107
    .line 108
    invoke-virtual {p2, v0, v4, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 109
    .line 110
    .line 111
    :cond_3
    invoke-virtual {p0, p1, p3, v6}, Ltb/l;->g(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 112
    .line 113
    .line 114
    if-eqz v1, :cond_4

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v4, v4, v4, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 120
    .line 121
    .line 122
    :cond_4
    return-void
.end method

.method public final i(Landroid/graphics/Canvas;FFF)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    iget-object v5, v0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 9
    .line 10
    iget-boolean v6, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->O:Z

    .line 11
    .line 12
    if-nez v6, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLnPanelPositionMode()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLnPanelPosition()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineNumberTipTextProvider()Lcc/c;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    check-cast v8, Ldc/a;

    .line 28
    .line 29
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string v8, "editor"

    .line 33
    .line 34
    invoke-static {v5, v8}, Lue/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getFirstVisibleLine()I

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    add-int/lit8 v8, v8, 0x1

    .line 42
    .line 43
    const-string v9, "L"

    .line 44
    .line 45
    invoke-static {v8, v9}, Lda/b;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    iget-object v9, v0, Ltb/l;->b:Leb/c;

    .line 50
    .line 51
    invoke-virtual {v9}, Landroid/graphics/Paint;->getTextSize()F

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    const/4 v11, 0x0

    .line 56
    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 57
    .line 58
    .line 59
    const/4 v12, 0x0

    .line 60
    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineInfoTextSize()F

    .line 64
    .line 65
    .line 66
    move-result v13

    .line 67
    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    .line 69
    .line 70
    iget-object v13, v0, Ltb/l;->r:Landroid/graphics/Paint$FontMetricsInt;

    .line 71
    .line 72
    invoke-virtual {v9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 73
    .line 74
    .line 75
    move-result-object v14

    .line 76
    iput-object v14, v0, Ltb/l;->r:Landroid/graphics/Paint$FontMetricsInt;

    .line 77
    .line 78
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    const/high16 v15, 0x41000000    # 8.0f

    .line 83
    .line 84
    mul-float v14, v14, v15

    .line 85
    .line 86
    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 87
    .line 88
    .line 89
    move-result v15

    .line 90
    const/high16 v17, 0x40000000    # 2.0f

    .line 91
    .line 92
    iget-object v11, v0, Ltb/l;->e:Landroid/graphics/RectF;

    .line 93
    .line 94
    if-nez v6, :cond_6

    .line 95
    .line 96
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    int-to-float v2, v2

    .line 101
    div-float v2, v2, v17

    .line 102
    .line 103
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    int-to-float v6, v6

    .line 108
    div-float v6, v6, v17

    .line 109
    .line 110
    sub-float/2addr v2, v6

    .line 111
    sub-float/2addr v2, v14

    .line 112
    iput v2, v11, Landroid/graphics/RectF;->top:F

    .line 113
    .line 114
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    int-to-float v2, v2

    .line 119
    div-float v2, v2, v17

    .line 120
    .line 121
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    int-to-float v6, v6

    .line 126
    div-float v6, v6, v17

    .line 127
    .line 128
    add-float/2addr v6, v2

    .line 129
    add-float/2addr v6, v14

    .line 130
    iput v6, v11, Landroid/graphics/RectF;->bottom:F

    .line 131
    .line 132
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    int-to-float v2, v2

    .line 137
    div-float v2, v2, v17

    .line 138
    .line 139
    div-float v6, v15, v17

    .line 140
    .line 141
    sub-float/2addr v2, v6

    .line 142
    sub-float/2addr v2, v14

    .line 143
    iput v2, v11, Landroid/graphics/RectF;->left:F

    .line 144
    .line 145
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    int-to-float v2, v2

    .line 150
    div-float v2, v2, v17

    .line 151
    .line 152
    add-float/2addr v2, v6

    .line 153
    add-float/2addr v2, v14

    .line 154
    iput v2, v11, Landroid/graphics/RectF;->right:F

    .line 155
    .line 156
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    int-to-float v2, v2

    .line 161
    div-float v2, v2, v17

    .line 162
    .line 163
    mul-float v6, v14, v17

    .line 164
    .line 165
    add-float/2addr v2, v6

    .line 166
    const/high16 v18, 0x41200000    # 10.0f

    .line 167
    .line 168
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 169
    .line 170
    .line 171
    move-result v19

    .line 172
    mul-float v3, v19, v18

    .line 173
    .line 174
    const/16 v12, 0xf

    .line 175
    .line 176
    if-eq v7, v12, :cond_4

    .line 177
    .line 178
    or-int/2addr v4, v7

    .line 179
    if-ne v4, v7, :cond_1

    .line 180
    .line 181
    iput v3, v11, Landroid/graphics/RectF;->top:F

    .line 182
    .line 183
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    int-to-float v2, v2

    .line 188
    add-float/2addr v2, v3

    .line 189
    add-float/2addr v2, v6

    .line 190
    iput v2, v11, Landroid/graphics/RectF;->bottom:F

    .line 191
    .line 192
    const/4 v2, 0x0

    .line 193
    invoke-virtual {v5, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->J(I)I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    int-to-float v2, v4

    .line 198
    add-float/2addr v2, v3

    .line 199
    add-float/2addr v2, v14

    .line 200
    :cond_1
    const/16 v4, 0x8

    .line 201
    .line 202
    or-int/2addr v4, v7

    .line 203
    if-ne v4, v7, :cond_2

    .line 204
    .line 205
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    int-to-float v2, v2

    .line 210
    sub-float/2addr v2, v3

    .line 211
    sub-float/2addr v2, v6

    .line 212
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    int-to-float v4, v4

    .line 217
    sub-float/2addr v2, v4

    .line 218
    iput v2, v11, Landroid/graphics/RectF;->top:F

    .line 219
    .line 220
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    int-to-float v2, v2

    .line 225
    sub-float/2addr v2, v3

    .line 226
    iput v2, v11, Landroid/graphics/RectF;->bottom:F

    .line 227
    .line 228
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    sub-int/2addr v2, v4

    .line 237
    const/4 v4, 0x0

    .line 238
    invoke-virtual {v5, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->J(I)I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    add-int/2addr v4, v2

    .line 243
    int-to-float v2, v4

    .line 244
    sub-float/2addr v2, v3

    .line 245
    sub-float/2addr v2, v14

    .line 246
    :cond_2
    or-int/lit8 v4, v7, 0x1

    .line 247
    .line 248
    if-ne v4, v7, :cond_3

    .line 249
    .line 250
    iput v3, v11, Landroid/graphics/RectF;->left:F

    .line 251
    .line 252
    add-float v4, v3, v6

    .line 253
    .line 254
    add-float/2addr v4, v15

    .line 255
    iput v4, v11, Landroid/graphics/RectF;->right:F

    .line 256
    .line 257
    :cond_3
    or-int/lit8 v4, v7, 0x4

    .line 258
    .line 259
    if-ne v4, v7, :cond_4

    .line 260
    .line 261
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    int-to-float v4, v4

    .line 266
    sub-float/2addr v4, v3

    .line 267
    iput v4, v11, Landroid/graphics/RectF;->right:F

    .line 268
    .line 269
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    int-to-float v4, v4

    .line 274
    sub-float/2addr v4, v3

    .line 275
    sub-float/2addr v4, v6

    .line 276
    sub-float/2addr v4, v15

    .line 277
    iput v4, v11, Landroid/graphics/RectF;->left:F

    .line 278
    .line 279
    :cond_4
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    iget-object v3, v3, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 284
    .line 285
    const/16 v4, 0x10

    .line 286
    .line 287
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_5

    .line 292
    .line 293
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    const v4, 0x3e051eb8    # 0.13f

    .line 301
    .line 302
    .line 303
    mul-float v3, v3, v4

    .line 304
    .line 305
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    .line 306
    .line 307
    .line 308
    move-result v6

    .line 309
    mul-float v6, v6, v4

    .line 310
    .line 311
    invoke-virtual {v1, v11, v3, v6, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 312
    .line 313
    .line 314
    :cond_5
    const/16 v16, 0x0

    .line 315
    .line 316
    goto/16 :goto_3

    .line 317
    .line 318
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    int-to-float v3, v3

    .line 323
    sub-float v3, v3, p4

    .line 324
    .line 325
    iput v3, v11, Landroid/graphics/RectF;->right:F

    .line 326
    .line 327
    iget v3, v11, Landroid/graphics/RectF;->right:F

    .line 328
    .line 329
    mul-float v6, v14, v17

    .line 330
    .line 331
    sub-float/2addr v3, v6

    .line 332
    sub-float/2addr v3, v15

    .line 333
    iput v3, v11, Landroid/graphics/RectF;->left:F

    .line 334
    .line 335
    const/high16 v3, 0x3f000000    # 0.5f

    .line 336
    .line 337
    if-ne v7, v4, :cond_8

    .line 338
    .line 339
    iput v2, v11, Landroid/graphics/RectF;->top:F

    .line 340
    .line 341
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    int-to-float v4, v4

    .line 346
    add-float/2addr v4, v2

    .line 347
    add-float/2addr v4, v6

    .line 348
    iput v4, v11, Landroid/graphics/RectF;->bottom:F

    .line 349
    .line 350
    const/4 v4, 0x0

    .line 351
    invoke-virtual {v5, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->J(I)I

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    int-to-float v4, v6

    .line 356
    add-float/2addr v2, v4

    .line 357
    add-float/2addr v2, v14

    .line 358
    const/16 v4, 0x8

    .line 359
    .line 360
    new-array v6, v4, [F

    .line 361
    .line 362
    const/4 v12, 0x0

    .line 363
    :goto_0
    if-ge v12, v4, :cond_b

    .line 364
    .line 365
    const/4 v7, 0x5

    .line 366
    if-eq v12, v7, :cond_7

    .line 367
    .line 368
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    .line 369
    .line 370
    .line 371
    move-result v7

    .line 372
    mul-float v7, v7, v3

    .line 373
    .line 374
    aput v7, v6, v12

    .line 375
    .line 376
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 377
    .line 378
    goto :goto_0

    .line 379
    :cond_8
    const/16 v4, 0x8

    .line 380
    .line 381
    if-ne v7, v4, :cond_a

    .line 382
    .line 383
    add-float v2, v2, p3

    .line 384
    .line 385
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    int-to-float v4, v4

    .line 390
    sub-float v4, v2, v4

    .line 391
    .line 392
    sub-float/2addr v4, v6

    .line 393
    iput v4, v11, Landroid/graphics/RectF;->top:F

    .line 394
    .line 395
    iput v2, v11, Landroid/graphics/RectF;->bottom:F

    .line 396
    .line 397
    const/4 v4, 0x0

    .line 398
    invoke-virtual {v5, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->J(I)I

    .line 399
    .line 400
    .line 401
    move-result v6

    .line 402
    int-to-float v4, v6

    .line 403
    div-float v4, v4, v17

    .line 404
    .line 405
    sub-float/2addr v2, v4

    .line 406
    const/16 v4, 0x8

    .line 407
    .line 408
    new-array v6, v4, [F

    .line 409
    .line 410
    const/4 v12, 0x0

    .line 411
    :goto_1
    if-ge v12, v4, :cond_b

    .line 412
    .line 413
    const/4 v7, 0x3

    .line 414
    if-eq v12, v7, :cond_9

    .line 415
    .line 416
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    .line 417
    .line 418
    .line 419
    move-result v7

    .line 420
    mul-float v7, v7, v3

    .line 421
    .line 422
    aput v7, v6, v12

    .line 423
    .line 424
    :cond_9
    add-int/lit8 v12, v12, 0x1

    .line 425
    .line 426
    goto :goto_1

    .line 427
    :cond_a
    div-float v3, p3, v17

    .line 428
    .line 429
    add-float/2addr v3, v2

    .line 430
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    int-to-float v2, v2

    .line 435
    div-float v2, v2, v17

    .line 436
    .line 437
    sub-float v2, v3, v2

    .line 438
    .line 439
    sub-float/2addr v2, v14

    .line 440
    iput v2, v11, Landroid/graphics/RectF;->top:F

    .line 441
    .line 442
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 443
    .line 444
    .line 445
    move-result v2

    .line 446
    int-to-float v2, v2

    .line 447
    div-float v2, v2, v17

    .line 448
    .line 449
    add-float/2addr v2, v3

    .line 450
    add-float/2addr v2, v14

    .line 451
    iput v2, v11, Landroid/graphics/RectF;->bottom:F

    .line 452
    .line 453
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    int-to-float v2, v2

    .line 458
    div-float v2, v2, v17

    .line 459
    .line 460
    sub-float/2addr v3, v2

    .line 461
    const/4 v2, 0x0

    .line 462
    invoke-virtual {v5, v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->J(I)I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    int-to-float v2, v2

    .line 467
    add-float/2addr v3, v2

    .line 468
    const/4 v6, 0x0

    .line 469
    move v2, v3

    .line 470
    :cond_b
    iget-object v3, v0, Ltb/l;->f:Landroid/graphics/Path;

    .line 471
    .line 472
    if-eqz v6, :cond_c

    .line 473
    .line 474
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 475
    .line 476
    .line 477
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 478
    .line 479
    invoke-virtual {v3, v11, v6, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 480
    .line 481
    .line 482
    const/16 v16, 0x0

    .line 483
    .line 484
    goto :goto_2

    .line 485
    :cond_c
    neg-float v4, v14

    .line 486
    const/4 v6, 0x0

    .line 487
    invoke-virtual {v11, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 488
    .line 489
    .line 490
    iget v6, v11, Landroid/graphics/RectF;->right:F

    .line 491
    .line 492
    add-float/2addr v6, v14

    .line 493
    iput v6, v11, Landroid/graphics/RectF;->right:F

    .line 494
    .line 495
    div-float v4, v4, v17

    .line 496
    .line 497
    sget-object v6, Leb/a;->a:Landroid/graphics/Matrix;

    .line 498
    .line 499
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    .line 503
    .line 504
    .line 505
    move-result v6

    .line 506
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    .line 507
    .line 508
    .line 509
    move-result v7

    .line 510
    div-float v7, v7, v17

    .line 511
    .line 512
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 513
    .line 514
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    .line 515
    .line 516
    .line 517
    move-result-wide v14

    .line 518
    double-to-float v12, v14

    .line 519
    mul-float v14, v12, v7

    .line 520
    .line 521
    add-float v15, v7, v14

    .line 522
    .line 523
    invoke-static {v15, v6}, Ljava/lang/Math;->max(FF)F

    .line 524
    .line 525
    .line 526
    move-result v6

    .line 527
    const/high16 v22, 0x42b40000    # 90.0f

    .line 528
    .line 529
    const/high16 v23, 0x43340000    # 180.0f

    .line 530
    .line 531
    move-object/from16 v18, v3

    .line 532
    .line 533
    move/from16 v19, v7

    .line 534
    .line 535
    move/from16 v20, v7

    .line 536
    .line 537
    move/from16 v21, v7

    .line 538
    .line 539
    invoke-static/range {v18 .. v23}, Leb/a;->a(Landroid/graphics/Path;FFFFF)V

    .line 540
    .line 541
    .line 542
    sub-float v14, v6, v14

    .line 543
    .line 544
    const/high16 v22, -0x3d4c0000    # -90.0f

    .line 545
    .line 546
    const/high16 v23, 0x42340000    # 45.0f

    .line 547
    .line 548
    move/from16 v19, v14

    .line 549
    .line 550
    invoke-static/range {v18 .. v23}, Leb/a;->a(Landroid/graphics/Path;FFFFF)V

    .line 551
    .line 552
    .line 553
    const/high16 v15, 0x40a00000    # 5.0f

    .line 554
    .line 555
    div-float v21, v7, v15

    .line 556
    .line 557
    mul-float v12, v12, v21

    .line 558
    .line 559
    sub-float v19, v6, v12

    .line 560
    .line 561
    const/high16 v22, -0x3dcc0000    # -45.0f

    .line 562
    .line 563
    const/high16 v23, 0x42b40000    # 90.0f

    .line 564
    .line 565
    invoke-static/range {v18 .. v23}, Leb/a;->a(Landroid/graphics/Path;FFFFF)V

    .line 566
    .line 567
    .line 568
    const/high16 v22, 0x42340000    # 45.0f

    .line 569
    .line 570
    const/high16 v23, 0x42340000    # 45.0f

    .line 571
    .line 572
    move/from16 v19, v14

    .line 573
    .line 574
    move/from16 v21, v7

    .line 575
    .line 576
    invoke-static/range {v18 .. v23}, Leb/a;->a(Landroid/graphics/Path;FFFFF)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 580
    .line 581
    .line 582
    sget-object v6, Leb/a;->a:Landroid/graphics/Matrix;

    .line 583
    .line 584
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 585
    .line 586
    .line 587
    iget v7, v11, Landroid/graphics/RectF;->left:F

    .line 588
    .line 589
    iget v12, v11, Landroid/graphics/RectF;->top:F

    .line 590
    .line 591
    invoke-virtual {v6, v7, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 592
    .line 593
    .line 594
    invoke-virtual {v3, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 595
    .line 596
    .line 597
    move/from16 v16, v4

    .line 598
    .line 599
    :goto_2
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 600
    .line 601
    .line 602
    move-result-object v4

    .line 603
    iget-object v4, v4, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 604
    .line 605
    const/16 v6, 0x10

    .line 606
    .line 607
    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 608
    .line 609
    .line 610
    move-result v4

    .line 611
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v1, v3, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 615
    .line 616
    .line 617
    :goto_3
    iget v3, v11, Landroid/graphics/RectF;->left:F

    .line 618
    .line 619
    iget v4, v11, Landroid/graphics/RectF;->right:F

    .line 620
    .line 621
    add-float/2addr v3, v4

    .line 622
    div-float v3, v3, v17

    .line 623
    .line 624
    add-float v3, v3, v16

    .line 625
    .line 626
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 627
    .line 628
    .line 629
    move-result-object v4

    .line 630
    iget-object v4, v4, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 631
    .line 632
    const/16 v5, 0x11

    .line 633
    .line 634
    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 635
    .line 636
    .line 637
    move-result v4

    .line 638
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 639
    .line 640
    .line 641
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 642
    .line 643
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1, v8, v3, v2, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 647
    .line 648
    .line 649
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 650
    .line 651
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 655
    .line 656
    .line 657
    iput-object v13, v0, Ltb/l;->r:Landroid/graphics/Paint$FontMetricsInt;

    .line 658
    .line 659
    return-void
.end method

.method public final j(Landroid/graphics/Canvas;IIFFI)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p3

    .line 3
    .line 4
    add-float v5, p5, p4

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    cmpg-float v2, v5, v2

    .line 8
    .line 9
    if-gtz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, v0, Ltb/l;->c:Leb/c;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v4, v0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 19
    .line 20
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineNumberAlign()Landroid/graphics/Paint$Align;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    if-eq v3, v6, :cond_1

    .line 25
    .line 26
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineNumberAlign()Landroid/graphics/Paint$Align;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    move/from16 v3, p6

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->K(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    mul-int v3, v3, v1

    .line 47
    .line 48
    add-int/2addr v3, v2

    .line 49
    int-to-float v1, v3

    .line 50
    const/high16 v2, 0x40000000    # 2.0f

    .line 51
    .line 52
    div-float/2addr v1, v2

    .line 53
    iget-object v3, v0, Ltb/l;->A:Landroid/graphics/Paint$FontMetricsInt;

    .line 54
    .line 55
    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 56
    .line 57
    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 58
    .line 59
    sub-int/2addr v6, v3

    .line 60
    int-to-float v6, v6

    .line 61
    div-float/2addr v6, v2

    .line 62
    sub-float/2addr v1, v6

    .line 63
    int-to-float v3, v3

    .line 64
    sub-float/2addr v1, v3

    .line 65
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    int-to-float v3, v3

    .line 70
    sub-float v11, v1, v3

    .line 71
    .line 72
    const/16 v1, 0x14

    .line 73
    .line 74
    invoke-static {v1}, Lsb/h;->e(I)[C

    .line 75
    .line 76
    .line 77
    move-result-object v13

    .line 78
    const/4 v1, 0x1

    .line 79
    add-int/lit8 v3, p2, 0x1

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    if-ltz v3, :cond_2

    .line 83
    .line 84
    neg-int v7, v3

    .line 85
    const/4 v8, 0x0

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    move v7, v3

    .line 88
    const/4 v8, 0x1

    .line 89
    :goto_0
    const/16 v9, -0xa

    .line 90
    .line 91
    const/4 v10, 0x1

    .line 92
    :goto_1
    const/16 v12, 0xa

    .line 93
    .line 94
    if-ge v10, v12, :cond_4

    .line 95
    .line 96
    if-le v7, v9, :cond_3

    .line 97
    .line 98
    add-int/2addr v10, v8

    .line 99
    move v9, v10

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    mul-int/lit8 v9, v9, 0xa

    .line 102
    .line 103
    add-int/lit8 v10, v10, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    add-int/2addr v8, v12

    .line 107
    move v9, v8

    .line 108
    :goto_2
    if-gez v3, :cond_5

    .line 109
    .line 110
    const/4 v6, 0x1

    .line 111
    :cond_5
    if-nez v6, :cond_6

    .line 112
    .line 113
    neg-int v3, v3

    .line 114
    :cond_6
    move v7, v9

    .line 115
    :goto_3
    sget-object v8, Lsb/h;->b:[C

    .line 116
    .line 117
    sget-object v10, Lsb/h;->c:[C

    .line 118
    .line 119
    const/16 v12, -0x64

    .line 120
    .line 121
    if-gt v3, v12, :cond_7

    .line 122
    .line 123
    div-int/lit8 v12, v3, 0x64

    .line 124
    .line 125
    mul-int/lit8 v14, v12, 0x64

    .line 126
    .line 127
    sub-int/2addr v14, v3

    .line 128
    add-int/lit8 v3, v7, -0x1

    .line 129
    .line 130
    aget-char v10, v10, v14

    .line 131
    .line 132
    aput-char v10, v13, v3

    .line 133
    .line 134
    add-int/lit8 v7, v7, -0x2

    .line 135
    .line 136
    aget-char v3, v8, v14

    .line 137
    .line 138
    aput-char v3, v13, v7

    .line 139
    .line 140
    move v3, v12

    .line 141
    goto :goto_3

    .line 142
    :cond_7
    add-int/lit8 v12, v7, -0x1

    .line 143
    .line 144
    neg-int v14, v3

    .line 145
    aget-char v10, v10, v14

    .line 146
    .line 147
    aput-char v10, v13, v12

    .line 148
    .line 149
    const/16 v10, -0x9

    .line 150
    .line 151
    if-ge v3, v10, :cond_8

    .line 152
    .line 153
    add-int/lit8 v12, v7, -0x2

    .line 154
    .line 155
    aget-char v3, v8, v14

    .line 156
    .line 157
    aput-char v3, v13, v12

    .line 158
    .line 159
    :cond_8
    if-eqz v6, :cond_9

    .line 160
    .line 161
    add-int/lit8 v12, v12, -0x1

    .line 162
    .line 163
    const/16 v3, 0x2d

    .line 164
    .line 165
    aput-char v3, v13, v12

    .line 166
    .line 167
    :cond_9
    sget-object v3, Ltb/j;->a:[I

    .line 168
    .line 169
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineNumberAlign()Landroid/graphics/Paint$Align;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    aget v3, v3, v6

    .line 178
    .line 179
    if-eq v3, v1, :cond_c

    .line 180
    .line 181
    const/4 v1, 0x2

    .line 182
    if-eq v3, v1, :cond_b

    .line 183
    .line 184
    const/4 v1, 0x3

    .line 185
    if-eq v3, v1, :cond_a

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_a
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginLeft()F

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    add-float v1, v1, p5

    .line 193
    .line 194
    div-float/2addr v1, v2

    .line 195
    add-float v10, v1, p4

    .line 196
    .line 197
    iget-object v12, v0, Ltb/l;->c:Leb/c;

    .line 198
    .line 199
    const/4 v8, 0x0

    .line 200
    move-object/from16 v6, p1

    .line 201
    .line 202
    move-object v7, v13

    .line 203
    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_b
    const/4 v3, 0x0

    .line 208
    iget-object v7, v0, Ltb/l;->c:Leb/c;

    .line 209
    .line 210
    move-object/from16 v1, p1

    .line 211
    .line 212
    move-object v2, v13

    .line 213
    move v4, v9

    .line 214
    move v6, v11

    .line 215
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :cond_c
    const/4 v3, 0x0

    .line 220
    iget-object v7, v0, Ltb/l;->c:Leb/c;

    .line 221
    .line 222
    move-object/from16 v1, p1

    .line 223
    .line 224
    move-object v2, v13

    .line 225
    move v4, v9

    .line 226
    move/from16 v5, p4

    .line 227
    .line 228
    move v6, v11

    .line 229
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 230
    .line 231
    .line 232
    :goto_4
    invoke-static {v13}, Lsb/h;->h([C)V

    .line 233
    .line 234
    .line 235
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;FFI)V
    .locals 4

    .line 1
    add-float/2addr p3, p2

    .line 2
    const/4 v0, 0x0

    .line 3
    cmpg-float v1, p3, v0

    .line 4
    .line 5
    if-gez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget-object v1, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    int-to-float v2, v2

    .line 19
    iget-object v3, p0, Ltb/l;->e:Landroid/graphics/RectF;

    .line 20
    .line 21
    iput v2, v3, Landroid/graphics/RectF;->bottom:F

    .line 22
    .line 23
    iput v0, v3, Landroid/graphics/RectF;->top:F

    .line 24
    .line 25
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-gez v0, :cond_1

    .line 30
    .line 31
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    .line 32
    .line 33
    int-to-float v0, v0

    .line 34
    sub-float/2addr v1, v0

    .line 35
    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    .line 36
    .line 37
    iget v1, v3, Landroid/graphics/RectF;->top:F

    .line 38
    .line 39
    sub-float/2addr v1, v0

    .line 40
    iput v1, v3, Landroid/graphics/RectF;->top:F

    .line 41
    .line 42
    :cond_1
    iput p2, v3, Landroid/graphics/RectF;->left:F

    .line 43
    .line 44
    iput p3, v3, Landroid/graphics/RectF;->right:F

    .line 45
    .line 46
    invoke-virtual {p0, p1, p4, v3}, Ltb/l;->g(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public final l(Landroid/graphics/Canvas;FILandroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object v1, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 3
    .line 4
    if-ne p3, v0, :cond_0

    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-virtual {v1, p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->K(I)I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineSpacingPixels()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    div-int/lit8 v0, v0, 0x2

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :goto_0
    int-to-float p3, p3

    .line 19
    goto :goto_2

    .line 20
    :cond_0
    invoke-virtual {v1, p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->K(I)I

    .line 21
    .line 22
    .line 23
    move-result p3

    .line 24
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineSpacingPixels()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    div-int/lit8 v0, v0, 0x2

    .line 29
    .line 30
    sub-int/2addr p3, v0

    .line 31
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    :goto_1
    sub-int/2addr p3, v0

    .line 36
    goto :goto_0

    .line 37
    :goto_2
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeightOfText()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-float v0, v0

    .line 42
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const/high16 v2, 0x3f000000    # 0.5f

    .line 50
    .line 51
    mul-float v0, v0, v2

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    cmpg-float v2, v0, v2

    .line 55
    .line 56
    if-lez v2, :cond_3

    .line 57
    .line 58
    if-nez p4, :cond_1

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_1
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-lez v2, :cond_3

    .line 70
    .line 71
    if-gtz v3, :cond_2

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_2
    int-to-float v2, v2

    .line 75
    int-to-float v3, v3

    .line 76
    div-float/2addr v2, v3

    .line 77
    mul-float v2, v2, v0

    .line 78
    .line 79
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v1, v1, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 84
    .line 85
    const/16 v3, 0x1f

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 92
    .line 93
    invoke-virtual {p4, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 94
    .line 95
    .line 96
    float-to-int v1, p2

    .line 97
    sub-float v0, p3, v0

    .line 98
    .line 99
    float-to-int v0, v0

    .line 100
    add-float/2addr p2, v2

    .line 101
    float-to-int p2, p2

    .line 102
    float-to-int p3, p3

    .line 103
    invoke-virtual {p4, v1, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_3
    return-void
.end method

.method public final m(Landroid/graphics/Canvas;III)V
    .locals 3

    .line 1
    iget-object v0, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    mul-int v1, v1, p3

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v1, v2

    .line 14
    int-to-float v1, v1

    .line 15
    iget-object v2, p0, Ltb/l;->e:Landroid/graphics/RectF;

    .line 16
    .line 17
    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 18
    .line 19
    invoke-virtual {v0, p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->K(I)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sub-int/2addr p3, v0

    .line 28
    int-to-float p3, p3

    .line 29
    iput p3, v2, Landroid/graphics/RectF;->bottom:F

    .line 30
    .line 31
    const/4 p3, 0x0

    .line 32
    iput p3, v2, Landroid/graphics/RectF;->left:F

    .line 33
    .line 34
    int-to-float p3, p4

    .line 35
    iput p3, v2, Landroid/graphics/RectF;->right:F

    .line 36
    .line 37
    invoke-virtual {p0, p1, p2, v2}, Ltb/l;->g(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final n(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V
    .locals 4

    .line 1
    iget-object v0, p0, Ltb/l;->b:Leb/c;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 7
    .line 8
    invoke-virtual {p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-boolean v1, v1, Ltb/e;->s:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    int-to-float v1, v1

    .line 21
    invoke-virtual {p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget v2, v2, Ltb/e;->v:F

    .line 26
    .line 27
    mul-float v1, v1, v2

    .line 28
    .line 29
    invoke-virtual {p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    int-to-float v2, v2

    .line 34
    invoke-virtual {p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget v3, v3, Ltb/e;->v:F

    .line 39
    .line 40
    mul-float v2, v2, v3

    .line 41
    .line 42
    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    if-nez p4, :cond_1

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    .line 54
    .line 55
    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 56
    .line 57
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTextBorderWidth()F

    .line 61
    .line 62
    .line 63
    move-result p4

    .line 64
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 68
    .line 69
    .line 70
    move-result-object p4

    .line 71
    iget-boolean p4, p4, Ltb/e;->s:Z

    .line 72
    .line 73
    if-eqz p4, :cond_2

    .line 74
    .line 75
    invoke-virtual {p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 76
    .line 77
    .line 78
    move-result p4

    .line 79
    int-to-float p4, p4

    .line 80
    invoke-virtual {p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget v1, v1, Ltb/e;->v:F

    .line 85
    .line 86
    mul-float p4, p4, v1

    .line 87
    .line 88
    invoke-virtual {p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    int-to-float v1, v1

    .line 93
    invoke-virtual {p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    iget p3, p3, Ltb/e;->v:F

    .line 98
    .line 99
    mul-float v1, v1, p3

    .line 100
    .line 101
    invoke-virtual {p1, p2, p4, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final o(Landroid/graphics/Canvas;ILeb/o;IIIIII)V
    .locals 12

    .line 1
    move-object v7, p0

    .line 2
    move v0, p2

    .line 3
    move/from16 v1, p4

    .line 4
    .line 5
    move/from16 v2, p6

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result v8

    .line 11
    move/from16 v1, p5

    .line 12
    .line 13
    move/from16 v2, p7

    .line 14
    .line 15
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 16
    .line 17
    .line 18
    move-result v9

    .line 19
    if-ge v8, v9, :cond_2

    .line 20
    .line 21
    iget-object v1, v7, Ltb/l;->e:Landroid/graphics/RectF;

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Ltb/l;->y(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v3, v7, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 28
    .line 29
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    sub-int/2addr v2, v4

    .line 34
    int-to-float v2, v2

    .line 35
    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Ltb/l;->x(I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    sub-int/2addr v2, v4

    .line 46
    int-to-float v2, v2

    .line 47
    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 48
    .line 49
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    int-to-float v2, v2

    .line 58
    sub-float/2addr v1, v2

    .line 59
    iget-boolean v2, v3, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 60
    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLayout()Lwb/d;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v2, p2}, Lwb/d;->q(I)Lwb/h;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-boolean v2, v2, Lwb/h;->b:Z

    .line 72
    .line 73
    if-nez v2, :cond_0

    .line 74
    .line 75
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getNonPrintablePaintingFlags()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    and-int/lit16 v2, v2, 0x80

    .line 80
    .line 81
    if-eqz v2, :cond_0

    .line 82
    .line 83
    invoke-virtual {p0}, Ltb/l;->w()F

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    add-float/2addr v2, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    move v2, v1

    .line 90
    :goto_0
    if-nez p3, :cond_1

    .line 91
    .line 92
    invoke-virtual {p0, p2}, Ltb/l;->d(I)Leb/o;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    move-object v10, v0

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    move-object v10, p3

    .line 99
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    new-instance v11, Ltb/g;

    .line 104
    .line 105
    move-object v0, v11

    .line 106
    move-object v1, p0

    .line 107
    move-object v4, p1

    .line 108
    move/from16 v5, p8

    .line 109
    .line 110
    move/from16 v6, p9

    .line 111
    .line 112
    invoke-direct/range {v0 .. v6}, Ltb/g;-><init>(Ltb/l;FILandroid/graphics/Canvas;II)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v10, v8, v9, v11}, Leb/o;->j(IILeb/g;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    return-void
.end method

.method public final p(Landroid/graphics/Canvas;FLsb/e;Ljava/util/ArrayList;La0/n;Landroidx/leanback/widget/i;)V
    .locals 60

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p4

    move-object/from16 v0, p5

    move-object/from16 v15, p6

    .line 1
    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getFirstVisibleRow()I

    move-result v10

    .line 2
    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLayout()Lwb/d;

    move-result-object v1

    iget-object v2, v11, Ltb/l;->n:Landroid/util/SparseArray;

    invoke-interface {v1, v10, v2}, Lwb/d;->f(ILandroid/util/SparseArray;)Lwb/j;

    move-result-object v16

    .line 3
    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getStyles()Ljb/d;

    .line 4
    iget-object v9, v11, Ltb/l;->l:Lsb/e;

    .line 5
    iget-object v8, v11, Ltb/l;->m:La0/p;

    const/4 v7, 0x0

    .line 6
    iput v7, v9, Lsb/e;->b:I

    .line 7
    invoke-virtual {v8}, La0/p;->a()V

    .line 8
    iget-object v1, v11, Ltb/l;->D:Lmb/j;

    invoke-virtual {v1}, Lmb/j;->a()Z

    move-result v1

    const/16 v17, -0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, v11, Ltb/l;->D:Lmb/j;

    .line 9
    iget-object v1, v1, Lmb/j;->c:Lmb/b;

    .line 10
    iget v1, v1, Lmb/b;->b:I

    .line 11
    :goto_0
    iget-object v2, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    move-result-object v2

    .line 12
    iget-object v2, v2, Lzb/a;->a:Landroid/util/SparseIntArray;

    const/16 v6, 0x9

    .line 13
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 14
    iget-object v3, v11, Ltb/l;->D:Lmb/j;

    invoke-virtual {v3}, Lmb/j;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, -0x1

    goto :goto_1

    :cond_1
    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLayout()Lwb/d;

    move-result-object v3

    iget-object v4, v11, Ltb/l;->D:Lmb/j;

    .line 15
    iget-object v4, v4, Lmb/j;->c:Lmb/b;

    .line 16
    iget v4, v4, Lmb/b;->a:I

    .line 17
    invoke-interface {v3, v4}, Lwb/d;->l(I)I

    move-result v3

    move v5, v3

    .line 18
    :goto_1
    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    move-result-object v3

    .line 19
    iget-object v3, v3, Lzb/a;->a:Landroid/util/SparseIntArray;

    const/16 v4, 0x50

    .line 20
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 21
    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 22
    iget-boolean v6, v3, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    const/16 v7, 0x80

    if-eqz v6, :cond_2

    .line 23
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getNonPrintablePaintingFlags()I

    move-result v3

    and-int/2addr v3, v7

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Ltb/l;->w()F

    move-result v3

    move/from16 v21, v3

    goto :goto_2

    :cond_2
    const/16 v21, 0x0

    .line 24
    :goto_2
    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    iget-object v3, v3, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    iget-object v3, v3, Ltb/f;->b:Lmb/d;

    invoke-virtual {v3}, Lmb/d;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    iget-object v3, v3, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    iget-object v3, v3, Ltb/f;->b:Lmb/d;

    iget v3, v3, Lmb/d;->a:I

    if-ltz v3, :cond_3

    iget-object v6, v11, Ltb/l;->F:Lmb/g;

    .line 25
    iget v7, v6, Lmb/g;->d:I

    if-ge v3, v7, :cond_3

    .line 26
    invoke-virtual {v6}, Lmb/g;->n()Lmb/a;

    move-result-object v3

    iget-object v6, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    iget-object v6, v6, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    iget-object v6, v6, Ltb/f;->b:Lmb/d;

    iget v6, v6, Lmb/d;->a:I

    invoke-virtual {v3, v6}, Lmb/a;->z(I)Lmb/b;

    move-result-object v3

    move-object v7, v3

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 27
    :goto_3
    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    iget-object v6, v3, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    iget-object v6, v6, Ltb/f;->b:Lmb/d;

    move/from16 v24, v4

    iget v4, v6, Lmb/d;->c:I

    iget v6, v6, Lmb/d;->a:I

    sub-int v25, v4, v6

    .line 28
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    move-result-object v3

    iget-object v6, v3, Ltb/u;->L:Lmb/b;

    .line 29
    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 30
    iget v4, v3, Lio/github/rosemoe/sora/widget/CodeEditor;->p:I

    and-int/lit16 v4, v4, -0xb9

    if-eqz v4, :cond_4

    .line 31
    iget-object v4, v11, Ltb/l;->b:Leb/c;

    .line 32
    iget v4, v4, Leb/c;->a:F

    .line 33
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3e000000    # 0.125f

    mul-float v3, v3, v4

    move/from16 v26, v3

    goto :goto_4

    :cond_4
    const/16 v26, 0x0

    .line 34
    :goto_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_7

    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 35
    iget-boolean v3, v3, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    if-nez v3, :cond_7

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 37
    iget-boolean v4, v3, Lio/github/rosemoe/sora/widget/CodeEditor;->G1:Z

    if-eqz v4, :cond_7

    .line 38
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderContext()Lyb/b;

    move-result-object v3

    .line 39
    iget-object v3, v3, Lyb/b;->b:Ls4/a;

    .line 40
    iget-object v4, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLastVisibleRow()I

    move-result v4

    move/from16 v28, v5

    .line 41
    sget-object v5, Lje/t;->a:Lje/t;

    move-object/from16 v29, v6

    .line 42
    iget-object v6, v3, Ls4/a;->c:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object/from16 v30, v7

    const-string v7, "iterator(...)"

    invoke-static {v6, v7}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 45
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    const-string v14, "next(...)"

    invoke-static {v7, v14}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lyb/c;

    .line 46
    iget v14, v7, Lyb/c;->a:I

    if-gt v10, v14, :cond_6

    if-gt v14, v4, :cond_6

    :cond_5
    :goto_6
    move-object/from16 v14, p4

    goto :goto_5

    .line 47
    :cond_6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 48
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 49
    iget-object v14, v7, Lyb/c;->b:Landroid/graphics/RenderNode;

    .line 50
    invoke-static {v14}, Lwa/f;->i(Landroid/graphics/RenderNode;)V

    .line 51
    iget-object v14, v3, Ls4/a;->d:Ljava/lang/Object;

    check-cast v14, Ljava/util/Stack;

    invoke-virtual {v14, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_7
    move/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    .line 52
    :cond_8
    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    move-result v4

    sub-float v14, v3, v4

    .line 53
    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorAnimator()Lcc/a;

    move-result-object v3

    check-cast v3, Ldc/c;

    invoke-virtual {v3}, Ldc/c;->b()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 54
    iget-boolean v4, v3, Lio/github/rosemoe/sora/widget/CodeEditor;->N0:Z

    if-eqz v4, :cond_9

    .line 55
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 56
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    move v3, v10

    const/4 v4, -0x1

    .line 57
    :goto_7
    iget-object v5, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLastVisibleRow()I

    move-result v5

    const/4 v7, 0x1

    if-gt v3, v5, :cond_e

    invoke-interface/range {v16 .. v16}, Lwb/j;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 58
    invoke-interface/range {v16 .. v16}, Lwb/j;->next()Lwb/h;

    move-result-object v5

    .line 59
    iget v5, v5, Lwb/h;->a:I

    if-eq v4, v5, :cond_a

    .line 60
    invoke-virtual {v11, v5}, Ltb/l;->u(I)Lmb/h;

    move-result-object v4

    iput-object v4, v11, Ltb/l;->E:Lmb/h;

    move v4, v5

    .line 61
    :cond_a
    iget-object v6, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v5, v1, :cond_b

    .line 62
    iget-object v5, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 63
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorAnimator()Lcc/a;

    move-result-object v5

    check-cast v5, Ldc/c;

    invoke-virtual {v5}, Ldc/c;->b()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 64
    iget-boolean v6, v5, Lio/github/rosemoe/sora/widget/CodeEditor;->N0:Z

    if-eqz v6, :cond_b

    .line 65
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_c

    .line 66
    iget-object v6, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 67
    invoke-virtual {v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_9

    .line 68
    :cond_c
    iget-object v6, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->getStyles()Ljb/d;

    :goto_9
    if-eqz v5, :cond_d

    .line 69
    iget-object v5, v11, Ltb/l;->d:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v11, v12, v2, v3, v5}, Ltb/l;->m(Landroid/graphics/Canvas;III)V

    .line 70
    iget v5, v0, La0/n;->b:I

    add-int/2addr v5, v7

    invoke-virtual {v0, v5}, La0/n;->a(I)V

    .line 71
    iget-object v5, v0, La0/n;->a:[I

    iget v6, v0, La0/n;->b:I

    aput v3, v5, v6

    add-int/2addr v6, v7

    .line 72
    iput v6, v0, La0/n;->b:I

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 73
    :cond_e
    iget-object v0, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorAnimator()Lcc/a;

    move-result-object v0

    check-cast v0, Ldc/c;

    invoke-virtual {v0}, Ldc/c;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 74
    iget-boolean v1, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->N0:Z

    if-eqz v1, :cond_f

    .line 75
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    iget-object v0, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorAnimator()Lcc/a;

    move-result-object v1

    check-cast v1, Ldc/c;

    .line 77
    iget-object v1, v1, Ldc/c;->e:Landroid/animation/ValueAnimator;

    .line 78
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 79
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, v11, Ltb/l;->e:Landroid/graphics/RectF;

    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    .line 80
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorAnimator()Lcc/a;

    move-result-object v0

    check-cast v0, Ldc/c;

    .line 81
    iget-object v0, v0, Ldc/c;->f:Landroid/animation/ValueAnimator;

    .line 82
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v1, v0

    .line 83
    iput v1, v3, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x0

    .line 84
    iput v1, v3, Landroid/graphics/RectF;->left:F

    .line 85
    iget-object v0, v11, Ltb/l;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 86
    invoke-virtual {v11, v12, v2, v3}, Ltb/l;->g(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 87
    :cond_f
    invoke-interface/range {v16 .. v16}, Lwb/j;->reset()V

    move v0, v10

    .line 88
    :goto_a
    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLastVisibleRow()I

    move-result v1

    const/high16 v31, 0x40000000    # 2.0f

    const/16 v32, 0x2

    const-wide v33, 0xffffffffL

    if-gt v0, v1, :cond_25

    invoke-interface/range {v16 .. v16}, Lwb/j;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 89
    invoke-interface/range {v16 .. v16}, Lwb/j;->next()Lwb/h;

    move-result-object v2

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    iget v1, v2, Lwb/h;->g:F

    const/4 v6, 0x0

    invoke-virtual {v12, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 92
    iget v1, v2, Lwb/h;->a:I

    .line 93
    invoke-virtual {v11, v1}, Ltb/l;->u(I)Lmb/h;

    move-result-object v3

    .line 94
    iget v3, v3, Lmb/h;->c:I

    if-eq v4, v1, :cond_17

    .line 95
    iget-object v4, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    .line 96
    iput v5, v9, Lsb/e;->b:I

    .line 97
    iget-object v5, v4, Lio/github/rosemoe/sora/widget/CodeEditor;->y1:Ltb/r;

    iget-object v6, v5, Ltb/r;->b:Ljava/lang/String;

    if-eqz v6, :cond_11

    iget-object v6, v5, Ltb/r;->c:Ltb/p;

    if-nez v6, :cond_10

    goto :goto_b

    .line 98
    :cond_10
    invoke-virtual {v5}, Ltb/r;->f()Z

    move-result v5

    if-nez v5, :cond_12

    :cond_11
    :goto_b
    move/from16 v38, v3

    const/16 v37, 0x1

    goto :goto_d

    .line 99
    :cond_12
    iget-object v5, v4, Lio/github/rosemoe/sora/widget/CodeEditor;->y1:Ltb/r;

    iget-object v5, v5, Ltb/r;->f:Lsb/e;

    if-nez v5, :cond_13

    goto :goto_b

    .line 100
    :cond_13
    iget-object v6, v4, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Lmb/g;->l(II)I

    move-result v6

    .line 101
    iget-object v4, v4, Lio/github/rosemoe/sora/widget/CodeEditor;->h1:Lmb/g;

    .line 102
    invoke-virtual {v4, v1}, Lmb/g;->o(I)Lmb/h;

    move-result-object v4

    .line 103
    iget v4, v4, Lmb/h;->c:I

    add-int/2addr v4, v6

    .line 104
    invoke-virtual {v9, v6}, Lsb/e;->d(I)I

    move-result v19

    move/from16 v38, v3

    const/16 v37, 0x1

    add-int/lit8 v3, v19, -0x1

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 105
    :goto_c
    iget v7, v5, Lsb/e;->b:I

    if-ge v3, v7, :cond_16

    .line 106
    invoke-virtual {v5, v3}, Lsb/e;->c(I)J

    move-result-wide v39

    const/16 v7, 0x20

    shr-long v12, v39, v7

    long-to-int v7, v12

    and-long v12, v39, v33

    long-to-int v13, v12

    .line 107
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 108
    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-ge v12, v13, :cond_14

    sub-int/2addr v12, v6

    sub-int/2addr v13, v6

    .line 109
    invoke-static {v12, v13}, Lsb/h;->g(II)J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Lsb/e;->a(J)V

    :cond_14
    if-le v7, v4, :cond_15

    goto :goto_d

    :cond_15
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v12, p1

    move/from16 v13, p2

    goto :goto_c

    .line 110
    :cond_16
    :goto_d
    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    invoke-virtual {v8}, La0/p;->a()V

    .line 112
    invoke-virtual {v11, v1}, Ltb/l;->u(I)Lmb/h;

    move-result-object v3

    iput-object v3, v11, Ltb/l;->E:Lmb/h;

    move v12, v1

    goto :goto_e

    :cond_17
    move/from16 v38, v3

    const/16 v37, 0x1

    move v12, v4

    :goto_e
    neg-float v13, v14

    .line 113
    iget-boolean v3, v2, Lwb/h;->b:Z

    if-nez v3, :cond_18

    add-float v3, v13, v21

    move v7, v3

    goto :goto_f

    :cond_18
    move v7, v13

    .line 114
    :goto_f
    iget v3, v9, Lsb/e;->b:I

    if-lez v3, :cond_19

    .line 115
    invoke-virtual {v11, v0}, Ltb/l;->d(I)Leb/o;

    move-result-object v39

    const/4 v6, 0x0

    .line 116
    :goto_10
    iget v3, v9, Lsb/e;->b:I

    if-ge v6, v3, :cond_19

    .line 117
    invoke-virtual {v9, v6}, Lsb/e;->c(I)J

    move-result-wide v3

    move/from16 p5, v6

    const/16 v40, 0x20

    shr-long v5, v3, v40

    long-to-int v5, v5

    and-long v3, v3, v33

    long-to-int v6, v3

    .line 118
    iget v4, v2, Lwb/h;->d:I

    iget v3, v2, Lwb/h;->e:I

    move/from16 v41, v1

    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 119
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    move-result-object v1

    .line 120
    iget-object v1, v1, Lzb/a;->a:Landroid/util/SparseIntArray;

    move/from16 v42, v4

    const/16 v4, 0x1d

    .line 121
    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v27

    .line 122
    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 123
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    move-result-object v1

    .line 124
    iget-object v1, v1, Lzb/a;->a:Landroid/util/SparseIntArray;

    const/16 v4, 0x4e

    .line 125
    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v43

    move/from16 v4, v41

    move-object/from16 v1, p0

    move/from16 v41, v12

    move-object v12, v2

    move-object/from16 v2, p1

    move/from16 v44, v14

    move/from16 v20, v38

    const/4 v14, 0x6

    move/from16 v38, v3

    move v3, v0

    move v14, v4

    move/from16 v45, v24

    move-object/from16 v4, v39

    move/from16 v15, v28

    move/from16 v28, v13

    const/16 v13, 0x1f

    move/from16 v22, p5

    move-object/from16 v46, v29

    const/16 v18, 0x0

    move/from16 v48, v7

    move-object/from16 v47, v30

    move/from16 v7, v42

    move-object v13, v8

    move/from16 v8, v38

    move-object/from16 v18, v9

    move/from16 v9, v27

    move/from16 v49, v10

    move/from16 v10, v43

    .line 126
    invoke-virtual/range {v1 .. v10}, Ltb/l;->o(Landroid/graphics/Canvas;ILeb/o;IIIIII)V

    add-int/lit8 v6, v22, 0x1

    move-object v2, v12

    move-object v8, v13

    move v1, v14

    move-object/from16 v9, v18

    move/from16 v38, v20

    move/from16 v13, v28

    move/from16 v12, v41

    move/from16 v14, v44

    move/from16 v7, v48

    move/from16 v10, v49

    const/16 v37, 0x1

    move/from16 v28, v15

    move-object/from16 v15, p6

    goto/16 :goto_10

    :cond_19
    move/from16 v48, v7

    move-object/from16 v18, v9

    move/from16 v49, v10

    move/from16 v41, v12

    move/from16 v44, v14

    move/from16 v45, v24

    move/from16 v15, v28

    move-object/from16 v46, v29

    move-object/from16 v47, v30

    move/from16 v20, v38

    move v14, v1

    move-object v12, v2

    move/from16 v28, v13

    move-object v13, v8

    .line 127
    iget v1, v13, La0/p;->e:I

    if-lez v1, :cond_1d

    .line 128
    invoke-virtual {v11, v0}, Ltb/l;->d(I)Leb/o;

    move-result-object v19

    .line 129
    iget-object v10, v13, La0/p;->b:[J

    .line 130
    iget-object v9, v13, La0/p;->c:[J

    .line 131
    iget-object v8, v13, La0/p;->a:[J

    .line 132
    array-length v1, v8

    add-int/lit8 v7, v1, -0x2

    if-ltz v7, :cond_1d

    const/4 v6, 0x0

    .line 133
    :goto_11
    aget-wide v1, v8, v6

    const-wide/16 v3, -0x1

    xor-long/2addr v3, v1

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    and-long/2addr v3, v1

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v3, v3, v22

    cmp-long v5, v3, v22

    if-eqz v5, :cond_1c

    sub-int v3, v6, v7

    xor-int/lit8 v3, v3, -0x1

    const/16 v4, 0x1f

    ushr-int/2addr v3, v4

    const/16 v5, 0x8

    rsub-int/lit8 v4, v3, 0x8

    move-wide/from16 v22, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v4, :cond_1b

    const-wide/16 v1, 0xff

    and-long v1, v22, v1

    const-wide/16 v29, 0x80

    cmp-long v27, v1, v29

    if-gez v27, :cond_1a

    shl-int/lit8 v1, v6, 0x3

    add-int/2addr v1, v3

    .line 134
    aget-wide v29, v10, v1

    aget-wide v1, v9, v1

    move/from16 p5, v6

    move-object/from16 v27, v13

    const/16 v13, 0x20

    shr-long v5, v29, v13

    long-to-int v5, v5

    move/from16 v36, v14

    and-long v13, v29, v33

    long-to-int v6, v13

    .line 135
    iget v13, v12, Lwb/h;->d:I

    iget v14, v12, Lwb/h;->e:I

    move/from16 v37, v3

    move/from16 v30, v4

    const/16 v29, 0x20

    shr-long v3, v1, v29

    long-to-int v4, v3

    and-long v1, v1, v33

    long-to-int v3, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v29, v37

    move/from16 v37, v3

    move v3, v0

    move/from16 v38, v15

    move/from16 v15, v30

    move/from16 v30, v4

    move-object/from16 v4, v19

    move-object/from16 v39, v12

    const/16 v12, 0x8

    move/from16 v50, p5

    move/from16 v51, v7

    move v7, v13

    move-object v13, v8

    move v8, v14

    move-object v14, v9

    move/from16 v9, v30

    move-object/from16 v30, v10

    move/from16 v10, v37

    invoke-virtual/range {v1 .. v10}, Ltb/l;->o(Landroid/graphics/Canvas;ILeb/o;IIIIII)V

    goto :goto_13

    :cond_1a
    move/from16 v29, v3

    move/from16 v50, v6

    move/from16 v51, v7

    move-object/from16 v30, v10

    move-object/from16 v39, v12

    move-object/from16 v27, v13

    move/from16 v36, v14

    move/from16 v38, v15

    const/16 v12, 0x8

    move v15, v4

    move-object v13, v8

    move-object v14, v9

    :goto_13
    shr-long v22, v22, v12

    add-int/lit8 v3, v29, 0x1

    move-object v8, v13

    move-object v9, v14

    move v4, v15

    move-object/from16 v13, v27

    move-object/from16 v10, v30

    move/from16 v14, v36

    move/from16 v15, v38

    move-object/from16 v12, v39

    move/from16 v6, v50

    move/from16 v7, v51

    const/16 v5, 0x8

    goto/16 :goto_12

    :cond_1b
    move/from16 v50, v6

    move/from16 v51, v7

    move-object/from16 v30, v10

    move-object/from16 v39, v12

    move-object/from16 v27, v13

    move/from16 v36, v14

    move/from16 v38, v15

    const/16 v12, 0x8

    move v15, v4

    move-object v13, v8

    move-object v14, v9

    if-ne v15, v12, :cond_1e

    move/from16 v2, v50

    move/from16 v1, v51

    goto :goto_14

    :cond_1c
    move-object/from16 v30, v10

    move-object/from16 v39, v12

    move-object/from16 v27, v13

    move/from16 v36, v14

    move/from16 v38, v15

    move-object v13, v8

    move-object v14, v9

    move v2, v6

    move v1, v7

    :goto_14
    if-eq v2, v1, :cond_1e

    add-int/lit8 v6, v2, 0x1

    move v7, v1

    move-object v8, v13

    move-object v9, v14

    move-object/from16 v13, v27

    move-object/from16 v10, v30

    move/from16 v14, v36

    move/from16 v15, v38

    move-object/from16 v12, v39

    goto/16 :goto_11

    :cond_1d
    move-object/from16 v39, v12

    move-object/from16 v27, v13

    move/from16 v36, v14

    move/from16 v38, v15

    .line 136
    :cond_1e
    iget-object v1, v11, Ltb/l;->D:Lmb/j;

    invoke-virtual {v1}, Lmb/j;->a()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v11, Ltb/l;->D:Lmb/j;

    .line 137
    iget-object v2, v1, Lmb/j;->c:Lmb/b;

    .line 138
    iget v3, v2, Lmb/b;->b:I

    move/from16 v4, v36

    if-lt v4, v3, :cond_22

    .line 139
    iget-object v1, v1, Lmb/j;->d:Lmb/b;

    .line 140
    iget v5, v1, Lmb/b;->b:I

    if-gt v4, v5, :cond_22

    if-ne v4, v3, :cond_1f

    .line 141
    iget v2, v2, Lmb/b;->c:I

    move v6, v2

    goto :goto_15

    :cond_1f
    const/4 v6, 0x0

    :goto_15
    if-ne v4, v5, :cond_20

    .line 142
    iget v1, v1, Lmb/b;->c:I

    move v7, v1

    goto :goto_16

    :cond_20
    move/from16 v7, v20

    .line 143
    :goto_16
    invoke-virtual {v11, v4}, Ltb/l;->u(I)Lmb/h;

    move-result-object v1

    .line 144
    iget v1, v1, Lmb/h;->c:I

    const/16 v2, 0x4f

    if-nez v1, :cond_21

    .line 145
    iget-object v1, v11, Ltb/l;->D:Lmb/j;

    .line 146
    iget-object v1, v1, Lmb/j;->d:Lmb/b;

    .line 147
    iget v1, v1, Lmb/b;->b:I

    if-eq v4, v1, :cond_21

    .line 148
    iget-object v1, v11, Ltb/l;->e:Landroid/graphics/RectF;

    invoke-virtual {v11, v0}, Ltb/l;->y(I)I

    move-result v3

    iget-object v4, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 149
    iget-object v1, v11, Ltb/l;->e:Landroid/graphics/RectF;

    invoke-virtual {v11, v0}, Ltb/l;->x(I)I

    move-result v3

    iget-object v4, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 150
    iget-object v1, v11, Ltb/l;->e:Landroid/graphics/RectF;

    move/from16 v13, v48

    iput v13, v1, Landroid/graphics/RectF;->left:F

    .line 151
    iget-object v3, v11, Ltb/l;->b:Leb/c;

    .line 152
    iget v3, v3, Leb/c;->a:F

    mul-float v3, v3, v31

    add-float/2addr v3, v13

    .line 153
    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 154
    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 155
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    move-result-object v3

    .line 156
    iget-object v3, v3, Lzb/a;->a:Landroid/util/SparseIntArray;

    const/4 v4, 0x6

    .line 157
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 158
    iget-object v4, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 159
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    move-result-object v4

    .line 160
    iget-object v4, v4, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 161
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    move-object/from16 v12, p1

    .line 162
    invoke-virtual {v11, v12, v1, v3, v2}, Ltb/l;->n(Landroid/graphics/Canvas;Landroid/graphics/RectF;II)V

    goto :goto_17

    :cond_21
    move-object/from16 v12, p1

    if-ge v6, v7, :cond_23

    move-object/from16 v1, v39

    .line 163
    iget v8, v1, Lwb/h;->d:I

    iget v9, v1, Lwb/h;->e:I

    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 164
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    move-result-object v1

    .line 165
    iget-object v1, v1, Lzb/a;->a:Landroid/util/SparseIntArray;

    const/4 v3, 0x6

    .line 166
    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    .line 167
    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 168
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    move-result-object v1

    .line 169
    iget-object v1, v1, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 170
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v0

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v13

    .line 171
    invoke-virtual/range {v1 .. v10}, Ltb/l;->o(Landroid/graphics/Canvas;ILeb/o;IIIIII)V

    goto :goto_17

    :cond_22
    move-object/from16 v12, p1

    .line 172
    :cond_23
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move/from16 v3, v38

    move/from16 v1, v45

    if-ne v0, v3, :cond_24

    if-eqz v1, :cond_24

    .line 173
    iget-object v2, v11, Ltb/l;->e:Landroid/graphics/RectF;

    iget-object v4, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 174
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    move-result v4

    mul-int v4, v4, v0

    .line 175
    iget-object v5, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 176
    iget-object v2, v11, Ltb/l;->e:Landroid/graphics/RectF;

    iget-object v4, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v4, v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->K(I)I

    move-result v4

    iget-object v5, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 177
    iget-object v2, v11, Ltb/l;->e:Landroid/graphics/RectF;

    move/from16 v4, v28

    const/4 v9, 0x0

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 178
    iget-object v2, v11, Ltb/l;->e:Landroid/graphics/RectF;

    iget-object v4, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 179
    iget-object v2, v11, Ltb/l;->b:Leb/c;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v2, v11, Ltb/l;->b:Leb/c;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    iget-object v2, v11, Ltb/l;->b:Leb/c;

    iget-object v4, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 182
    iget-object v2, v11, Ltb/l;->e:Landroid/graphics/RectF;

    iget-object v4, v11, Ltb/l;->b:Leb/c;

    invoke-virtual {v12, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 183
    iget-object v2, v11, Ltb/l;->b:Leb/c;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_18

    :cond_24
    const/4 v9, 0x0

    :goto_18
    add-int/lit8 v0, v0, 0x1

    move/from16 v13, p2

    move-object/from16 v15, p6

    move/from16 v24, v1

    move/from16 v28, v3

    move-object/from16 v9, v18

    move-object/from16 v8, v27

    move/from16 v4, v41

    move/from16 v14, v44

    move-object/from16 v29, v46

    move-object/from16 v30, v47

    move/from16 v10, v49

    const/4 v7, 0x1

    goto/16 :goto_a

    :cond_25
    move/from16 v49, v10

    move/from16 v44, v14

    move-object/from16 v46, v29

    move-object/from16 v47, v30

    const/4 v9, 0x0

    .line 184
    invoke-interface/range {v16 .. v16}, Lwb/j;->reset()V

    .line 185
    iget-object v0, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSnippetController()Lac/b;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    iget-object v0, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v10, v49

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 188
    :goto_19
    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLastVisibleRow()I

    move-result v3

    if-gt v10, v3, :cond_4b

    invoke-interface/range {v16 .. v16}, Lwb/j;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 189
    invoke-interface/range {v16 .. v16}, Lwb/j;->next()Lwb/h;

    move-result-object v13

    .line 190
    iget v14, v13, Lwb/h;->a:I

    .line 191
    invoke-virtual {v11, v14}, Ltb/l;->u(I)Lmb/h;

    move-result-object v3

    .line 192
    iget v8, v3, Lmb/h;->c:I

    move/from16 v15, v49

    move-object/from16 v5, p6

    if-ne v10, v15, :cond_27

    if-eqz v5, :cond_27

    .line 193
    iput v14, v5, Landroidx/leanback/widget/i;->b:I

    :cond_26
    move-object/from16 v9, p3

    goto :goto_1a

    .line 194
    :cond_27
    iget-boolean v3, v13, Lwb/h;->b:Z

    if-eqz v3, :cond_26

    .line 195
    invoke-static {v14, v10}, Lsb/h;->g(II)J

    move-result-wide v3

    move-object/from16 v9, p3

    invoke-virtual {v9, v3, v4}, Lsb/e;->a(J)V

    :goto_1a
    if-eq v2, v14, :cond_30

    .line 196
    iget-object v0, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderContext()Lyb/b;

    move-result-object v0

    .line 197
    iget-object v0, v0, Lyb/b;->a:Landroidx/room/s;

    .line 198
    invoke-virtual {v0, v14}, Landroidx/room/s;->C(I)Lyb/a;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 199
    iget-wide v2, v0, Lyb/a;->c:J

    .line 200
    iget-wide v4, v11, Ltb/l;->z:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_28

    .line 201
    iget-object v6, v0, Lyb/a;->b:Ld3/g;

    if-eqz v6, :cond_28

    .line 202
    iget v0, v6, Ld3/g;->b:I

    if-le v0, v8, :cond_28

    goto :goto_1b

    :cond_28
    const/4 v6, 0x0

    .line 203
    :goto_1b
    invoke-virtual {v11, v14}, Ltb/l;->u(I)Lmb/h;

    move-result-object v0

    iput-object v0, v11, Ltb/l;->E:Lmb/h;

    .line 204
    sget-object v0, Ljb/a;->b:Ljb/a;

    .line 205
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1c

    .line 206
    :catch_0
    sget-object v0, Ljb/a;->b:Ljb/a;

    .line 207
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    iget-object v2, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 209
    iget v3, v2, Lio/github/rosemoe/sora/widget/CodeEditor;->p:I

    and-int/lit16 v3, v3, -0xb9

    if-eqz v3, :cond_2f

    .line 210
    iget-object v1, v11, Ltb/l;->E:Lmb/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    iget v3, v1, Lmb/h;->c:I

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v3, :cond_2a

    .line 212
    invoke-virtual {v1, v7}, Lmb/h;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_29

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2a

    :cond_29
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_2a
    if-eq v7, v3, :cond_2d

    .line 213
    iget v2, v2, Lio/github/rosemoe/sora/widget/CodeEditor;->p:I

    const/16 v17, 0x6

    and-int/lit8 v2, v2, 0x6

    if-eqz v2, :cond_2c

    :goto_1e
    if-lez v3, :cond_2c

    add-int/lit8 v2, v3, -0x1

    .line 214
    invoke-virtual {v1, v2}, Lmb/h;->charAt(I)C

    move-result v2

    const/16 v5, 0x9

    if-eq v2, v5, :cond_2b

    const/16 v4, 0x20

    if-ne v2, v4, :cond_2e

    :cond_2b
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e

    :cond_2c
    const/16 v5, 0x9

    goto :goto_1f

    :cond_2d
    const/16 v5, 0x9

    const/16 v17, 0x6

    .line 215
    :cond_2e
    :goto_1f
    invoke-static {v7, v3}, Lsb/h;->g(II)J

    move-result-wide v1

    move-object/from16 p5, v6

    const/16 v3, 0x20

    shr-long v5, v1, v3

    long-to-int v3, v5

    and-long v1, v1, v33

    long-to-int v2, v1

    move-object/from16 v18, p5

    move-object v7, v0

    move/from16 v19, v2

    move v6, v3

    move/from16 v20, v14

    move/from16 v5, v44

    goto :goto_20

    :cond_2f
    move-object/from16 p5, v6

    const/16 v17, 0x6

    move-object/from16 v18, p5

    move/from16 v19, v1

    move v6, v7

    move/from16 v20, v14

    move/from16 v5, v44

    move-object v7, v0

    goto :goto_20

    :cond_30
    const/16 v17, 0x6

    move-object/from16 v18, v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v5, v44

    move/from16 v59, v7

    move-object v7, v6

    move/from16 v6, v59

    :goto_20
    neg-float v0, v5

    .line 216
    iget v1, v13, Lwb/h;->g:F

    add-float/2addr v0, v1

    sub-float v1, v5, v1

    .line 217
    iget-boolean v2, v13, Lwb/h;->b:Z

    if-nez v2, :cond_32

    .line 218
    iget-object v2, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getNonPrintablePaintingFlags()I

    move-result v2

    const/16 v4, 0x80

    and-int/2addr v2, v4

    if-eqz v2, :cond_31

    .line 219
    iget-object v2, v11, Ltb/l;->x:Landroid/graphics/drawable/Drawable;

    move/from16 v3, p2

    invoke-virtual {v11, v12, v3, v10, v2}, Ltb/l;->l(Landroid/graphics/Canvas;FILandroid/graphics/drawable/Drawable;)V

    add-float v0, v0, v21

    sub-float v1, v1, v21

    :goto_21
    move v2, v0

    goto :goto_22

    :cond_31
    move/from16 v3, p2

    goto :goto_21

    :cond_32
    move/from16 v3, p2

    const/16 v4, 0x80

    goto :goto_21

    .line 220
    :goto_22
    iget-object v0, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getNonPrintablePaintingFlags()I

    move-result v4

    .line 221
    iget-object v0, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    move/from16 v44, v5

    .line 222
    iget-boolean v5, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->G1:Z

    if-eqz v5, :cond_33

    .line 223
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    move-result-object v0

    iget-boolean v0, v0, Ltb/u;->k:Z

    if-nez v0, :cond_33

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 225
    iget-boolean v5, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    if-nez v5, :cond_33

    .line 226
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1d

    if-lt v5, v9, :cond_33

    iget v5, v13, Lwb/h;->e:I

    iget v9, v13, Lwb/h;->d:I

    sub-int/2addr v5, v9

    const/16 v9, 0x80

    if-le v5, v9, :cond_34

    .line 227
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_33
    move/from16 v27, v2

    move/from16 v23, v6

    move/from16 v24, v8

    move/from16 v22, v15

    const/4 v2, 0x0

    goto/16 :goto_2a

    .line 228
    :cond_34
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderContext()Lyb/b;

    move-result-object v0

    .line 229
    iget-object v0, v0, Lyb/b;->b:Ls4/a;

    .line 230
    iget-object v5, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 231
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    move-result v5

    mul-int v5, v5, v10

    .line 232
    iget-object v9, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    move-result v9

    sub-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 234
    iget-object v9, v0, Ls4/a;->b:Ljava/lang/Object;

    check-cast v9, Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->getStyles()Ljb/d;

    move/from16 v22, v15

    .line 235
    iget-object v15, v0, Ls4/a;->c:Ljava/lang/Object;

    check-cast v15, Ljava/util/ArrayList;

    move/from16 v23, v6

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v24, v8

    const/4 v8, 0x0

    :goto_23
    if-ge v8, v6, :cond_36

    move/from16 p5, v6

    .line 236
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move/from16 v27, v2

    const-string v2, "get(...)"

    invoke-static {v6, v2}, Lue/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lyb/c;

    .line 237
    iget v2, v6, Lyb/c;->a:I

    if-ne v2, v14, :cond_35

    const/4 v2, 0x0

    .line 238
    invoke-static {v15, v2, v8}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    const/4 v8, 0x1

    goto :goto_26

    :cond_35
    const/4 v2, 0x0

    add-int/lit8 v8, v8, 0x1

    move/from16 v6, p5

    move/from16 v2, v27

    goto :goto_23

    :cond_36
    move/from16 v27, v2

    const/4 v2, 0x0

    .line 239
    iget-object v0, v0, Ls4/a;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_37

    new-instance v0, Lyb/c;

    invoke-direct {v0, v14}, Lyb/c;-><init>(I)V

    :goto_24
    move-object v6, v0

    goto :goto_25

    :cond_37
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyb/c;

    goto :goto_24

    .line 240
    :goto_25
    iput v14, v6, Lyb/c;->a:I

    const/4 v8, 0x1

    .line 241
    iput-boolean v8, v6, Lyb/c;->c:Z

    .line 242
    invoke-virtual {v15, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 243
    :goto_26
    iget-boolean v0, v6, Lyb/c;->c:Z

    if-nez v0, :cond_38

    iget-object v0, v6, Lyb/c;->b:Landroid/graphics/RenderNode;

    invoke-static {v0}, Lwa/f;->k(Landroid/graphics/RenderNode;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 244
    :cond_38
    sget-object v0, Ljb/a;->b:Ljb/a;

    .line 245
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_27

    .line 246
    :catch_1
    sget-object v0, Ljb/a;->b:Ljb/a;

    .line 247
    :goto_27
    invoke-virtual {v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderer()Ltb/l;

    move-result-object v9

    .line 248
    iget-object v15, v6, Lyb/c;->b:Landroid/graphics/RenderNode;

    const/4 v8, 0x0

    .line 249
    invoke-virtual {v9, v8, v14, v0}, Ltb/l;->q(Landroid/graphics/Canvas;ILjb/a;)F

    move-result v28

    const/high16 v29, 0x3f000000    # 0.5f

    add-float v8, v28, v29

    float-to-int v8, v8

    .line 250
    iget-object v2, v9, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    move-result v2

    invoke-static {v15, v8, v2}, Lh4/e0;->m(Landroid/graphics/RenderNode;II)V

    .line 251
    invoke-static {v15}, Lh4/e0;->e(Landroid/graphics/RenderNode;)Landroid/graphics/RecordingCanvas;

    move-result-object v2

    .line 252
    :try_start_2
    invoke-virtual {v9, v2, v14, v0}, Ltb/l;->q(Landroid/graphics/Canvas;ILjb/a;)F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    invoke-static {v15}, Lh4/e0;->l(Landroid/graphics/RenderNode;)V

    .line 254
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_28
    const/4 v2, 0x0

    goto :goto_29

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 255
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_28

    .line 256
    :goto_29
    iput-boolean v2, v6, Lyb/c;->c:Z

    .line 257
    :cond_39
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 258
    invoke-virtual {v12, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 259
    iget-object v0, v6, Lyb/c;->b:Landroid/graphics/RenderNode;

    .line 260
    invoke-static {v12, v0}, Lwa/f;->h(Landroid/graphics/Canvas;Landroid/graphics/RenderNode;)V

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 262
    iget-object v0, v6, Lyb/c;->b:Landroid/graphics/RenderNode;

    .line 263
    invoke-static {v0}, Lwa/f;->b(Landroid/graphics/RenderNode;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    .line 264
    iget-boolean v5, v13, Lwb/h;->c:Z

    if-eqz v5, :cond_3a

    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_3a

    .line 265
    iget-object v5, v11, Ltb/l;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12, v0, v10, v5}, Ltb/l;->l(Landroid/graphics/Canvas;FILandroid/graphics/drawable/Drawable;)V

    :cond_3a
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x20

    goto/16 :goto_2d

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 266
    invoke-static {v15}, Lh4/e0;->l(Landroid/graphics/RenderNode;)V

    .line 267
    throw v1

    .line 268
    :cond_3b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only hardware-accelerated canvas can be used"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :goto_2a
    new-instance v0, Leb/o;

    invoke-direct {v0}, Leb/o;-><init>()V

    .line 270
    iget-object v5, v11, Ltb/l;->E:Lmb/h;

    iget v6, v13, Lwb/h;->d:I

    iget v8, v13, Lwb/h;->e:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    new-instance v9, Ljava/util/ArrayList;

    iget-object v15, v7, Ljb/a;->a:Ljava/util/ArrayList;

    invoke-direct {v9, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 272
    iget-object v15, v13, Lwb/h;->f:Ljava/util/List;

    invoke-virtual {v11, v14}, Ltb/l;->v(I)Lnb/b;

    move-result-object v54

    iget-object v2, v11, Ltb/l;->b:Leb/c;

    invoke-virtual/range {p0 .. p0}, Ltb/l;->e()Leb/p;

    move-result-object v57

    move-object/from16 v48, v0

    move-object/from16 v49, v5

    move/from16 v50, v6

    move/from16 v51, v8

    move-object/from16 v52, v9

    move-object/from16 v53, v15

    move-object/from16 v55, v2

    move-object/from16 v56, v18

    invoke-virtual/range {v48 .. v57}, Leb/o;->m(Lmb/h;IILjava/util/ArrayList;Ljava/util/List;Lnb/b;Leb/c;Ld3/g;Leb/p;)V

    .line 273
    iget-object v2, v11, Ltb/l;->E:Lmb/h;

    invoke-virtual {v11, v0, v14, v2}, Ltb/l;->b(Leb/o;ILmb/h;)V

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    neg-float v2, v1

    .line 275
    iget-object v5, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 276
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    move-result v5

    mul-int v5, v5, v10

    .line 277
    iget-object v6, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v12, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 278
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 279
    iget-object v2, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v5

    .line 280
    invoke-virtual {v0, v12, v5, v2}, Leb/o;->d(Landroid/graphics/Canvas;FF)J

    move-result-wide v5

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/16 v9, 0x20

    shr-long v2, v5, v9

    long-to-int v0, v2

    const/4 v8, 0x1

    if-ne v0, v8, :cond_3c

    const/4 v0, 0x1

    goto :goto_2b

    :cond_3c
    const/4 v0, 0x0

    :goto_2b
    and-long v2, v5, v33

    long-to-int v3, v2

    .line 282
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-float v2, v2, v27

    if-eqz v0, :cond_3d

    .line 283
    iget-boolean v0, v13, Lwb/h;->c:Z

    if-eqz v0, :cond_3d

    and-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_3d

    .line 284
    iget-object v0, v11, Ltb/l;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12, v2, v10, v0}, Ltb/l;->l(Landroid/graphics/Canvas;FILandroid/graphics/drawable/Drawable;)V

    goto :goto_2c

    .line 285
    :cond_3d
    iget-boolean v0, v13, Lwb/h;->c:Z

    if-nez v0, :cond_3e

    iget-object v0, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 286
    iget-boolean v0, v0, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    if-eqz v0, :cond_3e

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_3e

    .line 287
    iget-object v0, v11, Ltb/l;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12, v2, v10, v0}, Ltb/l;->l(Landroid/graphics/Canvas;FILandroid/graphics/drawable/Drawable;)V

    :cond_3e
    :goto_2c
    const/4 v2, 0x0

    :goto_2d
    cmpl-float v0, v26, v2

    if-eqz v0, :cond_41

    move/from16 v6, v23

    move/from16 v15, v24

    if-ne v6, v15, :cond_40

    and-int/lit8 v0, v4, 0x8

    if-eqz v0, :cond_3f

    goto :goto_2e

    :cond_3f
    move/from16 v35, v6

    move-object/from16 p5, v7

    move/from16 v24, v10

    move/from16 v58, v27

    move/from16 v30, v44

    move-object/from16 v7, v47

    const/16 v28, 0x80

    const/16 v29, 0x9

    const/16 v36, 0x1f

    move-object/from16 v27, v13

    goto/16 :goto_30

    .line 288
    :cond_40
    :goto_2e
    new-instance v0, Leb/o;

    invoke-direct {v0}, Leb/o;-><init>()V

    .line 289
    iget-object v2, v11, Ltb/l;->E:Lmb/h;

    iget v3, v13, Lwb/h;->d:I

    iget v5, v13, Lwb/h;->e:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v7, Ljb/a;->a:Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 291
    iget-object v9, v13, Lwb/h;->f:Ljava/util/List;

    invoke-virtual {v11, v14}, Ltb/l;->v(I)Lnb/b;

    move-result-object v54

    move-object/from16 p5, v7

    iget-object v7, v11, Ltb/l;->b:Leb/c;

    invoke-virtual/range {p0 .. p0}, Ltb/l;->e()Leb/p;

    move-result-object v57

    move-object/from16 v48, v0

    move-object/from16 v49, v2

    move/from16 v50, v3

    move/from16 v51, v5

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    move-object/from16 v55, v7

    move-object/from16 v56, v18

    invoke-virtual/range {v48 .. v57}, Leb/o;->m(Lmb/h;IILjava/util/ArrayList;Ljava/util/List;Lnb/b;Leb/c;Ld3/g;Leb/p;)V

    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 293
    iget-object v2, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v2, v10}, Lio/github/rosemoe/sora/widget/CodeEditor;->L(I)I

    move-result v2

    iget-object v3, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move/from16 v3, v27

    invoke-virtual {v12, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 294
    iget-object v2, v11, Ltb/l;->a:Leb/b;

    iget-object v5, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v5, v10}, Lio/github/rosemoe/sora/widget/CodeEditor;->L(I)I

    move-result v5

    iget-object v7, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    .line 295
    iput v3, v2, Leb/b;->c:F

    .line 296
    iput v5, v2, Leb/b;->d:F

    const/4 v2, 0x0

    .line 297
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 298
    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v8, v9, v1

    .line 299
    iget-object v1, v11, Ltb/l;->c:Leb/c;

    iget-object v2, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    move-result-object v2

    .line 300
    iget-object v2, v2, Lzb/a;->a:Landroid/util/SparseIntArray;

    const/16 v7, 0x1f

    .line 301
    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 302
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    iget v5, v13, Lwb/h;->d:I

    iget v2, v13, Lwb/h;->e:I

    new-instance v1, Ltb/h;

    move-object/from16 v23, v1

    move/from16 v58, v3

    move/from16 v24, v10

    const/4 v3, 0x0

    move v10, v2

    move-object/from16 v2, p0

    move-object/from16 v27, v13

    const/4 v13, 0x0

    move v3, v4

    const/16 v28, 0x80

    move-object v4, v0

    move v13, v5

    move/from16 v30, v44

    const/16 v29, 0x9

    move v5, v6

    move/from16 v35, v6

    move/from16 v6, v19

    const/16 v36, 0x1f

    move v7, v15

    move v15, v8

    move v8, v14

    invoke-direct/range {v1 .. v8}, Ltb/h;-><init>(Ltb/l;ILeb/o;IIII)V

    .line 304
    new-instance v1, Leb/i;

    invoke-direct {v1}, Leb/i;-><init>()V

    .line 305
    iput v13, v1, Leb/i;->j:I

    .line 306
    iput v10, v1, Leb/i;->k:I

    .line 307
    iput v9, v1, Leb/i;->b:F

    .line 308
    iput v15, v1, Leb/i;->c:F

    const/4 v2, 0x0

    .line 309
    iput-boolean v2, v1, Leb/i;->m:Z

    move-object/from16 v2, v23

    .line 310
    iput-object v2, v1, Leb/i;->n:Ltb/h;

    .line 311
    new-instance v2, Leb/k;

    .line 312
    invoke-direct {v2, v0, v1}, Leb/k;-><init>(Leb/o;Leb/i;)V

    .line 313
    iput-object v12, v2, Leb/k;->c:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    .line 314
    invoke-virtual {v0, v2, v1}, Leb/o;->k(Leb/m;Z)V

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 316
    iget-object v0, v11, Ltb/l;->a:Leb/b;

    const/4 v1, 0x0

    .line 317
    iput v1, v0, Leb/b;->c:F

    .line 318
    iput v1, v0, Leb/b;->d:F

    :goto_2f
    move-object/from16 v7, v47

    goto :goto_30

    :cond_41
    move-object/from16 p5, v7

    move/from16 v24, v10

    move/from16 v35, v23

    move/from16 v58, v27

    move/from16 v30, v44

    const/16 v28, 0x80

    const/16 v29, 0x9

    const/16 v36, 0x1f

    move-object/from16 v27, v13

    goto :goto_2f

    :goto_30
    if-eqz v7, :cond_43

    .line 319
    iget v0, v7, Lmb/b;->b:I

    if-ne v14, v0, :cond_43

    .line 320
    iget v0, v7, Lmb/b;->c:I

    add-int v1, v0, v25

    move-object/from16 v8, v27

    .line 321
    iget v2, v8, Lwb/h;->d:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, v8, Lwb/h;->e:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 322
    iget v2, v8, Lwb/h;->d:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v8, Lwb/h;->e:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 323
    new-instance v2, Leb/o;

    invoke-direct {v2}, Leb/o;-><init>()V

    .line 324
    iget-object v3, v11, Ltb/l;->E:Lmb/h;

    iget v4, v8, Lwb/h;->d:I

    iget v5, v8, Lwb/h;->e:I

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v9, p5

    iget-object v10, v9, Ljb/a;->a:Ljava/util/ArrayList;

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 326
    iget-object v10, v8, Lwb/h;->f:Ljava/util/List;

    iget-object v13, v11, Ltb/l;->F:Lmb/g;

    invoke-virtual {v13, v14}, Lmb/g;->p(I)Lnb/b;

    move-result-object v54

    iget-object v13, v11, Ltb/l;->b:Leb/c;

    invoke-virtual/range {p0 .. p0}, Ltb/l;->e()Leb/p;

    move-result-object v57

    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move/from16 v50, v4

    move/from16 v51, v5

    move-object/from16 v52, v6

    move-object/from16 v53, v10

    move-object/from16 v55, v13

    move-object/from16 v56, v18

    invoke-virtual/range {v48 .. v57}, Leb/o;->m(Lmb/h;IILjava/util/ArrayList;Ljava/util/List;Lnb/b;Leb/c;Ld3/g;Leb/p;)V

    .line 327
    iget-object v3, v11, Ltb/l;->e:Landroid/graphics/RectF;

    iget-object v4, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    move/from16 v10, v24

    invoke-virtual {v4, v10}, Lio/github/rosemoe/sora/widget/CodeEditor;->K(I)I

    move-result v4

    iget-object v5, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 328
    iget-object v3, v11, Ltb/l;->e:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->top:F

    iget-object v5, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3d75c28f    # 0.06f

    mul-float v5, v5, v6

    add-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 329
    new-instance v3, Ltb/i;

    move/from16 v4, v58

    invoke-direct {v3, v11, v4, v12}, Ltb/i;-><init>(Ltb/l;FLandroid/graphics/Canvas;)V

    invoke-virtual {v2, v0, v1, v3}, Leb/o;->j(IILeb/g;)V

    goto :goto_31

    :cond_42
    move-object/from16 v9, p5

    move/from16 v10, v24

    goto :goto_31

    :cond_43
    move-object/from16 v9, p5

    move/from16 v10, v24

    move-object/from16 v8, v27

    .line 330
    :goto_31
    iget-object v0, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLayout()Lwb/d;

    move-result-object v0

    .line 331
    iget-object v1, v11, Ltb/l;->D:Lmb/j;

    invoke-virtual {v1}, Lmb/j;->a()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 332
    iget-object v1, v11, Ltb/l;->D:Lmb/j;

    .line 333
    iget-object v1, v1, Lmb/j;->c:Lmb/b;

    .line 334
    iget v2, v1, Lmb/b;->b:I

    if-ne v2, v14, :cond_45

    .line 335
    iget v1, v1, Lmb/b;->c:I

    .line 336
    iget v2, v8, Lwb/h;->d:I

    iget v3, v8, Lwb/h;->e:I

    iget-boolean v4, v8, Lwb/h;->c:Z

    invoke-static {v1, v2, v3, v4}, Ltb/l;->A(IIIZ)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 337
    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    move-result v1

    iget-object v2, v11, Ltb/l;->D:Lmb/j;

    .line 338
    iget-object v2, v2, Lmb/j;->c:Lmb/b;

    .line 339
    iget v3, v2, Lmb/b;->b:I

    .line 340
    iget v2, v2, Lmb/b;->c:I

    .line 341
    move-object v4, v0

    check-cast v4, Lwb/c;

    invoke-virtual {v4, v3, v2}, Lwb/c;->s(II)[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    add-float/2addr v1, v2

    iget-object v2, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v1, v2

    .line 342
    iget-object v1, v11, Ltb/l;->F:Lmb/g;

    iget-object v2, v11, Ltb/l;->D:Lmb/j;

    .line 343
    iget-object v2, v2, Lmb/j;->c:Lmb/b;

    .line 344
    iget v4, v2, Lmb/b;->b:I

    .line 345
    iget v2, v2, Lmb/b;->c:I

    .line 346
    invoke-virtual {v1, v4, v2}, Lmb/g;->t(II)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v5, 0x2

    goto :goto_32

    :cond_44
    const/4 v5, 0x1

    .line 347
    :goto_32
    new-instance v13, Ltb/k;

    invoke-virtual {v11, v10}, Ltb/l;->x(I)I

    move-result v1

    iget-object v2, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v4, v1

    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLeftHandleDescriptor()Lcc/d;

    move-result-object v6

    move-object v1, v13

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Ltb/k;-><init>(Ltb/l;FFILcc/d;)V

    move-object/from16 v15, p4

    .line 348
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v1, v11, Ltb/l;->D:Lmb/j;

    .line 350
    iget-object v1, v1, Lmb/j;->c:Lmb/b;

    .line 351
    iget v2, v1, Lmb/b;->b:I

    .line 352
    iget v1, v1, Lmb/b;->c:I

    .line 353
    invoke-virtual {v11, v13, v2, v1}, Ltb/l;->a(Ltb/k;II)V

    goto :goto_33

    :cond_45
    move-object/from16 v15, p4

    .line 354
    :goto_33
    iget-object v1, v11, Ltb/l;->D:Lmb/j;

    .line 355
    iget-object v1, v1, Lmb/j;->d:Lmb/b;

    .line 356
    iget v2, v1, Lmb/b;->b:I

    if-ne v2, v14, :cond_47

    .line 357
    iget v1, v1, Lmb/b;->c:I

    .line 358
    iget v2, v8, Lwb/h;->d:I

    iget v3, v8, Lwb/h;->e:I

    iget-boolean v4, v8, Lwb/h;->c:Z

    invoke-static {v1, v2, v3, v4}, Ltb/l;->A(IIIZ)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 359
    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    move-result v1

    iget-object v2, v11, Ltb/l;->D:Lmb/j;

    .line 360
    iget-object v2, v2, Lmb/j;->d:Lmb/b;

    .line 361
    iget v3, v2, Lmb/b;->b:I

    .line 362
    iget v2, v2, Lmb/b;->c:I

    .line 363
    move-object v4, v0

    check-cast v4, Lwb/c;

    invoke-virtual {v4, v3, v2}, Lwb/c;->s(II)[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    add-float/2addr v1, v2

    iget-object v2, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v1, v2

    .line 364
    iget-object v1, v11, Ltb/l;->F:Lmb/g;

    iget-object v2, v11, Ltb/l;->D:Lmb/j;

    .line 365
    iget-object v2, v2, Lmb/j;->d:Lmb/b;

    .line 366
    iget v4, v2, Lmb/b;->b:I

    .line 367
    iget v2, v2, Lmb/b;->c:I

    .line 368
    invoke-virtual {v1, v4, v2}, Lmb/g;->t(II)Z

    move-result v1

    if-eqz v1, :cond_46

    const/4 v5, 0x1

    goto :goto_34

    :cond_46
    const/4 v5, 0x2

    .line 369
    :goto_34
    new-instance v13, Ltb/k;

    invoke-virtual {v11, v10}, Ltb/l;->x(I)I

    move-result v1

    iget-object v2, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v4, v1

    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRightHandleDescriptor()Lcc/d;

    move-result-object v6

    move-object v1, v13

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Ltb/k;-><init>(Ltb/l;FFILcc/d;)V

    .line 370
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v1, v11, Ltb/l;->D:Lmb/j;

    .line 372
    iget-object v1, v1, Lmb/j;->d:Lmb/b;

    .line 373
    iget v2, v1, Lmb/b;->b:I

    .line 374
    iget v1, v1, Lmb/b;->c:I

    .line 375
    invoke-virtual {v11, v13, v2, v1}, Ltb/l;->a(Ltb/k;II)V

    :cond_47
    :goto_35
    move-object/from16 v13, v46

    goto :goto_36

    :cond_48
    move-object/from16 v15, p4

    .line 376
    iget-object v1, v11, Ltb/l;->D:Lmb/j;

    .line 377
    iget-object v1, v1, Lmb/j;->c:Lmb/b;

    .line 378
    iget v2, v1, Lmb/b;->b:I

    if-ne v2, v14, :cond_47

    .line 379
    iget v1, v1, Lmb/b;->c:I

    .line 380
    iget v2, v8, Lwb/h;->d:I

    iget v3, v8, Lwb/h;->e:I

    iget-boolean v4, v8, Lwb/h;->c:Z

    invoke-static {v1, v2, v3, v4}, Ltb/l;->A(IIIZ)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 381
    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    move-result v1

    iget-object v2, v11, Ltb/l;->D:Lmb/j;

    .line 382
    iget-object v2, v2, Lmb/j;->c:Lmb/b;

    .line 383
    iget v3, v2, Lmb/b;->b:I

    .line 384
    iget v2, v2, Lmb/b;->c:I

    .line 385
    move-object v4, v0

    check-cast v4, Lwb/c;

    invoke-virtual {v4, v3, v2}, Lwb/c;->s(II)[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    add-float/2addr v1, v2

    iget-object v2, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, v1, v2

    .line 386
    new-instance v13, Ltb/k;

    invoke-virtual {v11, v10}, Ltb/l;->x(I)I

    move-result v1

    iget-object v2, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v4, v1

    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getInsertHandleDescriptor()Lcc/d;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, v13

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Ltb/k;-><init>(Ltb/l;FFILcc/d;)V

    .line 387
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v1, v11, Ltb/l;->D:Lmb/j;

    .line 389
    iget-object v1, v1, Lmb/j;->c:Lmb/b;

    .line 390
    iget v2, v1, Lmb/b;->b:I

    .line 391
    iget v1, v1, Lmb/b;->c:I

    .line 392
    invoke-virtual {v11, v13, v2, v1}, Ltb/l;->a(Ltb/k;II)V

    goto :goto_35

    :goto_36
    if-eqz v13, :cond_49

    .line 393
    iget v1, v13, Lmb/b;->b:I

    if-ne v1, v14, :cond_4a

    iget v1, v13, Lmb/b;->c:I

    iget v2, v8, Lwb/h;->d:I

    iget v3, v8, Lwb/h;->e:I

    iget-boolean v4, v8, Lwb/h;->c:Z

    invoke-static {v1, v2, v3, v4}, Ltb/l;->A(IIIZ)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 394
    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    move-result v1

    iget v2, v13, Lmb/b;->b:I

    iget v3, v13, Lmb/b;->c:I

    check-cast v0, Lwb/c;

    invoke-virtual {v0, v2, v3}, Lwb/c;->s(II)[F

    move-result-object v0

    const/4 v2, 0x1

    aget v0, v0, v2

    add-float/2addr v1, v0

    iget-object v0, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v1, v0

    .line 395
    new-instance v0, Ltb/k;

    invoke-virtual {v11, v10}, Ltb/l;->x(I)I

    move-result v1

    iget-object v2, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v4, v1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Ltb/k;-><init>(Ltb/l;FFILcc/d;)V

    .line 396
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget v1, v13, Lmb/b;->b:I

    iget v2, v13, Lmb/b;->c:I

    invoke-virtual {v11, v0, v1, v2}, Ltb/l;->a(Ltb/k;II)V

    goto :goto_37

    .line 398
    :cond_49
    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->P()Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 399
    iget-object v1, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->g1:Lmb/j;

    .line 400
    invoke-virtual {v1}, Lmb/j;->a()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 401
    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getSelectingTarget()Lmb/b;

    move-result-object v6

    if-eqz v6, :cond_4a

    .line 402
    iget v1, v6, Lmb/b;->b:I

    if-ne v1, v14, :cond_4a

    iget v1, v6, Lmb/b;->c:I

    iget v2, v8, Lwb/h;->d:I

    iget v3, v8, Lwb/h;->e:I

    iget-boolean v4, v8, Lwb/h;->c:Z

    invoke-static {v1, v2, v3, v4}, Ltb/l;->A(IIIZ)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 403
    iget-object v1, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    move-result v1

    iget v2, v6, Lmb/b;->b:I

    iget v3, v6, Lmb/b;->c:I

    check-cast v0, Lwb/c;

    invoke-virtual {v0, v2, v3}, Lwb/c;->s(II)[F

    move-result-object v0

    const/4 v8, 0x1

    aget v0, v0, v8

    add-float/2addr v1, v0

    iget-object v0, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v1, v0

    .line 404
    new-instance v0, Ltb/k;

    invoke-virtual {v11, v10}, Ltb/l;->x(I)I

    move-result v1

    iget-object v2, v11, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v4, v1

    const/4 v5, -0x1

    const/4 v14, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v8, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Ltb/k;-><init>(Ltb/l;FFILcc/d;)V

    .line 405
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget v1, v8, Lmb/b;->b:I

    iget v2, v8, Lmb/b;->c:I

    invoke-virtual {v11, v0, v1, v2}, Ltb/l;->a(Ltb/k;II)V

    :cond_4a
    :goto_37
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v47, v7

    move-object v6, v9

    move-object/from16 v46, v13

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v49, v22

    move/from16 v44, v30

    move/from16 v7, v35

    const/4 v9, 0x0

    goto/16 :goto_19

    .line 407
    :cond_4b
    iget-object v0, v11, Ltb/l;->b:Leb/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 408
    iget-object v0, v11, Ltb/l;->b:Leb/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 409
    iget-object v0, v11, Ltb/l;->c:Leb/c;

    mul-float v1, v26, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 410
    iget-object v0, v11, Ltb/l;->a:Leb/b;

    iget-object v1, v11, Ltb/l;->c:Leb/c;

    .line 411
    iget v2, v0, Leb/b;->a:I

    if-nez v2, :cond_4c

    goto :goto_38

    .line 412
    :cond_4c
    iget-object v3, v0, Leb/b;->b:[F

    mul-int/lit8 v2, v2, 0x2

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4, v2, v1}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 413
    iput v4, v0, Leb/b;->a:I

    :goto_38
    return-void
.end method

.method public final q(Landroid/graphics/Canvas;ILjb/a;)F
    .locals 11

    .line 1
    invoke-virtual {p0, p2}, Ltb/l;->u(I)Lmb/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Ltb/l;->E:Lmb/h;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Ltb/l;->u(I)Lmb/h;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v4, v0, Lmb/h;->c:I

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p3, Ljb/a;->b:Ljb/a;

    .line 17
    .line 18
    :goto_0
    new-instance v0, Leb/o;

    .line 19
    .line 20
    invoke-direct {v0}, Leb/o;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 24
    .line 25
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getInlayHints()Lkb/a;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    iget-object v1, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 33
    .line 34
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRenderContext()Lyb/b;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v1, v1, Lyb/b;->a:Landroidx/room/s;

    .line 39
    .line 40
    invoke-virtual {v1, p2}, Landroidx/room/s;->C(I)Lyb/a;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-wide v7, v1, Lyb/a;->c:J

    .line 48
    .line 49
    iget-wide v9, p0, Ltb/l;->z:J

    .line 50
    .line 51
    cmp-long v3, v7, v9

    .line 52
    .line 53
    if-ltz v3, :cond_1

    .line 54
    .line 55
    iget-object v1, v1, Lyb/a;->b:Ld3/g;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object v1, v2

    .line 59
    :goto_1
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget v3, v1, Ld3/g;->b:I

    .line 62
    .line 63
    iget-object v5, p0, Ltb/l;->E:Lmb/h;

    .line 64
    .line 65
    iget v5, v5, Lmb/h;->c:I

    .line 66
    .line 67
    if-le v3, v5, :cond_2

    .line 68
    .line 69
    move-object v9, v1

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    move-object v9, v2

    .line 72
    :goto_2
    iget-object v2, p0, Ltb/l;->E:Lmb/h;

    .line 73
    .line 74
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    new-instance v5, Ljava/util/ArrayList;

    .line 78
    .line 79
    iget-object p3, p3, Ljb/a;->a:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p2}, Ltb/l;->v(I)Lnb/b;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    iget-object v8, p0, Ltb/l;->b:Leb/c;

    .line 89
    .line 90
    invoke-virtual {p0}, Ltb/l;->e()Leb/p;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    const/4 v3, 0x0

    .line 95
    move-object v1, v0

    .line 96
    invoke-virtual/range {v1 .. v10}, Leb/o;->m(Lmb/h;IILjava/util/ArrayList;Ljava/util/List;Lnb/b;Leb/c;Ld3/g;Leb/p;)V

    .line 97
    .line 98
    .line 99
    iget-object p3, p0, Ltb/l;->E:Lmb/h;

    .line 100
    .line 101
    invoke-virtual {p0, v0, p2, p3}, Ltb/l;->b(Leb/o;ILmb/h;)V

    .line 102
    .line 103
    .line 104
    const/4 p2, 0x0

    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 108
    .line 109
    .line 110
    iget-object p3, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 111
    .line 112
    invoke-virtual {p3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 113
    .line 114
    .line 115
    const/4 p3, 0x0

    .line 116
    int-to-float p3, p3

    .line 117
    add-float/2addr p3, p2

    .line 118
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 119
    .line 120
    .line 121
    const p3, 0x7f7fffff    # Float.MAX_VALUE

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1, p2, p3}, Leb/o;->d(Landroid/graphics/Canvas;FF)J

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 128
    .line 129
    .line 130
    :cond_3
    if-nez p1, :cond_4

    .line 131
    .line 132
    new-instance p1, Leb/i;

    .line 133
    .line 134
    invoke-direct {p1}, Leb/i;-><init>()V

    .line 135
    .line 136
    .line 137
    new-instance p2, Leb/k;

    .line 138
    .line 139
    invoke-direct {p2, v0, p1}, Leb/k;-><init>(Leb/o;Leb/i;)V

    .line 140
    .line 141
    .line 142
    const/4 p1, 0x1

    .line 143
    invoke-virtual {v0, p2, p1}, Leb/o;->k(Leb/m;Z)V

    .line 144
    .line 145
    .line 146
    iget p2, p2, Leb/k;->a:F

    .line 147
    .line 148
    :cond_4
    return p2
.end method

.method public final r(Landroid/graphics/Canvas;)V
    .locals 37

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v9, 0x2

    .line 6
    const/16 v1, 0x15

    .line 7
    .line 8
    const/4 v10, 0x0

    .line 9
    const/4 v11, 0x1

    .line 10
    iget-object v2, v8, Ltb/l;->D:Lmb/j;

    .line 11
    .line 12
    iget-object v3, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 13
    .line 14
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getFirstVisibleLine()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    iget-object v2, v2, Lmb/j;->b:Lmb/a;

    .line 19
    .line 20
    invoke-virtual {v2, v3, v10}, Lmb/a;->A(II)Lmb/b;

    .line 21
    .line 22
    .line 23
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 24
    .line 25
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 26
    .line 27
    .line 28
    move-result-object v12

    .line 29
    iget-object v2, v12, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 30
    .line 31
    const/4 v13, 0x4

    .line 32
    invoke-virtual {v2, v13}, Landroid/util/SparseIntArray;->get(I)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object v3, v8, Ltb/l;->d:Landroid/graphics/Rect;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget-object v4, v8, Ltb/l;->b:Leb/c;

    .line 41
    .line 42
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 49
    .line 50
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->R()F

    .line 51
    .line 52
    .line 53
    move-result v14

    .line 54
    invoke-virtual/range {p0 .. p0}, Ltb/l;->z()V

    .line 55
    .line 56
    .line 57
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 58
    .line 59
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    neg-int v2, v2

    .line 64
    int-to-float v2, v2

    .line 65
    iget-object v3, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 66
    .line 67
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->S()F

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    add-float v15, v3, v2

    .line 72
    .line 73
    const/4 v7, 0x0

    .line 74
    add-float v16, v14, v7

    .line 75
    .line 76
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 77
    .line 78
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerWidth()F

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    add-float v2, v2, v16

    .line 83
    .line 84
    iget-object v3, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 85
    .line 86
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginLeft()F

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    add-float/2addr v3, v2

    .line 91
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 92
    .line 93
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginRight()F

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    add-float/2addr v2, v3

    .line 98
    float-to-int v2, v2

    .line 99
    iget-object v3, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 100
    .line 101
    iget-boolean v4, v3, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 102
    .line 103
    if-eqz v4, :cond_3

    .line 104
    .line 105
    iget v4, v8, Ltb/l;->C:I

    .line 106
    .line 107
    if-nez v4, :cond_1

    .line 108
    .line 109
    iput v2, v8, Ltb/l;->C:I

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    if-eq v4, v2, :cond_2

    .line 113
    .line 114
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    iget-boolean v3, v3, Ltb/u;->k:Z

    .line 119
    .line 120
    if-nez v3, :cond_2

    .line 121
    .line 122
    iput v2, v8, Ltb/l;->C:I

    .line 123
    .line 124
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 125
    .line 126
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    new-instance v3, Lha/db;

    .line 130
    .line 131
    invoke-direct {v3, v1, v2}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->Z(Ljava/lang/Runnable;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 138
    .line 139
    invoke-virtual {v1, v10}, Lio/github/rosemoe/sora/widget/CodeEditor;->x(Z)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_2
    iget-boolean v2, v8, Ltb/l;->H:Z

    .line 144
    .line 145
    if-eqz v2, :cond_4

    .line 146
    .line 147
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 148
    .line 149
    invoke-virtual {v2, v11}, Lio/github/rosemoe/sora/widget/CodeEditor;->x(Z)V

    .line 150
    .line 151
    .line 152
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 153
    .line 154
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    new-instance v3, Lha/db;

    .line 158
    .line 159
    invoke-direct {v3, v1, v2}, Lha/db;-><init>(ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->Z(Ljava/lang/Runnable;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_3
    iput v10, v8, Ltb/l;->C:I

    .line 167
    .line 168
    iget-boolean v1, v8, Ltb/l;->H:Z

    .line 169
    .line 170
    if-eqz v1, :cond_4

    .line 171
    .line 172
    invoke-virtual {v3, v11}, Lio/github/rosemoe/sora/widget/CodeEditor;->x(Z)V

    .line 173
    .line 174
    .line 175
    :cond_4
    :goto_0
    iput-boolean v10, v8, Ltb/l;->H:Z

    .line 176
    .line 177
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 178
    .line 179
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getFirstVisibleLine()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 184
    .line 185
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLastVisibleLine()I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    iget-object v3, v8, Ltb/l;->n:Landroid/util/SparseArray;

    .line 190
    .line 191
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 192
    .line 193
    .line 194
    iget-object v3, v8, Ltb/l;->o:Landroid/util/SparseArray;

    .line 195
    .line 196
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 197
    .line 198
    .line 199
    iget-object v3, v8, Ltb/l;->F:Lmb/g;

    .line 200
    .line 201
    add-int/lit8 v1, v1, -0x5

    .line 202
    .line 203
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    iget-object v4, v8, Ltb/l;->F:Lmb/g;

    .line 208
    .line 209
    iget-object v4, v4, Lmb/g;->a:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    sub-int/2addr v4, v11

    .line 216
    add-int/lit8 v2, v2, 0x5

    .line 217
    .line 218
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-virtual {v3, v10}, Lmb/g;->u(Z)V

    .line 223
    .line 224
    .line 225
    :goto_1
    if-gt v1, v2, :cond_5

    .line 226
    .line 227
    :try_start_0
    iget-object v4, v3, Lmb/g;->a:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    check-cast v4, Lmb/h;

    .line 234
    .line 235
    iget-object v5, v3, Lmb/g;->h:Lnb/a;

    .line 236
    .line 237
    invoke-virtual {v5, v1, v4}, Lnb/a;->s(ILmb/h;)Lnb/b;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    iget-object v6, v8, Ltb/l;->n:Landroid/util/SparseArray;

    .line 242
    .line 243
    invoke-virtual {v6, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    iget-object v4, v8, Ltb/l;->o:Landroid/util/SparseArray;

    .line 247
    .line 248
    invoke-virtual {v4, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .line 250
    .line 251
    add-int/2addr v1, v11

    .line 252
    goto :goto_1

    .line 253
    :catchall_0
    move-exception v0

    .line 254
    invoke-virtual {v3, v10}, Lmb/g;->E(Z)V

    .line 255
    .line 256
    .line 257
    throw v0

    .line 258
    :cond_5
    invoke-virtual {v3, v10}, Lmb/g;->E(Z)V

    .line 259
    .line 260
    .line 261
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 262
    .line 263
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getFirstVisibleLine()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 268
    .line 269
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLastVisibleLine()I

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    iget-wide v4, v8, Ltb/l;->z:J

    .line 274
    .line 275
    const/4 v6, 0x1

    .line 276
    move-object/from16 v1, p0

    .line 277
    .line 278
    invoke-virtual/range {v1 .. v6}, Ltb/l;->c(IIJZ)V

    .line 279
    .line 280
    .line 281
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 282
    .line 283
    iget-boolean v2, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 284
    .line 285
    if-nez v2, :cond_6

    .line 286
    .line 287
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    :cond_6
    iget-object v1, v8, Ltb/l;->D:Lmb/j;

    .line 295
    .line 296
    invoke-virtual {v1}, Lmb/j;->a()Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_7

    .line 301
    .line 302
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 303
    .line 304
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getInsertHandleDescriptor()Lcc/d;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    iget-object v2, v1, Lcc/d;->a:Landroid/graphics/RectF;

    .line 309
    .line 310
    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 311
    .line 312
    .line 313
    iput v10, v1, Lcc/d;->b:I

    .line 314
    .line 315
    goto :goto_2

    .line 316
    :cond_7
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 317
    .line 318
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLeftHandleDescriptor()Lcc/d;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    iget-object v2, v1, Lcc/d;->a:Landroid/graphics/RectF;

    .line 323
    .line 324
    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 325
    .line 326
    .line 327
    iput v10, v1, Lcc/d;->b:I

    .line 328
    .line 329
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 330
    .line 331
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRightHandleDescriptor()Lcc/d;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    iget-object v2, v1, Lcc/d;->a:Landroid/graphics/RectF;

    .line 336
    .line 337
    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 338
    .line 339
    .line 340
    iput v10, v1, Lcc/d;->b:I

    .line 341
    .line 342
    :goto_2
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 343
    .line 344
    iget-boolean v2, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->V:Z

    .line 345
    .line 346
    if-eqz v2, :cond_9

    .line 347
    .line 348
    iget-boolean v2, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 349
    .line 350
    if-nez v2, :cond_8

    .line 351
    .line 352
    iget-boolean v1, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->R0:Z

    .line 353
    .line 354
    if-nez v1, :cond_9

    .line 355
    .line 356
    :cond_8
    const/16 v17, 0x1

    .line 357
    .line 358
    goto :goto_3

    .line 359
    :cond_9
    const/16 v17, 0x0

    .line 360
    .line 361
    :goto_3
    iget-object v6, v8, Ltb/l;->j:Lsb/e;

    .line 362
    .line 363
    iput v10, v6, Lsb/e;->b:I

    .line 364
    .line 365
    iget-object v5, v8, Ltb/l;->k:La0/n;

    .line 366
    .line 367
    iput v10, v5, La0/n;->b:I

    .line 368
    .line 369
    new-instance v4, Ljava/util/ArrayList;

    .line 370
    .line 371
    const/4 v3, 0x3

    .line 372
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 373
    .line 374
    .line 375
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 376
    .line 377
    iget-boolean v2, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->T0:Z

    .line 378
    .line 379
    const/4 v13, -0x1

    .line 380
    if-eqz v2, :cond_a

    .line 381
    .line 382
    iget-boolean v1, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 383
    .line 384
    if-eqz v1, :cond_a

    .line 385
    .line 386
    new-instance v1, Landroidx/leanback/widget/i;

    .line 387
    .line 388
    const/4 v2, 0x6

    .line 389
    invoke-direct {v1, v13, v2}, Landroidx/leanback/widget/i;-><init>(II)V

    .line 390
    .line 391
    .line 392
    move-object v2, v1

    .line 393
    goto :goto_4

    .line 394
    :cond_a
    const/4 v2, 0x0

    .line 395
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 396
    .line 397
    .line 398
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 399
    .line 400
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    int-to-float v1, v1

    .line 405
    iget-object v3, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 406
    .line 407
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    int-to-float v3, v3

    .line 412
    invoke-virtual {v0, v7, v7, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 413
    .line 414
    .line 415
    move-object/from16 v1, p0

    .line 416
    .line 417
    move-object v3, v2

    .line 418
    move-object/from16 v2, p1

    .line 419
    .line 420
    move-object/from16 v20, v3

    .line 421
    .line 422
    const/4 v10, 0x3

    .line 423
    move v3, v15

    .line 424
    move-object/from16 v21, v4

    .line 425
    .line 426
    move-object v4, v6

    .line 427
    move-object/from16 v22, v5

    .line 428
    .line 429
    move-object/from16 v5, v21

    .line 430
    .line 431
    move-object/from16 v23, v6

    .line 432
    .line 433
    move-object/from16 v6, v22

    .line 434
    .line 435
    const/4 v13, 0x0

    .line 436
    move-object/from16 v7, v20

    .line 437
    .line 438
    invoke-virtual/range {v1 .. v7}, Ltb/l;->p(Landroid/graphics/Canvas;FLsb/e;Ljava/util/ArrayList;La0/n;Landroidx/leanback/widget/i;)V

    .line 439
    .line 440
    .line 441
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 442
    .line 443
    iget-object v2, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 444
    .line 445
    iget-object v2, v2, Ltb/f;->b:Lmb/d;

    .line 446
    .line 447
    invoke-virtual {v2}, Lmb/d;->a()Z

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    if-nez v2, :cond_c

    .line 452
    .line 453
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    iget-boolean v2, v2, Ltb/e;->r:Z

    .line 458
    .line 459
    if-eqz v2, :cond_c

    .line 460
    .line 461
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursor()Lmb/j;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v2}, Lmb/j;->a()Z

    .line 466
    .line 467
    .line 468
    move-result v2

    .line 469
    if-eqz v2, :cond_b

    .line 470
    .line 471
    goto :goto_5

    .line 472
    :cond_b
    iget-object v1, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->f:Ll5/y;

    .line 473
    .line 474
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .line 476
    .line 477
    :cond_c
    :goto_5
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 478
    .line 479
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDiagnostics()Lib/a;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDiagnosticIndicatorStyle()Lcc/b;

    .line 483
    .line 484
    .line 485
    iget-object v1, v8, Ltb/l;->q:Ljava/util/ArrayList;

    .line 486
    .line 487
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 488
    .line 489
    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 491
    .line 492
    .line 493
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 494
    .line 495
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    neg-int v1, v1

    .line 500
    int-to-float v7, v1

    .line 501
    iget-object v1, v8, Ltb/l;->D:Lmb/j;

    .line 502
    .line 503
    invoke-virtual {v1}, Lmb/j;->a()Z

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    if-eqz v1, :cond_d

    .line 508
    .line 509
    const/4 v6, -0x1

    .line 510
    goto :goto_6

    .line 511
    :cond_d
    iget-object v1, v8, Ltb/l;->D:Lmb/j;

    .line 512
    .line 513
    iget-object v1, v1, Lmb/j;->c:Lmb/b;

    .line 514
    .line 515
    iget v1, v1, Lmb/b;->b:I

    .line 516
    .line 517
    move v6, v1

    .line 518
    :goto_6
    const/16 v5, 0x9

    .line 519
    .line 520
    const/16 v24, 0x20

    .line 521
    .line 522
    const-wide v25, 0xffffffffL

    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    const/high16 v27, 0x40000000    # 2.0f

    .line 528
    .line 529
    if-eqz v17, :cond_1a

    .line 530
    .line 531
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 532
    .line 533
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginLeft()F

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    add-float v1, v1, v16

    .line 538
    .line 539
    iget-object v2, v12, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 540
    .line 541
    invoke-virtual {v2, v10}, Landroid/util/SparseIntArray;->get(I)I

    .line 542
    .line 543
    .line 544
    move-result v2

    .line 545
    invoke-virtual {v8, v0, v7, v1, v2}, Ltb/l;->k(Landroid/graphics/Canvas;FFI)V

    .line 546
    .line 547
    .line 548
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 549
    .line 550
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    iget-object v1, v1, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 555
    .line 556
    invoke-virtual {v1, v9}, Landroid/util/SparseIntArray;->get(I)I

    .line 557
    .line 558
    .line 559
    move-result v28

    .line 560
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 561
    .line 562
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    iget-object v1, v1, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 567
    .line 568
    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 573
    .line 574
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorAnimator()Lcc/a;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    check-cast v2, Ldc/c;

    .line 579
    .line 580
    invoke-virtual {v2}, Ldc/c;->b()Z

    .line 581
    .line 582
    .line 583
    move-result v2

    .line 584
    if-eqz v2, :cond_e

    .line 585
    .line 586
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 587
    .line 588
    iget-boolean v3, v2, Lio/github/rosemoe/sora/widget/CodeEditor;->N0:Z

    .line 589
    .line 590
    if-eqz v3, :cond_e

    .line 591
    .line 592
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-eqz v2, :cond_e

    .line 597
    .line 598
    iget-object v2, v8, Ltb/l;->e:Landroid/graphics/RectF;

    .line 599
    .line 600
    iget-object v3, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 601
    .line 602
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorAnimator()Lcc/a;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    check-cast v3, Ldc/c;

    .line 607
    .line 608
    iget-object v3, v3, Ldc/c;->e:Landroid/animation/ValueAnimator;

    .line 609
    .line 610
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    check-cast v3, Ljava/lang/Float;

    .line 615
    .line 616
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 617
    .line 618
    .line 619
    move-result v3

    .line 620
    iget-object v5, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 621
    .line 622
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 623
    .line 624
    .line 625
    move-result v5

    .line 626
    int-to-float v5, v5

    .line 627
    sub-float/2addr v3, v5

    .line 628
    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 629
    .line 630
    iget-object v2, v8, Ltb/l;->e:Landroid/graphics/RectF;

    .line 631
    .line 632
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 633
    .line 634
    iget-object v5, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 635
    .line 636
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorAnimator()Lcc/a;

    .line 637
    .line 638
    .line 639
    move-result-object v5

    .line 640
    check-cast v5, Ldc/c;

    .line 641
    .line 642
    iget-object v5, v5, Ldc/c;->f:Landroid/animation/ValueAnimator;

    .line 643
    .line 644
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v5

    .line 648
    check-cast v5, Ljava/lang/Float;

    .line 649
    .line 650
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 651
    .line 652
    .line 653
    move-result v5

    .line 654
    sub-float/2addr v3, v5

    .line 655
    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 656
    .line 657
    iget-object v2, v8, Ltb/l;->e:Landroid/graphics/RectF;

    .line 658
    .line 659
    iput v13, v2, Landroid/graphics/RectF;->left:F

    .line 660
    .line 661
    iget-object v3, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 662
    .line 663
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginRight()F

    .line 664
    .line 665
    .line 666
    move-result v3

    .line 667
    sub-float v3, v15, v3

    .line 668
    .line 669
    float-to-int v3, v3

    .line 670
    int-to-float v3, v3

    .line 671
    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 672
    .line 673
    iget-object v2, v8, Ltb/l;->e:Landroid/graphics/RectF;

    .line 674
    .line 675
    invoke-virtual {v8, v0, v1, v2}, Ltb/l;->g(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 676
    .line 677
    .line 678
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 679
    .line 680
    .line 681
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 682
    .line 683
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 684
    .line 685
    .line 686
    move-result v2

    .line 687
    int-to-float v2, v2

    .line 688
    iget-object v3, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 689
    .line 690
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 691
    .line 692
    .line 693
    move-result v3

    .line 694
    int-to-float v3, v3

    .line 695
    invoke-virtual {v0, v13, v13, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 696
    .line 697
    .line 698
    move-object/from16 v5, v22

    .line 699
    .line 700
    const/4 v2, 0x0

    .line 701
    :goto_7
    iget v3, v5, La0/n;->b:I

    .line 702
    .line 703
    if-ge v2, v3, :cond_f

    .line 704
    .line 705
    invoke-virtual {v5, v2}, La0/n;->b(I)I

    .line 706
    .line 707
    .line 708
    move-result v3

    .line 709
    iget-object v10, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 710
    .line 711
    invoke-virtual {v10}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginRight()F

    .line 712
    .line 713
    .line 714
    move-result v10

    .line 715
    sub-float v10, v15, v10

    .line 716
    .line 717
    float-to-int v10, v10

    .line 718
    invoke-virtual {v8, v0, v1, v3, v10}, Ltb/l;->m(Landroid/graphics/Canvas;III)V

    .line 719
    .line 720
    .line 721
    add-int/2addr v2, v11

    .line 722
    const/4 v10, 0x3

    .line 723
    goto :goto_7

    .line 724
    :cond_f
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 725
    .line 726
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginRight()F

    .line 727
    .line 728
    .line 729
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 730
    .line 731
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getFirstVisibleLine()I

    .line 732
    .line 733
    .line 734
    move-result v2

    .line 735
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLastVisibleLine()I

    .line 736
    .line 737
    .line 738
    move-result v3

    .line 739
    :goto_8
    if-gt v2, v3, :cond_10

    .line 740
    .line 741
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getStyles()Ljb/d;

    .line 742
    .line 743
    .line 744
    add-int/2addr v2, v11

    .line 745
    goto :goto_8

    .line 746
    :cond_10
    add-float v1, v7, v14

    .line 747
    .line 748
    invoke-virtual/range {p0 .. p0}, Ltb/l;->z()V

    .line 749
    .line 750
    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 752
    .line 753
    .line 754
    add-float v2, v1, v13

    .line 755
    .line 756
    iget-object v3, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 757
    .line 758
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginLeft()F

    .line 759
    .line 760
    .line 761
    move-result v3

    .line 762
    add-float/2addr v3, v2

    .line 763
    iget-object v2, v12, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 764
    .line 765
    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->get(I)I

    .line 766
    .line 767
    .line 768
    move-result v2

    .line 769
    invoke-virtual {v8, v0, v3, v2}, Ltb/l;->h(Landroid/graphics/Canvas;FI)V

    .line 770
    .line 771
    .line 772
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 773
    .line 774
    .line 775
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 776
    .line 777
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 778
    .line 779
    .line 780
    move-result v2

    .line 781
    int-to-float v2, v2

    .line 782
    iget-object v3, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 783
    .line 784
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 785
    .line 786
    .line 787
    move-result v3

    .line 788
    int-to-float v3, v3

    .line 789
    invoke-virtual {v0, v13, v13, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 790
    .line 791
    .line 792
    move-object/from16 v2, v20

    .line 793
    .line 794
    if-eqz v2, :cond_17

    .line 795
    .line 796
    iget v3, v2, Landroidx/leanback/widget/i;->b:I

    .line 797
    .line 798
    const/4 v10, -0x1

    .line 799
    if-eq v3, v10, :cond_17

    .line 800
    .line 801
    iget-object v3, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 802
    .line 803
    const/4 v10, 0x0

    .line 804
    invoke-virtual {v3, v10}, Lio/github/rosemoe/sora/widget/CodeEditor;->K(I)I

    .line 805
    .line 806
    .line 807
    move-result v3

    .line 808
    move-object/from16 v13, v23

    .line 809
    .line 810
    iget v9, v13, Lsb/e;->b:I

    .line 811
    .line 812
    if-eqz v9, :cond_12

    .line 813
    .line 814
    iget-object v9, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 815
    .line 816
    invoke-virtual {v13, v10}, Lsb/e;->c(I)J

    .line 817
    .line 818
    .line 819
    move-result-wide v30

    .line 820
    move-object/from16 v32, v5

    .line 821
    .line 822
    and-long v4, v30, v25

    .line 823
    .line 824
    long-to-int v5, v4

    .line 825
    invoke-virtual {v9}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 826
    .line 827
    .line 828
    move-result v4

    .line 829
    mul-int v4, v4, v5

    .line 830
    .line 831
    iget-object v5, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 832
    .line 833
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 834
    .line 835
    .line 836
    move-result v5

    .line 837
    sub-int/2addr v4, v5

    .line 838
    if-le v4, v3, :cond_11

    .line 839
    .line 840
    goto :goto_a

    .line 841
    :cond_11
    const/4 v3, 0x0

    .line 842
    invoke-virtual {v13, v3}, Lsb/e;->c(I)J

    .line 843
    .line 844
    .line 845
    move-result-wide v4

    .line 846
    and-long v4, v4, v25

    .line 847
    .line 848
    long-to-int v3, v4

    .line 849
    iget-object v4, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 850
    .line 851
    sub-int/2addr v3, v11

    .line 852
    invoke-virtual {v4, v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->K(I)I

    .line 853
    .line 854
    .line 855
    move-result v4

    .line 856
    iget-object v5, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 857
    .line 858
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 859
    .line 860
    .line 861
    move-result v5

    .line 862
    mul-int v5, v5, v3

    .line 863
    .line 864
    add-int/2addr v5, v4

    .line 865
    int-to-float v3, v5

    .line 866
    div-float v3, v3, v27

    .line 867
    .line 868
    iget-object v4, v8, Ltb/l;->A:Landroid/graphics/Paint$FontMetricsInt;

    .line 869
    .line 870
    iget v5, v4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 871
    .line 872
    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 873
    .line 874
    sub-int/2addr v5, v4

    .line 875
    int-to-float v5, v5

    .line 876
    div-float v5, v5, v27

    .line 877
    .line 878
    sub-float/2addr v3, v5

    .line 879
    int-to-float v4, v4

    .line 880
    sub-float/2addr v3, v4

    .line 881
    iget-object v4, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 882
    .line 883
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 884
    .line 885
    .line 886
    move-result v4

    .line 887
    :goto_9
    int-to-float v4, v4

    .line 888
    sub-float/2addr v3, v4

    .line 889
    goto :goto_b

    .line 890
    :cond_12
    move-object/from16 v32, v5

    .line 891
    .line 892
    :goto_a
    iget-object v3, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 893
    .line 894
    const/4 v4, 0x0

    .line 895
    invoke-virtual {v3, v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->K(I)I

    .line 896
    .line 897
    .line 898
    move-result v3

    .line 899
    iget-object v4, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 900
    .line 901
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 902
    .line 903
    .line 904
    int-to-float v3, v3

    .line 905
    div-float v3, v3, v27

    .line 906
    .line 907
    iget-object v4, v8, Ltb/l;->A:Landroid/graphics/Paint$FontMetricsInt;

    .line 908
    .line 909
    iget v5, v4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 910
    .line 911
    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 912
    .line 913
    sub-int/2addr v5, v4

    .line 914
    int-to-float v5, v5

    .line 915
    div-float v5, v5, v27

    .line 916
    .line 917
    sub-float/2addr v3, v5

    .line 918
    goto :goto_9

    .line 919
    :goto_b
    iget-object v4, v8, Ltb/l;->c:Leb/c;

    .line 920
    .line 921
    iget-object v5, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 922
    .line 923
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineNumberAlign()Landroid/graphics/Paint$Align;

    .line 924
    .line 925
    .line 926
    move-result-object v5

    .line 927
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 928
    .line 929
    .line 930
    iget-object v4, v8, Ltb/l;->c:Leb/c;

    .line 931
    .line 932
    iget v5, v2, Landroidx/leanback/widget/i;->b:I

    .line 933
    .line 934
    if-ne v5, v6, :cond_13

    .line 935
    .line 936
    iget-object v5, v12, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 937
    .line 938
    const/16 v9, 0x2d

    .line 939
    .line 940
    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->get(I)I

    .line 941
    .line 942
    .line 943
    move-result v5

    .line 944
    goto :goto_c

    .line 945
    :cond_13
    move/from16 v5, v28

    .line 946
    .line 947
    :goto_c
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 948
    .line 949
    .line 950
    iget v2, v2, Landroidx/leanback/widget/i;->b:I

    .line 951
    .line 952
    add-int/2addr v2, v11

    .line 953
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v2

    .line 957
    sget-object v4, Ltb/j;->a:[I

    .line 958
    .line 959
    iget-object v5, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 960
    .line 961
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLineNumberAlign()Landroid/graphics/Paint$Align;

    .line 962
    .line 963
    .line 964
    move-result-object v5

    .line 965
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 966
    .line 967
    .line 968
    move-result v5

    .line 969
    aget v4, v4, v5

    .line 970
    .line 971
    if-eq v4, v11, :cond_16

    .line 972
    .line 973
    const/4 v5, 0x2

    .line 974
    if-eq v4, v5, :cond_15

    .line 975
    .line 976
    const/4 v5, 0x3

    .line 977
    if-eq v4, v5, :cond_14

    .line 978
    .line 979
    goto :goto_d

    .line 980
    :cond_14
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 981
    .line 982
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginLeft()F

    .line 983
    .line 984
    .line 985
    move-result v1

    .line 986
    add-float/2addr v1, v14

    .line 987
    div-float v1, v1, v27

    .line 988
    .line 989
    add-float/2addr v1, v7

    .line 990
    iget-object v4, v8, Ltb/l;->c:Leb/c;

    .line 991
    .line 992
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 993
    .line 994
    .line 995
    goto :goto_d

    .line 996
    :cond_15
    iget-object v4, v8, Ltb/l;->c:Leb/c;

    .line 997
    .line 998
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 999
    .line 1000
    .line 1001
    goto :goto_d

    .line 1002
    :cond_16
    iget-object v1, v8, Ltb/l;->c:Leb/c;

    .line 1003
    .line 1004
    invoke-virtual {v0, v2, v7, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1005
    .line 1006
    .line 1007
    goto :goto_d

    .line 1008
    :cond_17
    move-object/from16 v32, v5

    .line 1009
    .line 1010
    move-object/from16 v13, v23

    .line 1011
    .line 1012
    :goto_d
    const/4 v9, 0x0

    .line 1013
    :goto_e
    iget v1, v13, Lsb/e;->b:I

    .line 1014
    .line 1015
    if-ge v9, v1, :cond_19

    .line 1016
    .line 1017
    invoke-virtual {v13, v9}, Lsb/e;->c(I)J

    .line 1018
    .line 1019
    .line 1020
    move-result-wide v1

    .line 1021
    shr-long v3, v1, v24

    .line 1022
    .line 1023
    long-to-int v3, v3

    .line 1024
    and-long v1, v1, v25

    .line 1025
    .line 1026
    long-to-int v4, v1

    .line 1027
    if-ne v3, v6, :cond_18

    .line 1028
    .line 1029
    iget-object v1, v12, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 1030
    .line 1031
    const/16 v5, 0x2d

    .line 1032
    .line 1033
    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->get(I)I

    .line 1034
    .line 1035
    .line 1036
    move-result v1

    .line 1037
    move v10, v1

    .line 1038
    goto :goto_f

    .line 1039
    :cond_18
    const/16 v5, 0x2d

    .line 1040
    .line 1041
    move/from16 v10, v28

    .line 1042
    .line 1043
    :goto_f
    move-object/from16 v1, p0

    .line 1044
    .line 1045
    move-object/from16 v2, p1

    .line 1046
    .line 1047
    move-object/from16 v33, v32

    .line 1048
    .line 1049
    move v5, v7

    .line 1050
    move/from16 v34, v6

    .line 1051
    .line 1052
    move v6, v14

    .line 1053
    move/from16 v29, v7

    .line 1054
    .line 1055
    move v7, v10

    .line 1056
    invoke-virtual/range {v1 .. v7}, Ltb/l;->j(Landroid/graphics/Canvas;IIFFI)V

    .line 1057
    .line 1058
    .line 1059
    add-int/2addr v9, v11

    .line 1060
    move/from16 v7, v29

    .line 1061
    .line 1062
    move/from16 v6, v34

    .line 1063
    .line 1064
    goto :goto_e

    .line 1065
    :cond_19
    move/from16 v34, v6

    .line 1066
    .line 1067
    move-object/from16 v33, v32

    .line 1068
    .line 1069
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1070
    .line 1071
    .line 1072
    goto :goto_10

    .line 1073
    :cond_1a
    move/from16 v34, v6

    .line 1074
    .line 1075
    move-object/from16 v33, v22

    .line 1076
    .line 1077
    move-object/from16 v13, v23

    .line 1078
    .line 1079
    :goto_10
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1080
    .line 1081
    iget-boolean v1, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->h0:Z

    .line 1082
    .line 1083
    if-eqz v1, :cond_1d

    .line 1084
    .line 1085
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1086
    .line 1087
    .line 1088
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1089
    .line 1090
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 1091
    .line 1092
    .line 1093
    move-result v1

    .line 1094
    int-to-float v1, v1

    .line 1095
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1096
    .line 1097
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 1098
    .line 1099
    .line 1100
    move-result v2

    .line 1101
    int-to-float v2, v2

    .line 1102
    const/4 v3, 0x0

    .line 1103
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1104
    .line 1105
    .line 1106
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1107
    .line 1108
    iget-boolean v2, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 1109
    .line 1110
    if-eqz v2, :cond_1c

    .line 1111
    .line 1112
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v2

    .line 1116
    iget-boolean v2, v2, Ltb/e;->p:Z

    .line 1117
    .line 1118
    if-nez v2, :cond_1b

    .line 1119
    .line 1120
    goto :goto_11

    .line 1121
    :cond_1b
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getStyles()Ljb/d;

    .line 1122
    .line 1123
    .line 1124
    goto :goto_11

    .line 1125
    :cond_1c
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getStyles()Ljb/d;

    .line 1126
    .line 1127
    .line 1128
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1129
    .line 1130
    .line 1131
    :cond_1d
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1132
    .line 1133
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorAnimator()Lcc/a;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v1

    .line 1137
    check-cast v1, Ldc/c;

    .line 1138
    .line 1139
    invoke-virtual {v1}, Ldc/c;->b()Z

    .line 1140
    .line 1141
    .line 1142
    move-result v1

    .line 1143
    if-nez v1, :cond_32

    .line 1144
    .line 1145
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v21

    .line 1149
    :goto_12
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    .line 1150
    .line 1151
    .line 1152
    move-result v1

    .line 1153
    if-eqz v1, :cond_31

    .line 1154
    .line 1155
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v1

    .line 1159
    move-object v7, v1

    .line 1160
    check-cast v7, Ltb/k;

    .line 1161
    .line 1162
    iget-object v6, v7, Ltb/k;->g:Ltb/l;

    .line 1163
    .line 1164
    iget v5, v7, Ltb/k;->c:I

    .line 1165
    .line 1166
    const/4 v1, -0x1

    .line 1167
    if-eq v5, v1, :cond_20

    .line 1168
    .line 1169
    iget-object v1, v6, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1170
    .line 1171
    iget-object v2, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->h:Ltb/f;

    .line 1172
    .line 1173
    iget-boolean v2, v2, Ltb/f;->c:Z

    .line 1174
    .line 1175
    if-nez v2, :cond_1e

    .line 1176
    .line 1177
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 1178
    .line 1179
    .line 1180
    move-result v1

    .line 1181
    if-nez v1, :cond_20

    .line 1182
    .line 1183
    :cond_1e
    :goto_13
    move-object/from16 v36, v13

    .line 1184
    .line 1185
    move/from16 v35, v14

    .line 1186
    .line 1187
    const/4 v9, -0x1

    .line 1188
    :cond_1f
    const/4 v10, 0x0

    .line 1189
    goto/16 :goto_1d

    .line 1190
    .line 1191
    :cond_20
    if-nez v5, :cond_21

    .line 1192
    .line 1193
    iget-object v1, v6, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1194
    .line 1195
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 1196
    .line 1197
    .line 1198
    move-result v1

    .line 1199
    if-nez v1, :cond_21

    .line 1200
    .line 1201
    goto :goto_13

    .line 1202
    :cond_21
    sget-object v4, Ltb/k;->h:Lcc/d;

    .line 1203
    .line 1204
    iget-object v1, v7, Ltb/k;->d:Lcc/d;

    .line 1205
    .line 1206
    if-nez v1, :cond_22

    .line 1207
    .line 1208
    move-object v3, v4

    .line 1209
    goto :goto_14

    .line 1210
    :cond_22
    move-object v3, v1

    .line 1211
    :goto_14
    iget-object v1, v3, Lcc/d;->a:Landroid/graphics/RectF;

    .line 1212
    .line 1213
    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    .line 1214
    .line 1215
    .line 1216
    move-result v1

    .line 1217
    if-nez v1, :cond_27

    .line 1218
    .line 1219
    iget-object v1, v6, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1220
    .line 1221
    iget-boolean v2, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->V0:Z

    .line 1222
    .line 1223
    if-nez v2, :cond_27

    .line 1224
    .line 1225
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v1

    .line 1229
    iget v1, v1, Ltb/u;->e:I

    .line 1230
    .line 1231
    iget-boolean v2, v7, Ltb/k;->f:Z

    .line 1232
    .line 1233
    if-eqz v2, :cond_23

    .line 1234
    .line 1235
    if-ne v5, v11, :cond_23

    .line 1236
    .line 1237
    const/4 v2, 0x2

    .line 1238
    goto :goto_15

    .line 1239
    :cond_23
    if-eqz v2, :cond_24

    .line 1240
    .line 1241
    const/4 v2, 0x2

    .line 1242
    if-ne v5, v2, :cond_24

    .line 1243
    .line 1244
    const/4 v2, 0x1

    .line 1245
    goto :goto_15

    .line 1246
    :cond_24
    move v2, v5

    .line 1247
    :goto_15
    if-ne v1, v2, :cond_27

    .line 1248
    .line 1249
    const/4 v1, -0x1

    .line 1250
    if-eq v5, v1, :cond_27

    .line 1251
    .line 1252
    iget-object v1, v6, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1253
    .line 1254
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v1

    .line 1258
    iget-boolean v1, v1, Ltb/u;->f:Z

    .line 1259
    .line 1260
    if-eqz v1, :cond_27

    .line 1261
    .line 1262
    iget-object v1, v6, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1263
    .line 1264
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v1

    .line 1268
    iget v1, v1, Ltb/u;->g:F

    .line 1269
    .line 1270
    iget v2, v3, Lcc/d;->b:I

    .line 1271
    .line 1272
    iget-object v9, v3, Lcc/d;->a:Landroid/graphics/RectF;

    .line 1273
    .line 1274
    if-eqz v2, :cond_25

    .line 1275
    .line 1276
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    .line 1277
    .line 1278
    .line 1279
    move-result v2

    .line 1280
    goto :goto_16

    .line 1281
    :cond_25
    const/4 v2, 0x0

    .line 1282
    :goto_16
    iget v10, v3, Lcc/d;->b:I

    .line 1283
    .line 1284
    if-ne v10, v11, :cond_26

    .line 1285
    .line 1286
    const/4 v10, 0x1

    .line 1287
    goto :goto_17

    .line 1288
    :cond_26
    const/4 v10, -0x1

    .line 1289
    :goto_17
    int-to-float v10, v10

    .line 1290
    mul-float v2, v2, v10

    .line 1291
    .line 1292
    add-float/2addr v2, v1

    .line 1293
    iput v2, v7, Ltb/k;->a:F

    .line 1294
    .line 1295
    iget-object v1, v6, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1296
    .line 1297
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v1

    .line 1301
    iget v1, v1, Ltb/u;->h:F

    .line 1302
    .line 1303
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    .line 1304
    .line 1305
    .line 1306
    move-result v2

    .line 1307
    mul-float v2, v2, v27

    .line 1308
    .line 1309
    const/high16 v9, 0x40400000    # 3.0f

    .line 1310
    .line 1311
    div-float/2addr v2, v9

    .line 1312
    sub-float/2addr v1, v2

    .line 1313
    iput v1, v7, Ltb/k;->b:F

    .line 1314
    .line 1315
    :cond_27
    if-eq v5, v11, :cond_28

    .line 1316
    .line 1317
    const/4 v1, 0x2

    .line 1318
    if-ne v5, v1, :cond_29

    .line 1319
    .line 1320
    :cond_28
    iget-object v1, v6, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1321
    .line 1322
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v1

    .line 1326
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1327
    .line 1328
    .line 1329
    :cond_29
    invoke-virtual {v7}, Ltb/k;->a()Z

    .line 1330
    .line 1331
    .line 1332
    move-result v1

    .line 1333
    if-nez v1, :cond_2b

    .line 1334
    .line 1335
    const/4 v1, -0x1

    .line 1336
    if-ne v5, v1, :cond_2a

    .line 1337
    .line 1338
    goto :goto_18

    .line 1339
    :cond_2a
    move-object/from16 v31, v3

    .line 1340
    .line 1341
    move v11, v5

    .line 1342
    move-object/from16 v36, v13

    .line 1343
    .line 1344
    move/from16 v35, v14

    .line 1345
    .line 1346
    move-object v14, v4

    .line 1347
    move-object v13, v6

    .line 1348
    goto/16 :goto_1a

    .line 1349
    .line 1350
    :cond_2b
    :goto_18
    iget v1, v7, Ltb/k;->b:F

    .line 1351
    .line 1352
    iget-object v2, v6, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1353
    .line 1354
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v2

    .line 1358
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1359
    .line 1360
    .line 1361
    iget-object v2, v6, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1362
    .line 1363
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 1364
    .line 1365
    .line 1366
    move-result v2

    .line 1367
    int-to-float v2, v2

    .line 1368
    sub-float v9, v1, v2

    .line 1369
    .line 1370
    iget v10, v7, Ltb/k;->b:F

    .line 1371
    .line 1372
    iget-object v1, v6, Ltb/l;->b:Leb/c;

    .line 1373
    .line 1374
    iget-object v2, v6, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1375
    .line 1376
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v2

    .line 1380
    iget-object v2, v2, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 1381
    .line 1382
    const/4 v11, 0x7

    .line 1383
    invoke-virtual {v2, v11}, Landroid/util/SparseIntArray;->get(I)I

    .line 1384
    .line 1385
    .line 1386
    move-result v2

    .line 1387
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1388
    .line 1389
    .line 1390
    iget-object v1, v6, Ltb/l;->b:Leb/c;

    .line 1391
    .line 1392
    iget-object v2, v6, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1393
    .line 1394
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getInsertSelectionWidth()F

    .line 1395
    .line 1396
    .line 1397
    move-result v2

    .line 1398
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1399
    .line 1400
    .line 1401
    iget-object v1, v6, Ltb/l;->b:Leb/c;

    .line 1402
    .line 1403
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 1404
    .line 1405
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1406
    .line 1407
    .line 1408
    iget-object v1, v6, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1409
    .line 1410
    iget-boolean v1, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->W0:Z

    .line 1411
    .line 1412
    if-eqz v1, :cond_2c

    .line 1413
    .line 1414
    const/4 v1, 0x1

    .line 1415
    if-eq v5, v1, :cond_2c

    .line 1416
    .line 1417
    const/4 v2, 0x2

    .line 1418
    if-eq v5, v2, :cond_2c

    .line 1419
    .line 1420
    iget-object v11, v6, Ltb/l;->b:Leb/c;

    .line 1421
    .line 1422
    new-instance v1, Landroid/graphics/DashPathEffect;

    .line 1423
    .line 1424
    sub-float v31, v10, v9

    .line 1425
    .line 1426
    const/high16 v23, 0x41000000    # 8.0f

    .line 1427
    .line 1428
    div-float v32, v31, v23

    .line 1429
    .line 1430
    move-object/from16 v35, v3

    .line 1431
    .line 1432
    new-array v3, v2, [F

    .line 1433
    .line 1434
    const/4 v2, 0x0

    .line 1435
    aput v32, v3, v2

    .line 1436
    .line 1437
    const/4 v2, 0x1

    .line 1438
    aput v32, v3, v2

    .line 1439
    .line 1440
    const/high16 v2, 0x41800000    # 16.0f

    .line 1441
    .line 1442
    div-float v2, v31, v2

    .line 1443
    .line 1444
    invoke-direct {v1, v3, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1445
    .line 1446
    .line 1447
    invoke-virtual {v11, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1448
    .line 1449
    .line 1450
    iget-object v1, v6, Ltb/l;->b:Leb/c;

    .line 1451
    .line 1452
    iget-object v2, v6, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1453
    .line 1454
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getInsertSelectionWidth()F

    .line 1455
    .line 1456
    .line 1457
    move-result v2

    .line 1458
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 1459
    .line 1460
    mul-float v2, v2, v3

    .line 1461
    .line 1462
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1463
    .line 1464
    .line 1465
    goto :goto_19

    .line 1466
    :cond_2c
    move-object/from16 v35, v3

    .line 1467
    .line 1468
    :goto_19
    iget v11, v7, Ltb/k;->a:F

    .line 1469
    .line 1470
    iget-object v3, v6, Ltb/l;->b:Leb/c;

    .line 1471
    .line 1472
    move-object/from16 v1, p1

    .line 1473
    .line 1474
    move v2, v11

    .line 1475
    move-object/from16 v32, v3

    .line 1476
    .line 1477
    move-object/from16 v31, v35

    .line 1478
    .line 1479
    move v3, v9

    .line 1480
    move/from16 v35, v14

    .line 1481
    .line 1482
    move-object v14, v4

    .line 1483
    move v4, v11

    .line 1484
    move v11, v5

    .line 1485
    move v5, v10

    .line 1486
    move-object/from16 v36, v13

    .line 1487
    .line 1488
    move-object v13, v6

    .line 1489
    move-object/from16 v6, v32

    .line 1490
    .line 1491
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1492
    .line 1493
    .line 1494
    iget-object v1, v13, Ltb/l;->b:Leb/c;

    .line 1495
    .line 1496
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 1497
    .line 1498
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1499
    .line 1500
    .line 1501
    iget-object v1, v13, Ltb/l;->b:Leb/c;

    .line 1502
    .line 1503
    const/4 v2, 0x0

    .line 1504
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {v7}, Ltb/k;->a()Z

    .line 1508
    .line 1509
    .line 1510
    move-result v1

    .line 1511
    if-eqz v1, :cond_2d

    .line 1512
    .line 1513
    iget-boolean v1, v7, Ltb/k;->e:Z

    .line 1514
    .line 1515
    if-eqz v1, :cond_2d

    .line 1516
    .line 1517
    sub-float v5, v10, v9

    .line 1518
    .line 1519
    iget v3, v7, Ltb/k;->a:F

    .line 1520
    .line 1521
    iget-boolean v6, v7, Ltb/k;->f:Z

    .line 1522
    .line 1523
    iget-object v1, v7, Ltb/k;->g:Ltb/l;

    .line 1524
    .line 1525
    move-object/from16 v2, p1

    .line 1526
    .line 1527
    move v4, v9

    .line 1528
    invoke-virtual/range {v1 .. v6}, Ltb/l;->f(Landroid/graphics/Canvas;FFFZ)V

    .line 1529
    .line 1530
    .line 1531
    :cond_2d
    :goto_1a
    if-nez v11, :cond_2f

    .line 1532
    .line 1533
    iget-object v1, v13, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1534
    .line 1535
    iget-boolean v2, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->W0:Z

    .line 1536
    .line 1537
    if-nez v2, :cond_2e

    .line 1538
    .line 1539
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v1

    .line 1543
    invoke-virtual {v1}, Ltb/u;->m()Z

    .line 1544
    .line 1545
    .line 1546
    move-result v1

    .line 1547
    if-nez v1, :cond_2f

    .line 1548
    .line 1549
    :cond_2e
    const/4 v3, -0x1

    .line 1550
    :goto_1b
    const/4 v9, -0x1

    .line 1551
    goto :goto_1c

    .line 1552
    :cond_2f
    move v3, v11

    .line 1553
    goto :goto_1b

    .line 1554
    :goto_1c
    if-eq v3, v9, :cond_30

    .line 1555
    .line 1556
    iget-object v1, v13, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1557
    .line 1558
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->P()Z

    .line 1559
    .line 1560
    .line 1561
    move-result v1

    .line 1562
    if-nez v1, :cond_30

    .line 1563
    .line 1564
    iget-object v1, v13, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1565
    .line 1566
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getHandleStyle()Lcc/e;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v1

    .line 1570
    iget v4, v7, Ltb/k;->a:F

    .line 1571
    .line 1572
    iget v5, v7, Ltb/k;->b:F

    .line 1573
    .line 1574
    iget-object v2, v13, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1575
    .line 1576
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 1577
    .line 1578
    .line 1579
    iget-object v2, v13, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1580
    .line 1581
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v2

    .line 1585
    iget-object v2, v2, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 1586
    .line 1587
    const/16 v6, 0x8

    .line 1588
    .line 1589
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 1590
    .line 1591
    .line 1592
    move-result v7

    .line 1593
    check-cast v1, Ldc/b;

    .line 1594
    .line 1595
    move-object/from16 v2, p1

    .line 1596
    .line 1597
    move v6, v7

    .line 1598
    move-object/from16 v7, v31

    .line 1599
    .line 1600
    invoke-virtual/range {v1 .. v7}, Ldc/b;->a(Landroid/graphics/Canvas;IFFILcc/d;)V

    .line 1601
    .line 1602
    .line 1603
    move-object/from16 v1, v31

    .line 1604
    .line 1605
    if-ne v1, v14, :cond_1f

    .line 1606
    .line 1607
    iget-object v2, v1, Lcc/d;->a:Landroid/graphics/RectF;

    .line 1608
    .line 1609
    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 1610
    .line 1611
    .line 1612
    const/4 v10, 0x0

    .line 1613
    iput v10, v1, Lcc/d;->b:I

    .line 1614
    .line 1615
    goto :goto_1d

    .line 1616
    :cond_30
    move-object/from16 v1, v31

    .line 1617
    .line 1618
    const/4 v10, 0x0

    .line 1619
    iget-object v2, v1, Lcc/d;->a:Landroid/graphics/RectF;

    .line 1620
    .line 1621
    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 1622
    .line 1623
    .line 1624
    iput v10, v1, Lcc/d;->b:I

    .line 1625
    .line 1626
    :goto_1d
    move/from16 v14, v35

    .line 1627
    .line 1628
    move-object/from16 v13, v36

    .line 1629
    .line 1630
    const/4 v11, 0x1

    .line 1631
    goto/16 :goto_12

    .line 1632
    .line 1633
    :cond_31
    move-object/from16 v36, v13

    .line 1634
    .line 1635
    move/from16 v35, v14

    .line 1636
    .line 1637
    const/4 v10, 0x0

    .line 1638
    goto/16 :goto_1f

    .line 1639
    .line 1640
    :cond_32
    move-object/from16 v36, v13

    .line 1641
    .line 1642
    move/from16 v35, v14

    .line 1643
    .line 1644
    const/4 v10, 0x0

    .line 1645
    iget-object v7, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1646
    .line 1647
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 1648
    .line 1649
    .line 1650
    move-result v1

    .line 1651
    if-nez v1, :cond_33

    .line 1652
    .line 1653
    goto/16 :goto_1f

    .line 1654
    .line 1655
    :cond_33
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorAnimator()Lcc/a;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v1

    .line 1659
    check-cast v1, Ldc/c;

    .line 1660
    .line 1661
    iget-object v1, v1, Ldc/c;->d:Landroid/animation/ValueAnimator;

    .line 1662
    .line 1663
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v1

    .line 1667
    check-cast v1, Ljava/lang/Float;

    .line 1668
    .line 1669
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 1670
    .line 1671
    .line 1672
    move-result v1

    .line 1673
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 1674
    .line 1675
    .line 1676
    move-result v2

    .line 1677
    int-to-float v2, v2

    .line 1678
    sub-float/2addr v1, v2

    .line 1679
    iget-object v9, v8, Ltb/l;->e:Landroid/graphics/RectF;

    .line 1680
    .line 1681
    iput v1, v9, Landroid/graphics/RectF;->bottom:F

    .line 1682
    .line 1683
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v2

    .line 1687
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1688
    .line 1689
    .line 1690
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 1691
    .line 1692
    .line 1693
    move-result v2

    .line 1694
    int-to-float v2, v2

    .line 1695
    sub-float/2addr v1, v2

    .line 1696
    iput v1, v9, Landroid/graphics/RectF;->top:F

    .line 1697
    .line 1698
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorAnimator()Lcc/a;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v1

    .line 1702
    check-cast v1, Ldc/c;

    .line 1703
    .line 1704
    iget-object v1, v1, Ldc/c;->c:Landroid/animation/ValueAnimator;

    .line 1705
    .line 1706
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 1707
    .line 1708
    .line 1709
    move-result-object v1

    .line 1710
    check-cast v1, Ljava/lang/Float;

    .line 1711
    .line 1712
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 1713
    .line 1714
    .line 1715
    move-result v1

    .line 1716
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 1717
    .line 1718
    .line 1719
    move-result v2

    .line 1720
    int-to-float v2, v2

    .line 1721
    sub-float v11, v1, v2

    .line 1722
    .line 1723
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getInsertSelectionWidth()F

    .line 1724
    .line 1725
    .line 1726
    move-result v1

    .line 1727
    div-float v1, v1, v27

    .line 1728
    .line 1729
    sub-float v1, v11, v1

    .line 1730
    .line 1731
    iput v1, v9, Landroid/graphics/RectF;->left:F

    .line 1732
    .line 1733
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getInsertSelectionWidth()F

    .line 1734
    .line 1735
    .line 1736
    move-result v1

    .line 1737
    div-float v1, v1, v27

    .line 1738
    .line 1739
    add-float/2addr v1, v11

    .line 1740
    iput v1, v9, Landroid/graphics/RectF;->right:F

    .line 1741
    .line 1742
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 1743
    .line 1744
    .line 1745
    move-result-object v1

    .line 1746
    iget-object v1, v1, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 1747
    .line 1748
    const/4 v2, 0x7

    .line 1749
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 1750
    .line 1751
    .line 1752
    move-result v1

    .line 1753
    invoke-virtual {v8, v0, v1, v9}, Ltb/l;->g(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 1754
    .line 1755
    .line 1756
    iget-object v1, v8, Ltb/l;->D:Lmb/j;

    .line 1757
    .line 1758
    iget-object v1, v1, Lmb/j;->c:Lmb/b;

    .line 1759
    .line 1760
    iget v2, v1, Lmb/b;->b:I

    .line 1761
    .line 1762
    iget v1, v1, Lmb/b;->c:I

    .line 1763
    .line 1764
    invoke-virtual {v8, v2, v1}, Ltb/l;->t(II)J

    .line 1765
    .line 1766
    .line 1767
    move-result-wide v1

    .line 1768
    shr-long v3, v1, v24

    .line 1769
    .line 1770
    long-to-int v4, v3

    .line 1771
    const/4 v3, 0x1

    .line 1772
    if-ne v4, v3, :cond_35

    .line 1773
    .line 1774
    iget v4, v9, Landroid/graphics/RectF;->top:F

    .line 1775
    .line 1776
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    .line 1777
    .line 1778
    .line 1779
    move-result v5

    .line 1780
    and-long v1, v1, v25

    .line 1781
    .line 1782
    long-to-int v2, v1

    .line 1783
    if-ne v2, v3, :cond_34

    .line 1784
    .line 1785
    const/4 v6, 0x1

    .line 1786
    goto :goto_1e

    .line 1787
    :cond_34
    const/4 v6, 0x0

    .line 1788
    :goto_1e
    move-object/from16 v1, p0

    .line 1789
    .line 1790
    move-object/from16 v2, p1

    .line 1791
    .line 1792
    move v3, v11

    .line 1793
    invoke-virtual/range {v1 .. v6}, Ltb/l;->f(Landroid/graphics/Canvas;FFFZ)V

    .line 1794
    .line 1795
    .line 1796
    :cond_35
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v1

    .line 1800
    invoke-virtual {v1}, Ltb/u;->m()Z

    .line 1801
    .line 1802
    .line 1803
    move-result v1

    .line 1804
    if-eqz v1, :cond_36

    .line 1805
    .line 1806
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->P()Z

    .line 1807
    .line 1808
    .line 1809
    move-result v1

    .line 1810
    if-nez v1, :cond_36

    .line 1811
    .line 1812
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getHandleStyle()Lcc/e;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v1

    .line 1816
    iget v5, v9, Landroid/graphics/RectF;->bottom:F

    .line 1817
    .line 1818
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 1819
    .line 1820
    .line 1821
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v2

    .line 1825
    iget-object v2, v2, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 1826
    .line 1827
    const/16 v3, 0x8

    .line 1828
    .line 1829
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 1830
    .line 1831
    .line 1832
    move-result v6

    .line 1833
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getInsertHandleDescriptor()Lcc/d;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v7

    .line 1837
    check-cast v1, Ldc/b;

    .line 1838
    .line 1839
    const/4 v3, 0x0

    .line 1840
    move-object/from16 v2, p1

    .line 1841
    .line 1842
    move v4, v11

    .line 1843
    invoke-virtual/range {v1 .. v7}, Ldc/b;->a(Landroid/graphics/Canvas;IFFILcc/d;)V

    .line 1844
    .line 1845
    .line 1846
    :cond_36
    :goto_1f
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1847
    .line 1848
    iget-boolean v2, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->V:Z

    .line 1849
    .line 1850
    if-eqz v2, :cond_3c

    .line 1851
    .line 1852
    if-nez v17, :cond_3c

    .line 1853
    .line 1854
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginLeft()F

    .line 1855
    .line 1856
    .line 1857
    move-result v1

    .line 1858
    add-float v1, v1, v16

    .line 1859
    .line 1860
    iget-object v2, v12, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 1861
    .line 1862
    const/4 v3, 0x3

    .line 1863
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 1864
    .line 1865
    .line 1866
    move-result v2

    .line 1867
    const/4 v3, 0x0

    .line 1868
    invoke-virtual {v8, v0, v3, v1, v2}, Ltb/l;->k(Landroid/graphics/Canvas;FFI)V

    .line 1869
    .line 1870
    .line 1871
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1872
    .line 1873
    .line 1874
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1875
    .line 1876
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 1877
    .line 1878
    .line 1879
    move-result v1

    .line 1880
    int-to-float v1, v1

    .line 1881
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1882
    .line 1883
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 1884
    .line 1885
    .line 1886
    move-result v2

    .line 1887
    int-to-float v2, v2

    .line 1888
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1889
    .line 1890
    .line 1891
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1892
    .line 1893
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v1

    .line 1897
    iget-object v1, v1, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 1898
    .line 1899
    const/4 v2, 0x2

    .line 1900
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 1901
    .line 1902
    .line 1903
    move-result v9

    .line 1904
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1905
    .line 1906
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 1907
    .line 1908
    .line 1909
    move-result-object v1

    .line 1910
    iget-object v1, v1, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 1911
    .line 1912
    const/16 v2, 0x9

    .line 1913
    .line 1914
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 1915
    .line 1916
    .line 1917
    move-result v1

    .line 1918
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1919
    .line 1920
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorAnimator()Lcc/a;

    .line 1921
    .line 1922
    .line 1923
    move-result-object v2

    .line 1924
    check-cast v2, Ldc/c;

    .line 1925
    .line 1926
    invoke-virtual {v2}, Ldc/c;->b()Z

    .line 1927
    .line 1928
    .line 1929
    move-result v2

    .line 1930
    if-eqz v2, :cond_37

    .line 1931
    .line 1932
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1933
    .line 1934
    iget-boolean v3, v2, Lio/github/rosemoe/sora/widget/CodeEditor;->N0:Z

    .line 1935
    .line 1936
    if-eqz v3, :cond_37

    .line 1937
    .line 1938
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->N()Z

    .line 1939
    .line 1940
    .line 1941
    move-result v2

    .line 1942
    if-eqz v2, :cond_37

    .line 1943
    .line 1944
    iget-object v2, v8, Ltb/l;->e:Landroid/graphics/RectF;

    .line 1945
    .line 1946
    iget-object v3, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1947
    .line 1948
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorAnimator()Lcc/a;

    .line 1949
    .line 1950
    .line 1951
    move-result-object v3

    .line 1952
    check-cast v3, Ldc/c;

    .line 1953
    .line 1954
    iget-object v3, v3, Ldc/c;->e:Landroid/animation/ValueAnimator;

    .line 1955
    .line 1956
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v3

    .line 1960
    check-cast v3, Ljava/lang/Float;

    .line 1961
    .line 1962
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 1963
    .line 1964
    .line 1965
    move-result v3

    .line 1966
    iget-object v4, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1967
    .line 1968
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 1969
    .line 1970
    .line 1971
    move-result v4

    .line 1972
    int-to-float v4, v4

    .line 1973
    sub-float/2addr v3, v4

    .line 1974
    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1975
    .line 1976
    iget-object v2, v8, Ltb/l;->e:Landroid/graphics/RectF;

    .line 1977
    .line 1978
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1979
    .line 1980
    iget-object v4, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 1981
    .line 1982
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getCursorAnimator()Lcc/a;

    .line 1983
    .line 1984
    .line 1985
    move-result-object v4

    .line 1986
    check-cast v4, Ldc/c;

    .line 1987
    .line 1988
    iget-object v4, v4, Ldc/c;->f:Landroid/animation/ValueAnimator;

    .line 1989
    .line 1990
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 1991
    .line 1992
    .line 1993
    move-result-object v4

    .line 1994
    check-cast v4, Ljava/lang/Float;

    .line 1995
    .line 1996
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 1997
    .line 1998
    .line 1999
    move-result v4

    .line 2000
    sub-float/2addr v3, v4

    .line 2001
    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 2002
    .line 2003
    iget-object v2, v8, Ltb/l;->e:Landroid/graphics/RectF;

    .line 2004
    .line 2005
    const/4 v3, 0x0

    .line 2006
    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 2007
    .line 2008
    iget-object v3, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2009
    .line 2010
    invoke-virtual {v3}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginRight()F

    .line 2011
    .line 2012
    .line 2013
    move-result v3

    .line 2014
    sub-float v3, v15, v3

    .line 2015
    .line 2016
    float-to-int v3, v3

    .line 2017
    int-to-float v3, v3

    .line 2018
    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 2019
    .line 2020
    iget-object v2, v8, Ltb/l;->e:Landroid/graphics/RectF;

    .line 2021
    .line 2022
    invoke-virtual {v8, v0, v1, v2}, Ltb/l;->g(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 2023
    .line 2024
    .line 2025
    :cond_37
    move-object/from16 v3, v33

    .line 2026
    .line 2027
    const/4 v2, 0x0

    .line 2028
    :goto_20
    iget v4, v3, La0/n;->b:I

    .line 2029
    .line 2030
    if-ge v2, v4, :cond_38

    .line 2031
    .line 2032
    invoke-virtual {v3, v2}, La0/n;->b(I)I

    .line 2033
    .line 2034
    .line 2035
    move-result v4

    .line 2036
    iget-object v5, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2037
    .line 2038
    invoke-virtual {v5}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginRight()F

    .line 2039
    .line 2040
    .line 2041
    move-result v5

    .line 2042
    sub-float v5, v15, v5

    .line 2043
    .line 2044
    iget-object v6, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2045
    .line 2046
    invoke-virtual {v6}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 2047
    .line 2048
    .line 2049
    move-result v6

    .line 2050
    int-to-float v6, v6

    .line 2051
    add-float/2addr v5, v6

    .line 2052
    float-to-int v5, v5

    .line 2053
    invoke-virtual {v8, v0, v1, v4, v5}, Ltb/l;->m(Landroid/graphics/Canvas;III)V

    .line 2054
    .line 2055
    .line 2056
    const/4 v4, 0x1

    .line 2057
    add-int/2addr v2, v4

    .line 2058
    goto :goto_20

    .line 2059
    :cond_38
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2060
    .line 2061
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginRight()F

    .line 2062
    .line 2063
    .line 2064
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2065
    .line 2066
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 2067
    .line 2068
    .line 2069
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2070
    .line 2071
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getFirstVisibleLine()I

    .line 2072
    .line 2073
    .line 2074
    move-result v2

    .line 2075
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getLastVisibleLine()I

    .line 2076
    .line 2077
    .line 2078
    move-result v3

    .line 2079
    :goto_21
    if-gt v2, v3, :cond_39

    .line 2080
    .line 2081
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getStyles()Ljb/d;

    .line 2082
    .line 2083
    .line 2084
    const/4 v4, 0x1

    .line 2085
    add-int/2addr v2, v4

    .line 2086
    goto :goto_21

    .line 2087
    :cond_39
    const/4 v4, 0x1

    .line 2088
    invoke-virtual/range {p0 .. p0}, Ltb/l;->z()V

    .line 2089
    .line 2090
    .line 2091
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2092
    .line 2093
    .line 2094
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2095
    .line 2096
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDividerMarginLeft()F

    .line 2097
    .line 2098
    .line 2099
    move-result v1

    .line 2100
    add-float v1, v1, v16

    .line 2101
    .line 2102
    iget-object v2, v12, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 2103
    .line 2104
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 2105
    .line 2106
    .line 2107
    move-result v2

    .line 2108
    invoke-virtual {v8, v0, v1, v2}, Ltb/l;->h(Landroid/graphics/Canvas;FI)V

    .line 2109
    .line 2110
    .line 2111
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2112
    .line 2113
    .line 2114
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2115
    .line 2116
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 2117
    .line 2118
    .line 2119
    move-result v1

    .line 2120
    int-to-float v1, v1

    .line 2121
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2122
    .line 2123
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 2124
    .line 2125
    .line 2126
    move-result v2

    .line 2127
    int-to-float v2, v2

    .line 2128
    const/4 v3, 0x0

    .line 2129
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2130
    .line 2131
    .line 2132
    move-object/from16 v13, v36

    .line 2133
    .line 2134
    const/4 v11, 0x0

    .line 2135
    :goto_22
    iget v1, v13, Lsb/e;->b:I

    .line 2136
    .line 2137
    if-ge v11, v1, :cond_3b

    .line 2138
    .line 2139
    invoke-virtual {v13, v11}, Lsb/e;->c(I)J

    .line 2140
    .line 2141
    .line 2142
    move-result-wide v1

    .line 2143
    shr-long v3, v1, v24

    .line 2144
    .line 2145
    long-to-int v3, v3

    .line 2146
    and-long v1, v1, v25

    .line 2147
    .line 2148
    long-to-int v4, v1

    .line 2149
    move/from16 v14, v34

    .line 2150
    .line 2151
    if-ne v3, v14, :cond_3a

    .line 2152
    .line 2153
    iget-object v1, v12, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 2154
    .line 2155
    const/16 v15, 0x2d

    .line 2156
    .line 2157
    invoke-virtual {v1, v15}, Landroid/util/SparseIntArray;->get(I)I

    .line 2158
    .line 2159
    .line 2160
    move-result v1

    .line 2161
    move v7, v1

    .line 2162
    goto :goto_23

    .line 2163
    :cond_3a
    const/16 v15, 0x2d

    .line 2164
    .line 2165
    move v7, v9

    .line 2166
    :goto_23
    const/4 v5, 0x0

    .line 2167
    move-object/from16 v1, p0

    .line 2168
    .line 2169
    move-object/from16 v2, p1

    .line 2170
    .line 2171
    move/from16 v6, v35

    .line 2172
    .line 2173
    invoke-virtual/range {v1 .. v7}, Ltb/l;->j(Landroid/graphics/Canvas;IIFFI)V

    .line 2174
    .line 2175
    .line 2176
    const/4 v1, 0x1

    .line 2177
    add-int/2addr v11, v1

    .line 2178
    move/from16 v34, v14

    .line 2179
    .line 2180
    goto :goto_22

    .line 2181
    :cond_3b
    const/4 v1, 0x1

    .line 2182
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2183
    .line 2184
    .line 2185
    goto :goto_24

    .line 2186
    :cond_3c
    const/4 v1, 0x1

    .line 2187
    :goto_24
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2188
    .line 2189
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 2190
    .line 2191
    .line 2192
    move-result-object v2

    .line 2193
    iget-object v2, v2, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 2194
    .line 2195
    const/4 v3, 0x2

    .line 2196
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 2197
    .line 2198
    .line 2199
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2200
    .line 2201
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 2202
    .line 2203
    .line 2204
    iget-object v3, v8, Ltb/l;->I:Lxb/c;

    .line 2205
    .line 2206
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2207
    .line 2208
    .line 2209
    iget-boolean v4, v3, Lxb/c;->c:Z

    .line 2210
    .line 2211
    if-eqz v4, :cond_3d

    .line 2212
    .line 2213
    goto :goto_25

    .line 2214
    :cond_3d
    iget-object v4, v3, Lxb/c;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2215
    .line 2216
    invoke-virtual {v4}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 2217
    .line 2218
    .line 2219
    move-result-object v4

    .line 2220
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2221
    .line 2222
    .line 2223
    iget-object v4, v3, Lxb/c;->b:Landroid/graphics/Bitmap;

    .line 2224
    .line 2225
    if-eqz v4, :cond_3e

    .line 2226
    .line 2227
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 2228
    .line 2229
    .line 2230
    :cond_3e
    const/4 v4, 0x0

    .line 2231
    iput-object v4, v3, Lxb/c;->b:Landroid/graphics/Bitmap;

    .line 2232
    .line 2233
    :goto_25
    iget-object v3, v8, Ltb/l;->h:Landroid/graphics/RectF;

    .line 2234
    .line 2235
    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 2236
    .line 2237
    .line 2238
    iget-object v4, v8, Ltb/l;->i:Landroid/graphics/RectF;

    .line 2239
    .line 2240
    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    .line 2241
    .line 2242
    .line 2243
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 2244
    .line 2245
    .line 2246
    move-result-object v5

    .line 2247
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2248
    .line 2249
    .line 2250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2251
    .line 2252
    .line 2253
    move-result-wide v6

    .line 2254
    iget-wide v11, v5, Ltb/u;->p:J

    .line 2255
    .line 2256
    sub-long/2addr v6, v11

    .line 2257
    const-wide/16 v11, 0xc80

    .line 2258
    .line 2259
    cmp-long v9, v6, v11

    .line 2260
    .line 2261
    if-ltz v9, :cond_41

    .line 2262
    .line 2263
    iget-boolean v6, v5, Ltb/u;->r:Z

    .line 2264
    .line 2265
    if-nez v6, :cond_41

    .line 2266
    .line 2267
    iget-boolean v5, v5, Ltb/u;->s:Z

    .line 2268
    .line 2269
    if-eqz v5, :cond_3f

    .line 2270
    .line 2271
    goto :goto_26

    .line 2272
    :cond_3f
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->P()Z

    .line 2273
    .line 2274
    .line 2275
    move-result v5

    .line 2276
    if-eqz v5, :cond_40

    .line 2277
    .line 2278
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 2279
    .line 2280
    .line 2281
    move-result-object v5

    .line 2282
    iget-boolean v5, v5, Ltb/e;->G:Z

    .line 2283
    .line 2284
    if-eqz v5, :cond_40

    .line 2285
    .line 2286
    goto :goto_26

    .line 2287
    :cond_40
    const/4 v5, 0x0

    .line 2288
    goto :goto_27

    .line 2289
    :cond_41
    :goto_26
    const/4 v5, 0x1

    .line 2290
    :goto_27
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 2291
    .line 2292
    .line 2293
    move-result-object v6

    .line 2294
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2295
    .line 2296
    .line 2297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2298
    .line 2299
    .line 2300
    move-result-wide v13

    .line 2301
    move-object v7, v2

    .line 2302
    iget-wide v1, v6, Ltb/u;->p:J

    .line 2303
    .line 2304
    sub-long/2addr v13, v1

    .line 2305
    const-wide/16 v15, 0xbb8

    .line 2306
    .line 2307
    cmp-long v2, v13, v15

    .line 2308
    .line 2309
    if-ltz v2, :cond_44

    .line 2310
    .line 2311
    iget-boolean v2, v6, Ltb/u;->r:Z

    .line 2312
    .line 2313
    if-nez v2, :cond_44

    .line 2314
    .line 2315
    iget-boolean v2, v6, Ltb/u;->s:Z

    .line 2316
    .line 2317
    if-eqz v2, :cond_42

    .line 2318
    .line 2319
    goto :goto_28

    .line 2320
    :cond_42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2321
    .line 2322
    .line 2323
    move-result-wide v13

    .line 2324
    iget-wide v1, v6, Ltb/u;->p:J

    .line 2325
    .line 2326
    sub-long/2addr v13, v1

    .line 2327
    cmp-long v1, v13, v15

    .line 2328
    .line 2329
    if-ltz v1, :cond_43

    .line 2330
    .line 2331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2332
    .line 2333
    .line 2334
    move-result-wide v1

    .line 2335
    iget-wide v13, v6, Ltb/u;->p:J

    .line 2336
    .line 2337
    sub-long/2addr v1, v13

    .line 2338
    cmp-long v13, v1, v11

    .line 2339
    .line 2340
    if-gez v13, :cond_43

    .line 2341
    .line 2342
    iget-object v1, v6, Ltb/u;->a:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2343
    .line 2344
    invoke-virtual {v1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 2345
    .line 2346
    .line 2347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2348
    .line 2349
    .line 2350
    move-result-wide v1

    .line 2351
    iget-wide v11, v6, Ltb/u;->p:J

    .line 2352
    .line 2353
    sub-long/2addr v1, v11

    .line 2354
    sub-long/2addr v1, v15

    .line 2355
    long-to-float v1, v1

    .line 2356
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2357
    .line 2358
    mul-float v1, v1, v2

    .line 2359
    .line 2360
    const/high16 v2, 0x43480000    # 200.0f

    .line 2361
    .line 2362
    div-float/2addr v1, v2

    .line 2363
    goto :goto_29

    .line 2364
    :cond_43
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2365
    .line 2366
    goto :goto_29

    .line 2367
    :cond_44
    :goto_28
    const/4 v1, 0x0

    .line 2368
    :goto_29
    if-eqz v5, :cond_45

    .line 2369
    .line 2370
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->P()Z

    .line 2371
    .line 2372
    .line 2373
    move-result v2

    .line 2374
    if-eqz v2, :cond_45

    .line 2375
    .line 2376
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 2377
    .line 2378
    .line 2379
    move-result-object v2

    .line 2380
    iget-boolean v2, v2, Ltb/e;->G:Z

    .line 2381
    .line 2382
    if-eqz v2, :cond_45

    .line 2383
    .line 2384
    const/4 v1, 0x0

    .line 2385
    :cond_45
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 2386
    .line 2387
    .line 2388
    move-result v2

    .line 2389
    const/high16 v6, 0x41200000    # 10.0f

    .line 2390
    .line 2391
    mul-float v2, v2, v6

    .line 2392
    .line 2393
    sget-object v11, Ltb/l;->K:[I

    .line 2394
    .line 2395
    sget-object v12, Ltb/l;->J:[I

    .line 2396
    .line 2397
    iget-object v13, v8, Ltb/l;->e:Landroid/graphics/RectF;

    .line 2398
    .line 2399
    const/16 v16, 0xc

    .line 2400
    .line 2401
    if-eqz v5, :cond_4c

    .line 2402
    .line 2403
    iget-boolean v10, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->P0:Z

    .line 2404
    .line 2405
    if-eqz v10, :cond_4c

    .line 2406
    .line 2407
    iget-boolean v10, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 2408
    .line 2409
    if-nez v10, :cond_4c

    .line 2410
    .line 2411
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxX()I

    .line 2412
    .line 2413
    .line 2414
    move-result v10

    .line 2415
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 2416
    .line 2417
    .line 2418
    move-result v19

    .line 2419
    const/16 v21, 0x3

    .line 2420
    .line 2421
    mul-int/lit8 v19, v19, 0x3

    .line 2422
    .line 2423
    const/16 v18, 0x4

    .line 2424
    .line 2425
    div-int/lit8 v15, v19, 0x4

    .line 2426
    .line 2427
    if-le v10, v15, :cond_4c

    .line 2428
    .line 2429
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2430
    .line 2431
    .line 2432
    mul-float v10, v2, v1

    .line 2433
    .line 2434
    const/4 v15, 0x0

    .line 2435
    invoke-virtual {v0, v15, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2436
    .line 2437
    .line 2438
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 2439
    .line 2440
    .line 2441
    move-result-object v10

    .line 2442
    iget-boolean v10, v10, Ltb/u;->s:Z

    .line 2443
    .line 2444
    if-eqz v10, :cond_47

    .line 2445
    .line 2446
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 2447
    .line 2448
    .line 2449
    move-result v10

    .line 2450
    int-to-float v10, v10

    .line 2451
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 2452
    .line 2453
    .line 2454
    move-result v15

    .line 2455
    mul-float v15, v15, v6

    .line 2456
    .line 2457
    sub-float/2addr v10, v15

    .line 2458
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 2459
    .line 2460
    .line 2461
    move-result v15

    .line 2462
    int-to-float v15, v15

    .line 2463
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 2464
    .line 2465
    .line 2466
    move-result v6

    .line 2467
    int-to-float v6, v6

    .line 2468
    const/4 v14, 0x0

    .line 2469
    invoke-virtual {v13, v14, v10, v15, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2470
    .line 2471
    .line 2472
    iget-object v6, v8, Ltb/l;->t:Landroid/graphics/drawable/Drawable;

    .line 2473
    .line 2474
    if-eqz v6, :cond_46

    .line 2475
    .line 2476
    iget v10, v13, Landroid/graphics/RectF;->left:F

    .line 2477
    .line 2478
    float-to-int v10, v10

    .line 2479
    iget v14, v13, Landroid/graphics/RectF;->top:F

    .line 2480
    .line 2481
    float-to-int v14, v14

    .line 2482
    iget v15, v13, Landroid/graphics/RectF;->right:F

    .line 2483
    .line 2484
    float-to-int v15, v15

    .line 2485
    iget v9, v13, Landroid/graphics/RectF;->bottom:F

    .line 2486
    .line 2487
    float-to-int v9, v9

    .line 2488
    invoke-virtual {v6, v10, v14, v15, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2489
    .line 2490
    .line 2491
    iget-object v6, v8, Ltb/l;->t:Landroid/graphics/drawable/Drawable;

    .line 2492
    .line 2493
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2494
    .line 2495
    .line 2496
    goto :goto_2a

    .line 2497
    :cond_46
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 2498
    .line 2499
    .line 2500
    move-result-object v6

    .line 2501
    iget-object v6, v6, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 2502
    .line 2503
    const/16 v9, 0xd

    .line 2504
    .line 2505
    invoke-virtual {v6, v9}, Landroid/util/SparseIntArray;->get(I)I

    .line 2506
    .line 2507
    .line 2508
    move-result v6

    .line 2509
    invoke-virtual {v8, v0, v6, v13}, Ltb/l;->g(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 2510
    .line 2511
    .line 2512
    :cond_47
    :goto_2a
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 2513
    .line 2514
    .line 2515
    move-result v6

    .line 2516
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxX()I

    .line 2517
    .line 2518
    .line 2519
    move-result v9

    .line 2520
    int-to-float v9, v9

    .line 2521
    int-to-float v6, v6

    .line 2522
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 2523
    .line 2524
    .line 2525
    move-result v10

    .line 2526
    int-to-float v10, v10

    .line 2527
    add-float/2addr v10, v9

    .line 2528
    div-float/2addr v6, v10

    .line 2529
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 2530
    .line 2531
    .line 2532
    move-result v10

    .line 2533
    int-to-float v10, v10

    .line 2534
    mul-float v6, v6, v10

    .line 2535
    .line 2536
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 2537
    .line 2538
    .line 2539
    move-result v10

    .line 2540
    const/high16 v14, 0x42700000    # 60.0f

    .line 2541
    .line 2542
    mul-float v10, v10, v14

    .line 2543
    .line 2544
    cmpg-float v14, v6, v10

    .line 2545
    .line 2546
    if-gtz v14, :cond_48

    .line 2547
    .line 2548
    move v6, v10

    .line 2549
    :cond_48
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetX()I

    .line 2550
    .line 2551
    .line 2552
    move-result v10

    .line 2553
    int-to-float v10, v10

    .line 2554
    div-float/2addr v10, v9

    .line 2555
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 2556
    .line 2557
    .line 2558
    move-result v9

    .line 2559
    int-to-float v9, v9

    .line 2560
    sub-float/2addr v9, v6

    .line 2561
    mul-float v9, v9, v10

    .line 2562
    .line 2563
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 2564
    .line 2565
    .line 2566
    move-result v10

    .line 2567
    int-to-float v10, v10

    .line 2568
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 2569
    .line 2570
    .line 2571
    move-result v14

    .line 2572
    const/high16 v15, 0x41200000    # 10.0f

    .line 2573
    .line 2574
    mul-float v14, v14, v15

    .line 2575
    .line 2576
    sub-float/2addr v10, v14

    .line 2577
    iput v10, v13, Landroid/graphics/RectF;->top:F

    .line 2578
    .line 2579
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 2580
    .line 2581
    .line 2582
    move-result v10

    .line 2583
    int-to-float v10, v10

    .line 2584
    iput v10, v13, Landroid/graphics/RectF;->bottom:F

    .line 2585
    .line 2586
    add-float/2addr v6, v9

    .line 2587
    iput v6, v13, Landroid/graphics/RectF;->right:F

    .line 2588
    .line 2589
    iput v9, v13, Landroid/graphics/RectF;->left:F

    .line 2590
    .line 2591
    invoke-virtual {v4, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2592
    .line 2593
    .line 2594
    iget-object v4, v8, Ltb/l;->s:Landroid/graphics/drawable/Drawable;

    .line 2595
    .line 2596
    if-eqz v4, :cond_4a

    .line 2597
    .line 2598
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 2599
    .line 2600
    .line 2601
    move-result-object v6

    .line 2602
    iget-boolean v6, v6, Ltb/u;->s:Z

    .line 2603
    .line 2604
    if-eqz v6, :cond_49

    .line 2605
    .line 2606
    move-object v6, v12

    .line 2607
    goto :goto_2b

    .line 2608
    :cond_49
    move-object v6, v11

    .line 2609
    :goto_2b
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2610
    .line 2611
    .line 2612
    iget-object v4, v8, Ltb/l;->s:Landroid/graphics/drawable/Drawable;

    .line 2613
    .line 2614
    iget v6, v13, Landroid/graphics/RectF;->left:F

    .line 2615
    .line 2616
    float-to-int v6, v6

    .line 2617
    iget v9, v13, Landroid/graphics/RectF;->top:F

    .line 2618
    .line 2619
    float-to-int v9, v9

    .line 2620
    iget v10, v13, Landroid/graphics/RectF;->right:F

    .line 2621
    .line 2622
    float-to-int v10, v10

    .line 2623
    iget v14, v13, Landroid/graphics/RectF;->bottom:F

    .line 2624
    .line 2625
    float-to-int v14, v14

    .line 2626
    invoke-virtual {v4, v6, v9, v10, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2627
    .line 2628
    .line 2629
    iget-object v4, v8, Ltb/l;->s:Landroid/graphics/drawable/Drawable;

    .line 2630
    .line 2631
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2632
    .line 2633
    .line 2634
    goto :goto_2d

    .line 2635
    :cond_4a
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 2636
    .line 2637
    .line 2638
    move-result-object v4

    .line 2639
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 2640
    .line 2641
    .line 2642
    move-result-object v6

    .line 2643
    iget-boolean v6, v6, Ltb/u;->s:Z

    .line 2644
    .line 2645
    if-eqz v6, :cond_4b

    .line 2646
    .line 2647
    const/16 v6, 0xc

    .line 2648
    .line 2649
    goto :goto_2c

    .line 2650
    :cond_4b
    const/16 v6, 0xb

    .line 2651
    .line 2652
    :goto_2c
    iget-object v4, v4, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 2653
    .line 2654
    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    .line 2655
    .line 2656
    .line 2657
    move-result v4

    .line 2658
    invoke-virtual {v8, v0, v4, v13}, Ltb/l;->g(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 2659
    .line 2660
    .line 2661
    :goto_2d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2662
    .line 2663
    .line 2664
    :cond_4c
    if-eqz v5, :cond_53

    .line 2665
    .line 2666
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 2667
    .line 2668
    .line 2669
    move-result-object v4

    .line 2670
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2671
    .line 2672
    .line 2673
    iget-boolean v4, v7, Lio/github/rosemoe/sora/widget/CodeEditor;->O0:Z

    .line 2674
    .line 2675
    if-eqz v4, :cond_53

    .line 2676
    .line 2677
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxY()I

    .line 2678
    .line 2679
    .line 2680
    move-result v4

    .line 2681
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 2682
    .line 2683
    .line 2684
    move-result v5

    .line 2685
    const/4 v6, 0x2

    .line 2686
    div-int/2addr v5, v6

    .line 2687
    if-le v4, v5, :cond_53

    .line 2688
    .line 2689
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2690
    .line 2691
    .line 2692
    mul-float v2, v2, v1

    .line 2693
    .line 2694
    const/4 v1, 0x0

    .line 2695
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2696
    .line 2697
    .line 2698
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 2699
    .line 2700
    .line 2701
    move-result-object v1

    .line 2702
    iget-boolean v1, v1, Ltb/u;->r:Z

    .line 2703
    .line 2704
    if-eqz v1, :cond_4e

    .line 2705
    .line 2706
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 2707
    .line 2708
    .line 2709
    move-result v1

    .line 2710
    int-to-float v1, v1

    .line 2711
    iput v1, v13, Landroid/graphics/RectF;->right:F

    .line 2712
    .line 2713
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 2714
    .line 2715
    .line 2716
    move-result v1

    .line 2717
    int-to-float v1, v1

    .line 2718
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 2719
    .line 2720
    .line 2721
    move-result v2

    .line 2722
    const/high16 v4, 0x41200000    # 10.0f

    .line 2723
    .line 2724
    mul-float v2, v2, v4

    .line 2725
    .line 2726
    sub-float/2addr v1, v2

    .line 2727
    iput v1, v13, Landroid/graphics/RectF;->left:F

    .line 2728
    .line 2729
    const/4 v1, 0x0

    .line 2730
    iput v1, v13, Landroid/graphics/RectF;->top:F

    .line 2731
    .line 2732
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 2733
    .line 2734
    .line 2735
    move-result v1

    .line 2736
    int-to-float v1, v1

    .line 2737
    iput v1, v13, Landroid/graphics/RectF;->bottom:F

    .line 2738
    .line 2739
    iget-object v2, v8, Ltb/l;->v:Landroid/graphics/drawable/Drawable;

    .line 2740
    .line 2741
    if-eqz v2, :cond_4d

    .line 2742
    .line 2743
    iget v4, v13, Landroid/graphics/RectF;->left:F

    .line 2744
    .line 2745
    float-to-int v4, v4

    .line 2746
    iget v5, v13, Landroid/graphics/RectF;->top:F

    .line 2747
    .line 2748
    float-to-int v5, v5

    .line 2749
    iget v6, v13, Landroid/graphics/RectF;->right:F

    .line 2750
    .line 2751
    float-to-int v6, v6

    .line 2752
    float-to-int v1, v1

    .line 2753
    invoke-virtual {v2, v4, v5, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2754
    .line 2755
    .line 2756
    iget-object v1, v8, Ltb/l;->v:Landroid/graphics/drawable/Drawable;

    .line 2757
    .line 2758
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2759
    .line 2760
    .line 2761
    goto :goto_2e

    .line 2762
    :cond_4d
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 2763
    .line 2764
    .line 2765
    move-result-object v1

    .line 2766
    iget-object v1, v1, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 2767
    .line 2768
    const/16 v2, 0xd

    .line 2769
    .line 2770
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 2771
    .line 2772
    .line 2773
    move-result v1

    .line 2774
    invoke-virtual {v8, v0, v1, v13}, Ltb/l;->g(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 2775
    .line 2776
    .line 2777
    :cond_4e
    :goto_2e
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 2778
    .line 2779
    .line 2780
    move-result v1

    .line 2781
    const/high16 v2, 0x41200000    # 10.0f

    .line 2782
    .line 2783
    mul-float v1, v1, v2

    .line 2784
    .line 2785
    iget-object v2, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2786
    .line 2787
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 2788
    .line 2789
    .line 2790
    move-result v4

    .line 2791
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxY()I

    .line 2792
    .line 2793
    .line 2794
    move-result v5

    .line 2795
    add-int/2addr v5, v4

    .line 2796
    int-to-float v5, v5

    .line 2797
    int-to-float v4, v4

    .line 2798
    div-float v5, v4, v5

    .line 2799
    .line 2800
    mul-float v5, v5, v4

    .line 2801
    .line 2802
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 2803
    .line 2804
    .line 2805
    move-result v6

    .line 2806
    const/high16 v9, 0x42700000    # 60.0f

    .line 2807
    .line 2808
    mul-float v6, v6, v9

    .line 2809
    .line 2810
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    .line 2811
    .line 2812
    .line 2813
    move-result v5

    .line 2814
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getOffsetY()I

    .line 2815
    .line 2816
    .line 2817
    move-result v6

    .line 2818
    int-to-float v6, v6

    .line 2819
    const/high16 v9, 0x3f800000    # 1.0f

    .line 2820
    .line 2821
    mul-float v6, v6, v9

    .line 2822
    .line 2823
    invoke-virtual {v2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxY()I

    .line 2824
    .line 2825
    .line 2826
    move-result v9

    .line 2827
    int-to-float v9, v9

    .line 2828
    div-float/2addr v6, v9

    .line 2829
    sub-float/2addr v4, v5

    .line 2830
    mul-float v4, v4, v6

    .line 2831
    .line 2832
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 2833
    .line 2834
    .line 2835
    move-result v6

    .line 2836
    int-to-float v6, v6

    .line 2837
    iput v6, v13, Landroid/graphics/RectF;->right:F

    .line 2838
    .line 2839
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 2840
    .line 2841
    .line 2842
    move-result v2

    .line 2843
    int-to-float v2, v2

    .line 2844
    sub-float/2addr v2, v1

    .line 2845
    iput v2, v13, Landroid/graphics/RectF;->left:F

    .line 2846
    .line 2847
    iput v4, v13, Landroid/graphics/RectF;->top:F

    .line 2848
    .line 2849
    add-float/2addr v4, v5

    .line 2850
    iput v4, v13, Landroid/graphics/RectF;->bottom:F

    .line 2851
    .line 2852
    invoke-virtual {v3, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2853
    .line 2854
    .line 2855
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 2856
    .line 2857
    .line 2858
    move-result-object v1

    .line 2859
    iget-boolean v1, v1, Ltb/u;->r:Z

    .line 2860
    .line 2861
    if-eqz v1, :cond_4f

    .line 2862
    .line 2863
    iget v1, v13, Landroid/graphics/RectF;->top:F

    .line 2864
    .line 2865
    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    .line 2866
    .line 2867
    .line 2868
    move-result v2

    .line 2869
    const/high16 v4, 0x41f00000    # 30.0f

    .line 2870
    .line 2871
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getDpUnit()F

    .line 2872
    .line 2873
    .line 2874
    move-result v5

    .line 2875
    mul-float v5, v5, v4

    .line 2876
    .line 2877
    invoke-virtual {v8, v0, v1, v2, v5}, Ltb/l;->i(Landroid/graphics/Canvas;FFF)V

    .line 2878
    .line 2879
    .line 2880
    :cond_4f
    iget-object v1, v8, Ltb/l;->u:Landroid/graphics/drawable/Drawable;

    .line 2881
    .line 2882
    if-eqz v1, :cond_51

    .line 2883
    .line 2884
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 2885
    .line 2886
    .line 2887
    move-result-object v2

    .line 2888
    iget-boolean v2, v2, Ltb/u;->r:Z

    .line 2889
    .line 2890
    if-eqz v2, :cond_50

    .line 2891
    .line 2892
    move-object v11, v12

    .line 2893
    :cond_50
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2894
    .line 2895
    .line 2896
    iget-object v1, v8, Ltb/l;->u:Landroid/graphics/drawable/Drawable;

    .line 2897
    .line 2898
    iget v2, v3, Landroid/graphics/RectF;->left:F

    .line 2899
    .line 2900
    float-to-int v2, v2

    .line 2901
    iget v4, v3, Landroid/graphics/RectF;->top:F

    .line 2902
    .line 2903
    float-to-int v4, v4

    .line 2904
    iget v5, v3, Landroid/graphics/RectF;->right:F

    .line 2905
    .line 2906
    float-to-int v5, v5

    .line 2907
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 2908
    .line 2909
    float-to-int v3, v3

    .line 2910
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2911
    .line 2912
    .line 2913
    iget-object v1, v8, Ltb/l;->u:Landroid/graphics/drawable/Drawable;

    .line 2914
    .line 2915
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2916
    .line 2917
    .line 2918
    goto :goto_30

    .line 2919
    :cond_51
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getColorScheme()Lzb/a;

    .line 2920
    .line 2921
    .line 2922
    move-result-object v1

    .line 2923
    invoke-virtual {v7}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 2924
    .line 2925
    .line 2926
    move-result-object v2

    .line 2927
    iget-boolean v2, v2, Ltb/u;->r:Z

    .line 2928
    .line 2929
    if-eqz v2, :cond_52

    .line 2930
    .line 2931
    const/16 v15, 0xc

    .line 2932
    .line 2933
    goto :goto_2f

    .line 2934
    :cond_52
    const/16 v15, 0xb

    .line 2935
    .line 2936
    :goto_2f
    iget-object v1, v1, Lzb/a;->a:Landroid/util/SparseIntArray;

    .line 2937
    .line 2938
    invoke-virtual {v1, v15}, Landroid/util/SparseIntArray;->get(I)I

    .line 2939
    .line 2940
    .line 2941
    move-result v1

    .line 2942
    invoke-virtual {v8, v0, v1, v13}, Ltb/l;->g(Landroid/graphics/Canvas;ILandroid/graphics/RectF;)V

    .line 2943
    .line 2944
    .line 2945
    :goto_30
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2946
    .line 2947
    .line 2948
    :cond_53
    iget-object v1, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2949
    .line 2950
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getVerticalEdgeEffect()Landroid/widget/EdgeEffect;

    .line 2951
    .line 2952
    .line 2953
    move-result-object v2

    .line 2954
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getHorizontalEdgeEffect()Landroid/widget/EdgeEffect;

    .line 2955
    .line 2956
    .line 2957
    move-result-object v3

    .line 2958
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 2959
    .line 2960
    .line 2961
    move-result v4

    .line 2962
    if-nez v4, :cond_55

    .line 2963
    .line 2964
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 2965
    .line 2966
    .line 2967
    move-result-object v4

    .line 2968
    iget-boolean v4, v4, Ltb/u;->i:Z

    .line 2969
    .line 2970
    if-eqz v4, :cond_54

    .line 2971
    .line 2972
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2973
    .line 2974
    .line 2975
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 2976
    .line 2977
    .line 2978
    move-result v5

    .line 2979
    neg-int v5, v5

    .line 2980
    int-to-float v5, v5

    .line 2981
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 2982
    .line 2983
    .line 2984
    move-result v6

    .line 2985
    int-to-float v6, v6

    .line 2986
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2987
    .line 2988
    .line 2989
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 2990
    .line 2991
    .line 2992
    move-result v5

    .line 2993
    int-to-float v5, v5

    .line 2994
    const/high16 v6, 0x43340000    # 180.0f

    .line 2995
    .line 2996
    const/4 v7, 0x0

    .line 2997
    invoke-virtual {v0, v6, v5, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 2998
    .line 2999
    .line 3000
    :cond_54
    invoke-virtual {v2, v0}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 3001
    .line 3002
    .line 3003
    move-result v10

    .line 3004
    if-eqz v4, :cond_56

    .line 3005
    .line 3006
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3007
    .line 3008
    .line 3009
    goto :goto_31

    .line 3010
    :cond_55
    const/4 v10, 0x0

    .line 3011
    :cond_56
    :goto_31
    iget-boolean v4, v1, Lio/github/rosemoe/sora/widget/CodeEditor;->H:Z

    .line 3012
    .line 3013
    if-eqz v4, :cond_57

    .line 3014
    .line 3015
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->finish()V

    .line 3016
    .line 3017
    .line 3018
    :cond_57
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 3019
    .line 3020
    .line 3021
    move-result v4

    .line 3022
    if-nez v4, :cond_5b

    .line 3023
    .line 3024
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3025
    .line 3026
    .line 3027
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 3028
    .line 3029
    .line 3030
    move-result-object v4

    .line 3031
    iget-boolean v4, v4, Ltb/u;->j:Z

    .line 3032
    .line 3033
    if-eqz v4, :cond_58

    .line 3034
    .line 3035
    const/high16 v4, 0x42b40000    # 90.0f

    .line 3036
    .line 3037
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3038
    .line 3039
    .line 3040
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 3041
    .line 3042
    .line 3043
    move-result v4

    .line 3044
    neg-int v4, v4

    .line 3045
    int-to-float v4, v4

    .line 3046
    const/4 v5, 0x0

    .line 3047
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3048
    .line 3049
    .line 3050
    goto :goto_32

    .line 3051
    :cond_58
    const/4 v5, 0x0

    .line 3052
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 3053
    .line 3054
    .line 3055
    move-result v4

    .line 3056
    int-to-float v4, v4

    .line 3057
    invoke-virtual {v0, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3058
    .line 3059
    .line 3060
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 3061
    .line 3062
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3063
    .line 3064
    .line 3065
    :goto_32
    invoke-virtual {v3, v0}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 3066
    .line 3067
    .line 3068
    move-result v4

    .line 3069
    if-nez v4, :cond_5a

    .line 3070
    .line 3071
    if-eqz v10, :cond_59

    .line 3072
    .line 3073
    goto :goto_33

    .line 3074
    :cond_59
    const/4 v10, 0x0

    .line 3075
    goto :goto_34

    .line 3076
    :cond_5a
    :goto_33
    const/4 v10, 0x1

    .line 3077
    :goto_34
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3078
    .line 3079
    .line 3080
    :cond_5b
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScroller()Ltb/m;

    .line 3081
    .line 3082
    .line 3083
    move-result-object v0

    .line 3084
    iget-object v4, v0, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 3085
    .line 3086
    invoke-virtual {v4}, Landroid/widget/OverScroller;->isOverScrolled()Z

    .line 3087
    .line 3088
    .line 3089
    move-result v4

    .line 3090
    if-eqz v4, :cond_61

    .line 3091
    .line 3092
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 3093
    .line 3094
    .line 3095
    move-result v4

    .line 3096
    iget-object v0, v0, Ltb/m;->b:Landroid/widget/OverScroller;

    .line 3097
    .line 3098
    if-eqz v4, :cond_5e

    .line 3099
    .line 3100
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 3101
    .line 3102
    .line 3103
    move-result v4

    .line 3104
    if-ltz v4, :cond_5c

    .line 3105
    .line 3106
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 3107
    .line 3108
    .line 3109
    move-result v4

    .line 3110
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxY()I

    .line 3111
    .line 3112
    .line 3113
    move-result v5

    .line 3114
    if-le v4, v5, :cond_5e

    .line 3115
    .line 3116
    :cond_5c
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 3117
    .line 3118
    .line 3119
    move-result-object v4

    .line 3120
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 3121
    .line 3122
    .line 3123
    move-result v5

    .line 3124
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxY()I

    .line 3125
    .line 3126
    .line 3127
    move-result v6

    .line 3128
    if-lt v5, v6, :cond_5d

    .line 3129
    .line 3130
    const/4 v10, 0x1

    .line 3131
    goto :goto_35

    .line 3132
    :cond_5d
    const/4 v10, 0x0

    .line 3133
    :goto_35
    iput-boolean v10, v4, Ltb/u;->i:Z

    .line 3134
    .line 3135
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 3136
    .line 3137
    .line 3138
    move-result v4

    .line 3139
    float-to-int v4, v4

    .line 3140
    invoke-virtual {v2, v4}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 3141
    .line 3142
    .line 3143
    const/4 v10, 0x1

    .line 3144
    :cond_5e
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 3145
    .line 3146
    .line 3147
    move-result v2

    .line 3148
    if-eqz v2, :cond_61

    .line 3149
    .line 3150
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 3151
    .line 3152
    .line 3153
    move-result v2

    .line 3154
    if-ltz v2, :cond_5f

    .line 3155
    .line 3156
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 3157
    .line 3158
    .line 3159
    move-result v2

    .line 3160
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxX()I

    .line 3161
    .line 3162
    .line 3163
    move-result v4

    .line 3164
    if-le v2, v4, :cond_61

    .line 3165
    .line 3166
    :cond_5f
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getEventHandler()Ltb/u;

    .line 3167
    .line 3168
    .line 3169
    move-result-object v2

    .line 3170
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 3171
    .line 3172
    .line 3173
    move-result v4

    .line 3174
    invoke-virtual {v1}, Lio/github/rosemoe/sora/widget/CodeEditor;->getScrollMaxX()I

    .line 3175
    .line 3176
    .line 3177
    move-result v5

    .line 3178
    if-lt v4, v5, :cond_60

    .line 3179
    .line 3180
    const/4 v10, 0x1

    .line 3181
    goto :goto_36

    .line 3182
    :cond_60
    const/4 v10, 0x0

    .line 3183
    :goto_36
    iput-boolean v10, v2, Ltb/u;->j:Z

    .line 3184
    .line 3185
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 3186
    .line 3187
    .line 3188
    move-result v0

    .line 3189
    float-to-int v0, v0

    .line 3190
    invoke-virtual {v3, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 3191
    .line 3192
    .line 3193
    const/4 v11, 0x1

    .line 3194
    goto :goto_37

    .line 3195
    :cond_61
    move v11, v10

    .line 3196
    :goto_37
    if-eqz v11, :cond_62

    .line 3197
    .line 3198
    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 3199
    .line 3200
    .line 3201
    :cond_62
    iget-object v0, v8, Ltb/l;->n:Landroid/util/SparseArray;

    .line 3202
    .line 3203
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3204
    .line 3205
    .line 3206
    iget-object v0, v8, Ltb/l;->o:Landroid/util/SparseArray;

    .line 3207
    .line 3208
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3209
    .line 3210
    .line 3211
    iget-object v0, v8, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 3212
    .line 3213
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->O()V

    .line 3214
    .line 3215
    .line 3216
    return-void
.end method

.method public final s(Landroid/graphics/Canvas;Leb/o;Landroid/text/GetChars;IIIIZFFII)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v8, p4

    add-int v1, v8, p5

    move/from16 v2, p11

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v3, p12

    .line 2
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-ge v2, v9, :cond_10

    .line 3
    iget-object v1, v0, Ltb/l;->b:Leb/c;

    iget v10, v1, Leb/c;->a:F

    .line 4
    iget-object v11, v0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    invoke-virtual {v11}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeightOfText()I

    move-result v1

    int-to-float v1, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lio/github/rosemoe/sora/widget/CodeEditor;->L(I)I

    move-result v3

    int-to-float v3, v3

    add-float v20, v1, v3

    if-eqz p8, :cond_0

    add-float v1, p9, p10

    goto :goto_0

    :cond_0
    move/from16 v1, p9

    :goto_0
    move v15, v2

    :goto_1
    if-ge v15, v9, :cond_10

    move-object/from16 v14, p3

    .line 5
    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v6, 0x9

    const/16 v5, 0x20

    if-eq v7, v5, :cond_2

    if-ne v7, v6, :cond_1

    goto :goto_2

    :cond_1
    move v12, v7

    const/16 v13, 0x20

    goto :goto_3

    :cond_2
    :goto_2
    add-int v16, p6, p7

    move-object/from16 v1, p2

    move v2, v15

    move/from16 v3, p4

    move v4, v15

    const/16 v13, 0x20

    move/from16 v5, p6

    const/16 v12, 0x9

    move/from16 v6, v16

    move v12, v7

    move/from16 v7, p8

    .line 6
    invoke-virtual/range {v1 .. v7}, Leb/o;->h(IIIIIZ)F

    move-result v1

    if-eqz p8, :cond_3

    add-float v2, p9, p10

    sub-float/2addr v2, v1

    move v1, v2

    goto :goto_3

    :cond_3
    add-float v1, p9, v1

    :goto_3
    if-ne v12, v13, :cond_4

    const/4 v3, 0x1

    :goto_4
    const/4 v4, 0x0

    goto :goto_5

    :cond_4
    const/16 v3, 0x9

    if-ne v12, v3, :cond_6

    .line 7
    invoke-virtual {v11}, Lio/github/rosemoe/sora/widget/CodeEditor;->getNonPrintablePaintingFlags()I

    move-result v3

    and-int/2addr v3, v13

    if-eqz v3, :cond_5

    .line 8
    invoke-virtual {v11}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTabWidth()I

    move-result v3

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    :goto_5
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v3, :cond_9

    int-to-float v6, v5

    mul-float v6, v6, v10

    add-float/2addr v6, v1

    add-float v7, v6, v10

    add-float/2addr v7, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v7, v6

    if-eqz p8, :cond_7

    sub-float/2addr v7, v10

    .line 9
    :cond_7
    iget-object v6, v0, Ltb/l;->a:Leb/b;

    iget-object v13, v6, Leb/b;->b:[F

    .line 10
    array-length v2, v13

    move/from16 v17, v3

    iget v3, v6, Leb/b;->a:I

    add-int/lit8 v18, v3, 0x1

    mul-int/lit8 v8, v18, 0x2

    if-ge v2, v8, :cond_8

    .line 11
    array-length v2, v13

    const/4 v8, 0x1

    shl-int/2addr v2, v8

    new-array v2, v2, [F

    mul-int/lit8 v3, v3, 0x2

    const/4 v8, 0x0

    .line 12
    invoke-static {v13, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iput-object v2, v6, Leb/b;->b:[F

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    .line 14
    :goto_7
    iget-object v2, v6, Leb/b;->b:[F

    iget v3, v6, Leb/b;->a:I

    mul-int/lit8 v13, v3, 0x2

    iget v8, v6, Leb/b;->c:F

    add-float/2addr v7, v8

    aput v7, v2, v13

    const/4 v7, 0x1

    add-int/2addr v13, v7

    .line 15
    iget v8, v6, Leb/b;->d:F

    add-float v8, v20, v8

    aput v8, v2, v13

    add-int/2addr v3, v7

    .line 16
    iput v3, v6, Leb/b;->a:I

    add-int/lit8 v5, v5, 0x1

    move/from16 v8, p4

    move/from16 v3, v17

    const/16 v13, 0x20

    goto :goto_6

    :cond_9
    if-eqz v4, :cond_b

    .line 17
    invoke-virtual {v11}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTabWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v10

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v3, v3, v2

    if-eqz p8, :cond_a

    neg-float v4, v2

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    :goto_8
    add-float v5, v1, v3

    add-float/2addr v5, v4

    add-float/2addr v2, v1

    add-float/2addr v2, v4

    sub-float v17, v2, v3

    .line 18
    iget-object v2, v0, Ltb/l;->c:Leb/c;

    move-object/from16 v14, p1

    move v3, v15

    move v15, v5

    move/from16 v16, v20

    move/from16 v18, v20

    move-object/from16 v19, v2

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_9
    const/16 v2, 0x20

    goto :goto_a

    :cond_b
    move v3, v15

    goto :goto_9

    :goto_a
    if-eq v12, v2, :cond_c

    const/16 v4, 0x9

    if-ne v12, v4, :cond_f

    :cond_c
    if-ne v12, v2, :cond_d

    move v2, v10

    goto :goto_b

    .line 19
    :cond_d
    invoke-virtual {v11}, Lio/github/rosemoe/sora/widget/CodeEditor;->getTabWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v10

    :goto_b
    if-eqz p8, :cond_e

    neg-float v2, v2

    :cond_e
    add-float/2addr v1, v2

    :cond_f
    add-int/lit8 v15, v3, 0x1

    move/from16 v8, p4

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_10
    return-void
.end method

.method public final t(II)J
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Ltb/l;->v(I)Lnb/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Lnb/b;->a:[J

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1, v2}, Lnb/b;->q(I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {v2, p1}, Lsb/h;->g(II)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    return-wide p1

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, v0, :cond_3

    .line 23
    .line 24
    add-int/lit8 v3, v1, 0x1

    .line 25
    .line 26
    if-eq v3, v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Lnb/b;->j(I)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-gt v4, p2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lnb/b;->o(I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-ge p2, v4, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v1, v3

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_1
    iget-object p2, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 44
    .line 45
    invoke-virtual {p2}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iget-boolean p2, p2, Ltb/e;->K:Z

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lnb/b;->q(I)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-static {p2, p1}, Lsb/h;->g(II)J

    .line 56
    .line 57
    .line 58
    move-result-wide p1

    .line 59
    return-wide p1

    .line 60
    :cond_3
    invoke-static {v2, v2}, Lsb/h;->g(II)J

    .line 61
    .line 62
    .line 63
    move-result-wide p1

    .line 64
    return-wide p1
.end method

.method public final u(I)Lmb/h;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ltb/l;->G:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ltb/l;->F:Lmb/g;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lmb/g;->o(I)Lmb/h;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Ltb/l;->n:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lmb/h;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Ltb/l;->F:Lmb/g;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lmb/g;->o(I)Lmb/h;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Ltb/l;->n:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-object v0
.end method

.method public final v(I)Lnb/b;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ltb/l;->G:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ltb/l;->F:Lmb/g;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lmb/g;->p(I)Lnb/b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Ltb/l;->o:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lnb/b;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Ltb/l;->F:Lmb/g;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lmb/g;->p(I)Lnb/b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Ltb/l;->o:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-object v0
.end method

.method public final w()F
    .locals 5

    .line 1
    iget-object v0, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeightOfText()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const/high16 v2, 0x3f000000    # 0.5f

    .line 16
    .line 17
    mul-float v1, v1, v2

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ltb/b;->f(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    return v2

    .line 31
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-lez v3, :cond_2

    .line 40
    .line 41
    if-lez v0, :cond_2

    .line 42
    .line 43
    cmpg-float v4, v1, v2

    .line 44
    .line 45
    if-gtz v4, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    int-to-float v2, v3

    .line 49
    int-to-float v0, v0

    .line 50
    div-float/2addr v2, v0

    .line 51
    mul-float v2, v2, v1

    .line 52
    .line 53
    :cond_2
    :goto_0
    return v2
.end method

.method public final x(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lio/github/rosemoe/sora/widget/CodeEditor;->K(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final y(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getProps()Ltb/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getRowHeight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    mul-int v0, v0, p1

    .line 15
    .line 16
    return v0
.end method

.method public final z()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltb/l;->p:Lio/github/rosemoe/sora/widget/CodeEditor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/github/rosemoe/sora/widget/CodeEditor;->getStyles()Ljb/d;

    .line 4
    .line 5
    .line 6
    return-void
.end method
