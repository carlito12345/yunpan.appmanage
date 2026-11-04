.class public final Lha/ad;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Lha/zc;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZLha/zc;)V
    .locals 1

    .line 1
    const v0, 0x1030005

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    iput-object p1, p0, Lha/ad;->c:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Lha/ad;->d:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/16 v0, 0x400

    .line 22
    .line 23
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 24
    .line 25
    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    const p1, 0x7f0e00f8

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    if-eqz p3, :cond_1

    .line 36
    .line 37
    const p1, 0x7f0e00f7

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const p1, 0x7f0e00f6

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 45
    .line 46
    .line 47
    :goto_1
    iput-boolean p2, p0, Lha/ad;->a:Z

    .line 48
    .line 49
    iput-boolean p3, p0, Lha/ad;->b:Z

    .line 50
    .line 51
    iput-object p4, p0, Lha/ad;->e:Lha/zc;

    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/ad;->e:Lha/zc;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Lha/zc;->d(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final b(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lha/ad;->c:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    const-string v2, "*"

    .line 13
    .line 14
    invoke-static {v0, v2}, Lg/b;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/ad;->e:Lha/zc;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lha/zc;->d(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lha/ad;->a:Z

    .line 5
    .line 6
    iget-boolean v0, p0, Lha/ad;->b:Z

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const p1, 0x7f0b05ba

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/TextView;

    .line 18
    .line 19
    const v1, 0x7f0b053b

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/widget/TextView;

    .line 27
    .line 28
    const v2, 0x7f0b05c0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/widget/TextView;

    .line 36
    .line 37
    const-string v3, ""

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 43
    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    const-string v0, "\u8bf7\u8bbe\u7f6e\u7ba1\u5bb6\u542f\u52a8\u5bc6\u7801"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    const-string v0, "\u4f7f\u7528\u6309\u952e\uff08\u4e0a \u4e0b \u5de6 \u53f3\uff09\u6765\u8bbe\u7f6e\u5bc6\u7801\n\n\u6309OK\u952e\u786e\u8ba4\u5bc6\u7801\uff0c\u8f93\u9519\u4e86\u5c31\u957f\u6309\u6309OK\u952e"

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string v0, "\u8bf7\u8f93\u5165\u7ba1\u5bb6\u542f\u52a8\u5bc6\u7801"

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    new-instance v0, Lha/xc;

    .line 67
    .line 68
    invoke-direct {v0, p0, v1}, Lha/xc;-><init>(Lha/ad;Landroid/widget/TextView;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lha/yc;

    .line 75
    .line 76
    invoke-direct {v0, p0, v1, p1}, Lha/yc;-><init>(Lha/ad;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lha/e2;

    .line 83
    .line 84
    const/4 v2, 0x3

    .line 85
    invoke-direct {v0, p0, v1, v2}, Lha/e2;-><init>(Landroid/view/KeyEvent$Callback;Landroid/view/View;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    if-eqz v0, :cond_2

    .line 93
    .line 94
    const p1, 0x7f0b0108

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Landroid/widget/EditText;

    .line 102
    .line 103
    const v0, 0x7f0b0109

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroid/widget/EditText;

    .line 111
    .line 112
    const v1, 0x7f0b03f3

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Landroid/widget/TextView;

    .line 120
    .line 121
    const v2, 0x7f0b0397

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Landroid/widget/TextView;

    .line 129
    .line 130
    const v3, 0x7f0b03ac

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Landroid/widget/TextView;

    .line 138
    .line 139
    new-instance v4, Lha/s6;

    .line 140
    .line 141
    const/4 v5, 0x4

    .line 142
    invoke-direct {v4, p0, p1, v0, v5}, Lha/s6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/widget/TextView;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    new-instance v1, Lha/wc;

    .line 149
    .line 150
    const/4 v4, 0x0

    .line 151
    invoke-direct {v1, p0, v4}, Lha/wc;-><init>(Lha/ad;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .line 156
    .line 157
    new-instance v1, Lc6/c;

    .line 158
    .line 159
    const/16 v2, 0x19

    .line 160
    .line 161
    invoke-direct {v1, v0, v2, p1}, Lc6/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_2
    const p1, 0x7f0b036b

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    new-instance v0, Lha/wc;

    .line 176
    .line 177
    const/4 v1, 0x1

    .line 178
    invoke-direct {v0, p0, v1}, Lha/wc;-><init>(Lha/ad;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    const p1, 0x7f0b0107

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Landroid/widget/EditText;

    .line 192
    .line 193
    new-instance v0, Lha/aa;

    .line 194
    .line 195
    invoke-direct {v0, p0, v1}, Lha/aa;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 199
    .line 200
    .line 201
    :goto_1
    return-void
.end method
