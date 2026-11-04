.class public final synthetic Lha/qe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lha/se;


# direct methods
.method public synthetic constructor <init>(Lha/se;I)V
    .locals 0

    .line 1
    iput p2, p0, Lha/qe;->a:I

    iput-object p1, p0, Lha/qe;->b:Lha/se;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget v0, p0, Lha/qe;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lha/qe;->b:Lha/se;

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
    iget-object p1, p1, Lha/se;->l:Landroid/widget/TextView;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    if-ne p2, v0, :cond_1

    .line 31
    .line 32
    iget-object p1, p1, Lha/se;->j:Landroid/widget/EditText;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-eq p2, v1, :cond_3

    .line 39
    .line 40
    if-ne p2, v0, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v2, 0x0

    .line 44
    :cond_3
    :goto_0
    return v2

    .line 45
    :pswitch_0
    iget-object p1, p0, Lha/qe;->b:Lha/se;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 51
    .line 52
    .line 53
    move-result p3

    .line 54
    const/16 v0, 0x13

    .line 55
    .line 56
    const/16 v1, 0x14

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    if-nez p3, :cond_5

    .line 60
    .line 61
    if-ne p2, v1, :cond_4

    .line 62
    .line 63
    iget-object p1, p1, Lha/se;->k:Landroid/widget/EditText;

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_4
    if-ne p2, v0, :cond_5

    .line 70
    .line 71
    iget-object p1, p1, Lha/se;->i:Landroid/widget/EditText;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    if-eq p2, v1, :cond_7

    .line 78
    .line 79
    if-ne p2, v0, :cond_6

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    const/4 v2, 0x0

    .line 83
    :cond_7
    :goto_1
    return v2

    .line 84
    :pswitch_1
    iget-object p1, p0, Lha/qe;->b:Lha/se;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    const/4 v0, 0x1

    .line 94
    const/16 v1, 0x14

    .line 95
    .line 96
    if-nez p3, :cond_8

    .line 97
    .line 98
    if-ne p2, v1, :cond_8

    .line 99
    .line 100
    iget-object p1, p1, Lha/se;->j:Landroid/widget/EditText;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_8
    if-eq p2, v1, :cond_a

    .line 107
    .line 108
    const/16 p1, 0x13

    .line 109
    .line 110
    if-ne p2, p1, :cond_9

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_9
    const/4 v0, 0x0

    .line 114
    :cond_a
    :goto_2
    return v0

    .line 115
    :pswitch_2
    iget-object v0, p0, Lha/qe;->b:Lha/se;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    const/16 v1, 0x13

    .line 121
    .line 122
    const/4 v2, 0x1

    .line 123
    if-ne p2, v1, :cond_b

    .line 124
    .line 125
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_f

    .line 130
    .line 131
    iget-object p1, v0, Lha/se;->k:Landroid/widget/EditText;

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_b
    const/16 v0, 0x15

    .line 138
    .line 139
    if-ne p2, v0, :cond_c

    .line 140
    .line 141
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    if-nez p2, :cond_f

    .line 146
    .line 147
    const/16 p2, 0x14d

    .line 148
    .line 149
    invoke-static {p2, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_c
    const/16 v0, 0x16

    .line 154
    .line 155
    if-ne p2, v0, :cond_d

    .line 156
    .line 157
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-nez p2, :cond_f

    .line 162
    .line 163
    const/16 p2, 0x14c

    .line 164
    .line 165
    invoke-static {p2, p1}, Ls1/g;->W(ILandroid/view/View;)V

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_d
    const/16 v0, 0x14

    .line 170
    .line 171
    if-ne p2, v0, :cond_e

    .line 172
    .line 173
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    if-nez p2, :cond_f

    .line 178
    .line 179
    const/16 p2, 0x14b

    .line 180
    .line 181
    invoke-static {p2, p1}, Ls1/g;->Z(ILandroid/view/View;)V

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_e
    const/4 v2, 0x0

    .line 186
    :cond_f
    :goto_3
    return v2

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
