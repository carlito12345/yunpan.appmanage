.class public final synthetic Lha/d6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/e6;


# direct methods
.method public synthetic constructor <init>(Lha/e6;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/d6;->a:I

    iput-object p1, p0, Lha/d6;->b:Lha/e6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget p1, p0, Lha/d6;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/d6;->b:Lha/e6;

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
    if-nez p3, :cond_0

    .line 16
    .line 17
    const/16 p3, 0x13

    .line 18
    .line 19
    if-ne p2, p3, :cond_0

    .line 20
    .line 21
    iget-object p1, p1, Lha/e6;->p:Landroid/widget/EditText;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1

    .line 28
    :pswitch_0
    iget-object p1, p0, Lha/d6;->b:Lha/e6;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-nez p3, :cond_2

    .line 38
    .line 39
    const/16 p3, 0x14

    .line 40
    .line 41
    if-ne p2, p3, :cond_1

    .line 42
    .line 43
    iget-object p1, p1, Lha/e6;->r:Landroid/widget/EditText;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/16 p3, 0x13

    .line 50
    .line 51
    if-ne p2, p3, :cond_2

    .line 52
    .line 53
    iget-object p1, p1, Lha/e6;->p:Landroid/widget/EditText;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 59
    return p1

    .line 60
    :pswitch_1
    iget-object p1, p0, Lha/d6;->b:Lha/e6;

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    if-nez p3, :cond_4

    .line 70
    .line 71
    const/16 p3, 0x14

    .line 72
    .line 73
    if-ne p2, p3, :cond_3

    .line 74
    .line 75
    iget-object p1, p1, Lha/e6;->q:Landroid/widget/EditText;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const/16 p3, 0x13

    .line 82
    .line 83
    if-ne p2, p3, :cond_4

    .line 84
    .line 85
    iget-object p1, p1, Lha/e6;->n:Landroid/widget/EditText;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 91
    return p1

    .line 92
    :pswitch_2
    iget-object p1, p0, Lha/d6;->b:Lha/e6;

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
    if-nez p3, :cond_6

    .line 102
    .line 103
    const/16 p3, 0x14

    .line 104
    .line 105
    if-ne p2, p3, :cond_5

    .line 106
    .line 107
    iget-object p1, p1, Lha/e6;->p:Landroid/widget/EditText;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    const/16 p3, 0x13

    .line 114
    .line 115
    if-ne p2, p3, :cond_6

    .line 116
    .line 117
    iget-object p1, p1, Lha/e6;->m:Landroid/widget/EditText;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 120
    .line 121
    .line 122
    :cond_6
    :goto_2
    const/4 p1, 0x0

    .line 123
    return p1

    .line 124
    :pswitch_3
    iget-object p1, p0, Lha/d6;->b:Lha/e6;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    if-nez p3, :cond_8

    .line 134
    .line 135
    const/16 p3, 0x14

    .line 136
    .line 137
    if-ne p2, p3, :cond_7

    .line 138
    .line 139
    iget-object p1, p1, Lha/e6;->n:Landroid/widget/EditText;

    .line 140
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_7
    const/16 p3, 0x13

    .line 146
    .line 147
    if-ne p2, p3, :cond_8

    .line 148
    .line 149
    iget-object p1, p1, Lha/e6;->l:Landroid/widget/EditText;

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 152
    .line 153
    .line 154
    :cond_8
    :goto_3
    const/4 p1, 0x0

    .line 155
    return p1

    .line 156
    :pswitch_4
    iget-object p1, p0, Lha/d6;->b:Lha/e6;

    .line 157
    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 162
    .line 163
    .line 164
    move-result p3

    .line 165
    if-nez p3, :cond_a

    .line 166
    .line 167
    const/16 p3, 0x14

    .line 168
    .line 169
    if-ne p2, p3, :cond_9

    .line 170
    .line 171
    iget-object p1, p1, Lha/e6;->m:Landroid/widget/EditText;

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_9
    const/16 p3, 0x13

    .line 178
    .line 179
    if-ne p2, p3, :cond_a

    .line 180
    .line 181
    iget-object p1, p1, Lha/e6;->k:Landroid/widget/EditText;

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 184
    .line 185
    .line 186
    :cond_a
    :goto_4
    const/4 p1, 0x0

    .line 187
    return p1

    .line 188
    :pswitch_5
    iget-object p1, p0, Lha/d6;->b:Lha/e6;

    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 194
    .line 195
    .line 196
    move-result p3

    .line 197
    if-nez p3, :cond_c

    .line 198
    .line 199
    const/16 p3, 0x14

    .line 200
    .line 201
    if-ne p2, p3, :cond_b

    .line 202
    .line 203
    iget-object p1, p1, Lha/e6;->l:Landroid/widget/EditText;

    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_b
    const/16 p3, 0x13

    .line 210
    .line 211
    if-ne p2, p3, :cond_c

    .line 212
    .line 213
    iget-object p1, p1, Lha/e6;->g:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 216
    .line 217
    .line 218
    :cond_c
    :goto_5
    const/4 p1, 0x0

    .line 219
    return p1

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
