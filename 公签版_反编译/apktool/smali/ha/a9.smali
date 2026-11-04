.class public final Lha/a9;
.super Lha/a4;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public g:Landroid/widget/TextView;

.field public h:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public p:Lx9/t2;

.field public final q:Lz7/s;

.field public final r:I

.field public final s:Lz7/s;

.field public final t:Lua/j3;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;Lda/g;Lz7/s;ILua/j3;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00c8

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lha/a9;->q:Lz7/s;

    .line 8
    .line 9
    iput p4, p0, Lha/a9;->r:I

    .line 10
    .line 11
    iput-object p5, p0, Lha/a9;->t:Lua/j3;

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    if-ne p4, p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Lz7/s;

    .line 17
    .line 18
    invoke-direct {p1}, Lz7/s;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lha/a9;->s:Lz7/s;

    .line 22
    .line 23
    :try_start_0
    const-string p2, "name"

    .line 24
    .line 25
    const-string p3, ""

    .line 26
    .line 27
    invoke-virtual {p1, p2, p3}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p2, "isOpen"

    .line 31
    .line 32
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p1, p2, p3}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 35
    .line 36
    .line 37
    const-string p2, "event"

    .line 38
    .line 39
    new-instance p3, Lz7/s;

    .line 40
    .line 41
    invoke-direct {p3}, Lz7/s;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 45
    .line 46
    .line 47
    const-string p2, "click"

    .line 48
    .line 49
    new-instance p3, Lz7/o;

    .line 50
    .line 51
    invoke-direct {p3}, Lz7/o;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2, p3}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string p1, "keys"

    .line 59
    .line 60
    invoke-virtual {p3, p1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1, p4}, Lz7/o;->l(I)Lz7/p;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Lha/a9;->s:Lz7/s;

    .line 73
    .line 74
    :catch_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/a9;->p:Lx9/t2;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lc6/g;->E(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lha/a9;->s:Lz7/s;

    .line 12
    .line 13
    const-string v1, "click"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    iget-object v2, v0, Lz7/o;->a:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_0

    .line 35
    .line 36
    iget-object v2, p0, Lha/a9;->p:Lx9/t2;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lz7/o;->l(I)Lz7/p;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lz7/p;->g()Lz7/s;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Lc6/g;->q(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/a9;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/a9;->g:Landroid/widget/TextView;

    .line 7
    .line 8
    iget-object v0, p0, Lha/a4;->b:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0x7f060041

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lha/a9;->g:Landroid/widget/TextView;

    .line 25
    .line 26
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/util/Property;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x2

    .line 33
    new-array v1, v1, [F

    .line 34
    .line 35
    fill-array-data v1, :array_0

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/16 v0, 0x1f4

    .line 43
    .line 44
    int-to-long v0, v0

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 46
    .line 47
    .line 48
    new-instance v0, Landroid/view/animation/CycleInterpolator;

    .line 49
    .line 50
    const/4 v1, 0x3

    .line 51
    int-to-float v1, v1

    .line 52
    invoke-direct {v0, v1}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :array_0
    .array-data 4
        0x0
        0x41a00000    # 20.0f
    .end array-data
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 9
    .line 10
    iget-object v2, p0, Lha/a4;->b:Landroid/content/Context;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const v4, 0x7f0b03b4

    .line 14
    .line 15
    .line 16
    if-ne v0, v4, :cond_2

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 24
    .line 25
    const-string v4, "\u67d0\u5e94\u7528\u663e\u793a\u65f6"

    .line 26
    .line 27
    const/16 v5, 0x64

    .line 28
    .line 29
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 36
    .line 37
    const-string v4, "\u67d0\u5e94\u7528\u663e\u793a\u65f6(\u9996\u6b21)"

    .line 38
    .line 39
    const/16 v5, 0x65

    .line 40
    .line 41
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 48
    .line 49
    const-string v4, "\u81ea\u52a8\u5316\u542f\u52a8\u65f6(\u4ec5\u6d4b\u8bd5)"

    .line 50
    .line 51
    const/16 v5, 0x66

    .line 52
    .line 53
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 60
    .line 61
    const-string v4, "\u5c4f\u5e55\u70b9\u4eae\u65f6(\u4ec5\u652f\u6301\u4e2a\u522b)"

    .line 62
    .line 63
    const/16 v5, 0x6e

    .line 64
    .line 65
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 72
    .line 73
    const-string v4, "\u5c4f\u5e55\u7184\u706d\u65f6(\u4ec5\u652f\u6301\u4e2a\u522b)"

    .line 74
    .line 75
    const/16 v5, 0x6f

    .line 76
    .line 77
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 84
    .line 85
    const-string v4, "(\u539f\u751f)\u7cfb\u7edf\u5207\u6362\u6210\u65e5\u95f4\u65f6"

    .line 86
    .line 87
    const/16 v5, 0x78

    .line 88
    .line 89
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 96
    .line 97
    const-string v4, "(\u539f\u751f)\u7cfb\u7edf\u5207\u6362\u6210\u591c\u95f4\u65f6"

    .line 98
    .line 99
    const/16 v5, 0x79

    .line 100
    .line 101
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 108
    .line 109
    const-string v4, "(\u539f\u751f)\u84dd\u7259\u529f\u80fd\u5f00\u542f\u65f6"

    .line 110
    .line 111
    const/16 v5, 0xc8

    .line 112
    .line 113
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 120
    .line 121
    const-string v4, "(\u539f\u751f)\u84dd\u7259\u529f\u80fd\u5173\u95ed\u65f6"

    .line 122
    .line 123
    const/16 v5, 0xc9

    .line 124
    .line 125
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 132
    .line 133
    const-string v4, "(\u539f\u751f)\u6709\u84dd\u7259\u8fde\u63a5\u6210\u529f\u65f6"

    .line 134
    .line 135
    const/16 v5, 0xca

    .line 136
    .line 137
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 144
    .line 145
    const-string v4, "(\u539f\u751f)\u6709\u84dd\u7259\u65ad\u5f00\u8fde\u63a5\u65f6"

    .line 146
    .line 147
    const/16 v5, 0xcb

    .line 148
    .line 149
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 156
    .line 157
    const-string v4, "(\u539f\u751f)WIFI\u529f\u80fd\u5f00\u542f\u65f6"

    .line 158
    .line 159
    const/16 v5, 0x12c

    .line 160
    .line 161
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 168
    .line 169
    const-string v4, "(\u539f\u751f)WIFI\u529f\u80fd\u5173\u95ed\u65f6"

    .line 170
    .line 171
    const/16 v5, 0x12d

    .line 172
    .line 173
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 180
    .line 181
    const-string v4, "(\u539f\u751f)\u6709WIFI\u8fde\u63a5\u6210\u529f\u65f6"

    .line 182
    .line 183
    const/16 v5, 0x12e

    .line 184
    .line 185
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 192
    .line 193
    const-string v4, "(\u539f\u751f)\u6709WIFI\u65ad\u5f00\u8fde\u63a5\u65f6"

    .line 194
    .line 195
    const/16 v5, 0x12f

    .line 196
    .line 197
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 204
    .line 205
    const-string v4, "(\u539f\u751f)\u6307\u5b9aWIFI\u8fde\u63a5\u6210\u529f\u65f6"

    .line 206
    .line 207
    const/16 v5, 0x130

    .line 208
    .line 209
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 216
    .line 217
    const-string v4, "USB\u8bbe\u5907\u63d2\u5165\u65f6"

    .line 218
    .line 219
    const/16 v5, 0x15e

    .line 220
    .line 221
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 228
    .line 229
    const-string v4, "USB\u8bbe\u5907\u62d4\u9664\u65f6"

    .line 230
    .line 231
    const/16 v5, 0x15f

    .line 232
    .line 233
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 240
    .line 241
    const-string v4, "USB\u8bbe\u5907\u63d2\u5165\u65f6(\u6307\u5b9aID)"

    .line 242
    .line 243
    const/16 v5, 0x160

    .line 244
    .line 245
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 252
    .line 253
    const-string v4, "\u6307\u5b9a\u65f6\u95f4\u6bb5(\u89e6\u53d1\u4e00\u6b21)"

    .line 254
    .line 255
    const/16 v5, 0x1f5

    .line 256
    .line 257
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 264
    .line 265
    const-string v4, "\u5149\u7167\u4eae\u5ea6\u53d8\u5316\u65f6"

    .line 266
    .line 267
    const/16 v5, 0x1f6

    .line 268
    .line 269
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 276
    .line 277
    const-string v4, "\u5c4f\u5e55\u4eae\u5ea6\u53d8\u5316\u65f6"

    .line 278
    .line 279
    const/16 v5, 0x1f7

    .line 280
    .line 281
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    sget v0, Lcom/yunpan/appmanage/carsdk/m;->e:I

    .line 288
    .line 289
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    const-string v4, "com.desay.svcarinfo"

    .line 294
    .line 295
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .line 297
    .line 298
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 299
    .line 300
    const-string v4, "\u5fb7\u8d5b\u8f66\u673a-\u5f00\u5927\u706f\u65f6"

    .line 301
    .line 302
    const/16 v5, 0x1f8

    .line 303
    .line 304
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 311
    .line 312
    const-string v4, "\u5fb7\u8d5b\u8f66\u673a-\u5173\u5927\u706f\u65f6"

    .line 313
    .line 314
    const/16 v5, 0x1f9

    .line 315
    .line 316
    invoke-direct {v0, v4, v5}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    :catch_0
    const-string v0, "\u6bcf\u9694N\u5206\u949f"

    .line 323
    .line 324
    const/16 v4, 0x1fa

    .line 325
    .line 326
    invoke-static {v0, v4, p1}, Lg/b;->u(Ljava/lang/String;ILjava/util/ArrayList;)V

    .line 327
    .line 328
    .line 329
    :try_start_1
    sget-object v0, Lcom/yunpan/appmanage/base/AppStart;->h:Lcom/yunpan/appmanage/base/AppStart;

    .line 330
    .line 331
    iget-object v0, v0, Lcom/yunpan/appmanage/base/AppStart;->c:Landroid/content/pm/PackageManager;

    .line 332
    .line 333
    const-string v4, "com.hsae.core"

    .line 334
    .line 335
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 336
    .line 337
    .line 338
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 339
    .line 340
    const-string v3, "\u65e5\u4ea7\u8f66\u673a-\u5f00\u5927\u706f\u65f6"

    .line 341
    .line 342
    const/16 v4, 0x2710

    .line 343
    .line 344
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 351
    .line 352
    const-string v3, "\u65e5\u4ea7\u8f66\u673a-\u5173\u5927\u706f\u65f6"

    .line 353
    .line 354
    const/16 v4, 0x2711

    .line 355
    .line 356
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 363
    .line 364
    const-string v3, "\u65e5\u4ea7\u8f66\u673a-\u5f00\u7535\u6e90\u65f6"

    .line 365
    .line 366
    const/16 v4, 0x2713

    .line 367
    .line 368
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 375
    .line 376
    const-string v3, "\u65e5\u4ea7\u8f66\u673a-\u5173\u7535\u6e90\u65f6"

    .line 377
    .line 378
    const/16 v4, 0x2714

    .line 379
    .line 380
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 387
    .line 388
    const-string v3, "\u65e5\u4ea7-\u5f00\u673a(\u4e00\u822c\u6ca1\u5565\u7528)"

    .line 389
    .line 390
    const/16 v4, 0x2715

    .line 391
    .line 392
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 399
    .line 400
    const-string v3, "\u65e5\u4ea7-\u5173\u673a(\u7184\u706b\u540e\u5f00\u95e8\u65f6)"

    .line 401
    .line 402
    const/16 v4, 0x2716

    .line 403
    .line 404
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 411
    .line 412
    const-string v3, "\u65e5\u4ea7\u8f66\u673a-\u5f00\u59cb\u5012\u6321\u65f6"

    .line 413
    .line 414
    const/16 v4, 0x2718

    .line 415
    .line 416
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 423
    .line 424
    const-string v3, "\u65e5\u4ea7\u8f66\u673a-\u505c\u6b62\u5012\u6321\u65f6"

    .line 425
    .line 426
    const/16 v4, 0x2719

    .line 427
    .line 428
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 435
    .line 436
    const/16 v3, 0x1a

    .line 437
    .line 438
    if-lt v0, v3, :cond_1

    .line 439
    .line 440
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 441
    .line 442
    const-string v3, "\u65e5\u4ea7\u8f66\u673a-\u6362\u6863\u65f6"

    .line 443
    .line 444
    const/16 v4, 0x2712

    .line 445
    .line 446
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 453
    .line 454
    const-string v3, "\u65e5\u4ea7\u8f66\u673a-\u6362\u6863\u65f6(\u77ac\u95f4)"

    .line 455
    .line 456
    const/16 v4, 0x2717

    .line 457
    .line 458
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 465
    .line 466
    const-string v3, "\u65e5\u4ea7\u8f66\u673a-L\u6321\u8d77\u6b65\u65f6"

    .line 467
    .line 468
    const/16 v4, 0x271a

    .line 469
    .line 470
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 477
    .line 478
    const-string v3, "\u65e5\u4ea7D\u686310\u79d2\u540e\u8fd8\u672a\u8d77\u6b65\u65f6"

    .line 479
    .line 480
    const/16 v4, 0x271b

    .line 481
    .line 482
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    new-instance v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 489
    .line 490
    const-string v3, "\u65e5\u4ea7\u6302\u686310\u79d2\u540e\u8fd8\u672a\u8d77\u6b65\u65f6"

    .line 491
    .line 492
    const/16 v4, 0x271c

    .line 493
    .line 494
    invoke-direct {v0, v3, v4}, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;-><init>(Ljava/lang/String;I)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 498
    .line 499
    .line 500
    :catch_1
    :cond_1
    new-instance v0, Lha/ie;

    .line 501
    .line 502
    new-instance v3, Ld2/w;

    .line 503
    .line 504
    const/16 v4, 0x10

    .line 505
    .line 506
    invoke-direct {v3, p0, v4, p1}, Ld2/w;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    invoke-direct {v0, v1, v2, p1, v3}, Lha/ie;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;Lha/he;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0}, Lha/a4;->show()V

    .line 513
    .line 514
    .line 515
    goto/16 :goto_3

    .line 516
    .line 517
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    const v4, 0x7f0b034a

    .line 522
    .line 523
    .line 524
    if-ne v0, v4, :cond_3

    .line 525
    .line 526
    new-instance p1, Lha/y8;

    .line 527
    .line 528
    const/4 v0, 0x3

    .line 529
    invoke-direct {p1, p0, v0}, Lha/y8;-><init>(Lha/a9;I)V

    .line 530
    .line 531
    .line 532
    invoke-static {v1, v2, v3, v3, p1}, Lha/t8;->a(Landroid/app/Activity;Landroid/content/Context;IZLea/e;)V

    .line 533
    .line 534
    .line 535
    goto/16 :goto_3

    .line 536
    .line 537
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    iget-object v1, p0, Lha/a9;->t:Lua/j3;

    .line 542
    .line 543
    iget-object v3, p0, Lha/a9;->q:Lz7/s;

    .line 544
    .line 545
    iget v4, p0, Lha/a9;->r:I

    .line 546
    .line 547
    const-string v5, "UP_KEYMAP_EVENT"

    .line 548
    .line 549
    const v6, 0x7f0b03b1

    .line 550
    .line 551
    .line 552
    const-string v7, "keys"

    .line 553
    .line 554
    const/4 v8, -0x1

    .line 555
    if-ne v0, v6, :cond_8

    .line 556
    .line 557
    iget-object p1, p0, Lha/a9;->g:Landroid/widget/TextView;

    .line 558
    .line 559
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object p1

    .line 567
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object p1

    .line 571
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 572
    .line 573
    .line 574
    move-result p1

    .line 575
    if-eqz p1, :cond_4

    .line 576
    .line 577
    const-string p1, "\u8bf7\u5148\u9009\u62e9\u89e6\u53d1\u4e8b\u4ef6"

    .line 578
    .line 579
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 580
    .line 581
    .line 582
    goto/16 :goto_3

    .line 583
    .line 584
    :cond_4
    iget-object p1, p0, Lha/a9;->p:Lx9/t2;

    .line 585
    .line 586
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 587
    .line 588
    .line 589
    move-result p1

    .line 590
    if-nez p1, :cond_5

    .line 591
    .line 592
    const-string p1, "\u8bf7\u6dfb\u52a0\u81f3\u5c11\u4e00\u4e2a\u64cd\u4f5c"

    .line 593
    .line 594
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 595
    .line 596
    .line 597
    goto/16 :goto_3

    .line 598
    .line 599
    :cond_5
    new-instance p1, Lz7/o;

    .line 600
    .line 601
    invoke-direct {p1}, Lz7/o;-><init>()V

    .line 602
    .line 603
    .line 604
    iget-object v0, p0, Lha/a9;->s:Lz7/s;

    .line 605
    .line 606
    const-string v6, "click"

    .line 607
    .line 608
    invoke-virtual {v0, v6, p1}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 609
    .line 610
    .line 611
    iget-object p1, p0, Lha/a9;->p:Lx9/t2;

    .line 612
    .line 613
    invoke-virtual {p1}, Lc6/g;->v()Ljava/util/List;

    .line 614
    .line 615
    .line 616
    move-result-object p1

    .line 617
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 618
    .line 619
    .line 620
    move-result-object p1

    .line 621
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 622
    .line 623
    .line 624
    move-result v9

    .line 625
    if-eqz v9, :cond_6

    .line 626
    .line 627
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v9

    .line 631
    check-cast v9, Lz7/s;

    .line 632
    .line 633
    invoke-virtual {v0, v6}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 634
    .line 635
    .line 636
    move-result-object v10

    .line 637
    invoke-virtual {v10, v9}, Lz7/o;->k(Lz7/p;)V

    .line 638
    .line 639
    .line 640
    goto :goto_0

    .line 641
    :cond_6
    if-ne v4, v8, :cond_7

    .line 642
    .line 643
    invoke-virtual {v3, v7}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 644
    .line 645
    .line 646
    move-result-object p1

    .line 647
    invoke-virtual {p1, v0}, Lz7/o;->k(Lz7/p;)V

    .line 648
    .line 649
    .line 650
    goto :goto_1

    .line 651
    :cond_7
    invoke-virtual {v3, v7}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 652
    .line 653
    .line 654
    move-result-object p1

    .line 655
    invoke-virtual {p1, v4, v0}, Lz7/o;->o(ILz7/p;)V

    .line 656
    .line 657
    .line 658
    :goto_1
    invoke-static {v2, v3}, Lq4/a;->S(Landroid/content/Context;Lz7/s;)V

    .line 659
    .line 660
    .line 661
    invoke-static {v2, v5}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 665
    .line 666
    .line 667
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->F:I

    .line 668
    .line 669
    iget-object p1, v1, Lua/j3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;

    .line 670
    .line 671
    invoke-virtual {p1}, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->z()V

    .line 672
    .line 673
    .line 674
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 675
    .line 676
    .line 677
    goto :goto_3

    .line 678
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 679
    .line 680
    .line 681
    move-result p1

    .line 682
    const v0, 0x7f0b0374

    .line 683
    .line 684
    .line 685
    if-ne p1, v0, :cond_c

    .line 686
    .line 687
    if-eq v4, v8, :cond_9

    .line 688
    .line 689
    invoke-virtual {v3, v7}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 690
    .line 691
    .line 692
    move-result-object p1

    .line 693
    invoke-virtual {p1, v4}, Lz7/o;->n(I)V

    .line 694
    .line 695
    .line 696
    invoke-static {v2, v3}, Lq4/a;->S(Landroid/content/Context;Lz7/s;)V

    .line 697
    .line 698
    .line 699
    :cond_9
    invoke-static {v2, v5}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    iget p1, v1, Lua/j3;->a:I

    .line 703
    .line 704
    if-ne p1, v8, :cond_a

    .line 705
    .line 706
    goto :goto_2

    .line 707
    :cond_a
    iget-object v0, v1, Lua/j3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;

    .line 708
    .line 709
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->D:Lx9/s2;

    .line 710
    .line 711
    invoke-virtual {v1}, Lc6/g;->b()I

    .line 712
    .line 713
    .line 714
    move-result v1

    .line 715
    const/4 v2, 0x1

    .line 716
    if-ne v1, v2, :cond_b

    .line 717
    .line 718
    const v1, 0x7f0b03ad

    .line 719
    .line 720
    .line 721
    invoke-virtual {v0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 726
    .line 727
    .line 728
    :cond_b
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapEvent;->D:Lx9/s2;

    .line 729
    .line 730
    invoke-virtual {v0, p1}, Lc6/g;->C(I)V

    .line 731
    .line 732
    .line 733
    :goto_2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 734
    .line 735
    .line 736
    :cond_c
    :goto_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "isOpen"

    .line 5
    .line 6
    iget-object v0, p0, Lha/a9;->s:Lz7/s;

    .line 7
    .line 8
    const v1, 0x7f0b0568

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    iput-object v1, p0, Lha/a9;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 18
    .line 19
    const v1, 0x7f0b0569

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/widget/ImageView;

    .line 27
    .line 28
    iput-object v1, p0, Lha/a9;->i:Landroid/widget/ImageView;

    .line 29
    .line 30
    iget-object v1, p0, Lha/a9;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 31
    .line 32
    new-instance v2, Lcom/google/android/material/datepicker/l;

    .line 33
    .line 34
    const/16 v3, 0x1d

    .line 35
    .line 36
    invoke-direct {v2, p0, v3}, Lcom/google/android/material/datepicker/l;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    const v1, 0x7f0b0523

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v1, p0, Lha/a9;->g:Landroid/widget/TextView;

    .line 52
    .line 53
    const v1, 0x7f0b03b4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object v1, p0, Lha/a9;->j:Landroid/widget/TextView;

    .line 63
    .line 64
    const v1, 0x7f0b034a

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Landroid/widget/TextView;

    .line 72
    .line 73
    iput-object v1, p0, Lha/a9;->k:Landroid/widget/TextView;

    .line 74
    .line 75
    const v1, 0x7f0b03b1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/widget/TextView;

    .line 83
    .line 84
    iput-object v1, p0, Lha/a9;->l:Landroid/widget/TextView;

    .line 85
    .line 86
    const v1, 0x7f0b0374

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object v1, p0, Lha/a9;->m:Landroid/widget/TextView;

    .line 96
    .line 97
    iget-object v1, p0, Lha/a9;->j:Landroid/widget/TextView;

    .line 98
    .line 99
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lha/a9;->j:Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lha/a9;->k:Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lha/a9;->l:Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lha/a9;->m:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    const v1, 0x7f0b04f1

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 130
    .line 131
    iput-object v1, p0, Lha/a9;->n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 132
    .line 133
    new-instance v2, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;

    .line 134
    .line 135
    iget-object v3, p0, Lha/a4;->b:Landroid/content/Context;

    .line 136
    .line 137
    const/4 v4, 0x1

    .line 138
    const/4 v5, 0x0

    .line 139
    invoke-direct {v2, v3, v4, v5}, Lcom/owen/tvrecyclerview/widget/V7LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 143
    .line 144
    .line 145
    new-instance v1, Lx9/t2;

    .line 146
    .line 147
    invoke-direct {v1}, Lx9/t2;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object v1, p0, Lha/a9;->p:Lx9/t2;

    .line 151
    .line 152
    const-string v2, "\u6620\u5c04\u64cd\u4f5c\uff1a"

    .line 153
    .line 154
    iput-object v2, v1, Lx9/t2;->h:Ljava/lang/String;

    .line 155
    .line 156
    iget-object v2, p0, Lha/a9;->n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 157
    .line 158
    invoke-virtual {v2, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 159
    .line 160
    .line 161
    new-instance v1, Ld6/a;

    .line 162
    .line 163
    invoke-direct {v1}, Ld6/a;-><init>()V

    .line 164
    .line 165
    .line 166
    const/4 v2, 0x3

    .line 167
    iput v2, v1, Ld6/a;->h:I

    .line 168
    .line 169
    iput-boolean v5, v1, Ld6/a;->g:Z

    .line 170
    .line 171
    iget-object v2, p0, Lha/a9;->n:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 172
    .line 173
    invoke-virtual {v1, v2}, Ld6/a;->d(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 174
    .line 175
    .line 176
    iget-object v2, p0, Lha/a9;->p:Lx9/t2;

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Ld6/a;->g(Le6/a;)V

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Lha/a9;->p:Lx9/t2;

    .line 182
    .line 183
    new-instance v2, Lha/y8;

    .line 184
    .line 185
    const/4 v3, 0x2

    .line 186
    invoke-direct {v2, p0, v3}, Lha/y8;-><init>(Lha/a9;I)V

    .line 187
    .line 188
    .line 189
    iput-object v2, v1, Lc6/g;->e:Lc6/e;

    .line 190
    .line 191
    :try_start_0
    iget-object v1, p0, Lha/a9;->g:Landroid/widget/TextView;

    .line 192
    .line 193
    const-string v2, "name"

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lz7/p;->i()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v0, Lz7/s;->a:Lb8/n;

    .line 207
    .line 208
    invoke-virtual {v1, p1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_0

    .line 213
    .line 214
    invoke-virtual {v0, p1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1}, Lz7/p;->b()Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    goto :goto_0

    .line 223
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 224
    .line 225
    invoke-virtual {v0, p1, v1}, Lz7/s;->k(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 226
    .line 227
    .line 228
    :goto_0
    iget-object p1, p0, Lha/a9;->i:Landroid/widget/ImageView;

    .line 229
    .line 230
    if-eqz v4, :cond_1

    .line 231
    .line 232
    const v0, 0x7f080234

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_1
    const v0, 0x7f080237

    .line 237
    .line 238
    .line 239
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Lha/a9;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .line 244
    .line 245
    :catch_0
    return-void
.end method
