.class public final Lha/m9;
.super Lha/a4;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public g:Landroid/widget/EditText;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public final l:Lha/p9;

.field public m:Lha/j6;

.field public final n:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lha/p9;)V
    .locals 1

    .line 1
    const v0, 0x7f0e00cc

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, v0}, Lha/a4;-><init>(Landroid/app/Activity;Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lnh/b;->y()Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lha/m9;->n:Ljava/util/ArrayList;

    .line 12
    .line 13
    iput-object p3, p0, Lha/m9;->l:Lha/p9;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

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
    const v1, 0x7f0b03be

    .line 9
    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    new-instance p1, Lha/ha;

    .line 14
    .line 15
    iget-object v6, p0, Lha/m9;->n:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance v7, Lha/l9;

    .line 18
    .line 19
    invoke-direct {v7, p0}, Lha/l9;-><init>(Lha/m9;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 23
    .line 24
    iget-object v4, p0, Lha/a4;->b:Landroid/content/Context;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    move-object v2, p1

    .line 28
    invoke-direct/range {v2 .. v7}, Lha/ha;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lha/ga;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const v1, 0x7f0b03bd

    .line 41
    .line 42
    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lha/m9;->m:Lha/j6;

    .line 46
    .line 47
    new-instance v0, Lha/l9;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lha/l9;-><init>(Lha/m9;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lha/j6;->a(Lea/c;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const v0, 0x7f0b03f3

    .line 62
    .line 63
    .line 64
    if-ne p1, v0, :cond_6

    .line 65
    .line 66
    iget-object p1, p0, Lha/m9;->g:Landroid/widget/EditText;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    const-string p1, "\u8bf7\u8f93\u5165\u540d\u79f0"

    .line 83
    .line 84
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_3
    iget-object p1, p0, Lha/m9;->h:Landroid/widget/EditText;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_4

    .line 103
    .line 104
    const-string p1, "\u8bf7\u8f93\u5165\u952e\u7801"

    .line 105
    .line 106
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    iget-object p1, p0, Lha/m9;->h:Landroid/widget/EditText;

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    iget-object v0, p0, Lha/m9;->g:Landroid/widget/EditText;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-object v1, p0, Lha/m9;->l:Lha/p9;

    .line 139
    .line 140
    iget-object v1, v1, Lha/p9;->b:Lha/q9;

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iget-object v3, v1, Lha/q9;->h:Lz7/s;

    .line 150
    .line 151
    iget-object v4, v3, Lz7/s;->a:Lb8/n;

    .line 152
    .line 153
    invoke-virtual {v4, v2}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_5

    .line 158
    .line 159
    const-string p1, "\u5df2\u5b58\u5728\u6b64\u6309\u952e"

    .line 160
    .line 161
    invoke-static {p1}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_5
    new-instance v2, Lz7/s;

    .line 166
    .line 167
    invoke-direct {v2}, Lz7/s;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v4, "name"

    .line 171
    .line 172
    invoke-virtual {v2, v4, v0}, Lz7/s;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v4, Lz7/o;

    .line 176
    .line 177
    invoke-direct {v4}, Lz7/o;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v5, "maps"

    .line 181
    .line 182
    invoke-virtual {v2, v5, v4}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 183
    .line 184
    .line 185
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v3, v4, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 190
    .line 191
    .line 192
    new-instance v2, Lcom/yunpan/appmanage/bean/StrIntBoolBean;

    .line 193
    .line 194
    invoke-direct {v2, v0, p1}, Lcom/yunpan/appmanage/bean/StrIntBoolBean;-><init>(Ljava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    iget-object p1, v1, Lha/q9;->m:Lx9/u0;

    .line 198
    .line 199
    invoke-virtual {p1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Lc6/g;->b()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    const/4 v2, 0x1

    .line 207
    sub-int/2addr v0, v2

    .line 208
    iput v0, v1, Lha/q9;->i:I

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Lx9/u0;->F(I)V

    .line 211
    .line 212
    .line 213
    iget-object p1, v1, Lha/q9;->l:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 214
    .line 215
    iget v0, v1, Lha/q9;->i:I

    .line 216
    .line 217
    const/4 v3, 0x0

    .line 218
    invoke-virtual {p1, v0, v3, v2}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->smoothScrollToPositionWithOffset(IIZ)V

    .line 219
    .line 220
    .line 221
    new-instance p1, Ljava/util/ArrayList;

    .line 222
    .line 223
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .line 225
    .line 226
    iget-object v0, v1, Lha/q9;->p:Lx9/t2;

    .line 227
    .line 228
    invoke-virtual {v0, p1}, Lc6/g;->E(Ljava/util/List;)V

    .line 229
    .line 230
    .line 231
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 232
    .line 233
    .line 234
    :cond_6
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lha/a4;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0b0443

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/widget/EditText;

    .line 12
    .line 13
    iput-object p1, p0, Lha/m9;->g:Landroid/widget/EditText;

    .line 14
    .line 15
    const p1, 0x7f0b0439

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/EditText;

    .line 23
    .line 24
    iput-object p1, p0, Lha/m9;->h:Landroid/widget/EditText;

    .line 25
    .line 26
    const p1, 0x7f0b03be

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object p1, p0, Lha/m9;->i:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 38
    .line 39
    .line 40
    const p1, 0x7f0b03bd

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object p1, p0, Lha/m9;->j:Landroid/widget/TextView;

    .line 50
    .line 51
    const p1, 0x7f0b03f3

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object p1, p0, Lha/m9;->k:Landroid/widget/TextView;

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lha/m9;->i:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lha/m9;->j:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lha/m9;->g:Landroid/widget/EditText;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lha/m9;->h:Landroid/widget/EditText;

    .line 81
    .line 82
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 83
    .line 84
    .line 85
    new-instance p1, Lha/j6;

    .line 86
    .line 87
    iget-object v0, p0, Lha/a4;->a:Landroid/app/Activity;

    .line 88
    .line 89
    iget-object v1, p0, Lha/a4;->b:Landroid/content/Context;

    .line 90
    .line 91
    invoke-direct {p1, v0, v1}, Lha/j6;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Lha/m9;->m:Lha/j6;

    .line 95
    .line 96
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-nez p3, :cond_4

    .line 6
    .line 7
    const/16 p3, 0x14

    .line 8
    .line 9
    const v0, 0x7f0b0443

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0b0439

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne p2, p3, :cond_1

    .line 17
    .line 18
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-ne p2, v0, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lha/m9;->h:Landroid/widget/EditText;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 27
    .line 28
    .line 29
    return v2

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-ne p1, v1, :cond_4

    .line 35
    .line 36
    iget-object p1, p0, Lha/m9;->k:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_1
    const/16 p3, 0x13

    .line 43
    .line 44
    if-ne p2, p3, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-ne p1, v1, :cond_4

    .line 51
    .line 52
    iget-object p1, p0, Lha/m9;->g:Landroid/widget/EditText;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/16 p3, 0x16

    .line 59
    .line 60
    if-ne p2, p3, :cond_4

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-ne p2, v0, :cond_3

    .line 67
    .line 68
    iget-object p1, p0, Lha/m9;->g:Landroid/widget/EditText;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iget-object p2, p0, Lha/m9;->g:Landroid/widget/EditText;

    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-ne p1, p2, :cond_4

    .line 89
    .line 90
    iget-object p1, p0, Lha/m9;->g:Landroid/widget/EditText;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    iget-object p2, p0, Lha/m9;->g:Landroid/widget/EditText;

    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-ne p1, p2, :cond_4

    .line 111
    .line 112
    iget-object p1, p0, Lha/m9;->i:Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 115
    .line 116
    .line 117
    return v2

    .line 118
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    if-ne p1, v1, :cond_4

    .line 123
    .line 124
    iget-object p1, p0, Lha/m9;->h:Landroid/widget/EditText;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    iget-object p2, p0, Lha/m9;->h:Landroid/widget/EditText;

    .line 135
    .line 136
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    if-ne p1, p2, :cond_4

    .line 145
    .line 146
    iget-object p1, p0, Lha/m9;->h:Landroid/widget/EditText;

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    iget-object p2, p0, Lha/m9;->h:Landroid/widget/EditText;

    .line 157
    .line 158
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    if-ne p1, p2, :cond_4

    .line 167
    .line 168
    iget-object p1, p0, Lha/m9;->j:Landroid/widget/TextView;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 171
    .line 172
    .line 173
    return v2

    .line 174
    :catch_0
    :cond_4
    :goto_0
    const/4 p1, 0x0

    .line 175
    return p1
.end method
