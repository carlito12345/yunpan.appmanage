.class public final synthetic Lua/w8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/y6;
.implements Lha/xe;
.implements Lha/cf;
.implements Lha/i6;
.implements Lha/ic;
.implements Lha/oc;
.implements Lha/re;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lua/i9;

.field public final synthetic c:I

.field public final synthetic d:Lx9/n5;


# direct methods
.method public synthetic constructor <init>(Lua/i9;ILx9/n5;I)V
    .locals 0

    .line 1
    iput p4, p0, Lua/w8;->a:I

    iput-object p1, p0, Lua/w8;->b:Lua/i9;

    iput p2, p0, Lua/w8;->c:I

    iput-object p3, p0, Lua/w8;->d:Lx9/n5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lua/i9;Lx9/n5;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lua/w8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua/w8;->b:Lua/i9;

    iput-object p2, p0, Lua/w8;->d:Lx9/n5;

    iput p3, p0, Lua/w8;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget v0, p0, Lua/w8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/w8;->b:Lua/i9;

    .line 7
    .line 8
    iget v1, p0, Lua/w8;->c:I

    .line 9
    .line 10
    iput v1, v0, Lua/i9;->T:I

    .line 11
    .line 12
    sget-object v2, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 13
    .line 14
    iget-object v3, p0, Lua/w8;->d:Lx9/n5;

    .line 15
    .line 16
    invoke-virtual {v2, v1, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 20
    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lua/i9;->q:Lx9/y5;

    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 40
    .line 41
    new-instance v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 42
    .line 43
    iget-object v3, v3, Lx9/n5;->b:Ljava/lang/String;

    .line 44
    .line 45
    const-string v4, ""

    .line 46
    .line 47
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Lua/i9;->z(Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lua/w8;->b:Lua/i9;

    .line 59
    .line 60
    iget v1, p0, Lua/w8;->c:I

    .line 61
    .line 62
    iput v1, v0, Lua/i9;->T:I

    .line 63
    .line 64
    sget-object v2, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 65
    .line 66
    iget-object v3, p0, Lua/w8;->d:Lx9/n5;

    .line 67
    .line 68
    invoke-virtual {v2, v1, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 72
    .line 73
    new-instance v2, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lua/i9;->q:Lx9/y5;

    .line 82
    .line 83
    new-instance v2, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 92
    .line 93
    new-instance v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 94
    .line 95
    iget-object v3, v3, Lx9/n5;->b:Ljava/lang/String;

    .line 96
    .line 97
    const-string v4, ""

    .line 98
    .line 99
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Lua/i9;->z(Z)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_1
    iget-object v0, p0, Lua/w8;->b:Lua/i9;

    .line 111
    .line 112
    iget v1, p0, Lua/w8;->c:I

    .line 113
    .line 114
    iput v1, v0, Lua/i9;->T:I

    .line 115
    .line 116
    sget-object v2, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 117
    .line 118
    iget-object v3, p0, Lua/w8;->d:Lx9/n5;

    .line 119
    .line 120
    invoke-virtual {v2, v1, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 124
    .line 125
    new-instance v2, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lua/i9;->q:Lx9/y5;

    .line 134
    .line 135
    new-instance v2, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 144
    .line 145
    new-instance v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 146
    .line 147
    iget-object v3, v3, Lx9/n5;->b:Ljava/lang/String;

    .line 148
    .line 149
    const-string v4, "/"

    .line 150
    .line 151
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    const/4 v1, 0x0

    .line 158
    invoke-virtual {v0, v1}, Lua/i9;->z(Z)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :pswitch_2
    iget-object v0, p0, Lua/w8;->b:Lua/i9;

    .line 163
    .line 164
    iget v1, p0, Lua/w8;->c:I

    .line 165
    .line 166
    iput v1, v0, Lua/i9;->T:I

    .line 167
    .line 168
    sget-object v2, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 169
    .line 170
    iget-object v3, p0, Lua/w8;->d:Lx9/n5;

    .line 171
    .line 172
    invoke-virtual {v2, v1, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 176
    .line 177
    new-instance v2, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 183
    .line 184
    .line 185
    iget-object v1, v0, Lua/i9;->q:Lx9/y5;

    .line 186
    .line 187
    new-instance v2, Ljava/util/ArrayList;

    .line 188
    .line 189
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 196
    .line 197
    new-instance v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 198
    .line 199
    iget-object v3, v3, Lx9/n5;->b:Ljava/lang/String;

    .line 200
    .line 201
    const-string v4, "/"

    .line 202
    .line 203
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    const/4 v1, 0x0

    .line 210
    invoke-virtual {v0, v1}, Lua/i9;->z(Z)V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    nop

    .line 215
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 6

    .line 1
    iget v0, p0, Lua/w8;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/w8;->b:Lua/i9;

    .line 7
    .line 8
    iget v1, p0, Lua/w8;->c:I

    .line 9
    .line 10
    iput v1, v0, Lua/i9;->T:I

    .line 11
    .line 12
    sget-object v2, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 13
    .line 14
    iget-object v3, p0, Lua/w8;->d:Lx9/n5;

    .line 15
    .line 16
    invoke-virtual {v2, v1, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 20
    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lua/i9;->q:Lx9/y5;

    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 40
    .line 41
    new-instance v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 42
    .line 43
    iget-object v3, v3, Lx9/n5;->b:Ljava/lang/String;

    .line 44
    .line 45
    const-string v4, "0"

    .line 46
    .line 47
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Lua/i9;->z(Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lua/w8;->b:Lua/i9;

    .line 59
    .line 60
    iget v1, p0, Lua/w8;->c:I

    .line 61
    .line 62
    iput v1, v0, Lua/i9;->T:I

    .line 63
    .line 64
    sget-object v2, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 65
    .line 66
    iget-object v3, p0, Lua/w8;->d:Lx9/n5;

    .line 67
    .line 68
    invoke-virtual {v2, v1, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 72
    .line 73
    new-instance v2, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lua/i9;->q:Lx9/y5;

    .line 82
    .line 83
    new-instance v2, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 92
    .line 93
    new-instance v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 94
    .line 95
    iget-object v3, v3, Lx9/n5;->b:Ljava/lang/String;

    .line 96
    .line 97
    const-string v4, "0"

    .line 98
    .line 99
    invoke-direct {v2, v3, v4}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Lua/i9;->z(Z)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_1
    iget-object v0, p0, Lua/w8;->b:Lua/i9;

    .line 111
    .line 112
    iget v1, p0, Lua/w8;->c:I

    .line 113
    .line 114
    iput v1, v0, Lua/i9;->T:I

    .line 115
    .line 116
    sget-object v2, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 117
    .line 118
    iget-object v3, p0, Lua/w8;->d:Lx9/n5;

    .line 119
    .line 120
    invoke-virtual {v2, v1, v3}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 121
    .line 122
    .line 123
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 124
    .line 125
    new-instance v2, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lua/i9;->q:Lx9/y5;

    .line 134
    .line 135
    new-instance v2, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 141
    .line 142
    .line 143
    iget-object v1, v0, Lua/i9;->n:Lx9/a6;

    .line 144
    .line 145
    new-instance v2, Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 146
    .line 147
    iget-object v4, v3, Lx9/n5;->b:Ljava/lang/String;

    .line 148
    .line 149
    iget v3, v3, Lx9/n5;->a:I

    .line 150
    .line 151
    const/4 v5, 0x1

    .line 152
    if-ne v3, v5, :cond_0

    .line 153
    .line 154
    const-string v3, "-1"

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_0
    const-string v3, "0"

    .line 158
    .line 159
    :goto_0
    invoke-direct {v2, v4, v3}, Lcom/yunpan/appmanage/bean/WpPathBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, v1}, Lua/i9;->z(Z)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    nop

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public n(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lua/w8;->b:Lua/i9;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    iget-object p2, p0, Lua/w8;->d:Lx9/n5;

    .line 19
    .line 20
    iput-object p1, p2, Lx9/n5;->b:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, v0, Lua/i9;->j:Lx9/o5;

    .line 23
    .line 24
    iget v0, p0, Lua/w8;->c:I

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lcom/yunpan/appmanage/util/e0;->a:Lcom/yunpan/appmanage/util/d0;

    .line 30
    .line 31
    invoke-virtual {p1, v0, p2}, Lcom/yunpan/appmanage/util/d0;->h(ILx9/n5;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
