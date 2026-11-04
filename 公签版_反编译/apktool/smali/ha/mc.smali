.class public final synthetic Lha/mc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/s5;


# direct methods
.method public synthetic constructor <init>(Lha/s5;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/mc;->a:I

    iput-object p1, p0, Lha/mc;->b:Lha/s5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget v0, p0, Lha/mc;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, ";"

    .line 7
    .line 8
    iget-object v1, p0, Lha/mc;->b:Lha/s5;

    .line 9
    .line 10
    iget-object v2, v1, Lha/s5;->j:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lx9/n5;

    .line 13
    .line 14
    const/16 v3, 0x29a

    .line 15
    .line 16
    invoke-static {v3, p1}, Lcom/bumptech/glide/c;->i(ILandroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v1, Lha/s5;->i:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v3, "\u8fde\u63a5\u4e2d"

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    goto/16 :goto_3

    .line 40
    .line 41
    :cond_0
    iget-object p1, v1, Lha/s5;->i:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    :try_start_0
    iget-object p1, v1, Lha/s5;->l:Landroid/widget/TextView;

    .line 49
    .line 50
    check-cast p1, Landroid/widget/EditText;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, v2, Lx9/n5;->c:Ljava/lang/String;

    .line 65
    .line 66
    iget-object p1, v1, Lha/s5;->m:Landroid/widget/TextView;

    .line 67
    .line 68
    check-cast p1, Landroid/widget/EditText;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput p1, v2, Lx9/n5;->d:I

    .line 87
    .line 88
    iget-object p1, v1, Lha/s5;->n:Landroid/widget/TextView;

    .line 89
    .line 90
    check-cast p1, Landroid/widget/EditText;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, v2, Lx9/n5;->e:Ljava/lang/String;

    .line 105
    .line 106
    iget-object p1, v1, Lha/s5;->p:Landroid/view/View;

    .line 107
    .line 108
    check-cast p1, Landroid/widget/EditText;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iput-object p1, v2, Lx9/n5;->f:Ljava/lang/String;

    .line 119
    .line 120
    iget-object p1, v1, Lha/s5;->q:Landroid/view/View;

    .line 121
    .line 122
    check-cast p1, Landroid/widget/EditText;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iput-object p1, v2, Lx9/n5;->v:Ljava/lang/String;

    .line 137
    .line 138
    iget-object p1, v1, Lha/s5;->r:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p1, Landroid/widget/EditText;

    .line 141
    .line 142
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-nez v3, :cond_1

    .line 159
    .line 160
    const-string v3, "\uff1b"

    .line 161
    .line 162
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string v3, "/"

    .line 167
    .line 168
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    goto :goto_0

    .line 173
    :catch_0
    move-exception p1

    .line 174
    goto :goto_1

    .line 175
    :cond_1
    :goto_0
    iput-object p1, v2, Lx9/n5;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 179
    .line 180
    .line 181
    :goto_2
    new-instance p1, Lba/f;

    .line 182
    .line 183
    const/16 v0, 0x10

    .line 184
    .line 185
    invoke-direct {p1, v0, v2}, Lba/f;-><init>(ILx9/n5;)V

    .line 186
    .line 187
    .line 188
    new-instance v0, Lmc/c;

    .line 189
    .line 190
    const/4 v2, 0x0

    .line 191
    invoke-direct {v0, v2, p1}, Lmc/c;-><init>(ILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    sget-object p1, Lrc/f;->b:Lec/j;

    .line 195
    .line 196
    invoke-virtual {v0, p1}, Lec/b;->d(Lec/j;)Lmc/p;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {}, Lfc/b;->a()Lfc/e;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p1, v0}, Lec/b;->a(Lfc/e;)Lmc/g;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    new-instance v0, Lha/p0;

    .line 209
    .line 210
    const/16 v2, 0x16

    .line 211
    .line 212
    invoke-direct {v0, v2, v1}, Lha/p0;-><init>(ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v0}, Lec/b;->b(Lec/e;)V

    .line 216
    .line 217
    .line 218
    :goto_3
    return-void

    .line 219
    :pswitch_0
    iget-object p1, p0, Lha/mc;->b:Lha/s5;

    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    new-instance v0, Lha/qc;

    .line 225
    .line 226
    new-instance v1, Lha/p7;

    .line 227
    .line 228
    const/16 v2, 0x11

    .line 229
    .line 230
    invoke-direct {v1, v2, p1}, Lha/p7;-><init>(ILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    iget-object v2, p1, Lha/a4;->a:Landroid/app/Activity;

    .line 234
    .line 235
    iget-object p1, p1, Lha/a4;->b:Landroid/content/Context;

    .line 236
    .line 237
    invoke-direct {v0, v2, p1, v1}, Lha/qc;-><init>(Landroid/app/Activity;Landroid/content/Context;Lha/p7;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lha/qc;->show()V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    nop

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
