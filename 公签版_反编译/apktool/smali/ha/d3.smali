.class public final synthetic Lha/d3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/j3;


# direct methods
.method public synthetic constructor <init>(Lha/j3;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/d3;->a:I

    iput-object p1, p0, Lha/d3;->b:Lha/j3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget v0, p0, Lha/d3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/d3;->b:Lha/j3;

    .line 7
    .line 8
    iget-object v0, p1, Lha/j3;->h:Lx9/w3;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p1, "\u8bf7\u9009\u62e9\u6587\u4ef6"

    .line 13
    .line 14
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p1, Lha/j3;->m:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-ge v0, v1, :cond_1

    .line 26
    .line 27
    const-string p1, "\u8bf7\u8bbe\u7f6e\u64ad\u653e\u97f3\u91cf"

    .line 28
    .line 29
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v1, p1, Lha/j3;->h:Lx9/w3;

    .line 34
    .line 35
    iget-object v0, p1, Lha/j3;->x:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 36
    .line 37
    iget v2, v0, Lcom/yunpan/appmanage/bean/KeyMapSelectBean;->gn_type:I

    .line 38
    .line 39
    const/4 v0, -0x1

    .line 40
    if-ne v2, v0, :cond_2

    .line 41
    .line 42
    const/4 v3, -0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object v0, p1, Lha/j3;->m:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    move v3, v0

    .line 51
    :goto_0
    iget-object v4, p1, Lha/j3;->t:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 52
    .line 53
    iget-object v5, p1, Lha/j3;->v:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 54
    .line 55
    iget-object v6, p1, Lha/j3;->w:Lcom/yunpan/appmanage/bean/KeyMapSelectBean;

    .line 56
    .line 57
    iget-object v0, p1, Lha/j3;->n:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    mul-int/lit8 v7, v0, 0x64

    .line 64
    .line 65
    iget-object v0, p1, Lha/j3;->g:Lha/i3;

    .line 66
    .line 67
    invoke-interface/range {v0 .. v7}, Lha/i3;->c(Lx9/w3;IILcom/yunpan/appmanage/bean/KeyMapSelectBean;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;Lcom/yunpan/appmanage/bean/KeyMapSelectBean;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lha/j3;->dismiss()V

    .line 71
    .line 72
    .line 73
    :goto_1
    return-void

    .line 74
    :pswitch_0
    iget-object p1, p0, Lha/d3;->b:Lha/j3;

    .line 75
    .line 76
    invoke-static {p1}, Lha/j3;->a(Lha/j3;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_1
    iget-object v0, p0, Lha/d3;->b:Lha/j3;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    new-instance v1, Landroid/widget/PopupMenu;

    .line 86
    .line 87
    iget-object v2, v0, Lha/a4;->b:Landroid/content/Context;

    .line 88
    .line 89
    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const v2, 0x7f100002

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {p1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 104
    .line 105
    .line 106
    new-instance p1, Lha/y2;

    .line 107
    .line 108
    const/4 v2, 0x0

    .line 109
    invoke-direct {p1, v0, v2}, Lha/y2;-><init>(Landroid/view/View$OnCreateContextMenuListener;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_2
    iget-object p1, p0, Lha/d3;->b:Lha/j3;

    .line 120
    .line 121
    iget-object v0, p1, Lha/j3;->k:Landroid/widget/TextView;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-string v1, "\u505c\u6b62\u6d4b\u8bd5"

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iget-object v2, p1, Lha/j3;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    const/4 v0, 0x1

    .line 142
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p1, Lha/j3;->k:Landroid/widget/TextView;

    .line 146
    .line 147
    const-string v0, "\u6d4b\u8bd5\u901a\u9053"

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 154
    .line 155
    const/16 v3, 0x17

    .line 156
    .line 157
    if-ge v0, v3, :cond_4

    .line 158
    .line 159
    const-string p1, "\u7cfb\u7edf\u7248\u672c\u592a\u4f4e\uff0c\u4e0d\u80fd\u4f7f\u7528\u6b64\u529f\u80fd"

    .line 160
    .line 161
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_4
    iget-object v0, p1, Lha/j3;->k:Landroid/widget/TextView;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    const/4 v0, 0x0

    .line 171
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Lha/w2;

    .line 175
    .line 176
    invoke-direct {v0, p1}, Lha/w2;-><init>(Lha/j3;)V

    .line 177
    .line 178
    .line 179
    new-instance v1, Lmc/c;

    .line 180
    .line 181
    const/4 v2, 0x0

    .line 182
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    sget-object v0, Lrc/f;->b:Lec/j;

    .line 186
    .line 187
    invoke-virtual {v1, v0}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    new-instance v1, Lha/p0;

    .line 200
    .line 201
    const/4 v2, 0x5

    .line 202
    invoke-direct {v1, v2, p1}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1}, Lec/b;->b(Lec/e;)V

    .line 206
    .line 207
    .line 208
    :goto_2
    return-void

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
