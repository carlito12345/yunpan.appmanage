.class public final synthetic Lcom/yunpan/appmanage/carsdk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/yunpan/appmanage/carsdk/a;->a:I

    iput-object p1, p0, Lcom/yunpan/appmanage/carsdk/a;->d:Ljava/lang/Object;

    iput p2, p0, Lcom/yunpan/appmanage/carsdk/a;->b:I

    iput p3, p0, Lcom/yunpan/appmanage/carsdk/a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/yunpan/appmanage/carsdk/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/a;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, La2/w0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/yunpan/appmanage/carsdk/a;->b:I

    .line 14
    .line 15
    iget v2, p0, Lcom/yunpan/appmanage/carsdk/a;->c:I

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, La2/w0;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroid/widget/ListView;

    .line 25
    .line 26
    invoke-virtual {v0, v3, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_0
    const/4 v4, 0x0

    .line 31
    :goto_0
    iget-object v5, v0, La2/w0;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v5, Landroid/widget/ListView;

    .line 34
    .line 35
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    add-int/lit8 v5, v5, 0x1

    .line 40
    .line 41
    const/16 v6, 0x64

    .line 42
    .line 43
    if-le v5, v1, :cond_1

    .line 44
    .line 45
    iget-object v5, v0, La2/w0;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v5, Landroid/widget/ListView;

    .line 48
    .line 49
    invoke-static {v5}, Lm0/h;->u(Landroid/widget/ListView;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_1

    .line 54
    .line 55
    if-ge v4, v6, :cond_1

    .line 56
    .line 57
    div-int/lit8 v5, v2, 0x2

    .line 58
    .line 59
    invoke-virtual {v0, v5}, La2/w0;->T(I)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    iget-object v4, v0, La2/w0;->b:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v4, Landroid/widget/ListView;

    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    add-int/lit8 v4, v4, -0x1

    .line 74
    .line 75
    if-ge v4, v1, :cond_2

    .line 76
    .line 77
    iget-object v4, v0, La2/w0;->b:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v4, Landroid/widget/ListView;

    .line 80
    .line 81
    invoke-static {v4}, Lvb/b;->j(Landroid/widget/ListView;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    if-ge v3, v6, :cond_2

    .line 88
    .line 89
    neg-int v4, v2

    .line 90
    div-int/lit8 v4, v4, 0x2

    .line 91
    .line 92
    invoke-virtual {v0, v4}, La2/w0;->T(I)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    :goto_2
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/a;->d:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lhi/a;

    .line 102
    .line 103
    iget-object v0, v0, Lhi/a;->a:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lfa/l0;

    .line 106
    .line 107
    iget v1, p0, Lcom/yunpan/appmanage/carsdk/a;->b:I

    .line 108
    .line 109
    iget v2, p0, Lcom/yunpan/appmanage/carsdk/a;->c:I

    .line 110
    .line 111
    invoke-virtual {v0, v1, v2}, Lfa/l0;->a(II)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/yunpan/appmanage/carsdk/a;->d:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Lcom/yunpan/appmanage/carsdk/e;

    .line 118
    .line 119
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/e;->d:Lcom/yunpan/appmanage/carsdk/d;

    .line 120
    .line 121
    if-nez v1, :cond_3

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_3
    iget v2, p0, Lcom/yunpan/appmanage/carsdk/a;->b:I

    .line 125
    .line 126
    iget v3, p0, Lcom/yunpan/appmanage/carsdk/a;->c:I

    .line 127
    .line 128
    if-eqz v2, :cond_b

    .line 129
    .line 130
    const/4 v4, 0x1

    .line 131
    if-eq v2, v4, :cond_9

    .line 132
    .line 133
    const/4 v5, 0x4

    .line 134
    if-eq v2, v5, :cond_4

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_4
    if-eq v3, v4, :cond_7

    .line 138
    .line 139
    const/16 v1, 0xe

    .line 140
    .line 141
    if-eq v3, v1, :cond_6

    .line 142
    .line 143
    const/16 v1, 0x1a

    .line 144
    .line 145
    if-eq v3, v1, :cond_5

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_5
    :try_start_0
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/e;->a:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 149
    .line 150
    invoke-virtual {v1, v5, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/e;->d:Lcom/yunpan/appmanage/carsdk/d;

    .line 155
    .line 156
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/carsdk/d;->b(I)V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_6
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/e;->a:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 161
    .line 162
    invoke-virtual {v1, v5, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/e;->d:Lcom/yunpan/appmanage/carsdk/d;

    .line 167
    .line 168
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/carsdk/d;->o(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_7
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/e;->a:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 173
    .line 174
    invoke-virtual {v0, v5, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-ne v0, v4, :cond_8

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_8
    const/4 v4, 0x0

    .line 182
    :goto_3
    invoke-interface {v1, v4}, Lcom/yunpan/appmanage/carsdk/d;->a(Z)V

    .line 183
    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_9
    const/16 v1, 0x16

    .line 187
    .line 188
    if-eq v3, v1, :cond_a

    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_a
    iget-object v1, v0, Lcom/yunpan/appmanage/carsdk/e;->a:Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;

    .line 192
    .line 193
    invoke-virtual {v1, v4, v3}, Lcom/desay_svautomotive/libsvcarinfo/CarInfoProxy;->getItemValue(II)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    iget-object v0, v0, Lcom/yunpan/appmanage/carsdk/e;->d:Lcom/yunpan/appmanage/carsdk/d;

    .line 198
    .line 199
    invoke-interface {v0, v1}, Lcom/yunpan/appmanage/carsdk/d;->i(I)V

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_b
    invoke-virtual {v0, v3}, Lcom/yunpan/appmanage/carsdk/e;->g(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .line 205
    .line 206
    :catch_0
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
