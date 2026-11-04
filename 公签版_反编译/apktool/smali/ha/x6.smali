.class public final synthetic Lha/x6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/x6;->a:I

    iput-object p1, p0, Lha/x6;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    const/16 p1, 0x13

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lha/x6;->b:Landroid/widget/TextView;

    .line 6
    .line 7
    const/16 v3, 0x14

    .line 8
    .line 9
    iget v4, p0, Lha/x6;->a:I

    .line 10
    .line 11
    packed-switch v4, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget p1, Lcom/yunpan/appmanage/ui/ActivityOuShangWhitelist;->G:I

    .line 15
    .line 16
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    if-ne p2, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    .line 30
    :pswitch_0
    if-ne p2, v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 39
    .line 40
    .line 41
    :cond_1
    return v1

    .line 42
    :pswitch_1
    if-ne p2, v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_4

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    if-ne p2, p1, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const/4 v0, 0x0

    .line 58
    :cond_4
    :goto_1
    return v0

    .line 59
    :pswitch_2
    if-ne p2, v3, :cond_5

    .line 60
    .line 61
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_7

    .line 66
    .line 67
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_5
    if-ne p2, p1, :cond_6

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_6
    const/4 v0, 0x0

    .line 75
    :cond_7
    :goto_2
    return v0

    .line 76
    :pswitch_3
    if-ne p2, v3, :cond_8

    .line 77
    .line 78
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_a

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_8
    if-ne p2, p1, :cond_9

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_9
    const/4 v0, 0x0

    .line 92
    :cond_a
    :goto_3
    return v0

    .line 93
    :pswitch_4
    if-ne p2, v3, :cond_b

    .line 94
    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_d

    .line 100
    .line 101
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_b
    if-ne p2, p1, :cond_c

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_c
    const/4 v0, 0x0

    .line 109
    :cond_d
    :goto_4
    return v0

    .line 110
    :pswitch_5
    if-ne p2, v3, :cond_e

    .line 111
    .line 112
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_10

    .line 117
    .line 118
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 119
    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_e
    if-ne p2, p1, :cond_f

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_f
    const/4 v0, 0x0

    .line 126
    :cond_10
    :goto_5
    return v0

    .line 127
    :pswitch_6
    if-ne p2, v3, :cond_11

    .line 128
    .line 129
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_13

    .line 134
    .line 135
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 136
    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_11
    if-ne p2, p1, :cond_12

    .line 140
    .line 141
    goto :goto_6

    .line 142
    :cond_12
    const/4 v0, 0x0

    .line 143
    :cond_13
    :goto_6
    return v0

    .line 144
    :pswitch_7
    if-ne p2, v3, :cond_14

    .line 145
    .line 146
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_16

    .line 151
    .line 152
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 153
    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_14
    if-ne p2, p1, :cond_15

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_15
    const/4 v0, 0x0

    .line 160
    :cond_16
    :goto_7
    return v0

    .line 161
    :pswitch_8
    if-ne p2, v3, :cond_17

    .line 162
    .line 163
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-nez p1, :cond_19

    .line 168
    .line 169
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 170
    .line 171
    .line 172
    goto :goto_8

    .line 173
    :cond_17
    if-ne p2, p1, :cond_18

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_18
    const/4 v0, 0x0

    .line 177
    :cond_19
    :goto_8
    return v0

    .line 178
    :pswitch_9
    if-ne p2, v3, :cond_1a

    .line 179
    .line 180
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-nez p1, :cond_1c

    .line 185
    .line 186
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 187
    .line 188
    .line 189
    goto :goto_9

    .line 190
    :cond_1a
    if-ne p2, p1, :cond_1b

    .line 191
    .line 192
    goto :goto_9

    .line 193
    :cond_1b
    const/4 v0, 0x0

    .line 194
    :cond_1c
    :goto_9
    return v0

    .line 195
    :pswitch_a
    if-ne p2, v3, :cond_1d

    .line 196
    .line 197
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-nez p1, :cond_1f

    .line 202
    .line 203
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 204
    .line 205
    .line 206
    goto :goto_a

    .line 207
    :cond_1d
    if-ne p2, p1, :cond_1e

    .line 208
    .line 209
    goto :goto_a

    .line 210
    :cond_1e
    const/4 v0, 0x0

    .line 211
    :cond_1f
    :goto_a
    return v0

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
