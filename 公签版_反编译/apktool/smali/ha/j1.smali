.class public final synthetic Lha/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    iput v0, p0, Lha/j1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/j1;->c:Landroid/widget/EditText;

    iput-object p2, p0, Lha/j1;->b:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/EditText;I)V
    .locals 0

    .line 2
    iput p3, p0, Lha/j1;->a:I

    iput-object p1, p0, Lha/j1;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lha/j1;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget p1, p0, Lha/j1;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x14

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    iget-object p1, p0, Lha/j1;->b:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 p1, 0x13

    .line 24
    .line 25
    if-ne p2, p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lha/j1;->c:Landroid/widget/EditText;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :cond_2
    :goto_0
    return v0

    .line 41
    :pswitch_0
    const/16 p1, 0x14

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    if-ne p2, p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_5

    .line 51
    .line 52
    iget-object p1, p0, Lha/j1;->b:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/16 p1, 0x13

    .line 59
    .line 60
    if-ne p2, p1, :cond_4

    .line 61
    .line 62
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_5

    .line 67
    .line 68
    iget-object p1, p0, Lha/j1;->c:Landroid/widget/EditText;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    const/4 v0, 0x0

    .line 75
    :cond_5
    :goto_1
    return v0

    .line 76
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_8

    .line 81
    .line 82
    const/16 p1, 0x14

    .line 83
    .line 84
    const/4 p3, 0x1

    .line 85
    if-ne p2, p1, :cond_6

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    const/16 p1, 0x13

    .line 89
    .line 90
    if-ne p2, p1, :cond_7

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_7
    const/16 p1, 0x16

    .line 94
    .line 95
    if-ne p2, p1, :cond_8

    .line 96
    .line 97
    iget-object p1, p0, Lha/j1;->c:Landroid/widget/EditText;

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 112
    .line 113
    .line 114
    move-result p3

    .line 115
    if-ne p2, p3, :cond_8

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-ne p2, p1, :cond_8

    .line 134
    .line 135
    iget-object p1, p0, Lha/j1;->b:Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 138
    .line 139
    .line 140
    :cond_8
    const/4 p3, 0x0

    .line 141
    :goto_2
    return p3

    .line 142
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    const/4 p3, 0x1

    .line 147
    if-ne p1, p3, :cond_b

    .line 148
    .line 149
    const/16 p1, 0x42

    .line 150
    .line 151
    if-eq p2, p1, :cond_a

    .line 152
    .line 153
    const/16 p1, 0x14

    .line 154
    .line 155
    if-ne p2, p1, :cond_9

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_9
    const/16 p1, 0x13

    .line 159
    .line 160
    if-ne p2, p1, :cond_c

    .line 161
    .line 162
    iget-object p1, p0, Lha/j1;->c:Landroid/widget/EditText;

    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_a
    :goto_3
    iget-object p1, p0, Lha/j1;->b:Landroid/widget/TextView;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 171
    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_b
    const/4 p3, 0x0

    .line 175
    :cond_c
    :goto_4
    return p3

    .line 176
    :pswitch_3
    const/16 p1, 0x14

    .line 177
    .line 178
    const/4 v0, 0x1

    .line 179
    if-ne p2, p1, :cond_d

    .line 180
    .line 181
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-nez p1, :cond_f

    .line 186
    .line 187
    iget-object p1, p0, Lha/j1;->b:Landroid/widget/TextView;

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 190
    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_d
    const/16 p1, 0x13

    .line 194
    .line 195
    if-ne p2, p1, :cond_e

    .line 196
    .line 197
    iget-object p1, p0, Lha/j1;->c:Landroid/widget/EditText;

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_e
    const/4 v0, 0x0

    .line 204
    :cond_f
    :goto_5
    return v0

    .line 205
    :pswitch_4
    const/16 p1, 0x14

    .line 206
    .line 207
    const/4 v0, 0x1

    .line 208
    if-ne p2, p1, :cond_10

    .line 209
    .line 210
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-nez p1, :cond_12

    .line 215
    .line 216
    iget-object p1, p0, Lha/j1;->b:Landroid/widget/TextView;

    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 219
    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_10
    const/16 p1, 0x13

    .line 223
    .line 224
    if-ne p2, p1, :cond_11

    .line 225
    .line 226
    iget-object p1, p0, Lha/j1;->c:Landroid/widget/EditText;

    .line 227
    .line 228
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 229
    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_11
    const/4 v0, 0x0

    .line 233
    :cond_12
    :goto_6
    return v0

    .line 234
    nop

    .line 235
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
