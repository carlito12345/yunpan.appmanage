.class public final synthetic Lha/g6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/s5;


# direct methods
.method public synthetic constructor <init>(Lha/s5;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/g6;->a:I

    iput-object p1, p0, Lha/g6;->b:Lha/s5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lha/g6;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/g6;->b:Lha/s5;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const/16 v0, 0x13

    .line 16
    .line 17
    const/16 v1, 0x14

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    if-nez p3, :cond_1

    .line 21
    .line 22
    if-ne p2, v1, :cond_0

    .line 23
    .line 24
    iget-object p1, p1, Lha/s5;->q:Landroid/view/View;

    .line 25
    .line 26
    check-cast p1, Landroid/widget/RadioGroup;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-ne p2, v0, :cond_1

    .line 33
    .line 34
    iget-object p1, p1, Lha/s5;->m:Landroid/widget/TextView;

    .line 35
    .line 36
    check-cast p1, Landroid/widget/EditText;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-eq p2, v1, :cond_3

    .line 43
    .line 44
    if-ne p2, v0, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v2, 0x0

    .line 48
    :cond_3
    :goto_0
    return v2

    .line 49
    :pswitch_0
    iget-object p1, p0, Lha/g6;->b:Lha/s5;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    const/16 v0, 0x13

    .line 59
    .line 60
    const/16 v1, 0x14

    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    if-nez p3, :cond_5

    .line 64
    .line 65
    if-ne p2, v1, :cond_4

    .line 66
    .line 67
    iget-object p1, p1, Lha/s5;->n:Landroid/widget/TextView;

    .line 68
    .line 69
    check-cast p1, Landroid/widget/EditText;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    if-ne p2, v0, :cond_5

    .line 76
    .line 77
    iget-object p1, p1, Lha/s5;->l:Landroid/widget/TextView;

    .line 78
    .line 79
    check-cast p1, Landroid/widget/EditText;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    if-eq p2, v1, :cond_7

    .line 86
    .line 87
    if-ne p2, v0, :cond_6

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    const/4 v2, 0x0

    .line 91
    :cond_7
    :goto_1
    return v2

    .line 92
    :pswitch_1
    iget-object p1, p0, Lha/g6;->b:Lha/s5;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    const/16 v0, 0x13

    .line 102
    .line 103
    const/16 v1, 0x14

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    if-nez p3, :cond_9

    .line 107
    .line 108
    if-ne p2, v1, :cond_8

    .line 109
    .line 110
    iget-object p1, p1, Lha/s5;->m:Landroid/widget/TextView;

    .line 111
    .line 112
    check-cast p1, Landroid/widget/EditText;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_8
    if-ne p2, v0, :cond_9

    .line 119
    .line 120
    iget-object p1, p1, Lha/s5;->k:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p1, Landroid/widget/EditText;

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_9
    if-eq p2, v1, :cond_b

    .line 129
    .line 130
    if-ne p2, v0, :cond_a

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_a
    const/4 v2, 0x0

    .line 134
    :cond_b
    :goto_2
    return v2

    .line 135
    :pswitch_2
    iget-object p1, p0, Lha/g6;->b:Lha/s5;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 141
    .line 142
    .line 143
    move-result p3

    .line 144
    const/4 v0, 0x1

    .line 145
    const/16 v1, 0x14

    .line 146
    .line 147
    if-nez p3, :cond_c

    .line 148
    .line 149
    if-ne p2, v1, :cond_c

    .line 150
    .line 151
    iget-object p1, p1, Lha/s5;->l:Landroid/widget/TextView;

    .line 152
    .line 153
    check-cast p1, Landroid/widget/EditText;

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_c
    if-eq p2, v1, :cond_e

    .line 160
    .line 161
    const/16 p1, 0x13

    .line 162
    .line 163
    if-ne p2, p1, :cond_d

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_d
    const/4 v0, 0x0

    .line 167
    :cond_e
    :goto_3
    return v0

    .line 168
    :pswitch_3
    iget-object v0, p0, Lha/g6;->b:Lha/s5;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    const/16 v1, 0x13

    .line 174
    .line 175
    const/4 v2, 0x1

    .line 176
    if-ne p2, v1, :cond_f

    .line 177
    .line 178
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_13

    .line 183
    .line 184
    iget-object p1, v0, Lha/s5;->q:Landroid/view/View;

    .line 185
    .line 186
    check-cast p1, Landroid/widget/RadioGroup;

    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_f
    const/16 v0, 0x15

    .line 193
    .line 194
    if-ne p2, v0, :cond_10

    .line 195
    .line 196
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    if-nez p2, :cond_13

    .line 201
    .line 202
    const/16 p2, 0x14d

    .line 203
    .line 204
    invoke-static {p2, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_10
    const/16 v0, 0x16

    .line 209
    .line 210
    if-ne p2, v0, :cond_11

    .line 211
    .line 212
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    if-nez p2, :cond_13

    .line 217
    .line 218
    const/16 p2, 0x14c

    .line 219
    .line 220
    invoke-static {p2, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_11
    const/16 v0, 0x14

    .line 225
    .line 226
    if-ne p2, v0, :cond_12

    .line 227
    .line 228
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 229
    .line 230
    .line 231
    move-result p2

    .line 232
    if-nez p2, :cond_13

    .line 233
    .line 234
    const/16 p2, 0x14b

    .line 235
    .line 236
    invoke-static {p2, p1}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_12
    const/4 v2, 0x0

    .line 241
    :cond_13
    :goto_4
    return v2

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
