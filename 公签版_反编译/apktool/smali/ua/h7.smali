.class public final Lua/h7;
.super Lcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/h7;->e:Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/desay_svautomotive/libsvcarinfo/ICarInfoCallBack$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChangeEvent(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lua/h7;->e:Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;

    .line 2
    .line 3
    iget v1, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->R0:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    add-int/2addr v1, v2

    .line 7
    iput v1, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->R0:I

    .line 8
    .line 9
    const/16 v3, 0x12

    .line 10
    .line 11
    if-le v1, v3, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->R0:I

    .line 15
    .line 16
    :cond_0
    iget v1, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->R0:I

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->C:Landroid/widget/TextView;

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_1
    if-ne v1, v2, :cond_2

    .line 25
    .line 26
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->D:Landroid/widget/TextView;

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_2
    const/4 v2, 0x2

    .line 31
    if-ne v1, v2, :cond_3

    .line 32
    .line 33
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->E:Landroid/widget/TextView;

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_3
    const/4 v2, 0x3

    .line 38
    if-ne v1, v2, :cond_4

    .line 39
    .line 40
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->F:Landroid/widget/TextView;

    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_4
    const/4 v2, 0x4

    .line 45
    if-ne v1, v2, :cond_5

    .line 46
    .line 47
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->G:Landroid/widget/TextView;

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :cond_5
    const/4 v2, 0x5

    .line 52
    if-ne v1, v2, :cond_6

    .line 53
    .line 54
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->H:Landroid/widget/TextView;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_6
    const/4 v2, 0x6

    .line 58
    if-ne v1, v2, :cond_7

    .line 59
    .line 60
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->I:Landroid/widget/TextView;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_7
    const/4 v2, 0x7

    .line 64
    if-ne v1, v2, :cond_8

    .line 65
    .line 66
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->K:Landroid/widget/TextView;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_8
    const/16 v2, 0x8

    .line 70
    .line 71
    if-ne v1, v2, :cond_9

    .line 72
    .line 73
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->L:Landroid/widget/TextView;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_9
    const/16 v2, 0x9

    .line 77
    .line 78
    if-ne v1, v2, :cond_a

    .line 79
    .line 80
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->M:Landroid/widget/TextView;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_a
    const/16 v2, 0xa

    .line 84
    .line 85
    if-ne v1, v2, :cond_b

    .line 86
    .line 87
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->N:Landroid/widget/TextView;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_b
    const/16 v2, 0xb

    .line 91
    .line 92
    if-ne v1, v2, :cond_c

    .line 93
    .line 94
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->O:Landroid/widget/TextView;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_c
    const/16 v2, 0xc

    .line 98
    .line 99
    if-ne v1, v2, :cond_d

    .line 100
    .line 101
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->P:Landroid/widget/TextView;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_d
    const/16 v2, 0xd

    .line 105
    .line 106
    if-ne v1, v2, :cond_e

    .line 107
    .line 108
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->R:Landroid/widget/TextView;

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_e
    const/16 v2, 0xe

    .line 112
    .line 113
    if-ne v1, v2, :cond_f

    .line 114
    .line 115
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->S:Landroid/widget/TextView;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_f
    const/16 v2, 0xf

    .line 119
    .line 120
    if-ne v1, v2, :cond_10

    .line 121
    .line 122
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->T:Landroid/widget/TextView;

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_10
    const/16 v2, 0x10

    .line 126
    .line 127
    if-ne v1, v2, :cond_11

    .line 128
    .line 129
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->V:Landroid/widget/TextView;

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_11
    const/16 v2, 0x11

    .line 133
    .line 134
    if-ne v1, v2, :cond_12

    .line 135
    .line 136
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->X:Landroid/widget/TextView;

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_12
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextAiOnY;->Y:Landroid/widget/TextView;

    .line 140
    .line 141
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v2, "type: "

    .line 144
    .line 145
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string p1, ", Value: "

    .line 152
    .line 153
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method
