.class public final Lq/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq/c;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lq/g;->g(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lq/f;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lq/c;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, p2}, Lq/g;->g(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lq/c;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v0, p0, Lq/f;->a:Lq/c;

    .line 5
    iput p2, p0, Lq/f;->b:I

    return-void
.end method


# virtual methods
.method public create()Lq/g;
    .locals 10

    .line 1
    new-instance v0, Lq/g;

    .line 2
    .line 3
    iget-object v1, p0, Lq/f;->a:Lq/c;

    .line 4
    .line 5
    iget-object v2, v1, Lq/c;->a:Landroid/view/ContextThemeWrapper;

    .line 6
    .line 7
    iget v3, p0, Lq/f;->b:I

    .line 8
    .line 9
    invoke-direct {v0, v2, v3}, Lq/g;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v1, Lq/c;->e:Landroid/view/View;

    .line 13
    .line 14
    iget-object v3, v0, Lq/g;->f:Lq/e;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iput-object v2, v3, Lq/e;->v:Landroid/view/View;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v2, v1, Lq/c;->d:Ljava/lang/CharSequence;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    iput-object v2, v3, Lq/e;->d:Ljava/lang/CharSequence;

    .line 27
    .line 28
    iget-object v5, v3, Lq/e;->t:Landroid/widget/TextView;

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v2, v1, Lq/c;->c:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iput-object v2, v3, Lq/e;->r:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    iget-object v5, v3, Lq/e;->s:Landroid/widget/ImageView;

    .line 42
    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    iget-object v5, v3, Lq/e;->s:Landroid/widget/ImageView;

    .line 49
    .line 50
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    iget-object v2, v1, Lq/c;->f:Ljava/lang/CharSequence;

    .line 54
    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    iget-object v5, v1, Lq/c;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    .line 60
    const/4 v6, -0x1

    .line 61
    invoke-virtual {v3, v6, v2, v5}, Lq/e;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    iget-object v2, v1, Lq/c;->h:Ljava/lang/CharSequence;

    .line 65
    .line 66
    if-nez v2, :cond_4

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    iget-object v5, v1, Lq/c;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    .line 71
    const/4 v6, -0x2

    .line 72
    invoke-virtual {v3, v6, v2, v5}, Lq/e;->d(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    :goto_2
    iget-object v2, v1, Lq/c;->k:Ljava/lang/Object;

    .line 76
    .line 77
    const/4 v5, 0x1

    .line 78
    const/4 v6, 0x0

    .line 79
    if-eqz v2, :cond_9

    .line 80
    .line 81
    iget v2, v3, Lq/e;->z:I

    .line 82
    .line 83
    iget-object v7, v1, Lq/c;->b:Landroid/view/LayoutInflater;

    .line 84
    .line 85
    invoke-virtual {v7, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 90
    .line 91
    iget-boolean v7, v1, Lq/c;->n:Z

    .line 92
    .line 93
    if-eqz v7, :cond_5

    .line 94
    .line 95
    iget v7, v3, Lq/e;->A:I

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_5
    iget v7, v3, Lq/e;->B:I

    .line 99
    .line 100
    :goto_3
    iget-object v8, v1, Lq/c;->k:Ljava/lang/Object;

    .line 101
    .line 102
    if-eqz v8, :cond_6

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_6
    new-instance v8, Lq/d;

    .line 106
    .line 107
    iget-object v9, v1, Lq/c;->a:Landroid/view/ContextThemeWrapper;

    .line 108
    .line 109
    invoke-direct {v8, v9, v7}, Lq/d;-><init>(Landroid/view/ContextThemeWrapper;I)V

    .line 110
    .line 111
    .line 112
    :goto_4
    iput-object v8, v3, Lq/e;->w:Landroid/widget/ListAdapter;

    .line 113
    .line 114
    iget v7, v1, Lq/c;->o:I

    .line 115
    .line 116
    iput v7, v3, Lq/e;->x:I

    .line 117
    .line 118
    iget-object v7, v1, Lq/c;->l:Landroid/content/DialogInterface$OnClickListener;

    .line 119
    .line 120
    if-eqz v7, :cond_7

    .line 121
    .line 122
    new-instance v7, Lq/b;

    .line 123
    .line 124
    invoke-direct {v7, v1, v3}, Lq/b;-><init>(Lq/c;Lq/e;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    .line 129
    .line 130
    :cond_7
    iget-boolean v7, v1, Lq/c;->n:Z

    .line 131
    .line 132
    if-eqz v7, :cond_8

    .line 133
    .line 134
    invoke-virtual {v2, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 135
    .line 136
    .line 137
    :cond_8
    iput-object v2, v3, Lq/e;->e:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 138
    .line 139
    :cond_9
    iget-object v2, v1, Lq/c;->m:Landroid/view/View;

    .line 140
    .line 141
    if-eqz v2, :cond_a

    .line 142
    .line 143
    iput-object v2, v3, Lq/e;->f:Landroid/view/View;

    .line 144
    .line 145
    iput-boolean v4, v3, Lq/e;->g:Z

    .line 146
    .line 147
    :cond_a
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v1, Lq/c;->j:Lv/l;

    .line 160
    .line 161
    if-eqz v1, :cond_b

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 164
    .line 165
    .line 166
    :cond_b
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/f;->a:Lq/c;

    .line 2
    .line 3
    iget-object v0, v0, Lq/c;->a:Landroid/view/ContextThemeWrapper;

    .line 4
    .line 5
    return-object v0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lq/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lq/f;->a:Lq/c;

    .line 2
    .line 3
    iget-object v1, v0, Lq/c;->a:Landroid/view/ContextThemeWrapper;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Lq/c;->h:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iput-object p2, v0, Lq/c;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    .line 13
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lq/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lq/f;->a:Lq/c;

    .line 2
    .line 3
    iget-object v1, v0, Lq/c;->a:Landroid/view/ContextThemeWrapper;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, v0, Lq/c;->f:Ljava/lang/CharSequence;

    .line 10
    .line 11
    iput-object p2, v0, Lq/c;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    .line 13
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lq/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/f;->a:Lq/c;

    .line 2
    .line 3
    iput-object p1, v0, Lq/c;->d:Ljava/lang/CharSequence;

    .line 4
    .line 5
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lq/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/f;->a:Lq/c;

    .line 2
    .line 3
    iput-object p1, v0, Lq/c;->m:Landroid/view/View;

    .line 4
    .line 5
    return-object p0
.end method
